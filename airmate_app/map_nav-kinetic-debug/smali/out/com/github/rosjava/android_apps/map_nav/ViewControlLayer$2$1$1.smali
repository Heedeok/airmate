.class Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2$1$1;
.super Ljava/lang/Object;
.source "ViewControlLayer.java"

# interfaces
.implements Lorg/ros/concurrent/SignalRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2$1;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
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
.field final synthetic this$2:Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2$1;

.field final synthetic val$distanceX:F

.field final synthetic val$distanceY:F


# direct methods
.method constructor <init>(Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2$1;FF)V
    .registers 4
    .param p1, "this$2"    # Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2$1;

    .line 131
    iput-object p1, p0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2$1$1;->this$2:Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2$1;

    iput p2, p0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2$1$1;->val$distanceX:F

    iput p3, p0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2$1$1;->val$distanceY:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Ljava/lang/Object;)V
    .registers 2

    .line 131
    check-cast p1, Lorg/ros/android/view/visualization/layer/CameraControlListener;

    invoke-virtual {p0, p1}, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2$1$1;->run(Lorg/ros/android/view/visualization/layer/CameraControlListener;)V

    return-void
.end method

.method public run(Lorg/ros/android/view/visualization/layer/CameraControlListener;)V
    .registers 4
    .param p1, "listener"    # Lorg/ros/android/view/visualization/layer/CameraControlListener;

    .line 133
    iget v0, p0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2$1$1;->val$distanceX:F

    neg-float v0, v0

    iget v1, p0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2$1$1;->val$distanceY:F

    invoke-interface {p1, v0, v1}, Lorg/ros/android/view/visualization/layer/CameraControlListener;->onTranslate(FF)V

    .line 134
    return-void
.end method
