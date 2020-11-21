.class Lorg/ros/android/view/DistanceView$1;
.super Ljava/lang/Object;
.source "DistanceView.java"

# interfaces
.implements Lorg/ros/message/MessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ros/android/view/DistanceView;->onStart(Lorg/ros/node/ConnectedNode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ros/message/MessageListener<",
        "Lgeometry_msgs/Twist;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ros/android/view/DistanceView;


# direct methods
.method constructor <init>(Lorg/ros/android/view/DistanceView;)V
    .registers 2
    .param p1, "this$0"    # Lorg/ros/android/view/DistanceView;

    .line 115
    iput-object p1, p0, Lorg/ros/android/view/DistanceView$1;->this$0:Lorg/ros/android/view/DistanceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNewMessage(Lgeometry_msgs/Twist;)V
    .registers 4
    .param p1, "robotVelocity"    # Lgeometry_msgs/Twist;

    .line 118
    iget-object v0, p0, Lorg/ros/android/view/DistanceView$1;->this$0:Lorg/ros/android/view/DistanceView;

    new-instance v1, Lorg/ros/android/view/DistanceView$1$1;

    invoke-direct {v1, p0, p1}, Lorg/ros/android/view/DistanceView$1$1;-><init>(Lorg/ros/android/view/DistanceView$1;Lgeometry_msgs/Twist;)V

    invoke-virtual {v0, v1}, Lorg/ros/android/view/DistanceView;->post(Ljava/lang/Runnable;)Z

    .line 124
    return-void
.end method

.method public bridge synthetic onNewMessage(Ljava/lang/Object;)V
    .registers 2

    .line 115
    check-cast p1, Lgeometry_msgs/Twist;

    invoke-virtual {p0, p1}, Lorg/ros/android/view/DistanceView$1;->onNewMessage(Lgeometry_msgs/Twist;)V

    return-void
.end method
