.class Lorg/ros/android/view/RosImageView$1;
.super Ljava/lang/Object;
.source "RosImageView.java"

# interfaces
.implements Lorg/ros/message/MessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ros/android/view/RosImageView;->onStart(Lorg/ros/node/ConnectedNode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ros/message/MessageListener<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ros/android/view/RosImageView;


# direct methods
.method constructor <init>(Lorg/ros/android/view/RosImageView;)V
    .registers 2
    .param p1, "this$0"    # Lorg/ros/android/view/RosImageView;

    .line 75
    .local p0, "this":Lorg/ros/android/view/RosImageView$1;, "Lorg/ros/android/view/RosImageView$1;"
    iput-object p1, p0, Lorg/ros/android/view/RosImageView$1;->this$0:Lorg/ros/android/view/RosImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNewMessage(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 78
    .local p0, "this":Lorg/ros/android/view/RosImageView$1;, "Lorg/ros/android/view/RosImageView$1;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/ros/android/view/RosImageView$1;->this$0:Lorg/ros/android/view/RosImageView;

    new-instance v1, Lorg/ros/android/view/RosImageView$1$1;

    invoke-direct {v1, p0, p1}, Lorg/ros/android/view/RosImageView$1$1;-><init>(Lorg/ros/android/view/RosImageView$1;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/ros/android/view/RosImageView;->post(Ljava/lang/Runnable;)Z

    .line 84
    iget-object v0, p0, Lorg/ros/android/view/RosImageView$1;->this$0:Lorg/ros/android/view/RosImageView;

    invoke-virtual {v0}, Lorg/ros/android/view/RosImageView;->postInvalidate()V

    .line 85
    return-void
.end method
