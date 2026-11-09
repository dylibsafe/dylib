#import "OverlayView.h"
#import "../Image/font.h"
#import "../Image/Icon.h"
#import "../Image/Iconcpp.h"
#import <objc/runtime.h>
@implementation OverlayView
    ImFont *_espFont;
    ImFont *_iconFont;
- (instancetype)initWithFrame:(CGRect)frame :(ModuleControl*)control :(mi*)menu {
    self.moduleControl = control;    
    self.mi = menu;

    if (self = [super initWithFrame:frame]) {
        //清空颜色
        self.backgroundColor = [UIColor clearColor];//清楚的
        //设置帧率限制
        self.preferredFramesPerSecond = 120;

        self.device = MTLCreateSystemDefaultDevice();
        if (!self.device) {
            return NULL;
        }
        self.delegate = self;
        
        self.commandQueue = [self.device newCommandQueue];
        self.loader = [[MTKTextureLoader alloc] initWithDevice: self.device];

    IMGUI_CHECKVERSION();
    ImGui::CreateContext();
    ImGuiIO& io = ImGui::GetIO(); (void)io;
    ImFontConfig config;
        ImGuiStyle& style = ImGui::GetStyle();
        static const ImWchar icons_ranges[] = { 0xf000, 0xf3ff, 0 };
        ImFontConfig icons_config;
    config.FontDataOwnedByAtlas = false;
        icons_config.MergeMode = true;
        icons_config.PixelSnapH = true;

            config.FontDataOwnedByAtlas = false;
            io.Fonts->AddFontFromMemoryTTF((void *)Fontdata, Fontsize, 30.0f, NULL,
            io.Fonts->GetGlyphRangesChineseFull());

    ImFont *_iconFont;
    _iconFont = io.Fonts->AddFontFromMemoryCompressedTTF(font_awesome_data, font_awesome_size, 20.f, &icons_config, icons_ranges);
    
    _iconFont->FontSize = 5;

        
        
        io.DisplaySize.x =  self.frame.size.width * UIScreen.mainScreen.nativeScale;
        io.DisplaySize.y =  self.frame.size.height * UIScreen.mainScreen.nativeScale;
        
        ImGui::StyleColorsDark();

        style.Alpha = 0.83f;
        style.WindowPadding = ImVec2(12.0f, 12.0f);
        style.WindowRounding = 14.0f;
        style.WindowBorderSize = 0.0f;
        style.WindowTitleAlign = ImVec2(0.5f, 0.5f);
        style.WindowMenuButtonPosition = ImGuiDir_Right;
        style.ChildRounding = 10.0f;
        style.ChildBorderSize = 0.0f;
        style.PopupRounding = 10.0f;
        style.PopupBorderSize = 0.0f;
        style.FramePadding = ImVec2(10.0f, 6.0f);
        style.FrameRounding = 8.0f;
        style.FrameBorderSize = 0.0f;
        style.ItemSpacing = ImVec2(10.0f, 6.0f);
        style.ItemInnerSpacing = ImVec2(6.0f, 4.0f);
        style.IndentSpacing = 20.0f;
        style.ScrollbarSize = 10.0f;
        style.ScrollbarRounding = 6.0f;
        style.GrabMinSize = 10.0f;
        style.GrabRounding = 4.0f;
        style.TabRounding = 6.0f;
        style.TabBorderSize = 0.0f;
        style.ButtonTextAlign = ImVec2(0.5f, 0.5f);
        style.SelectableTextAlign = ImVec2(0.0f, 0.5f);
        style.ColumnsMinSpacing = 40.0f;
        style.FrameBorderSize = 0.0f;
        style.WindowBorderSize = 0.0f;
        style.ChildBorderSize = 0.0f;
        style.PopupBorderSize = 0.0f;

        
        // Setup Renderer backend
        ImGui_ImplMetal_Init(self.device);
            //初始化图像纹理
        [self.mi setOverlayView:self];
    }
    return self;
}

+ (void)load
 {
dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3* NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
    //这里是弹窗
//    [[[UIAlertView alloc]initWithTitle:@"Zoom Engine" message: @"内部插件，请勿泛滥" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil]show];

   });
}
- (bool)ishowM{
    return self.moduleControl->menuStatus;
}
- (void)drawInMTKView:(MTKView *)view {
    
        //抗锯
        view.sampleCount = 4;
        //清除颜色
        view.clearColor = MTLClearColorMake(0.0f, 0.0f, 0.0f, 0.0f);
        //计算fps
        struct timespec current_timespec;
        static double g_Time = 0.0;
        clock_gettime(CLOCK_MONOTONIC, &current_timespec);
        double current_time = (double)(current_timespec.tv_sec) + (current_timespec.tv_nsec / 1000000000.0);
        ImGui::GetIO().DeltaTime = g_Time > 0.0 ? (float)(current_time - g_Time) : (float)(1.0f / 120.0f);
        g_Time = current_time;

    id<MTLCommandBuffer> commandBuffer = [self.commandQueue commandBuffer];
    
    MTLRenderPassDescriptor *renderPassDescriptor = view.currentRenderPassDescriptor;
    if (renderPassDescriptor != nil) {
        ImGui_ImplMetal_NewFrame(renderPassDescriptor);
        ImGui::NewFrame();
        
        if(self.moduleControl->menuStatus){
            [self.mi drawMenuWindow];
        }
   
        
        //渲染
        ImGui::Render();
        ImDrawData *drawData = ImGui::GetDrawData();
        id <MTLRenderCommandEncoder> renderEncoder = [commandBuffer renderCommandEncoderWithDescriptor:renderPassDescriptor];
        [renderEncoder pushDebugGroup:@"SwiftGUI"];
        ImGui_ImplMetal_RenderDrawData(drawData, commandBuffer, renderEncoder);
        
        [renderEncoder popDebugGroup];
        [renderEncoder endEncoding];
        [commandBuffer presentDrawable:view.currentDrawable];
    }
    [commandBuffer commit];
}

// 当MTKView的可绘制大小发生变化时调用
-(void)mtkView:(MTKView*)view drawableSizeWillChange:(CGSize)size {

}
// 检测UIView上的点击事件，并过滤掉当菜单处于关闭状态时MTKView上的点击事件
- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    UIView *hitView = [super hitTest:point withEvent:event];
    
    if (hitView == self && !self.moduleControl->menuStatus) {
        return nil; // 此处返回空即不相应任何事件
    }
    return hitView;
}

-(void)updateIOWithTouchEvent:(UIEvent *)event {
// 获取第一个触摸对象
UITouch *anyTouch = event.allTouches.anyObject;
// 获取触摸位置
CGPoint touchLocation = [anyTouch locationInView:self];
// 获取 ImGuiIO 对象
ImGuiIO &io = ImGui::GetIO();
// 添加鼠标位置事件
io.AddMousePosEvent(touchLocation.x * UIScreen.mainScreen.nativeScale, touchLocation.y * UIScreen.mainScreen.nativeScale);

// 判断是否还有其他触摸对象处于活动状态
BOOL hasActiveTouch = NO;
for (UITouch *touch in event.allTouches) {
if (touch.phase != UITouchPhaseEnded && touch.phase != UITouchPhaseCancelled) {
hasActiveTouch = YES;
break;
}
}
// 添加鼠标按钮事件
io.AddMouseButtonEvent(0, hasActiveTouch);
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
[self updateIOWithTouchEvent:event];
}

-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
[self updateIOWithTouchEvent:event];
}

-(void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
[self updateIOWithTouchEvent:event];
}

-(void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
[self updateIOWithTouchEvent:event];
}

@end
