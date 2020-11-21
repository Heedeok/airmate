.class Lorg/ros/android/view/RosTextView$1$1;
.super Ljava/lang/Object;
.source "RosTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ros/android/view/RosTextView$1;->onNewMessage(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/ros/android/view/RosTextView$1;

.field final synthetic val$message:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/ros/android/view/RosTextView$1;Ljava/lang/Object;)V
    .registers 3
    .param p1, "this$1"    # Lorg/ros/android/view/RosTextView$1;

    .line 75
    .local p0, "this":Lorg/ros/android/view/RosTextView$1$1;, "Lorg/ros/android/view/RosTextView$1$1;"
    iput-object p1, p0, Lorg/ros/android/view/RosTextView$1$1;->this$1:Lorg/ros/android/view/RosTextView$1;

    iput-object p2, p0, Lorg/ros/android/view/RosTextView$1$1;->val$message:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 78
    .local p0, "this":Lorg/ros/android/view/RosTextView$1$1;, "Lorg/ros/android/view/RosTextView$1$1;"
    iget-object v0, p0, Lorg/ros/android/view/RosTextView$1$1;->this$1:Lorg/ros/android/view/RosTextView$1;

    iget-object v0, v0, Lorg/ros/android/view/RosTextView$1;->this$0:Lorg/ros/android/view/RosTextView;

    iget-object v1, p0, Lorg/ros/android/view/RosTextView$1$1;->this$1:Lorg/ros/android/view/RosTextView$1;

    iget-object v1, v1, Lorg/ros/android/view/RosTextView$1;->this$0:Lorg/ros/android/view/RosTextView;

    invoke-static {v1}, Lorg/ros/android/view/RosTextView;->access$000(Lorg/ros/android/view/RosTextView;)Lorg/ros/android/MessageCallable;

    move-result-object v1

    iget-object v2, p0, Lorg/ros/android/view/RosTextView$1$1;->val$message:Ljava/lang/Object;

    invoke-interface {v1, v2}, Lorg/ros/android/MessageCallable;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lorg/ros/android/view/RosTextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    return-void
.end method
