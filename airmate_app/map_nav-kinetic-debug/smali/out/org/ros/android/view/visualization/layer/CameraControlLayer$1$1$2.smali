.class Lorg/ros/android/view/visualization/layer/CameraControlLayer$1$1$2;
.super Ljava/lang/Object;
.source "CameraControlLayer.java"

# interfaces
.implements Lorg/ros/concurrent/SignalRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ros/android/view/visualization/layer/CameraControlLayer$1$1;->onDoubleTap(Landroid/view/MotionEvent;)Z
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
.field final synthetic this$2:Lorg/ros/android/view/visualization/layer/CameraControlLayer$1$1;

.field final synthetic val$e:Landroid/view/MotionEvent;


# direct methods
.method constructor <init>(Lorg/ros/android/view/visualization/layer/CameraControlLayer$1$1;Landroid/view/MotionEvent;)V
    .registers 3
    .param p1, "this$2"    # Lorg/ros/android/view/visualization/layer/CameraControlLayer$1$1;

    .line 98
    iput-object p1, p0, Lorg/ros/android/view/visualization/layer/CameraControlLayer$1$1$2;->this$2:Lorg/ros/android/view/visualization/layer/CameraControlLayer$1$1;

    iput-object p2, p0, Lorg/ros/android/view/visualization/layer/CameraControlLayer$1$1$2;->val$e:Landroid/view/MotionEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Ljava/lang/Object;)V
    .registers 2

    .line 98
    check-cast p1, Lorg/ros/android/view/visualization/layer/CameraControlListener;

    invoke-virtual {p0, p1}, Lorg/ros/android/view/visualization/layer/CameraControlLayer$1$1$2;->run(Lorg/ros/android/view/visualization/layer/CameraControlListener;)V

    return-void
.end method

.method public run(Lorg/ros/android/view/visualization/layer/CameraControlListener;)V
    .registers 4
    .param p1, "listener"    # Lorg/ros/android/view/visualization/layer/CameraControlListener;

    .line 101
    iget-object v0, p0, Lorg/ros/android/view/visualization/layer/CameraControlLayer$1$1$2;->val$e:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lorg/ros/android/view/visualization/layer/CameraControlLayer$1$1$2;->val$e:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-interface {p1, v0, v1}, Lorg/ros/android/view/visualization/layer/CameraControlListener;->onDoubleTap(FF)V

    .line 102
    return-void
.end method
