.class Lcom/github/rosjava/android_apps/map_nav/MainActivity$5;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lorg/ros/android/view/visualization/layer/CameraControlListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/rosjava/android_apps/map_nav/MainActivity;->init(Lorg/ros/node/NodeMainExecutor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/rosjava/android_apps/map_nav/MainActivity;


# direct methods
.method constructor <init>(Lcom/github/rosjava/android_apps/map_nav/MainActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/github/rosjava/android_apps/map_nav/MainActivity;

    .line 172
    iput-object p1, p0, Lcom/github/rosjava/android_apps/map_nav/MainActivity$5;->this$0:Lcom/github/rosjava/android_apps/map_nav/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(FF)V
    .registers 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 177
    return-void
.end method

.method public onRotate(FFD)V
    .registers 5
    .param p1, "focusX"    # F
    .param p2, "focusY"    # F
    .param p3, "deltaAngle"    # D

    .line 183
    return-void
.end method

.method public onTranslate(FF)V
    .registers 3
    .param p1, "distanceX"    # F
    .param p2, "distanceY"    # F

    .line 180
    return-void
.end method

.method public onZoom(FFF)V
    .registers 4
    .param p1, "focusX"    # F
    .param p2, "focusY"    # F
    .param p3, "factor"    # F

    .line 174
    return-void
.end method
