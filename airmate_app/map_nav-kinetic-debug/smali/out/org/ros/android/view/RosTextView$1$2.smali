.class Lorg/ros/android/view/RosTextView$1$2;
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

    .line 82
    .local p0, "this":Lorg/ros/android/view/RosTextView$1$2;, "Lorg/ros/android/view/RosTextView$1$2;"
    iput-object p1, p0, Lorg/ros/android/view/RosTextView$1$2;->this$1:Lorg/ros/android/view/RosTextView$1;

    iput-object p2, p0, Lorg/ros/android/view/RosTextView$1$2;->val$message:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 85
    .local p0, "this":Lorg/ros/android/view/RosTextView$1$2;, "Lorg/ros/android/view/RosTextView$1$2;"
    iget-object v0, p0, Lorg/ros/android/view/RosTextView$1$2;->this$1:Lorg/ros/android/view/RosTextView$1;

    iget-object v0, v0, Lorg/ros/android/view/RosTextView$1;->this$0:Lorg/ros/android/view/RosTextView;

    iget-object v1, p0, Lorg/ros/android/view/RosTextView$1$2;->val$message:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ros/android/view/RosTextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    return-void
.end method
