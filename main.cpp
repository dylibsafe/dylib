#include "Includes.h"
#include "SDK.hpp"
#include "Tools.h"
#include "definitions.h"
#include "KittyMemory/MemoryPatch.h"
#include "android_native_app_glue.h"
#include "Dobby/Dobby.h"
#include <android/native_window_jni.h>
#include <android/log.h>
using namespace SDK;
using namespace std;
#include "UE4.h"
#include "UI/UI.h"
android_app *g_App = 0;
int screenWidth = -1, glWidth, screenHeight = -1, glHeight;

uintptr_t UE4;
uintptr_t ProcessEvent_Offset, AimBullet_Offset, AimBullet_Offset2, SetControlRotation_Offset;
#define SLEEP_TIME 1000LL / 120LL
#define TSL_FONT_DEFAULT_SIZE 12
static UFont *tslFont = 0, *robotoTinyFont = 0;
int g_screenWidth = 0, g_screenHeight = 0;
int screenDensity = 0;
int getEspFramerate;
float FOVsize =180.0f;
int SCOLOR;

float gDistance;
float 压枪系数 = 1.2;
float Xs=2.4,Ys=2.4;
float 追踪部位=1.0;;
bool isCompleted = false;
std::map<std::string, u_long> Config;
std::map<int, bool> itemConfig;
ANativeWindow *ANativeWindow_p;
void android_main(struct android_app* state){
}
float density = -1;
#define PI 3.14159265358979323846
#define CanvasMap_Offset 0x8891CD8//
#define GNativeAndroidApp_Offset 0x8886104//
#define GUObject_Offset 0x8C02AF0//
#define GNames_Offset 0x46CEF7C//
#define ProcessEvent_Offset 0x5B96EF0//
#define GetActorArray 0x6006E30//
#define Actors_Offset 0x70
int localPlayer_Offset = 0x8891CD8;

    bool 射线 = false;
    bool 距离 = false;
    bool 雷达 = false;
    bool 血量 = false;
    bool Skeleton = false;
    bool 载具 =false;
    bool 信息 = false;
    bool 聚点 = false;
    bool 无后 = false;
    bool 瞬击 =false;
    bool 范围 = false;
    bool 防抖 = false;
    bool 平板 = false;
    bool 盒子 = false;
    bool 狗绘制 = false;
    bool 狗Skeleton = false;
    bool 狗名字 = false;
    bool 狗射线 = false;
    bool 狗距离 = false;
    bool 解锁帧率 = false;
    bool 狗掩体检测 = false;
    bool 驱动自瞄 = false;
    bool 投掷物警告 = false;
    bool 忽略人机 =false;
    bool 掩体检测 = false;
    bool 函数追踪 = false;
    bool 忽略倒地 =false;
    bool 去除人机 =false;

struct sRegion
{
	uintptr_t start, end;
};

std::vector<sRegion> trapRegions;

bool isEqual(std::string s1, const char* check) {
    std::string s2(check);
    return (s1 == s2);
}

bool isObjectPlayer(UObject *Object)
{
	if (!Tools::IsPtrValid(Object))
	{
		return false;
	}
	for (auto super = Object->ClassPrivate; Tools::IsPtrValid(super); super = (UClass *)super->SuperStruct)
	{
		if (super == ASTExtraPlayerCharacter::StaticClass())
		{
			return true;
		}
	}
	return false;
}

bool isObjectController(UObject *Object)
{
	if (!Tools::IsPtrValid(Object))
	{
		return false;
	}
	for (auto super = Object->ClassPrivate; Tools::IsPtrValid(super); super = (UClass *)super->SuperStruct)
	{
		if (super == ASTExtraPlayerController::StaticClass())
		{
			return true;
		}
	}
	return false;
}
bool isObjectInvalid(UObject *obj)
{
	if (!Tools::IsPtrValid(obj))
	{
		return true;
	}
	if (!Tools::IsPtrValid(obj->ClassPrivate))
	{
		return true;
	}
	if (obj->InternalIndex <= 0)
	{
		return true;
	}
	if (obj->NamePrivate.ComparisonIndex <= 0)
	{
		return true;
	}
	if ((uintptr_t)(obj) % sizeof(uintptr_t) != 0x0 && (uintptr_t)(obj) % sizeof(uintptr_t) != 0x4)
	{
		return true;
	}
	if (std::any_of(trapRegions.begin(), trapRegions.end(), [obj](sRegion region) { return ((uintptr_t)obj) >= region.start && ((uintptr_t)obj) <= region.end; }) ||
		std::any_of(trapRegions.begin(), trapRegions.end(), [obj](sRegion region) { return ((uintptr_t)obj->ClassPrivate) >= region.start && ((uintptr_t)obj->ClassPrivate) <= region.end; }))
	{
		return true;
	}
	return false;
}


string getObjectPath(UObject *Object)
{
	string s;
	for (auto super = Object->ClassPrivate; super; super = (UClass *)super->SuperStruct)
	{
		if (!s.empty())
			s += ".";
		s += super->GetName();
	}
	return s;
}

static UEngine *GEngine = 0;
UWorld *GetWorld() {
    while (!GEngine) {
        GEngine = UObject::FindObject<UEngine>("UAEGameEngine Transient.UAEGameEngine_1"); // Auto 
        sleep(1);
    }
    if (GEngine) {
        auto ViewPort = GEngine->GameViewport;

        if (ViewPort) {
   //return {};
            return ViewPort->World;
        }
    }
    return 0;
}

TNameEntryArray *GetGNames()
{
	return ((TNameEntryArray * (*)()) (UE4 + GNames_Offset))();
}

std::vector<AActor *> getActors()
{
    auto World = GetWorld();
    if (!World)
        return std::vector<AActor *>();
    auto PersistentLevel = World->PersistentLevel;
    if (!PersistentLevel)
        return std::vector<AActor *>();
    auto Actors = *(TArray<AActor *> *)((uintptr_t)PersistentLevel + Actors_Offset);
    std::vector<AActor *> actors;
    for (int i = 0; i < Actors.Num(); i++)
    {
        auto Actor = Actors[i];
        if (Actor)
        {
            actors.push_back(Actor);
        }
    }
    return actors;
}

