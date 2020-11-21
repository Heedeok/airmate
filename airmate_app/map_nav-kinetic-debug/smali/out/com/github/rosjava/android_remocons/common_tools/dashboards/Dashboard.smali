.class public Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard;
.super Ljava/lang/Object;
.source "Dashboard.java"

# interfaces
.implements Lorg/ros/node/NodeMain;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard$DashboardInterface;
    }
.end annotation


# static fields
.field private static customDashboardPath:Ljava/lang/String; = null

.field private static final defaultDashboardPath:Ljava/lang/String; = "com.github.rosjava.android_remocons.common_tools.dashboards.DefaultDashboard"

.field private static final pr2DashboardPath:Ljava/lang/String; = "com.ros.pr2.apps.core_components.Pr2Dashboard"

.field private static robotName:Ljava/lang/String; = null

.field private static final turtlebotDashboardPath:Ljava/lang/String; = "com.github.turtlebot.turtlebot_android.turtlebot_core.dashboards.TurtlebotDashboard"


# instance fields
.field private activity:Landroid/app/Activity;

.field private dashboard:Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard$DashboardInterface;

.field private lparams:Landroid/view/ViewGroup$LayoutParams;

.field private view:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard;->dashboard:Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard$DashboardInterface;

    .line 71
    iput-object p1, p0, Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard;->activity:Landroid/app/Activity;

    .line 72
    iput-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard;->view:Landroid/view/ViewGroup;

    .line 73
    iput-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard;->lparams:Landroid/view/ViewGroup$LayoutParams;

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard;)Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard$DashboardInterface;
    .registers 2
    .param p0, "x0"    # Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard;

    .line 47
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard;->dashboard:Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard$DashboardInterface;

    return-object v0
.end method

.method static synthetic access$002(Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard;Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard$DashboardInterface;)Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard$DashboardInterface;
    .registers 2
    .param p0, "x0"    # Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard;
    .param p1, "x1"    # Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard$DashboardInterface;

    .line 47
    iput-object p1, p0, Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard;->dashboard:Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard$DashboardInterface;

    return-object p1
.end method

.method static synthetic access$100(Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard;)Landroid/view/ViewGroup;
    .registers 2
    .param p0, "x0"    # Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard;

    .line 47
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard;->view:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$200(Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2
    .param p0, "x0"    # Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard;

    .line 47
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard;->lparams:Landroid/view/ViewGroup$LayoutParams;

    return-object v0
.end method

.method private static createDashboard(Landroid/content/Context;)Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard$DashboardInterface;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 126
    sget-object v0, Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard;->customDashboardPath:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 127
    sget-object v0, Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard;->customDashboardPath:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard;->createDashboard(Ljava/lang/String;Landroid/content/Context;)Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard$DashboardInterface;

    move-result-object v0

    return-object v0

    .line 133
    :cond_b
    const-string v0, "com.github.rosjava.android_remocons.common_tools.dashboards.DefaultDashboard"

    invoke-static {v0, p0}, Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard;->createDashboard(Ljava/lang/String;Landroid/content/Context;)Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard$DashboardInterface;

    move-result-object v0

    return-object v0
.end method

.method private static createDashboard(Ljava/lang/Class;Landroid/content/Context;)Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard$DashboardInterface;
    .registers 8
    .param p0, "dashClass"    # Ljava/lang/Class;
    .param p1, "context"    # Landroid/content/Context;

    .line 94
    const-class v0, Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 95
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 96
    .local v2, "args":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 97
    .local v3, "result":Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard$DashboardInterface;
    const/4 v4, 0x0

    aput-object p1, v2, v4

    .line 99
    :try_start_d
    const-string v5, "android.content.Context"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 100
    .local v5, "contextClass":Ljava/lang/Class;
    new-array v1, v1, [Ljava/lang/Class;

    aput-object v5, v1, v4

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard$DashboardInterface;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_21} :catch_22

    .line 104
    .end local v3    # "result":Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard$DashboardInterface;
    .end local v5    # "contextClass":Ljava/lang/Class;
    .local v1, "result":Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard$DashboardInterface;
    goto :goto_2b

    .line 101
    .end local v1    # "result":Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard$DashboardInterface;
    .restart local v3    # "result":Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard$DashboardInterface;
    :catch_22
    move-exception v1

    .line 102
    .local v1, "ex":Ljava/lang/Exception;
    const-string v4, "Dashboard"

    const-string v5, "Error during dashboard instantiation:"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    const/4 v1, 0x0

    .line 105
    .end local v3    # "result":Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard$DashboardInterface;
    .local v1, "result":Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard$DashboardInterface;
    :goto_2b
    return-object v1
.end method

.method private static createDashboard(Ljava/lang/String;Landroid/content/Context;)Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard$DashboardInterface;
    .registers 7
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .line 110
    const/4 v0, 0x0

    move-object v1, v0

    .line 112
    .local v1, "dashClass":Ljava/lang/Class;
    :try_start_2
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_6} :catch_d

    move-object v0, v2

    .line 116
    .end local v1    # "dashClass":Ljava/lang/Class;
    .local v0, "dashClass":Ljava/lang/Class;
    nop

    .line 117
    invoke-static {v0, p1}, Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard;->createDashboard(Ljava/lang/Class;Landroid/content/Context;)Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard$DashboardInterface;

    move-result-object v1

    return-object v1

    .line 113
    .end local v0    # "dashClass":Ljava/lang/Class;
    .restart local v1    # "dashClass":Ljava/lang/Class;
    :catch_d
    move-exception v2

    .line 114
    .local v2, "ex":Ljava/lang/Exception;
    const-string v3, "Dashboard"

    const-string v4, "Error during dashboard class loading:"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    return-object v0
