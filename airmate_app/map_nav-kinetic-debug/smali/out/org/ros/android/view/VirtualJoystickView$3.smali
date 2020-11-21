.class Lorg/ros/android/view/VirtualJoystickView$3;
.super Ljava/util/TimerTask;
.source "VirtualJoystickView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ros/android/view/VirtualJoystickView;->onStart(Lorg/ros/node/ConnectedNode;)V
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

    .line 941
    iput-object p1, p0, Lorg/ros/android/view/VirtualJoystickView$3;->this$0:Lorg/ros/android/view/VirtualJoystickView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 944
    iget-object v0, p0, Lorg/ros/android/view/VirtualJoystickView$3;->this$0:Lorg/ros/android/view/VirtualJoystickView;

    invoke-static {v0}, Lorg/ros/android/view/VirtualJoystickView;->access$500(Lorg/ros/android/view/VirtualJoystickView;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 945
    iget-object v0, p0, Lorg/ros/android/view/VirtualJoystickView$3;->this$0:Lorg/ros/android/view/VirtualJoystickView;

    invoke-static {v0}, Lorg/ros/android/view/VirtualJoystickView;->access$700(Lorg/ros/android/view/VirtualJoystickView;)Lorg/ros/node/topic/Publisher;

    move-result-object v0

    iget-object v1, p0, Lorg/ros/android/view/VirtualJoystickView$3;->this$0:Lorg/ros/android/view/VirtualJoystickView;

    invoke-static {v1}, Lorg/ros/android/view/VirtualJoystickView;->access$600(Lorg/ros/android/view/VirtualJoystickView;)Lgeometry_msgs/Twist;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/ros/node/topic/Publisher;->publish(Ljava/lang/Object;)V

    .line 947
    :cond_17
    return-void
.end method