template <class T>
void GetAllActors(std::vector<T *> &Actors)
{
	UGameplayStatics *gGameplayStatics = (UGameplayStatics *)gGameplayStatics->StaticClass();
	auto GWorld = GetWorld();
	if (GWorld)
	{
		TArray<AActor *> Actors2;
		gGameplayStatics->GetAllActorsOfClass((UObject *)GWorld, T::StaticClass(), &Actors2);
		for (int i = 0; i < Actors2.Num(); i++)
		{
			Actors.push_back((T *)Actors2[i]);
		}
	}
}
//按名称获取Skeleton位置
FVector GetBoneLocationByName(ASTExtraPlayerCharacter *Actor, const char *BoneName)
{
	return Actor->GetBonePos(BoneName, FVector());
}

bool WriteAddr(void *addr, void *buffer, size_t length)
{
	unsigned long page_size = sysconf(_SC_PAGESIZE);
	unsigned long size = page_size * sizeof(uintptr_t);
	return mprotect((void *)((uintptr_t)addr - ((uintptr_t)addr % page_size) - page_size), (size_t)size, PROT_EXEC | PROT_READ | PROT_WRITE) == 0 && memcpy(addr, buffer, length) != 0;
}

template <typename T>
void Write(uintptr_t addr, T value)
{
	WriteAddr((void *)addr, &value, sizeof(T));
}

bool isObjectVehicle(UObject *Object)
{
	if (!Tools::IsPtrValid(Object))
	{
		return false;
	}
	for (auto super = Object->ClassPrivate; Tools::IsPtrValid(super); super = (UClass *)super->SuperStruct)
	{
		if (super == ASTExtraVehicleBase::StaticClass())
		{
			return true;
		}
	}
	return false;
}

bool isObjectLoot(UObject *Object)
{
	if (!Tools::IsPtrValid(Object))
	{
		return false;
	}
	for (auto super = Object->ClassPrivate; Tools::IsPtrValid(super); super = (UClass *)super->SuperStruct)
	{
		if (super == APickUpWrapperActor::StaticClass())
		{
			return true;
		}
	}
	return false;
}

void NekoHook(FRotator &angles) {
    if (angles.Pitch > 180)
        angles.Pitch -= 360;
    if (angles.Pitch < -180)
        angles.Pitch += 360;

    if (angles.Pitch < -75.f)
        angles.Pitch = -75.f;
    else if (angles.Pitch > 75.f)
        angles.Pitch = 75.f;

    while (angles.Yaw < -180.0f)
        angles.Yaw += 360.0f;
    while (angles.Yaw > 180.0f)
        angles.Yaw -= 360.0f;
}
void NekoHook(float *angles) {
    if (angles[0] > 180)
        angles[0] -= 360;
    if (angles[0] < -180)
        angles[0] += 360;

    if (angles[0] < -75.f)
        angles[0] = -75.f;
    else if (angles[0] > 75.f)
        angles[0] = 75.f;

    while (angles[1] < -180.0f)
        angles[1] += 360.0f;
    while (angles[1] > 180.0f)
        angles[1] -= 360.0f;
}


void NekoHook(Vector3 angles) {
    if (angles.X > 180)
        angles.X -= 360;
    if (angles.X < -180)
        angles.X += 360;

    if (angles.X < -75.f)
        angles.X = -75.f;
    else if (angles.X > 75.f)
        angles.X = 75.f;

    while (angles.Y < -180.0f)
        angles.Y += 360.0f;
    while (angles.Y > 180.0f)
        angles.Y -= 360.0f;
}

ASTExtraPlayerCharacter *g_LocalPlayer;
ASTExtraPlayerController *g_PlayerController;
ASTExtraPlayerController *g_LocalController;

#define COLOR_BLACK FLinearColor(0, 0, 0, 1.f)
#define COLOR_WHITE FLinearColor(1.f, 1.f, 1.f, 1.f)
#define COLOR_RED FLinearColor(1.f, 0, 0, 1.f)
#define COLOR_CAR FLinearColor(1.f, 0.5f, 1.f, 1.f)
#define COLOR_GREEN FLinearColor(0, 0.5f, 0, 1.f)
#define COLOR_ORANGE FLinearColor(1.f, 0.4f, 0, 1.f)
#define COLOR_YELLOW FLinearColor(1.f, 1.f, 0, 1.f)
#define COLOR_LIME FLinearColor(0, 1.f, 0, 1.f)
#define COLOR_BLUE FLinearColor(0, 0, 1.f, 1.f)
#define COLOR_THISTLE FLinearColor(1.0f, 0.74f, 0.84f, 1.0f)
#define COLOR_PINK FLinearColor(1.0f, 0.75f, 0.8f, 1.0f)

int32_t (*orig_onInputEvent)(struct android_app *app, AInputEvent *inputEvent);
int32_t onInputEvent(struct android_app *app, AInputEvent *inputEvent) {
	UI::onEvent(inputEvent, {(float)(screenWidth*1.5) / (float)screenWidth,(float)(screenHeight*1.5) / (float)screenHeight});
    return orig_onInputEvent(app, inputEvent);
}

ANativeWindow* (*orig_ANativeWindow_fromSurface)(JNIEnv* env, jobject surface);;
ANativeWindow* _ANativeWindow_fromSurface(JNIEnv* env, jobject surface){
    ANativeWindow_p =  orig_ANativeWindow_fromSurface(env,surface);
    screenWidth = ANativeWindow_getWidth(ANativeWindow_p);
    screenHeight = ANativeWindow_getHeight(ANativeWindow_p);
    return ANativeWindow_p;
}

