.class Lcom/github/rosjava/android_remocons/common_tools/dashboards/DefaultDashboard$1;
.super Ljava/lang/Object;
.source "DefaultDashboard.java"

# interfaces
.implements Lorg/ros/message/MessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/rosjava/android_remocons/common_tools/dashboards/DefaultDashboard;->onStart(Lorg/ros/node/ConnectedNode;)V
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
.field final synthetic this$0:Lcom/github/rosjava/android_remocons/common_tools/dashboards/DefaultDashboard;


# direct methods
.method constructor <init>(Lcom/github/rosjava/android_remocons/common_tools/dashboards/DefaultDashboard;)V
    .registers 2
    .param p1, "this$0"    # Lcom/github/rosjava/android_remocons/common_tools/dashboards/DefaultDashboard;

    .line 151
    iput-object p1, p0, Lcom/github/rosjava/android_remocons/common_tools/dashboards/DefaultDashboard$1;->this$0:Lcom/github/rosjava/android_remocons/common_tools/dashboards/DefaultDashboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNewMessage(Ldiagnostic_msgs/DiagnosticArray;)V
    .registers 4
    .param p1, "message"    # Ldiagnostic_msgs/DiagnosticArray;

    .line 154
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/dashboards/DefaultDashboard$1;->this$0:Lcom/github/rosjava/android_remocons/common_tools/dashboards/DefaultDashboard;

    new-instance v1, Lcom/github/rosjava/android_remocons/common_tools/dashboards/DefaultDashboard$1$1;

    invoke-direct {v1, p0, p1}, Lcom/github/rosjava/android_remocons/common_tools/dashboards/DefaultDashboard$1$1;-><init>(Lcom/github/rosjava/android_remocons/common_tools/dashboards/DefaultDashboard$1;Ldiagnostic_msgs/DiagnosticArray;)V

    invoke-virtual {v0, v1}, Lcom/github/rosjava/android_remocons/common_tools/dashboards/DefaultDashboard;->post(Ljava/lang/Runnable;)Z

    .line 160
    return-void
.end method

.method public bridge synthetic onNewMessage(Ljava/lang/Object;)V
    .registers 2

    .line 151
    check-cast p1, Ldiagnostic_msgs/DiagnosticArray;

    invoke-virtual {p0, p1}, Lcom/github/rosjava/android_remocons/common_tools/dashboards/DefaultDashboard$1;->onNewMessage(Ldiagnostic_msgs/DiagnosticArray;)V

    return-void
.end method