.end method


# virtual methods
.method public getDefaultNodeName()Lorg/ros/namespace/GraphName;
    .registers 2

    .line 199
    const/4 v0, 0x0

    return-object v0
.end method

.method public onError(Lorg/ros/node/Node;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "arg0"    # Lorg/ros/node/Node;
    .param p2, "arg1"    # Ljava/lang/Throwable;

    .line 141
    return-void
.end method

.method public onShutdown(Lorg/ros/node/Node;)V
    .registers 4
    .param p1, "node"    # Lorg/ros/node/Node;

    .line 145
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard$1;

    invoke-direct {v1, p0, p1}, Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard$1;-><init>(Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard;Lorg/ros/node/Node;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 156
    return-void
.end method

.method public onShutdownComplete(Lorg/ros/node/Node;)V
    .registers 2
    .param p1, "node"    # Lorg/ros/node/Node;

    .line 162
    return-void
.end method

.method public onStart(Lorg/ros/node/ConnectedNode;)V
    .registers 4
    .param p1, "connectedNode"    # Lorg/ros/node/ConnectedNode;

    .line 166
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard;->dashboard:Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard$DashboardInterface;

    if-eqz v0, :cond_5

    .line 169
    return-void

    .line 171
    :cond_5
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard;->createDashboard(Landroid/content/Context;)Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard$DashboardInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard;->dashboard:Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard$DashboardInterface;

    .line 172
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard;->dashboard:Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard$DashboardInterface;

    if-eqz v0, :cond_20

    .line 173
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard$2;

    invoke-direct {v1, p0}, Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard$2;-><init>(Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 192
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard;->dashboard:Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard$DashboardInterface;

    invoke-interface {v0, p1}, Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard$DashboardInterface;->onStart(Lorg/ros/node/ConnectedNode;)V

    .line 194
    :cond_20
    return-void
.end method

.method public setCustomDashboardPath(Ljava/lang/String;)V
    .registers 2
    .param p1, "path"    # Ljava/lang/String;

    .line 89
    sput-object p1, Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard;->customDashboardPath:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setRobotName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 85
    sput-object p1, Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard;->robotName:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setView(Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5
    .param p1, "view"    # Landroid/view/ViewGroup;
    .param p2, "lparams"    # Landroid/view/ViewGroup$LayoutParams;

    .line 77
    if-nez p1, :cond_9

    .line 78
    const-string v0, "Dashboard"

    const-string v1, "Null view for dashboard"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_9
    iput-object p1, p0, Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard;->view:Landroid/view/ViewGroup;

    .line 81
    iput-object p2, p0, Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard;->lparams:Landroid/view/ViewGroup$LayoutParams;

    .line 82
    return-void
.end method