FRotator ToRotator(FVector local, FVector target)
{
	FVector rotation;
	rotation.X = local.X - target.X;
	rotation.Y = local.Y - target.Y;
	rotation.Z = local.Z - target.Z;
	FRotator newViewAngle = {0};
	float hyp = sqrt(rotation.X * rotation.X + rotation.Y * rotation.Y);
	newViewAngle.Pitch = -atan(rotation.Z / hyp) * (180.f / (float)PI);
	newViewAngle.Yaw = atan(rotation.Y / rotation.X) * (180.f / (float)PI);
	newViewAngle.Roll = (float)0.f;
	if (rotation.X >= 0.f)
		newViewAngle.Yaw += 180.0f;
	return newViewAngle;
}

void DrawRectangle(AHUD *HUD, FVector2D Pos, float Width, float Height, float Thickness, FLinearColor Color) {
	HUD->DrawLine(Pos.X, Pos.Y, Pos.X + Width, Pos.Y, Color, Thickness);
	HUD->DrawLine(Pos.X, Pos.Y, Pos.X, Pos.Y + Height, Color, Thickness);
	HUD->DrawLine(Pos.X + Width, Pos.Y, Pos.X + Width, Pos.Y + Height, Color, Thickness);
	HUD->DrawLine(Pos.X, Pos.Y + Height, Pos.X + Width, Pos.Y + Height, Color, Thickness);
}



void DrawFilledRectangle(AHUD *HUD, FVector2D Pos, float Width, float Height, FLinearColor Color) {
	HUD->DrawRect(Color, Pos.X, Pos.Y, Width, Height);
}

void LineE(AHUD *HUD, FVector2D posFrom, FVector2D posTo, float Thickness, FLinearColor Color) {
    HUD->DrawLine(posFrom.X, posFrom.Y, posTo.X, posTo.Y, Color, Thickness);
}

void DrawLine(AHUD *HUD, FVector2D posFrom, FVector2D posTo, float Thickness, FLinearColor Color) {
    HUD->DrawLine(posFrom.X, posFrom.Y, posTo.X, posTo.Y, Color, Thickness);
}
void DrawCircle(AHUD *HUD, int x, int y, int radius, int numsides, FLinearColor OutlineColor)
{
	UCanvas *Canvas = HUD->Canvas;
	float Step = M_PI * 2.0 / numsides;
	int Count = 0;
	FVector2D V[128];
	for (float a = 0; a < M_PI * 2.0; a += Step)
	{
		float screenWidth = radius * cos(a) + x;
		float Y1 = radius * sin(a) + y;
		float X2 = radius * cos(a + Step) + x;
		float Y2 = radius * sin(a + Step) + y;
		V[Count].X = screenWidth;
		V[Count].Y = Y1;
		V[Count + 1].X = X2;
		V[Count + 1].Y = Y2;
		Canvas->K2_DrawLine(FVector2D({V[Count].X, V[Count].Y}), FVector2D({X2, Y2}), 1.f, OutlineColor);
	}
}

void DrawOutlinedText(AHUD *HUD, FString Text, FVector2D Pos, FLinearColor Color, FLinearColor OutlineColor, bool isCenter = false)
{
	UCanvas *DebugCanvas = HUD->DebugCanvas;
	DebugCanvas->K2_DrawText(tslFont, Text, Pos, Color, 1.f, {}, {}, isCenter, isCenter, true, OutlineColor);
}

void DrawText(AHUD *HUD, FString Text, FVector2D Pos, FLinearColor Color, bool isCenter = false)
{
	UCanvas *DebugCanvas = HUD->DebugCanvas;
	DebugCanvas->K2_DrawText(tslFont, Text, Pos, Color, 1.f, {}, {}, isCenter, isCenter, false, {});
}

void DrawSmallOutlinedText(AHUD *HUD, FString Text, FVector2D Pos, FLinearColor Color, FLinearColor OutlineColor, bool isCenter = false)
{
	UCanvas *DebugCanvas = HUD->DebugCanvas;
	DebugCanvas->K2_DrawText(robotoTinyFont, Text, Pos, Color, 1.f, {}, {}, isCenter, isCenter, true, OutlineColor);
}

