.class Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2$3$1;
.super Ljava/lang/Object;
.source "ViewControlLayer.java"

# interfaces
.implements Lorg/ros/concurrent/SignalRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2$3;->onScale(Landroid/view/ScaleGestureDetector;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ros/concurrent/SignalRunnable<",
        "Lorg/ros/android/view/visualization/layer/CameraControlListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2$3;

.field final synthetic val$factor:F

.field final synthetic val$focusX:F

.field final synthetic val$focusY:F


# direct methods
.method constructor <init>(Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2$3;FFF)V
    .registers 5
    .param p1, "this$2"    # Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2$3;

    .line 167
    iput-object p1, p0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2$3$1;->this$2:Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2$3;

    iput p2, p0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2$3$1;->val$focusX:F

    iput p3, p0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2$3$1;->val$focusY:F

    iput p4, p0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2$3$1;->val$factor:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Ljava/lang/Object;)V
    .registers 2

    .line 167
    check-cast p1, Lorg/ros/android/view/visualization/layer/CameraControlListener;

    invoke-virtual {p0, p1}, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2$3$1;->run(Lorg/ros/android/view/visualization/layer/CameraControlListener;)V

    return-void
.end method

.method public run(Lorg/ros/android/view/visualization/layer/CameraControlListener;)V
    .registers 5
    .param p1, "listener"    # Lorg/ros/android/view/visualization/layer/CameraControlListener;

    .line 169
    iget v0, p0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2$3$1;->val$focusX:F

    iget v1, p0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2$3$1;->val$focusY:F

    iget v2, p0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2$3$1;->val$factor:F

    invoke-interface {p1, v0, v1, v2}, Lorg/ros/android/view/visualization/layer/CameraControlListener;->onZoom(FFF)V

    .line 170
    return-void
.end method
