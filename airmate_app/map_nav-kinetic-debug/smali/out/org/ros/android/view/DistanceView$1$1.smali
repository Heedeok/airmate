.class Lorg/ros/android/view/DistanceView$1$1;
.super Ljava/lang/Object;
.source "DistanceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ros/android/view/DistanceView$1;->onNewMessage(Lgeometry_msgs/Twist;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/ros/android/view/DistanceView$1;

.field final synthetic val$robotVelocity:Lgeometry_msgs/Twist;


# direct methods
.method constructor <init>(Lorg/ros/android/view/DistanceView$1;Lgeometry_msgs/Twist;)V
    .registers 3
    .param p1, "this$1"    # Lorg/ros/android/view/DistanceView$1;

    .line 118
    iput-object p1, p0, Lorg/ros/android/view/DistanceView$1$1;->this$1:Lorg/ros/android/view/DistanceView$1;

    iput-object p2, p0, Lorg/ros/android/view/DistanceView$1$1;->val$robotVelocity:Lgeometry_msgs/Twist;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 121
    iget-object v0, p0, Lorg/ros/android/view/DistanceView$1$1;->this$1:Lorg/ros/android/view/DistanceView$1;

    iget-object v0, v0, Lorg/ros/android/view/DistanceView$1;->this$0:Lorg/ros/android/view/DistanceView;

    invoke-static {v0}, Lorg/ros/android/view/DistanceView;->access$000(Lorg/ros/android/view/DistanceView;)Lorg/ros/android/view/DistanceRenderer;

    move-result-object v0

    iget-object v1, p0, Lorg/ros/android/view/DistanceView$1$1;->val$robotVelocity:Lgeometry_msgs/Twist;

    invoke-interface {v1}, Lgeometry_msgs/Twist;->getLinear()Lgeometry_msgs/Vector3;

    move-result-object v1

    invoke-interface {v1}, Lgeometry_msgs/Vector3;->getX()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/ros/android/view/DistanceRenderer;->currentSpeed(D)V

    .line 122
    return-void
.end method
