.class public final enum Lorg/ros/android/view/ZoomMode;
.super Ljava/lang/Enum;
.source "ZoomMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/ros/android/view/ZoomMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/ros/android/view/ZoomMode;

.field public static final enum CLUTTER_ZOOM_MODE:Lorg/ros/android/view/ZoomMode;

.field public static final enum CUSTOM_ZOOM_MODE:Lorg/ros/android/view/ZoomMode;

.field public static final enum VELOCITY_ZOOM_MODE:Lorg/ros/android/view/ZoomMode;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 28
    new-instance v0, Lorg/ros/android/view/ZoomMode;

    const-string v1, "CLUTTER_ZOOM_MODE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/ros/android/view/ZoomMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/ros/android/view/ZoomMode;->CLUTTER_ZOOM_MODE:Lorg/ros/android/view/ZoomMode;

    .line 34
    new-instance v0, Lorg/ros/android/view/ZoomMode;

    const-string v1, "VELOCITY_ZOOM_MODE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/ros/android/view/ZoomMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/ros/android/view/ZoomMode;->VELOCITY_ZOOM_MODE:Lorg/ros/android/view/ZoomMode;

    .line 39
    new-instance v0, Lorg/ros/android/view/ZoomMode;

    const-string v1, "CUSTOM_ZOOM_MODE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/ros/android/view/ZoomMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/ros/android/view/ZoomMode;->CUSTOM_ZOOM_MODE:Lorg/ros/android/view/ZoomMode;

    .line 22
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/ros/android/view/ZoomMode;

    sget-object v1, Lorg/ros/android/view/ZoomMode;->CLUTTER_ZOOM_MODE:Lorg/ros/android/view/ZoomMode;

    aput-object v1, v0, v2

    sget-object v1, Lorg/ros/android/view/ZoomMode;->VELOCITY_ZOOM_MODE:Lorg/ros/android/view/ZoomMode;

    aput-object v1, v0, v3

    sget-object v1, Lorg/ros/android/view/ZoomMode;->CUSTOM_ZOOM_MODE:Lorg/ros/android/view/ZoomMode;

    aput-object v1, v0, v4

    sput-object v0, Lorg/ros/android/view/ZoomMode;->$VALUES:[Lorg/ros/android/view/ZoomMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/ros/android/view/ZoomMode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 22
    const-class v0, Lorg/ros/android/view/ZoomMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/ros/android/view/ZoomMode;

    return-object v0
.end method

.method public static values()[Lorg/ros/android/view/ZoomMode;
    .registers 1

    .line 22
    sget-object v0, Lorg/ros/android/view/ZoomMode;->$VALUES:[Lorg/ros/android/view/ZoomMode;

    invoke-virtual {v0}, [Lorg/ros/android/view/ZoomMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/ros/android/view/ZoomMode;

    return-object v0
.end method
