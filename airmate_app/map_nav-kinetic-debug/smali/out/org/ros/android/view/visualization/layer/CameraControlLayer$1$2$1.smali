.class Lorg/ros/android/view/visualization/layer/CameraControlLayer$1$2$1;
.super Ljava/lang/Object;
.source "CameraControlLayer.java"

# interfaces
.implements Lorg/ros/concurrent/SignalRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ros/android/view/visualization/layer/CameraControlLayer$1$2;->onRotate(Landroid/view/MotionEvent;Landroid/view/MotionEvent;D)Z
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
.field final synthetic this$2:Lorg/ros/android/view/visualization/layer/CameraControlLayer$1$2;

.field final synthetic val$deltaAngle:D

.field final synthetic val$focusX:F

.field final synthetic val$focusY:F


# direct methods
.method constructor <init>(Lorg/ros/android/view/visualization/layer/CameraControlLayer$1$2;FFD)V
    .registers 6
    .param p1, "this$2"    # Lorg/ros/android/view/visualization/layer/CameraControlLayer$1$2;

    .line 115
    iput-object p1, p0, Lorg/ros/android/view/visualization/layer/CameraControlLayer$1$2$1;->this$2:Lorg/ros/android/view/visualization/layer/CameraControlLayer$1$2;

    iput p2, p0, Lorg/ros/android/view/visualization/layer/CameraControlLayer$1$2$1;->val$focusX:F

    iput p3, p0, Lorg/ros/android/view/visualization/layer/CameraControlLayer$1$2$1;->val$focusY:F

    iput-wide p4, p0, Lorg/ros/android/view/visualization/layer/CameraControlLayer$1$2$1;->val$deltaAngle:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Ljava/lang/Object;)V
    .registers 2

    .line 115
    check-cast p1, Lorg/ros/android/view/visualization/layer/CameraControlListener;

    invoke-virtual {p0, p1}, Lorg/ros/android/view/visualization/layer/CameraControlLayer$1$2$1;->run(Lorg/ros/android/view/visualization/layer/CameraControlListener;)V

    return-void
.end method

.method public run(Lorg/ros/android/view/visualization/layer/CameraControlListener;)V
    .registers 6
    .param p1, "listener"    # Lorg/ros/android/view/visualization/layer/CameraControlListener;

    .line 118
    iget v0, p0, Lorg/ros/android/view/visualization/layer/CameraControlLayer$1$2$1;->val$focusX:F

    iget v1, p0, Lorg/ros/android/view/visualization/layer/CameraControlLayer$1$2$1;->val$focusY:F

    iget-wide v2, p0, Lorg/ros/android/view/visualization/layer/CameraControlLayer$1$2$1;->val$deltaAngle:D

    invoke-interface {p1, v0, v1, v2, v3}, Lorg/ros/android/view/visualization/layer/CameraControlListener;->onRotate(FFD)V

    .line 119
    return-void
.end method
