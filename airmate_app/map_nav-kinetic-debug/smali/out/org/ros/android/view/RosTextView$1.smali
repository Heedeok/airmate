.class Lorg/ros/android/view/RosTextView$1;
.super Ljava/lang/Object;
.source "RosTextView.java"

# interfaces
.implements Lorg/ros/message/MessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ros/android/view/RosTextView;->onStart(Lorg/ros/node/ConnectedNode;)V
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
.field final synthetic this$0:Lorg/ros/android/view/RosTextView;


# direct methods
.method constructor <init>(Lorg/ros/android/view/RosTextView;)V
    .registers 2
    .param p1, "this$0"    # Lorg/ros/android/view/RosTextView;

    .line 71
    .local p0, "this":Lorg/ros/android/view/RosTextView$1;, "Lorg/ros/android/view/RosTextView$1;"
    iput-object p1, p0, Lorg/ros/android/view/RosTextView$1;->this$0:Lorg/ros/android/view/RosTextView;

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

    .line 74
    .local p0, "this":Lorg/ros/android/view/RosTextView$1;, "Lorg/ros/android/view/RosTextView$1;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/ros/android/view/RosTextView$1;->this$0:Lorg/ros/android/view/RosTextView;

    invoke-static {v0}, Lorg/ros/android/view/RosTextView;->access$000(Lorg/ros/android/view/RosTextView;)Lorg/ros/android/MessageCallable;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 75
    iget-object v0, p0, Lorg/ros/android/view/RosTextView$1;->this$0:Lorg/ros/android/view/RosTextView;

    new-instance v1, Lorg/ros/android/view/RosTextView$1$1;

    invoke-direct {v1, p0, p1}, Lorg/ros/android/view/RosTextView$1$1;-><init>(Lorg/ros/android/view/RosTextView$1;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/ros/android/view/RosTextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1d

    .line 82
    :cond_13
    iget-object v0, p0, Lorg/ros/android/view/RosTextView$1;->this$0:Lorg/ros/android/view/RosTextView;

    new-instance v1, Lorg/ros/android/view/RosTextView$1$2;

    invoke-direct {v1, p0, p1}, Lorg/ros/android/view/RosTextView$1$2;-><init>(Lorg/ros/android/view/RosTextView$1;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/ros/android/view/RosTextView;->post(Ljava/lang/Runnable;)Z

    .line 89
    :goto_1d
    iget-object v0, p0, Lorg/ros/android/view/RosTextView$1;->this$0:Lorg/ros/android/view/RosTextView;

    invoke-virtual {v0}, Lorg/ros/android/view/RosTextView;->postInvalidate()V

    .line 90
    return-void
.end method
