.class Lorg/ros/android/view/VirtualJoystickView$1;
.super Ljava/lang/Object;
.source "VirtualJoystickView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ros/android/view/VirtualJoystickView;->onNewMessage(Lnav_msgs/Odometry;)V
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

    .line 303
    iput-object p1, p0, Lorg/ros/android/view/VirtualJoystickView$1;->this$0:Lorg/ros/android/view/VirtualJoystickView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 306
    iget-object v0, p0, Lorg/ros/android/view/VirtualJoystickView$1;->this$0:Lorg/ros/android/view/VirtualJoystickView;

    invoke-static {v0}, Lorg/ros/android/view/VirtualJoystickView;->access$000(Lorg/ros/android/view/VirtualJoystickView;)V

    .line 307
    return-void
.end method
