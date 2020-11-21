.class Lcom/github/rosjava/android_remocons/common_tools/dashboards/DefaultDashboard$1$1;
.super Ljava/lang/Object;
.source "DefaultDashboard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/rosjava/android_remocons/common_tools/dashboards/DefaultDashboard$1;->onNewMessage(Ldiagnostic_msgs/DiagnosticArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/github/rosjava/android_remocons/common_tools/dashboards/DefaultDashboard$1;

.field final synthetic val$message:Ldiagnostic_msgs/DiagnosticArray;


# direct methods
.method constructor <init>(Lcom/github/rosjava/android_remocons/common_tools/dashboards/DefaultDashboard$1;Ldiagnostic_msgs/DiagnosticArray;)V
    .registers 3
    .param p1, "this$1"    # Lcom/github/rosjava/android_remocons/common_tools/dashboards/DefaultDashboard$1;

    .line 154
    iput-object p1, p0, Lcom/github/rosjava/android_remocons/common_tools/dashboards/DefaultDashboard$1$1;->this$1:Lcom/github/rosjava/android_remocons/common_tools/dashboards/DefaultDashboard$1;

    iput-object p2, p0, Lcom/github/rosjava/android_remocons/common_tools/dashboards/DefaultDashboard$1$1;->val$message:Ldiagnostic_msgs/DiagnosticArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 157
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/dashboards/DefaultDashboard$1$1;->this$1:Lcom/github/rosjava/android_remocons/common_tools/dashboards/DefaultDashboard$1;

    iget-object v0, v0, Lcom/github/rosjava/android_remocons/common_tools/dashboards/DefaultDashboard$1;->this$0:Lcom/github/rosjava/android_remocons/common_tools/dashboards/DefaultDashboard;

    iget-object v1, p0, Lcom/github/rosjava/android_remocons/common_tools/dashboards/DefaultDashboard$1$1;->val$message:Ldiagnostic_msgs/DiagnosticArray;

    invoke-static {v0, v1}, Lcom/github/rosjava/android_remocons/common_tools/dashboards/DefaultDashboard;->access$000(Lcom/github/rosjava/android_remocons/common_tools/dashboards/DefaultDashboard;Ldiagnostic_msgs/DiagnosticArray;)V

    .line 158
    return-void
.end method