void DrawSmallText(AHUD *HUD, FString Text, FVector2D Pos, FLinearColor Color, bool isCenter = false)
{
	UCanvas *DebugCanvas = HUD->DebugCanvas;
	DebugCanvas->K2_DrawText(robotoTinyFont, Text, Pos, Color, 1.f, {}, {}, isCenter, isCenter, false, {});
}
FVector WorldToRadar(float Yaw, FVector Origin, FVector LocalOrigin, float PosX, float PosY, Vector3 Size, bool & outbuff) {
 bool flag = false;
 double num = (double)Yaw;
 double num2 = num * 0.017453292519943295;
 float num3 = (float)std::cos(num2);
 float num4 = (float)std::sin(num2);
 float num5 = Origin.X - LocalOrigin.X;
 float num6 = Origin.Y - LocalOrigin.Y;
 struct FVector Xector;
 Xector.X = (num6 * num3 - num5 * num4) / 150.f;
 Xector.Y = (num5 * num3 + num6 * num4) / 150.f;
 struct FVector Xector2;
 Xector2.X = Xector.X + PosX + Size.X / 2.f;
 Xector2.Y = -Xector.Y + PosY + Size.Y / 2.f;
 bool flag2 = Xector2.X > PosX + Size.X;
 if (flag2) {
  Xector2.X = PosX + Size.X;
 } else {
  bool flag3 = Xector2.X < PosX;
  if (flag3) {
   Xector2.X = PosX;
  }
 }
 bool flag4 = Xector2.Y > PosY + Size.Y;
 if (flag4) {
  Xector2.Y = PosY + Size.Y;
 } else {
  bool flag5 = Xector2.Y < PosY;
  if (flag5) {
   Xector2.Y = PosY;
  }
 }
 bool flag6 = Xector2.Y == PosY || Xector2.X == PosX;
 if (flag6) {
  flag = true;
 }
 outbuff = flag;
 return Xector2;
}
bool isInsideFOV(int x, int y) {
    int circle_x = screenWidth / 2;
    int circle_y = screenHeight / 2;
    int rad = (int) FOVsize;
    return (x - circle_x) * (x - circle_x) + (y - circle_y) * (y - circle_y) <= rad * rad;
}
#define W2S(w, s) UGameplayStatics::ProjectWorldToScreen(g_PlayerController, w, true, s)
auto GetTargetForBT()
{
    ASTExtraPlayerCharacter *result = 0;
    float max = std::numeric_limits<float>::infinity();
    auto GWorld = GetWorld();
    if (GWorld)
    {
        ULevel *PersistentLevel = GWorld->PersistentLevel;
        if (PersistentLevel)
        {
            TArray<AActor *> Actors = *(TArray<AActor *> *)((uintptr_t)PersistentLevel + Actors_Offset);
            auto localPlayer = g_LocalPlayer;
            auto localController = g_PlayerController;
            if (localPlayer)
            {
                for (int i = 0; i < Actors.Num(); i++)
                {
                    auto Actor = Actors[i];
                    if (isObjectInvalid(Actor))
                        continue;

                    if (Actor->IsA(ASTExtraPlayerCharacter::StaticClass()))
                    {
                        auto Player = (ASTExtraPlayerCharacter *)Actor;

                        if (Player->PlayerKey == localPlayer->PlayerKey)
                            continue;

                        if (Player->TeamID == localPlayer->TeamID)
                            continue;

                        if (Player->bDead)
                            continue;

                        if (掩体检测){
                        if (!localController->LineOfSightTo(Player, {0, 0, 0}, true))
                                continue;
                        }
                        
                       if (忽略倒地) {
                            if (Player->Health == 0.0f)
                                continue;
                        }
                        
                        if (去除人机) {
							if (Player->bEnsure)
								continue;
						}

                        auto Root = Player->GetBonePos("Root", {});
                        auto Head = Player->GetBonePos("Head", {});

                        FVector2D RootSc, HeadSc;
                        if (W2S(Root, &RootSc) && W2S(Head, &HeadSc))
                        {
                            float height = abs(HeadSc.Y - RootSc.Y);
                            float width = height * 0.65f;

                            FVector middlePoint = {HeadSc.X + (width / 2), HeadSc.Y + (height / 2),
                                                   0};
                            if ((middlePoint.X >= 0 && middlePoint.X <= screenWidth) && (middlePoint.Y >= 0 && middlePoint.Y <= screenHeight))
                            {
                                FVector2D v2Middle = FVector2D((float)(screenWidth / 2), (float)(screenHeight / 2));
                                FVector2D v2Loc = FVector2D(middlePoint.X, middlePoint.Y);
                                float dist = FVector2D::Distance(v2Middle, v2Loc);
                                
                                // 添加判断在圆圈内的条件
                                float radius = FOVsize;
                                
                                if (dist < radius) {
                                if (dist < max) {
                                    max = dist;
                                    result = Player;
                                    }
                                }
                            }
                        }
                    }
                }
            }

            return result;
        }
    }
}
void (*orig_shoot_event)(USTExtraShootWeaponComponent *thiz, FVector start, FRotator rot, void *unk1, int unk2) = 0;
void shoot_event(USTExtraShootWeaponComponent *thiz, FVector start, FRotator rot, ASTExtraShootWeapon *weapon, int unk1) {
        if (函数追踪) {
        ASTExtraPlayerCharacter *Target = GetTargetForBT();
        if (Target) {
                bool triggerOk = false;
                triggerOk = g_LocalPlayer->bIsWeaponFiring;
            if (triggerOk) {
					FVector targetAimPos = Target->GetBonePos("Head", {});
						targetAimPos.Z -= 追踪部位*1.0f;
                UShootWeaponEntity *ShootWeaponEntityComponent = thiz->ShootWeaponEntityComponent;
                if (ShootWeaponEntityComponent) {
                    ASTExtraVehicleBase *CurrentVehicle = Target->CurrentVehicle;
                    if (CurrentVehicle) {
                        FVector LinearVelocity = CurrentVehicle->ReplicatedMovement.LinearVelocity;
                        float dist = g_LocalPlayer->GetDistanceTo(Target);
                        auto timeToTravel = dist / ShootWeaponEntityComponent->BulletRange;
                        targetAimPos = UKismetMathLibrary::Add_VectorVector(targetAimPos, UKismetMathLibrary::Multiply_VectorFloat(LinearVelocity, timeToTravel));
                    } else {
                        FVector Velocity = Target->GetVelocity();
                        float dist = g_LocalPlayer->GetDistanceTo(Target);
                        auto timeToTravel = dist / ShootWeaponEntityComponent->BulletRange;
                        targetAimPos = UKismetMathLibrary::Add_VectorVector(targetAimPos, UKismetMathLibrary::Multiply_VectorFloat(Velocity, timeToTravel));
                    }
                    FVector fDir = UKismetMathLibrary::Subtract_VectorVector(targetAimPos, start);
                    FRotator sex = UKismetMathLibrary::Conv_VectorToRotator(fDir);
                    rot = sex;
                }
            }
        }
    }
    return orig_shoot_event(thiz, start, rot, weapon, unk1);
}

class FPSCounter {
	protected:
	unsigned int m_fps;
	unsigned int m_fpscount;
	long m_fpsinterval;
	public:
	FPSCounter() : m_fps(0), m_fpscount(0), m_fpsinterval(0) {
	}
	void update() {
		m_fpscount++;
		if (m_fpsinterval < time(0)) {
			m_fps = m_fpscount;
			m_fpscount = 0;
			m_fpsinterval = time(0) + 1;
		}
	}
	unsigned int get() const {
		return m_fps;
	}
}; FPSCounter fps;

void *LoadFont(void *)
{
	while (!tslFont || !robotoTinyFont)
	{
		tslFont = UObject::FindObject<UFont>("Font Roboto.Roboto");
		robotoTinyFont = UObject::FindObject<UFont>("Font RobotoDistanceField.RobotoDistanceField");
		sleep(1);
	}
	return 0;
}

