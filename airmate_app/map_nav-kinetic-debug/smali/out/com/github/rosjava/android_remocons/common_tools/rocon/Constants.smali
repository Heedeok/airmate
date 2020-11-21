.class public Lcom/github/rosjava/android_remocons/common_tools/rocon/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final ACTIVITY_ROCON_REMOCON:Ljava/lang/String; = "com.github.rosjava.android_remocons.rocon_remocon.Remocon"

.field public static final ACTIVITY_SWITCHER_ID:Ljava/lang/String; = "com.github.rosjava.android_remocons.common_tools.rocon.Constants"

.field public static final ANDROID_PLATFORM_INFO:Lrocon_std_msgs/PlatformInfo;

.field public static final NFC_APP_HASH_FIELD_LENGTH:I = 0x4

.field public static final NFC_APP_RECORD_FIELD_LENGTH:I = 0x38

.field public static final NFC_EXTRA_DATA_FIELD_LENGTH:I = 0x2

.field public static final NFC_MASTER_HOST_FIELD_LENGTH:I = 0x10

.field public static final NFC_MASTER_PORT_FIELD_LENGTH:I = 0x2

.field public static final NFC_PASSWORD_FIELD_LENGTH:I = 0x10

.field public static final NFC_PAYLOAD_LENGTH:I = 0x38

.field public static final NFC_SSID_FIELD_LENGTH:I = 0x10

.field public static final NFC_ULTRALIGHT_C_MAX_LENGTH:I = 0x89


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 29
    invoke-static {}, Lcom/github/rosjava/android_remocons/common_tools/rocon/Constants;->makePlatformInfo()Lrocon_std_msgs/PlatformInfo;

    move-result-object v0

    sput-object v0, Lcom/github/rosjava/android_remocons/common_tools/rocon/Constants;->ANDROID_PLATFORM_INFO:Lrocon_std_msgs/PlatformInfo;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static makePlatformInfo()Lrocon_std_msgs/PlatformInfo;
    .registers 4

    .line 39
    new-instance v0, Lorg/ros/internal/message/definition/MessageDefinitionReflectionProvider;

    invoke-direct {v0}, Lorg/ros/internal/message/definition/MessageDefinitionReflectionProvider;-><init>()V

    .line 40
    .local v0, "messageDefinitionProvider":Lorg/ros/internal/message/definition/MessageDefinitionReflectionProvider;
    new-instance v1, Lorg/ros/internal/message/DefaultMessageFactory;

    invoke-direct {v1, v0}, Lorg/ros/internal/message/DefaultMessageFactory;-><init>(Lorg/ros/message/MessageDefinitionProvider;)V

    .line 41
    .local v1, "messageFactory":Lorg/ros/internal/message/DefaultMessageFactory;
    const-string v2, "rocon_std_msgs/PlatformInfo"

    invoke-virtual {v1, v2}, Lorg/ros/internal/message/DefaultMessageFactory;->newFromType(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrocon_std_msgs/PlatformInfo;

    .line 43
    .local v2, "platformInfo":Lrocon_std_msgs/PlatformInfo;
    const-string v3, "rocon:/*/*/indigo/ice_cream_sandwich|jellybean|chrome"

    invoke-interface {v2, v3}, Lrocon_std_msgs/PlatformInfo;->setUri(Ljava/lang/String;)V

    .line 49
    const-string v3, "acdc"

    invoke-interface {v2, v3}, Lrocon_std_msgs/PlatformInfo;->setVersion(Ljava/lang/String;)V

    .line 53
    return-object v2
.end method
