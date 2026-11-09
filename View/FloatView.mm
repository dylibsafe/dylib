//音量加减开启菜单
#import "FloatView.h"
#import "OverlayView.h"
@implementation FloatView


- (instancetype)initWithFrame:(CGRect)frame :(ModuleControl*)control {
    
    self.moduleControl = control;
    
    if (self = [super initWithFrame:frame]) {
        self.layer.cornerRadius = frame.size.width * 0.3;
        self.layer.masksToBounds = YES;
        
        self.backgroundColor = [UIColor blackColor];
        
        UILabel *muteLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, self.width, self.height)];
        muteLabel.text = @"FREE";
        muteLabel.textColor = [UIColor redColor];
        muteLabel.font = [UIFont boldSystemFontOfSize:12.0f];
        muteLabel.textAlignment = NSTextAlignmentCenter;
        muteLabel.backgroundColor = [UIColor clearColor];
        
        [self addSubview:muteLabel];
        [self addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(iconOnClick)]];
    }
    return self;
}

// 点击事件
- (void)iconOnClick {
    self.moduleControl->menuStatus = !self.moduleControl->menuStatus;
}

// 按下
- (void)touchesBegan:(NSSet*)touches withEvent:(UIEvent*)event {
    CGPoint pt = [[touches anyObject] locationInView:self];
    _startLocation = pt;
    [[self superview] bringSubviewToFront:self];
}
// 移动
- (void)touchesMoved:(NSSet*)touches withEvent:(UIEvent*)event {
    CGPoint pt = [[touches anyObject] locationInView:self];
    float dx = pt.x - _startLocation.x;
    float dy = pt.y - _startLocation.y;
    CGPoint newcenter = CGPointMake(self.center.x + dx, self.center.y + dy);
    
    float halfx = CGRectGetMidX(self.bounds);
    newcenter.x = MAX(halfx, newcenter.x);
    newcenter.x = MIN(self.superview.bounds.size.width - halfx, newcenter.x);
    
    float halfy = CGRectGetMidY(self.bounds);
    newcenter.y = MAX(halfy, newcenter.y);
    newcenter.y = MIN(self.superview.bounds.size.height - halfy, newcenter.y);
    
    CGFloat bottom = self.superview.height - newcenter.y - 0.5 * self.height;
    if (bottom < 0) {
        bottom = 0;
    }
    
    float height = [UIScreen mainScreen].bounds.size.height;
    if (bottom > height) {
        bottom = height;
    }
    
    newcenter.y = self.superview.height - bottom - 0.5 * self.height;
    
    self.center = newcenter;
    
    self.didMoveLocation = CGPointMake(self.left, self.superview.height - self.bottom);
}
// 抬起
- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    self.didMoveLocation = CGPointMake(self.left, self.superview.height - self.bottom);
}


@end