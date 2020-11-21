.class Lorg/ros/android/view/VirtualJoystickView$2;
.super Ljava/util/TimerTask;
.source "VirtualJoystickView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ros/android/view/VirtualJoystickView;->updateTurnInPlaceMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ros/android/view/VirtualJoystickView;


# direct methods
.method constructor <init>(Lorg/ros/android/view/VirtualJoystickView;)V
    .registers 2
    .param p1, "this$0"    # Lorg/ros/android/view/VirtualJoystickView;

    .line 737
    iput-object p1, p0, Lorg/ros/android/view/VirtualJoystickView$2;->this$0:Lorg/ros/android/view/VirtualJoystickView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 740
    iget-object v0, p0, Lorg/ros/android/view/VirtualJoystickView$2;->this$0:Lorg/ros/android/view/VirtualJoystickView;

    new-instance v1, Lorg/ros/android/view/VirtualJoystickView$2$1;

    invoke-direct {v1, p0}, Lorg/ros/android/view/VirtualJoystickView$2$1;-><init>(Lorg/ros/android/view/VirtualJoystickView$2;)V

    invoke-virtual {v0, v1}, Lorg/ros/android/view/VirtualJoystickView;->post(Ljava/lang/Runnable;)Z

    .line 750
    iget-object v0, p0, Lorg/ros/android/view/VirtualJoystickView$2;->this$0:Lorg/ros/android/view/VirtualJoystickView;

    invoke-virtual {v0}, Lorg/ros/android/view/VirtualJoystickView;->postInvalidate()V

    .line 751
    return-void
.end method
