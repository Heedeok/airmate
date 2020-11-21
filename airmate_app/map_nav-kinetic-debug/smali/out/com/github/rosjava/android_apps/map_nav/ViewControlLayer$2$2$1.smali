.class Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2$2$1;
.super Ljava/lang/Object;
.source "ViewControlLayer.java"

# interfaces
.implements Lorg/ros/concurrent/SignalRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2$2;->onRotate(Landroid/view/MotionEvent;Landroid/view/MotionEvent;D)Z
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
.field final synthetic this$2:Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2$2;

.field final synthetic val$d:D

.field final synthetic val$f:F

.field final synthetic val$f2:F


# direct methods
.method constructor <init>(Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2$2;FFD)V
    .registers 6
    .param p1, "this$2"    # Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2$2;

    .line 150
    iput-object p1, p0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2$2$1;->this$2:Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2$2;

    iput p2, p0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2$2$1;->val$f:F

    iput p3, p0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2$2$1;->val$f2:F

    iput-wide p4, p0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2$2$1;->val$d:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Ljava/lang/Object;)V
    .registers 2

    .line 150
    check-cast p1, Lorg/ros/android/view/visualization/layer/CameraControlListener;

    invoke-virtual {p0, p1}, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2$2$1;->run(Lorg/ros/android/view/visualization/layer/CameraControlListener;)V

    return-void
.end method

.method public run(Lorg/ros/android/view/visualization/layer/CameraControlListener;)V
    .registers 6
    .param p1, "listener"    # Lorg/ros/android/view/visualization/layer/CameraControlListener;

    .line 152
    iget v0, p0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2$2$1;->val$f:F

    iget v1, p0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2$2$1;->val$f2:F

    iget-wide v2, p0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2$2$1;->val$d:D

    invoke-interface {p1, v0, v1, v2, v3}, Lorg/ros/android/view/visualization/layer/CameraControlListener;->onRotate(FFD)V

    .line 153
    return-void
.end method
