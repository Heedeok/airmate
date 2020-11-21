.class Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard$1;
.super Ljava/lang/Object;
.source "Dashboard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard;->onShutdown(Lorg/ros/node/Node;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard;

.field final synthetic val$node:Lorg/ros/node/Node;


# direct methods
.method constructor <init>(Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard;Lorg/ros/node/Node;)V
    .registers 3
    .param p1, "this$0"    # Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard;

    .line 145
    iput-object p1, p0, Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard$1;->this$0:Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard;

    iput-object p2, p0, Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard$1;->val$node:Lorg/ros/node/Node;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 148
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard$1;->this$0:Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard;

    invoke-static {v0}, Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard;->access$000(Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard;)Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard$DashboardInterface;

    move-result-object v0

    .line 149
    .local v0, "dash":Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard$DashboardInterface;
    if-eqz v0, :cond_19

    .line 150
    iget-object v1, p0, Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard$1;->val$node:Lorg/ros/node/Node;

    invoke-interface {v0, v1}, Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard$DashboardInterface;->onShutdown(Lorg/ros/node/Node;)V

    .line 151
    iget-object v1, p0, Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard$1;->this$0:Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard;

    invoke-static {v1}, Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard;->access$100(Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard;)Landroid/view/ViewGroup;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 153
    :cond_19
    iget-object v1, p0, Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard$1;->this$0:Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard;->access$002(Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard;Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard$DashboardInterface;)Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard$DashboardInterface;

    .line 154
    return-void
.end method