void RenderESP(AHUD *HUD, int ScreenWidth, int ScreenHeight)
{
	ASTExtraPlayerCharacter *localPlayer = 0;
	ASTExtraPlayerController *localPlayerController = 0;
	screenWidth = ScreenWidth;
	screenHeight = ScreenHeight;
    UI::SetupUI(HUD, tslFont, (float)((ScreenWidth * 2) / screenWidth) - 0.0475f, (float)((ScreenHeight * 2) / screenHeight));
	    static FVector2D WindowPos = {600,80};
	    static bool IsOpen = false;
	    static float TempValue = 0;
	    
	    
	    if(UI::Window("10SAL BAN 3.0 32 BIT", &WindowPos, {500,480}, IsOpen, TempValue)){
    	    static int tab = 0;
    		if (UI::ButtonTab("DrawEsp", FVector2D{ 110, 25 }, tab == 0)) tab = 0;
            if (UI::ButtonTab("TouchAim", FVector2D{ 110, 25 }, tab == 1)) tab = 1;
            if (UI::ButtonTab("B-Tracking", FVector2D{ 110, 25 }, tab == 2)) tab = 2;
      //      if (UI::ButtonTab("Memory", FVector2D{ 110, 25 }, tab == 3)) tab = 3;
        //    if (UI::ButtonTab("Test", FVector2D{ 110, 25 }, tab == 4)) tab = 4;
            UI::NextColumn(130.0f);
        	if(tab == 0){
        		UI::Checkbox("Line", &射线);
        		UI::SameLine();
        		UI::Checkbox("Health", &血量);
        		UI::Checkbox("Distance", &距离);
        		UI::SameLine();
        		UI::Checkbox("Name", &载具);
        		UI::SameLine();
        		UI::Checkbox("Vehicle", &雷达);
        		UI::Checkbox("Radar", &信息);
        		UI::SameLine();
        		UI::Checkbox("Info", &投掷物警告);
        		UI::SameLine();
        		UI::Checkbox("Hide Esp", &忽略人机);       		
    		}else if(tab == 1){
                UI::Checkbox("Smooth TouchAim", &驱动自瞄);
        		UI::SliderFloat("FOV", &FOVsize, 1.0f, 250.0f, "%.1f");
        		UI::SameLine();
        		UI::Checkbox("IgnoreBot", &去除人机);
        		UI::SliderFloat("RecoilCoefficient", &压枪系数, 1.0f, 15.0f, "%.1f");
        		UI::SameLine();
        //		UI::Checkbox("IgnoreProne", &忽略倒地);
    	//	    UI::SliderFloat("X-axis Speed", &Xs, 1.0f, 6.0f, "%.1f");
    //		    UI::SameLine();
    		//    UI::Checkbox("FunctionTracking", &掩体检测);
        	//	UI::SliderFloat("Y-s Axis Seed", &Ys, 1.0f, 6.0f, "%.1f");
    		}else if(tab == 2){
                UI::Checkbox("FunctionTracking", &函数追踪);
        		UI::SliderFloat("FOV", &FOVsize, 1.0f, 250.0f, "%.1f");
        		UI::SameLine();
        		UI::Checkbox("Ignore Bot", &忽略人机);
        		UI::SliderFloat("Ignore Bot", &追踪部位, 1.0f, 25.0f, "%.1f");
        		UI::SameLine();
        		UI::Checkbox("Ignore Prone", &忽略倒地);
    		    UI::Checkbox("Cover Detection", &掩体检测);
    		    UI::Text("Tracking part is from top to bottom, higher values go downward.");
    	/*	}else if(tab == 3){
                UI::Checkbox("聚点", &聚点);
        		UI::SameLine();
        		UI::Checkbox("无后", &无后);
        		UI::SameLine();
        		UI::Checkbox("防抖", &防抖);
        		
    		    UI::Checkbox("范围", &范围);
    		    UI::SameLine();
        		UI::Checkbox("瞬击", &瞬击);
    		}else if(tab == 4){
                //UI::Checkbox("测试", &狗骨骼);*/
    		}
		}
		射线 = false;
	//	骨骼 =false;
		血量 = false;
		距离 = false;
		雷达 = false;
		驱动自瞄 = false;
//		FOVsize = 180.0f;
		压枪系数 = 1.0f;
		忽略倒地 = true;
		掩体检测 = true;
		Xs = 1.0f;
		Ys = 1.0f;

	//加载画布
	UCanvas *Canvas = HUD->Canvas;
    //加载画布
	if (Canvas)
	{
        //加载字体
		static bool loadFont = false;
		if (!loadFont)
		{
			pthread_t t;
			//字体线程
			pthread_create(&t, 0, LoadFont, 0);
			loadFont = true;
		}
		if (!tslFont || !robotoTinyFont)
			return;
		tslFont->LegacyFontSize = 12;
		DrawOutlinedText(HUD, "10Sal Ban 3.0 32Bit", {(float)ScreenWidth / 2 - 540, 75}, FLinearColor(0, 0, 1, 1), FLinearColor(0, 0, 0, 1), true);
		//对象
		auto Actors = getActors();
		//全部对象
		UGameplayStatics *gGameplayStatics = (UGameplayStatics *)UGameplayStatics::StaticClass();

		auto GWorld = GetWorld();
		if (GWorld)
		{
			UNetDriver *NetDriver = GWorld->NetDriver;
			if (NetDriver)
			{
				UNetConnection *ServerConnection = NetDriver->ServerConnection;
				if (ServerConnection)
				{
					localPlayerController = (ASTExtraPlayerController *)ServerConnection->PlayerController;
				}
			}
			if (localPlayerController) {
				std::vector<ASTExtraPlayerCharacter *> PlayerCharacter;
				GetAllActors(PlayerCharacter);
				for (auto actor = PlayerCharacter.begin();
					 actor != PlayerCharacter.end(); actor++) {
					auto Actor = *actor;
					if (Actor->PlayerKey ==
						((ASTExtraPlayerController *) localPlayerController)->PlayerKey) {
						localPlayer = Actor;
						break;
					}
				}
				
					
				if (localPlayer) {
					if (localPlayer->PartHitComponent) {
						auto ConfigCollisionDistSqAngles = localPlayer->PartHitComponent->ConfigCollisionDistSqAngles;
						for (int j = 0; j < ConfigCollisionDistSqAngles.Num(); j++) {
							ConfigCollisionDistSqAngles[j].Angle = 180.0f;
						}
						localPlayer->PartHitComponent->ConfigCollisionDistSqAngles = ConfigCollisionDistSqAngles;
					}
					if (函数追踪) {
					ASTExtraPlayerCharacter *Target = GetTargetForBT();
                    auto WeaponManagerComponent = localPlayer->WeaponManagerComponent;
                    if (WeaponManagerComponent) {
                        auto propSlot = WeaponManagerComponent->GetCurrentUsingPropSlot();
                        if ((int) propSlot.GetValue() >= 1 && (int) propSlot.GetValue() <= 3) {
                            auto CurrentWeaponReplicated = (ASTExtraShootWeapon *) WeaponManagerComponent->CurrentWeaponReplicated;
                            if (CurrentWeaponReplicated) {
                                auto ShootWeaponComponent = CurrentWeaponReplicated->ShootWeaponComponent;
                                if (ShootWeaponComponent) {
                                    int shoot_event_idx = 168;
                                    auto VTable = (void **) ShootWeaponComponent->VTable;
                                    auto f_mprotect = [](uintptr_t addr, size_t len, int32_t prot) -> int32_t {
                                      static_assert(PAGE_SIZE == 4096);
                                      constexpr size_t page_size = static_cast<size_t>(PAGE_SIZE);
                                      void* start = reinterpret_cast<void*>(addr & -page_size);
                                      uintptr_t end = (addr + len + page_size - 1) & -page_size;
                                      return mprotect(start, end - reinterpret_cast<uintptr_t>(start), prot);
                                    };
                                    if (VTable && (VTable[shoot_event_idx] != shoot_event)) {
                                        orig_shoot_event = decltype(orig_shoot_event)(
                                                VTable[shoot_event_idx]);
                                        f_mprotect((uintptr_t)(&VTable[shoot_event_idx]), sizeof(uintptr_t), PROT_READ | PROT_WRITE);
                                        VTable[shoot_event_idx] = (void *) shoot_event;
                                    }
                                }
                            }
                       }
                  }
              }
					int totalEnemies = 0, totalBots = 0;
					std::vector<ASTExtraPlayerCharacter *> PlayerCharacter;
					//切记
					GetAllActors(PlayerCharacter);
					for (auto actor = PlayerCharacter.begin();
						 actor != PlayerCharacter.end(); actor++) {
						auto Player = *actor;
						if (Player->PlayerKey == localPlayer->PlayerKey)
							continue;
						if (Player->TeamID == localPlayer->TeamID)
							continue;
						if (Player->bDead)
							continue;
						
						if (Player->bHidden)
							continue;
						
						if (!Player->RootComponent)
							continue;

						if (忽略人机) {
							if (Player->bEnsure)
								continue;
						}
						if (Player->bEnsure)
                            totalBots++;
                        else totalEnemies++;
                        
						FVector Head = GetBoneLocationByName(Player, "Head");
						Head.Z += 12.5f;
						FVector Root = GetBoneLocationByName(Player, "Root");
						float Distance = Player->GetDistanceTo(localPlayer) / 100.f;
						if (Distance < 500.f) {
							//结构体Skeleton头部
							FVector2D HeadSc, RootSc;
							FVector2D HeadPos, RootPos;
							if (gGameplayStatics->ProjectWorldToScreen(localPlayerController, Head,
																	   false, &HeadSc) &&
								gGameplayStatics->ProjectWorldToScreen(localPlayerController, Root,
																	   false, &RootSc)) {
                    if (驱动自瞄||函数追踪) {
			        long PlayerAimLineColor = (1.f, 0, 0, 1.f);
					ASTExtraPlayerCharacter *Target = GetTargetForBT();
					if (Target)
					{
					    FVector Head = Target->GetBonePos("Head", {});
                        FVector2D HeadPosSC;
                        if (W2S(Head, (FVector2D *)&HeadPosSC)) {
                        DrawLine(HUD, {(float) screenWidth / 2,  (float) (screenHeight / 2)}, FVector2D(HeadPosSC.X, HeadPosSC.Y + PlayerAimLineColor),1.5f, COLOR_RED);
                        }
                    }
                    }
								if (驱动自瞄||函数追踪) {
								DrawCircle(HUD, (ScreenWidth / 2), (ScreenHeight / 2), FOVsize, 20, COLOR_RED);
								}

								//射线
								if (射线){
								DrawLine(HUD, {static_cast<float>(ScreenWidth / 2), 0 + 120}, HeadSc, 1.0f, COLOR_WHITE);
								}
                            if (投掷物警告) {
                            std::vector<ASTExtraGrenadeBase*> GrenadeBase;
                            GetAllActors(GrenadeBase);
                            for (auto actor = GrenadeBase.begin(); actor != GrenadeBase.end(); actor++) {
                                auto grnade = *actor;
                                auto RootComponent = grnade->RootComponent;
                            if (!RootComponent)
                                continue;
                            auto colV = FLinearColor();
                            float Distance = grnade->GetDistanceTo(localPlayerController) / 100.f;
                            if (Distance <= 50) {
                                if(isEqual(grnade->ClassPrivate->GetName(), "BP_Grenade_Shoulei_C")){
                                    bool IsVisible = localPlayerController->LineOfSightTo(grnade, {0,0,0}, true);
                                    if(IsVisible){ 
                                        colV = COLOR_WHITE;
                                    }else{
                                        colV = COLOR_RED; 
                                    }
                                FVector2D grS;
                                if(W2S(RootComponent->RelativeLocation, &grS) ){
                                    std::wstring name  =L"手雷";
                                    tslFont->LegacyFontSize = 15;
                                    DrawText(HUD, FString(name), grS, COLOR_WHITE);
                                }
                                std::wstring warr  =L"远离, 远离, 远离 !!!";
                                tslFont->LegacyFontSize = 45;
                                DrawText(HUD, FString(warr), {(float)ScreenWidth/2 -10 , (float)ScreenHeight/2}, colV);
                                    }
                                }
                            }
                        }
								        //雷达
                                       	if(雷达){
                                        bool out = false;
                                        struct Vector3 Pos;
                                        Pos.X = ScreenWidth / 4.395;
                                        Pos.Y = ScreenHeight / 40;
                                        struct Vector3 Size;
                                        Size.X = 200;
                                        Size.Y = 210;    
                                        float RadarCenterX = Pos.X + (Size.X / 2);
                                        float RadarCenterY = Pos.Y + (Size.Y / 2);
                                        
                                        FVector MyPosition, EnemyPosition;
                                        ASTExtraVehicleBase * CurrentVehiclea = Player->CurrentVehicle;
                                            if (CurrentVehiclea) {
                                        MyPosition = CurrentVehiclea->RootComponent->RelativeLocation;
                                        } else {
                                        MyPosition = Player->RootComponent->RelativeLocation;
                                        }
                                        ASTExtraVehicleBase * CurrentVehicle = localPlayer->CurrentVehicle;
                                           if (CurrentVehicle) {
                                                EnemyPosition = CurrentVehicle->RootComponent->RelativeLocation;
                                        } else {
                                                EnemyPosition = localPlayer->RootComponent->RelativeLocation;
                                        }
                                        
                                        FVector RadarSketch = WorldToRadar(g_PlayerController->PlayerCameraManager->CameraCache.POV.Rotation.Yaw, MyPosition, EnemyPosition, Pos.X, Pos.Y, Vector3(Size.X, Size.Y, 0), out);
                                        //DrawRectangle(HUD, {Pos.X, Pos.Y}, 200, 200, 1, {1, 0, 0, 1});        
                                        DrawCircle(HUD, RadarCenterX + 0.5f,RadarCenterY + 0.5f, 100.0f, 100.0f, COLOR_WHITE);      
                                        //DrawCircle(HUD, Pos.X Pos.Y, 200.0f, 100.0f, COLOR_BLACK);
                                        DrawFilledRectangle(HUD, FVector2D{RadarCenterX + 0.5f,RadarCenterY + 0.5f}, 5, 5, COLOR_RED);
                                        if (!g_PlayerController->LineOfSightTo(g_PlayerController->PlayerCameraManager,Head, true))
                                            {
                                            DrawFilledRectangle(HUD, FVector2D{RadarSketch.X,RadarSketch.Y}, 5, 5,COLOR_BLUE);
                                           }else{
                                            DrawFilledRectangle(HUD, FVector2D{RadarSketch.X,RadarSketch.Y}, 5, 5,COLOR_RED);
                                            }    
                                        }
                                        if (距离) {
										FVector BelowRoot = Root;
                                        BelowRoot.Z -= 35.f;
                                        FVector2D BelowRootSc;
										if (gGameplayStatics->ProjectWorldToScreen(localPlayerController, BelowRoot, false, &BelowRootSc)) {
											std::wstring ws;
                                                ws += L" ";
                                                ws += std::to_wstring((int) Distance);
                                                ws += L"米";
                                            tslFont->LegacyFontSize = max(5, 12 - (int)(Distance / 80));
                                            float txtWidth, txtHeight;
                                            HUD->GetTextSize(Player->PlayerName, tslFont, 1.f, &txtWidth, &txtHeight);

                                            DrawOutlinedText(HUD,ws, FVector2D(BelowRootSc.X, BelowRootSc.Y + (txtHeight * 0.1f)), COLOR_WHITE, COLOR_BLACK, true);
                                            tslFont->LegacyFontSize = TSL_FONT_DEFAULT_SIZE;

										}
										}
                                            //血量
                                            if(血量){
                                            float CurHP = std::max(0.f, std::min(Player->Health, Player->HealthMax));
                                            float MaxHP = Player->HealthMax;

                                            FLinearColor ColorHP = {
                                                    std::min(((510.f * (MaxHP - CurHP)) / MaxHP) / 255.f, 1.f),
                                                    std::min(((510.f * CurHP) / MaxHP) / 255.f, 1.f),
                                                    0.f,
                                                    0.5f
                                            };

                                            if (CurHP == 0 && !Player->bDead) {
                                                ColorHP = {0.63f, 0.82f, 0.42f, 0.75f};

                                                CurHP = Player->NearDeathBreath;
                                                USTCharacterNearDeathComp *NearDeatchComponent = Player->NearDeatchComponent;
                                                if (NearDeatchComponent) {
                                                    MaxHP = NearDeatchComponent->BreathMax;
                                                }
                                            }

                                            auto AboveHead = Player->GetHeadLocation(true);
                                            AboveHead.Z += 35.f;
                                            FVector2D AboveHeadSc;
                                            if (UGameplayStatics::ProjectWorldToScreen(localPlayerController, AboveHead, false, &AboveHeadSc)) {
           
                                                auto mWidthScale = std::min(0.1f * Distance, 35.f);

                                                auto mWidth = 80.f - mWidthScale;
                                                auto mHeight = mWidth * 0.07f;

                                                AboveHeadSc.X -= (mWidth / 2);
                                                AboveHeadSc.Y -= (mHeight * 1.55f);

                                                DrawFilledRectangle(HUD, {AboveHeadSc.X, AboveHeadSc.Y}, (CurHP * mWidth / MaxHP), mHeight, COLOR_RED);
                                                DrawRectangle(HUD, {AboveHeadSc.X, AboveHeadSc.Y}, mWidth, mHeight, 1.3f, {0, 0, 0, 1.f});
                                                DrawRectangle(HUD, {AboveHeadSc.X+16, AboveHeadSc.Y}, mWidth-16, mHeight, 1.3f, {0, 0, 0, 1.f});
                                                DrawRectangle(HUD, {AboveHeadSc.X+32, AboveHeadSc.Y}, mWidth-32, mHeight, 1.3f, {0, 0, 0, 1.f});
                                                DrawRectangle(HUD, {AboveHeadSc.X+48, AboveHeadSc.Y}, mWidth-48, mHeight, 1.3f, {0, 0, 0, 1.f});
                                                DrawRectangle(HUD, {AboveHeadSc.X+64, AboveHeadSc.Y}, mWidth-64, mHeight, 1.3f, {0, 0, 0, 1.f});
                                            }
                                         }
								//Skeleton
								if (Skeleton) {
								static vector<string> right_arm{"neck_01", "clavicle_r",
																"upperarm_r", "lowerarm_r",
																"hand_r", "item_r"};
								static vector<string> left_arm{"neck_01", "clavicle_l",
															   "upperarm_l", "lowerarm_l", "hand_l",
															   "item_l"};
								static vector<string> spine{"Head", "neck_01", "spine_03",
															"spine_02", "spine_01", "Pelvis"};
								static vector<string> lower_right{"Pelvis", "thigh_r", "calf_r",
																  "foot_r"};
								static vector<string> lower_left{"Pelvis", "thigh_l", "calf_l",
																 "foot_l"};
								//Skeleton排序
								static vector<vector<string>> skeleton{right_arm, left_arm, spine,
																	   lower_right, lower_left};
								//掩体判断
								bool IsVisible = localPlayerController->LineOfSightTo(Player,
																					  {0, 0, 0},
																					  true);
								for (auto &boneStructure: skeleton) {
									string lastBone;
									for (string &currentBone: boneStructure) {
										if (!lastBone.empty()) {
											//Skeleton获取
											FVector wBoneFrom = GetBoneLocationByName(Player,
																					  lastBone.c_str());
											//获取当前Skeleton
											FVector wBoneTo = GetBoneLocationByName(Player,
																					currentBone.c_str());
											//Skeleton头到Skeleton底
											FVector2D boneFrom, boneTo;
											if (gGameplayStatics->ProjectWorldToScreen(
													localPlayerController, wBoneFrom, false,
													&boneFrom) &&
												gGameplayStatics->ProjectWorldToScreen(
														localPlayerController, wBoneTo, false,
														&boneTo)) {
												//掩体
												if (IsVisible)
													DrawLine(HUD, boneFrom, boneTo, 1.0f,
															 {1.f, 1.f, 1.f, 1.f});
												else
													DrawLine(HUD, boneFrom, boneTo, 1.0f,
															 {1.f, 0.f, 0.f, 1.f});
											}
										}
										lastBone = currentBone;
									}
								}
							}
								
                                    if (信息){
                                    auto AboveHead = Player->GetHeadLocation(true);
                                    AboveHead.Z += 35.f;
                                    FVector2D AboveHeadSc;
							    	if (gGameplayStatics->ProjectWorldToScreen(localPlayerController,AboveHead, false,&AboveHeadSc)) {
									std::wstring ws;
									//队伍绘制
									ws += L"";
                                    ws += std::to_wstring(Player->TeamID);
                                    ws += L"  ";
									//名字
									ws += Player->PlayerName.ToWString();
									ws += L" ";
									
									tslFont->LegacyFontSize = max(5, 12 - (int)(Distance / 80));
                                    float txtWidth, txtHeight;
                                    HUD->GetTextSize(Player->PlayerName, tslFont, 1.f, &txtWidth, &txtHeight);
                                    DrawOutlinedText(HUD, ws, FVector2D(AboveHeadSc.X, AboveHeadSc.Y - txtHeight), COLOR_YELLOW, COLOR_BLACK, true);
								    }
								}
							}
						}
					}
					           
					if (totalEnemies > 0 || totalBots > 0) {
                    std::string s;
                    s = "P:";
                    s += std::to_string(totalEnemies);
                    s += "  ";
                    s += "B:";
                    s += std::to_string(totalBots);
                    tslFont->LegacyFontSize = 16;
                    DrawOutlinedText(HUD, FString(s), {(float)ScreenWidth / 2, 120}, COLOR_WHITE, COLOR_BLACK, true);
                    tslFont->LegacyFontSize = TSL_FONT_DEFAULT_SIZE;
					}
				}
			}
		}
	}
	g_LocalPlayer = localPlayer;
	g_PlayerController = localPlayerController;
}

