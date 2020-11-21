.class Lorg/ros/android/view/DiagnosticsArrayView$1;
.super Ljava/lang/Object;
.source "DiagnosticsArrayView.java"

# interfaces
.implements Lorg/ros/message/MessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ros/android/view/DiagnosticsArrayView;->onStart(Lorg/ros/node/ConnectedNode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ros/message/MessageListener<",
        "Ldiagnostic_msgs/DiagnosticArray;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ros/android/view/DiagnosticsArrayView;


# direct methods
.method constructor <init>(Lorg/ros/android/view/DiagnosticsArrayView;)V
    .registers 2
    .param p1, "this$0"    # Lorg/ros/android/view/DiagnosticsArrayView;

    .line 96
    iput-object p1, p0, Lorg/ros/android/view/DiagnosticsArrayView$1;->this$0:Lorg/ros/android/view/DiagnosticsArrayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNewMessage(Ldiagnostic_msgs/DiagnosticArray;)V
    .registers 5
    .param p1, "message"    # Ldiagnostic_msgs/DiagnosticArray;

    .line 99
    invoke-interface {p1}, Ldiagnostic_msgs/DiagnosticArray;->getStatus()Ljava/util/List;

    move-result-object v0

    .line 100
    .local v0, "diagnosticStatusMessages":Ljava/util/List;, "Ljava/util/List<Ldiagnostic_msgs/DiagnosticStatus;>;"
    iget-object v1, p0, Lorg/ros/android/view/DiagnosticsArrayView$1;->this$0:Lorg/ros/android/view/DiagnosticsArrayView;

    new-instance v2, Lorg/ros/android/view/DiagnosticsArrayView$1$1;

    invoke-direct {v2, p0, v0}, Lorg/ros/android/view/DiagnosticsArrayView$1$1;-><init>(Lorg/ros/android/view/DiagnosticsArrayView$1;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lorg/ros/android/view/DiagnosticsArrayView;->post(Ljava/lang/Runnable;)Z

    .line 120
    iget-object v1, p0, Lorg/ros/android/view/DiagnosticsArrayView$1;->this$0:Lorg/ros/android/view/DiagnosticsArrayView;

    invoke-virtual {v1}, Lorg/ros/android/view/DiagnosticsArrayView;->postInvalidate()V

    .line 121
    return-void
.end method

.method public bridge synthetic onNewMessage(Ljava/lang/Object;)V
    .registers 2

    .line 96
    check-cast p1, Ldiagnostic_msgs/DiagnosticArray;

    invoke-virtual {p0, p1}, Lorg/ros/android/view/DiagnosticsArrayView$1;->onNewMessage(Ldiagnostic_msgs/DiagnosticArray;)V

    return-void
.end method
