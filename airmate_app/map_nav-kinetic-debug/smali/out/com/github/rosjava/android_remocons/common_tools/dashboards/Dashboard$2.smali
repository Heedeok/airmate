.class Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard$2;
.super Ljava/lang/Object;
.source "Dashboard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard;->onStart(Lorg/ros/node/ConnectedNode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard;


# direct methods
.method constructor <init>(Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard;)V
    .registers 2
    .param p1, "this$0"    # Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard;

    .line 173
    iput-object p1, p0, Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard$2;->this$0:Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 177
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard$2;->this$0:Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard;

    invoke-static {v0}, Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard;->access$000(Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard;)Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard$DashboardInterface;

    move-result-object v0

    .line 178
    .local v0, "dash":Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard$DashboardInterface;
    iget-object v1, p0, Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard$2;->this$0:Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard;

    invoke-static {v1}, Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard;->access$100(Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard;)Landroid/view/ViewGroup;

    move-result-object v1

    .line 179
    .local v1, "localView":Landroid/view/ViewGroup;
    if-eqz v0, :cond_1d

    if-eqz v1, :cond_1d

    .line 180
    move-object v2, v0

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard$2;->this$0:Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard;

    invoke-static {v3}, Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard;->access$200(Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3e

    .line 181
    :cond_1d
    if-nez v0, :cond_27

    .line 182
    const-string v2, "Dashboard"

    const-string v3, "Dashboard could not start: no dashboard"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e

    .line 184
    :cond_27
    iget-object v2, p0, Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard$2;->this$0:Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard;

    invoke-static {v2}, Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard;->access$100(Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard;)Landroid/view/ViewGroup;

    move-result-object v2

    if-nez v2, :cond_37

    .line 185
    const-string v2, "Dashboard"

    const-string v3, "Dashboard could not start: no view"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e

    .line 187
    :cond_37
    const-string v2, "Dashboard"

    const-string v3, "Dashboard could not start: no view or dashboard"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :goto_3e
    return-void
.end method