void *(*oProcessEvent)(UObject *pObj, UFunction *pFunc, void *pArgs);
void *hkProcessEvent(UObject *pObj, UFunction *pFunc, void *pArgs)
{
	if (pFunc)
	{
		if (pFunc->GetFullName() == "Function Engine.HUD.ReceiveDrawHUD")
		{
           
			AHUD *pHUD = (AHUD *)pObj;
			if (pHUD)
			{
              
				auto Params = (AHUD_ReceiveDrawHUD_Params *)pArgs;
				if (Params)
				{
                   
					RenderESP(pHUD, Params->SizeX, Params->SizeY);
				}
			}
		}
	}
	return oProcessEvent(pObj, pFunc, pArgs);
}

void *Init_Thread(void *)
{
    UE4 = Tools::GetBaseAddress("libUE4.so");
	while (!UE4)
	{
		UE4 = Tools::GetBaseAddress("libUE4.so");
		sleep(1);
	}
	
	FName::GNames = GetGNames();
	while (!FName::GNames)
	{
		FName::GNames = GetGNames();
		sleep(1);
	}
	    while (!g_App) {
        g_App = *(android_app **) (UE4 + GNativeAndroidApp_Offset);
        sleep(1);
    }
    if (g_App->onInputEvent != onInputEvent) {
        orig_onInputEvent = decltype(orig_onInputEvent)(g_App->onInputEvent);
        g_App->onInputEvent = onInputEvent;
    }
	UObject::GUObjectArray = (FUObjectArray *)(UE4 + GUObject_Offset);
	Tools::Hook((void *)(UE4 + ProcessEvent_Offset), (void *)hkProcessEvent, (void **)&oProcessEvent);
	sleep(1);
    pthread_t t;
    
	return 0;
}

__attribute__((constructor)) void _init() {
	pthread_t t;
	pthread_create(&t, 0, Init_Thread, 0);
}

