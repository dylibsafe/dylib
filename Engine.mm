#import "ESP/mahoa.h"
//#import "Bsphp/WX_NongShiFu123.mm"
#include "sys/mman.h"
//#import "菜单.mm"
#include "ESP/Tools.h"
//#include "imgui/UI.h"
#import <AVFoundation/AVFoundation.h>
//#include "菜单.h"
#include "JRMemory.framework/Headers/MemScan.h"
#include <stdio.h>
#include <stdint.h>
#import <CoreTelephony/CTTelephonyNetworkInfo.h>
//#import "authcheatbot/FTNotificationIndicator.h"
//#import "authcheatbot/FCUUID.h"
//#import "authcheatbot/menuButtonConfigLQ.h"
//#import "authcheatbot/MBProgressHUD.h"
//#import "authcheatbot/Reachability.h"
#include <string>
#include <stdio.h>
#include <string.h>
#include <vector>
#include <cstdlib>
#include <cmath>
#include "ESP/Vector3.hpp"
#include "ESP/Vector2.hpp"
#import <Foundation/Foundation.h>
#import "ESP/UE4.h"
#import "API/APIClient.h"
#include "ESP/tahoma.h"
#import "View/OverlayView.h"
#import "Engine.h"
#import "Image/Icon.h"
#define timer(sec) dispatch_after(dispatch_time(DISPATCH_TIME_NOW, sec * NSEC_PER_SEC), kkdispatch_get_main_queue(), ^
NSString *xrpb = NSSENCRYPT("Paste Key...");
#define kWidth  [UIScreen mainScreen].bounds.size.width
#define kHeight [UIScreen mainScreen].bounds.size.height
#define E(str) _xor_(str).c_str()
NSString *bundle;
uint64_t GUObjectArray;
uint64_t GNameFun;

#define Actors_Offset 0xA0
bool isAimKnocked = true;
bool IsValidAddress(kaddr addr) {
    return addr > 0x100000000 && addr < 0x2000000000;
}

//hook no jb
bool anti1 =false;
bool anti2 =false;
bool anti3 =false;
bool anti4 =false;

bool giamgiat = false;
bool tiaosan= false;

bool init1 = false;
bool init2 = false;
bool init3 = false;
bool init4 = false;
bool init5 = false;
bool WideView = false;
bool 引擎绘制1 = false;
bool ZERO = false;
bool feiche = false;
int WideValue = 120;

uintptr_t UE4;
kaddr module= (unsigned long)_dyld_get_image_vmaddr_slide(1);
namespace Options
{
int boxtype = 1;
int healthbartype = 0;
int Nationtype = 2;
int DirectionLineSize = 70;
int VehicleDirectionLineSize = 100;
int offscreen_range = 40;
int max_distance_offscreen = 400;
int playersdistancessize = 600;
bool esp_Outline = true;
int distance_Radar = 150;
}

enum EAimTarget {
    Head = 0,
    Chest = 1
};

long l1 = 0xFF544;
long l2 = 0xFFFFF;
//const char * stack230 = 0;//index of class array 75
int stack_20;
int AimF = 3;//瞄准方式

NSString * val_1;
NSString * val_x2 ;
int sort = 1,sort_1 = 3;
long RAMADDRESS = 0x4332443;//0x4332443 + F = 0x4332452
bool stack_193 = NO;
using namespace std;
using namespace SDK;

static int Styleesp = 2;

bool ConfigSilentAimEnable = false;
    struct sConfig {
        struct sESPMenu {
            bool Line;
            bool Box;
            bool Skeleton;
            bool Health;
            bool 血条;
            bool Name;
            bool Distance;
            bool TeamID;
            bool Weapon;
            bool Alert;
		      bool Radar;
		      float RadarX;
		      float RadarY;
            bool GRWAR;
            bool ESPON;
            bool IgnoreBot;
            bool LootBox;
            bool Throwables;
        };
        sESPMenu ESPMenu{false};

        
    };
    sConfig Config{false};
//折叠控件
struct JsonPreferences {
enum EAimTarget {
        Head = 0,
        Chest = 1
    };
    enum EAimPriority {
        DistancePriority = 0,
        FOVPriority = 1
    };

int xsuit = 0;
int skinm4 = 0;
int skinakm = 0;
int para = 0;
int bag = 0;
int helmet = 0;
bool CoupeRB = false;
bool Dacia = false;
bool UAZ = false;
bool MiniBus = false;
bool BigFoot = false;
bool Boat = false;
bool Mirado = false;
bool Buggy = false;
bool OMirado = false;
bool Moto = false;
bool Emote = false;
bool Helmett = false;
bool MK145 = false;
bool MK14 = false;
bool MK146 = false;
bool M4145 = false;
bool mg31 = false;
bool mg32 = false;
bool mg33 = false;
bool P90 = false;
bool Bagg = false;
bool Face = false;
bool Outfit = false;
bool Parachute = false;
bool M416 = false;
bool AKM = false;
bool SCARL = false;
bool M762 = false;
bool AWM = false;
bool KAR98 = false;
bool M24 = false;
bool M16 = false;
bool M249 = false;
bool MG3 = false;
bool DP28 = false;
bool GROZA = false;
bool AUG = false;
bool PAN = false;
bool UZI = false;
bool UMP = false;
bool TOMMY = false;
bool BIZON = false;
bool ACE32 = false;
bool VECTOR = false;

    struct sConfig {
         struct sAimMenu {
            bool EnableAllHack;
            bool Enable;
            bool AimBot;
            bool Autofire;
            bool CameraCache;
            EAimTarget Target;
            EAimPriority Priority;
//            EAimTrigger Trigger;
            bool IgnoreKnocked;
            bool IgnoreBot;
            bool Prediction;
            bool VisCheck;
            bool Fov;
            bool LessRecoil;
            bool Norecoil;
            bool InstantHit;
            bool FastShoot;
            bool HeadShoot;
            bool ReCo;
            float Recc = 1.0f;
            bool HitX;
            int Cross = 200;
            bool test5;
            bool SpeedHack;
        };
        sAimMenu SilentAim{false};
		struct sModSkin {
  bool Enable = 1;
  bool HitEffect = 0;
  bool KillMessage = 0;
  bool DeadBox = 0;
  int XSuits = 1;
  int AKM = 1;
  int M16A4 = 1;
  int Scar = 1;
  int M416 = 1;
  int Groza = 1;
  int AUG = 1;
  int QBZ = 1;
  int M762 = 1;
  int MK145 = 1;
  int MK14 = 1;
  int MK146 = 1;
  int M4145 = 1;
  int mg31 = 1;
  int mg32 = 1;
  int mg33 = 1;
  int P90 = 1;
  int ACE32 = 1;
  int Parachute = 1;
  int UZI = 1;
  int UMP = 1;
  int Vector = 1;
  int Thompson = 1;
  int Bizon = 1;
  int K98 = 1;
  int M24 = 1;
  int AWM = 1;
  int DP28 = 1;
  int M249 = 1;
  int MG3 = 1;
  int Pan = 1;
  int Moto = 1;
  int CoupeRP = 1;
  int UAZ = 1;
  int Dacia = 1;
  int Bigfoot = 1;
  int Mirado = 1;
  int OMirado = 1;
  int Buggy = 1;
  int MiniBus = 1;
  int Boat = 1;
};
sModSkin Skin{false};
        
    };
    sConfig Config{false};

} preferences;
static int helmett3 = 1;
static int bag3 = 1;
bool ModSkinn = false;
bool KillMessage = false;
bool DeadBox = false;
int sEmote1 = 2200101;
int sEmote2 = 2200201;
int sEmote3 = 2200301;
int ModEmote1 = 1;
namespace Active {
  inline int SkinCarDefault = 0;
  inline int SkinCarMod = 0;
  inline int SkinCarNew = 0;
}
UISlider * Auto1;//autofire
UISlider * Auto1Interval;//autofire interval
UISlider * sliderrr;//aimpos
extern float TurnRate; //No scope turn rate - aim speed
extern float NoScopeAimDisSliderVal;
extern float HiddenFOVSliderVal;// with scope Filed of view slider value /NOT ACTIVE/
extern float NoScopeFOVSliderVal;//No scope FOV size slider value
//Slider_Sniper * Aimbot1;//fov
//extern float FovRadousVal;
UISlider * aimspeed;//aimbot speed
CGSize AutoFireCircelSize;// CGSizeMake(w, h);
bool IsLootBox = false;
bool IsAirDrop = false;
int Interval = 1;
int counter;
float iAwareTexSiz = 20;
bool iAwareText = true;
float EspTextSiz = 9;
float IteTextSiz = 4;
float EspBoxThik = 2.0f;
float EspSktonThik = 1.5f;
float IsfovSlider = 150.0f;
float AimSmooth = 5.0f;
bool AimTouch = false;
bool antibypass = false;
//UISlider * Aimbot2;
//aimbot bool
float g_disstance = 150.f;
//物资
bool IsFastKnock = false;
bool IsFastswim = false;
bool IsVehcle = false;
bool IsboxVechle =false;
bool IsCarHP = false;
bool IsCarFuel =false;
bool IsPostil =false;
bool IsSniper = false;
bool IsWeapon =false;
bool IsAmmo =false;
bool IsFov =false;
bool IsHitXPL =false;
bool IsPlayerSP= false;
bool isAimvisual =false;
bool IsCrossHair = false;
bool IsSMG =false;
bool IsAR =false;
bool IsITM =false;
bool IsShotgun = false;
bool TeleportCar = false;
bool IsSilentAIM= false;
bool GODVIEWUUP= false;
bool GODVIEWFRONT= false;
bool GODVIEWLEFT= false;
bool AUOTJUMPAN= false;

int boxtype = 1;
int healthbartype = 0;
int Nationtype = 2;
int DirectionLineSize = 70;
int VehicleDirectionLineSize = 100;
int offscreen_range = 40;
int max_distance_offscreen = 400;
int playersdistancessize = 600;
bool esp_Outline = true;
int distance_Radar = 150;

uintptr_t ProcessEvent_Offset,AimBullet_Offset,AimBullet_Offset2,SetControlRotation_Offset;
#define SLEEP_TIME 1000LL / 60LL
#define TORAD(x) ((x) * (M_PI / 180.f))
int g_screenWidth ;
int g_screenHeight ;
int screenWidth ;
int screenHeight ;
int screenDensity = 0;
int getEspFramerate;
int SCOLOR;
int scc;


char extra[30];
float density = -1;
float gDistance;
int localFiring{0};
BOOL kaiguan1 = NO;
BOOL kaiguan2 = NO;
BOOL kaiguan3 = NO;
BOOL kaiguan4 = NO;
#define PI 3.14159265358979323846
#define __fastcall
bool ARWP = false;
bool SMGWP =false;
bool SNPWP = false;
bool otherWP =false;
bool AmmoWP =false;
bool LIGHTMW = false;
bool SHOTGUNWP = false;
bool scopewp = false;
bool POSTOLWP = false;
bool ARMORWP =false;
//extern float FovRadousVal;
float IsAimBotRecc = 1.183f;
bool IsRecoilComparison = false;
static int Istargets = 2;
bool thongtin =false;
static int loaixe = 0;
static int xedacia = 0;
bool modxe = false;
bool tamnho = false;
bool FPS = false;;
//hiệu ứng bắn
bool effectm44 = false;
float FOVsize =180.0f;
float dorong = 88.0f;
float Aimsmooth = 1.2f;
float Xs=2.4,Ys=2.4;
float IsDistance = 68;

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
};
FPSCounter fps;

namespace allColors
{
    FLinearColor AliceBlue = { 0.941176534f, 0.972549081f, 1.000000000f, 1.000000000f };
    FLinearColor AntiqueWhite = { 0.980392218f, 0.921568692f, 0.843137324f, 1.000000000f };
    FLinearColor Aqua = { 0.000000000f, 1.000000000f, 1.000000000f, 1.000000000f };
    FLinearColor Aquamarine = { 0.498039246f, 1.000000000f, 0.831372619f, 1.000000000f };
    FLinearColor Azure = { 0.941176534f, 1.000000000f, 1.000000000f, 1.000000000f };
    FLinearColor Beige = { 0.960784376f, 0.960784376f, 0.862745166f, 1.000000000f };
    FLinearColor Bisque = { 1.000000000f, 0.894117713f, 0.768627524f, 1.000000000f };
    FLinearColor Black = { 0.000000000f, 0.000000000f, 0.000000000f, 1.000000000f };
    FLinearColor BlanchedAlmond = { 1.000000000f, 0.921568692f, 0.803921640f, 1.000000000f };
    FLinearColor Blue = { 0.000000000f, 0.000000000f, 1.000000000f, 1.000000000f };
    FLinearColor BlueViolet = { 0.541176498f, 0.168627456f, 0.886274576f, 1.000000000f };
    FLinearColor Brown = { 0.647058845f, 0.164705887f, 0.164705887f, 1.000000000f };
    FLinearColor BurlyWood = { 0.870588303f, 0.721568644f, 0.529411793f, 1.000000000f };
    FLinearColor CadetBlue = { 0.372549027f, 0.619607866f, 0.627451003f, 1.000000000f };
    FLinearColor Chartreuse = { 0.498039246f, 1.000000000f, 0.000000000f, 1.000000000f };
    FLinearColor Chocolate = { 0.823529482f, 0.411764741f, 0.117647067f, 1.000000000f };
    FLinearColor Coral = { 1.000000000f, 0.498039246f, 0.313725501f, 1.000000000f };
    FLinearColor CornflowerBlue = { 0.392156899f, 0.584313750f, 0.929411829f, 1.000000000f };
    FLinearColor Cornsilk = { 1.000000000f, 0.972549081f, 0.862745166f, 1.000000000f };
    FLinearColor Crimson = { 0.862745166f, 0.078431375f, 0.235294133f, 1.000000000f };
    FLinearColor Cyan = { 0.000000000f, 1.000000000f, 1.000000000f, 1.000000000f };
    FLinearColor DarkBlue = { 0.000000000f, 0.000000000f, 0.545098066f, 1.000000000f };
    FLinearColor DarkCyan = { 0.000000000f, 0.545098066f, 0.545098066f, 1.000000000f };
    FLinearColor DarkGoldenrod = { 0.721568644f, 0.525490224f, 0.043137256f, 1.000000000f };
    FLinearColor DarkGray = { 0.662745118f, 0.662745118f, 0.662745118f, 1.000000000f };
    FLinearColor DarkGreen = { 0.000000000f, 0.392156899f, 0.000000000f, 1.000000000f };
    FLinearColor DarkKhaki = { 0.741176486f, 0.717647076f, 0.419607878f, 1.000000000f };
    FLinearColor DarkMagenta = { 0.545098066f, 0.000000000f, 0.545098066f, 1.000000000f };
    FLinearColor DarkOliveGreen = { 0.333333343f, 0.419607878f, 0.184313729f, 1.000000000f };
    FLinearColor DarkOrange = { 1.000000000f, 0.549019635f, 0.000000000f, 1.000000000f };
    FLinearColor DarkOrchid = { 0.600000024f, 0.196078449f, 0.800000072f, 1.000000000f };
    FLinearColor DarkRed = { 0.545098066f, 0.000000000f, 0.000000000f, 1.000000000f };
    FLinearColor DarkSalmon = { 0.913725555f, 0.588235319f, 0.478431404f, 1.000000000f };
    FLinearColor DarkSeaGreen = { 0.560784340f, 0.737254918f, 0.545098066f, 1.000000000f };
    FLinearColor DarkSlateBlue = { 0.282352954f, 0.239215702f, 0.545098066f, 1.000000000f };
    FLinearColor DarkSlateGray = { 0.184313729f, 0.309803933f, 0.309803933f, 1.000000000f };
    FLinearColor DarkTurquoise = { 0.000000000f, 0.807843208f, 0.819607913f, 1.000000000f };
    FLinearColor DarkViolet = { 0.580392182f, 0.000000000f, 0.827451050f, 1.000000000f };
    FLinearColor DeepPink = { 1.000000000f, 0.078431375f, 0.576470613f, 1.000000000f };
    FLinearColor DeepSkyBlue = { 0.000000000f, 0.749019623f, 1.000000000f, 1.000000000f };
    FLinearColor DimGray = { 0.411764741f, 0.411764741f, 0.411764741f, 1.000000000f };
    FLinearColor DodgerBlue = { 0.117647067f, 0.564705908f, 1.000000000f, 1.000000000f };
    FLinearColor Firebrick = { 0.698039234f, 0.133333340f, 0.133333340f, 1.000000000f };
    FLinearColor FloralWhite = { 1.000000000f, 0.980392218f, 0.941176534f, 1.000000000f };
    FLinearColor ForestGreen = { 0.133333340f, 0.545098066f, 0.133333340f, 1.000000000f };
    FLinearColor Fuchsia = { 1.000000000f, 0.000000000f, 1.000000000f, 1.000000000f };
    FLinearColor Gainsboro = { 0.862745166f, 0.862745166f, 0.862745166f, 1.000000000f };
    FLinearColor GhostWhite = { 0.972549081f, 0.972549081f, 1.000000000f, 1.000000000f };
    FLinearColor Gold = { 1.000000000f, 0.843137324f, 0.000000000f, 1.000000000f };
    FLinearColor Goldenrod = { 0.854902029f, 0.647058845f, 0.125490203f, 1.000000000f };
    FLinearColor Gray = { 0.501960814f, 0.501960814f, 0.501960814f, 1.000000000f };
    FLinearColor Green = { 0.000000000f, 0.501960814f, 0.000000000f, 1.000000000f };
    FLinearColor GreenYellow = { 0.678431392f, 1.000000000f, 0.184313729f, 1.000000000f };
    FLinearColor Honeydew = { 0.941176534f, 1.000000000f, 0.941176534f, 1.000000000f };
    FLinearColor HotPink = { 1.000000000f, 0.411764741f, 0.705882370f, 1.000000000f };
    FLinearColor IndianRed = { 0.803921640f, 0.360784322f, 0.360784322f, 1.000000000f };
    FLinearColor Indigo = { 0.294117659f, 0.000000000f, 0.509803951f, 1.000000000f };
    FLinearColor Ivory = { 1.000000000f, 1.000000000f, 0.941176534f, 1.000000000f };
    FLinearColor Khaki = { 0.941176534f, 0.901960850f, 0.549019635f, 1.000000000f };
    FLinearColor Lavender = { 0.901960850f, 0.901960850f, 0.980392218f, 1.000000000f };
    FLinearColor LavenderBlush = { 1.000000000f, 0.941176534f, 0.960784376f, 1.000000000f };
    FLinearColor LawnGreen = { 0.486274540f, 0.988235354f, 0.000000000f, 1.000000000f };
    FLinearColor LemonChiffon = { 1.000000000f, 0.980392218f, 0.803921640f, 1.000000000f };
    FLinearColor LightBlue = { 0.678431392f, 0.847058892f, 0.901960850f, 1.000000000f };
    FLinearColor LightCoral = { 0.941176534f, 0.501960814f, 0.501960814f, 1.000000000f };
    FLinearColor LightCyan = { 0.878431439f, 1.000000000f, 1.000000000f, 1.000000000f };
    FLinearColor LightGoldenrodYellow = { 0.980392218f, 0.980392218f, 0.823529482f, 1.000000000f };
    FLinearColor LightGreen = { 0.564705908f, 0.933333397f, 0.564705908f, 1.000000000f };
    FLinearColor LightGray = { 0.827451050f, 0.827451050f, 0.827451050f, 1.000000000f };
    FLinearColor LightPink = { 1.000000000f, 0.713725507f, 0.756862819f, 1.000000000f };
    FLinearColor LightSalmon = { 1.000000000f, 0.627451003f, 0.478431404f, 1.000000000f };
    FLinearColor LightSeaGreen = { 0.125490203f, 0.698039234f, 0.666666687f, 1.000000000f };
    FLinearColor LightSkyBlue = { 0.529411793f, 0.807843208f, 0.980392218f, 1.000000000f };
    FLinearColor LightSlateGray = { 0.466666698f, 0.533333361f, 0.600000024f, 1.000000000f };
    FLinearColor LightSteelBlue = { 0.690196097f, 0.768627524f, 0.870588303f, 1.000000000f };
    FLinearColor LightYellow = { 1.000000000f, 1.000000000f, 0.878431439f, 1.000000000f };
    FLinearColor Lime = { 0.000000000f, 1.000000000f, 0.000000000f, 1.000000000f };
    FLinearColor LimeGreen = { 0.196078449f, 0.803921640f, 0.196078449f, 1.000000000f };
    FLinearColor Linen = { 0.980392218f, 0.941176534f, 0.901960850f, 1.000000000f };
    FLinearColor Magenta = { 1.000000000f, 0.000000000f, 1.000000000f, 1.000000000f };
    FLinearColor Maroon = { 0.501960814f, 0.000000000f, 0.000000000f, 1.000000000f };
    FLinearColor MediumAquamarine = { 0.400000036f, 0.803921640f, 0.666666687f, 1.000000000f };
    FLinearColor MediumBlue = { 0.000000000f, 0.000000000f, 0.803921640f, 1.000000000f };
    FLinearColor MediumOrchid = { 0.729411781f, 0.333333343f, 0.827451050f, 1.000000000f };
    FLinearColor MediumPurple = { 0.576470613f, 0.439215720f, 0.858823597f, 1.000000000f };
    FLinearColor MediumSeaGreen = { 0.235294133f, 0.701960802f, 0.443137288f, 1.000000000f };
    FLinearColor MediumSlateBlue = { 0.482352972f, 0.407843173f, 0.933333397f, 1.000000000f };
    FLinearColor MediumSpringGreen = { 0.000000000f, 0.980392218f, 0.603921592f, 1.000000000f };
    FLinearColor MediumTurquoise = { 0.282352954f, 0.819607913f, 0.800000072f, 1.000000000f };
    FLinearColor MediumVioletRed = { 0.780392230f, 0.082352944f, 0.521568656f, 1.000000000f };
    FLinearColor MidnightBlue = { 0.098039225f, 0.098039225f, 0.439215720f, 1.000000000f };
    FLinearColor MintCream = { 0.960784376f, 1.000000000f, 0.980392218f, 1.000000000f };
    FLinearColor MistyRose = { 1.000000000f, 0.894117713f, 0.882353008f, 1.000000000f };
    FLinearColor Moccasin = { 1.000000000f, 0.894117713f, 0.709803939f, 1.000000000f };
    FLinearColor NavajoWhite = { 1.000000000f, 0.870588303f, 0.678431392f, 1.000000000f };
    FLinearColor Navy = { 0.000000000f, 0.000000000f, 0.501960814f, 1.000000000f };
    FLinearColor OldLace = { 0.992156923f, 0.960784376f, 0.901960850f, 1.000000000f };
    FLinearColor Olive = { 0.501960814f, 0.501960814f, 0.000000000f, 1.000000000f };
    FLinearColor OliveDrab = { 0.419607878f, 0.556862772f, 0.137254909f, 1.000000000f };
    FLinearColor Orange = { 1.000000000f, 0.647058845f, 0.000000000f, 1.000000000f };
    FLinearColor OrangeRed = { 1.000000000f, 0.270588249f, 0.000000000f, 1.000000000f };
    FLinearColor Orchid = { 0.854902029f, 0.439215720f, 0.839215755f, 1.000000000f };
    FLinearColor PaleGoldenrod = { 0.933333397f, 0.909803987f, 0.666666687f, 1.000000000f };
    FLinearColor PaleGreen = { 0.596078455f, 0.984313786f, 0.596078455f, 1.000000000f };
    FLinearColor PaleTurquoise = { 0.686274529f, 0.933333397f, 0.933333397f, 1.000000000f };
    FLinearColor PaleVioletRed = { 0.858823597f, 0.439215720f, 0.576470613f, 1.000000000f };
    FLinearColor PapayaWhip = { 1.000000000f, 0.937254965f, 0.835294187f, 1.000000000f };
    FLinearColor PeachPuff = { 1.000000000f, 0.854902029f, 0.725490212f, 1.000000000f };
    FLinearColor Peru = { 0.803921640f, 0.521568656f, 0.247058839f, 1.000000000f };
    FLinearColor Pink = { 1.000000000f, 0.752941251f, 0.796078503f, 1.000000000f };
    FLinearColor Plum = { 0.866666734f, 0.627451003f, 0.866666734f, 1.000000000f };
    FLinearColor PowderBlue = { 0.690196097f, 0.878431439f, 0.901960850f, 1.000000000f };
    FLinearColor Purple = { 0.501960814f, 0.000000000f, 0.501960814f, 1.000000000f };
    FLinearColor Red = { 1.000000000f, 0.000000000f, 0.000000000f, 1.000000000f };
    FLinearColor RosyBrown = { 0.737254918f, 0.560784340f, 0.560784340f, 1.000000000f };
    FLinearColor RoyalBlue = { 0.254901975f, 0.411764741f, 0.882353008f, 1.000000000f };
    FLinearColor SaddleBrown = { 0.545098066f, 0.270588249f, 0.074509807f, 1.000000000f };
    FLinearColor Salmon = { 0.980392218f, 0.501960814f, 0.447058856f, 1.000000000f };
    FLinearColor SandyBrown = { 0.956862807f, 0.643137276f, 0.376470625f, 1.000000000f };
    FLinearColor SeaGreen = { 0.180392161f, 0.545098066f, 0.341176480f, 1.000000000f };
    FLinearColor SeaShell = { 1.000000000f, 0.960784376f, 0.933333397f, 1.000000000f };
    FLinearColor Sienna = { 0.627451003f, 0.321568638f, 0.176470593f, 1.000000000f };
    FLinearColor Silver = { 0.752941251f, 0.752941251f, 0.752941251f, 1.000000000f };
    FLinearColor SkyBlue = { 0.529411793f, 0.807843208f, 0.921568692f, 1.000000000f };
    FLinearColor SlateBlue = { 0.415686309f, 0.352941185f, 0.803921640f, 1.000000000f };
    FLinearColor SlateGray = { 0.439215720f, 0.501960814f, 0.564705908f, 1.000000000f };
    FLinearColor Snow = { 1.000000000f, 0.980392218f, 0.980392218f, 1.000000000f };
    FLinearColor SpringGreen = { 0.000000000f, 1.000000000f, 0.498039246f, 1.000000000f };
    FLinearColor SteelBlue = { 0.274509817f, 0.509803951f, 0.705882370f, 1.000000000f };
    FLinearColor Tan = { 0.823529482f, 0.705882370f, 0.549019635f, 1.000000000f };
    FLinearColor Teal = { 0.000000000f, 0.501960814f, 0.501960814f, 1.000000000f };
    FLinearColor Thistle = { 0.847058892f, 0.749019623f, 0.847058892f, 1.000000000f };
    FLinearColor Tomato = { 1.000000000f, 0.388235331f, 0.278431386f, 1.000000000f };
    FLinearColor Transparent = { 0.000000000f, 0.000000000f, 0.000000000f, 0.000000000f };
    FLinearColor Turquoise = { 0.250980407f, 0.878431439f, 0.815686345f, 1.000000000f };
    FLinearColor Violet = { 0.933333397f, 0.509803951f, 0.933333397f, 1.000000000f };
    FLinearColor Wheat = { 0.960784376f, 0.870588303f, 0.701960802f, 1.000000000f };
    FLinearColor White = { 1.000000000f, 1.000000000f, 1.0f, 1.000000000f };
    FLinearColor WhiteSmoke = { 0.960784376f, 0.960784376f, 0.960784376f, 1.000000000f };
    FLinearColor Yellow = { 1.000000000f, 1.000000000f, 0.000000000f, 1.000000000f };
    FLinearColor YellowGreen = { 0.603921592f, 0.803921640f, 0.196078449f, 1.000000000f };
};

float aimspeedsl()
{
    // return aimspeed.value;
    float val1 = 20;//50
    //return TurnRate;// aim speed from slider
    return val1;
}
int aimpos()
{
    float speedVal = 25;//100
    //return sliderrr.value;//maybe speed
    return speedVal;
}
int autodiss()
{
    return Auto1.value;
}

NSString *resultx;

@implementation mi
INI* config;
bool MenDeal;

ImVec4 to_vec4(float r, float g, float b, float a)
{
    return ImVec4(r / 255.0, g / 255.0, b / 255.0, a / 255.0);
    
}
        static ImVec4 active = to_vec4(0.729f, 0.098f, 0.031f, 1.0f);
        static ImVec4 inactive = to_vec4(0.729f, 0.098f, 0.031f, 1.0f);

static auto start = std::chrono::steady_clock::now();
static auto noww = std::chrono::high_resolution_clock::now();
auto elapsedd = std::chrono::duration_cast<std::chrono::milliseconds>(noww - start).count();
namespace Settings
{
    static int Tab = 0;
}
int newUAZID = 0;
int lastUAZID = 0;
int newDaciaID = 0;
int lastDaciaID = 0;
int newCoupeID = 0;
int lastCoupeID = 0;
struct snew_Skin {
  int XSuits = 403003;
  int XSuits1 = 40604002;
  int Balo1 = 501001;
  int Balo2 = 501002;
  int Balo3 = 501003;
  int Balo4 = 501004;
  int Balo5 = 501005;
  int Balo6 = 501006;
  int Helmet1 = 502001;
  int Helmet2 = 502002;
  int Helmet3 = 502003;
  int Helmet4 = 502004;
  int Helmet5 = 502005;

  int Helmet6 = 502114;
  int Helmet7 = 502115;
  int Helmet8 = 502116;
  int Parachute = 703001;

  int AKM = 101001;
  int AKM_Mag = 291001;
  int M16A4 = 101002;
  int M16A4_Stock = 205007;
  int M16A4_Mag = 291002;
  int Scar = 101003;
  int Scar_Mag = 291003;
  int Pan = 108004;
  int longyin_x66 = 203015;



  int longyin_x88 = 203005;
  int longyin_x666 = 203015;
  int longyin_x6666 = 203015;
  int longyin_x888 = 203005;
  int longyin_x8888 = 203005;
  int longyin_x1111 = 203001;
  int longyin_x11 = 203001;
  int longyin_x111 = 203001;
  int longyin_x2222 = 203008;
  int longyin_x222 = 203008;
  int longyin_x22 = 203008;
  int longyin_x33 = 203014;
  int longyin_x333 = 203014;
  int longyin_x3333 = 203014;
  int longyin_x4444 = 203004;
  int longyin_x444 = 203004;
  int longyin_x44 = 203004;

  int M416_buchang = 2010095;
  int M416_hondian = 203001;
  int M416_x22 = 203008; 
  int M416_x33 = 203014;
  int M416_x44 = 203004;
  int M416_x66 = 203015;
  int M416_kuorong = 2040135;
  int M416_qiangtuo = 2050025;
  int M416_chuizhi = 2020025;
  int M4a = 203004;
  int M4b = 202002;
  int M416_1 = 101004;
  int M416_2 = 291004;
  int M416_3 = 203008;
  int M416_4 = 205005;
  int M416_flash = 201010;
  int M416_compe = 201009;
  int M416_silent = 201011;
  int M416_reddot = 203001;
  int M416_holo = 203001;
  int M416_x2 = 203003;
  int M416_x3 = 203014;
  int M416_x4 = 203004;
  int M416_x6 = 203015;
  int M416_quickMag = 204012;
  int M416_extendedMag = 204011;
  int M416_quickNextended = 204013;
  int M416_stock = 205002;
  int M416_verical = 203015;
  int M416_angle = 202001;
  int M416_lightgrip = 202004;
  int M416_pink = 202005;
  int M416_lazer = 202007;
  int M416_thumb = 202006;

  int Groza = 101005;
  int MK145 = 1030075;
  int MK146 = 1030074;
  int M4145 = 1010045;
  int mg31 = 1050105;
  int mg32 = 1050106;
  int mg33 = 1050107;
  int QBZ = 101007;
  int AUG = 101006;
  int M762 = 101008;
  int M762_Mag = 291008;
  int ACE32 = 101102;
  int Honey = 101012;
  int UZI = 102001;
  int UMP = 102002;
  int Vector = 102003;
  int Thompson = 102004;
  int Bizon = 102005;
  int K98 = 103001;
  int M24 = 103002;
  int AWM = 103003;
  int AMR = 103012;
  int VSS = 103005;
  int SKS = 103004;
  int Mini14 = 103006;
  int MK14 = 103007;
  int SLR = 103009;
  int S1897 = 104002;
  int DP28 = 105002;
  int M249 = 105001;
  int MG3 = 105010;
  int P90 = 102105;
  int Skorpion = 106008;
  int Moto = 1901001;
  int CoupeRP = 1961001;
  int Dacia = 1903001;
  int UAZ = 1908001;
  int Bigfoot = 1953001;
  int Mirado = 1914004;
  int OMirado = 1915001;
  int Buggy = 1907001;
  int MiniBus = 1904001;
  int Boat = 1911001;
  int M249s = 205009;
};

inline snew_Skin new_Skin;



std::chrono::steady_clock::time_point lastChangeTime;
std::chrono::steady_clock::time_point lastWeaponChangeTime;

void updateSkin() {
if (preferences.bag == 1)
                    bag3 = 1501003174; //blood raven x suit
                    if (preferences.bag == 2)
                    bag3 = 1501003220; //Golden Pharaoh X-Suit
                    if (preferences.bag == 3)
                    bag3 = 1501003051; //Avalanche
                    if (preferences.bag == 4)
                    bag3 = 1501003443; //Irresidence
                    if (preferences.bag == 5)
                    bag3 = 1501003265; //Poseidon
                    if (preferences.bag == 6)
                    bag3 = 1501003321; //Arcane Jester X-suit
                    if (preferences.bag == 7)
                    bag3 = 1501003277; //Silvanus X-Suit
					if (preferences.bag == 8)
                    bag3 = 1501003550;
					if (preferences.bag == 9)
                    bag3 = 1501003550;
					if (preferences.xsuit == 10)
					bag3 = 0;
					if (preferences.xsuit == 11)
					bag3 = 0;
					if (preferences.xsuit == 12)//todo
					bag3 = 0;
					//Helmet
					if (preferences.helmet == 1)
                    helmett3 = 1502003014; //blood raven x suit
                    if (preferences.helmet == 2)
                    helmett3 = 1502003028; //Golden Pharaoh X-Suit
                    if (preferences.helmet == 3)
                    helmett3 = 1502003023; //Avalanche
                    if (preferences.helmet == 4)
                    helmett3 = 1501002443; //Irresidence
                    if (preferences.helmet == 5)
                    helmett3 = 1502003031; //Poseidon
                    if (preferences.helmet == 6)
                    helmett3 = 1502003033; //Arcane Jester X-suit
                    if (preferences.helmet == 7)
                    helmett3 = 1502003069; //Silvanus X-Suit
					if (preferences.helmet == 8)
                    helmett3 = 1502003069;
					if (preferences.helmet == 8)
                    helmett3 = 1502003261;
					if (preferences.xsuit == 10)
					helmett3 = 0;
					if (preferences.xsuit == 11)
					helmett3 = 0;
					if (preferences.xsuit == 12)//todo
					helmett3 = 0;
					
if (ModEmote1 == 0)
sEmote1 = 2200101;
if (ModEmote1 == 1)
sEmote1 = 12220023;
if (ModEmote1 == 2)
sEmote1 = 12219677;
if (ModEmote1 == 3)
sEmote1 = 12219716;
if (ModEmote1 == 4)
sEmote1 = 12209401;
if (ModEmote1 == 5)
sEmote1 = 12209501;
if (ModEmote1 == 6)
sEmote1 = 12209701;
if (ModEmote1 == 7)
sEmote1 = 12209801;
if (ModEmote1 == 8)
sEmote1 = 12209901;


if (ModEmote1 == 0)
sEmote2 = 2200201;
if (ModEmote1 == 1)
sEmote2 = 12210201;
if (ModEmote1 == 2)
sEmote2 = 12210601;
if (ModEmote1 == 3)
sEmote2 = 12220028;
if (ModEmote1 == 4)
sEmote2 = 12219819;
if (ModEmote1 == 5)
sEmote2 = 12211801;
if (ModEmote1 == 6)
sEmote2 = 12212001;
if (ModEmote1 == 7)
sEmote2 = 12212201;
if (ModEmote1 == 8)
sEmote2 = 12212401;


if (ModEmote1 == 0)
sEmote3 = 2200301;
if (ModEmote1 == 1)
sEmote3 = 12212601;
if (ModEmote1 == 2)
sEmote3 = 12213201;
if (ModEmote1 == 3)
sEmote3 = 12219715;
if (ModEmote1 == 4)
sEmote3 = 12219814;
if (ModEmote1 == 5)
sEmote3 = 12213601;
if (ModEmote1 == 6)
sEmote3 = 12213801;
if (ModEmote1 == 7)
sEmote3 = 12214001;
if (ModEmote1 == 8)
sEmote3 = 12214201;



  if (preferences.Config.Skin.Parachute == 0)
    new_Skin.Parachute = 703001;
  if (preferences.Config.Skin.Parachute == 16)
    new_Skin.Parachute = 1401619; //Pharaoh's Scarab Parachute
  if (preferences.Config.Skin.Parachute == 1)
    new_Skin.Parachute = 1401619; //Pharaoh's Scarab Parachute
  if (preferences.Config.Skin.Parachute == 2)
    new_Skin.Parachute = 1401625; // Enigmatic Nomad Parachute
  if (preferences.Config.Skin.Parachute == 3)
    new_Skin.Parachute = 1401624; //parashot Parachute
  if (preferences.Config.Skin.Parachute == 4)
    new_Skin.Parachute = 1401836; //Paperfold Gambit Parachute
  if (preferences.Config.Skin.Parachute == 5)
    new_Skin.Parachute = 1401833; //Labyrinth Beast Parachute
  if (preferences.Config.Skin.Parachute == 6)
    new_Skin.Parachute = 1401287; //Flamewraith Parachute
  if (preferences.Config.Skin.Parachute == 7)
    new_Skin.Parachute = 1401282; //Mega Kitty Parachute
  if (preferences.Config.Skin.Parachute == 8)
    new_Skin.Parachute = 1401385; //Mega Yeti Parachute
  if (preferences.Config.Skin.Parachute == 9)
    new_Skin.Parachute = 1401549; //Endless Glory Parachute
  if (preferences.Config.Skin.Parachute == 10)
    new_Skin.Parachute = 1401336; //Magma Skull Parachute
  if (preferences.Config.Skin.Parachute == 11)
    new_Skin.Parachute = 1401335; //Aquatic Fury Parachute
  if (preferences.Config.Skin.Parachute == 12)
    new_Skin.Parachute = 1401629; //CyberGen: Zero Parachute
  if (preferences.Config.Skin.Parachute == 13)
    new_Skin.Parachute = 1401628; //Radiant Phoenix Adarna Parachute
  if (preferences.Config.Skin.Parachute == 14)
    new_Skin.Parachute = 1401615; //Will of Horus
  if (preferences.Config.Skin.Parachute == 15)
    new_Skin.Parachute = 1401613; //Anubian Magistrate Parachute

  if (preferences.Config.Skin.Pan == 0)
    new_Skin.Pan = 108004; // 108004 - Pan
  if (preferences.Config.Skin.Pan == 1)
    new_Skin.Pan = 1108004125; // Honeypot - Pan
  if (preferences.Config.Skin.Pan == 2)
    new_Skin.Pan = 1108004145; // Night of Rock - Pan
  if (preferences.Config.Skin.Pan == 3)
    new_Skin.Pan = 1108004160; // Crocodile - Pan
  if (preferences.Config.Skin.Pan == 4)
    new_Skin.Pan = 1108004283; // Accolade - Pan
  if (preferences.Config.Skin.Pan == 5)
    new_Skin.Pan = 1108004337; // Break Pad - Pan
  if (preferences.Config.Skin.Pan == 6)
    new_Skin.Pan = 1108004356; // Chicken Hot - Pan
  if (preferences.Config.Skin.Pan == 7)
    new_Skin.Pan = 1108004365; // Faerie Luster - Pan
  if (preferences.Config.Skin.Pan == 8)
    new_Skin.Pan = 1108004054; // Chicken Hot - Pan
  if (preferences.Config.Skin.Pan == 9)
    new_Skin.Pan = 1108004008; 
	
	
  if (preferences.Config.Skin.XSuits == 0) {
    new_Skin.XSuits = 403003;
    new_Skin.XSuits1 = 40604002;
  }
  if (preferences.Config.Skin.XSuits == 1) {
    new_Skin.XSuits = 1405628;
    new_Skin.XSuits1 = 1402578;
  }
  if (preferences.Config.Skin.XSuits == 2) {
    new_Skin.XSuits = 1405870;
    new_Skin.XSuits1 = 1403257;
  }
  if (preferences.Config.Skin.XSuits == 3) {
    new_Skin.XSuits = 1405983;
    new_Skin.XSuits1 = 1402874;
  }
  if (preferences.Config.Skin.XSuits == 4) {
    new_Skin.XSuits = 1406152;
    new_Skin.XSuits1 = 1403393;
  }
  if (preferences.Config.Skin.XSuits == 5) {
    new_Skin.XSuits = 1406311;
    new_Skin.XSuits1 = 1410011; //Mặt nạ 1.403.414
  }
  if (preferences.Config.Skin.XSuits == 6) {
    new_Skin.XSuits = 1406475;
    new_Skin.XSuits1 = 1410131;
  }
  if (preferences.Config.Skin.XSuits == 7) {
    new_Skin.XSuits = 1406638;
    new_Skin.XSuits1 = 1410242;
  }
  if (preferences.Config.Skin.XSuits == 8) {
    new_Skin.XSuits = 1406872;
    //new_Skin.XSuits1 = 1410346; // khung
    new_Skin.XSuits1 = 402133;
  }
  if (preferences.Config.Skin.XSuits == 9) {
    new_Skin.XSuits = 1406971;
    new_Skin.XSuits1 = 402147;
  }
  if (preferences.Config.Skin.XSuits == 10) {
    new_Skin.XSuits = 1407103;
    new_Skin.XSuits1 = 40604002;
  }
  if (preferences.Config.Skin.XSuits == 11) {
    new_Skin.XSuits = 1405174;
    new_Skin.XSuits1 = 40604012;
  }
  if (preferences.Config.Skin.XSuits == 12) {
    new_Skin.XSuits = 1407195;
  }
  if (preferences.Config.Skin.XSuits == 13) {
    new_Skin.XSuits = 1407194;
    new_Skin.XSuits1 = 1410436;
  }
if (preferences.Config.Skin.XSuits == 14) {
    new_Skin.XSuits = 1406891;
  }
  if (preferences.Config.Skin.XSuits == 15) {
    new_Skin.XSuits = 1400687;
  }
  if (preferences.Config.Skin.XSuits == 16) {
    new_Skin.XSuits = 1407196;
  }
  if (preferences.Config.Skin.XSuits == 17) {
    new_Skin.XSuits = 1407049;
  }
  if (preferences.Config.Skin.XSuits == 18) {
    new_Skin.XSuits = 1406897;
  }
  
  if (preferences.Config.Skin.XSuits == 19) {
    new_Skin.XSuits = 1406892;
  }
  if (preferences.Config.Skin.XSuits == 20) {
    new_Skin.XSuits = 1407049;
  }
  if (preferences.Config.Skin.XSuits == 21) {
    new_Skin.XSuits = 1407188;
  }
  
  

  if (preferences.Config.Skin.AKM == 0) {
    new_Skin.AKM = 101001;
    new_Skin.AKM_Mag = 205005;
  }
  if (preferences.Config.Skin.AKM == 1) {
    new_Skin.AKM = 1101001089;
    new_Skin.AKM_Mag = 1010010891;
  }
  if (preferences.Config.Skin.AKM == 2) {
    new_Skin.AKM = 1101001103;
    new_Skin.AKM_Mag = 1010011031;
  }
  if (preferences.Config.Skin.AKM == 3) {
    new_Skin.AKM = 1101001116;
    new_Skin.AKM_Mag = 1010011161;
  }
  if (preferences.Config.Skin.AKM == 4) {
    new_Skin.AKM = 1101001128;
    new_Skin.AKM_Mag = 1010011281;
  }
  if (preferences.Config.Skin.AKM == 5) {
    new_Skin.AKM = 1101001143;
    new_Skin.AKM_Mag = 1010011431;
  }
  if (preferences.Config.Skin.AKM == 6) {
    new_Skin.AKM = 1101001154;
    new_Skin.AKM_Mag = 1010011541;
  }
  if (preferences.Config.Skin.AKM == 7) {
    new_Skin.AKM = 1101001174;
    new_Skin.AKM_Mag = 1010011741;
  }
  if (preferences.Config.Skin.AKM == 8) {
    new_Skin.AKM = 1101001213;
    new_Skin.AKM_Mag = 1010012131;
  }
  if (preferences.Config.Skin.AKM == 9) {
    new_Skin.AKM = 1101001231;
    new_Skin.AKM_Mag = 1010012311;
  }
  if (preferences.Config.Skin.AKM == 10) {
    new_Skin.AKM = 1101001242;
    new_Skin.AKM_Mag = 1010012421;
  }
  ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  if (preferences.Config.Skin.M16A4 == 0) {
    new_Skin.M16A4 = 101002;
    new_Skin.M16A4_Stock = 205007;
    new_Skin.M16A4_Mag = 291002;
  }
  if (preferences.Config.Skin.M16A4 == 1) {
    new_Skin.M16A4 = 1101002029;
    new_Skin.M16A4_Stock = 1010020292;
    new_Skin.M16A4_Mag = 1010020291;
  }
  if (preferences.Config.Skin.M16A4 == 2) {
    new_Skin.M16A4 = 1101002056;
    new_Skin.M16A4_Stock = 1010020562;
    new_Skin.M16A4_Mag = 1010020561;
  }
  if (preferences.Config.Skin.M16A4 == 3) {
    new_Skin.M16A4 = 1101002068;
    new_Skin.M16A4_Stock = 1010020682;
    new_Skin.M16A4_Mag = 1010020681;
  }
  if (preferences.Config.Skin.M16A4 == 4) {
    new_Skin.M16A4 = 1101002081;
    new_Skin.M16A4_Stock = 1010020812;
    new_Skin.M16A4_Mag = 1010020811;
  }
  if (preferences.Config.Skin.M16A4 == 5) {
    new_Skin.M16A4 = 1101002103;
    new_Skin.M16A4_Stock = 1010021032;
    new_Skin.M16A4_Mag = 1010021031;
  }
  ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  if (preferences.Config.Skin.Scar == 0) {
    new_Skin.Scar = 101003;
    new_Skin.Scar_Mag = 291003;
  }
  if (preferences.Config.Skin.Scar == 1) {
    new_Skin.Scar = 1101003057;
    new_Skin.Scar_Mag = 1010030571;
  }
  if (preferences.Config.Skin.Scar == 2) {
    new_Skin.Scar = 1101003070;
    new_Skin.Scar_Mag = 1010030701;
  }
  if (preferences.Config.Skin.Scar == 3) {
    new_Skin.Scar = 1101003080;
    new_Skin.Scar_Mag = 1010030801;
  }
  if (preferences.Config.Skin.Scar == 4) {
    new_Skin.Scar = 1101003119;
    new_Skin.Scar_Mag = 1010031191;
  }
  if (preferences.Config.Skin.Scar == 5) {
    new_Skin.Scar = 1101003146;
    new_Skin.Scar_Mag = 1010031461;
  }
  if (preferences.Config.Skin.Scar == 6) {
    new_Skin.Scar = 1101003167;
    new_Skin.Scar_Mag = 1010031671;
  }
  if (preferences.Config.Skin.Scar == 7) {
    new_Skin.Scar = 1101003181;
    new_Skin.Scar_Mag = 1010031811;
  }
  ///////////////////////////////////

  ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  if (preferences.Config.Skin.M416 == 0) {
    new_Skin.M416_1 = 101004;
    new_Skin.M416_2 = 291004;
    new_Skin.M416_3 = 203008;
    new_Skin.M416_4 = 205005;
    new_Skin.M416_flash = 201010;
    new_Skin.M416_compe = 201009;
    new_Skin.M416_silent = 201011;
    new_Skin.M416_reddot = 203001;
    new_Skin.M416_holo = 203002;
    new_Skin.M416_x2 = 203003;
    new_Skin.M416_x3 = 203014;
    new_Skin.M416_x4 = 203004;
    new_Skin.M416_x6 = 203015;
    new_Skin.M416_quickMag = 204012;
    new_Skin.M416_extendedMag = 204011;
    new_Skin.M416_quickNextended = 204013;
    new_Skin.M416_stock = 205002;
    new_Skin.M416_verical = 203015;
    new_Skin.M416_angle = 202001;
    new_Skin.M416_lightgrip = 202004;
    new_Skin.M416_pink = 202005;
    new_Skin.M416_lazer = 203015;
    new_Skin.M416_thumb = 202006;
  }
  if (preferences.Config.Skin.M416 == 1) {
    new_Skin.M416_1 = 1101004046;
    new_Skin.M416_2 = 1010040461;
    new_Skin.M416_3 = 1010040462;
    new_Skin.M416_4 = 1010040463;
    new_Skin.M416_flash = 1010040474;
    new_Skin.M416_compe = 1010040475;
    new_Skin.M416_silent = 1010040476;
    new_Skin.M416_reddot = 1010040470;
    new_Skin.M416_holo = 1010040469;
    new_Skin.M416_x2 = 1010040468;
    new_Skin.M416_x3 = 1010040467;
    new_Skin.M416_x4 = 1010040466;
    new_Skin.M416_x6 = 1010040481;
    new_Skin.M416_quickMag = 1010040471;
    new_Skin.M416_extendedMag = 1010040472;
    new_Skin.M416_quickNextended = 1010040473;
    new_Skin.M416_stock = 1010040480;
    new_Skin.M416_verical = 1010040479;
    new_Skin.M416_thumb = 1010040478;
    new_Skin.M416_angle = 1010040477;
    new_Skin.M416_lightgrip = 1010040482;
    new_Skin.M416_pink = 1010040483;
    new_Skin.M416_lazer = 1010040484;
  }
  if (preferences.Config.Skin.M416 == 2) {
    new_Skin.M416_1 = 1101004062;
    new_Skin.M416_2 = 1010040611;
    new_Skin.M416_3 = 1010040612;
    new_Skin.M416_4 = 1010040613;
    new_Skin.M416_flash = 201010;
    new_Skin.M416_compe = 201009;
    new_Skin.M416_silent = 201011;
    new_Skin.M416_reddot = 203001;
    new_Skin.M416_holo = 203002;
    new_Skin.M416_x2 = 203003;
    new_Skin.M416_x3 = 203014;
    new_Skin.M416_x4 = 203004;
    new_Skin.M416_x6 = 203015;
    new_Skin.M416_quickMag = 204012;
    new_Skin.M416_extendedMag = 204011;
    new_Skin.M416_quickNextended = 204013;
    new_Skin.M416_stock = 205002;
    new_Skin.M416_verical = 203015;
    new_Skin.M416_angle = 202001;
    new_Skin.M416_lightgrip = 202004;
    new_Skin.M416_pink = 202005;
    new_Skin.M416_lazer = 203015;
    new_Skin.M416_thumb = 202006;
  }
  if (preferences.Config.Skin.M416 == 3) {
    new_Skin.M416_1 = 1101004078;
    new_Skin.M416_2 = 1010040781;
    new_Skin.M416_3 = 1010040782;
    new_Skin.M416_4 = 1010040783;
    new_Skin.M416_flash = 201010;
    new_Skin.M416_compe = 201009;
    new_Skin.M416_silent = 201011;
    new_Skin.M416_reddot = 203001;
    new_Skin.M416_holo = 203002;
    new_Skin.M416_x2 = 203003;
    new_Skin.M416_x3 = 203014;
    new_Skin.M416_x4 = 203004;
    new_Skin.M416_x6 = 203015;
    new_Skin.M416_quickMag = 204012;
    new_Skin.M416_extendedMag = 204011;
    new_Skin.M416_quickNextended = 204013;
    new_Skin.M416_stock = 205002;
    new_Skin.M416_verical = 203015;
    new_Skin.M416_angle = 202001;
    new_Skin.M416_lightgrip = 202004;
    new_Skin.M416_pink = 202005;
    new_Skin.M416_lazer = 203015;
    new_Skin.M416_thumb = 202006;
  }
  if (preferences.Config.Skin.M416 == 4) {
    new_Skin.M416_1 = 1101004086;
    new_Skin.M416_2 = 1010040861;
    new_Skin.M416_3 = 1010040862;
    new_Skin.M416_4 = 1010040863;
    new_Skin.M416_flash = 201010;
    new_Skin.M416_compe = 201009;
    new_Skin.M416_silent = 201011;
    new_Skin.M416_reddot = 203001;
    new_Skin.M416_holo = 203002;
    new_Skin.M416_x2 = 203003;
    new_Skin.M416_x3 = 203014;
    new_Skin.M416_x4 = 203004;
    new_Skin.M416_x6 = 203015;
    new_Skin.M416_quickMag = 204012;
    new_Skin.M416_extendedMag = 204011;
    new_Skin.M416_quickNextended = 204013;
    new_Skin.M416_stock = 205002;
    new_Skin.M416_verical = 203015;
    new_Skin.M416_angle = 202001;
    new_Skin.M416_lightgrip = 202004;
    new_Skin.M416_pink = 202005;
    new_Skin.M416_lazer = 203015;
    new_Skin.M416_thumb = 202006;
  }
  if (preferences.Config.Skin.M416 == 5) {
    new_Skin.M416_1 = 1101004098;
    new_Skin.M416_2 = 1010040981;
    new_Skin.M416_3 = 1010040982;
    new_Skin.M416_4 = 1010040983;
    new_Skin.M416_flash = 201010;
    new_Skin.M416_compe = 201009;
    new_Skin.M416_silent = 201011;
    new_Skin.M416_reddot = 203001;
    new_Skin.M416_holo = 203002;
    new_Skin.M416_x2 = 203003;
    new_Skin.M416_x3 = 203014;
    new_Skin.M416_x4 = 203004;
    new_Skin.M416_x6 = 203015;
    new_Skin.M416_quickMag = 204012;
    new_Skin.M416_extendedMag = 204011;
    new_Skin.M416_quickNextended = 204013;
    new_Skin.M416_stock = 205002;
    new_Skin.M416_verical = 203015;
    new_Skin.M416_angle = 202001;
    new_Skin.M416_lightgrip = 202004;
    new_Skin.M416_pink = 202005;
    new_Skin.M416_lazer = 203015;
    new_Skin.M416_thumb = 202006;
  }
  if (preferences.Config.Skin.M416 == 6) {
    new_Skin.M416_1 = 1101004138;
    new_Skin.M416_2 = 1010041381;
    new_Skin.M416_3 = 1010041382;
    new_Skin.M416_4 = 1010041383;
    new_Skin.M416_flash = 1010041136;
    new_Skin.M416_compe = 1010041137;
    new_Skin.M416_silent = 1010041138;
    new_Skin.M416_reddot = 1010041128;
    new_Skin.M416_holo = 1010041127;
    new_Skin.M416_x2 = 1010041126;
    new_Skin.M416_x3 = 1010041125;
    new_Skin.M416_x4 = 1010041124;
    new_Skin.M416_x6 = 203015;
    new_Skin.M416_quickMag = 1010041134;
    new_Skin.M416_extendedMag = 1010041129;
    new_Skin.M416_quickNextended = 1010041135;
    new_Skin.M416_stock = 1010041146;
    new_Skin.M416_verical = 1010041145;
    new_Skin.M416_angle = 1010041139;
    new_Skin.M416_lightgrip = 202004;
    new_Skin.M416_pink = 202005;
    new_Skin.M416_lazer = 203015;
    new_Skin.M416_thumb = 202006;
  }
  if (preferences.Config.Skin.M416 == 7) {
    new_Skin.M416_1 = 1101004163;
    new_Skin.M416_2 = 1010041631;
    new_Skin.M416_3 = 1010041632;
    new_Skin.M416_4 = 1010041633;
    new_Skin.M416_flash = 201010;
    new_Skin.M416_compe = 1010041574;
    new_Skin.M416_silent = 1010041575;
    new_Skin.M416_reddot = 1010041566;
    new_Skin.M416_holo = 1010041565;
    new_Skin.M416_x2 = 1010041564;
    new_Skin.M416_x3 = 1010041560;
    new_Skin.M416_x4 = 1010041554;
    new_Skin.M416_x6 = 203015;
    new_Skin.M416_quickMag = 1010041568;
    new_Skin.M416_extendedMag = 1010041569;
    new_Skin.M416_quickNextended = 1010041567;
    new_Skin.M416_stock = 1010041579;
    new_Skin.M416_verical = 1010041578;
    new_Skin.M416_angle = 1010041576;
    new_Skin.M416_lightgrip = 20200400;
    new_Skin.M416_pink = 202005;
    new_Skin.M416_lazer = 203015;
    new_Skin.M416_thumb = 1010041577;
  }
  if (preferences.Config.Skin.M416 == 8) {
    new_Skin.M416_1 = 1101004201;
    new_Skin.M416_2 = 1010042011;
    new_Skin.M416_3 = 1010042012;
    new_Skin.M416_4 = 1010042013;
    new_Skin.M416_flash = 1010041956;
    new_Skin.M416_compe = 1010041957;
    new_Skin.M416_silent = 1010041958;
    new_Skin.M416_reddot = 1010041948;
    new_Skin.M416_holo = 1010041947;
    new_Skin.M416_x2 = 1010041946;
    new_Skin.M416_x3 = 1010041945;
    new_Skin.M416_x4 = 1010041944;
    new_Skin.M416_x6 = 1010041967;
    new_Skin.M416_quickMag = 1010041949;
    new_Skin.M416_extendedMag = 1010041950;
    new_Skin.M416_quickNextended = 1010041955;
    new_Skin.M416_stock = 1010041966;
    new_Skin.M416_verical = 1010041965;
    new_Skin.M416_angle = 1010041959;
    new_Skin.M416_lightgrip = 202004;
    new_Skin.M416_pink = 202005;
    new_Skin.M416_lazer = 203015;
    new_Skin.M416_thumb = 202006;
  }
  if (preferences.Config.Skin.M416 == 9) {
    new_Skin.M416_1 = 1101004209;
    new_Skin.M416_2 = 1010042073;
    new_Skin.M416_3 = 1010042083;
    new_Skin.M416_4 = 1010042093;
    new_Skin.M416_flash = 20101000;
    new_Skin.M416_compe = 1010042037;
    new_Skin.M416_silent = 1010042039;
    new_Skin.M416_reddot = 1010042029;
    new_Skin.M416_holo = 1010042028;
    new_Skin.M416_x2 = 1010042027;
    new_Skin.M416_x3 = 1010042026;
    new_Skin.M416_x4 = 1010042025;
    new_Skin.M416_x6 = 1010042024;
    new_Skin.M416_quickMag = 1010042034;
    new_Skin.M416_extendedMag = 1010042035;
    new_Skin.M416_quickNextended = 1010042036;
    new_Skin.M416_stock = 1010042047;
    new_Skin.M416_verical = 1010042046;
    new_Skin.M416_angle = 1010042044;
    new_Skin.M416_lightgrip = 202004;
    new_Skin.M416_pink = 202005;
    new_Skin.M416_lazer = 203015;
    new_Skin.M416_thumb = 202006;
  }
  if (preferences.Config.Skin.M416 == 10) {
    new_Skin.M416_1 = 1101004218;
    new_Skin.M416_2 = 1010042153;
    new_Skin.M416_3 = 1010042163;
    new_Skin.M416_4 = 1010042173;
    new_Skin.M416_flash = 1010042128;
    new_Skin.M416_compe = 1010042127;
    new_Skin.M416_silent = 1010042129;
    new_Skin.M416_reddot = 1010042119;
    new_Skin.M416_holo = 1010042118;
    new_Skin.M416_x2 = 1010042117;
    new_Skin.M416_x3 = 1010042116;
    new_Skin.M416_x4 = 1010042115;
    new_Skin.M416_x6 = 1010042114;
    new_Skin.M416_quickMag = 1010042124;
    new_Skin.M416_extendedMag = 1010042125;
    new_Skin.M416_quickNextended = 1010042126;
    new_Skin.M416_stock = 1010042137;
    new_Skin.M416_verical = 1010042136;
    new_Skin.M416_angle = 1010042134;
    new_Skin.M416_lightgrip = 1010042138;
    new_Skin.M416_pink = 1010042139;
    new_Skin.M416_lazer = 1010042144;
    new_Skin.M416_thumb = 1010042135;
  }
  ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  if (preferences.Config.Skin.Groza == 0) {
    new_Skin.Groza = 101005;
  }
  if (preferences.Config.Skin.Groza == 1) {
    new_Skin.Groza = 1101005019;
  }
  if (preferences.Config.Skin.Groza == 2) {
    new_Skin.Groza = 1101005025;
  }
  if (preferences.Config.Skin.Groza == 3) {
    new_Skin.Groza = 1101005038;
  }
  if (preferences.Config.Skin.Groza == 4) {
    new_Skin.Groza = 1101005043;
  }
  if (preferences.Config.Skin.Groza == 5) {
    new_Skin.Groza = 1101005052;
  }
  if (preferences.Config.Skin.Groza == 6) {
    new_Skin.Groza = 1101005082;
  }
  ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  if (preferences.Config.Skin.AUG == 0)
    new_Skin.AUG = 101006;
  if (preferences.Config.Skin.AUG == 1)
    new_Skin.AUG = 1101006033;
  if (preferences.Config.Skin.AUG == 2)
    new_Skin.AUG = 1101006044;
  if (preferences.Config.Skin.AUG == 3)
    new_Skin.AUG = 1101006062;
  ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  if (preferences.Config.Skin.QBZ == 0)
    new_Skin.QBZ = 101007;
  if (preferences.Config.Skin.QBZ == 1)
    new_Skin.QBZ = 1101007025;
  if (preferences.Config.Skin.QBZ == 2)
    new_Skin.QBZ = 1101007036;
  if (preferences.Config.Skin.QBZ == 3)
    new_Skin.QBZ = 1101007046;
  ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  if (preferences.Config.Skin.M762 == 0) {
    new_Skin.M762 = 101008;
    new_Skin.M762_Mag = 291008;
  }
  if (preferences.Config.Skin.M762 == 1) {
    new_Skin.M762 = 1101008026;
    new_Skin.M762_Mag = 1010080261;
  }
  if (preferences.Config.Skin.M762 == 2) {
    new_Skin.M762 = 1101008051;
    new_Skin.M762_Mag = 1010080511;
  }
  if (preferences.Config.Skin.M762 == 3) {
    new_Skin.M762 = 1101008061;
    new_Skin.M762_Mag = 1010080611;
  }
  if (preferences.Config.Skin.M762 == 4) {
    new_Skin.M762 = 1101008081;
    new_Skin.M762_Mag = 1010080811;
  }
  if (preferences.Config.Skin.M762 == 5) {
    new_Skin.M762 = 1101008104;
    new_Skin.M762_Mag = 1010081041;
  }
  if (preferences.Config.Skin.M762 == 6) {
    new_Skin.M762 = 1101008116;
    new_Skin.M762_Mag = 1010081161;
  }
  if (preferences.Config.Skin.M762 == 7) {
    new_Skin.M762 = 1101008126;
    new_Skin.M762_Mag = 1010081261;
  }
  ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  if (preferences.Config.Skin.ACE32 == 0)
    new_Skin.ACE32 = 101102;
  if (preferences.Config.Skin.ACE32 == 1)
    new_Skin.ACE32 = 1101102007;
  if (preferences.Config.Skin.ACE32 == 2)
    new_Skin.ACE32 = 1101102017;
  ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  if (preferences.Config.Skin.MK145 == 0) {
    new_Skin.MK145 = 1030075;
    new_Skin.longyin_x66 = 203015;
    new_Skin.longyin_x88 = 203005;
    new_Skin.longyin_x11 = 203001;
    new_Skin.longyin_x22 = 203008;
    new_Skin.longyin_x33 = 203014;
    new_Skin.longyin_x44 = 203004;
  }
  if (preferences.Config.Skin.MK145 == 1) {
    new_Skin.MK145 = 1103007028;
    new_Skin.longyin_x66 = 1030070213;
    new_Skin.longyin_x88 = 1030070212;
    new_Skin.longyin_x11 = 1010040470;
    new_Skin.longyin_x22 = 1010040468;
    new_Skin.longyin_x33 = 1010040467;
    new_Skin.longyin_x44 = 1010040466;
  }
  ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  if (preferences.Config.Skin.MK14 == 0) {
    new_Skin.MK14 = 103007;
    new_Skin.longyin_x6666 = 203015;
    new_Skin.longyin_x8888 = 203005;
    new_Skin.longyin_x1111 = 203001;
    new_Skin.longyin_x2222 = 203008;
    new_Skin.longyin_x3333 = 203014;
    new_Skin.longyin_x4444 = 203004;
  }
  if (preferences.Config.Skin.MK14 == 1) {
    new_Skin.MK14 = 1103007028;
    new_Skin.longyin_x6666 = 1030070213;
    new_Skin.longyin_x8888 = 1030070212;
    new_Skin.longyin_x1111 = 1010040470;
    new_Skin.longyin_x2222 = 1010040468;
    new_Skin.longyin_x3333 = 1010040467;
    new_Skin.longyin_x4444 = 1010040466;
  }
  ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  if (preferences.Config.Skin.MK146 == 0) {
    new_Skin.MK146 = 1030074;
    new_Skin.longyin_x666 = 203015;
    new_Skin.longyin_x888 = 203005;
    new_Skin.longyin_x111 = 203001;
    new_Skin.longyin_x222 = 203008;
    new_Skin.longyin_x333 = 203014;
    new_Skin.longyin_x444 = 203004;
  }
  if (preferences.Config.Skin.MK146 == 1) {
    new_Skin.MK146 = 1103007028;
    new_Skin.longyin_x666 = 1030070213;
    new_Skin.longyin_x888 = 1030070212;
    new_Skin.longyin_x111 = 1010040470;
    new_Skin.longyin_x222 = 1010040468;
    new_Skin.longyin_x333 = 1010040467;
    new_Skin.longyin_x444 = 1010040466;
  }
  ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  if (preferences.Config.Skin.M4145 == 0) {
    new_Skin.M4145 = 1010045;
    new_Skin.M416_buchang = 2010095;
    new_Skin.M416_hondian = 203001;
    new_Skin.M416_x22 = 203008;
    new_Skin.M416_x33 = 203014;
    new_Skin.M416_x44 = 203004;
    new_Skin.M416_x66 = 203015;
    new_Skin.M416_kuorong = 2040135;
    new_Skin.M416_qiangtuo = 2050025;
    new_Skin.M416_chuizhi = 2020025;
  }
  if (preferences.Config.Skin.M4145 == 1) {
    new_Skin.M4145 = 1101004046;
    new_Skin.M416_buchang = 1010040475;
    new_Skin.M416_hondian = 1010040470;
    new_Skin.M416_x22 = 1010040462;
    new_Skin.M416_x33 = 1010040467;
    new_Skin.M416_x44 = 1010040466;
    new_Skin.M416_x66 = 1010040481;
    new_Skin.M416_kuorong = 1010040473;
    new_Skin.M416_qiangtuo = 1010040463;
    new_Skin.M416_chuizhi = 1010040479;
  }
  if (preferences.Config.Skin.M4145 == 2) {
    new_Skin.M4145 = 1101004226;
    new_Skin.M416_buchang = 1010042237;
    new_Skin.M416_hondian = 1010042233;
    new_Skin.M416_x22 = 1010042215;
    new_Skin.M416_x33 = 1010042219;
    new_Skin.M416_x44 = 1010042218;
    new_Skin.M416_x66 = 1010042217;
    new_Skin.M416_kuorong = 1010042236;
    new_Skin.M416_qiangtuo = 1010042213;
    new_Skin.M416_chuizhi = 1010042243;
  }
  if (preferences.Config.Skin.M4145 == 3) {
    new_Skin.M4145 = 1101004209;
    new_Skin.M416_buchang = 1010042037;
    new_Skin.M416_hondian = 1010042029;
    new_Skin.M416_x22 = 1010042083;
    new_Skin.M416_x33 = 1010042026;
    new_Skin.M416_x44 = 1010042025;
    new_Skin.M416_x66 = 1010042024;
    new_Skin.M416_kuorong = 1010042036;
    new_Skin.M416_qiangtuo = 1010042093;
    new_Skin.M416_chuizhi = 1010042046;
  }
  ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  if (preferences.Config.Skin.mg31 == 0) {
    new_Skin.mg31 = 1050105;
  }
  if (preferences.Config.Skin.mg31 == 1) {
    new_Skin.mg31 = 1105010008;
  }
  if (preferences.Config.Skin.mg31 == 2) {
    new_Skin.mg33 = 1105010019;
  }
  ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  if (preferences.Config.Skin.mg32 == 0) {
    new_Skin.mg32 = 1050106;
  }
  if (preferences.Config.Skin.mg32 == 1) {
    new_Skin.mg32 = 1105010008;
  }
  if (preferences.Config.Skin.mg32 == 2) {
    new_Skin.mg33 = 1105010019;
  }
  ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  if (preferences.Config.Skin.mg33 == 0) {
    new_Skin.mg33 = 1050107;
  }
  if (preferences.Config.Skin.mg33 == 1) {
    new_Skin.mg33 = 1105010008;
  }
  if (preferences.Config.Skin.mg33 == 2) {
    new_Skin.mg33 = 1105010019;
  }
  ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  if (new_Skin.P90 == 0)
    new_Skin.P90 = 102105;
  if (preferences.Config.Skin.P90 == 1)
    new_Skin.P90 = 1102105012;
  ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  if (preferences.Config.Skin.MG3 == 0) {
    new_Skin.MG3 = 105010;
  }
  if (preferences.Config.Skin.MG3 == 1) {
    new_Skin.MG3 = 1105010008;
  }
  if (preferences.Config.Skin.MG3 == 2) {
    new_Skin.MG3 = 1105010019;
  }

  ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  if (preferences.Config.Skin.UZI == 0)
    new_Skin.UZI = 102001;
  if (preferences.Config.Skin.UZI == 1)
    new_Skin.UZI = 1102001024;
  if (preferences.Config.Skin.UZI == 2)
    new_Skin.UZI = 1102001036;
  if (preferences.Config.Skin.UZI == 3)
    new_Skin.UZI = 1102001058;
  if (preferences.Config.Skin.UZI == 4)
    new_Skin.UZI = 1102001069;
  if (preferences.Config.Skin.UZI == 5)
    new_Skin.UZI = 1102001089;
  if (preferences.Config.Skin.UZI == 6)
    new_Skin.UZI = 1102001102;
  ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  if (preferences.Config.Skin.UMP == 0)
    new_Skin.UMP = 102002;
  if (preferences.Config.Skin.UMP == 1)
    new_Skin.UMP = 1102002043;
  if (preferences.Config.Skin.UMP == 2)
    new_Skin.UMP = 1102002061;
  if (preferences.Config.Skin.UMP == 3)
    new_Skin.UMP = 1102002090;
  if (preferences.Config.Skin.UMP == 4)
    new_Skin.UMP = 1102002117;
  if (preferences.Config.Skin.UMP == 5)
    new_Skin.UMP = 1102002124;
  if (preferences.Config.Skin.UMP == 6)
    new_Skin.UMP = 1102002129;
  if (preferences.Config.Skin.UMP == 7)
    new_Skin.UMP = 1102002136;
  ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  if (preferences.Config.Skin.Vector == 0)
    new_Skin.Vector = 102003;
  if (preferences.Config.Skin.Vector == 1)
    new_Skin.Vector = 1102003020;
  if (preferences.Config.Skin.Vector == 2)
    new_Skin.Vector = 1102003031;
  if (preferences.Config.Skin.Vector == 3)
    new_Skin.Vector = 1102003065;
  if (preferences.Config.Skin.Vector == 4)
    new_Skin.Vector = 1102003080;
  ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  if (preferences.Config.Skin.Thompson == 0)
    new_Skin.Thompson = 102004;
  if (preferences.Config.Skin.Thompson == 1)
    new_Skin.Thompson = 1102004018;
  if (preferences.Config.Skin.Thompson == 2)
    new_Skin.Thompson = 1102004034;
  ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  if (preferences.Config.Skin.Bizon == 0)
    new_Skin.Bizon = 102005;
  if (preferences.Config.Skin.Bizon == 1)
    new_Skin.Bizon = 1102005007;
  if (preferences.Config.Skin.Bizon == 2)
    new_Skin.Bizon = 1102005020;
  if (preferences.Config.Skin.Bizon == 3)
    new_Skin.Bizon = 1102005041;
  ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  if (preferences.Config.Skin.K98 == 0)
    new_Skin.K98 = 103001;
  if (preferences.Config.Skin.K98 == 1)
    new_Skin.K98 = 1103001060;
  if (preferences.Config.Skin.K98 == 2)
    new_Skin.K98 = 1103001079;
  if (preferences.Config.Skin.K98 == 3)
    new_Skin.K98 = 1103001101;
  if (preferences.Config.Skin.K98 == 4)
    new_Skin.K98 = 1103001145;
  if (preferences.Config.Skin.K98 == 5)
    new_Skin.K98 = 1103001160;
  if (preferences.Config.Skin.K98 == 6)
    new_Skin.K98 = 1103001179;
  ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  if (new_Skin.M24 == 0)
    new_Skin.M24 = 103002;
  if (preferences.Config.Skin.M24 == 1)
    new_Skin.M24 = 1103002018;
  if (preferences.Config.Skin.M24 == 2)
    new_Skin.M24 = 1103002030;
  if (preferences.Config.Skin.M24 == 3)
    new_Skin.M24 = 1103002048;
  if (preferences.Config.Skin.M24 == 4)
    new_Skin.M24 = 1103002056;
  if (preferences.Config.Skin.M24 == 5)
    new_Skin.M24 = 1103002087;
  ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  if (preferences.Config.Skin.AWM == 0)
    new_Skin.AWM = 103003;
  if (preferences.Config.Skin.AWM == 1)
    new_Skin.AWM = 1103003022;
  if (preferences.Config.Skin.AWM == 2)
    new_Skin.AWM = 1103003030;
  if (preferences.Config.Skin.AWM == 3)
    new_Skin.AWM = 1103003042;
  if (preferences.Config.Skin.AWM == 4)
    new_Skin.AWM = 1103003051;
  if (preferences.Config.Skin.AWM == 5)
    new_Skin.AWM = 1103003062;
  ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  
  ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  if (preferences.Config.Skin.DP28 == 0)
    new_Skin.DP28 = 105002;
  if (preferences.Config.Skin.DP28 == 1)
    new_Skin.DP28 = 1105002018;
  if (preferences.Config.Skin.DP28 == 2)
    new_Skin.DP28 = 1105002035;
  if (preferences.Config.Skin.DP28 == 3)
    new_Skin.DP28 = 1105002058;
  if (preferences.Config.Skin.DP28 == 4)
    new_Skin.DP28 = 1105002063;
  ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  if (new_Skin.M249 == 0)
    new_Skin.M249 = 105001;
	new_Skin.M249s = 205009;
  if (preferences.Config.Skin.M249 == 1)
    new_Skin.M249 = 1105001020;
	new_Skin.M249s = 1050010351;
  if (preferences.Config.Skin.M249 == 2)
    new_Skin.M249 = 1105001034;
	new_Skin.M249s = 1050010412;
  if (preferences.Config.Skin.M249 == 3)
    new_Skin.M249 = 1105001048;
	new_Skin.M249s = 1050010482;
  if (preferences.Config.Skin.M249 == 4)
    new_Skin.M249 = 1105001054;
	new_Skin.M249s = 1050010542;
  
  ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  

  ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

   if (preferences.Config.Skin.Bigfoot == 0)
    new_Skin.Bigfoot = 1953001;
  if (preferences.Config.Skin.Bigfoot == 1)
    new_Skin.Bigfoot = 1953004;
	
  if (preferences.Config.Skin.OMirado == 0)
    new_Skin.OMirado = 1915001;
  if (preferences.Config.Skin.OMirado == 1)
    new_Skin.OMirado = 1915011;
  if (preferences.Config.Skin.OMirado == 2)
    new_Skin.OMirado = 1915099;
	
  if (preferences.Config.Skin.Mirado == 0)
    new_Skin.Mirado = 1914001;
  if (preferences.Config.Skin.Mirado == 1)
    new_Skin.Mirado = 1914011;
	
  if (preferences.Config.Skin.Moto == 0)
    new_Skin.Moto = 1901001;
  if (preferences.Config.Skin.Moto == 1)
    new_Skin.Moto = 1901073;
  if (preferences.Config.Skin.Moto == 2)
    new_Skin.Moto = 1901074;
  if (preferences.Config.Skin.Moto == 3)
    new_Skin.Moto = 1901075;
  if (preferences.Config.Skin.Moto == 4)
    new_Skin.Moto = 1901047;
  if (preferences.Config.Skin.Moto == 5)
    new_Skin.Moto = 1901085;
  if (preferences.Config.Skin.Moto == 6)
    new_Skin.Moto = 1901076;
  if (preferences.Config.Skin.Moto == 7)
    new_Skin.Moto = 1901027;
  if (preferences.Config.Skin.Moto == 8)
    new_Skin.Moto = 1901018;
  if (preferences.Config.Skin.Moto == 9)
    new_Skin.Moto = 1901085;
  ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

if (preferences.Config.Skin.Buggy == 0)
    new_Skin.Buggy = 1907001;
  if (preferences.Config.Skin.Buggy == 1)
    new_Skin.Buggy = 1907047;
  if (preferences.Config.Skin.Buggy == 2)
    new_Skin.Buggy = 1907009;
if (preferences.Config.Skin.Buggy == 3)
    new_Skin.Buggy = 1907010;
if (preferences.Config.Skin.Buggy == 4)
    new_Skin.Buggy = 1907011;
if (preferences.Config.Skin.Buggy == 5)
    new_Skin.Buggy = 1907012;
if (preferences.Config.Skin.Buggy == 6)
    new_Skin.Buggy = 1907013;
if (preferences.Config.Skin.Buggy == 7)
    new_Skin.Buggy = 1907014;
if (preferences.Config.Skin.Buggy == 8)
    new_Skin.Buggy = 1907015;
if (preferences.Config.Skin.Buggy == 9)
    new_Skin.Buggy = 1907016;
if (preferences.Config.Skin.Buggy == 10)
    new_Skin.Buggy = 1907017;
if (preferences.Config.Skin.Buggy == 11)
    new_Skin.Buggy = 1907018;
if (preferences.Config.Skin.Buggy == 12)
    new_Skin.Buggy = 1907019;
if (preferences.Config.Skin.Buggy == 13)
    new_Skin.Buggy = 1907020;
if (preferences.Config.Skin.Buggy == 14)
    new_Skin.Buggy = 1907021;
if (preferences.Config.Skin.Buggy == 15)
    new_Skin.Buggy = 1907022;
if (preferences.Config.Skin.Buggy == 16)
    new_Skin.Buggy = 1907023;
if (preferences.Config.Skin.Buggy == 17)
    new_Skin.Buggy = 1907024;
if (preferences.Config.Skin.Buggy == 18)
    new_Skin.Buggy = 1907025;
if (preferences.Config.Skin.Buggy == 19)
    new_Skin.Buggy = 1907026;
if (preferences.Config.Skin.Buggy == 20)
    new_Skin.Buggy = 1907027;
if (preferences.Config.Skin.Buggy == 21)
    new_Skin.Buggy = 1907028;
if (preferences.Config.Skin.Buggy == 22)
    new_Skin.Buggy = 1907029;
if (preferences.Config.Skin.Buggy == 23)
    new_Skin.Buggy = 1907030;
if (preferences.Config.Skin.Buggy == 24)
    new_Skin.Buggy = 1907031;
if (preferences.Config.Skin.Buggy == 25)
    new_Skin.Buggy = 1907032;
if (preferences.Config.Skin.Buggy == 26)
    new_Skin.Buggy = 1907033;
if (preferences.Config.Skin.Buggy == 27)
    new_Skin.Buggy = 1907034;
if (preferences.Config.Skin.Buggy == 28)
    new_Skin.Buggy = 1907035;
if (preferences.Config.Skin.Buggy == 29)
    new_Skin.Buggy = 1907036;
if (preferences.Config.Skin.Buggy == 30)
    new_Skin.Buggy = 1907037;
if (preferences.Config.Skin.Buggy == 31)
    new_Skin.Buggy = 1907038;
if (preferences.Config.Skin.Buggy == 32)
    new_Skin.Buggy = 1907039;
if (preferences.Config.Skin.Buggy == 33)
    new_Skin.Buggy = 1907040;
	
  if (preferences.Config.Skin.Dacia == 0)
    new_Skin.Dacia = 1903001;
  if (preferences.Config.Skin.Dacia == 1)
    new_Skin.Dacia = 1903076;
  if (preferences.Config.Skin.Dacia == 2)
    new_Skin.Dacia = 1903079;
  if (preferences.Config.Skin.Dacia == 3)
    new_Skin.Dacia = 1903071;
  if (preferences.Config.Skin.Dacia == 4)
    new_Skin.Dacia = 1903014;
  if (preferences.Config.Skin.Dacia == 5)
    new_Skin.Dacia = 1903017;
  if (preferences.Config.Skin.Dacia == 6)
    new_Skin.Dacia = 1903035;
  if (preferences.Config.Skin.Dacia == 7)
    new_Skin.Dacia = 1903087;
  if (preferences.Config.Skin.Dacia == 8)
    new_Skin.Dacia = 1903088;
  if (preferences.Config.Skin.Dacia == 9)
    new_Skin.Dacia = 1903089;
  if (preferences.Config.Skin.Dacia == 10)
    new_Skin.Dacia = 1903090;
  if (preferences.Config.Skin.Dacia == 11)
    new_Skin.Dacia = 1903074;
  if (preferences.Config.Skin.Dacia == 12)
    new_Skin.Dacia = 1903075;
  if (preferences.Config.Skin.Dacia == 13)
    new_Skin.Dacia = 1903072;
  if (preferences.Config.Skin.Dacia == 14)
    new_Skin.Dacia = 1903073;
  if (preferences.Config.Skin.Dacia == 15)
    new_Skin.Dacia = 1903080;
  if (preferences.Config.Skin.Dacia == 16)
    new_Skin.Dacia = 1903189;
  if (preferences.Config.Skin.Dacia == 17)
    new_Skin.Dacia = 1903190;
  if (preferences.Config.Skin.Dacia == 18)
    new_Skin.Dacia = 1903191;
  if (preferences.Config.Skin.Dacia == 19)
    new_Skin.Dacia = 1903192;
  if (preferences.Config.Skin.Dacia == 20)
    new_Skin.Dacia = 1903193;
  if (preferences.Config.Skin.Dacia == 21)
    new_Skin.Dacia = 1903197;
  
  ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  
if (preferences.Config.Skin.MiniBus == 0)
    new_Skin.MiniBus = 1904001;
  if (preferences.Config.Skin.MiniBus == 1)
    new_Skin.MiniBus = 1904005;
  if (preferences.Config.Skin.MiniBus == 2)
    new_Skin.MiniBus = 1904006;
if (preferences.Config.Skin.MiniBus == 3)
    new_Skin.MiniBus = 1904007;
if (preferences.Config.Skin.MiniBus == 4)
    new_Skin.MiniBus = 1904008;
if (preferences.Config.Skin.MiniBus == 5)
    new_Skin.MiniBus = 1904009;
if (preferences.Config.Skin.MiniBus == 6)
    new_Skin.MiniBus = 1904010;
if (preferences.Config.Skin.MiniBus == 7)
    new_Skin.MiniBus = 1904011;
if (preferences.Config.Skin.MiniBus == 8)
    new_Skin.MiniBus = 1904012;
if (preferences.Config.Skin.MiniBus == 9)
    new_Skin.MiniBus = 1904013;
if (preferences.Config.Skin.MiniBus == 10)
    new_Skin.MiniBus = 1904014;
if (preferences.Config.Skin.MiniBus == 11)
    new_Skin.MiniBus = 1904015;
if (preferences.Config.Skin.MiniBus == 12)
    new_Skin.MiniBus = 1904004;
  
  if (preferences.Config.Skin.CoupeRP == 0)
    new_Skin.CoupeRP = 1961001;
  if (preferences.Config.Skin.CoupeRP == 1)
    new_Skin.CoupeRP = 1961024;
  if (preferences.Config.Skin.CoupeRP == 2)
    new_Skin.CoupeRP = 1961047;
  if (preferences.Config.Skin.CoupeRP == 3)
    new_Skin.CoupeRP = 1961034;
  if (preferences.Config.Skin.CoupeRP == 4)
    new_Skin.CoupeRP = 1961018;
  if (preferences.Config.Skin.CoupeRP == 5)
    new_Skin.CoupeRP = 1961007;
  if (preferences.Config.Skin.CoupeRP == 6)
    new_Skin.CoupeRP = 1961010;
  if (preferences.Config.Skin.CoupeRP == 7)
    new_Skin.CoupeRP = 1961049;
  if (preferences.Config.Skin.CoupeRP == 8)
    new_Skin.CoupeRP = 1961048;
  if (preferences.Config.Skin.CoupeRP == 9)
    new_Skin.CoupeRP = 1961012;
  if (preferences.Config.Skin.CoupeRP == 10)
    new_Skin.CoupeRP = 1961013;
  if (preferences.Config.Skin.CoupeRP == 11)
    new_Skin.CoupeRP = 1961014;
  if (preferences.Config.Skin.CoupeRP == 12)
    new_Skin.CoupeRP = 1961015;
  if (preferences.Config.Skin.CoupeRP == 13)
    new_Skin.CoupeRP = 1961016;
  if (preferences.Config.Skin.CoupeRP == 14)
    new_Skin.CoupeRP = 1961017;
  if (preferences.Config.Skin.CoupeRP == 15)
    new_Skin.CoupeRP = 1961020;
  if (preferences.Config.Skin.CoupeRP == 16)
    new_Skin.CoupeRP = 1961021;
  if (preferences.Config.Skin.CoupeRP == 17)
    new_Skin.CoupeRP = 1961025;
  if (preferences.Config.Skin.CoupeRP == 18)
    new_Skin.CoupeRP = 1961029;
  if (preferences.Config.Skin.CoupeRP == 19)
    new_Skin.CoupeRP = 1961030;
  if (preferences.Config.Skin.CoupeRP == 20)
    new_Skin.CoupeRP = 1961031;
  if (preferences.Config.Skin.CoupeRP == 21)
    new_Skin.CoupeRP = 1961032;
  if (preferences.Config.Skin.CoupeRP == 22)
    new_Skin.CoupeRP = 1961033;
  if (preferences.Config.Skin.CoupeRP == 23)
    new_Skin.CoupeRP = 1961035;
  if (preferences.Config.Skin.CoupeRP == 24)
    new_Skin.CoupeRP = 1961036;
  if (preferences.Config.Skin.CoupeRP == 22)
    new_Skin.CoupeRP = 1961037;
  if (preferences.Config.Skin.CoupeRP == 26)
    new_Skin.CoupeRP = 1961038;
  if (preferences.Config.Skin.CoupeRP == 27)
    new_Skin.CoupeRP = 1961039;
  if (preferences.Config.Skin.CoupeRP == 28)
    new_Skin.CoupeRP = 1961040;
  if (preferences.Config.Skin.CoupeRP == 29)
    new_Skin.CoupeRP = 1961041;
  if (preferences.Config.Skin.CoupeRP == 30)
    new_Skin.CoupeRP = 1961042;
  if (preferences.Config.Skin.CoupeRP == 31)
    new_Skin.CoupeRP = 1961043;
  if (preferences.Config.Skin.CoupeRP == 32)
    new_Skin.CoupeRP = 1961044;
  if (preferences.Config.Skin.CoupeRP == 33)
    new_Skin.CoupeRP = 1961045;
  if (preferences.Config.Skin.CoupeRP == 34)
    new_Skin.CoupeRP = 1961046;
  if (preferences.Config.Skin.CoupeRP == 35)
    new_Skin.CoupeRP = 1961050;
  if (preferences.Config.Skin.CoupeRP == 36)
    new_Skin.CoupeRP = 1961051;
  if (preferences.Config.Skin.CoupeRP == 37)
    new_Skin.CoupeRP = 1961052;
  if (preferences.Config.Skin.CoupeRP == 38)
    new_Skin.CoupeRP = 1961053;
  if (preferences.Config.Skin.CoupeRP == 39)
    new_Skin.CoupeRP = 1961054;
  if (preferences.Config.Skin.CoupeRP == 40)
    new_Skin.CoupeRP = 1961055;
  if (preferences.Config.Skin.CoupeRP == 41)
    new_Skin.CoupeRP = 1961056;
  if (preferences.Config.Skin.CoupeRP == 42)
    new_Skin.CoupeRP = 1961057;

  ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  if (preferences.Config.Skin.UAZ == 0)
    new_Skin.UAZ = 1908001;
  if (preferences.Config.Skin.UAZ == 1)
    new_Skin.UAZ = 1908067;
  if (preferences.Config.Skin.UAZ == 2)
    new_Skin.UAZ = 1908061;
  if (preferences.Config.Skin.UAZ == 3)
    new_Skin.UAZ = 1908032;
  if (preferences.Config.Skin.UAZ == 4)
    new_Skin.UAZ = 1908068;
  if (preferences.Config.Skin.UAZ == 5)
    new_Skin.UAZ = 1908066;
  if (preferences.Config.Skin.UAZ == 6)
    new_Skin.UAZ = 1908075;
  if (preferences.Config.Skin.UAZ == 7)
    new_Skin.UAZ = 1908076;
  if (preferences.Config.Skin.UAZ == 8)
    new_Skin.UAZ = 1908077;
  if (preferences.Config.Skin.UAZ == 9)
    new_Skin.UAZ = 1908078;
  if (preferences.Config.Skin.UAZ == 10)
    new_Skin.UAZ = 1908084;
  if (preferences.Config.Skin.UAZ == 11)
    new_Skin.UAZ = 1908085;
  if (preferences.Config.Skin.UAZ == 12)
    new_Skin.UAZ = 1908086;
  if (preferences.Config.Skin.UAZ == 13)
    new_Skin.UAZ = 1908088;
  if (preferences.Config.Skin.UAZ == 14)
    new_Skin.UAZ = 1908089;
  if (preferences.Config.Skin.UAZ == 15)
    new_Skin.UAZ = 1908188;
  if (preferences.Config.Skin.UAZ == 16)
    new_Skin.UAZ = 1908189;
  if (preferences.Config.Skin.UAZ == 17)
    new_Skin.UAZ = 1957001;
 
 if (preferences.Config.Skin.Boat == 0)
    new_Skin.Boat = 1911001;
  if (preferences.Config.Skin.Boat == 1)
    new_Skin.Boat = 1911013;
  if (preferences.Config.Skin.Boat == 2)
    new_Skin.Boat = 1911003;
if (preferences.Config.Skin.Boat == 3)
    new_Skin.Boat = 1911004;
if (preferences.Config.Skin.Boat == 4)
    new_Skin.Boat = 1911005;
if (preferences.Config.Skin.Boat == 5)
    new_Skin.Boat = 1911006;
if (preferences.Config.Skin.Boat == 6)
    new_Skin.Boat = 1911007;
if (preferences.Config.Skin.Boat == 7)
    new_Skin.Boat = 1911008;
if (preferences.Config.Skin.Boat == 8)
    new_Skin.Boat = 1911009;
if (preferences.Config.Skin.Boat == 9)
    new_Skin.Boat = 1911010;
if (preferences.Config.Skin.Boat == 10)
    new_Skin.Boat = 1911011;
if (preferences.Config.Skin.Boat == 11)
    new_Skin.Boat = 1911012;

}



int m4v[] = { 101004, 1101004046, 1101004062, 1101004078, 1101004086, 1101004098, 1101004138, 1101004163,1101004201,1101004209,1101004218
};
int scar[] = { 101003, 1101003057, 1101003070, 1101003080, 1101003119, 1101003146, 1101003167, 1101003181};
int akmv[] = { 101001,1101001089, 1101001103, 1101001116, 1101001128, 1101001143, 1101001154, 1101001174,1101001213,1101001231,1101001242
};
int m7[] = { 101008, 1101008026, 1101008051, 1101008061, 1101008081, 1101008104, 1101008116, 1101008126};
int awm[] = { 103003, 1103003022, 1103003030, 1103003042, 1103003051, 1103003062};
int kar[] = { 103001, 1103001060, 1103001079, 1103001101, 1103001145, 1103001160, 1103001179};
int m24[] = { 103002, 1103002018, 1103002030, 1103002048, 1103002056, 1103002087};
int dp[] = { 105002, 1105002018, 1105002035, 1105002058, 1105002063};
int m249[] = { 105001, 1105001020, 1105001034, 1105001048, 1105001054};
int groza[] = { 101005, 1101005019, 1101005025, 1101005038, 1101005043, 1101005052, 1101005082};
int aug[] = { 101006, 1101006033, 1101006044, 1101006062};
int m16[] = { 101002, 1101002029, 1101002056, 1101002068, 1101002081, 1101002103};
int uzi[] = { 102001, 1102001024, 1102001036, 1102001058, 1102001069, 1102001089, 1102001102};
int ump[] = { 102002, 1102002043, 1102002061, 1102002090, 1102002117, 1102002124, 1102002129, 1102002136};
int vectorr[] = { 102003, 1102003020, 1102003031, 1102003065, 1102003080};
int tommy[] = { 102004, 1102004018, 1102004034};
int bizon[] = { 102005, 1102005007, 1102005020, 1102005041};
int ace32[] = { 101102, 1101102007, 1101102017};
int mk145[] = { 1030075,  1103007028};
int mk146[] = { 1030074,  1103007028};
int m4145[] = { 1010045,  1101004046,  101004226,  1101004209};
int buchang[] = { 2010095,  1010040475,  1010042237,  1010042037};
int hondian[] = { 203001,  1010040470,  1010042233,  1010042029};
int beijing2[] = { 203008,  1010040462,  1010042215,  1010042083};
int beijing3[] = { 203014,  1010040467,  1010042219,  1010042026};
int beijing4[] = { 203004,  1010040466,  1010042218,  1010042025};
int beijing6[] = { 203015,  1010040481,  1010042217,  1010042024};
int kuorong[] = { 2040135,  1010040473,  1010042236,  1010042036};
int qiangtuo[] = { 2050025,  1010040463,  1010042213,  1010042093};
int chuizhi[] = { 2020025,1010040479,1010042243,  1010042046};
int longyin6[] = { 203015,  1030070213};
int longyin6666[] = { 203015,  1030070213};
int mk14[] = { 103007,  1103007028};
int longyin8[] = { 203005,  1030070212};
int longyin1[] = { 203001,  1010040470};
int longyin2[] = { 203008,  1010040470};
int longyin3[] = { 203014,  1010040470};
int longyin4[] = { 203004,  1010040470};
int longyin66[] = { 203015,  1030070213};
int longyin88[] = { 203005,  1030070212};
int longyin11[] = { 203001,  1010040470};
int longyin22[] = { 203008,  1010040470};
int longyin33[] = { 203014,  1010040470};
int longyin44[] = { 203004,  1010040470};
int longyin8888[] = { 203005,  1030070212};
int longyin1111[] = { 203001,  1010040470};
int longyin2222[] = { 203008,  1010040470};
int longyin3333[] = { 203014,  1010040470};
int longyin4444[] = { 203004,  1010040470};
int mg311[] = { 1050105,  1105010008,  1105010019};
int mg322[] = { 1050105,  1105010008,  1105010019};
int mg333[] = { 1050105,  1105010008,  1105010019};
int p90[] = { 102105,  1102105012};
int pan[] = { 108004, 1108004125, 1108004145, 1108004160, 1108004283, 1108004337, 1108004356, 1108004365, 1108004054, 1108004008};

int m249s[] = { 205009, 1050010351, 1050010412, 1050010482, 1050010542};
int akmmag[] = { 291001,204013,204011,204012,1010010891, 1010011031, 1010011161, 1010011281, 1010011431, 1010011541, 1010011741,1010012131,1010012311,1010012421
};
int m7mag[] = { 291008,204013,204011,204012,1010080261, 1010080511, 1010080611, 1010080811, 1010081041, 1010081161, 1010081261};
int scarmag[] = { 291003,204013,204011,204012,1010030571, 1010030701, 1010030801, 1010031191, 1010031461, 1010031671, 1010031811};
int m4mag[] = { 291004,204013,204011,204012,1010040461,1010040611,1010040781,1010040861,1010040981,1010041381,1010041631,1010042011,1010042073,1010042153  };

int m4sight[] = { 203008,1010040462,1010040612,1010040782,1010040862,1010040982,1010041382,1010041632,1010042012,1010042083,1010042163  };

int m4stock[] = { 205005,1010040463,1010040613,1010040783,1010040863,1010040983,1010041383,1010041633,1010042013,1010042093,1010042173  };

int m4stock1[] = { 205002,1010040480,205002,205002,205002,205002,1010041146,1010041579,1010041966,1010042137,1010042173  };

int m4reddot[] = { 203001,1010040470,203001,203001,203001,203001,1010041128,1010041566,1010041948,1010042029,1010042119  };

int m16s[] = { 205007, 1010020292, 1010020562, 1010020682, 1010020812, 1010021032};
int m16mag[] = { 291002,204013,204011,204012, 1010020291, 1010020561, 1010020681, 1010020811, 1010021031};


int emote1[] = { 2200101,12220023,12219677,12219716,12209401,12220028,12209701,12209801,12209901 };
int emote2[] = { 2200201,12210201,12210601,12220028,12219819,12211801,12212001,12212201,12212401 };
int emote3[] = { 2200301,12212601,12213201,12219715,12219814,12213601,12213801,12214001,12214201 };

int SuitX[] = { 403003,1405628,1405870,1405983,1406152,1406311,1406475,1406638,1406872 };

int Bag[] = { 501006,501005,501004,501003,501002,501001,1501003550,1501003277,1501003321,1501003443,1501003265,1501003051,1501003220,1501003174 };

int Helmet[] = { 502001,502002,502003,1502003014,1502003028,1502003023,1501002443,1502003031,1502003033,1502003069,1502003261 };

static int prevXSuits = preferences.Config.Skin.XSuits;

static bool callFunction = false;
#pragma mark - MTKViewDelegate
namespace Variables {
    int ActiveTab = 1;
}
bool callNotify = false;

OverlayView *overlayView;

- (instancetype)initWithFrame:
(ModuleControl*)control {

    self.moduleControl = control;

    //获取Documents目录路径
    NSString *documentsDirectory = [NSHomeDirectory() stringByAppendingPathComponent:@"Documents"];
    //初始化文件管理器
    NSFileManager *fileManager = [NSFileManager defaultManager];
    //拼接文件路径
    NSString *filePath = [documentsDirectory stringByAppendingPathComponent:@"dolphins.ini"];
    //文件不存在
    if(![fileManager fileExistsAtPath:filePath]){
        //创建文件
        [fileManager createFileAtPath:filePath contents:[NSData data] attributes:nil];
    }
    //获取ini文件数据
    config = ini_load((char*)filePath.UTF8String);
    return [super init];
    }

-(void)setOverlayView:(OverlayView*)ov{
    overlayView = ov;
    //读配置项
    [self readIniConfig];
}

-(void)drawMenuWindow {
    ImGuiStyle *style = &ImGui::GetStyle();

// ===== Glassmorphism Dark Luxury Theme =====
    style->Alpha = 1.0f;
    style->WindowPadding = ImVec2(14.0f, 14.0f);
    style->WindowRounding = 16.0f;
    style->WindowBorderSize = 0.0f;
    style->WindowTitleAlign = ImVec2(0.5f, 0.5f);
    style->WindowMenuButtonPosition = ImGuiDir_Right;
    style->ChildRounding = 12.0f;
    style->ChildBorderSize = 0.0f;
    style->PopupRounding = 12.0f;
    style->PopupBorderSize = 0.0f;
    style->FramePadding = ImVec2(12.0f, 7.0f);
    style->FrameRounding = 10.0f;
    style->FrameBorderSize = 0.0f;
    style->ItemSpacing = ImVec2(12.0f, 8.0f);
    style->ItemInnerSpacing = ImVec2(8.0f, 4.0f);
    style->IndentSpacing = 24.0f;
    style->ScrollbarSize = 12.0f;
    style->ScrollbarRounding = 6.0f;
    style->GrabMinSize = 12.0f;
    style->GrabRounding = 4.0f;
    style->TabRounding = 8.0f;
    style->TabBorderSize = 0.0f;
    style->ButtonTextAlign = ImVec2(0.5f, 0.5f);
    style->SelectableTextAlign = ImVec2(0.0f, 0.5f);
    style->ColumnsMinSpacing = 40.0f;
    style->FrameBorderSize = 0.0f;
    style->WindowBorderSize = 0.0f;
    style->ChildBorderSize = 0.0f;
    style->PopupBorderSize = 0.0f;
    style->WindowMinSize = ImVec2(520, 500);

    ImVec4 *colors = style->Colors;
    // Text - white
    colors[ImGuiCol_Text]                    = ImVec4(0.95f, 0.95f, 0.97f, 1.0f);
    colors[ImGuiCol_TextDisabled]            = ImVec4(0.50f, 0.45f, 0.55f, 1.0f);
    // Window backgrounds - SOLID dark black-purple (no transparency)
    colors[ImGuiCol_WindowBg]                = ImVec4(0.05f, 0.03f, 0.08f, 1.00f);
    colors[ImGuiCol_ChildBg]                 = ImVec4(0.04f, 0.02f, 0.06f, 1.00f);
    colors[ImGuiCol_PopupBg]                 = ImVec4(0.06f, 0.04f, 0.09f, 1.00f);
    // Borders - purple tint
    colors[ImGuiCol_Border]                  = ImVec4(0.25f, 0.15f, 0.35f, 0.50f);
    colors[ImGuiCol_BorderShadow]            = ImVec4(0.00f, 0.00f, 0.00f, 0.00f);
    // Frame (checkboxes, sliders, inputs) - dark purple
    colors[ImGuiCol_FrameBg]                 = ImVec4(0.12f, 0.08f, 0.18f, 1.0f);
    colors[ImGuiCol_FrameBgHovered]          = ImVec4(0.18f, 0.12f, 0.25f, 1.0f);
    colors[ImGuiCol_FrameBgActive]           = ImVec4(0.25f, 0.15f, 0.35f, 1.0f);
    // Title - purple accent
    colors[ImGuiCol_TitleBg]                 = ImVec4(0.08f, 0.04f, 0.12f, 1.0f);
    colors[ImGuiCol_TitleBgActive]           = ImVec4(0.12f, 0.06f, 0.18f, 1.0f);
    colors[ImGuiCol_TitleBgCollapsed]        = ImVec4(0.06f, 0.03f, 0.10f, 1.0f);
    colors[ImGuiCol_MenuBarBg]               = ImVec4(0.07f, 0.04f, 0.11f, 1.0f);
    // Scrollbar - purple, thicker, nice animation (auto-hide when not needed)
    colors[ImGuiCol_ScrollbarBg]             = ImVec4(0.06f, 0.03f, 0.10f, 0.00f);
    colors[ImGuiCol_ScrollbarGrab]           = ImVec4(0.45f, 0.20f, 0.65f, 0.80f);
    colors[ImGuiCol_ScrollbarGrabHovered]    = ImVec4(0.55f, 0.25f, 0.75f, 1.00f);
    colors[ImGuiCol_ScrollbarGrabActive]     = ImVec4(0.65f, 0.30f, 0.85f, 1.00f);
    // Checkmark & Slider - purple accent
    colors[ImGuiCol_CheckMark]               = ImVec4(0.85f, 0.60f, 0.95f, 1.0f);
    colors[ImGuiCol_SliderGrab]              = ImVec4(0.55f, 0.30f, 0.70f, 1.00f);
    colors[ImGuiCol_SliderGrabActive]        = ImVec4(0.70f, 0.40f, 0.85f, 1.00f);
    // Buttons - purple theme
    colors[ImGuiCol_Button]                  = ImVec4(0.15f, 0.08f, 0.22f, 1.0f);
    colors[ImGuiCol_ButtonHovered]           = ImVec4(0.22f, 0.12f, 0.32f, 1.0f);
    colors[ImGuiCol_ButtonActive]            = ImVec4(0.30f, 0.15f, 0.42f, 1.0f);
    // Header (collapsing)
    colors[ImGuiCol_Header]                  = ImVec4(0.12f, 0.08f, 0.18f, 1.0f);
    colors[ImGuiCol_HeaderHovered]           = ImVec4(0.18f, 0.12f, 0.25f, 1.0f);
    colors[ImGuiCol_HeaderActive]            = ImVec4(0.22f, 0.12f, 0.32f, 1.0f);
    // Separator - purple
    colors[ImGuiCol_Separator]               = ImVec4(0.25f, 0.15f, 0.35f, 0.60f);
    colors[ImGuiCol_SeparatorHovered]        = ImVec4(0.35f, 0.20f, 0.45f, 0.80f);
    colors[ImGuiCol_SeparatorActive]         = ImVec4(0.45f, 0.25f, 0.55f, 1.0f);
    // Resize grip
    colors[ImGuiCol_ResizeGrip]              = ImVec4(0.15f, 0.08f, 0.22f, 0.40f);
    colors[ImGuiCol_ResizeGripHovered]       = ImVec4(0.22f, 0.12f, 0.32f, 0.60f);
    colors[ImGuiCol_ResizeGripActive]        = ImVec4(0.30f, 0.15f, 0.42f, 0.90f);
    // Tab - purple theme
    colors[ImGuiCol_Tab]                     = ImVec4(0.10f, 0.06f, 0.15f, 1.0f);
    colors[ImGuiCol_TabHovered]              = ImVec4(0.18f, 0.10f, 0.25f, 1.0f);
    colors[ImGuiCol_TabActive]               = ImVec4(0.25f, 0.12f, 0.35f, 1.0f);
    colors[ImGuiCol_TabUnfocused]            = ImVec4(0.08f, 0.04f, 0.12f, 1.0f);
    colors[ImGuiCol_TabUnfocusedActive]      = ImVec4(0.12f, 0.06f, 0.18f, 1.0f);
    // Plot
    colors[ImGuiCol_PlotLines]               = ImVec4(0.55f, 0.30f, 0.70f, 1.0f);
    colors[ImGuiCol_PlotLinesHovered]        = ImVec4(0.70f, 0.40f, 0.85f, 1.0f);
    colors[ImGuiCol_PlotHistogram]           = ImVec4(0.55f, 0.30f, 0.70f, 1.0f);
    colors[ImGuiCol_PlotHistogramHovered]    = ImVec4(0.70f, 0.40f, 0.85f, 1.0f);
    // Table
    colors[ImGuiCol_TableHeaderBg]           = ImVec4(0.08f, 0.04f, 0.12f, 1.0f);
    colors[ImGuiCol_TableBorderStrong]       = ImVec4(0.25f, 0.15f, 0.35f, 0.80f);
    colors[ImGuiCol_TableBorderLight]        = ImVec4(0.18f, 0.10f, 0.25f, 0.60f);
    colors[ImGuiCol_TableRowBg]              = ImVec4(0.05f, 0.03f, 0.08f, 0.60f);
    colors[ImGuiCol_TableRowBgAlt]           = ImVec4(0.07f, 0.04f, 0.11f, 0.60f);
    // Selection
    colors[ImGuiCol_TextSelectedBg]          = ImVec4(0.30f, 0.15f, 0.42f, 1.0f);
    colors[ImGuiCol_DragDropTarget]          = ImVec4(0.35f, 0.20f, 0.45f, 0.80f);
    // Nav highlight
    colors[ImGuiCol_NavHighlight]            = ImVec4(0.35f, 0.20f, 0.45f, 0.80f);
    colors[ImGuiCol_NavWindowingHighlight]   = ImVec4(0.35f, 0.20f, 0.45f, 0.80f);
    colors[ImGuiCol_NavWindowingDimBg]       = ImVec4(0.00f, 0.00f, 0.00f, 0.20f);
    colors[ImGuiCol_ModalWindowDimBg]        = ImVec4(0.00f, 0.00f, 0.00f, 0.20f);

    // ===== Animation Helpers =====
    // Smooth checkbox animation - returns animated alpha for checkmark
    auto GetCheckboxAnim = [](const char* label, bool value) -> float {
        static std::map<std::string, float> animStates;
        std::string key(label);
        float target = value ? 1.0f : 0.0f;
        float &anim = animStates[key];
        float speed = 8.0f * ImGui::GetIO().DeltaTime;
        if (anim < target) anim = ImMin(anim + speed, target);
        else if (anim > target) anim = ImMax(anim - speed, target);
        return anim;
    };
    
    // Smooth collapsing header animation
    auto CollapsingHeaderAnim = [](const char* label, bool defaultOpen = false) -> bool {
        static std::map<std::string, bool> openStates;
        static std::map<std::string, float> animStates;
        std::string key(label);
        
        if (openStates.find(key) == openStates.end()) {
            openStates[key] = defaultOpen;
            animStates[key] = defaultOpen ? 1.0f : 0.0f;
        }
        
        bool isOpen = openStates[key];
        float target = isOpen ? 1.0f : 0.0f;
        float &anim = animStates[key];
        float speed = 10.0f * ImGui::GetIO().DeltaTime;
        if (anim < target) anim = ImMin(anim + speed, target);
        else if (anim > target) anim = ImMax(anim - speed, target);
        
        // Use ImGui's native CollapsingHeader but track state
        bool clicked = ImGui::CollapsingHeader(label);
        if (clicked) {
            openStates[key] = !isOpen;
        }
        
        return isOpen;
    };

    // Animated Checkbox - draws custom checkbox with smooth animation
    auto AnimatedCheckbox = [&](const char* label, bool* value) -> bool {
        ImGuiWindow* window = ImGui::GetCurrentWindow();
        if (window->SkipItems) return false;
        
        ImGuiContext& g = *GImGui;
        ImGuiStyle& style = g.Style;
        ImGuiID id = window->GetID(label);
        ImVec2 label_size = ImGui::CalcTextSize(label, NULL, true);
        
        float square_sz = ImGui::GetFrameHeight();
        ImVec2 pos = window->DC.CursorPos;
        ImRect total_bb(pos, ImVec2(pos.x + square_sz + (label_size.x > 0.0f ? style.ItemInnerSpacing.x + label_size.x : 0.0f), pos.y + label_size.y + style.FramePadding.y * 2.0f));
        
        ImGui::ItemSize(total_bb, style.FramePadding.y);
        if (!ImGui::ItemAdd(total_bb, id)) {
            ImGui::SameLine(0, 20.0f);
            return false;
        }
        
        bool hovered, held;
        bool pressed = ImGui::ButtonBehavior(total_bb, id, &hovered, &held);
        if (pressed) *value = !*value;
        
        // Animation state
        static std::map<ImGuiID, float> animStates;
        float target = *value ? 1.0f : 0.0f;
        float &anim = animStates[id];
        float speed = 12.0f * ImGui::GetIO().DeltaTime;
        if (anim < target) anim = ImMin(anim + speed, target);
        else if (anim > target) anim = ImMax(anim - speed, target);
        
        // Draw checkbox background
        ImRect check_bb(pos, ImVec2(pos.x + square_sz, pos.y + square_sz));
        ImU32 bg_col = ImGui::GetColorU32(ImGuiCol_FrameBg);
        if (hovered) bg_col = ImGui::GetColorU32(ImGuiCol_FrameBgHovered);
        if (*value || anim > 0.5f) bg_col = ImGui::GetColorU32(ImGuiCol_FrameBgActive);
        ImGui::RenderFrame(check_bb.Min, check_bb.Max, bg_col, true, style.FrameRounding);
        
        // Draw animated checkmark
        if (anim > 0.01f) {
            ImU32 check_col = ImGui::GetColorU32(ImGuiCol_CheckMark);
            float check_scale = anim;
            float pad = square_sz * 0.25f * (1.0f - check_scale) + square_sz * 0.20f;
            ImVec2 check_min(check_bb.Min.x + pad, check_bb.Min.y + pad);
            ImVec2 check_max(check_bb.Max.x - pad, check_bb.Max.y - pad);
            ImGui::RenderCheckMark(window->DrawList, ImVec2((check_min.x + check_max.x) * 0.5f, (check_min.y + check_max.y) * 0.5f), check_col, square_sz * check_scale * 0.8f);
        }
        
        // Draw border
        ImU32 border_col = ImGui::GetColorU32(ImGuiCol_Border);
        window->DrawList->AddRect(check_bb.Min, check_bb.Max, border_col, style.FrameRounding, 0, 1.0f);
        
        // Draw label
        if (label_size.x > 0.0f) {
            ImVec2 label_pos(ImVec2(check_bb.Max.x + style.ItemInnerSpacing.x, check_bb.Min.y + style.FramePadding.y));
            ImGui::RenderText(label_pos, label);
        }
        
        ImGui::SameLine(0, 20.0f);
        return pressed;
    };

    // Fake Animated Checkbox - shows animation but doesn't modify the actual value
    auto FakeAnimatedCheckbox = [&](const char* label, bool* value) -> bool {
        ImGuiWindow* window = ImGui::GetCurrentWindow();
        if (window->SkipItems) return false;
        
        ImGuiContext& g = *GImGui;
        ImGuiStyle& style = g.Style;
        ImGuiID id = window->GetID(label);
        ImVec2 label_size = ImGui::CalcTextSize(label, NULL, true);
        
        float square_sz = ImGui::GetFrameHeight();
        ImVec2 pos = window->DC.CursorPos;
        ImRect total_bb(pos, ImVec2(pos.x + square_sz + (label_size.x > 0.0f ? style.ItemInnerSpacing.x + label_size.x : 0.0f), pos.y + label_size.y + style.FramePadding.y * 2.0f));
        
        ImGui::ItemSize(total_bb, style.FramePadding.y);
        if (!ImGui::ItemAdd(total_bb, id)) {
            ImGui::SameLine(0, 20.0f);
            return false;
        }
        
        bool hovered, held;
        bool pressed = ImGui::ButtonBehavior(total_bb, id, &hovered, &held);
        // DON'T modify *value here - just toggle visual state
        
        // Animation state - use local static map for visual state only
        static std::map<ImGuiID, float> visualAnimStates;
        static std::map<ImGuiID, bool> visualStates;
        
        if (visualStates.find(id) == visualStates.end()) {
            visualStates[id] = *value; // Initialize with actual value
        }
        
        if (pressed) {
            visualStates[id] = !visualStates[id]; // Toggle visual only
        }
        
        float target = visualStates[id] ? 1.0f : 0.0f;
        float &anim = visualAnimStates[id];
        float speed = 12.0f * ImGui::GetIO().DeltaTime;
        if (anim < target) anim = ImMin(anim + speed, target);
        else if (anim > target) anim = ImMax(anim - speed, target);
        
        // Draw checkbox background
        ImRect check_bb(pos, ImVec2(pos.x + square_sz, pos.y + square_sz));
        ImU32 bg_col = ImGui::GetColorU32(ImGuiCol_FrameBg);
        if (hovered) bg_col = ImGui::GetColorU32(ImGuiCol_FrameBgHovered);
        if (visualStates[id] || anim > 0.5f) bg_col = ImGui::GetColorU32(ImGuiCol_FrameBgActive);
        ImGui::RenderFrame(check_bb.Min, check_bb.Max, bg_col, true, style.FrameRounding);
        
        // Draw animated checkmark
        if (anim > 0.01f) {
            ImU32 check_col = ImGui::GetColorU32(ImGuiCol_CheckMark);
            float check_scale = anim;
            float pad = square_sz * 0.25f * (1.0f - check_scale) + square_sz * 0.20f;
            ImVec2 check_min(check_bb.Min.x + pad, check_bb.Min.y + pad);
            ImVec2 check_max(check_bb.Max.x - pad, check_bb.Max.y - pad);
            ImGui::RenderCheckMark(window->DrawList, ImVec2((check_min.x + check_max.x) * 0.5f, (check_min.y + check_max.y) * 0.5f), check_col, square_sz * check_scale * 0.8f);
        }
        
        // Draw border
        ImU32 border_col = ImGui::GetColorU32(ImGuiCol_Border);
        window->DrawList->AddRect(check_bb.Min, check_bb.Max, border_col, style.FrameRounding, 0, 1.0f);
        
        // Draw label
        if (label_size.x > 0.0f) {
            ImVec2 label_pos(ImVec2(check_bb.Max.x + style.ItemInnerSpacing.x, check_bb.Min.y + style.FramePadding.y));
            ImGui::RenderText(label_pos, label);
        }
        
        ImGui::SameLine(0, 20.0f);
        return pressed;
    };

    // ===== Window Setup =====
    ImGui::SetNextWindowSize(ImVec2(1000, 750), ImGuiCond_FirstUseEver);
    ImGui::SetNextWindowPos(ImVec2(100, 50), ImGuiCond_FirstUseEver);

    if (ImGui::Begin("FREE", &self.moduleControl->menuStatus, ImGuiWindowFlags_NoCollapse | ImGuiWindowFlags_NoResize)) {
        
        // ===== Custom Background Effects: Grid & Rain =====
        ImDrawList* drawList = ImGui::GetWindowDrawList();
        ImVec2 winPos = ImGui::GetWindowPos();
        ImVec2 winSize = ImGui::GetWindowSize();
        
        // Dark red grid lines
        ImU32 gridColor = IM_COL32(139, 0, 0, 40); // Dark red with low alpha
        float gridSpacing = 40.0f;
        float time = (float)ImGui::GetTime();
        
        // Vertical grid lines
        for (float x = winPos.x; x < winPos.x + winSize.x; x += gridSpacing) {
            drawList->AddLine(ImVec2(x, winPos.y), ImVec2(x, winPos.y + winSize.y), gridColor, 1.0f);
        }
        // Horizontal grid lines
        for (float y = winPos.y; y < winPos.y + winSize.y; y += gridSpacing) {
            drawList->AddLine(ImVec2(winPos.x, y), ImVec2(winPos.x + winSize.x, y), gridColor, 1.0f);
        }
        
        // Rain drops effect
        static std::vector<ImVec2> rainDrops;
        static std::vector<float> rainSpeeds;
        static bool rainInitialized = false;
        
        if (!rainInitialized) {
            rainInitialized = true;
            int numDrops = 80;
            for (int i = 0; i < numDrops; i++) {
                float x = winPos.x + (float)(rand() % (int)winSize.x);
                float y = winPos.y + (float)(rand() % (int)winSize.y);
                rainDrops.push_back(ImVec2(x, y));
                rainSpeeds.push_back(200.0f + (float)(rand() % 300)); // Speed between 200-500
            }
        }
        
        // Update and draw rain drops
        ImU32 rainColor = IM_COL32(180, 20, 20, 120); // Dark red rain
        float deltaTime = ImGui::GetIO().DeltaTime;
        
        for (size_t i = 0; i < rainDrops.size(); i++) {
            // Draw rain drop as a small line
            ImVec2 start = rainDrops[i];
            ImVec2 end = ImVec2(start.x, start.y + 15.0f);
            drawList->AddLine(start, end, rainColor, 1.5f);
            
            // Update position
            rainDrops[i].y += rainSpeeds[i] * deltaTime;
            
            // Reset if off screen
            if (rainDrops[i].y > winPos.y + winSize.y + 20.0f) {
                rainDrops[i].x = winPos.x + (float)(rand() % (int)winSize.x);
                rainDrops[i].y = winPos.y - 20.0f;
                rainSpeeds[i] = 200.0f + (float)(rand() % 300);
            }
            
            // Slight horizontal drift for natural look
            rainDrops[i].x += sinf(time * 2.0f + i) * 10.0f * deltaTime;
            
            // Keep within window bounds horizontally
            if (rainDrops[i].x < winPos.x) rainDrops[i].x = winPos.x + winSize.x;
            if (rainDrops[i].x > winPos.x + winSize.x) rainDrops[i].x = winPos.x;
        }
        
        ImGui::Separator();

// ===== Elegant Tab Buttons =====
        float tabWidth = 155.0f;
        float tabHeight = 38.0f;
        float tabY = ImGui::GetCursorPosY();
        float tabX = ImGui::GetCursorPosX();

        ImGui::PushStyleVar(ImGuiStyleVar_FramePadding, ImVec2(0, 0));
        ImGui::PushStyleVar(ImGuiStyleVar_FrameBorderSize, 0.0f);
        ImGui::PushStyleVar(ImGuiStyleVar_WindowPadding, ImVec2(0, 0));
        ImGui::PushStyleVar(ImGuiStyleVar_ItemSpacing, ImVec2(4.0f, 0.0f));

        // Tab 1 - ESP (Eye icon)
        ImGui::PushStyleColor(ImGuiCol_Button, Settings::Tab == 1 ? ImVec4(0.25f, 0.12f, 0.35f, 1.0f) : ImVec4(0.10f, 0.06f, 0.15f, 0.90f));
        ImGui::PushStyleColor(ImGuiCol_ButtonHovered, ImVec4(0.30f, 0.15f, 0.42f, 1.0f));
        ImGui::PushStyleColor(ImGuiCol_ButtonActive, ImVec4(0.35f, 0.18f, 0.48f, 1.0f));
        ImGui::PushStyleColor(ImGuiCol_Text, Settings::Tab == 1 ? ImVec4(1.0f, 0.85f, 1.0f, 1.0f) : ImVec4(0.65f, 0.55f, 0.70f, 1.0f));
        if (ImGui::Button(ICON_FA_EYE"  ESP", ImVec2(tabWidth, tabHeight)))
            Settings::Tab = 1;
        ImGui::PopStyleColor(4);

        ImGui::SameLine(0, 4.0f);

        // Tab 2 - AIM (Crosshair/Sniper icon)
        ImGui::PushStyleColor(ImGuiCol_Button, Settings::Tab == 2 ? ImVec4(0.25f, 0.12f, 0.35f, 1.0f) : ImVec4(0.10f, 0.06f, 0.15f, 0.90f));
        ImGui::PushStyleColor(ImGuiCol_ButtonHovered, ImVec4(0.30f, 0.15f, 0.42f, 1.0f));
        ImGui::PushStyleColor(ImGuiCol_ButtonActive, ImVec4(0.35f, 0.18f, 0.48f, 1.0f));
        ImGui::PushStyleColor(ImGuiCol_Text, Settings::Tab == 2 ? ImVec4(1.0f, 0.85f, 1.0f, 1.0f) : ImVec4(0.65f, 0.55f, 0.70f, 1.0f));
        if (ImGui::Button(ICON_FA_CROSSHAIRS"  AIM", ImVec2(tabWidth, tabHeight)))
            Settings::Tab = 2;
        ImGui::PopStyleColor(4);

        ImGui::SameLine(0, 4.0f);

        // Tab 3 - SKIN (Diamond icon - displays well)
        ImGui::PushStyleColor(ImGuiCol_Button, Settings::Tab == 3 ? ImVec4(0.25f, 0.12f, 0.35f, 1.0f) : ImVec4(0.10f, 0.06f, 0.15f, 0.90f));
        ImGui::PushStyleColor(ImGuiCol_ButtonHovered, ImVec4(0.30f, 0.15f, 0.42f, 1.0f));
        ImGui::PushStyleColor(ImGuiCol_ButtonActive, ImVec4(0.35f, 0.18f, 0.48f, 1.0f));
        ImGui::PushStyleColor(ImGuiCol_Text, Settings::Tab == 3 ? ImVec4(1.0f, 0.85f, 1.0f, 1.0f) : ImVec4(0.65f, 0.55f, 0.70f, 1.0f));
        if (ImGui::Button(ICON_FA_DIAMOND"  SKIN", ImVec2(tabWidth, tabHeight)))
            Settings::Tab = 3;
        ImGui::PopStyleColor(4);

        ImGui::SameLine(0, 4.0f);

        // Tab 4 - Misc (Telegram/Paper plane icon)
        ImGui::PushStyleColor(ImGuiCol_Button, Settings::Tab == 4 ? ImVec4(0.25f, 0.12f, 0.35f, 1.0f) : ImVec4(0.10f, 0.06f, 0.15f, 0.90f));
        ImGui::PushStyleColor(ImGuiCol_ButtonHovered, ImVec4(0.30f, 0.15f, 0.42f, 1.0f));
        ImGui::PushStyleColor(ImGuiCol_ButtonActive, ImVec4(0.35f, 0.18f, 0.48f, 1.0f));
        ImGui::PushStyleColor(ImGuiCol_Text, Settings::Tab == 4 ? ImVec4(1.0f, 0.85f, 1.0f, 1.0f) : ImVec4(0.65f, 0.55f, 0.70f, 1.0f));
        if (ImGui::Button(ICON_FA_PAPER_PLANE"  MISC", ImVec2(tabWidth, tabHeight)))
            Settings::Tab = 4;
        ImGui::PopStyleColor(4);

        ImGui::SameLine(0, 4.0f);

        // Tab 5 - Ui (Flag icon)
        ImGui::PushStyleColor(ImGuiCol_Button, Settings::Tab == 5 ? ImVec4(0.25f, 0.12f, 0.35f, 1.0f) : ImVec4(0.10f, 0.06f, 0.15f, 0.90f));
        ImGui::PushStyleColor(ImGuiCol_ButtonHovered, ImVec4(0.30f, 0.15f, 0.42f, 1.0f));
        ImGui::PushStyleColor(ImGuiCol_ButtonActive, ImVec4(0.35f, 0.18f, 0.48f, 1.0f));
        ImGui::PushStyleColor(ImGuiCol_Text, Settings::Tab == 5 ? ImVec4(1.0f, 0.85f, 1.0f, 1.0f) : ImVec4(0.65f, 0.55f, 0.70f, 1.0f));
        if (ImGui::Button(ICON_FA_FLAG"  UI", ImVec2(tabWidth, tabHeight)))
            Settings::Tab = 5;
        ImGui::PopStyleColor(4);

        ImGui::SameLine(0, 4.0f);

        // Tab 6 - MEM.. (Sniper/Crosshairs icon for Misc Aim)
        ImGui::PushStyleColor(ImGuiCol_Button, Settings::Tab == 6 ? ImVec4(0.25f, 0.12f, 0.35f, 1.0f) : ImVec4(0.10f, 0.06f, 0.15f, 0.90f));
        ImGui::PushStyleColor(ImGuiCol_ButtonHovered, ImVec4(0.30f, 0.15f, 0.42f, 1.0f));
        ImGui::PushStyleColor(ImGuiCol_ButtonActive, ImVec4(0.35f, 0.18f, 0.48f, 1.0f));
        ImGui::PushStyleColor(ImGuiCol_Text, Settings::Tab == 6 ? ImVec4(1.0f, 0.85f, 1.0f, 1.0f) : ImVec4(0.65f, 0.55f, 0.70f, 1.0f));
        if (ImGui::Button(ICON_FA_CROSSHAIRS"  MEM..", ImVec2(tabWidth, tabHeight)))
            Settings::Tab = 6;
        ImGui::PopStyleColor(4);

        ImGui::PopStyleVar(4);
        ImGui::Separator();

        // ===== TAB 1: ESP =====
        if (Settings::Tab == 1) {
            ImGui::TextColored(ImVec4(0.70f, 0.50f, 0.85f, 1.0f), "ESP / Visuals");
            ImGui::Spacing();
            ImGui::Spacing();

            if (ImGui::CollapsingHeader(ICON_FA_EYE"  ESP Elements")) {
                AnimatedCheckbox("Line", &Config.ESPMenu.Line);
                AnimatedCheckbox("Name", &Config.ESPMenu.Name);
                ImGui::Spacing();
                AnimatedCheckbox("3DBOX", &Config.ESPMenu.Box);
                AnimatedCheckbox("Alert", &Config.ESPMenu.Alert);
                ImGui::Spacing();
                AnimatedCheckbox("Radar", &Config.ESPMenu.Radar);
                AnimatedCheckbox("GRwar", &Config.ESPMenu.GRWAR);
                ImGui::Spacing();
                AnimatedCheckbox("Bone", &Config.ESPMenu.Skeleton);
                AnimatedCheckbox("Weapon", &Config.ESPMenu.Weapon);
                ImGui::Spacing();
                AnimatedCheckbox("IgnoreBot", &Config.ESPMenu.IgnoreBot);
            }

            ImGui::Spacing();
            if (ImGui::CollapsingHeader(ICON_FA_SLIDERS_H"  Radar Settings")) {
                ImGui::SliderFloat("RadarX", &Config.ESPMenu.RadarX, 1, 125);
                ImGui::SliderFloat("RadarY", &Config.ESPMenu.RadarY, 1, 60);
            }
        }
        // ===== TAB 2: AIM =====
        else if (Settings::Tab == 2) {
            ImGui::TextColored(ImVec4(0.70f, 0.50f, 0.85f, 1.0f), "Aimbot / Targeting");
            ImGui::Spacing();
            ImGui::Spacing();

            if (ImGui::CollapsingHeader(ICON_FA_CROSSHAIRS"  Aimbot Settings")) {
                AnimatedCheckbox("Aimbot", &preferences.Config.SilentAim.AimBot);
                AnimatedCheckbox("Bulesstrack", &preferences.Config.SilentAim.Enable);
                ImGui::Spacing();
                AnimatedCheckbox("Vischeck", &preferences.Config.SilentAim.VisCheck);
                AnimatedCheckbox("Fov", &preferences.Config.SilentAim.Fov);
                ImGui::Spacing();
                AnimatedCheckbox("IgnoreKno", &preferences.Config.SilentAim.IgnoreKnocked);
                AnimatedCheckbox("IgnoreBot", &preferences.Config.SilentAim.IgnoreBot);
            }

            ImGui::Spacing();
            if (ImGui::CollapsingHeader(ICON_FA_BULLSEYE"  Aim Parameters")) {
                ImGui::Text("FOV:");
                ImGui::SliderInt("##fov", &preferences.Config.SilentAim.Cross, 1, 400);
                ImGui::Spacing();
                ImGui::Text("Distance:");
                ImGui::SliderFloat("##distance", &g_disstance, 1.0f, 300.f);
                ImGui::Spacing();
                ImGui::Text("HEAD - BODY:");
                static const char *targets[] = {"Head", "Body"};
                ImGui::Combo("##Target", (int *)&preferences.Config.SilentAim.Target, targets, 2, -1);
                ImGui::Spacing();
                ImGui::Text("Aim Mode:");
                if (ImGui::RadioButton("Open Fire", &AimF, 1)) {}
                ImGui::SameLine(0, 15.0f);
                if (ImGui::RadioButton("SCOPE", &AimF, 2)) {}
                ImGui::SameLine(0, 15.0f);
                if (ImGui::RadioButton("Function", &AimF, 3)) {}
            }
        }
        // ===== TAB 3: SKIN (Professional Redesign) =====
        else if (Settings::Tab == 3) {
            ImGui::TextColored(ImVec4(0.70f, 0.50f, 0.85f, 1.0f), "Skin / Weapon Changer");
            ImGui::Spacing();
            ImGui::Spacing();

            // Main toggles
            AnimatedCheckbox("ModSkin", &ModSkinn);
            AnimatedCheckbox("KillMessage", &KillMessage);
            AnimatedCheckbox("DeadBox", &DeadBox);
            ImGui::Spacing();
            ImGui::Separator();
            ImGui::Spacing();

            // Outfit Section with Combo Boxes for better UX
            if (ImGui::CollapsingHeader(ICON_FA_TSHIRT"  Outfit Settings")) {
                ImGui::Indent(10.0f);
                
                // X-Suit
                ImGui::Text("X-Suit");
                ImGui::SameLine(120);
                ImGui::PushItemWidth(200);
                static const char* xsuits[] = {"Default", "Blood Raven", "Golden Pharaoh", "Avalanche", "Irresidence", "Poseidon", "Arcane Jester", "Silvanus", "Custom 1", "Custom 2", "Custom 3", "Custom 4", "Custom 5", "Custom 6", "Custom 7", "Custom 8", "Custom 9", "Custom 10", "Custom 11", "Custom 12", "Custom 13", "Custom 14"};
                ImGui::Combo("##xsuits", &preferences.Config.Skin.XSuits, xsuits, IM_ARRAYSIZE(xsuits));
                ImGui::PopItemWidth();
                ImGui::Spacing();
                
                // Face
                ImGui::Text("Face");
                ImGui::SameLine(120);
                ImGui::PushItemWidth(200);
                ImGui::InputInt("##face", &preferences.Config.Skin.XSuits);
                ImGui::PopItemWidth();
                ImGui::Spacing();
                
                // Bag
                ImGui::Text("Bag");
                ImGui::SameLine(120);
                ImGui::PushItemWidth(200);
                static const char* bags[] = {"Default", "Blood Raven", "Golden Pharaoh", "Avalanche", "Irresidence", "Poseidon", "Arcane Jester", "Silvanus", "Custom 8", "Custom 9", "None"};
                ImGui::Combo("##bags", &preferences.bag, bags, IM_ARRAYSIZE(bags));
                ImGui::PopItemWidth();
                ImGui::Spacing();
                
                // Helmet
                ImGui::Text("Helmet");
                ImGui::SameLine(120);
                ImGui::PushItemWidth(200);
                static const char* helmets[] = {"Default", "Blood Raven", "Golden Pharaoh", "Avalanche", "Irresidence", "Poseidon", "Arcane Jester", "Silvanus", "Custom 8", "Custom 9", "None"};
                ImGui::Combo("##helmets", &preferences.helmet, helmets, IM_ARRAYSIZE(helmets));
                ImGui::PopItemWidth();
                ImGui::Spacing();
                
                // Emote
                ImGui::Text("Emote");
                ImGui::SameLine(120);
                ImGui::PushItemWidth(200);
                static const char* emotes[] = {"Default", "Emote 1", "Emote 2", "Emote 3", "Emote 4", "Emote 5", "Emote 6", "Emote 7", "Emote 8"};
                ImGui::Combo("##emotes", &ModEmote1, emotes, IM_ARRAYSIZE(emotes));
                ImGui::PopItemWidth();
                ImGui::Spacing();
                
                // Parachute
                ImGui::Text("Parachute");
                ImGui::SameLine(120);
                ImGui::PushItemWidth(200);
                static const char* parachutes[] = {"Default", "Pharaoh's Scarab", "Enigmatic Nomad", "Parashot", "Paperfold Gambit", "Labyrinth Beast", "Flamewraith", "Mega Kitty", "Mega Yeti", "Endless Glory", "Magma Skull", "Aquatic Fury", "CyberGen Zero", "Radiant Phoenix", "Will of Horus", "Anubian Magistrate"};
                ImGui::Combo("##parachutes", &preferences.Config.Skin.Parachute, parachutes, IM_ARRAYSIZE(parachutes));
                ImGui::PopItemWidth();
                
                ImGui::Unindent(10.0f);
            }
            ImGui::Spacing();

            // Weapon Section - Professional Table
            if (ImGui::CollapsingHeader(ICON_FA_RAYGUN"  Weapon Skins")) {
                if (ImGui::BeginTable("WeaponSkins", 3, ImGuiTableFlags_Borders | ImGuiTableFlags_RowBg | ImGuiTableFlags_Resizable | ImGuiTableFlags_ScrollY)) {
                    ImGui::TableSetupColumn("Enable", ImGuiTableColumnFlags_WidthFixed, 60);
                    ImGui::TableSetupColumn("Weapon", ImGuiTableColumnFlags_WidthFixed, 100);
                    ImGui::TableSetupColumn("Skin ID", ImGuiTableColumnFlags_WidthStretch);
                    ImGui::TableHeadersRow();

                    struct WeaponEntry { const char* name; bool* toggle; int* id; };
                    WeaponEntry weapons[] = {
                        {"M416", &preferences.M416, &preferences.Config.Skin.M416},
                        {"AKM", &preferences.AKM, &preferences.Config.Skin.AKM},
                        {"MG3", &preferences.MG3, &preferences.Config.Skin.MG3},
                        {"MK145", &preferences.MK145, &preferences.Config.Skin.MK145},
                        {"MK14", &preferences.MK14, &preferences.Config.Skin.MK14},
                        {"MK146", &preferences.MK146, &preferences.Config.Skin.MK146},
                        {"M4145", &preferences.M4145, &preferences.Config.Skin.M4145},
                        {"SCAR", &preferences.SCARL, &preferences.Config.Skin.Scar},
                        {"M762", &preferences.M762, &preferences.Config.Skin.M762},
                        {"GROZA", &preferences.GROZA, &preferences.Config.Skin.Groza},
                        {"AUG", &preferences.AUG, &preferences.Config.Skin.AUG},
                        {"M16A4", &preferences.M16, &preferences.Config.Skin.M16A4},
                        {"ACE32", &preferences.ACE32, &preferences.Config.Skin.ACE32},
                        {"KAR98", &preferences.KAR98, &preferences.Config.Skin.K98},
                        {"M24", &preferences.M24, &preferences.Config.Skin.M24},
                        {"AWM", &preferences.AWM, &preferences.Config.Skin.AWM},
                        {"DP28", &preferences.DP28, &preferences.Config.Skin.DP28},
                        {"M249", &preferences.M249, &preferences.Config.Skin.M249},
                        {"P90", &preferences.P90, &preferences.Config.Skin.P90},
                        {"UZI", &preferences.UZI, &preferences.Config.Skin.UZI},
                        {"UMP", &preferences.UMP, &preferences.Config.Skin.UMP},
                        {"TOMMY", &preferences.TOMMY, &preferences.Config.Skin.Thompson},
                        {"VECTOR", &preferences.VECTOR, &preferences.Config.Skin.Vector},
                        {"BIZON", &preferences.BIZON, &preferences.Config.Skin.Bizon},
                        {"PAN", &preferences.PAN, &preferences.Config.Skin.Pan},
                    };
                    for (int i = 0; i < 25; i++) {
                        ImGui::TableNextRow();
                        ImGui::TableNextColumn();
                        ImGui::PushStyleColor(ImGuiCol_FrameBg, ImVec4(0.15f, 0.08f, 0.22f, 1.0f));
                        ImGui::Checkbox("##w", weapons[i].toggle);
                        ImGui::PopStyleColor();
                        ImGui::TableNextColumn();
                        ImGui::TextColored(ImVec4(0.85f, 0.70f, 0.95f, 1.0f), "%s", weapons[i].name);
                        ImGui::TableNextColumn();
                        ImGui::PushItemWidth(-1);
                        ImGui::InputInt("##id", weapons[i].id);
                        ImGui::PopItemWidth();
                    }
                    ImGui::EndTable();
                }
            }
            ImGui::Spacing();

            // Vehicle Section - Professional Table
            if (ImGui::CollapsingHeader(ICON_FA_CAR"  Vehicle Skins")) {
                if (ImGui::BeginTable("VehicleSkins", 3, ImGuiTableFlags_Borders | ImGuiTableFlags_RowBg | ImGuiTableFlags_Resizable)) {
                    ImGui::TableSetupColumn("Enable", ImGuiTableColumnFlags_WidthFixed, 60);
                    ImGui::TableSetupColumn("Vehicle", ImGuiTableColumnFlags_WidthFixed, 100);
                    ImGui::TableSetupColumn("Skin ID", ImGuiTableColumnFlags_WidthStretch);
                    ImGui::TableHeadersRow();

                    struct VehicleEntry { const char* name; bool* toggle; int* id; };
                    VehicleEntry vehicles[] = {
                        {"Dacia", &preferences.Dacia, &preferences.Config.Skin.Dacia},
                        {"Coupe", &preferences.CoupeRB, &preferences.Config.Skin.CoupeRP},
                        {"Uaz", &preferences.UAZ, &preferences.Config.Skin.UAZ},
                        {"Moto", &preferences.Moto, &preferences.Config.Skin.Moto},
                        {"BigFoot", &preferences.BigFoot, &preferences.Config.Skin.Bigfoot},
                        {"Mirado", &preferences.Mirado, &preferences.Config.Skin.Mirado},
                        {"Buggy", &preferences.Buggy, &preferences.Config.Skin.Buggy},
                        {"MiniBus", &preferences.MiniBus, &preferences.Config.Skin.MiniBus},
                        {"Boat", &preferences.Boat, &preferences.Config.Skin.Boat},
                    };
                    for (int i = 0; i < 9; i++) {
                        ImGui::TableNextRow();
                        ImGui::TableNextColumn();
                        ImGui::PushStyleColor(ImGuiCol_FrameBg, ImVec4(0.15f, 0.08f, 0.22f, 1.0f));
                        ImGui::Checkbox("##v", vehicles[i].toggle);
                        ImGui::PopStyleColor();
                        ImGui::TableNextColumn();
                        ImGui::TextColored(ImVec4(0.85f, 0.70f, 0.95f, 1.0f), "%s", vehicles[i].name);
                        ImGui::TableNextColumn();
                        ImGui::PushItemWidth(-1);
                        ImGui::InputInt("##vid", vehicles[i].id);
                        ImGui::PopItemWidth();
                    }
                    ImGui::EndTable();
                }
            }
        }
        // ===== TAB 4: MISC (Security & Telegram only) =====
        else if (Settings::Tab == 4) {
            ImGui::TextColored(ImVec4(0.70f, 0.50f, 0.85f, 1.0f), "Miscellaneous");
            ImGui::Spacing();
            ImGui::Spacing();

            if (ImGui::CollapsingHeader(ICON_FA_SHIELD"  Security & Anti-Cheat")) {
                ImGui::Indent(10.0f);
                ImGui::Text("Anti-Injection / Security");
                ImGui::Spacing();
                ImGui::TextColored(ImVec4(0.40f, 0.85f, 0.50f, 1.0f), "Status: Active and Stable");
                ImGui::Spacing();
                ImGui::Text("Version: 3.0 32-Bit");
                ImGui::Text("Build: Premium");
                ImGui::Unindent(10.0f);
            }
            ImGui::Spacing();

            if (ImGui::Button(ICON_FA_PAPER_PLANE"  Telegram", ImVec2(220, 45))) {
                NSString *urlString = @"https://t.me/lix7m";
                NSURL *url = [NSURL URLWithString:urlString];
                [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
            }
        }
        // ===== TAB 5: UI (with Ui ESP only) =====
        else if (Settings::Tab == 5) {
            ImGui::TextColored(ImVec4(0.70f, 0.50f, 0.85f, 1.0f), "UI Settings");
            ImGui::Spacing();
            ImGui::Spacing();

            // Ui ESP Section - only section in UI tab
            if (ImGui::CollapsingHeader(ICON_FA_EYE"  Ui ESP")) {
                ImGui::Indent(10.0f);
                AnimatedCheckbox("UI1 (Health)", &Config.ESPMenu.Health);
                AnimatedCheckbox("UI2 (Blood)", &Config.ESPMenu.血条);
                ImGui::Spacing();
                AnimatedCheckbox("UI3 (Engine Draw)", &引擎绘制1);
                AnimatedCheckbox("UI4 (Zero)", &ZERO);
                ImGui::Spacing();
                AnimatedCheckbox("Player ESP", &self.moduleControl->mainSwitch.playerStatus);
                AnimatedCheckbox("Bot ESP", &self.moduleControl->mainSwitch.materialStatus);
                ImGui::Unindent(10.0f);
            }
        }
        // ===== TAB 6: MEMORY (Misc Aim moved here) =====
        else if (Settings::Tab == 6) {
            ImGui::TextColored(ImVec4(0.70f, 0.50f, 0.85f, 1.0f), "Memory / Misc Aim");
            ImGui::Spacing();
            ImGui::Spacing();

            if (ImGui::CollapsingHeader(ICON_FA_CROSSHAIRS"  Misc Aim")) {
                ImGui::Indent(10.0f);
                FakeAnimatedCheckbox("Recoil Control", &preferences.Config.SilentAim.ReCo);
                FakeAnimatedCheckbox("Instant Hit", &preferences.Config.SilentAim.InstantHit);
                ImGui::Spacing();
                FakeAnimatedCheckbox("Fast Shoot", &preferences.Config.SilentAim.FastShoot);
                FakeAnimatedCheckbox("HitX", &preferences.Config.SilentAim.HitX);
                ImGui::Spacing();
                FakeAnimatedCheckbox("WideView", &WideView);
                if (WideView) {
                    ImGui::Indent(20.0f);
                    ImGui::SliderInt("Wide Value", &WideValue, 90, 140);
                    ImGui::Unindent(20.0f);
                }
                ImGui::Spacing();
                FakeAnimatedCheckbox("Speed Up", &tiaosan);
                FakeAnimatedCheckbox("Fly Car", &feiche);
                ImGui::Unindent(10.0f);
            }
        }
    }
    ImGui::End();
}

- (UIWindow*)GetUIW{
    UIWindow*window=[UIApplication sharedApplication].keyWindow;
    //以下是 重复获取顶层视图 防止切换app导致视图覆盖
    if (window.windowLevel !=UIWindowLevelNormal) {
        NSArray*arr=[UIApplication sharedApplication].windows;
        for (UIWindow*tmp in arr) {
            if (tmp.windowLevel == UIWindowLevelNormal) {
                window=tmp;
                break;
            }
        }
    }
    return window;
}
-(void)readIniConfig{
    self.moduleControl->fps = configManager::readInteger(config,"mainSwitch", "fps", 0);
    switch(self.moduleControl->fps){
        case 0:
            overlayView.preferredFramesPerSecond = 60;
            break;
        case 1:
            overlayView.preferredFramesPerSecond = 90;
            break;
        case 2:
            overlayView.preferredFramesPerSecond = 120;
            break;
        default:
            overlayView.preferredFramesPerSecond = 60;
            break;
    }
    //主开关
    self.moduleControl->mainSwitch.playerStatus = configManager::readBoolean(config,"mainSwitch", "player", false);
    self.moduleControl->mainSwitch.materialStatus = configManager::readBoolean(config,"mainSwitch", "material", false);
    self.moduleControl->mainSwitch.aimbotStatus = configManager::readBoolean(config,"mainSwitch", "aimbot", false);
    self.moduleControl->mainSwitch.BulletTrack = configManager::readBoolean(config,"mainSwitch", "BulletTrack", false);
    //人物开关
    for (int i = 0; i < 10; ++i) {
        std::string str = "playerSwitch_" + std::to_string(i);
        *((bool *) &self.moduleControl->playerSwitch + sizeof(bool) * i) = configManager::readBoolean(config,"playerSwitch", str.c_str(), false);
    }
    //雷达坐标
    self.moduleControl->playerSwitch.radarSize = configManager::readFloat(config,"playerSwitch", "radarSize", 70);
    self.moduleControl->playerSwitch.radarCoord.x = configManager::readFloat(config,"playerSwitch", "radarX", 500);
    self.moduleControl->playerSwitch.radarCoord.y = configManager::readFloat(config,"playerSwitch", "radarY", 500);
    //物资开关
    for (int i = 0; i < All; ++i) {
        std::string str = "materialSwitch_" + std::to_string(i);
        self.moduleControl->materialSwitch[i] = configManager::readBoolean(config,"materialSwitch", str.c_str(), false);
    }
    //倒地不瞄
    self.moduleControl->aimbotController.fallNotAim = configManager::readBoolean(config,"aimbotControl", "fall", false);
    self.moduleControl->aimbotController.showAimbotRadius = configManager::readBoolean(config,"aimbotControl", "showRadius", true);
    self.moduleControl->aimbotController.aimbotRadius = configManager::readFloat(config,"aimbotControl", "radius", 500);
    
    self.moduleControl->aimbotController.smoke = configManager::readBoolean(config,"aimbotControl", "smoke", true);
    
    //自瞄模式
    self.moduleControl->aimbotController.aimbotMode = configManager::readInteger(config,"aimbotControl", "mode", 0);
    //自瞄部位
    self.moduleControl->aimbotController.aimbotParts = configManager::readInteger(config,"aimbotControl", "parts", 0);
    //自瞄强度
//    aimbotIntensity = configManager::readInteger(config,"aimbotControl", "intensity", 2);
//    switch (aimbotIntensity) {
//        case 0:
//            self.moduleControl->aimbotController.aimbotIntensity = 0.1f;
//            break;
//        case 1:
//            self.moduleControl->aimbotController.aimbotIntensity = 0.2f;
//            break;
//        case 2:
//            self.moduleControl->aimbotController.aimbotIntensity = 0.3f;
//            break;
//        case 3:
//            self.moduleControl->aimbotController.aimbotIntensity = 0.4f;
//           break;
//        case 4:
//            self.moduleControl->aimbotController.aimbotIntensity = 0.5f;
//            break;
//        case 5:
//            self.moduleControl->aimbotController.aimbotIntensity = 1.0f;
//            break;
//        case 6:
//            self.moduleControl->aimbotController.aimbotIntensity = 1.2f;
//            break;
//    }

    //自瞄距离
    self.moduleControl->aimbotController.distance = configManager::readFloat(config,"aimbotControl", "distance", 450);
    //自瞄速率
    self.moduleControl->aimbotController.aimbotIntensity = configManager::readFloat(config,"aimbotControl", "intensity", 0.20);
}

//引擎区域

#pragma esp method ------------------------------------------------------------------------------------


typedef uintptr_t kaddr;
using namespace std;
using namespace SDK;





string encryptDecrypt(string toEncrypt) {
    char key[3] = {'K', 'C', 'Q'}; //Any chars will work, in an array of any size
    string output = toEncrypt;
    for (int i = 0; i < toEncrypt.size(); i++)
        output[i] = toEncrypt[i] ^ key[i % (sizeof(key) / sizeof(char))];
    return output;
}

uint64_t getBaseAddress(const char* fileName)
{
  for (int i = 0; i < _dyld_image_count(); i++) {
        if (strstr(_dyld_get_image_name(i), fileName)) {
            return _dyld_get_image_vmaddr_slide(i);
        }
    }
    return 0;
}


kaddr getRealOffset(kaddr offset){
    return (unsigned long)_dyld_get_image_vmaddr_slide(0)+offset;
}
long obbbbl() {
    NSDictionary *infoDictionary = [[NSBundle mainBundle] infoDictionary];
         NSString *BundID = [infoDictionary objectForKey:@"CFBundleIdentifier"];
       if([BundID containsString:@"ig"]){
           return getRealOffset(0x10A236320);
       }
       if([BundID containsString:@"kr"]){
           return getRealOffset(0x10A433B20);
       }
       if([BundID containsString:@"rekoo"]){
           return getRealOffset(0x10ab65e18);
       }
       if([BundID containsString:@"vn"]){
           return getRealOffset(0x10A57B6C8);
       }
       if([BundID containsString:@"imobile"]){
           return getRealOffset(0x10972E0A0);
       }
       return false;
   };
UWorld *GEWorld;
int GWorldNum = 0;
TUObjectArray gobjects;
UWorld *GetFullWorld()
{
    if(GWorldNum == 0) {
        gobjects = UObject::GUObjectArray->ObjObjects;
        for (int i=0; i< gobjects.Num(); i++)
            if (auto obj = gobjects.GetByIndex(i)) {
                if(obj->IsA(UEngine::StaticClass())) {
                    auto GEngine = (UEngine *) obj;
                    if(GEngine) {
                        tslFont = GEngine->MediumFont;
            robotoTinyFont = GEngine->MediumFont;
            robotoFont = GEngine->MediumFont;
                        auto ViewPort = GEngine->GameViewport;
                        if (ViewPort)
                        {
                            GEWorld = ViewPort->World;
                            GWorldNum = i;
                            return ViewPort->World;
                        }
                    }
                }
            }
    }else {
        auto GEngine = (UEngine *) (gobjects.GetByIndex(GWorldNum));
        if(GEngine) {
           tslFont = GEngine->MediumFont;
            robotoTinyFont = GEngine->MediumFont;
            robotoFont = GEngine->MediumFont;
            auto ViewPort = GEngine->GameViewport;
            if(ViewPort) {
                GEWorld = ViewPort->World;
                return ViewPort->World;
            }
        }
    }
    return 0;
}

TNameEntryArray *GetGNames() {
     NSDictionary *infoDictionary = [[NSBundle mainBundle] infoDictionary];
          NSString *BundID = [infoDictionary objectForKey:@"CFBundleIdentifier"];
        if([BundID containsString:@"ig"]){
            return ((TNameEntryArray *(*)()) ((unsigned long)_dyld_get_image_vmaddr_slide(1) +0x1046AEDD8))();
        }
        if([BundID containsString:@"kr"]){
            return ((TNameEntryArray *(*)()) ((unsigned long)_dyld_get_image_vmaddr_slide(1) +0x10486F930))();
        }
        if([BundID containsString:@"rekoo"]){
            return ((TNameEntryArray *(*)()) ((unsigned long)_dyld_get_image_vmaddr_slide(0) +0x1052DB4F4))();
        }
        if([BundID containsString:@"vn"]){
            return ((TNameEntryArray *(*)()) ((unsigned long)_dyld_get_image_vmaddr_slide(1) +0x1048F04E0))();
        }
        if([BundID containsString:@"imobile"]){
            return ((TNameEntryArray *(*)()) ((unsigned long)_dyld_get_image_vmaddr_slide(0) +0x1040C8F44))();
        }
        return 0;
    }

std::vector<AActor *> getActors() {
auto World = GetFullWorld();
if (!World)
return std::vector<AActor *>();

auto PersistentLevel = World->PersistentLevel;
if (!PersistentLevel)
return std::vector<AActor *>();

auto Actors = *(TArray<AActor *> *)((uintptr_t) PersistentLevel + 0xa0);

std::vector<AActor *> actors;
for (int i = 0; i < Actors.Num(); i++) {
auto Actor = Actors[i];
if (Actor) {
actors.push_back(Actor);
}
}
return actors;
}
template <class T> void GetAllActors(std::vector<T*>& Actors) {
    UGameplayStatics* gGameplayStatics = (UGameplayStatics*)gGameplayStatics->StaticClass();
    auto GWorld = GetFullWorld();
    if (GWorld) {
        TArray<AActor*> Actors2;
        gGameplayStatics->GetAllActorsOfClass((UObject*)GWorld, T::StaticClass(), &Actors2);
        for (int i = 0; i < Actors2.Num(); i++) {
            Actors.push_back((T*)Actors2[i]);
        }
    }
}
FVector GetBoneLocationByName(ASTExtraPlayerCharacter *Actor, const char *BoneName) {
    return Actor->GetBonePos(BoneName, FVector());
}

struct sRegion
{
    kaddr start, end;
};

std::vector<sRegion> trapRegions;

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
    if ((kaddr)(obj) % sizeof(kaddr) != 0x0 && (kaddr)(obj) % sizeof(kaddr) != 0x4)
    {
        return true;
    }
    if (std::any_of(trapRegions.begin(), trapRegions.end(), [&](const sRegion& region) { return ((kaddr)obj) >= region.start && ((kaddr)obj) <= region.end; }) || std::any_of(trapRegions.begin(), trapRegions.end(), [&](const sRegion& region) { return ((kaddr)obj->ClassPrivate) >= region.start && ((kaddr)obj->ClassPrivate) <= region.end; }))
    {
        return true;
    }
    return false;
}

bool WriteAddr(void *addr, void *buffer, size_t length) {
    unsigned long page_size = sysconf(_SC_PAGESIZE);
    unsigned long size = page_size * sizeof(kaddr);
    return mprotect((void *) ((kaddr) addr - ((kaddr) addr % page_size) - page_size), (size_t) size, PROT_EXEC | PROT_READ | PROT_WRITE) == 0 && memcpy(addr, buffer, length) != 0;
}
template<typename T>
void Write(kaddr addr, T value) {
    WriteAddr((void *) addr, &value, sizeof(T));
}

class Rect2 {
public:
    float x;
    float y;
    float width;
    float height;

    Rect2() {
        this->x = 0;
        this->y = 0;
        this->width = 0;
        this->height = 0;
    }

    Rect2(float x, float y, float width, float height) {
        this->x = x;
        this->y = y;
        this->width = width;
        this->height = height;
    }

    bool operator==(const Rect2 &src) const {
        return (src.x == this->x && src.y == this->y && src.height == this->height &&
                src.width == this->width);
    }

    bool operator!=(const Rect2 &src) const {
        return (src.x != this->x && src.y != this->y && src.height != this->height &&
                src.width != this->width);
    }
};
struct FLinearColor visCol;
ASTExtraPlayerCharacter *g_LocalPlayer;
ASTExtraPlayerController *g_PlayerController;
#define COLOR_BLACK FLinearColor(0, 0, 0, 1.f)
#define COLOR_WHITE FLinearColor(1.f, 1.f, 1.f, 1.f)
#define COLOR_RED   FLinearColor(1.f, 0, 0, 1.f)
#define COLOR_YELLOW  FLinearColor(1, 1, 0.f, 1.f)
#define COLOR_LIME  FLinearColor(0, 1.f, 0, 1.f)
#define COLOR_BLUE  FLinearColor(0, 0, 1.f, 1.f)
#define COLOR_CAR   FLinearColor(1.f, 0.5f, 1.f, 1.f)
#define GREEN       FLinearColor(0 / 255.f, 153 / 255.f, 0 / 255.f, 1.f)
#define ABU         FLinearColor(0 / 255.f, 204 / 255.f, 204 / 255.f, 1.f)
#define COLOR_GREEN FLinearColor(0, 0.5f, 0, 1.f)
#define COLOR_PLAYER FLinearColor(1.000f, 0.620f, 0.150f, 1.000f)
#define COLOR_ORANGE FLinearColor(1.f, 0.4f, 0, 1.f)
UGameplayStatics* iosde = (UGameplayStatics*)UGameplayStatics::StaticClass();
ASTExtraPlayerController *localPlayerController = 0;
#define W2S(w, s) iosde->ProjectWorldToScreen(localPlayerController, w, true, s)
FVector RotateCorner(FVector origin, FVector corner, float theta)
{
    float x = corner.X - origin.X;
    float y = corner.Y - origin.Y;
    return {
        origin.X + (x * cos(theta) - y * sin(theta)),
        origin.Y + (x * sin(theta) + y * cos(theta)),
        corner.Z
    };
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

void Circle3D(ImDrawList* draw, FVector origin, float radius, ImColor color, float thinkless)
{
    const int doan_thang = 50;
    float step = 2 * IM_PI / doan_thang;
    FVector2D prev;
    Vector3 curValid3 = Vector3(origin.X + radius, origin.Y, origin.Z);
    FVector curValidF;
    curValidF.X = curValid3.X;
    curValidF.Y = curValid3.Y;
    curValidF.Z = curValid3.Z;
    bool curValid = W2S(curValidF, &prev);

    for (int i = 1; i <= doan_thang; ++i)
    {
        float angle = i * step;
        FVector2D cur;
        Vector3 nextValid3 = Vector3(origin.X + radius * cos(angle), origin.Y + radius * sin(angle), origin.Z);
        FVector nextValidF;
        nextValidF.X = nextValid3.X;
        nextValidF.Y = nextValid3.Y;
        nextValidF.Z = nextValid3.Z;
        bool nextValid = W2S(nextValidF, &cur);
        if (curValid && nextValid)
        {
            draw->AddLine(ImVec2(prev.X, prev.Y), ImVec2(cur.X, cur.Y), color, thinkless);
        }
        curValid = nextValid;
        prev = cur;
    }
}

void DrawBox3D(AHUD *HUD, AActor* actor, FLinearColor Color, FVector origin, FVector extent) {
    auto MathLibrary = (UKismetMathLibrary *) UKismetMathLibrary::StaticClass();
    auto GameplayStatics = (UGameplayStatics *) UGameplayStatics::StaticClass();
    FRotator rotation = actor->K2_GetActorRotation();
    float yaw = MathLibrary->DegreesToRadians((int)(rotation.Yaw + 450.0f) % 360);
    FVector2D ts1, ts2, ts3, ts4, bs1, bs2, bs3, bs4;
    FVector t1, t2, t3, t4, b1, b2, b3, b4;
    t1 = t2 = t3 = t4 = b1 = b2 = b3 = b4 = origin;
    t1.X -= extent.X;
    t1.Y -= extent.Y;
    t1.Z -= extent.Z;
    t2.X += extent.X;
    t2.Y -= extent.Y;
    t2.Z -= extent.Z;
    t3.X += extent.X;
    t3.Y += extent.Y;
    t3.Z -= extent.Z;
    t4.X -= extent.X;
    t4.Y += extent.Y;
    t4.Z -= extent.Z;
    t1 = RotateCorner(origin, t1, yaw);
    t2 = RotateCorner(origin, t2, yaw);
    t3 = RotateCorner(origin, t3, yaw);
    t4 = RotateCorner(origin, t4, yaw);
    b1.X -= extent.X;
    b1.Y -= extent.Y;
    b1.Z += extent.Z;
    b2.X += extent.X;
    b2.Y -= extent.Y;
    b2.Z += extent.Z;
    b3.X += extent.X;
    b3.Y += extent.Y;
    b3.Z += extent.Z;
    b4.X -= extent.X;
    b4.Y += extent.Y;
    b4.Z += extent.Z;
    b1 = RotateCorner(origin, b1, yaw);
    b2 = RotateCorner(origin, b2, yaw);
    b3 = RotateCorner(origin, b3, yaw);
    b4 = RotateCorner(origin, b4, yaw);
    if (GameplayStatics->ProjectWorldToScreen(g_PlayerController, b1, false, &bs1) && GameplayStatics->ProjectWorldToScreen(g_PlayerController, b2, false, &bs2)&& GameplayStatics->ProjectWorldToScreen(g_PlayerController, b3, false, &bs3)&& GameplayStatics->ProjectWorldToScreen(g_PlayerController, b4, false, &bs4)&& GameplayStatics->ProjectWorldToScreen(g_PlayerController, t1, false, &ts1)&& GameplayStatics->ProjectWorldToScreen(g_PlayerController, t2, false, &ts2)&& GameplayStatics->ProjectWorldToScreen(g_PlayerController, t3, false, &ts3)&& GameplayStatics->ProjectWorldToScreen(g_PlayerController, t4, false, &ts4)) {
        DrawLine(HUD, ts1, ts2, EspBoxThik, Color);
        DrawLine(HUD, ts2, ts3, EspBoxThik, Color);
        DrawLine(HUD, ts3, ts4, EspBoxThik, Color);
        DrawLine(HUD, ts4, ts1, EspBoxThik, Color);
        DrawLine(HUD, bs1, bs2, EspBoxThik, Color);
        DrawLine(HUD, bs2, bs3, EspBoxThik, Color);
        DrawLine(HUD, bs3, bs4, EspBoxThik, Color);
        DrawLine(HUD, bs4, bs1, EspBoxThik, Color);
        DrawLine(HUD, ts1, bs1, EspBoxThik, Color);
        DrawLine(HUD, ts2, bs2, EspBoxThik, Color);
        DrawLine(HUD, ts3, bs3, EspBoxThik, Color);
        DrawLine(HUD, ts4, bs4, EspBoxThik, Color);
    }
}
void DrawWeirdBox(AHUD *HUD,AActor * actor, FLinearColor Color, FVector origin, FVector2D extent)
{
    auto GameplayStatics = (UGameplayStatics *) UGameplayStatics::StaticClass();
    FVector2D bs1 ,bs2, bs3, bs4;
    FVector b1, b2, b3, b4;
    b1 = b2 = b3 = b4 = origin;
    b1.X -= extent.X;
    b1.Y -= extent.Y;
    b2.X += extent.X;
    b2.Y -= extent.Y;
    b3.X += extent.X;
    b3.Y += extent.Y;
    b4.X -= extent.X;
    b4.Y += extent.Y;
    if (W2S(b1, &bs1)
        && W2S(b2, &bs2)
        && W2S(b3, &bs3)
        && W2S(b4, &bs4))
    {
        DrawLine(HUD,bs1, bs2, 2.5f, Color);
        DrawLine(HUD,bs2, bs3, 2.5f, Color);
        DrawLine(HUD,bs3, bs4, 2.5f, Color);
        DrawLine(HUD,bs4, bs1, 2.5f, Color);
    }
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

void DrawLine(AHUD *HUD, FVector2D posFrom, FVector2D posTo, float Thickness, FLinearColor Color) {
    HUD->DrawLine(posFrom.X, posFrom.Y, posTo.X, posTo.Y, Color, Thickness);
}
void drawVerticalHealthBar(AHUD *HUD, Vector2 screenPos, float height, float maxHealth, float currentHealth) {
    // Add the offset to screenPos by creating a new FVector2D
    screenPos += Vector2(8.0f, 0.0f);

    // Draw the background rectangle
    HUD->DrawRect(FLinearColor(0.08f, 0.08f, 0.08f, 0.78f), screenPos.X, screenPos.Y, 5.0f, height + 2);

    // Add the offset to screenPos by creating a new FVector2D
    screenPos += Vector2(1.0f, 1.0f);
    FLinearColor clr = FLinearColor(0.0f, 1.0f, 0.0f, 1.0f); // Green color

    float barHeight = (currentHealth / maxHealth) * height;

    // Change color based on health percentage
    if (currentHealth <= (maxHealth * 0.6)) {
        clr = FLinearColor(1.0f, 0.0f, 1.0f, 1.0f); // Magenta color
    }

    if (currentHealth < (maxHealth * 0.3)) {
        clr = FLinearColor(1.0f, 0.0f, 0.0f, 1.0f); // Red color
    }

    // Draw the health bar rectangle
    HUD->DrawRect(clr, screenPos.X, screenPos.Y, 3.0f, barHeight);
}
void Box4Line(AHUD *HUD, float thicc, int x, int y, int w, int h, FLinearColor color) {
    int iw = w / 4;
    int ih = h / 4;

    // Convert color from int to FLinearColor if necessary
    // FLinearColor color = IntToColor(colorInt);

    // top
    HUD->DrawLine(x, y, x + iw, y, color, thicc);
    HUD->DrawLine(x + w - iw, y, x + w, y, color, thicc);
    HUD->DrawLine(x, y, x, y + ih, color, thicc);
    HUD->DrawLine(x + w - 1, y, x + w - 1, y + ih, color, thicc);

    // bottom
    HUD->DrawLine(x, y + h, x + iw, y + h, color, thicc);
    HUD->DrawLine(x + w - iw, y + h, x + w, y + h, color, thicc);
    HUD->DrawLine(x, y + h - ih, x, y + h, color, thicc);
    HUD->DrawLine(x + w - 1, y + h - ih, x + w - 1, y + h, color, thicc);
}
#define TSL_FONT_DEFAULT_SIZE 20
static UFont *robotoFont = 0, *robotoTinyFont = 0,*tslFont = 0;

void DrawOutlinedText(AHUD *HUD, FString Text, FVector2D Pos, FLinearColor Color, FLinearColor OutlineColor, bool isCenter = false) {
    UCanvas *Canvas = HUD->Canvas;
    Canvas->K2_DrawText(robotoFont, Text, Pos, Color, 1.f, {}, {}, isCenter, isCenter, true, OutlineColor);
}

void HealthBar(AHUD *HUD, ASTExtraCharacter* pEntity, int x, int y, int height ,FLinearColor color)
{
    float flBoxes = std::ceil( pEntity->Health / 10.f );
    float flX = x - 7 - height / 3.f; float flY = y - 1;
    float flHeight = height / 10.f;
    float flMultiplier = 12 / 360.f; flMultiplier *= flBoxes - 1;
    HUD->DrawRect( color,flX, flY, 4, height + 2 );
    DrawRectangle(HUD,  flX, flY, 4, height + 2, color);
    HUD->DrawRect(color,flX + 1, flY, 2, flHeight * flBoxes + 1 );
    for ( int i = 0; i < 10; i++ )
        HUD->DrawLine( flX, flY + i * flHeight, flX + 4, flY + i * flHeight ,color,1.f);
}

void HealthBarnew( AHUD *HUD,float Health, float x, float y, int height )
{
    float flBoxes = std::ceil( Health / 10.f );
    float flX = x - 7 - height / 3.f; float flY = y - 1;
    float flHeight = height / 10.f;
    float flMultiplier = 12 / 360.f; flMultiplier *= flBoxes - 1;
    //FLinearColor  ColHealth =( flMultiplier, 1, 1 );
    DrawRectangle( HUD,flX, flY, 4, height + 2, COLOR_YELLOW );
    DrawFilledRectangle(HUD,{flX, flY}, 4, height + 2, COLOR_BLACK);
    DrawRectangle( HUD,flX + 1, flY, 2, flHeight * flBoxes + 1, COLOR_RED );
}
void Draw3DBox(AHUD *HUD, FVector2D s1, FVector2D s2, FVector2D s3, FVector2D s4, FVector2D s5, FVector2D s6, FVector2D s7 , FVector2D s8, float Thickness, FLinearColor Color){
    HUD->DrawLine(s1.X,s1.Y, s2.X,s2.Y, Color, Thickness);
    HUD->DrawLine(s2.X,s2.Y, s3.X,s3.Y, Color, Thickness);
    HUD->DrawLine(s3.X,s3.Y, s4.X,s4.Y, Color, Thickness);
    HUD->DrawLine(s4.X,s4.Y, s1.X,s1.Y, Color, Thickness);
    HUD->DrawLine(s5.X,s5.Y, s6.X,s6.Y, Color, Thickness);
    HUD->DrawLine(s6.X,s6.Y, s7.X,s7.Y, Color, Thickness);
    HUD->DrawLine(s7.X,s7.Y, s8.X,s8.Y, Color, Thickness);
    HUD->DrawLine(s8.X,s8.Y, s5.X,s5.Y, Color, Thickness);
    HUD->DrawLine(s1.X,s1.Y, s5.X,s5.Y, Color, Thickness);
    HUD->DrawLine(s2.X,s2.Y, s6.X,s6.Y, Color, Thickness);
    HUD->DrawLine(s3.X,s3.Y, s7.X,s7.Y, Color, Thickness);
    HUD->DrawLine(s4.X,s4.Y, s8.X,s8.Y, Color, Thickness);
}

void VericalHEALTHBAR(AHUD *HUD, float x, float y, float Health,FLinearColor color ,bool vertical)
{
    if (Health>0)
    {
        if (vertical)
        {
            HUD->   DrawRect(color, x - 1, y - 1, 7, 102);
            if ( Health > 1)
                HUD-> DrawRect(color, x, y, 5, 10);
            if ( Health > 10)
                HUD->DrawRect(color, x, y + 10, 5, 10);
            if ( Health > 20)
                HUD-> DrawRect(color, x, y + 20, 5, 10);
            if ( Health > 30)
                HUD->   DrawRect(color, x, y + 30, 5, 10);
            if ( Health > 40)
                HUD->   DrawRect(color, x, y + 40, 5, 10);
            if ( Health > 50)
                HUD->   DrawRect(color, x, y + 50, 5, 10);
            if ( Health > 60)
                HUD->   DrawRect( color, x, y + 60, 5, 10);
            if ( Health > 70)
                HUD->   DrawRect(color, x, y + 70, 5, 10);
            if ( Health > 80)
                HUD->   DrawRect(color, x, y + 80, 5, 10);
            if ( Health > 100)
                HUD->  DrawRect( color, x, y + 90, 5, 10);
            for (size_t i = 0; i < 20; i++)
                HUD->  DrawRect(color, x, y + (i * 5), 5, 1);
        }
    }
}

int GetDeviceMaxFPSByDeviceLevel(int a1, int a2, Byte *a3)
{
    int result;
    result = 120;//Ur FPS
    *a3 = result;
    return result;
}


void DrawText(AHUD *HUD, FString Text, FVector2D Pos, FLinearColor Color, bool isCenter = false) {
    UCanvas *Canvas = HUD->Canvas;
    Canvas->K2_DrawText(robotoFont, Text, Pos, Color, 1.f, {}, {}, isCenter, isCenter, false, {});
}

void DrawSmallOutlinedText(AHUD *HUD, FString Text, FVector2D Pos, FLinearColor Color, FLinearColor OutlineColor, bool isCenter = false) {
    UCanvas *Canvas = HUD->Canvas;
    Canvas->K2_DrawText(robotoTinyFont, Text, Pos, Color, 1.f, {}, {}, isCenter, isCenter, true, OutlineColor);
}

void DrawSmallText(AHUD *HUD, FString Text, FVector2D Pos, FLinearColor Color, bool isCenter = false) {
    UCanvas *Canvas = HUD->Canvas;
    Canvas->K2_DrawText(robotoTinyFont, Text, Pos, Color, 1.f, {}, {}, isCenter, isCenter, false, {});
}
void DrawTextcan(AHUD *HUD, FString Text, FVector2D Pos, FLinearColor Color, FLinearColor OutlineColor, bool isCenter = true) {
 UCanvas *Canvas = HUD->Canvas;   
 Canvas->K2_DrawText(tslFont, Text, Pos, Color, 1.f, {}, {}, isCenter, isCenter, true, OutlineColor);
}
void DrawCircle(AHUD *HUD, int x, int y, int radius, int numsides, FLinearColor OutlineColor){
    float Step = M_PI * 2.0 / numsides;
    int Count = 0;
    FVector2D V[128];
    for (float a = 0; a < M_PI * 2.0; a += Step)
    {
        float X1 = radius * cos(a) + x;
        float Y1 = radius * sin(a) + y;
        float X2 = radius * cos(a + Step) + x;
        float Y2 = radius * sin(a + Step) + y;
        V[Count].X = X1;
        V[Count].Y = Y1;
        V[Count + 1].X = X2;
        V[Count + 1].Y = Y2;
        HUD->Canvas->K2_DrawLine(FVector2D({ V[Count].X, V[Count].Y }), FVector2D({ X2, Y2 }), 1.f, OutlineColor);
    }
}
void DrawFilledCircle(AHUD *HUD, int x, int y, int radius, int numsides, FLinearColor OutlineColor, FLinearColor FillColor){
    float Step = M_PI * 2.0 / numsides;
    FVector2D Center(x, y);
    FVector2D V[128];
    for (int i = 0; i < numsides; ++i)
    {
        // Calculate vertices for the i-th triangle
        float Angle = Step * i;
        V[i].X = Center.X + radius * cos(Angle);
        V[i].Y = Center.Y + radius * sin(Angle);

        // Draw lines from the center to the vertices
        HUD->Canvas->K2_DrawLine(Center, V[i], 1.f, FillColor);
    }

    // Optionally, draw the outline by connecting the vertices
    for (int i = 0; i < numsides; ++i)
    {
        HUD->Canvas->K2_DrawLine(V[i], V[(i+1) % numsides], 1.f, OutlineColor);
    }
}
bool isEqual(FString s1, const char* check) {
    FString s2(check);
    return 0;
}
void *LoadFont() {
    while (!robotoFont || !robotoTinyFont || !tslFont) {
        tslFont = UObject::FindObject<UFont>("Font TSLFont.TSLFont");
        robotoFont = UObject::FindObject<UFont>("Font Roboto.Roboto");
        robotoTinyFont = UObject::FindObject<UFont>("Font RobotoTiny.RobotoTiny");
        sleep(1);
    }
    return 0;
}
const char *GetLootName(APickUpListWrapperActor *Loot) {
    switch (Loot->BoxType) {
        case EPickUpBoxType::EPickUpBoxType__EPickUpBoxType_LootBox:
            return "LootBox";
        case EPickUpBoxType::EPickUpBoxType__EPickUpBoxType_TombBox:
            return "TomBOX";
        case EPickUpBoxType::EPickUpBoxType__EPickUpBoxType_AirDropBox:
            return "Airdrop";
        default:
            return "LootBox";
    }
}
bool isEqual(string s1, string s2) {
    return (s1 == s2);
}






FString getplayerflag(FString nation) {
    if (isEqual(nation, "G1") ) {
        return "🏁";
    }
    if (isEqual(nation, "IQ") ) {
        return "🇮🇶";
    }
    if (isEqual(nation, "SA") ) {
        return "🇸🇦";
    }
    if (isEqual(nation, "BH") ) {
        return "🇧🇭";
    }
    if (isEqual(nation, "SY") ) {
        return "🇸🇾";
    }
    if (isEqual(nation, "CA") ) {
        return "🇨🇦";
    }
    if (isEqual(nation, "PK") ) {
        return "🇵🇰";
    }
    if (isEqual(nation, "AF") ) {
        return "🇦🇫";
    }
    if (isEqual(nation, "AL") ) {
        return "🇦🇱";
    }
    if (isEqual(nation, "DZ") ) {
        return "🇩🇿";
    }
    if (isEqual(nation, "AS") ) {
        return "🇦🇸";
    }
    if (isEqual(nation, "AD") ) {
        return "🇦🇩";
    }
    if (isEqual(nation, "AO") ) {
        return "🇦🇴";
    }
    if (isEqual(nation, "AI") ) {
        return "🇦🇮";
    }
    return "";}
ASTExtraVehicleBase *GetTargetVehicle() {
    ASTExtraPlayerCharacter *localPlayer = 0;
    ASTExtraPlayerController *localPlayerController = 0;
    UGameplayStatics *GameplayStatics = (UGameplayStatics *) UGameplayStatics::StaticClass();
    float max = std::numeric_limits < float >::infinity();
    ASTExtraVehicleBase *result = 0;
    std::vector<ASTExtraVehicleBase*> VehicleBase;
    GetAllActors(VehicleBase);
    for (auto actor = VehicleBase.begin(); actor != VehicleBase.end(); actor++) {
        auto Vehicle = *actor;
        if(!Vehicle)
            continue;
        if(!Vehicle->RootComponent)
            continue;
        if(!Vehicle->Mesh)
            continue;
        auto Driver = Vehicle->GetDriver();
        auto CurrentVeh = localPlayer->CurrentVehicle;
        if(Driver && !CurrentVeh) {
            if(Driver->TeamID == localPlayer->TeamID)
                continue;
            float dist = Vehicle->GetDistanceTo(localPlayer);
            if (dist < max) {
                max = dist;
                result = Vehicle;
            }
        }
    }
    return result;
    VehicleBase.clear();
}


FVector CHUTIA(ASTExtraVehicleBase * Vehicle)
{
    FVector DEFAULTSize, Shit;
    Vehicle->GetActorBounds(true, &Shit, &DEFAULTSize);
    switch (Vehicle->VehicleShapeType)
    {
        case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_Motorbike:
            return FVector(33 , 107, DEFAULTSize.Z); // done
            break;
        case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_Motorbike_SideCart:
            return FVector(89, 114, DEFAULTSize.Z); // done
            break;
        case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_Dacia:
        case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_HeavyDacia:
            return FVector(99, 209, DEFAULTSize.Z); //done
            break;
        case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_MiniBus:
            return FVector(102, 213, DEFAULTSize.Z); //done
            break;
        case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_PickUp:
        case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_PickUp01:
        case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_HeavyPickup:
            return FVector(128, 217, DEFAULTSize.Z); //done
            break;
        case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_Buggy:
        case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_HeavyBuggy:
            return FVector(139, 177, DEFAULTSize.Z); // done
            break;
        case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_UAZ:
        case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_UAZ01:
        case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_UAZ02:
        case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_UAZ03:
        case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_HeavyUAZ:
            return FVector(130, 226, DEFAULTSize.Z); // done
            break;
        case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_Mirado:
        case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_Mirado01:
            return FVector(120, 260, DEFAULTSize.Z); // done
            break;
        case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_Rony:
            return FVector(104, 219, DEFAULTSize.Z); //done
            break;
        case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_Scooter:
            return FVector(32, 89, DEFAULTSize.Z); //done
            break;
        case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_SnowMobile:
            return FVector(40, 133, DEFAULTSize.Z); //done
            break;
        case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_TukTukTuk:
            return FVector(84, 136, DEFAULTSize.Z); //done
            break;
        case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_SnowBike:
            return FVector(42, 137, DEFAULTSize.Z); // dome
            break;
        case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_GoldMirado:
            return FVector(120, 260, DEFAULTSize.Z); // done
            break;
        case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_Amphibious:
            return FVector(160, 284, DEFAULTSize.Z);
            break;
        default:
            return DEFAULTSize;
            break;
    }
    return DEFAULTSize;
}

//wstring playerstatus(int GetEnemyState)
//{
//    switch (GetEnemyState)
//    {
//        case 0:
//            return L"AFK";
//            break;
//        case 1032:
//            return L"TILT HEAD";
//            break;
//        case 268435464:
//            return L"PLAY EMOTION";
//            break;
//        case 1552:
//            return L"AIMING";

//            break;
//        case 8388616:
//            return L"PARACHUTE";
//            break;
//        case 131072:
//            return L"KNOCKED";
//            break;
//        case 33554440:
//            return L"PLANE";
//            break;
//        case 8205:
//            return L"SHOT";
//            break;
//        case 32:
//            return L"SIT";
//            break;
//        case 4194303:
//            return L"SWIMMING";
//            break;
//        case 72:
//            return L"JUMPING";
//            break;
//        case 8388608:
//            return L"PARACHUTE";
//            break;
//        case 16392:
//            return L"THROW SOMETHING";
//            break;
//        case 262:
//            return L"RELOADING";
//            break;
//        case 1048584:
//            return L"RIDE";
//            break;
//        case 8200:
//            return L"FIST";
//            break;
//        case 2056:
//            return L"CUT GUN";
//            break;
//        case 4194302:
//            return L"SWIMMING";
//            break;
//        case 269:
//            return L"RELOADING";
//            break;
//        case 16777224:
//            return L"CLIMBING";
//            break;
//        case 10:
//            return L"RUN";
//            break;
//        case 263:
//            return L"RELOADING";
//            break;
//        case 65568 || 65544:
//            return L"FIGHT MEDICINE";
//            break;
//        case 4194308:
//            return L"SWIMMING";
//            break;
//        case 268:
//            return L"RELOADING";
//            break;
//        case 35:
//            return L"GET SIT";
//            break;
//        case 8388617:
//            return L"PARACHUTE";
//            break;
//        case 33:
//            return L"AIMING";
//            break;
//        case 75:
//            return L"JUMPING";
//            break;
//        case 8201:
//            return L"FIST";
//            break;
//        case 266:
//            return L"RELOADING";
//            break;
//        case 32776:
//            return L"KNOCKED";
//            break;
//        case 270:
//            return L"RELOADING";
//            break;
//        case 4194301:
//            return L"SWIMMING";
//            break;
//        case 1033:
//            return L"RUN";
//            break;
//        case 131073:
//            return L"KNOCKED";
//            break;
//        case 524296:
//            return L"DRIVING";
//            break;
//        case 1114120:
//            return L"FIGHT MEDICINE";
//            break;
//        case 265:
//            return L"RELOADING";
//            break;
//        case 9:
//            return L"RUN";
//            break;
//        case 262144:
//            return L"SMOKE";
//            break;
//        case 8203:
//            return L"FIST";
//            break;
//        case 8202:
//            return L"SHOT";
//            break;
//        case 262152:
//            return L"DEATH";
//            break;
//        case 17416:
//            return L"THROW SOMETHING";
//            break;
//        case 17:
//            return L"SIT";
//            break;
//        case 11:
//            return L"RUN";
//            break;
//        case 65545:
//            return L"FIGHT MEDICINE";
//            break;
//        case 33554432:
//            return L"PLANE";
//            break;
//        case 19:
//            return L"SQUAT";
//            break;
//        case 8208:
//            return L"SHOT";
//            break;
//        case 520:
//            return L"AIMING";
//            break;
//        case 8206:
//            return L"SHOT";
//            break;
//        case 8:
//            return L"STAND";
//            break;
//        case 16:
//            return L"SIT";
//            break;
//        case 13180:
//            return L"KNOCKED";
//            break;
//        case 4194310:
//            return L"SWIMMING";
//            break;
//        case 16393:
//            return L"THROW SOMETHING";
//            break;
//        case 4194309:
//            return L"SWIMMING";
//            break;
//        case 264:
//            return L"RELOADING";
//            break;
//        case 4194305:
//            return L"SWIMMING";
//            break;
//        case 8207:
//            return L"SHOT";
//            break;
//        case 4194307:
//            return L"SWIMMING";
//            break;
//            return L"";
//    }
//
//}
wstring GetBoxItems(long code)
{
    if (code == 101008)
        return L"M762";
    else if (code == 101003)
        return L"SCAR-L";
    else if (code == 101004)
        return L"M416";
    else if (code == 101002)
        return L"M16A-4";
    else if (code == 103003)
        return L"AWM";
    else if (code == 103010)
        return L"QBU";
    else if (code == 103009)
        return L"SLR";
    else if (code == 103004)
        return L"SKS";
    else if (code == 103006)
        return L"Mini14";
    else if (code == 103002)
        return L"M24";
    else if (code == 103001)
        return L"Kar98k";
    else if (code == 103005)
        return L"VSS";
    else if (code == 103008)
        return L"Win94";
    else if (code == 101009)
        return L"Mk47";
    else if (code == 101010)
        return L"G36C";
    else if (code == 101007)
        return L"QBZ";
    else if (code == 101001)
        return L"AKM";
    else if (code == 101005)
        return L"Groza";
    else if (code == 101006)
        return L"AUG_A3";
    else if (code == 104003)
        return L"S12K";
    else if (code == 104004)
        return L"DBS";
    else if (code == 104001)
        return L"S686";
    else if (code == 104002)
        return L"S1897";
    else if (code == 106006)
        return L"SawedOff";
    else if (code == 102005)
        return L"PP19 Bizon";
    else if (code == 102004)
        return L"TommyGun";
    else if (code == 102007)
        return L"MP5K";
    else if (code == 102002)
        return L"UMP9";
    else if (code == 102003)
        return L"Vector";
    else if (code == 102001)
        return L"Uzi";
    else if (code == 106003)
        return L"R1895";
    else if (code == 106008)
        return L"Vz61";
    else if (code == 106001)
        return L"P92";
    else if (code == 106004)
        return L"P18C";
    else if (code == 106005)
        return L"R45";
    else if (code == 106002)
        return L"P1911";
    else if (code == 106010)
        return L"DesertEagle";
    else if (code == 108003)
        return L"Sickle";
    else if (code == 108001)
        return L"Machete";
    else if (code == 107001)
        return L"Cross Bow";
    else if (code == 108004)
        return L"Pan";
    else if (code == 103007)
        return L"Mk14";
    else if (code == 302001)
        return L"7.62";
    else if (code == 305001)
        return L"45ACP";
    else if (code == 303001)
        return L"5.56";
    else if (code == 301001)
        return L"9mm";
    else if (code == 306001)
        return L"300Magnum";
    else if (code == 304001)
        return L"12Guage";
    else if (code == 307001)
        return L"Arrows";
    else if (code == 201010)
        return L"Rifle-FlashHider";
    else if (code == 201009)
        return L"Rifle-Compensator";
    else if (code == 201004)
        return L"Mid Compensator";
    else if (code == 205002)
        return L"Tactical_Rifle";
    else if (code == 201012)
        return L"Duckbill";
    else if (code == 201005)
        return L"Sniper_FlashHider";
    else if (code == 201006)
        return L"Mid_Suppressor";
    else if (code == 205003)
        return L"Chekpad Sniper";
    else if (code == 201001)
        return L"Choke";
    else if (code == 205001)
        return L"UZI_Pickup";
    else if (code == 201003)
        return L"Sniper-Compensator";
    else if (code == 201007)
        return L"Sniper-Suppressor";
    else if (code == 201011)
        return L"Suppressor-AR";
    else if (code == 204009)
        return L"Sniper-Extended";
    else if (code == 204004)
        return L"Mid_E";
    else if (code == 204005)
        return L"Mid_Q";
    else if (code == 204007)
        return L"Sniper_Mag";
    else if (code == 204008)
        return L"Sniper_QuickMag";
    else if (code == 204012)
        return L"Rifle_Mag";
    else if (code == 204013)
        return L"Exteded AR";
    else if (code == 204011)
        return L"Mag-AR";
    else if (code == 204006)
        return L"Mid_EQ";
    else if (code == 205004)
        return L"Crossbow";
    else if (code == 204014)
        return L"ZDD_Sniper";
    else if (code == 203005)
        return L"8x";
    else if (code == 203003)
        return L"2x";
    else if (code == 203001)
        return L"Lazer";
    else if (code == 203014)
        return L"3X";
    else if (code == 203002)
        return L"Holo";
    else if (code == 203015)
        return L"6x";
    else if (code == 203004)
        return L"4x";
    else if (code == 105002)
        return L"DP28";
    else if (code == 107001)
        return L"CrossBow";
    else if (code == 105001)
        return L"M249";
    else if (code == 501006)
        return L"Bag Lv.3";
    else if (code == 501004)
        return L"Bag Lv.1";
    else if (code == 501005)
        return L"Bag Lv.2";
    else if (code == 503002)
        return L"Armour Lv.2";
    else if (code == 503001)
        return L"Armour Lv.1";
    else if (code == 503003)
        return L"Armour Lv.3";
    else if (code == 502002)
        return L"Helmet Lv.2";
    else if (code == 502001)
        return L"Helmet Lv.1";
    else if (code == 502003)
        return L"Helmet Lv.3";
    else if (code == 602004)
        return L"Grenade";
    else if (code == 602002)
        return L"Smoke";
    else if (code == 602003)
        return L"Molotof";
    else if (code == 602005)
        return L"Apple";
    else if (code == 601003)
        return L"Painkiller";
    else if (code == 601002)
        return L"Adrenaline";
    else if (code == 601001)
        return L"Energy Drink";
    else if (code == 601005)
        return L"FirstaidKit";
    else if (code == 601004)
        return L"Bandage";
    else if (code == 202006)
        return L"ThumbGrip";
    else if (code == 202007)
        return L"Lasersight";
    else if (code == 202001)
        return L"Angled";
    else if (code == 202004)
        return L"LightGrip";
    else if (code == 106007)
        return L"Flaregun";
    else if (code == 3000312)
        return L"GameCoin";
    else if (code == 601006)
        return L"Medkit";
    else if (code == 308001)
        return L"Flaregun";
    else if (code == 501003)
        return L"Bag Lv.3";
    else if (code == 501002)
        return L"Bag Lv.2";
    else if (code == 501001)
        return L"Bag Lv.1";
    else if (code == 201002)
        return L"Mid_Compensator";
    else if (code == 502005)
        return L"Helmet Lv.2";
    else if (code == 403989)
        return L"Arctic-Suit";
    else if (code == 403045)
        return L"Woodland-Suit";
    else if (code == 403187)
        return L"Desert-Suit";
    else if (code == 403188)
        return L"Desert-Suit";
    else
        return L"";
    
}
bool _read(kaddr addr, void *buffer, int len)
{
    if (!IsValidAddress(addr)) return false;
    vm_size_t size = 0;
    kern_return_t error = vm_read_overwrite(mach_task_self(), (vm_address_t)addr, len, (vm_address_t)buffer, &size);
    if(error != KERN_SUCCESS || size != len)
    {
        return false;
    }
    return true;
}

bool _write(kaddr addr, void *buffer, int len)
{
    if (!IsValidAddress(addr)) return false;
    kern_return_t error = vm_write(mach_task_self(), (vm_address_t)addr, (vm_offset_t)buffer, (mach_msg_type_number_t)len);
    if(error != KERN_SUCCESS)
    {
        return false;
    }
    return true;
}
kaddr GetRealOffset(kaddr offset) {
    if (module == 0) {
        return 0;
    }
    return (module + offset);
}
template<typename T> T Read(kaddr addr) {
    T data;
    _read(addr, reinterpret_cast<void *>(&data), sizeof(T));
    return data;
}


#define W2S(w, s) UGameplayStatics::ProjectWorldToScreen(g_PlayerController, w, false, s)

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

 
FVector2D WorldToRadar(float Yaw, FVector Origin, FVector LocalOrigin, float PosX, float PosY,
                       FVector Size, bool & outbuff)
{
    bool flag = false;
    double num = (double)Yaw;
    double num2 = num * 0.017453292519943295;
    float num3 = (float)std::cos(num2);
    float num4 = (float)std::sin(num2);
    float num5 = Origin.X - LocalOrigin.X;
    float num6 = Origin.Y - LocalOrigin.Y;
    FVector2D vector;
    vector.X = (num6 * num3 - num5 * num4) / 150.f;
    vector.Y = (num5 * num3 + num6 * num4) / 150.f;
    FVector2D vector2;
    vector2.X = vector.X + PosX + Size.X / 2.f;
    vector2.Y = -vector.Y + PosY + Size.Y / 2.f;
    bool flag2 = vector2.X > PosX + Size.X;
    if (flag2)
    {
        vector2.X = PosX + Size.X;
    }
    else
    {
        bool flag3 = vector2.X < PosX;
        if (flag3)
        {
            vector2.X = PosX;
        }
    }
    bool flag4 = vector2.Y > PosY + Size.Y;
    if (flag4)
    {
        vector2.Y = PosY + Size.Y;
    }
    else
    {
        bool flag5 = vector2.Y < PosY;
        if (flag5)
        {
            vector2.Y = PosY;
        }
    }
    bool flag6 = vector2.Y == PosY || vector2.X == PosX;
    if (flag6)
    {
        flag = true;
    }
    outbuff = flag;
    return vector2;
}

auto GetTargetForBT()
{
    ASTExtraPlayerCharacter *result = 0;
    float max = std::numeric_limits<float>::infinity();
    auto GWorlld = GetFullWorld();
    if (GWorlld)
    {
        ULevel *PersistentLevel = GWorlld->PersistentLevel;
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

            if (Player->bHidden) //
                continue;

            //if (!Player->Mesh) //
            //    continue;

            if (!Player->RootComponent) //
                continue;

            if (preferences.Config.SilentAim.IgnoreKnocked) {
                if (Player->Health == 0.0f)
                    continue;
            }

            if (preferences.Config.SilentAim.IgnoreBot) {
                if (Player->bEnsure)
                    continue;
            }

                        auto Root = Player->GetBonePos("Root", {});
                        auto Head = Player->GetBonePos("Head", {});

                        FVector2D RootSc, HeadSc;
                        if (W2S(Root, &RootSc) && W2S(Head, &HeadSc))
                        {
                            float height = abs(HeadSc.Y - RootSc.Y);
                            float width = height * 1.00;

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


void VectorAnglesRadar(FVector& forward, FVector& angles)
{
    if (forward.X == 0.f && forward.Y == 0.f)
    {
        angles.X = forward.Z > 0.f ? -90.f : 90.f;
        angles.Y = 0.f;
    }
    else
    {
        angles.X = RAD2DEG(atan2(-forward.Z, forward.Size()));
        angles.Y = RAD2DEG(atan2(forward.Y, forward.X));
    }
    angles.Z = 0.f;
}
FRotator ToRotator(FVector local, FVector target) {
    FVector rotation;
    rotation.X = local.X - target.X;
    rotation.Y = local.Y - target.Y;
    rotation.Z = local.Z - target.Z;

    FRotator newViewAngle = {0};

    float hyp = sqrt(rotation.X * rotation.X + rotation.Y * rotation.Y);

    newViewAngle.Pitch = -atan(rotation.Z / hyp) * (180.f / (float) 3.14159265358979323846);
    newViewAngle.Yaw = atan(rotation.Y / rotation.X) * (180.f / (float) 3.14159265358979323846);
    newViewAngle.Roll = (float) 0.f;

    if (rotation.X >= 0.f)
        newViewAngle.Yaw += 180.0f;

    return newViewAngle;
}
void RotateTriangle(std::array < FVector2D, 39 > &points, float rotation)
{
    const auto points_center = (points.at(0) + points.at(1) + points.at(2) + points.at(3) + points.at(4) + points.at(5) + points.at(6)
                                + points.at(7) + points.at(8) + points.at(9) + points.at(10) + points.at(11) + points.at(12) + points.at(13)
                                + points.at(14) + points.at(15) + points.at(16) + points.at(17) + points.at(18) + points.at(19) + points.at(20)
                                + points.at(21) + points.at(22) + points.at(23) + points.at(24) + points.at(25) + points.at(26) + points.at(27)
                                + points.at(28) + points.at(29) + points.at(30) + points.at(31) + points.at(32) + points.at(33) + points.at(34)
                                + points.at(35) + points.at(36) + points.at(37) + points.at(38)) / 39;
    for (auto & point:points) {
        point = point - points_center;
        const auto temp_x = point.X;
        const auto temp_y = point.Y;
        const auto theta = DEG2RAD(rotation);
        const auto c = cosf(theta);
        const auto s = sinf(theta);
        point.X = temp_x * c - temp_y * s;
        point.Y = temp_x * s + temp_y * c;
        point = point + points_center;
    }
}
void FixTriangle(float& XPos, float& YPos, int screenDist){
    //
    // —————————Triangle X Pos—————————————
    if(XPos > (screenWidth - 16)) {
        XPos = screenWidth;
        XPos -= screenDist;
    }
    // ——————————————————————
    if(XPos < 16) {
        XPos = 16;
        XPos += screenDist;
    }
    // ————————— Triangle Y Pos —————————————
    if(YPos > (screenHeight - 16)) {
        YPos = screenHeight;
        YPos -= screenDist;
    }
    if(YPos < 16) {
        YPos = 16;
        YPos += screenDist;
    }
}
void DrawArrows(AHUD * hud,std::array < FVector2D, 39 > Loc, float thickness, FLinearColor color) {
    for (int i = 10; i < 25; i++) {
        DrawLine(hud,Loc.at(i), Loc.at(7), thickness, color);
    }
    for (int i = 26; i < 38; i++) {
        DrawLine(hud,Loc.at(i), Loc.at(7), thickness + 1.5, color);
        DrawLine(hud,Loc.at(i), Loc.at(8), thickness+ 1.5f, color);
        DrawLine(hud,Loc.at(i), Loc.at(9), thickness + 1.5f, color);
    }
    DrawLine(hud,Loc.at(0), Loc.at(1), thickness * 1.f, COLOR_BLACK);
    DrawLine(hud,Loc.at(1), Loc.at(2), thickness * 1.f, COLOR_BLACK);
    DrawLine(hud,Loc.at(2), Loc.at(6), thickness * 1.f, COLOR_BLACK);
    DrawLine(hud,Loc.at(6), Loc.at(5), thickness * 1.f, COLOR_BLACK);
    DrawLine(hud,Loc.at(5), Loc.at(4), thickness * 1.f, COLOR_BLACK);
    DrawLine(hud,Loc.at(4), Loc.at(3), thickness * 1.f, COLOR_BLACK);
    DrawLine(hud,Loc.at(3), Loc.at(0), thickness * 1.f, COLOR_BLACK);
}

static std::unordered_set<uint32_t> AlreadyChangedSet;
uintptr_t GetVirtualFunctionAddress(uintptr_t clazz, uintptr_t index)
{
    if (!clazz)
    {
        return 0;
    }
    uintptr_t vtablePtr = *(uintptr_t*)clazz;
    if (!vtablePtr)
    {
        return 0;
    }
    // Ensure index is within bounds of the vtable
    if (index < 0)
    {
        return 0;
    }
    return *((uintptr_t*)vtablePtr + index);
}
void ChangeItemAVc(uintptr_t thiz, int InItemID)
{
    if (thiz)
    {
        auto PrechangeitemAvatar_addr = GetVirtualFunctionAddress(thiz, 182); //vtable idx
        if (PrechangeitemAvatar_addr)
        {
            return ((void(*)(uintptr_t, int, bool))PrechangeitemAvatar_addr)(thiz, InItemID, true);
        }
    }
}

int glWidth, glHeight;
bool isInsideFOV(int x, int y) {
    if (!preferences.Config.SilentAim.Cross)
        return true;
    int circle_x = screenWidth / 2;
    int circle_y = screenHeight / 2;
    int rad = (int) preferences.Config.SilentAim.Cross * 2.0f;
    return (x - circle_x) * (x - circle_x) + (y - circle_y) * (y - circle_y) <= rad * rad;
}

auto GetTargetByCrossDist() {
    ASTExtraPlayerCharacter *result = 0;
    float max = std::numeric_limits<float>::infinity();

    auto localPlayer = g_LocalPlayer;
    auto localController = g_PlayerController;

    if (localPlayer && localController) {
        std::vector<ASTExtraPlayerCharacter *> PlayerCharacter;
        GetAllActors(PlayerCharacter);
        for (auto actor = PlayerCharacter.begin(); actor != PlayerCharacter.end(); actor++) {
            auto Player = *actor;

            if (Player->PlayerKey == localPlayer->PlayerKey)
                continue;

            if (Player->TeamID == localPlayer->TeamID)
                continue;

            if (Player->bDead)
                continue;

            if (Player->bHidden) //
                continue;

            //if (!Player->Mesh) //
            //    continue;

            if (!Player->RootComponent) //
                continue;

            if (preferences.Config.SilentAim.IgnoreKnocked) {
                if (Player->Health == 0.0f)
                    continue;
            }

            if (preferences.Config.SilentAim.IgnoreBot) {
                if (Player->bEnsure)
                    continue;
            }
            
            float dist = localPlayer->GetDistanceTo(Player) / 100.0f;           
				if (dist > g_disstance)
				continue;
            
            if (preferences.Config.SilentAim.VisCheck) {
                if (!localController->LineOfSightTo(Player, {0, 0, 0}, true))
                    continue;
            }
            auto Root = Player->GetBonePos("Root", {});
            auto Head = Player->GetBonePos("Head", {});

            FVector2D RootSc, HeadSc;
            if (W2S(Root, &RootSc) && W2S(Head, &HeadSc)) {
                float height = abs(HeadSc.Y - RootSc.Y);
                float width = height * 1.00;

                FVector middlePoint = {HeadSc.X + (width / 2), HeadSc.Y + (height / 2), 0};
                if ((middlePoint.X >= 0 && middlePoint.X <= (float) glWidth) &&
                    (middlePoint.Y >= 0 && middlePoint.Y <= (float) glHeight)) {
                    FVector2D v2Middle = FVector2D((float) (glWidth / 2), (float) (glHeight / 2));
                    FVector2D v2Loc = FVector2D(middlePoint.X, middlePoint.Y);
                    if(isInsideFOV((int)middlePoint.X, (int)middlePoint.Y )) {
                    float distance = FVector2D::Distance(v2Middle, v2Loc);
                    if (distance < max) {
                        max = distance;
                        result = Player;
                    }
                  }
                }
            }
        }
    }
    return result;
}
auto GetCurrentWeaponReplicated(ASTExtraPlayerCharacter * mode) {
    auto WeaponManagerComponent = mode->WeaponManagerComponent;
    if (WeaponManagerComponent) {
        auto propSlot = WeaponManagerComponent->GetCurrentUsingPropSlot();
        if ((int)propSlot.GetValue() >= 1 && (int)propSlot.GetValue() <= 3) {
            return (ASTExtraShootWeapon *)WeaponManagerComponent->CurrentWeaponReplicated;
        }
    }
}
void (*orig_shoot_event)(USTExtraShootWeaponComponent *thiz, FVector start, FRotator rot, void *unk1, int unk2) = 0; 
void shoot_event(USTExtraShootWeaponComponent *thiz, FVector start, FRotator rot, ASTExtraShootWeapon *weapon, int unk1) { 
if (preferences.Config.SilentAim.Enable) { 
 
       ASTExtraPlayerCharacter *Target = GetTargetByCrossDist();
             if (Target) { 
                bool triggerOk = false; 
                triggerOk = g_LocalPlayer->bIsWeaponFiring || g_LocalPlayer->bIsGunADS; 
            if (triggerOk) { 
          
             
FVector targetAimPos = Target->GetBonePos("clavicle_r", {0, 0, 0});//头部骨骼 
                
FRotator sex = ToRotator(start, targetAimPos); 
 
return orig_shoot_event(thiz, targetAimPos, sex, weapon, unk1); 
         
        } 
    } 
    } 
    return orig_shoot_event(thiz, start, rot, weapon, unk1); 
 
}
//载具读取//

const char *GetVehicleName(ASTExtraVehicleBase *Vehicle) {
    switch (Vehicle->VehicleShapeType) {
        case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_Unknown:
            return "Unknown";
            break;
        case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_Motorbike:
        case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_Motorbike_SideCart:
            return "Motorbike";
            break;
        case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_Dacia:
        case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_HeavyDacia:
            return "Dacia";
            break;
        case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_MiniBus:
            return "Mini Bus";
            break;
        case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_PickUp:
        case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_PickUp01:
        case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_HeavyPickup:
            return "Pick Up";
            break;
        case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_Buggy:
        case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_HeavyBuggy:
            return "Buggy";
            break;
        case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_UAZ:
        case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_UAZ01:
        case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_UAZ02:
        case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_UAZ03:
        case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_HeavyUAZ:
            return "UAZ";
            break;
        case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_PG117:
            return "PG117";
            break;
        case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_Aquarail:
            return "Aquarail";
            break;
        case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_Mirado:
        case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_Mirado01:
            return "Mirado";
            break;
        case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_Rony:
            return "Rony";
            break;
        case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_Scooter:
            return "Scooter";
            break;
        case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_SnowMobile:
            return "Snow Mobile";
            break;
        case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_TukTukTuk:
            return "Tuk Tuk";
            break;
        case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_SnowBike:
            return "Snow Bike";
            break;
        case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_Surfboard:
            return "Surf Board";
            break;
        case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_Snowboard:
            return "Snow Board";
            break;
        case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_UH60:
            return "UH60";
            break;
        case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_Amphibious:
            return "Amphibious";
            break;
        case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_LadaNiva:
            return "Lada Niva";
            break;
        case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_UAV:
            return "UAV";
            break;
        case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_LootTruck:
            return "Loot Truck";
            break;
        case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_ATGMotorCycle:
            return "ATG Motor Cycle";
            break;
        case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_ModelY:
            return "Model Y";
            break;
        case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_ATV:
            return "ATV";
            break;
        case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_SciFi:
            return "SciFi";
            break;
        case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_LionDance:
            return "Lion Dance";
            break;
        case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_MegaDrop:
            return "Mega Drop";
            break;
        case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_Lamborghini:
        case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_Lamborghini01:
            return "Lamborghini";
            break;
        case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_GoldMirado:
            return "Gold Mirado";
            break;
        case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_BigFoot:
            return "Big Foot";
            break;
        case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_HeavyUH60:
            return "Heavy UH60";
            break;
        case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_TrackVehicle:
            return "Track Vehicle";
            break;
        case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_Motorglider:
            return "Motor glider";
            break;
        case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_CoupeRB:
            return "Coupe RB";
            break;
        case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_CatapultMachine:
            return "Catapult Machine";
            break;
        case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_MediumTank:
            return "Medium Tank";
            break;
        case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_WingMan:
            return "Wing Man";
            break;
        case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_Bike:
            return "Bike";
            break;
        case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_UTV:
            return "UTV";
            break;
        case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_Bike_WithRack:
            return "Bike with Rack";
            break;
        case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_LightTank:
            return "Light Tank";
            break;
        case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_HeavyTank:
            return "Heavy Tank";
            break;
        case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_RaptorDinosaur:
            return "Raptor Dinosaur";
            break;
        case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_Pterosaur:
            return "Pterosaur";
            break;
        case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_TyrannosaurusRex:
            return "Tyrannosaurus Rex";
            break;
        case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_RubberDuck:
            return "Rubber Duck";
            break;
        case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_CapsuleVehicle:
            return "Capsule Vehicle";
            break;
        case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_PreparedVeh1:
            return "Prepared Vehicle 1";
            break;
        case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_PreparedVeh2:
            return "Prepared Vehicle 2";
            break;
        default:
            return "Vehicle";
            break;
    }
    return "Vehicle";
}



void RenderESP(AHUD *HUD, int ScreenWidth, int ScreenHeight) {
    updateSkin();
        ASTExtraPlayerCharacter *localPlayer = 0;
        ASTExtraPlayerController *localPlayerController = 0;
        glWidth = ScreenWidth;
        glHeight = ScreenHeight;

	//加载画布
        UCanvas *Canvas = HUD->Canvas;
        if (Canvas) {

            static bool loadFont = false;
        if (!loadFont) {
            LoadFont();
            loadFont = true;
        }
        
            if (!robotoFont || !tslFont || !robotoTinyFont)
                return;
            tslFont->LegacyFontSize = 15;
std::wstring name = L"Mute";
            DrawTextcan(HUD, FString(name), {(float) screenWidth/2, 70}, COLOR_RED, COLOR_BLACK);
            UGameplayStatics *gGameplayStatics = (UGameplayStatics *) UGameplayStatics::StaticClass();
auto Actors = getActors();

    auto GWorlld = GetFullWorld();
           // UGameplayStatics *gGameplayStatics = (UGameplayStatics *) UGameplayStatics::StaticClass();
    if (GWorlld)
    {

for (int i = 0; i < Actors.size(); i++)
                {
                    auto Actor = Actors[i];
                    if (isObjectInvalid(Actor))
                        continue;
std::wstring name = L"đị";
            DrawTextcan(HUD, FString(name), {(float) screenWidth/2, 180}, COLOR_WHITE, COLOR_BLACK);
     std::string classname = Actor->GetName();
               if (classname.find("AirAttackBomb_C") != std::string::npos || classname.find("AirAttackBomb_Livik_C") != std::string::npos) {
                FVector2D LootPos;
       FVector PosV = Actor->K2_GetActorLocation();
       float Distance = Actor->GetDistanceTo(localPlayer) / 100.f;
       std::wstring tmp = L"!! [警报]空袭 !!";
      DrawText(HUD, FString(tmp), {(float) screenWidth / 2, 150},
                                         COLOR_RED, true);
                                    if (gGameplayStatics->ProjectWorldToScreen(
                                            localPlayerController,
                                            Actor->RootComponent->RelativeLocation,
                                            false, &LootPos)) {
                                        std::string s = "炸弹";
                                       s += " (";
                                       s += std::to_string((int) Distance);
                                       s += "m)";
   //    DrawBorderString(font3, 20, s.c_str(), LootPos.X, LootPos.Y, ImColor(255, 255, 0), true);
     //     RenderCircle3D(FVector(PosV.X, PosV.Y, PosV.Z - 100), 50.f, 600.f, ImColor(255, 255, 255));
       ///draw->AddImage(Rocket.textureID, ImVec2(LootPos.X - 20, LootPos.Y - 25), ImVec2(LootPos.X + 20, LootPos.Y - 5));
        }
    }
}
}
            auto GWorld = GetFullWorld();
            if (GWorld) {
                UNetDriver *NetDriver = GWorld->NetDriver;
                if (NetDriver) {
                    UNetConnection *ServerConnection = NetDriver->ServerConnection;
                    if (ServerConnection) {
                        localPlayerController = (ASTExtraPlayerController *) ServerConnection->PlayerController;
                    }
                }
            
    if (thongtin)
    {
       
        std::vector < ASTExtraGameStateBase * >ingame;
        std::vector < UGameLevelManagerComponent * >cheat;
        GetAllActors(ingame);
        for (auto actor = ingame.begin();
             actor != ingame.end(); actor++)
        {
            

            auto ingame = *actor;
            auto game = *actor;
            auto cheat = *actor;
            std::string s;
            std::wstring p;

            s += "\n NGU ";
            s += "\n 对局信息 ";
            s += "\n 当前队伍: ";
            s += std::to_string((int) ingame->PlayerNumPerTeam);
            s += "\n 剩余队伍: ";
            s += std::to_string(ingame->AliveTeamNum);
            s += "\n 剩余玩家: ";
            s += std::to_string(game->AlivePlayerNum);
            s += "\n 真人数量: ";
            s += std::to_string(game->PlayerNum);
            s += "\n 队伍总数: ";
s += std::to_string(game->PlayerNumPerTeam);
s += "\n 时间  : ";
//            s += std::to_string((int) game->ElapsedTime);
//            s += "s | ";
            s += std::to_string((int) game->ElapsedTime / 60);
            s += " 分钟";
            tslFont->LegacyFontSize = 15;
            DrawText(HUD, FString(s),
                             FVector2D(screenWidth / 2 - 650,
                                       screenHeight / 2),
                             COLOR_WHITE, true);
            tslFont->LegacyFontSize = 15;
            
        } ingame.clear();
        
    }
    
                if (localPlayerController) {
                    localPlayerController->AntiCheatManagerComp = 0;
                    localPlayerController->bShouldReportAntiCheat = false;
                    localPlayerController->CheatClass =0;
                    localPlayerController->CheatManager =0;

                    
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

                    {
                        if (localPlayer) {
                         if (WideView) {
                auto ThirdPersonCameraComponent = localPlayer->ThirdPersonCameraComponent;
                if (ThirdPersonCameraComponent) {
                    *(float *) ((uintptr_t) &ThirdPersonCameraComponent->OrthoWidth - sizeof(float)) = WideValue;
                }
            }
                         auto WeaponManagerComponent = localPlayer->WeaponManagerComponent;
                        if (preferences.Config.SilentAim.AimBot) {
                                ASTExtraPlayerCharacter *Target = GetTargetByCrossDist();
                                
                                                                  
    if (Target) {
        bool triggerOk = false;
            if (AimF == 1) {
                triggerOk = g_LocalPlayer->bIsWeaponFiring;
            } else if (AimF == 2) {
                triggerOk = g_LocalPlayer->bIsGunADS;
            } else if (AimF == 3) {
                triggerOk = g_LocalPlayer->bIsWeaponFiring || g_LocalPlayer->bIsGunADS;
            }
	       if (triggerOk)
						{
     FVector targetAimPos;                                        if (preferences.Config.SilentAim.Target ==
                                            JsonPreferences::EAimTarget::Head) {
                                            targetAimPos = Target->GetBonePos("Head", {});
                                        }
                                        if (preferences.Config.SilentAim.Target ==
                                            JsonPreferences::EAimTarget::Chest) {
                                            targetAimPos = Target->GetBonePos("pelvis", {});
                                        }
							targetAimPos.Z -= 1.0f;
							auto WeaponManagerComponent = localPlayer->WeaponManagerComponent;
							if (WeaponManagerComponent)
							{
								auto propSlot = WeaponManagerComponent->GetCurrentUsingPropSlot();
								if ((int)propSlot.GetValue() >= 1 && (int)propSlot.GetValue() <= 3)
								{
									auto CurrentWeaponReplicated = (ASTExtraShootWeapon *)WeaponManagerComponent->CurrentWeaponReplicated;
									if (CurrentWeaponReplicated)
									{
										auto ShootWeaponComponent = CurrentWeaponReplicated->ShootWeaponComponent;
										if (ShootWeaponComponent)
										{
											UShootWeaponEntity *ShootWeaponEntityComponent = ShootWeaponComponent->ShootWeaponEntityComponent;
											if (ShootWeaponEntityComponent)
											{
												ASTExtraVehicleBase *CurrentVehicle = Target->CurrentVehicle;
												if (CurrentVehicle)
												{
													FVector LinearVelocity = CurrentVehicle->ReplicatedMovement.LinearVelocity;
													float dist = localPlayer->GetDistanceTo(Target);
													auto timeToTravel = dist / ShootWeaponEntityComponent->BulletFireSpeed;
													targetAimPos = UKismetMathLibrary::Add_VectorVector(targetAimPos, UKismetMathLibrary::Multiply_VectorFloat(LinearVelocity, timeToTravel));
												}
												else
												{
													FVector Velocity = Target->GetVelocity();
													float dist = localPlayer->GetDistanceTo(Target);
													auto timeToTravel = dist / ShootWeaponEntityComponent->BulletFireSpeed;
													targetAimPos = UKismetMathLibrary::Add_VectorVector(targetAimPos, UKismetMathLibrary::Multiply_VectorFloat(Velocity, timeToTravel));
												}
												                                                if (localPlayer->bIsWeaponFiring) {
                            float dist = localPlayer->GetDistanceTo(Target) / 100.f;  
                            targetAimPos.Z -= dist * Aimsmooth;        
                            }
                                                FVector fDir = UKismetMathLibrary::Subtract_VectorVector(targetAimPos, g_PlayerController->PlayerCameraManager->CameraCache.POV.Location);
                FRotator Yaptr = UKismetMathLibrary::Conv_VectorToRotator(fDir);
   
                FRotator CpYaT = g_PlayerController->PlayerCameraManager->CameraCache.POV.Rotation;
         
                                           
           
                                            Yaptr.Pitch -= CpYaT.Pitch;
                                            Yaptr.Yaw -= CpYaT.Yaw;
                                            Yaptr.Roll = 0.f;
                                            NekoHook(Yaptr);

                                            CpYaT.Pitch += Yaptr.Pitch / Xs; // Aim X Speed Make Float : Xs
                                            CpYaT.Yaw += Yaptr.Yaw / Ys; // Aim Y Speed Make Float : Ys
                                            CpYaT.Roll = 0.f;

            g_PlayerController->SetControlRotation(CpYaT,"");
												//g_PlayerController->SetControlRotation(ToRotator(g_PlayerController->PlayerCameraManager->CameraCache.POV.Location, targetAimPos),""); 											
										      }
                                 }                                            
                             }
                         }           }
                                }
                            }
                        }
                   if (preferences.Config.SilentAim.Enable) {
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
                                    if (VTable && (VTable[shoot_event_idx] != shoot_event)) {
                                        orig_shoot_event = decltype(orig_shoot_event)(
                                                VTable[shoot_event_idx]);
                                        VTable[shoot_event_idx] = (void *) shoot_event;
                                    }
                                }
                            }
                        }
                    }
                }

               if (preferences.Config.SilentAim.Enable || preferences.Config.SilentAim.AimBot){
                DrawCircle(HUD, ScreenWidth/2, ScreenHeight/2, preferences.Config.SilentAim.Cross, 100, COLOR_WHITE);
                    }
//动态自瞄圈
               if (preferences.Config.SilentAim.Fov) {
               if (preferences.Config.SilentAim.AimBot) {
        if (g_LocalPlayer->bIsWeaponFiring) {
        preferences.Config.SilentAim.Cross -= 17.8f;  //--FOV decreasing speed
        if (preferences.Config.SilentAim.Cross < 199.0f){
        preferences.Config.SilentAim.Cross = 200.0f;  //--Minimum FOV size
        }}else{
        preferences.Config.SilentAim.Cross += 18.5f;  //--FOV Regain Speed
        if (preferences.Config.SilentAim.Cross > 401.0f){
        preferences.Config.SilentAim.Cross = 400.0f;  //--Maximum FOV size
        }}}
//动态追踪圈
  if (preferences.Config.SilentAim.Enable) {
        if (g_LocalPlayer->bIsWeaponFiring) { 
        preferences.Config.SilentAim.Cross -= 17.8f;   //--FOV decreasing speed
        if (preferences.Config.SilentAim.Cross < 199.0f){
        preferences.Config.SilentAim.Cross = 200.0f;   //--Minimum FOV size
        }}else{
        preferences.Config.SilentAim.Cross += 18.5f;   //--FOV Regain Speed
        if (preferences.Config.SilentAim.Cross > 401.0f){
        preferences.Config.SilentAim.Cross = 400.0f;   //--Maximum FOV size
        }}}
}







if (tiaosan) {
            if(localPlayer){
                if(   localPlayer->ParachuteComponent) {
                    localPlayer-> ParachuteComponent->CurrentFallSpeed = (float) 8300;
                    localPlayer->  ParachuteComponent->FreeFall_AcceFall = (float) 25000;
                    localPlayer->  ParachuteComponent->FreeFall_MaxFreeFallSpeed = (float) 25000;
                    localPlayer-> ParachuteComponent->FreeFall_AcceForward = (float) 25000;
                    localPlayer-> ParachuteComponent->FreeFall_MaxForwardExtraFallSpeed = (float) 25000;
                    localPlayer-> ParachuteComponent->Opened_AcceFall = (float) 5000;
                    localPlayer->  ParachuteComponent->Opened_MaxFreeFallSpeed = (float) 5000;
                    localPlayer->  ParachuteComponent->Opened_AcceForward = (float) 5000;
                    localPlayer-> ParachuteComponent->Opened_MaxForwardSpeed = (float) 5000;
                    localPlayer->  ParachuteComponent->Opened_MaxForwardExtraFallSpeed = (float) 5000;
                    localPlayer->  ParachuteComponent->FreeFall_AcceForward = (float) 5000;
                    localPlayer-> ParachuteComponent->FreeFall_MaxForwardExtraFallSpeed = (float) 5000;
                    localPlayer->  ParachuteComponent->Opened_AcceFall = (float) 5000;
                    localPlayer-> ParachuteComponent->Opened_MaxFreeFallSpeed = (float) 5000;
                    localPlayer-> ParachuteComponent->Opened_AcceForward = (float) 5000;
                    localPlayer-> ParachuteComponent->AllowMaxDiatanceSqAtServer = (float) 40000;
                    localPlayer-> ParachuteComponent->MaxZAllowDistance = (float) 40000;
                }}
        }


if(feiche){
    if (localPlayer->CurrentVehicle) {
                                    auto CurrentVehicle = localPlayer->CurrentVehicle;
                                    auto RootComponent = static_cast<UPrimitiveComponent*>(CurrentVehicle->K2_GetRootComponent());
                                    if (RootComponent) {
                                        if (localPlayer->CurrentVehicle->GetMoveForwardRate() > 0) {
                                            FVector 向量;
                                            auto 控件 = g_PlayerController->PlayerCameraManager->CameraCache.POV.Rotation.Yaw;
                                            float 距离 = 2.f * (控件 / 360.f) * M_PI;
                                            
                                            向量.X = (130 /* disired speed*/ * cosf(距离));
                                           向量.Y = (130 * sinf(距离));
                                            
                                            RootComponent->SetAllPhysicsLinearVelocity(向量, true);
                                        }

                                    }
                                }
                                
                            }       



                                if(!localPlayer->IsUsingGrenade()) {
                                    auto WeaponManagerComponent = localPlayer->WeaponManagerComponent;
                                    if (WeaponManagerComponent) {
                                        auto propSlot = WeaponManagerComponent->GetCurrentUsingPropSlot();
                                        if ((int) propSlot.GetValue() >= 1 &&
                                            (int) propSlot.GetValue() <= 3) {
                                            auto CurrentWeaponReplicated = (ASTExtraShootWeapon *) WeaponManagerComponent->CurrentWeaponReplicated;
                                            if (CurrentWeaponReplicated) {
                                                auto ShootWeaponEntityComp = CurrentWeaponReplicated->ShootWeaponEntityComp;
                                                auto ShootWeaponEffectComp = CurrentWeaponReplicated->ShootWeaponEffectComp;
                                                
                                                
                                                auto ID = CurrentWeaponReplicated->GetWeaponID();
                                                if(ID != 108004 && ID != 108003 && ID != 108002 && ID != 108001 && ID != 108000 && ID != 108005 && ID != 108006 && ID != 108007)
                                                    if (ShootWeaponEntityComp && ShootWeaponEffectComp)
                                                    {
                                                        if(IsCrossHair){
                                                            static float cnt = 0.0f;
                                                            float r = cos(cnt) * .5f + .5f;
                                                            float g = cos(cnt - 2.f * 3.14 / 3.f) * .5f + .5f;
                                                            float b = cos(cnt - 4.f * 3.14 / 3.f) * .5f + .5f;
                                                            if (cnt >= FLT_MAX) {
                                                                cnt = 0.0f;
                                                            } else {
                                                                cnt += 0.01f;
                                                            }
                                                            
                                                            memset(&ShootWeaponEntityComp->DeviationInfo, 0, sizeof(FSDeviation));
                                                            memset(&ShootWeaponEntityComp->RecoilInfo, 0, sizeof(FSRecoilInfo));
                                                            
                                                            ShootWeaponEntityComp->ShotGunCenterPerc = 0.0f;
                                                            ShootWeaponEntityComp->ShotGunVerticalSpread = 0.0f;
                                                            ShootWeaponEntityComp->ShotGunHorizontalSpread = 0.0f;
                                                            ShootWeaponEntityComp->GameDeviationFactor = 0.0f;
                                                            ShootWeaponEntityComp->GameDeviationAccuracy = 0.0f;
                                                            ShootWeaponEntityComp->CrossHairInitialSize = 0.0f;
                                                            ShootWeaponEntityComp->CrossHairBurstSpeed = 0.0f;
                                                            ShootWeaponEntityComp->CrossHairBurstIncreaseSpeed = 0.0f;
                                                            ShootWeaponEntityComp->VehicleWeaponDeviationAngle = 0.0f;
                                                        
                                                        }
if(preferences.Config.SilentAim.HitX){
                                                            ShootWeaponEntityComp->ExtraHitPerformScale = 100;
                                                            ShootWeaponEntityComp->HUDAlphaDecreaseSpeedScale = 1.f;
                                                        }
                                                        if(preferences.Config.SilentAim.ReCo){
                                                            {
                                                                ShootWeaponEntityComp->AccessoriesVRecoilFactor = 0.0f;
                                                                ShootWeaponEntityComp->AccessoriesHRecoilFactor = 0.0f;
                                                                ShootWeaponEntityComp->AccessoriesRecoveryFactor = 0.0f;
                                                            }
                                                        }
                                                        if(preferences.Config.SilentAim.FastShoot){
                                                            ShootWeaponEntityComp->ShootInterval =0.060606f;
                                                        }

}
                                            }
                                        }
                                    }
                                }





                        if (ModSkinn){
                       if (DeadBox){
                       std::vector<APlayerTombBox *> TombBox;
                        GetAllActors(TombBox);
                        for (auto actor = TombBox.begin();
                             actor != TombBox.end(); actor++) {
                            auto TombBoxx = *actor;
                            if (TombBoxx && TombBoxx->DamageCauser && TombBoxx->TargetPlayer && g_PlayerController) // Check pointers before dereferencing
                            {
                                if (TombBoxx->DamageCauser->PlayerKey == g_PlayerController->PlayerKey)
                                {
                                    auto PlayerKey = TombBoxx->TargetPlayer->PlayerKey;
                                    if (AlreadyChangedSet.find(PlayerKey) == AlreadyChangedSet.end())
                                    {
                                        if (g_LocalPlayer && g_LocalPlayer->WeaponManagerComponent) // Check pointers before dereferencing
                                        {
                                            auto DeadBoxAvatarCompPtr = (uintptr_t*)((uintptr_t)TombBoxx + 0x628); //DeadBoxAvatarComponent_BP_C* DeadBoxAvatarComponent_BP
                                            if (DeadBoxAvatarCompPtr)
                                            {
                                                auto DeadBoxAvatarComp = *DeadBoxAvatarCompPtr;
                                                auto CurrentWeaponReplicated = g_LocalPlayer->WeaponManagerComponent->CurrentWeaponReplicated;
                                                if (CurrentWeaponReplicated)
                                                {
                                               
                                                        auto Weaponid = g_LocalPlayer->WeaponManagerComponent->CurrentWeaponReplicated->GetWeaponID();
       if (Weaponid == 101004) {
       ChangeItemAVc(DeadBoxAvatarComp, new_Skin.M416_1);
       AlreadyChangedSet.insert(PlayerKey);
       } else if (Weaponid == 101001) {
       ChangeItemAVc(DeadBoxAvatarComp, new_Skin.AKM);
       AlreadyChangedSet.insert(PlayerKey);
       } else if (Weaponid == 101003) {
       ChangeItemAVc(DeadBoxAvatarComp, new_Skin.Scar);
       AlreadyChangedSet.insert(PlayerKey);
       } else if (Weaponid == 101008) {
       ChangeItemAVc(DeadBoxAvatarComp, new_Skin.M762);
       AlreadyChangedSet.insert(PlayerKey);
       }       
                                                }
                                            }
                                        }
                                    }
                                }
                                
                            }
                            
                        }
		}					
					
		
	 if (localPlayer->WeaponManagerComponent != 0) {
     if (localPlayer->WeaponManagerComponent->CurrentWeaponReplicated != 0 ) {
         int weapowep = localPlayer->WeaponManagerComponent->CurrentWeaponReplicated->GetWeaponID();
		auto currentTime = std::chrono::steady_clock::now();
         auto landchud = localPlayer->WeaponManagerComponent->CurrentWeaponReplicated->synData;
         auto timeDiff = std::chrono::duration_cast<std::chrono::milliseconds>(currentTime - lastWeaponChangeTime).count();
         if (timeDiff > 1000) {
         for (int j = 0; j < landchud.Num(); j++) {
             auto& weaponInfo = landchud[j];
             auto weaponid = weaponInfo.DefineID.TypeSpecificID;
             if (weaponid != 0)
             {
				 if (preferences.AKM && weapowep == 101001){
				 for (int i = 0; i < sizeof(akmv) / sizeof(akmv[0]); i++) {
                 if (weaponid == akmv[i]) {
                     weaponInfo.DefineID.TypeSpecificID = new_Skin.AKM;
                     break;
                  }
				 }
				 for (int i = 0; i < sizeof(akmmag) / sizeof(akmmag[0]); i++) {
                 if (weaponid == akmmag[i]) {
                     weaponInfo.DefineID.TypeSpecificID = new_Skin.AKM_Mag;
                     break;
                  }
				 }
				}
				if (preferences.KAR98 && weapowep == 103001){
				 for (int i = 0; i < sizeof(kar) / sizeof(kar[0]); i++) {
                 if (weaponid == kar[i]) {
                     weaponInfo.DefineID.TypeSpecificID = new_Skin.K98;
                     break;
                  }
				 }
				}
				if (preferences.M24 && weapowep == 103002){
				 for (int i = 0; i < sizeof(m24) / sizeof(m24[0]); i++) {
                 if (weaponid == m24[i]) {
                     weaponInfo.DefineID.TypeSpecificID = new_Skin.M24;
                     break;
                  }
				 }
				}
				if (preferences.AWM && weapowep == 103003){
				 for (int i = 0; i < sizeof(awm) / sizeof(awm[0]); i++) {
                 if (weaponid == awm[i]) {
                     weaponInfo.DefineID.TypeSpecificID = new_Skin.AWM;
                     break;
                  }
				 }
				}
				
				
				if (preferences.TOMMY && weapowep == 102004){
				 for (int i = 0; i < sizeof(tommy) / sizeof(tommy[0]); i++) {
                 if (weaponid == tommy[i]) {
                     weaponInfo.DefineID.TypeSpecificID = new_Skin.Thompson;
                     break;
                  }
				 }
				}
				if (preferences.ACE32 && weapowep == 101102){
				 for (int i = 0; i < sizeof(ace32) / sizeof(ace32[0]); i++) {
                 if (weaponid == ace32[i]) {
                     weaponInfo.DefineID.TypeSpecificID = new_Skin.ACE32;
                     break;
                  }
				 }
				}
                if (preferences.MK145 && weapowep == 1030075){
                 for (int i = 0; i < sizeof(mk145) / sizeof(mk145[0]); i++) {
                 if (weaponid == mk145[i]) {
                     weaponInfo.DefineID.TypeSpecificID = new_Skin.MK145;
                     break;
                 }
                }
                for (int i = 0; i < sizeof(longyin8) / sizeof(longyin8[0]); i++) {
                 if (weaponid == longyin8[i]) {
                     weaponInfo.DefineID.TypeSpecificID = new_Skin.longyin_x88;
                     break;
                 }
                }
                for (int i = 0; i < sizeof(longyin1) / sizeof(longyin1[0]); i++) {
                 if (weaponid == longyin1[i]) {
                     weaponInfo.DefineID.TypeSpecificID = new_Skin.longyin_x11;
                     break;
                 }
                }
                for (int i = 0; i < sizeof(longyin2) / sizeof(longyin2[0]); i++) {
                 if (weaponid == longyin2[i]) {
                     weaponInfo.DefineID.TypeSpecificID = new_Skin.longyin_x22;
                     break;
                 }
                }
                for (int i = 0; i < sizeof(longyin3) / sizeof(longyin3[0]); i++) {
                 if (weaponid == longyin3[i]) {
                     weaponInfo.DefineID.TypeSpecificID = new_Skin.longyin_x33;
                     break;
                 }
                }
                for (int i = 0; i < sizeof(longyin4) / sizeof(longyin4[0]); i++) {
                 if (weaponid == longyin4[i]) {
                     weaponInfo.DefineID.TypeSpecificID = new_Skin.longyin_x44;
                     break;
                 }
                }
                for (int i = 0; i < sizeof(longyin6) / sizeof(longyin6[0]); i++) {
                 if (weaponid == longyin6[i]) {
                     weaponInfo.DefineID.TypeSpecificID = new_Skin.longyin_x66;
                     break;
                  }
                 }
                }
                if (preferences.MK14 && weapowep == 103007){
                 for (int i = 0; i < sizeof(mk14) / sizeof(mk14[0]); i++) {
                 if (weaponid == mk14[i]) {
                     weaponInfo.DefineID.TypeSpecificID = new_Skin.MK14;
                     break;
                 }
                }
                for (int i = 0; i < sizeof(longyin8888) / sizeof(longyin8888[0]); i++) {
                 if (weaponid == longyin8888[i]) {
                     weaponInfo.DefineID.TypeSpecificID = new_Skin.longyin_x8888;
                     break;
                 }
                }
                for (int i = 0; i < sizeof(longyin1111) / sizeof(longyin1111[0]); i++) {
                 if (weaponid == longyin1111[i]) {
                     weaponInfo.DefineID.TypeSpecificID = new_Skin.longyin_x1111;
                     break;
                 }
                }
                for (int i = 0; i < sizeof(longyin2222) / sizeof(longyin2222[0]); i++) {
                 if (weaponid == longyin2222[i]) {
                     weaponInfo.DefineID.TypeSpecificID = new_Skin.longyin_x2222;
                     break;
                 }
                }
                for (int i = 0; i < sizeof(longyin3333) / sizeof(longyin3333[0]); i++) {
                 if (weaponid == longyin3333[i]) {
                     weaponInfo.DefineID.TypeSpecificID = new_Skin.longyin_x3333;
                     break;
                 }
                }
                for (int i = 0; i < sizeof(longyin4444) / sizeof(longyin4444[0]); i++) {
                 if (weaponid == longyin4444[i]) {
                     weaponInfo.DefineID.TypeSpecificID = new_Skin.longyin_x4444;
                     break;
                 }
                }
                for (int i = 0; i < sizeof(longyin6666) / sizeof(longyin6666[0]); i++) {
                 if (weaponid == longyin6666[i]) {
                     weaponInfo.DefineID.TypeSpecificID = new_Skin.longyin_x6666;
                     break;
                  }
                 }
                }
                if (preferences.MK146 && weapowep == 1030074){
                 for (int i = 0; i < sizeof(mk146) / sizeof(mk146[0]); i++) {
                 if (weaponid == mk146[i]) {
                     weaponInfo.DefineID.TypeSpecificID = new_Skin.MK146;
                     break;
                 }
                }
                for (int i = 0; i < sizeof(longyin88) / sizeof(longyin88[0]); i++) {
                 if (weaponid == longyin88[i]) {
                     weaponInfo.DefineID.TypeSpecificID = new_Skin.longyin_x888;
                     break;
                 }
                }
                for (int i = 0; i < sizeof(longyin11) / sizeof(longyin11[0]); i++) {
                 if (weaponid == longyin11[i]) {
                     weaponInfo.DefineID.TypeSpecificID = new_Skin.longyin_x111;
                     break;
                 }
                }
                for (int i = 0; i < sizeof(longyin22) / sizeof(longyin22[0]); i++) {
                 if (weaponid == longyin22[i]) {
                     weaponInfo.DefineID.TypeSpecificID = new_Skin.longyin_x222;
                     break;
                 }
                }
                for (int i = 0; i < sizeof(longyin33) / sizeof(longyin33[0]); i++) {
                 if (weaponid == longyin33[i]) {
                     weaponInfo.DefineID.TypeSpecificID = new_Skin.longyin_x333;
                     break;
                 }
                }
                for (int i = 0; i < sizeof(longyin44) / sizeof(longyin44[0]); i++) {
                 if (weaponid == longyin44[i]) {
                     weaponInfo.DefineID.TypeSpecificID = new_Skin.longyin_x444;
                     break;
                 }
                }
                for (int i = 0; i < sizeof(longyin66) / sizeof(longyin66[0]); i++) {
                 if (weaponid == longyin66[i]) {
                     weaponInfo.DefineID.TypeSpecificID = new_Skin.longyin_x666;
                     break;
                  }
                 }
                }
                if (preferences.M4145 && weapowep == 1010045){
                 for (int i = 0; i < sizeof(m4145) / sizeof(m4145[0]); i++) {
                 if (weaponid == m4145[i]) {
                     weaponInfo.DefineID.TypeSpecificID = new_Skin.M4145;
                     break;
                 }
                }
                for (int i = 0; i < sizeof(hondian) / sizeof(hondian[0]); i++) {
                 if (weaponid == hondian[i]) {
                     weaponInfo.DefineID.TypeSpecificID = new_Skin.M416_hondian;
                     break;
                 }
                }
                for (int i = 0; i < sizeof(chuizhi) / sizeof(chuizhi[0]); i++) {
                 if (weaponid == chuizhi[i]) {
                     weaponInfo.DefineID.TypeSpecificID = new_Skin.M416_chuizhi;
                     break;
                 }
                }
                for (int i = 0; i < sizeof(qiangtuo) / sizeof(qiangtuo[0]); i++) {
                 if (weaponid == qiangtuo[i]) {
                     weaponInfo.DefineID.TypeSpecificID = new_Skin.M416_qiangtuo;
                     break;
                 }
                }
                for (int i = 0; i < sizeof(buchang) / sizeof(buchang[0]); i++) {
                 if (weaponid == buchang[i]) {
                     weaponInfo.DefineID.TypeSpecificID = new_Skin.M416_buchang;
                     break;
                 }
                }
                for (int i = 0; i < sizeof(kuorong) / sizeof(kuorong[0]); i++) {
                 if (weaponid == kuorong[i]) {
                     weaponInfo.DefineID.TypeSpecificID = new_Skin.M416_kuorong;
                     break;
                 }
                }
                for (int i = 0; i < sizeof(beijing2) / sizeof(beijing2[0]); i++) {
                 if (weaponid == beijing2[i]) {
                     weaponInfo.DefineID.TypeSpecificID = new_Skin.M416_x22;
                     break;
                 }
                }
                for (int i = 0; i < sizeof(beijing3) / sizeof(beijing3[0]); i++) {
                 if (weaponid == beijing3[i]) {
                     weaponInfo.DefineID.TypeSpecificID = new_Skin.M416_x33;
                     break;
                 }
                }
                for (int i = 0; i < sizeof(beijing4) / sizeof(beijing4[0]); i++) {
                 if (weaponid == beijing4[i]) {
                     weaponInfo.DefineID.TypeSpecificID = new_Skin.M416_x44;
                     break;
                 }
                }
                for (int i = 0; i < sizeof(beijing6) / sizeof(beijing6[0]); i++) {
                 if (weaponid == beijing6[i]) {
                     weaponInfo.DefineID.TypeSpecificID = new_Skin.M416_x66;
                     break;
                  }
                 }
                }
                if (preferences.mg31 && weapowep == 1050105){
                 for (int i = 0; i < sizeof(mg311) / sizeof(mg311[0]); i++) {
                 if (weaponid == mg311[i]) {
                     weaponInfo.DefineID.TypeSpecificID = new_Skin.mg31;
                     break;
                  }
                 }
                }
                if (preferences.mg32 && weapowep == 1050106){
                 for (int i = 0; i < sizeof(mg322) / sizeof(mg322[0]); i++) {
                 if (weaponid == mg322[i]) {
                     weaponInfo.DefineID.TypeSpecificID = new_Skin.mg32;
                     break;
                  }
                 }
                }
                if (preferences.mg33 && weapowep == 1050107){
                 for (int i = 0; i < sizeof(mg333) / sizeof(mg333[0]); i++) {
                 if (weaponid == mg333[i]) {
                     weaponInfo.DefineID.TypeSpecificID = new_Skin.mg33;
                     break;
                  }
                 }
                }
                if (preferences.P90 && weapowep == 102105){
                 for (int i = 0; i < sizeof(p90) / sizeof(p90[0]); i++) {
                 if (weaponid == p90[i]) {
                     weaponInfo.DefineID.TypeSpecificID = new_Skin.P90;
                     break;
                  }
                 }
                }

				
				if (preferences.BIZON && weapowep == 102005){
				 for (int i = 0; i < sizeof(bizon) / sizeof(bizon[0]); i++) {
                 if (weaponid == bizon[i]) {
                     weaponInfo.DefineID.TypeSpecificID = new_Skin.Bizon;
                     break;
                  }
				 }
				}
				
				if (preferences.VECTOR && weapowep == 102003){
				 for (int i = 0; i < sizeof(vectorr) / sizeof(vectorr[0]); i++) {
                 if (weaponid == vectorr[i]) {
                     weaponInfo.DefineID.TypeSpecificID = new_Skin.Vector;
                     break;
                  }
				 }
				}
				if (preferences.UMP && weapowep == 102002){
				 for (int i = 0; i < sizeof(ump) / sizeof(ump[0]); i++) {
                 if (weaponid == ump[i]) {
                     weaponInfo.DefineID.TypeSpecificID = new_Skin.UMP;
                     break;
                  }
				 }
				}
				if (preferences.UZI && weapowep == 102001){
				 for (int i = 0; i < sizeof(uzi) / sizeof(uzi[0]); i++) {
                 if (weaponid == uzi[i]) {
                     weaponInfo.DefineID.TypeSpecificID = new_Skin.UZI;
                     break;
                  }
				 }
				}
				if (preferences.M16 && weapowep == 101002){
				 for (int i = 0; i < sizeof(m16) / sizeof(m16[0]); i++) {
                 if (weaponid == m16[i]) {
                     weaponInfo.DefineID.TypeSpecificID = new_Skin.M16A4;
                     break;
                  }
				 }
				 for (int i = 0; i < sizeof(m16s) / sizeof(m16s[0]); i++) {
                 if (weaponid == m16s[i]) {
                     weaponInfo.DefineID.TypeSpecificID = new_Skin.M16A4_Stock;
                     break;
                  }
				 }
				 for (int i = 0; i < sizeof(m16mag) / sizeof(m16mag[0]); i++) {
                 if (weaponid == m16mag[i]) {
                     weaponInfo.DefineID.TypeSpecificID = new_Skin.M16A4_Mag;
                     break;
                  }
				 }
				}
				if (preferences.PAN && weapowep == 108004){
				 for (int i = 0; i < sizeof(pan) / sizeof(pan[0]); i++) {
                 if (weaponid == pan[i]) {
                     weaponInfo.DefineID.TypeSpecificID = new_Skin.Pan;
                     break;
                  }
				 }
				}
				if (preferences.AUG && weapowep == 101006){
				 for (int i = 0; i < sizeof(aug) / sizeof(aug[0]); i++) {
                 if (weaponid == aug[i]) {
                     weaponInfo.DefineID.TypeSpecificID = new_Skin.AUG;
                     break;
                  }
				 }
				}
				if (preferences.GROZA && weapowep == 101005){
				 for (int i = 0; i < sizeof(groza) / sizeof(groza[0]); i++) {
                 if (weaponid == groza[i]) {
                     weaponInfo.DefineID.TypeSpecificID = new_Skin.Groza;
                     break;
                  }
				 }
				}
				if (preferences.DP28 && weapowep == 105002){
				 for (int i = 0; i < sizeof(dp) / sizeof(dp[0]); i++) {
                 if (weaponid == dp[i]) {
                     weaponInfo.DefineID.TypeSpecificID = new_Skin.DP28;
                     break;
                  }
				 }
				}
				if (preferences.M249 && weapowep == 105001){
				 for (int i = 0; i < sizeof(m249) / sizeof(m249[0]); i++) {
                 if (weaponid == m249[i]) {
                     weaponInfo.DefineID.TypeSpecificID = new_Skin.M249;
                     break;
                  }
				 }
				/* for (int i = 0; i < sizeof(m249s) / sizeof(m249s[0]); i++) {
                 if (weaponid == m249s[i]) {
                     weaponInfo.DefineID.TypeSpecificID = new_Skin.M249s;
                     break;
                  }
				 }*/
				}
				
				if (preferences.SCARL && weapowep == 101003){
				 for (int i = 0; i < sizeof(scar) / sizeof(scar[0]); i++) {
                 if (weaponid == scar[i]) {
                     weaponInfo.DefineID.TypeSpecificID = new_Skin.Scar;
                     break;
                  }
				 }
				 for (int i = 0; i < sizeof(scarmag) / sizeof(scarmag[0]); i++) {
                 if (weaponid == scarmag[i]) {
                     weaponInfo.DefineID.TypeSpecificID = new_Skin.Scar_Mag;
                     break;
                  }
				 }
				}
				
				if (preferences.M762 && weapowep == 101008){
				 for (int i = 0; i < sizeof(m7) / sizeof(m7[0]); i++) {
                 if (weaponid == m7[i]) {
                     weaponInfo.DefineID.TypeSpecificID = new_Skin.M762;
                     break;
                  }
				 }
				 for (int i = 0; i < sizeof(m7mag) / sizeof(m7mag[0]); i++) {
                 if (weaponid == m7mag[i]) {
                     weaponInfo.DefineID.TypeSpecificID = new_Skin.M762_Mag;
                     break;
                  }
				 }
				}
				
				if (preferences.M416 && weapowep == 101004){
				 for (int i = 0; i < sizeof(m4v) / sizeof(m4v[0]); i++) {
                 if (weaponid == m4v[i]) {
                     weaponInfo.DefineID.TypeSpecificID = new_Skin.M416_1;
                     break;
                  }
				 }
				 for (int i = 0; i < sizeof(m4mag) / sizeof(m4mag[0]); i++) {
                 if (weaponid == m4mag[i]) {
                     weaponInfo.DefineID.TypeSpecificID = new_Skin.M416_2;
                     break;
                  }
				 }
				 for (int i = 0; i < sizeof(m4sight) / sizeof(m4sight[0]); i++) {
                 if (weaponid == m4sight[i]) {
                     weaponInfo.DefineID.TypeSpecificID = new_Skin.M416_3;
                     break;
                  }
				 }
				 for (int i = 0; i < sizeof(m4stock) / sizeof(m4stock[0]); i++) {
                 if (weaponid == m4stock[i]) {
                     weaponInfo.DefineID.TypeSpecificID = new_Skin.M416_4;
                     break;
                  }
				 }
				 for (int i = 0; i < sizeof(m4stock1) / sizeof(m4stock1[0]); i++) {
                 if (weaponid == m4stock1[i]) {
                     weaponInfo.DefineID.TypeSpecificID = new_Skin.M416_stock;
                     break;
                  }
				 }
				 for (int i = 0; i < sizeof(m4reddot) / sizeof(m4reddot[0]); i++) {
                 if (weaponid == m4reddot[i]) {
                     weaponInfo.DefineID.TypeSpecificID = new_Skin.M416_reddot;
                     break;
                  }
				 }
				}
                 localPlayer->WeaponManagerComponent->CurrentWeaponReplicated->DelayHandleAvatarMeshChanged();
                 lastWeaponChangeTime = currentTime;
             }
         }
     }
 }
}
//

if (localPlayer -> CurrentVehicle) {
        if (localPlayer -> CurrentVehicle -> VehicleAvatar) {
          std::string SkinIDStr = std::to_string((int) localPlayer -> CurrentVehicle -> VehicleAvatar -> GetDefaultAvatarID());
          Active::SkinCarDefault = localPlayer -> CurrentVehicle -> GetAvatarID();

		  
          if (preferences.Moto && strstr(SkinIDStr.c_str(), "1901")) {
            Active::SkinCarMod = new_Skin.Moto;
            Active::SkinCarNew = true;
          } else if (preferences.Dacia && strstr(SkinIDStr.c_str(), "1903")) {
            Active::SkinCarMod = new_Skin.Dacia;
            Active::SkinCarNew = true;
          } else if (preferences.Boat && strstr(SkinIDStr.c_str(), "1911")) {
            Active::SkinCarMod = new_Skin.Boat;
            Active::SkinCarNew = true;
          } else if (preferences.MiniBus && strstr(SkinIDStr.c_str(), "1904")) {
            Active::SkinCarMod = new_Skin.MiniBus;
            Active::SkinCarNew = true;
          } else if (preferences.Mirado && strstr(SkinIDStr.c_str(), "1914")) {
            Active::SkinCarMod = new_Skin.Mirado;
            Active::SkinCarNew = true;
          } else if (preferences.Mirado && strstr(SkinIDStr.c_str(), "1915")) {
            Active::SkinCarMod = new_Skin.Mirado;
            Active::SkinCarNew = true;
          } else if (preferences.Buggy && strstr(SkinIDStr.c_str(), "1907")) {
            Active::SkinCarMod = new_Skin.Buggy;
            Active::SkinCarNew = true;
          }else if (preferences.CoupeRB && strstr(SkinIDStr.c_str(), "1961")) {
            Active::SkinCarMod = new_Skin.CoupeRP;
            Active::SkinCarNew = true;
          } else if (preferences.BigFoot && strstr(SkinIDStr.c_str(), "1953")) {
            Active::SkinCarMod = new_Skin.Bigfoot;
            Active::SkinCarNew = true;
          } else if (preferences.UAZ && strstr(SkinIDStr.c_str(), "1908")) {
            Active::SkinCarMod = new_Skin.UAZ;
            Active::SkinCarNew = true;
          } else Active::SkinCarNew = false;

          if (Active::SkinCarDefault != Active::SkinCarMod && Active::SkinCarNew) {
            
            localPlayer -> CurrentVehicle -> VehicleAvatar -> ChangeItemAvatar(Active::SkinCarMod, true);
          }
        }
      }

 if (localPlayerController->BackpackComponent){
	 auto data = localPlayerController->BackpackComponent->ItemListNet;
	 auto bag = data.IncArray;
	 for (int j = 0; j < bag.Num(); j++) {
	 int ID = bag[j].Unit.DefineID.TypeSpecificID;
	 if (preferences.Outfit){
 for (int i = 0; i < sizeof(SuitX) / sizeof(SuitX[0]); i++) {
                 if (ID == SuitX[i]) {
                     bag[j].Unit.DefineID.TypeSpecificID = new_Skin.XSuits;
                     break;
                  }
				 }
				}
				if (preferences.Bagg){
for (int i = 0; i < sizeof(Bag) / sizeof(Bag[0]); i++) {
                 if (ID == Bag[i]) {
                     bag[j].Unit.DefineID.TypeSpecificID = bag3;
                     break;
                  }
				 }
				}
				if (preferences.Helmett){
for (int i = 0; i < sizeof(Helmet) / sizeof(Helmet[0]); i++) {
                 if (ID == Helmet[i]) {
                     bag[j].Unit.DefineID.TypeSpecificID = helmett3;
                     break;
                  }
				 }
				}
				if (preferences.Emote){
for (int i = 0; i < sizeof(emote1) / sizeof(emote1[0]); i++) {
                 if (ID == emote1[i]) {
                     bag[j].Unit.DefineID.TypeSpecificID = sEmote1;
                     break;
                  }
				 }
for (int i = 0; i < sizeof(emote2) / sizeof(emote2[0]); i++) {
                 if (ID == emote2[i]) {
                     bag[j].Unit.DefineID.TypeSpecificID = sEmote2;
                     break;
                  }
				 }
for (int i = 0; i < sizeof(emote3) / sizeof(emote3[0]); i++) {
                 if (ID == emote3[i]) {
                     bag[j].Unit.DefineID.TypeSpecificID = sEmote3;
                     break;
                  }
				 }
				}
				/*
				if (preferences.PAN){
				 for (int i = 0; i < sizeof(pan) / sizeof(pan[0]); i++) {
                 if (ID == pan[i]) {
                     bag[j].Unit.DefineID.TypeSpecificID = new_Skin.Pan;
                     break;
                  }
				 }
				}
				if (preferences.KAR98){
				 for (int i = 0; i < sizeof(kar) / sizeof(kar[0]); i++) {
                 if (ID == kar[i]) {
                     bag[j].Unit.DefineID.TypeSpecificID = new_Skin.K98;
                     break;
                  }
				 }
				}
				if (preferences.M24){
				 for (int i = 0; i < sizeof(m24) / sizeof(m24[0]); i++) {
                 if (ID == m24[i]) {
                     bag[j].Unit.DefineID.TypeSpecificID = new_Skin.M24;
                     break;
                  }
				 }
				}
				if (preferences.AWM){
				 for (int i = 0; i < sizeof(awm) / sizeof(awm[0]); i++) {
                 if (ID == awm[i]) {
                     bag[j].Unit.DefineID.TypeSpecificID = new_Skin.AWM;
                     break;
                  }
				 }
				}
				if (preferences.M416){
				 for (int i = 0; i < sizeof(m4v) / sizeof(m4v[0]); i++) {
                 if (ID == m4v[i]) {
                     bag[j].Unit.DefineID.TypeSpecificID = new_Skin.M416_1;
                     break;
                  }
				 }
				}
				if (preferences.AKM){
				 for (int i = 0; i < sizeof(akmv) / sizeof(akmv[0]); i++) {
                 if (ID == akmv[i]) {
                     bag[j].Unit.DefineID.TypeSpecificID = new_Skin.AKM;
                     break;
                  }
				 }
				}
				if (preferences.SCARL){
				 for (int i = 0; i < sizeof(scar) / sizeof(scar[0]); i++) {
                 if (ID == scar[i]) {
                     bag[j].Unit.DefineID.TypeSpecificID = new_Skin.Scar;
                     break;
                  }
				 }
				}
				if (preferences.M762){
				 for (int i = 0; i < sizeof(m7) / sizeof(m7[0]); i++) {
                 if (ID == m7[i]) {
                     bag[j].Unit.DefineID.TypeSpecificID = new_Skin.M762;
                     break;
                  }
				 }
				}
				 /*
 auto itr = weaponDefinitions.find(ID);
                 if (itr != weaponDefinitions.end()) {
                     auto innerItr = itr->second.find(ID);
                     if (innerItr != itr->second.end()) {
                         bag[j].Unit.DefineID.TypeSpecificID = innerItr->second;
                     }
                 }*/
      }
   }

 
   if (localPlayer -> AvatarComponent2) {

                                   auto AvatarComp = localPlayer -> AvatarComponent2;
                                   
                                   FNetAvatarSyncData NetAvatarComp = * (FNetAvatarSyncData * )((uintptr_t) AvatarComp + 0x388); //if u use 64bit change this offset
                                   auto Slotsybc = NetAvatarComp.SlotSyncData;
		if (preferences.Parachute){
        Slotsybc[11].ItemId = new_Skin.Parachute;
		}
		if (preferences.Outfit){
		Slotsybc[5].ItemId = new_Skin.XSuits;
		}
		if (preferences.Bagg){
		Slotsybc[8].ItemId = bag3;
		}
		if (preferences.Helmett){
		Slotsybc[9].ItemId = helmett3;
		}
   auto now = std::chrono::high_resolution_clock::now();
auto elapsed = std::chrono::duration_cast<std::chrono::seconds>(now - start).count();

if (elapsed < 1 && callFunction) {
    localPlayer->AvatarComponent2->OnRep_BodySlotStateChanged();
    localPlayerController->BackpackComponent->OnRep_ItemListNet();
} else {
    callFunction = false;
}

    }
 }
                            int totalEnemies = 0, totalBots = 0;
                            std::vector<ASTExtraPlayerCharacter *> PlayerCharacter;
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

                                //if (!Player->Mesh)
                                //    continue;

                                if (!Player->RootComponent)
                                    continue;

//                                if (Player->Health < 0.0f || Player->Health > 100.0f) { continue; }

                                if (Config.ESPMenu.IgnoreBot) {
                                    if (Player->bEnsure)
                                        continue;
                                }


                                if (Player->bEnsure)
                                    totalBots++;
                                else totalEnemies++;

                                FVector Head = GetBoneLocationByName(Player, "Head");
                                Head.Z += 12.5f;
                                FVector Root = GetBoneLocationByName(Player, "Root");
                                FVector upper_r = GetBoneLocationByName(Player, "upperarm_r");
                                FVector lowerarm_r = GetBoneLocationByName(Player, "lowerarm_r");
                                FVector hand_r = GetBoneLocationByName(Player, "hand_r");
                                FVector upper_l = GetBoneLocationByName(Player, "upperarm_l");
                                FVector lowerarm_l = GetBoneLocationByName(Player, "lowerarm_l");
                                FVector hand_l = GetBoneLocationByName(Player, "hand_l");
                                FVector thigh_l = GetBoneLocationByName(Player, "thigh_l");
                                FVector calf_l = GetBoneLocationByName(Player, "calf_l");
                                FVector foot_l = GetBoneLocationByName(Player, "foot_l");
                                FVector thigh_r = GetBoneLocationByName(Player, "thigh_r");
                                FVector calf_r = GetBoneLocationByName(Player, "calf_r");
                                FVector foot_r = GetBoneLocationByName(Player, "foot_r");
                                FVector neck_01 = GetBoneLocationByName(Player, "neck_01");
                                FVector pelvis = GetBoneLocationByName(Player, "pelvis");

                            //colors
                            bool IsVisible = localPlayerController->LineOfSightTo(Player, {0,0,0}, true);
                            if(IsVisible) {
                                if(Player->bIsAI){
                                    //white color
                                    visCol.R = 1.f;
                                    visCol.G = 1.f;
                                    visCol.B = 1.f;
                                    visCol.A = 1.f;
                                }else if(Player->Health == 0.0f){
                                    //drak green if knock down and visible
                                    visCol.R = 0.0f;
                                    visCol.G = 0.3f;
                                    visCol.B = 0.0f;
                                    visCol.A = 1.0f;
                                }else{
                                    //green
                                    visCol.R = 0.f;
                                    visCol.G = 1.f;
                                    visCol.B = 0.f;
                                    visCol.A = 1.f;
                                }
                            }else if (Player->bIsAI){
                                //gray R G B A
                                //    FLinearColor Gray = { 0.501960814f, 0.501960814f, 0.501960814f, 1.000000000f };
                                visCol.R = 0.435294117f;
                                visCol.G = 0.501960814f;
                                visCol.B = 0.501960814f;
                                visCol.A = 1.000000000f;
                                // if knocked down player color
                            }else if(Player->Health == 0.0f){
                                //drak++ red if knocked down and not visible
                                visCol.R = 0.549019607f;
                                visCol.G = 0.039215686f;
                                visCol.B = 0.050980392f;
                                visCol.A = 1.0f;
                            }else{
                                //red
                                visCol.R = 1.f;
                                visCol.G = 0.f;
                                visCol.B = 0.f;
                                visCol.A = 1.f;
                            }
                            if (Player->IsInvincible)
                            {
                                //yallow
                                visCol.R = 1.f;
                                visCol.G = 1.f;
                                visCol.B = 0.f;
                                visCol.A = 1.f;
                            }

                                float Distance = Player->GetDistanceTo(localPlayer) / 100.f;
                                if (Distance < 500.f) {
//背敌                                

 if(Config.ESPMenu.Alert){
                                bool Useless = false;
                                FVector2D EntityPos = WorldToRadar(localPlayer->K2_GetActorRotation().Yaw, Head, localPlayer->GetHeadLocation(true), NULL, NULL, FVector((float)screenWidth, (float)screenHeight, 0.f), Useless);
                                float radar_range = 270.f;
                                FVector angle;
                                FVector MiddlePoint(((float)screenWidth / 2.f) - EntityPos.X, ((float)screenHeight / 2.f) - EntityPos.Y, 0.f);
                                VectorAnglesRadar(MiddlePoint, angle);
                                const auto AngleYawRadian = DEG2RAD(angle.Y + 180.f);
                                float Point_X = ((float)screenWidth / 2.f) + (radar_range) / 2.f * 8.f * cosf(AngleYawRadian);
                                float Point_Y = ((float)screenHeight / 2.f) + (radar_range) / 2.f * 8.f * sinf(AngleYawRadian);
                                FixTriangle(Point_X, Point_Y, 100);
                                std::array < FVector2D, 39 > points
                                {
                                    FVector2D((float)Point_X - (5.6f * (float)3.f), Point_Y - (7.3f *3.f)),
                                    FVector2D((float)Point_X + (11.6f *3.f), Point_Y),
                                    FVector2D((float)Point_X - (5.6f *3.f), Point_Y + (7.3f *3.f)),
                                    FVector2D((float)Point_X - (5.6f *3.f), Point_Y - (4.3f *3.f)),
                                    FVector2D((float)Point_X - (19.5f *3.f), Point_Y - (4.3f *3.f)),
                                    FVector2D((float)Point_X - (19.5f *3.f), Point_Y + (4.3f *3.f)),
                                    FVector2D((float)Point_X - (5.6f *3.f), Point_Y + (4.3f *3.f)),
                                    FVector2D((float)Point_X + (10.3f *3.f), Point_Y),
                                    FVector2D((float)Point_X - (5.f *3.f), Point_Y - (3.f *3.f)),
                                    FVector2D((float)Point_X - (5.f *3.f), Point_Y + (3.f *3.f)),
                                    FVector2D((float)Point_X - (5.f * (float)3.f), Point_Y - (6.5f *3.f)),
                                    FVector2D((float)Point_X - (5.f * (float)3.f), Point_Y - (5.5f *3.f)),
                                    FVector2D((float)Point_X - (5.f * (float)3.f), Point_Y - (3.f *3.f)),
                                    FVector2D((float)Point_X - (5.f * (float)3.f), Point_Y - (3.f *3.f)),
                                    FVector2D((float)Point_X - (5.f * (float)3.f), Point_Y - (2.5f *3.f)),
                                    FVector2D((float)Point_X - (5.f * (float)3.f), Point_Y - (1.5f *3.f)),
                                    FVector2D((float)Point_X - (5.f * (float)3.f), Point_Y - (0.5f *3.f)),
                                    FVector2D((float)Point_X - (5.f * (float)3.f), Point_Y + (6.5f *3.f)),
                                    FVector2D((float)Point_X - (5.f * (float)3.f), Point_Y + (5.5f *3.f)),
                                    FVector2D((float)Point_X - (5.f * (float)3.f), Point_Y + (3.f *3.f)),
                                    FVector2D((float)Point_X - (5.f * (float)3.f), Point_Y + (3.f *3.f)),
                                    FVector2D((float)Point_X - (5.f * (float)3.f), Point_Y + (2.5f *3.f)),
                                    FVector2D((float)Point_X - (5.f * (float)3.f), Point_Y + (1.5f *3.f)),
                                    FVector2D((float)Point_X - (5.f * (float)3.f), Point_Y),
                                    FVector2D((float)Point_X - (5.f * (float)3.f), Point_Y + (0.2f *3.f)),
                                    FVector2D((float)Point_X - (5.f * (float)3.f), Point_Y - (0.2f *3.f)),
                                    FVector2D((float)Point_X - (18.5f *3.f), Point_Y - (3.75f *3.f)),
                                    FVector2D((float)Point_X - (18.5f *3.f), Point_Y - (3.f *3.f)),
                                    FVector2D((float)Point_X - (18.5f *3.f), Point_Y - (2.f *3.f)),
                                    FVector2D((float)Point_X - (18.5f *3.f), Point_Y - (1.f *3.f)),
                                    FVector2D((float)Point_X - (18.5f *3.f), Point_Y - (0.5f *3.f)),
                                    FVector2D((float)Point_X - (18.5f *3.f), Point_Y - (0.2f *3.f)),
                                    FVector2D((float)Point_X - (18.5f *3.f), Point_Y),
                                    FVector2D((float)Point_X - (18.5f *3.f), Point_Y + (3.75f *3.f)),
                                    FVector2D((float)Point_X - (18.5f *3.f), Point_Y + (3.f *3.f)),
                                    FVector2D((float)Point_X - (18.5f *3.f), Point_Y + (2.f *3.f)),
                                    FVector2D((float)Point_X - (18.5f *3.f), Point_Y + (1.f *3.f)),
                                    FVector2D((float)Point_X - (18.5f *3.f), Point_Y + (0.5f *3.f)),
                                    FVector2D((float)Point_X - (18.5f *3.f), Point_Y + (0.2f *3.f)),
                                };
                                // bool IsVisible = localPlayerController->LineOfSightTo(Player, {0,0,0}, true);
                                /*  if(IsVisible) {
                                 visCol.R = 0.f;
                                 visCol.G = 1.f;
                                 visCol.B = 0.f;
                                 visCol.A = 1.f;
                                 }else {
                                 visCol.R = 1.f;
                                 visCol.G = 0.f;
                                 visCol.B = 0.f;
                                 visCol.A = 1.f;
                                 }*/
                                FVector2D BelowRoowwtSc;
                                if (gGameplayStatics->ProjectWorldToScreen(localPlayerController, Head, false, &BelowRoowwtSc)) {
                                }else{
                                    RotateTriangle(points, angle.Y + 180.0f);
                                    float Thickness = 3.f;
                                    if(Player->bIsAI){
                                        // DrawArrows(pHUD,points, Thickness, COLOR_WHITE); //No arrows if it Bots
                                    } else{
                                        DrawArrows(HUD,points, Thickness, visCol);
                                    }
                                }
                            }
                                    FVector2D HeadSc, RootSc, upper_rPoSC, lowerarm_rPoSC, hand_rPoSC, upper_lPoSC, hand_lPoSC, thigh_lPoSC, calf_lPoSC, foot_lPoSC, thigh_rPoSC, calf_rPoSC, foot_rPoSC, neck_01PoSC, pelvisPoSC, lowerarm_lSC;
                                    if (gGameplayStatics->ProjectWorldToScreen(
                                            localPlayerController,
                                            Head, false, &HeadSc) &&
                                        gGameplayStatics->ProjectWorldToScreen(
                                                localPlayerController,
                                                upper_r, false,
                                                &upper_rPoSC) &&
                                        gGameplayStatics->ProjectWorldToScreen(
                                                localPlayerController,
                                                upper_l, false,
                                                &upper_lPoSC) &&
                                        gGameplayStatics->ProjectWorldToScreen(
                                                localPlayerController,
                                                lowerarm_r, false,
                                                &lowerarm_rPoSC) &&
                                        gGameplayStatics->ProjectWorldToScreen(
                                                localPlayerController,
                                                hand_r, false,
                                                &hand_rPoSC) &&
                                        gGameplayStatics->ProjectWorldToScreen(
                                                localPlayerController,
                                                lowerarm_l, false,
                                                &lowerarm_lSC) &&
                                        gGameplayStatics->ProjectWorldToScreen(
                                                localPlayerController,
                                                hand_l, false,
                                                &hand_lPoSC) &&
                                        gGameplayStatics->ProjectWorldToScreen(
                                                localPlayerController,
                                                thigh_l, false,
                                                &thigh_lPoSC) &&
                                        gGameplayStatics->ProjectWorldToScreen(
                                                localPlayerController,
                                                calf_l, false,
                                                &calf_lPoSC) &&
                                        gGameplayStatics->ProjectWorldToScreen(
                                                localPlayerController,
                                                foot_l, false,
                                                &foot_lPoSC) &&
                                        gGameplayStatics->ProjectWorldToScreen(
                                                localPlayerController,
                                                thigh_r, false,
                                                &thigh_rPoSC) &&
                                        gGameplayStatics->ProjectWorldToScreen(
                                                localPlayerController,
                                                calf_r, false,
                                                &calf_rPoSC) &&
                                        gGameplayStatics->ProjectWorldToScreen(
                                                localPlayerController,
                                                foot_r, false,
                                                &foot_rPoSC) &&
                                        gGameplayStatics->ProjectWorldToScreen(
                                                localPlayerController,
                                                neck_01, false,
                                                &neck_01PoSC) &&
                                        gGameplayStatics->ProjectWorldToScreen(
                                                localPlayerController,
                                                pelvis, false,
                                                &pelvisPoSC) &&
                                        gGameplayStatics->ProjectWorldToScreen(
                                                localPlayerController,
                                                Root, false, &RootSc)) {

                                        bool IsVisible = localPlayerController->LineOfSightTo(
                                                Player,
                                                {0, 0, 0},
                                                true);
                                        FLinearColor Color = {1.0f, 0, 0, 1.0f};
                                        if (IsVisible)
                                            Color = {0, 1.0f, 0, 1.0f};









					               

                                        // ESP 射线
                                        if (Config.ESPMenu.Line) {

                                            FVector screenPos = localPlayerController->PlayerCameraManager->GetCameraLocation();
                                            screenPos.Z += 350.0f;
                                            screenPos.Y += 350.0f;
                                            screenPos.X += 350.0f;
                                            if (!localPlayerController->LineOfSightTo(Player, screenPos, true)) {

                                                DrawLine(HUD, {static_cast<float>(screenWidth / 2), 0}, HeadSc, 1.0f, COLOR_WHITE);
                                            } else {
                                                DrawLine(HUD, {static_cast<float>(screenWidth / 2), 0}, HeadSc, 1.0f, COLOR_LIME);
                                            }
                                        }
                                        // ESP 骨骼
                                        if (Config.ESPMenu.Skeleton) {
                                            static vector<string> right_arm{"spine_03", "clavicle_r", "upperarm_r", "lowerarm_r", "hand_r", "item_r"};
                                        static vector<string> left_arm{"spine_03", "clavicle_l", "upperarm_l", "lowerarm_l", "hand_l", "item_l"};
                                        static vector<string> spine{"Head", "neck_01", "spine_03", "spine_02", "spine_01", "pelvis"};
                                        static vector<string> lower_right{"pelvis", "thigh_r", "calf_r", "foot_r"};
                                        static vector<string> lower_left{"pelvis", "thigh_l", "calf_l", "foot_l"};
                                        static vector<vector<string>> skeleton{right_arm, left_arm, spine, lower_right, lower_left};
                                        for (auto &boneStructure : skeleton) {
                                            string lastBone;
                                            for (string &currentBone : boneStructure) {
                                                if (!lastBone.empty()) {
                                                    FVector wBoneFrom = GetBoneLocationByName(Player, lastBone.c_str());
                                                    FVector wBoneTo = GetBoneLocationByName(Player, currentBone.c_str());
                                                    FVector2D boneFrom, boneTo;
                                                    if (gGameplayStatics->ProjectWorldToScreen(localPlayerController, wBoneFrom, false, &boneFrom) && gGameplayStatics->ProjectWorldToScreen(localPlayerController, wBoneTo, false, &boneTo)) {
                                                        bool IsVisibles = g_PlayerController->LineOfSightTo(g_PlayerController->PlayerCameraManager, Player->GetBonePos(currentBone.c_str(), {}), true);
                                                        if (IsVisibles){
                                                            if(Player->bEnsure){
                                                                DrawLine(HUD, boneFrom, boneTo, EspSktonThik, COLOR_LIME);
                                                   //            pHUD->Canvas->K2_DrawLine(boneFrom, boneTo, EspSktonThik, COLOR_LIME);
                                                            }else{
                                                                DrawLine(HUD, boneFrom, boneTo, EspSktonThik, COLOR_LIME);
                                                         //       pHUD->Canvas->K2_DrawLine(boneFrom, boneTo, EspSktonThik, COLOR_GREEN);
                                                            }
                                                        }else{
                                                            if(Player->bEnsure){
                                                                DrawLine(HUD, boneFrom, boneTo, EspSktonThik, COLOR_WHITE);
                                                        //        pHUD->Canvas->K2_DrawLine(boneFrom, boneTo, EspSktonThik, COLOR_WHITE);
                                                            }else{
                                                                DrawLine(HUD, boneFrom, boneTo, EspSktonThik, COLOR_RED);
                                                        //        pHUD->Canvas->K2_DrawLine(boneFrom, boneTo, EspSktonThik, COLOR_RED);
                                                            }
                                                        }
                                                           //EspSktonThik
                                                    }
                                                }
                                                lastBone = currentBone;
                                            }
                                        }
                                    }











//方框                                        
                                    if (Config.ESPMenu.Box) {

auto BoxBounds = Player->Mesh->CachedLocalBounds;
                                    FVector Chest = Player->K2_GetActorLocation();
                                           DrawBox3D(HUD,Player, visCol, Chest, BoxBounds.BoxExtent);
                                        }
// ESP 血条
//if (Config.ESPMenu.Health == 1) {//经典
      if (Config.ESPMenu.Health) {
                                    float CurHP = std::max(0.f, std::min(Player->Health, Player->HealthMax));
                                    float MaxHP = Player->HealthMax;
                                    float magic_number = (Distance);
                                                           float mx = (kWidth / 4) / magic_number;

                                                           float healthLength = kWidth / 20;
                                                           if (healthLength < mx)
                                                               healthLength = mx;
                                    
//                                    int CurHP = (int) std::max(0, std::min((int) Player->Health, (int)  Player->HealthMax));
//                                                                        int MaxHP = (int) Player->HealthMax;
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
                                    auto AboveHead =  Player->GetHeadLocation(true);
                                    AboveHead.Z+=35.f;
                                    FVector2D AboveHeadSc;
                                    FVector2D ROT3;
                                    
                                    
                                    if (gGameplayStatics->ProjectWorldToScreen(localPlayerController, AboveHead, false, &AboveHeadSc)) {
                                        auto mWidthScale = std::min(0.1f * Distance, 35.f);
                                        auto mWidth = 80.f - mWidthScale;
                                        auto mHeight = mWidth * 0.07f;
                                        AboveHeadSc.X -= (mWidth / 2);
                                        AboveHeadSc.Y -= (mHeight * 1.55f);
                                        if(Player->bEnsure){
                                            DrawFilledRectangle(HUD, {AboveHeadSc.X, AboveHeadSc.Y}, (CurHP * mWidth / MaxHP), mHeight, allColors::Green);
                                            DrawRectangle(HUD, {AboveHeadSc.X, AboveHeadSc.Y}, mWidth, mHeight, 1.3f, {0, 0, 0, 1.f});
                                            DrawRectangle(HUD, {AboveHeadSc.X, AboveHeadSc.Y}, mWidth-16, mHeight, 1.3f, {0, 0, 0, 1.f});
                                            DrawRectangle(HUD, {AboveHeadSc.X, AboveHeadSc.Y}, mWidth-32, mHeight, 1.3f, {0, 0, 0, 1.f});
                                            DrawRectangle(HUD, {AboveHeadSc.X, AboveHeadSc.Y}, mWidth-48, mHeight, 1.3f, {0, 0, 0, 1.f});
                                            DrawRectangle(HUD, {AboveHeadSc.X, AboveHeadSc.Y}, mWidth-64, mHeight, 1.3f, {0, 0, 0, 1.f});
                                  
                }else{
                                            DrawFilledRectangle(HUD, {AboveHeadSc.X, AboveHeadSc.Y}, (CurHP * mWidth / MaxHP), mHeight, COLOR_WHITE);
                                            DrawRectangle(HUD, {AboveHeadSc.X, AboveHeadSc.Y}, mWidth, mHeight, 1.3f, {0, 0, 0, 1.f});
                                            DrawRectangle(HUD, {AboveHeadSc.X, AboveHeadSc.Y}, mWidth-16, mHeight, 1.3f, {0, 0, 0, 1.f});
                                            DrawRectangle(HUD, {AboveHeadSc.X, AboveHeadSc.Y}, mWidth-32, mHeight, 1.3f, {0, 0, 0, 1.f});
                                            DrawRectangle(HUD, {AboveHeadSc.X, AboveHeadSc.Y}, mWidth-48, mHeight, 1.3f, {0, 0, 0, 1.f});
                                            DrawRectangle(HUD, {AboveHeadSc.X, AboveHeadSc.Y}, mWidth-64, mHeight, 1.3f, {0, 0, 0, 1.f});
   }
     }
        }
      if (Config.ESPMenu.血条) {
    int CurHP = (int)std::max(0, std::min((int)Player->Health, (int)Player->HealthMax));
    int MaxHP = (int)Player->HealthMax;

    if (Player->Health == 0.0f && !Player->bDead) {
        CurHP = Player->NearDeathBreath;
        if (Player->NearDeatchComponent) {
            MaxHP = Player->NearDeatchComponent->BreathMax;
        }
    }

//auto mWidthScale = std::min(0.1f * Distance, 35.f);
                                    auto mWidth = 158.0f;
                                    auto mHeight = 3.0f;
                                    HeadSc.X -= (mWidth / 2);
                                    HeadSc.Y -= (mHeight * 1.5f);
 
DrawFilledRectangle(HUD, {HeadSc.X, HeadSc.Y - 10}, (CurHP * mWidth / MaxHP), mHeight,{1.0f, 1.0f, 1.0f, 0.8f});                                       

                                        
if (Player->TeamID == 1 || Player->TeamID == 21 || Player->TeamID == 31 || Player->TeamID == 41 || Player->TeamID == 51 || Player->TeamID == 61 || Player->TeamID == 71 || Player->TeamID == 81 || Player->TeamID == 91 || Player->TeamID == 101 || Player->TeamID == 111 || Player->TeamID == 121 || Player->TeamID == 131 || Player->TeamID == 141 || Player->TeamID == 151 || Player->TeamID == 161 || Player->TeamID == 171 || Player->TeamID == 181 || Player->TeamID == 191 || Player->TeamID == 201 || Player->TeamID == 211){

DrawFilledRectangle(HUD, {HeadSc.X, HeadSc.Y - 32}, mWidth, 22.0f, {0.85f, 0.33f, 0.84f, 0.4f});

} else if (Player->TeamID == 2 || Player->TeamID == 22 || Player->TeamID == 32 || Player->TeamID == 42 || Player->TeamID == 52 || Player->TeamID == 62 || Player->TeamID == 72 || Player->TeamID == 82 || Player->TeamID == 92 || Player->TeamID == 102 || Player->TeamID == 112 || Player->TeamID == 122 || Player->TeamID == 132 || Player->TeamID == 142 || Player->TeamID == 152 || Player->TeamID == 162 || Player->TeamID == 172 || Player->TeamID == 182 || Player->TeamID == 192 || Player->TeamID == 202 || Player->TeamID == 212){

DrawFilledRectangle(HUD, {HeadSc.X, HeadSc.Y - 32}, mWidth, 22.0f, {0.62f, 0.12f, 0.94f, 0.4f});

} else if (Player->TeamID == 3 || Player->TeamID == 23 || Player->TeamID == 33 || Player->TeamID == 43 || Player->TeamID == 53 || Player->TeamID == 63 || Player->TeamID == 73 || Player->TeamID == 83 || Player->TeamID == 93 || Player->TeamID == 103 || Player->TeamID == 113 || Player->TeamID == 123 || Player->TeamID == 133 || Player->TeamID == 143 || Player->TeamID == 153 || Player->TeamID == 163 || Player->TeamID == 173 || Player->TeamID == 183 || Player->TeamID == 193 || Player->TeamID == 203 || Player->TeamID == 213){

DrawFilledRectangle(HUD, {HeadSc.X, HeadSc.Y - 32}, mWidth, 22.0f, {0.0f, 1.0f, 0.5f, 0.4f});

} else if (Player->TeamID == 4 || Player->TeamID == 24 || Player->TeamID == 34 || Player->TeamID == 44 || Player->TeamID == 54 || Player->TeamID == 64 || Player->TeamID == 74 || Player->TeamID == 84 || Player->TeamID == 94 || Player->TeamID == 104 || Player->TeamID == 114 || Player->TeamID == 124 || Player->TeamID == 134 || Player->TeamID == 144 || Player->TeamID == 154 || Player->TeamID == 164 || Player->TeamID == 174 || Player->TeamID == 184 || Player->TeamID == 194 || Player->TeamID == 204 || Player->TeamID == 214){

DrawFilledRectangle(HUD, {HeadSc.X, HeadSc.Y - 32}, mWidth, 22.0f, {0.53f, 0.8f, 0.92f, 0.4f});

} else if (Player->TeamID == 5 || Player->TeamID == 25 || Player->TeamID == 35 || Player->TeamID == 45 || Player->TeamID == 55 || Player->TeamID == 65 || Player->TeamID == 75 || Player->TeamID == 85 || Player->TeamID == 95 || Player->TeamID == 105 || Player->TeamID == 115 || Player->TeamID == 125 || Player->TeamID == 135 || Player->TeamID == 145 || Player->TeamID == 155 || Player->TeamID == 165 || Player->TeamID == 175 || Player->TeamID == 185 || Player->TeamID == 195 || Player->TeamID == 205 || Player->TeamID == 215){

DrawFilledRectangle(HUD, {HeadSc.X, HeadSc.Y - 32}, mWidth, 22.0f, {0.0f, 1.0f, 1.0f, 0.4f});

} else if (Player->TeamID == 6 || Player->TeamID == 26 || Player->TeamID == 36 || Player->TeamID == 46 || Player->TeamID == 56 || Player->TeamID == 66 || Player->TeamID == 76 || Player->TeamID == 86 || Player->TeamID == 96 || Player->TeamID == 106 || Player->TeamID == 116 || Player->TeamID == 126 || Player->TeamID == 136 || Player->TeamID == 146 || Player->TeamID == 156 || Player->TeamID == 166 || Player->TeamID == 176 || Player->TeamID == 186 || Player->TeamID == 196 || Player->TeamID == 206 || Player->TeamID == 216){

DrawFilledRectangle(HUD, {HeadSc.X, HeadSc.Y - 32}, mWidth, 22.0f, {0.12f, 0.56f, 1.0f, 0.4f});

} else if (Player->TeamID == 7 || Player->TeamID == 27 || Player->TeamID == 37 || Player->TeamID == 47 || Player->TeamID == 57 || Player->TeamID == 67 || Player->TeamID == 77 || Player->TeamID == 87 || Player->TeamID == 97 || Player->TeamID == 107 || Player->TeamID == 117 || Player->TeamID == 127 || Player->TeamID == 137 || Player->TeamID == 147 || Player->TeamID == 157 || Player->TeamID == 167 || Player->TeamID == 177 || Player->TeamID == 187 || Player->TeamID == 197 || Player->TeamID == 207 || Player->TeamID == 217){

DrawFilledRectangle(HUD, {HeadSc.X, HeadSc.Y - 32}, mWidth, 22.0f, {1.0f, 0.0f, 1.0f, 0.4f});

} else if (Player->TeamID == 8 || Player->TeamID == 18 || Player->TeamID == 28 || Player->TeamID == 38 || Player->TeamID == 48 || Player->TeamID == 58 || Player->TeamID == 68 || Player->TeamID == 78 || Player->TeamID == 88 || Player->TeamID == 98 || Player->TeamID == 108 || Player->TeamID == 118 || Player->TeamID == 128 || Player->TeamID == 138 || Player->TeamID == 148 || Player->TeamID == 158 || Player->TeamID == 168 || Player->TeamID == 178 || Player->TeamID == 188 || Player->TeamID == 198 || Player->TeamID == 208 || Player->TeamID == 218){

DrawFilledRectangle(HUD, {HeadSc.X, HeadSc.Y - 32}, mWidth, 22.0f, {0.16f, 0.14f, 0.13f, 0.4f});

} else if (Player->TeamID == 9 || Player->TeamID == 19 || Player->TeamID == 29 || Player->TeamID == 39 || Player->TeamID == 49 || Player->TeamID == 59 || Player->TeamID == 69 || Player->TeamID == 79 || Player->TeamID == 89 || Player->TeamID == 99 || Player->TeamID == 109 || Player->TeamID == 119 || Player->TeamID == 129 || Player->TeamID == 139 || Player->TeamID == 149 || Player->TeamID == 159 || Player->TeamID == 169 || Player->TeamID == 179 || Player->TeamID == 189 || Player->TeamID == 199 || Player->TeamID == 209 || Player->TeamID == 219){

DrawFilledRectangle(HUD, {HeadSc.X, HeadSc.Y - 32}, mWidth, 22.0f, {1.0f, 0.5f, 0.31f, 0.4f});

} else if (Player->TeamID == 10){

DrawFilledRectangle(HUD, {HeadSc.X, HeadSc.Y - 32}, mWidth, 22.0f, {0.42f, 0.35f, 0.8f, 0.4f});

} else if (Player->TeamID == 11){

DrawFilledRectangle(HUD, {HeadSc.X, HeadSc.Y - 32}, mWidth, 22.0f, {0.5f, 1.0f, 0.8f, 0.4f});

} else if (Player->TeamID == 12){

DrawFilledRectangle(HUD, {HeadSc.X, HeadSc.Y - 32}, mWidth, 22.0f, {0.25f, 0.41f, 0.88f, 0.4f});

} else if (Player->TeamID == 13){

DrawFilledRectangle(HUD, {HeadSc.X, HeadSc.Y - 32}, mWidth, 22.0f, {1.0f, 0.5f, 0.0f, 0.4f});

} else if (Player->TeamID == 14){

DrawFilledRectangle(HUD, {HeadSc.X, HeadSc.Y - 32}, mWidth, 22.0f, {0.94f, 0.9f, 0.5f, 0.4f});

} else if (Player->TeamID == 15){

DrawFilledRectangle(HUD, {HeadSc.X, HeadSc.Y - 32}, mWidth, 22.0f, {0.75f, 0.75f, 0.75f, 0.4f});

} else if (Player->TeamID == 16){

DrawFilledRectangle(HUD, {HeadSc.X, HeadSc.Y - 32}, mWidth, 22.0f, {1.0f, 0.92f, 0.8f, 0.4f});

} else if (Player->TeamID == 17){

DrawFilledRectangle(HUD, {HeadSc.X, HeadSc.Y - 32}, mWidth, 22.0f, {0.89f, 0.09f, 0.05f, 0.4f});

}else {

DrawFilledRectangle(HUD, {HeadSc.X, HeadSc.Y - 32}, mWidth, 22.0f, {0.89f, 0.09f, 0.05f, 0.4f});
}
}






//引擎绘制1
if(引擎绘制1) {
float CurHP = std::max(0.f, std::min(Player->Health,
Player->HealthMax));
float MaxHP = Player->HealthMax;

FLinearColor ColorHP = {
std::min(((510.f * (MaxHP - CurHP)) / MaxHP) / 255.f, 1.f), std::min(((510.f * CurHP) / MaxHP) / 255.f, 1.f), 0.f, 0.5f
};
if (CurHP == 0 && !Player->bDead) {
ColorHP = {
0.63f, 0.82f, 0.42f, 0.75f
};
CurHP = Player->NearDeathBreath;
USTCharacterNearDeathComp *NearDeatchComponent = Player->NearDeatchComponent;
if (NearDeatchComponent) {
MaxHP = NearDeatchComponent->BreathMax;
}
}

auto AboveHead = Player->GetHeadLocation(true);
AboveHead.Z += 35.f;
FVector2D AboveHeadSc;



if (gGameplayStatics->ProjectWorldToScreen(localPlayerController,
AboveHead,
false,
&AboveHeadSc)) {
auto mWidthScale = std::min(0.1f * Distance, 35.f);
auto mWidth = 140;
auto mHeight = 20.f;
AboveHeadSc.X -= (mWidth / 2);
AboveHeadSc.Y -= (mHeight * 1.25f); //155




if(Player->bEnsure) {

robotoTinyFont->LegacyFontSize = 10;

DrawFilledRectangle(HUD, {
AboveHeadSc.X, AboveHeadSc.Y
}, (CurHP * mWidth / MaxHP), mHeight, COLOR_BLACK);



}else {

robotoTinyFont->LegacyFontSize = 10;





DrawFilledRectangle(HUD, {
AboveHeadSc.X, AboveHeadSc.Y
}, (CurHP * mWidth / MaxHP), mHeight, COLOR_BLUE);




}
}



}


 if (ZERO) {
                                    int CurHP = (int)std::max(0, std::min((int)Player->Health, (int)Player->HealthMax));
                                    int MaxHP = (int)Player->HealthMax;
                                    
                                    if (Player->Health == 0.0f && !Player->bDead) {
                                        CurHP = Player->NearDeathBreath;
                                        if (Player->NearDeatchComponent) {
                                            MaxHP = Player->NearDeatchComponent->BreathMax;
                                        }
                                    }
                                    
                                    float boxHeight = fabsf(RootSc.Y - HeadSc.Y);
                                    float boxWidth = boxHeight * 0.58;
                                    Rect2 PlayerRect(HeadSc.X - (boxWidth / 2), HeadSc.Y + boxHeight, boxWidth, boxHeight);
                                    
                                    drawVerticalHealthBar(HUD,Vector2(PlayerRect.x + PlayerRect.width, PlayerRect.y), -boxHeight, MaxHP, CurHP);
                                }


                                       // ESP 手持
						if (Config.ESPMenu.Weapon){
                                    FVector BelowRoot = Player->GetBonePos("spine_03", {});
                                    FVector2D BelowRootSc;

                                    if (gGameplayStatics->ProjectWorldToScreen(localPlayerController, BelowRoot, false, &BelowRootSc)) {
					auto WeaponManagerComponent = Player->WeaponManagerComponent;
        if (WeaponManagerComponent) {
            {
          auto CurrentWeaponReplicated = (ASTExtraShootWeapon *)WeaponManagerComponent->CurrentWeaponReplicated;
          if (CurrentWeaponReplicated) {
           auto WeaponId = (int)CurrentWeaponReplicated->GetWeaponID();
           if (WeaponId) {
            

            std::wstring s; 
			s += CurrentWeaponReplicated->GetWeaponName().ToWString();
		robotoFont->LegacyFontSize = 9.2f;
		 DrawOutlinedText(HUD, FString(s), FVector2D(RootSc.X - 1, (RootSc.Y + 1)), COLOR_WHITE, COLOR_BLACK, true);
				}			
           }
          }
         }
        }
		
       }

//雷达预警
	if(Config.ESPMenu.Radar){
                                        bool out = false;
                                        struct Vector3 Pos;
                                        Pos.X = (Config.ESPMenu.RadarX * 10);
Pos.Y = (Config.ESPMenu.RadarY * 10);
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
                                        DrawFilledRectangle(HUD, FVector2D{RadarCenterX + 0.5f,RadarCenterY + 0.5f}, 5, 5, COLOR_YELLOW);
                                        if (!g_PlayerController->LineOfSightTo(g_PlayerController->PlayerCameraManager,Head, true))
                                            {
                                            DrawFilledRectangle(HUD, FVector2D{RadarSketch.X,RadarSketch.Y}, 5, 5,COLOR_BLUE);
                                           }else{
                                            DrawFilledRectangle(HUD, FVector2D{RadarSketch.X,RadarSketch.Y}, 5, 5,COLOR_RED);
                                            }    
                                        }




						if (Config.ESPMenu.Name)
					{
                        auto AboveHead = Player->GetHeadLocation(true);
                        AboveHead.Z += 25.f;
                        FVector2D AboveHeadSc;
                        if (gGameplayStatics->ProjectWorldToScreen(localPlayerController,AboveHead, false,&AboveHeadSc)) {
						tslFont->LegacyFontSize = 13.f;
                        std::wstring Text;
                        Text = L"Bot";
                        float txtWidth, txtHeight;
                        HUD->GetTextSize(Player->PlayerName, tslFont, 1.f, &txtWidth, &txtHeight);
						if(!Player->bEnsure) {
                            DrawOutlinedText(HUD, Player->PlayerName, {AboveHeadSc.X - 2, AboveHeadSc.Y - 22}, {1.f, 1.f, 1.f, 1.f}, COLOR_BLACK, true);
                            } else {
                            DrawOutlinedText(HUD, FString(Text), {AboveHeadSc.X - 2, AboveHeadSc.Y - 22}, {1.f, 1.f, 1.f, 1.f}, COLOR_BLACK, true);
                            }
						}
					}
                            if (Config.ESPMenu.Distance){
                            auto AboveHead = Player->GetHeadLocation(true);
                            AboveHead.Z += 25.f;
                            FVector2D AboveHeadSc;
                            if (gGameplayStatics->ProjectWorldToScreen(localPlayerController,AboveHead, false,&AboveHeadSc)) {
                         //   std::wstring ws;
                            std::wstring s;
                            //team id
                           // ws += L"T";
                          //  ws += std::to_wstring(Player->TeamID);
                            //distance
                            s += std::to_wstring((int) Distance);
                            s += L"M";
                            tslFont->LegacyFontSize = 13.f;
                            float txtWidth, txtHeight;
                            HUD->GetTextSize(Player->PlayerName, tslFont, 1.f, &txtWidth, &txtHeight);
                            DrawOutlinedText(HUD, s, FVector2D(AboveHeadSc.X + 40, AboveHeadSc.Y - 43), {1.f, 1.f, 1.f, 1.f}, COLOR_BLACK, true);
                         //   DrawOutlinedText(HUD, ws, FVector2D(AboveHeadSc.X - 55, AboveHeadSc.Y - 43), {0.f, 1.f, 0.f, 1.f}, COLOR_BLACK, true);
                            }
                        }
                        if (Config.ESPMenu.TeamID){
                            auto AboveHead = Player->GetHeadLocation(true);
                            AboveHead.Z += 15.f;
                            FVector2D AboveHeadSc;
                            if (gGameplayStatics->ProjectWorldToScreen(localPlayerController,AboveHead, false,&AboveHeadSc)) {
                            std::wstring ws;
                         //   std::wstring s;
                            //team id
                            ws += L"T";
                            ws += std::to_wstring(Player->TeamID);
                            //distance
                          //  s += std::to_wstring((int) Distance);
                           // s += L"M";
                            tslFont->LegacyFontSize = 13.f;
                            float txtWidth, txtHeight;
                            HUD->GetTextSize(Player->PlayerName, tslFont, 1.f, &txtWidth, &txtHeight);
                          //  DrawOutlinedText(HUD, s, FVector2D(AboveHeadSc.X + 40, AboveHeadSc.Y - 43), {1.f, 1.f, 1.f, 1.f}, COLOR_BLACK, true);
                            DrawOutlinedText(HUD, ws, FVector2D(AboveHeadSc.X - 55, AboveHeadSc.Y - 43), {0.f, 1.f, 0.f, 1.f}, COLOR_BLACK, true);
						}
					}
//载具信息


                                    }
                                }
                            }



    UGameplayStatics* gGameplayStatics = (UGameplayStatics*)UGameplayStatics::StaticClass();
    if (Config.ESPMenu.GRWAR)
    {
        std::vector < ASTExtraGrenadeBase * >GrenadeBase;
        GetAllActors(GrenadeBase);
        for (auto actor = GrenadeBase.begin();
             actor != GrenadeBase.end(); actor++)
        {

            auto Grenade = *actor;
            if(Grenade) {
                if(Grenade->ItemDefineID.TypeSpecificID ==602002)
                    continue;
                if(Grenade->ItemDefineID.TypeSpecificID == 602004);
                auto RootComponent = Grenade->RootComponent;
                if (RootComponent) {
                    float gDistance =
                    Grenade->GetDistanceTo(localPlayer) /100.f;
                    if (gDistance <= 200.f)
                    {
                        tslFont->LegacyFontSize =
                        max(6, 15 - (int)(gDistance / 100.f));
                        float txtWidth, txtHeight;
                        std::wstring grenadetext = (L"BOM");

                        HUD->GetTextSize(grenadetext,
                                          tslFont, 1.f, &txtWidth,
                                          &txtHeight);
                        FVector2D Location;
                        if (W2S
                            (RootComponent->RelativeLocation, &Location))
                        {
                            DrawOutlinedText(HUD,
                                             FString(
                                                     grenadetext),
                                             FVector2D(Location.X,
                                                       Location.Y + 34),COLOR_RED, COLOR_BLACK, true);
                        }
;
//                                                        }
                        tslFont->LegacyFontSize = TSL_FONT_DEFAULT_SIZE;
                        if (gDistance < 13)
                        {
                           
                            std::wstring gwarn;
                            gwarn = std::wstring(L"ĐỊT CỤ MÀY BOMM KÌA");//iAwareTexSiz
                       
                            tslFont->LegacyFontSize = 4 + iAwareTexSiz;
                            DrawOutlinedText(HUD, FString(gwarn),
                                             FVector2D(screenWidth / 2,
                                                       screenHeight / 2),
                                             COLOR_RED, COLOR_BLACK, true);
                            tslFont->LegacyFontSize =
                            TSL_FONT_DEFAULT_SIZE;
                           
                            
                            
                        }//
                        {
                            

                            ImDrawList* draw;
               
                            FVector2D Cross;
                            
                            Cross.X = 890.0f;
                            Cross.Y = 840.0f; // Front
//                            Cross.Z = 3.0f; // Height
                            FVector bbOrigin =
                            RootComponent->RelativeLocation;
                            FVector bbExtends(700, 700, 3);
                            FVector bbExtends2(10, 10, 3);
                            FVector bbOrigin2 =
                            RootComponent->RelativeLocation;
                            bbOrigin -= bbExtends / 2;
                            bbOrigin2 -= bbExtends2 / 2;
                            // bottom plane
//                            FVector grenadePos = bbOrigin;
                            FVector one = bbOrigin;
                            FVector two = bbOrigin;
                            FVector giua = bbOrigin2;
                            two.X += bbExtends.X;
                            giua.X += bbExtends2.X;
                            FVector three = bbOrigin;
                            three.X += bbExtends.X;
                            three.Y += bbExtends.Y;
                            FVector four = bbOrigin;
                            four.Y += bbExtends.Y;
                            FVector five = one;
                            five.Z += bbExtends.Z;
                            FVector six = two;
                            FVector six2 = giua;
                            six.Z += bbExtends.Z;
                            six2.Z += bbExtends2.Z;
                            FVector seven = three;
                            seven.Z += bbExtends.Z;
                            FVector eight = four;
                            eight.Z += bbExtends.Z;
                            FVector2D s1, s2, s3, s4, s5, s6, s7, s8, sgiua;
                            FVector2D grenadePos;
                            if (W2S(one, &s1) && W2S(two, &s2)
                                && W2S(three, &s3) && W2S(four, &s4)
                                && W2S(five, &s5) && W2S(six, &s6)
                                && W2S(seven, &s7) && W2S(eight, &s8) && W2S(giua, &sgiua) && W2S(Grenade->K2_GetActorLocation(), &grenadePos))
                            {
                                HUD->Canvas->K2_DrawLine(Cross, sgiua, 2.3f, COLOR_YELLOW);
                                DrawLine(HUD, s1, s2, 1.3f, COLOR_RED);
                                                                DrawLine(HUD, s2, s3,1.3f, COLOR_RED);
                                                            DrawLine(HUD, s3, s4, 1.3f, COLOR_RED);
                                                                DrawLine(HUD, s4, s1, 1.3f, COLOR_RED);
                                DrawLine(HUD, s5, s6, 1.3f, COLOR_RED);
                                DrawLine(HUD, s6, s7, 1.3f, COLOR_RED);
                                DrawLine(HUD, s7, s8,1.3f, COLOR_RED);
                                DrawLine(HUD, s8, s5, 1.3f, COLOR_RED);
                                DrawLine(HUD, s1, s5, 1.3f, COLOR_RED);
DrawLine(HUD, s2, s6, 1.3f, COLOR_RED);
                                DrawLine(HUD, s3, s7, 1.3f, COLOR_RED);
                                DrawLine(HUD, s4, s8, 1.3f, COLOR_RED);
                             

                                Circle3D(draw, Grenade->K2_GetActorLocation(), 720, ImColor(0, 255, 255, 255), 60);
                            
                            }
                            
                            
                            
                        }
                    }
                }
            }
        }
        GrenadeBase.clear();
    }
          // 绘制人生

                            if (totalEnemies > 0 || totalBots > 0) {
    std::wstring numi = L"player: " + std::to_wstring(totalEnemies) +
                        L" Bot: " + std::to_wstring(totalBots) + L"";
    tslFont->LegacyFontSize = 15;
    DrawTextcan(HUD, FString(numi), {(float) screenWidth / 2, 120},
                COLOR_RED, COLOR_BLACK);
}
                        }
                    }
                }
        // islootbox
        if(IsLootBox) {
            // std::vector<Airdropbox*>ddd;
            
            std::vector < APickUpListWrapperActor * >ItemBase;
         
            GetAllActors(ItemBase);
            
            for (auto actor = ItemBase.begin(); actor != ItemBase.end(); actor++)
            {
                auto PickUpList = *actor;
                auto RootComponent = PickUpList->RootComponent;
                if (!RootComponent)
                    continue;
                //--
                std::wstring lootBoxType;
                switch (PickUpList->BoxType) {
                    case EPickUpBoxType::EPickUpBoxType__EPickUpBoxType_LootBox:
                        lootBoxType = L"LootBox";
                    case EPickUpBoxType::EPickUpBoxType__EPickUpBoxType_TombBox:
                        lootBoxType = L"TomBOX";
                    case EPickUpBoxType::EPickUpBoxType__EPickUpBoxType_AirDropBox:
                        lootBoxType = L"Airdrop";
                    default:
                        lootBoxType = L"LootBox";
                }
               
                
                //--
                float Distance = PickUpList->GetDistanceTo(localPlayer) / 100.f;
                auto Location = PickUpList->RootComponent->RelativeLocation;
                FVector2D itemPos;
                DrawBox3D(HUD,PickUpList, COLOR_LIME, Location, FVector(26, 42, 15));//draw TomBOX 3d
                if( W2S(Location, &itemPos)){
                    auto Items = PickUpList->GetDataList();
                    for (int i = 0; i < Items.Num(); i++) {
                        auto iditeam = Items[i].ID.TypeSpecificID;
                        std::wstring AR;
                        std::wstring SM;
                        std::wstring SN;
                        std::wstring SH;
                        std::wstring OTH;
                        std::wstring AMMO;
                        std::wstring SCO;
                        std::wstring ARM;
                        std::wstring item;
                        std::wstring airdrop_x;
                        switch (iditeam) {
                            case 101001:
                                AR = std::wstring(L" AKM ");
                                break;
                            case 101002:
                                AR = std::wstring(L" M16A4 ");
                                break;
                            case 101003:
                                AR = std::wstring(L" SCAR-L ");
                                break;
                            case 101004:
                                AR = std::wstring(L" M416 ");
                                break;
                            case 101005:
                                AR= std::wstring(L" Groza ");
                                break;
                            case 101006:
                                AR = std::wstring(L" AUG ");
                                break;
                            case 602002:

                                    AR = std::wstring(L" Smoke ");

                                break;
                            case 602003:

                                    AR = std::wstring(L" Molitove ");

                                break;
                            case 602004:
                                
                                    SM = std::wstring(L" Grenade ");
                                
                                
                                break;
                            case 101007:
                                SM = std::wstring(L" QBZ ");
                                break;
                            case 101008:
                                SM = std::wstring(L" M762 ");
                                break;
                            case 101009:
                                SM = std::wstring(L" Mk47 ");
                                break;
                            case 101010:
                                SM = std::wstring(L" G36C ");
                                break;
                            case 101100:
                                SM = std::wstring(L" FAMAS ");
                                break;
                            case 102001:
                                SM = std::wstring(L" UZI ");
                                break;
                            case 102002:
                                SM = std::wstring(L" UMP45 ");
                                break;
                            case 102003:
                                SM = std::wstring(L" Vector ");
                                break;
                            case 102004:
                                SN = std::wstring(L" TommyGun ");
                                break;
                            case 102005:
                                SN = std::wstring(L" PP-19 Bizon ");
                                break;
                            case 102007:
                                SN = std::wstring(L" Skorpion ");
                                break;
                            case 103001:
                                SN = std::wstring(L" Kar98K ");
                                break;
                            case 103002:
                                SN = std::wstring(L" M24 ");
                                break;
                            case 103003:
                                SN = std::wstring(L" AWM ");
                                break;
                            case 103004:
                                SN = std::wstring(L" SKS ");
                                break;
                            case 103005:
                                SN = std::wstring(L" VSS ");
                                break;
                            case 103006:
                                SN = std::wstring(L" Mini14 ");
                                break;
                            case 103007:
                                SN = std::wstring(L" Mk14 ");
                                break;
                            case 103008:
                                SN = std::wstring(L" Win94 ");
                                break;
                            case 103009:
                                SH = std::wstring(L" SLR ");
                                break;
                            case 103010:
                                SH = std::wstring(L" QBU ");
                                break;
                            case 103011:
                                SH = std::wstring(L" Mosin ");
                                break;
                            case 103012:
                                SH =std::wstring(L"AMR Sniper");
                                break;
                            case 103100:
                                SH = std::wstring(L" Mk12 ");
                                break;
                            case 104001:
                                SH = std::wstring(L" S686 ");
                                break;
                            case 104002:
                                SH = std::wstring(L" S1897 ");
                                break;
                            case 104003:
                                SH = std::wstring(L" S12K ");
                                break;
                            case 104004:
                                SH = std::wstring(L" M1014 ");
                                break;
                            case 106006:
                                SH = std::wstring(L" Sawed-off ");
                                break;
                            case 203001:

                                    OTH = std::wstring(L"Red Dot");
                                
                                break;
                            case 203002:

                                    OTH = std::wstring(L"Holographic");
                                break;
                            case 203003:

                                    OTH = std::wstring(L"2x Scope");
                                    
                                break;
                            case 203004:
                                    OTH = std::wstring(L"4x Scope");

                                break;
                            case 203005:
                                    OTH = std::wstring(L"8x Scope");

                                break;
                            case 203014:

                                    OTH = std::wstring(L"3x Scope");

                                break;
                            case 203015:

                                    OTH = std::wstring(L"6x Scope");
                                break;
                            case 301001:
                                OTH = std::wstring(L" 9mm ");
                                break;
                            case 302001:
                                OTH = std::wstring(L" 7.62mm");
                                break;
                            case 303001:
                                OTH = std::wstring(L" 5.56mm ");
                                break;
                            case 304001:

                                    OTH = std::wstring(L"12 Gauge");

                                break;
                            case 305001:

                                    OTH = std::wstring(L".45 ACP");
                                break;
                            case 306001:

                                    OTH = std::wstring(L".300 Magnum");

                                break;
                            case 307001:

                                    OTH = std::wstring(L"Crossbow");

                                break;
                            case 105001:
                                OTH = std::wstring(L" M249 ");
                                break;
                            case 105002:
                                OTH = std::wstring(L" DP-28 ");
                                break;
                            case 601001:

                                    SCO = std::wstring(L"Soda");

                                break;
                            case 601002:

                                    SCO = std::wstring(L"Pills");

                                break;
                            case 601003:

                                    SCO = std::wstring(L"Adrenaline");

                                break;
                            case 601004:

                                    SCO = std::wstring(L"Bandage");

                                break;
                            case 601005:

                                    SCO = std::wstring(L"First Aid");

                                break;
                            case 601006:

                                    SCO = std::wstring(L"Med kit");

                                break;
                            case 501001:

                                    SCO = std::wstring(L"Bag Lv1");

                                break;
                            case 501002:

                                    SCO = std::wstring(L"Bag Lv2");

                                break;
                            case 501006:
AMMO = std::wstring(L"Bag Lv3");

                                break;
                            case 502001:
AMMO = std::wstring(L"Helmet Lv1");
                                
                                break;
                            case 502002:
                                    AMMO = std::wstring(L"Helmet Lv2");

                                break;
                            case 502003:
                                    AMMO = std::wstring(L"Helmet Lv3");

                                break;
                            case 503001:
                                    AMMO = std::wstring(L"Police Vest(Lv1)");

                                break;
                            case 503002:
                                    AMMO = std::wstring(L"Police Vest(Lv2)");

                                break;
                            case 503003:
                                    AMMO = std::wstring(L"Police Vest(Lv3)");

                                break;
                            default:
                                break;
                        }
                        
                        
                        robotoTinyFont->LegacyFontSize = IteTextSiz, 13 - (int) (Distance / 100);//5
                        float txtWidth, txtHeight;
                        HUD->GetTextSize(FString(AR), robotoTinyFont, 1.f, &txtWidth,
                                          &txtHeight);
                        HUD->GetTextSize(FString(SN), robotoTinyFont, 1.f, &txtWidth,
                                          &txtHeight);
                        HUD->GetTextSize(FString(SH), robotoTinyFont, 1.f, &txtWidth,
                                          &txtHeight);
                        HUD->GetTextSize(FString(SM), robotoTinyFont, 1.f, &txtWidth,
                                          &txtHeight);
                        HUD->GetTextSize(FString(AMMO), robotoTinyFont, 1.f, &txtWidth,
                                          &txtHeight);
                        HUD->GetTextSize(FString(OTH), robotoTinyFont, 1.f, &txtWidth,
                                          &txtHeight);
                        HUD->GetTextSize(FString(SCO), robotoTinyFont, 1.f, &txtWidth,
                                          &txtHeight);
                        itemPos.Y += txtHeight *1.3;
                        visCol.R = 1;
                        visCol.G = 0.3;
                        visCol.B = 0.2;
                        visCol.A = 1.f;
                        DrawSmallOutlinedText(HUD, AR, { itemPos.X,itemPos.Y}, visCol, COLOR_BLACK);
                        visCol.R = 0.3;
                        visCol.G = 1;
                        visCol.B = 0.2;
                        visCol.A = 1.f;
                        DrawSmallOutlinedText(HUD, OTH, { itemPos.X,itemPos.Y}, visCol, COLOR_BLACK);
                        visCol.R = 0.2;
                        visCol.G = 0.3;
                        visCol.B = 1;
                        visCol.A = 1.f;
                        DrawSmallOutlinedText(HUD, SM, { itemPos.X,itemPos.Y}, visCol, COLOR_BLACK);
                        visCol.R = 1.2;
                        visCol.G = 1.5;
                        visCol.B = 0.5;
                        visCol.A = 1.f;
                        DrawSmallOutlinedText(HUD, SN, { itemPos.X,itemPos.Y}, visCol, COLOR_BLACK);
                        visCol.R = 0.2;
                        visCol.G = 0.3;
                        visCol.B = 0.2;
                        visCol.A = 1.f;
                        DrawSmallOutlinedText(HUD, SH, { itemPos.X,itemPos.Y}, visCol, COLOR_BLACK);
                        visCol.R = 1;
                        visCol.G = 1;
                        visCol.B = 1.4;
                        visCol.A = 1.f;
                        DrawSmallOutlinedText(HUD, SCO, { itemPos.X,itemPos.Y}, visCol, COLOR_BLACK);
                        visCol.R = 1.2;
                        visCol.G = 3.3;
                        visCol.B = 3.2;
                        visCol.A = 1.f;
                        DrawSmallOutlinedText(HUD, AMMO, { itemPos.X,itemPos.Y}, visCol, COLOR_BLACK);
                        // next line for text not approved yet - to draw lootbox name
                        DrawSmallOutlinedText(HUD, lootBoxType, { 100.f,100.f}, visCol, COLOR_BLACK);
                    }
                }
            }ItemBase.clear();
        }
        //Airdrop esp
        if(IsAirDrop){
            //(actor->IsA(Classes::ACarePackageItem::StaticClass()))
            //APickUpListWrapperActor->AAirDropListWrapperActor
            std::vector < AAirDropListWrapperActor * >ItemBase;
            GetAllActors(ItemBase);
            for (auto actor = ItemBase.begin(); actor != ItemBase.end(); actor++)
            {
                auto PickUpList = *actor;
                //std::wstring lootType = GetLootName(PickUpList);
                auto RootComponent = PickUpList->RootComponent;
                if (!RootComponent)
                    continue;
                //float Distance = PickUpList->GetDistanceTo(localPlayer) / 100.f;
                auto Location = PickUpList->RootComponent->RelativeLocation;
                FVector2D itemPos;
                //auto LotTypeSTR = "";
                //LotTypeSTR =  GetLootName(PickUpList);
                DrawBox3D(HUD,PickUpList, COLOR_RED, Location, FVector(50, 50, 50));
                
                /*if(PickUpList->BoxType == EPickUpBoxType::EPickUpBoxType__EPickUpBoxType_AirDropBox){
                 DrawBox3D(pHUD,PickUpList, COLOR_LIME, Location, FVector(26, 42, 15));
                 }*/
            }
        }
        {
            std::vector<APickUpWrapperActor*> ITEMM;
            GetAllActors(ITEMM);
            for (auto actor = ITEMM.begin(); actor != ITEMM.end(); actor++) {
                auto PickUp = *actor;
                //if(PickUp->IsA(FAirDropBoxData)){};
                if(PickUp->bIsInAirDropBox){
                    auto Location = PickUp->RootComponent->RelativeLocation;
                    DrawBox3D(HUD,PickUp, COLOR_BLUE, Location, FVector(60, 60, 60));
                };
                auto pp =(PickUp->DefineID.TypeSpecificID);
                if(pp){
                    auto RootComponent = PickUp->RootComponent;
                    if (!RootComponent ||PickUp->bHidden)
                        continue;
                    float Distance = PickUp->GetDistanceTo(localPlayer) / 100.f;
                    FVector2D itemPos;
                    if (Distance > 2 && Distance <= 50) {
                        if(gGameplayStatics->ProjectWorldToScreen(localPlayerController, PickUp->K2_GetActorLocation(), true, &itemPos)){
                            std::wstring AR;
                            std::wstring SM;
                            std::wstring SN;
                            std::wstring SH;
                            std::wstring OTH;
                            std::wstring AMMO;
                            std::wstring SCO;
                            std::wstring ARM;
                            std::wstring item;
                            if(IsITM){
                            if(IsAR){
                                switch (pp) {
                                    case 101001://need to be translate
                                        AR = std::wstring(L" AKM ");
                                        break;
                                    case 101002:
                                        AR = std::wstring(L" M16A4 ");
                                        break;
                                    case 101003:
                                        AR = std::wstring(L" SCAR-L ");
                                        break;
                                    case 101004:
                                        AR = std::wstring(L" M416 ");
                                        break;
                                    case 101005:
                                        AR= std::wstring(L" Groza ");
                                        break;
                                    case 101006:
                                        AR = std::wstring(L" AUG ");
                                        break;
                                    case 602002:
                                        
                                            AR = std::wstring(L" Smoke ");

                                        
                                        break;
                                    case 602003:
                                        
                                            AR = std::wstring(L" Molitove ");

                                        break;
                                    case 602004:
                                        
                                            AR = std::wstring(L" Grenade ");

                                        
                                        break;
                                    case 101007:
                                        AR = std::wstring(L" QBZ ");
                                        break;
                                    case 101008:
                                        AR = std::wstring(L" M762 ");
                                        break;
                                    case 101009:
                                        AR = std::wstring(L" Mk47 ");
                                        break;
                                    case 101010:
                                        AR = std::wstring(L" G36C ");
                                        break;
                                    case 101100:
                                        AR = std::wstring(L" FAMAS ");
                                        break;
                                    default:
                                        break;
                                }
                                visCol.R = 1.f;
                                visCol.G = 1.4f;
                                visCol.B = 0.5f;
                                visCol.A = 1.f;
                                robotoTinyFont->LegacyFontSize = IteTextSiz, 13 - (int) (Distance / 100);//5
                                DrawSmallOutlinedText(HUD, AR, { itemPos.X,itemPos.Y}, visCol, COLOR_BLACK);
                            }
                        }
                            if(IsSMG){
                                switch (pp) {
                                    case 102001:
                                        SM = std::wstring(L" UZI ");
                                        break;
                                    case 102002:
                                        SM = std::wstring(L" UMP45 ");
                                        break;
                                    case 102003:
                                        SM = std::wstring(L" Vector ");
                                        break;
                                    case 102004:
                                        SM = std::wstring(L" TommyGun ");
                                        break;
                                    case 102005:
                                        SM = std::wstring(L" PP-19 Bizon ");
                                        break;
                                    case 102007:
                                        SM = std::wstring(L" Skorpion ");
                                        break;
                                    default:
                                        break;
                                }
                                robotoTinyFont->LegacyFontSize = IteTextSiz, 13 - (int) (Distance / 100);//5
                                visCol.R = 1;
                                visCol.G = 0.3;
                                visCol.B = 0.2;
                                visCol.A = 1.f;
                                DrawSmallOutlinedText(HUD, SM, { itemPos.X,itemPos.Y}, visCol, COLOR_BLACK);
                            }
                            if(IsSniper){
                                switch (pp) {
                                    case 103001:
                                        SN = std::wstring(L" Kar98K ");
                                        break;
                                    case 103002:
                                        SN = std::wstring(L" M24 ");
                                        break;
                                    case 103003:
                                        SN = std::wstring(L" AWM ");
                                        break;
                                    case 103004:
                                        SN = std::wstring(L" SKS ");
                                        break;
                                    case 103005:
                                        SN = std::wstring(L" VSS ");
                                        break;
                                    case 103006:
                                        SN = std::wstring(L" Mini14 ");
                                        break;
                                    case 103007:
                                        SN = std::wstring(L" Mk14 ");
                                        break;
                                    case 103008:
                                        SN = std::wstring(L" Win94 ");
                                        break;
                                    case 103009:
                                        SN = std::wstring(L" SLR ");
                                        break;
                                    case 103010:
                                        SN = std::wstring(L" QBU ");
                                        break;
                                    case 103011:
                                        SN = std::wstring(L" Mosin ");
                                        break;
                                    case 103012:
                                        SN =std::wstring(L"AMR Sniper");
                                        break;
                                    default:
                                        break;
                                }
                                robotoTinyFont->LegacyFontSize = IteTextSiz, 13 - (int) (Distance / 100);//5
                                visCol.R = 0.9f;
                                visCol.G = 2.8f;
                                visCol.B = 0.7f;
                                visCol.A = 1;
                                DrawSmallOutlinedText(HUD, SN, { itemPos.X,itemPos.Y}, visCol, COLOR_BLACK);
                            }
                            if(IsShotgun){
                                switch (pp) {
                                    case 103100:
                                        SH = std::wstring(L" Mk12 ");
                                        break;
                                    case 104001:
                                        SH = std::wstring(L" S686 ");
                                        break;
                                    case 104002:
                                        SH = std::wstring(L" S1897 ");
                                        break;
                                    case 104003:
                                        SH = std::wstring(L" S12K ");
                                        break;
                                    case 104004:
                                        SH = std::wstring(L" M1014 ");
                                        break;
                                    case 106006:
                                        SH = std::wstring(L" Sawed-off ");
                                        break;
                                    default:
                                        break;
                                }
                                robotoTinyFont->LegacyFontSize = IteTextSiz, 13 - (int) (Distance / 100);//5
                                visCol.R = 1;
                                visCol.G = 1.3;
                                visCol.B = 0.4;
                                visCol.A = 1;
                                DrawSmallOutlinedText(HUD, SH, { itemPos.X,itemPos.Y}, visCol, COLOR_BLACK);
                            }
                            if(IsShotgun){
                                switch (pp) {
                                    case 106001:
                                        item = std::wstring(L" P1911 ");
                                        break;
                                    case 106003:
                                        item = std::wstring(L" R1895 ");
                                        break;
                                    case 106004:
                                        item = std::wstring(L" P18C ");
                                        break;
                                    case 106005:
                                        item = std::wstring(L" R45 ");
                                        break;
                                    case 106008:
                                        item = std::wstring(L" Vz61 ");
                                        break;
                                    case 106010:
                                        item = std::wstring(L" Desert Eagle ");
                                        break;
                                    default:
                                        break;
                                }
                                robotoTinyFont->LegacyFontSize = IteTextSiz, 13 - (int) (Distance / 100);//5
                                visCol.R = 0.98f;
                                visCol.G = 1;
                                visCol.B = 1;
                                visCol.A = 1;
                                DrawSmallOutlinedText(HUD, item, { itemPos.X,itemPos.Y}, visCol, COLOR_BLACK);
                            }
                            if(IsShotgun){
                                switch (pp) {
                                    case 203001:

                                            SCO = std::wstring(L"Red Dot");

                                        break;
                                    case 203002:
                                        
                                            SCO = std::wstring(L"Holographic");
                                        break;
                                    case 203003:
                                            SCO = std::wstring(L"2x Scope");

                                        break;
                                    case 203004:

                                            SCO = std::wstring(L"4x Scope");

                                        break;
                                    case 203005:

                                            SCO = std::wstring(L"8x Scope");

                                        break;
                                    case 203014:
                                            SCO = std::wstring(L"3x Scope");

                                        break;
                                    case 203015:
                                            SCO = std::wstring(L"6x Scope");
                                        break;
                                    default:
                                        break;
                                }
                                robotoTinyFont->LegacyFontSize = IteTextSiz, 13 - (int) (Distance / 100);//5
                                visCol.R = 1;
                                visCol.G = 0.2;
                                visCol.B = 0.4;
                                visCol.A = 1;
                                DrawSmallOutlinedText(HUD, SCO, { itemPos.X,itemPos.Y}, visCol, COLOR_BLACK);
                            }
                            if(IsAmmo){
                                switch (pp) {
                                    case 301001:
                                        AMMO = std::wstring(L" 9mm ");
                                        break;
                                    case 302001:
                                        AMMO = std::wstring(L" 7.62mm");
                                        break;
                                    case 303001:
                                        AMMO = std::wstring(L" 5.56mm ");
                                        break;
                                    case 304001:

                                            AMMO = std::wstring(L"12 Gauge");

                                        break;
                                    case 305001:
                                            AMMO = std::wstring(L".45 ACP");
                                        break;
                                    case 306001:

                                            AMMO = std::wstring(L".300 Magnum");

                                        break;
                                    case 307001:

                                            AMMO = std::wstring(L"Crossbow");

                                        break;
                                    default:
                                        break;
                                }
                                robotoTinyFont->LegacyFontSize = IteTextSiz, 13 - (int) (Distance / 100);//5
                                visCol.R = 1.63;
                                visCol.G = 1.43;
                                visCol.B = 2;
                                visCol.A = 1;
                                DrawSmallOutlinedText(HUD, AMMO, { itemPos.X,itemPos.Y}, visCol, COLOR_BLACK);
                            }
                            if(IsShotgun){
                                switch (pp) {
                                    case 105001:
                                        
                                            OTH = std::wstring(L"M249");

                                        break;
                                    case 105002:

                                            OTH = std::wstring(L"DP-28");
                                        
                                        
                                        break;
                                    case 107001:

                                            OTH = std::wstring(L"Crossbow");

                                        
                                        break;
                                    case 108001:

                                            OTH = std::wstring(L"Machete");

                                        
                                        break;
                                    case 108002:
                                        
                                            OTH = std::wstring(L"Crowbar");

                                        
                                        break;
                                    case 108003:

                                            OTH = std::wstring(L"Sickle");

                                        break;
                                    case 108004:
                                            OTH = std::wstring(L"Pan");

                                        break;
                                    case 201001:

                                            OTH = std::wstring(L"Choke");

                                        break;
                                        //         ATTCHMENT
                                    case 201002:
                                            OTH = std::wstring(L"Compensator (AR)");

                                        break;
                                    case 201003:

                                            OTH = std::wstring(L"Muzzle Brake (DMR)");

                                        break;
                                    case 201004:

                                            OTH = std::wstring(L"Flash Hider (Pistol)");

                                        break;
                                    case 201005:
                                        
                                            OTH = std::wstring(L"Flash Hider (DMR)");

                                        // ---
                                        break;
                                    case 201006:

                                            OTH = std::wstring(L"Suppressor (SMG)");
                                        
                                        
                                        break;
                                    case 201007:

                                            OTH = std::wstring(L"Suppressor (Snipers)");

                                        break;
                                    case 201009:
                                        
                                            OTH = std::wstring(L"Compensator (AR) ");

                                        break;
                                    case 201010:

                                            OTH = std::wstring(L"Flash Hider (AR)");

                                        break;
                                    case 201011:

                                            OTH = std::wstring(L"Suppressor (AR) ");

                                        break;
                                    case 201012:

                                            OTH = std::wstring(L"Duckbill");//

                                        break;
                                    case 202001:
                                            OTH = std::wstring(L"Angled Foregrip (AR)");

                                        break;
                                    case 202002:

                                            OTH = std::wstring(L"Vertical Foregrip");

                                        break;
                                    case 202004:

                                            OTH = std::wstring(L"Light Grip");

                                        break;
                                    case 202005:
                                        
                                            OTH = std::wstring(L"Half Grip");

                                        break;
                                    case 202006:

                                            OTH = std::wstring(L"Thumb Grip");

                                        break;
                                    case 202007:
                                            OTH = std::wstring(L"Laser Sight");

                                        break;
                                        //         SCOPE
                                        //         ATTCHMENT
                                    case 203018:

                                            OTH = std::wstring(L"Canted Sight");

                                        break;
                                    case 204014:
                                        
                                            OTH = std::wstring(L"Bullet Loop");
                                        
                                        break;
                                    case 205001:

                                            OTH = std::wstring(L"Stock (Micro UZI)");

                                        break;
                                    case 205002:
                                            OTH = std::wstring(L"Tactical Stock (Rifles, SMG)");

                                        break;
                                    case 205003:
                                            OTH = std::wstring(L"Cheek Pad (Snipers)");

                                        break;
                                    case 205004:
                                            OTH = std::wstring(L"Quiver (Crossbow)");

                                        break;
                                    case 204004:
                                       
                                            OTH = std::wstring(L"Extended Mag (SMG, Pistols)");

                                        break;
                                    case 204005:
                                            OTH = std::wstring(L"Quickdraw Mag (SMG, Pistols)");

                                        break;
                                    case 204006:
                                            OTH = std::wstring(L"Extended Quickdraw Mag (SMG, Pistols)");

                                        break;
                                    case 204007:
                                            OTH = std::wstring(L"Extended Mag (Snipers)");

                                        break;
                                    case 204008:

                                            OTH = std::wstring(L"Quickdraw Mag (Snipers)");

                                        break;
                                    case 204009:
                                        
                                            OTH = std::wstring(L"Extended Quickdraw Mag (Snipers)");
                                        
                                        break;
                                    case 204011:

                                            OTH = std::wstring(L"Extended Quickdraw Mag (AR) ");

                                        break;
                                    case 204012:

                                            OTH = std::wstring(L"Quickdraw Mag (AR)");

                                        break;
                                    case 204013:
                                            OTH = std::wstring(L"Extended Quickdraw Mag (AR)");

                                        break;
                                        //         AMMO
                                    case 601001:

                                            OTH = std::wstring(L"Energy Drink");

                                        break;
                                    case 601002:
                                            OTH = std::wstring(L"Syringe");
                                        
                                        break;
                                    case 601003:
                                            OTH = std::wstring(L"Painkiller");

                                        break;
                                    case 601004:
                                            OTH = std::wstring(L"Bandage");

                                        break;
                                    case 601005:
                                            OTH = std::wstring(L"First Aid Kit");
                                        
                                        break;
                                    case 601006:
                                            OTH = std::wstring(L"Med Kit");

                                        break;
                                    default:
                                        break;
                                }
                                robotoTinyFont->LegacyFontSize = IteTextSiz, 13 - (int) (Distance / 100);//5
                                visCol.R = 0.2;
                                visCol.G = 1;
                                visCol.B = 0.7;
                                visCol.A = 1;
                                DrawSmallOutlinedText(HUD, OTH, { itemPos.X,itemPos.Y}, visCol, COLOR_BLACK);
                            }
                            if(IsShotgun){                                
                                    switch (pp) {
                                        case 501001:
                                            ARM = std::wstring(L" Backpack (Lv. 1) ");
                                            break;
                                        case 501002:
                                            ARM = std::wstring(L" Backpack (Lv. 2) ");
                                            break;
                                        case 501006:
                                            ARM = std::wstring(L" Backpack (Lv. 3) ");
                                            break;
                                        case 502001:
                                            ARM = std::wstring(L" Helmet LV1 ");
                                            break;
                                        case 502002:
                                            ARM = std::wstring(L" Helmet LV2");
                                            break;
                                        case 502003:
                                            ARM = std::wstring(L" Helmet LV3 ");
                                            
                                            break;
                                        case 503001:
                                            ARM = std::wstring(L"Armor LV1 ");
                                            break;
                                        case 503002:
                                            ARM = std::wstring(L"Armor LV2 ");
                                            break;
                                        case 503003:
                                            ARM = std::wstring(L"Armor LV3 ");
                                            break;
                                        default:
                                            break;
                                    }

                               
                                robotoTinyFont->LegacyFontSize = IteTextSiz, 13 - (int) (Distance / 100);//5
                                DrawSmallOutlinedText(HUD, ARM, { itemPos.X,itemPos.Y}, COLOR_LIME, COLOR_BLACK);
                            }
                        }
                    }
                }
            }ITEMM.clear();
        }
        {
            std::vector<ASTExtraVehicleBase*> ITS;
            GetAllActors(ITS);
            for (auto actor = ITS.begin(); actor != ITS.end(); actor++) {
                auto Vehicle = *actor;
                if (!Vehicle->Mesh)
                    continue;
                auto vv = Vehicle->VehicleShapeType;
                float Distance = Vehicle->GetDistanceTo(localPlayer) / 100.f;
                FVector2D vehiclePos;
                auto ROOT  =Vehicle->K2_GetActorLocation();
                ROOT.Z -=50;
                if (Distance > 10 && Distance <= 600) {
                    if (gGameplayStatics->ProjectWorldToScreen(localPlayerController,ROOT, true, &vehiclePos)) {
                        std::wstring veh;
                        switch (vv) {
                            case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_Motorbike:
                            case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_Motorbike_SideCart:
                                
                                    veh = std::wstring(L"Motorbike");

                                break;
                            case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_Dacia:
                            case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_HeavyDacia:

                                    veh = std::wstring(L"Dacia");

                                break;
                            case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_MiniBus:

                                    veh = std::wstring(L"MiniBus");

                                break;
                            case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_PickUp:
                            case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_PickUp01:
                            case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_HeavyPickup:
                                
                                    veh = std::wstring(L"PickUp");

                                break;
                            case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_Buggy:
                            case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_HeavyBuggy:
                                
                                    veh = std::wstring(L"Buggy");

                                break;
                            case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_UAZ:
                            case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_UAZ01:
                            case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_UAZ02:
                            case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_UAZ03:
                            case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_HeavyUAZ:

                                    veh = std::wstring(L"UAZ");

                                break;
                            case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_PG117:

                                    veh = std::wstring(L"Watercraft PG117");
                                
                                break;
                            case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_Aquarail:

                                    veh = std::wstring(L"Aquarail");

                                
                                break;
                            case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_Mirado:

                                    veh = std::wstring(L"Mirado");

                                
                            case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_Mirado01:

                                    veh = std::wstring(L"Mirado");
                                
                                break;
                            case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_Rony:
                                
                                    veh = std::wstring(L"Rony pickup");

                                break;
                            case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_Scooter:
                                
                                    veh = std::wstring(L"Scooter");

                                
                                break;
                            case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_SnowMobile:

                                    veh = std::wstring(L"SnowMobile");

                                break;
                            case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_TukTukTuk:

                                    veh = std::wstring(L"TukTuk");

                                break;
                            case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_SnowBike:

                                    veh = std::wstring(L"SnowBike");

                                
                                break;
                            case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_Surfboard:

                                    veh = std::wstring(L"Surfboard");

                                
                                break;
                            case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_Snowboard:
                                
                                    veh = std::wstring(L"Snowboard");
                                
                                break;
                            case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_Amphibious:

                                    veh = std::wstring(L"Amphibious");
                                
                                break;
                            case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_LadaNiva:

                                    veh = std::wstring(L"Lada Niva");
                                
                                break;
                            case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_UAV:

                                    veh = std::wstring(L"Drone");
                                
                                break;
                            case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_MegaDrop:
                                
                                    veh = std::wstring(L"MegaDrop");
                                
                                break;
                            case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_Lamborghini:

                                    veh = std::wstring(L"Lamborghini");
                                
                            case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_Lamborghini01:
                                
                                    veh = std::wstring(L"Lamborghini 01");
                                
                                break;
                            case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_GoldMirado:

                                    veh = std::wstring(L"GoldMirado");

                                
                                break;
                            case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_BigFoot:

                                    veh = std::wstring(L"BigFoot");
                                
                                break;
                            case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_UH60:

                                    veh = std::wstring(L"Helicopter UH60");
                                
                            case ESTExtraVehicleShapeType::ESTExtraVehicleShapeType__VST_HeavyUH60:
                                
                                    veh = std::wstring(L"Helicopter Heavy-UH60");
                                break;
                            default:

                                    veh = std::wstring(L"");
                                break;
                        }
                        veh += std::wstring(L" [");
                        veh += std::to_wstring((int) Distance);
                        veh += std::wstring(L"m]");
                        if(IsVehcle){
                            visCol.A =1.f;
                            visCol.B =0.6f;
                            visCol.G =0.8f;
                            visCol.R =1.f;
                            tslFont->LegacyFontSize = max(3, 14 - (int) (Distance / 100));
                            DrawSmallOutlinedText(HUD, veh, { vehiclePos.X,vehiclePos.Y}, visCol, COLOR_BLACK);
                        }
                        if(IsboxVechle){
                            FVector Bounds, b2;
                            Bounds = CHUTIA(Vehicle);
                            Vehicle->GetActorBounds(true, &Bounds, &b2);
                            DrawBox3D(HUD, Vehicle, allColors::LightGoldenrodYellow, Bounds, b2);
                        }
                        auto vhebase = Vehicle->VehicleCommon;
                        float CurHP = std::max(0.f, std::min(vhebase->HP, vhebase->HPMax));
                        float CurFEL = std::max(0.f, std::min(vhebase->Fuel, vhebase->FuelMax));
                        float MAXHEL = vhebase->HPMax;
                        float MaxFEL = vhebase->FuelMax;
                        FLinearColor ColorFEL = {
                            std::min(((310.f * (MaxFEL - CurFEL)) / MaxFEL) / 155.f, 3.f),
                            std::min(((310.f * CurFEL) / MaxFEL) / 155.f, 3.f),
                            0.f,
                            0.5f
                        };
                        FLinearColor ColorHP = {
                            std::min(((510.f * (MAXHEL - CurHP)) / MAXHEL) / 255.f, 1.f),
                            std::min(((510.f * CurHP) / MAXHEL) / 255.f, 1.f),
                            0.f,
                            0.5f
                        };
                        auto AboveHead = Vehicle->K2_GetActorLocation();
                        AboveHead.Z += 60;
                        FVector2D AboveHeadSc;
                        if (gGameplayStatics->ProjectWorldToScreen(localPlayerController,AboveHead, true, &AboveHeadSc))  {
                            auto mWidthScale = std::min(0.1f * Distance, 12.f);
                            auto mWidth = 75.f - mWidthScale;
                            auto mHeight = mWidth * 0.175f;
                            AboveHeadSc.X -= (mWidth / 2);
                            AboveHeadSc.Y -= (mHeight * 1.5f);
                            visCol.A=1.0f;
                            visCol.B=0.5f;
                            visCol.G=1.2f;
                            visCol.R =1.f;
                            if(IsCarHP){
                                tslFont->LegacyFontSize = max(2, 12 - (int) (Distance / 100));
                                DrawFilledRectangle(HUD, {AboveHeadSc.X, AboveHeadSc.Y}, (CurHP * mWidth / MAXHEL ), 6, ColorHP);
                                DrawRectangle(HUD, {AboveHeadSc.X, AboveHeadSc.Y}, mWidth, 6, 1.0f, {0, 0, 0, 1.f});
                            }
                            if(IsCarFuel){
                                AboveHeadSc.Y -=20;
                                tslFont->LegacyFontSize = max(2, 12 - (int) (Distance / 100));
                                DrawFilledRectangle(HUD, {AboveHeadSc.X, AboveHeadSc.Y}, (CurFEL * mWidth / MaxFEL), 6, visCol);
                                DrawRectangle(HUD, {AboveHeadSc.X, AboveHeadSc.Y}, mWidth, 6, 1.0f, {0, 0, 0, 1.f});
                            }
                        }
                    }
                }
            }ITS.clear();
        }
                g_LocalPlayer = localPlayer;
                g_PlayerController = localPlayerController;
            }
        }
    }



    //from NSString to wstring
    std::wstring NStoWS ( NSString* Str )
    {
        NSStringEncoding pEncode    =   CFStringConvertEncodingToNSStringEncoding ( kCFStringEncodingUTF32LE );
        NSData* pSData              =   [ Str dataUsingEncoding : pEncode ];
        return std::wstring ( (wchar_t*) [ pSData bytes ], [ pSData length] / sizeof ( wchar_t ) );
    }
    //from wstring to NSString
    NSString* WStoNS ( const std::wstring& Str )
    {
        NSString* pString = [ [ NSString alloc ]
                              initWithBytes : (char*)Str.data()
                              length : Str.size() * sizeof(wchar_t)
                              encoding : CFStringConvertEncodingToNSStringEncoding ( kCFStringEncodingUTF32LE ) ];
        return pString;
    }
void fixesp(AHUD *pHUD, void *pArgs){
    auto Params = (AHUD_ReceiveDrawHUD_Params *) pArgs;
    g_screenWidth = Params->SizeX;
    g_screenHeight = Params->SizeY;
    if(Config.ESPMenu.ESPON){
        RenderESP(pHUD, Params->SizeX, Params->SizeY);
       
    }
}    
    void *(*oProcessEvent)(UObject *pObj, UFunction *pFunc, void *pArgs);
    void *hkProcessEvent(UObject *pObj, UFunction *pFunc, void *pArgs) {
        if (pFunc) {
            if (pFunc->GetFullName() == ("Function Engine.HUD.ReceiveDrawHUD") ){
                AHUD *pHUD = (AHUD *) pObj;
                if (pHUD) {
                    auto Params = (AHUD_ReceiveDrawHUD_Params *) pArgs;
                    if (Params) {
                        RenderESP(pHUD, Params->SizeX, Params->SizeY);
                      screenWidth = Params->SizeX;
                     screenHeight = Params->SizeY;
                    }
                }
            }
        }
if (ModSkinn && KillMessage){
const char *pBroadCast = ("Function ShadowTrackerExtra.STExtraPlayerController.BroadcastFatalDamageToClientWithStruct");
    if (pFunc) {
        if (pFunc->GetFullName() == pBroadCast) {
            ASTExtraPlayerController *pController = (ASTExtraPlayerController *) pObj;
            if (pController) {
                auto Params = (ASTExtraPlayerController_BroadcastFatalDamageToClientWithStruct_Params *) pArgs;
                if (Params) {
if (g_PlayerController->PlayerKey == Params->FatalDamageParameter.CauserKey && !g_PlayerController->STExtraBaseCharacter->CurrentVehicle && g_LocalPlayer->WeaponManagerComponent->CurrentWeaponReplicated){
    Params->FatalDamageParameter.CauserClothAvatarID = new_Skin.XSuits; 
        //M416
     if(strstr(g_LocalPlayer->WeaponManagerComponent->CurrentWeaponReplicated->GetWeaponName().ToString(), "M416")){
                     Params->FatalDamageParameter.CauserWeaponAvatarID = new_Skin.M416_1;
      }
                    if(strstr(g_LocalPlayer->WeaponManagerComponent->CurrentWeaponReplicated->GetWeaponName().ToString(), "AKM")){
     Params->FatalDamageParameter.CauserWeaponAvatarID = new_Skin.AKM;
     }
     if(strstr(g_LocalPlayer->WeaponManagerComponent->CurrentWeaponReplicated->GetWeaponName().ToString(), "SCAR-L")){
                     Params->FatalDamageParameter.CauserWeaponAvatarID = new_Skin.Scar;
      }
                    if(strstr(g_LocalPlayer->WeaponManagerComponent->CurrentWeaponReplicated->GetWeaponName().ToString(), "M16A4")){
     Params->FatalDamageParameter.CauserWeaponAvatarID = new_Skin.M16A4;
     }
     if(strstr(g_LocalPlayer->WeaponManagerComponent->CurrentWeaponReplicated->GetWeaponName().ToString(), "GROZA")){
                     Params->FatalDamageParameter.CauserWeaponAvatarID = new_Skin.Groza;
      }
                    if(strstr(g_LocalPlayer->WeaponManagerComponent->CurrentWeaponReplicated->GetWeaponName().ToString(), "AUG")){
     Params->FatalDamageParameter.CauserWeaponAvatarID = new_Skin.AUG;
     }
     if(strstr(g_LocalPlayer->WeaponManagerComponent->CurrentWeaponReplicated->GetWeaponName().ToString(), "M762")){
                     Params->FatalDamageParameter.CauserWeaponAvatarID = new_Skin.M762;
      }

                    if(strstr(g_LocalPlayer->WeaponManagerComponent->CurrentWeaponReplicated->GetWeaponName().ToString(), "Kar98K")){
     Params->FatalDamageParameter.CauserWeaponAvatarID = new_Skin.K98;
     }
     if(strstr(g_LocalPlayer->WeaponManagerComponent->CurrentWeaponReplicated->GetWeaponName().ToString(), "M24")){
                     Params->FatalDamageParameter.CauserWeaponAvatarID = new_Skin.M24;
      }
                    if(strstr(g_LocalPlayer->WeaponManagerComponent->CurrentWeaponReplicated->GetWeaponName().ToString(), "AWM")){
     Params->FatalDamageParameter.CauserWeaponAvatarID = new_Skin.AWM;
     }
     if(strstr(g_LocalPlayer->WeaponManagerComponent->CurrentWeaponReplicated->GetWeaponName().ToString(), "DP-28")){
     Params->FatalDamageParameter.CauserWeaponAvatarID = new_Skin.DP28;
     }
    
                    if(strstr(g_LocalPlayer->WeaponManagerComponent->CurrentWeaponReplicated->GetWeaponName().ToString(), "M249")){
     Params->FatalDamageParameter.CauserWeaponAvatarID = new_Skin.M249;
     }
     
  }
    
   }
  }
 }
}
}
        return oProcessEvent(pObj, pFunc, pArgs);
    }


    void  *RTL_language(){
        
        auto MAIN =(FUObjectArray *) (obbbbl());
        auto gobjects = MAIN->ObjObjects;
        for (int i=0;i< gobjects.Num(); i++)
            if (auto obj = gobjects.GetByIndex(i)) {
                
                if(obj->IsA(AHUD::StaticClass())) {
                    auto HUD = (AHUD *) obj;
                    int its = 76;
                    auto VTable = (void**)HUD->VTable;
                    if (VTable && ( VTable[its] != hkProcessEvent)) {
                        oProcessEvent = decltype(oProcessEvent)(VTable[its]);
                        VTable[its] = (void *) hkProcessEvent;
                    }
                }
              if(obj->IsA(ASTExtraPlayerController::StaticClass())) {
                    auto HUD = (ASTExtraPlayerController *) obj;
                    int its = 76;
                    auto VTable = (void**)HUD->VTable;
                    if (VTable && ( VTable[its] != hkProcessEvent)) {
                        oProcessEvent = decltype(oProcessEvent)(VTable[its]);
                        VTable[its] = (void *) hkProcessEvent;
                    }
                }
            }
        return 0;
    }

#define hook GaYSSS9aAL


#define hook GaYSSS9aAL



+ (void)load
{
        FName::GNames = GetGNames();
    while (!FName::GNames) {
        FName::GNames = GetGNames();
          sleep(1);
    }
    
    
    UObject::GUObjectArray = (FUObjectArray *) (obbbbl());
    
    while (!UObject::GUObjectArray) {
    UObject::GUObjectArray = (FUObjectArray *) (obbbbl());
          sleep(1);
    }

    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5* NSEC_PER_SEC)), dispatch_get_main_queue(), ^{

    
        //start load but not means language
          [self load1];
        
    });
}
+ (void)load1
{
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        RTL_language();
    });
}
__attribute__((constructor)) void _init() {
    pthread_t t;
    
  //  pthread_create(&t, 0, bypass_thread, 0);
  //  pthread_create(&t, 0, box_thread, 0);
}

@end

