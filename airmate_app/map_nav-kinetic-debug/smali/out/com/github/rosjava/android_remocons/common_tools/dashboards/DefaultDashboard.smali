.class public Lcom/github/rosjava/android_remocons/common_tools/dashboards/DefaultDashboard;
.super Landroid/widget/LinearLayout;
.source "DefaultDashboard.java"

# interfaces
.implements Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard$DashboardInterface;


# instance fields
.field private connectedNode:Lorg/ros/node/ConnectedNode;

.field private diagnosticSubscriber:Lorg/ros/node/topic/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ros/node/topic/Subscriber<",
            "Ldiagnostic_msgs/DiagnosticArray;",
            ">;"
        }
    .end annotation
.end field

.field private laptopBattery:Lcom/github/rosjava/android_extras/gingerbread/view/BatteryLevelView;

.field private powerOn:Z

.field private robotBattery:Lcom/github/rosjava/android_extras/gingerbread/view/BatteryLevelView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 67
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/rosjava/android_remocons/common_tools/dashboards/DefaultDashboard;->powerOn:Z

    .line 68
    invoke-direct {p0, p1}, Lcom/github/rosjava/android_remocons/common_tools/dashboards/DefaultDashboard;->inflateSelf(Landroid/content/Context;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 71
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/rosjava/android_remocons/common_tools/dashboards/DefaultDashboard;->powerOn:Z

    .line 72
    invoke-direct {p0, p1}, Lcom/github/rosjava/android_remocons/common_tools/dashboards/DefaultDashboard;->inflateSelf(Landroid/content/Context;)V

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/github/rosjava/android_remocons/common_tools/dashboards/DefaultDashboard;Ldiagnostic_msgs/DiagnosticArray;)V
    .registers 2
    .param p0, "x0"    # Lcom/github/rosjava/android_remocons/common_tools/dashboards/DefaultDashboard;
    .param p1, "x1"    # Ldiagnostic_msgs/DiagnosticArray;

    .line 59
    invoke-direct {p0, p1}, Lcom/github/rosjava/android_remocons/common_tools/dashboards/DefaultDashboard;->handleDiagnosticArray(Ldiagnostic_msgs/DiagnosticArray;)V

    return-void
.end method

.method private handleDiagnosticArray(Ldiagnostic_msgs/DiagnosticArray;)V
    .registers 6
    .param p1, "msg"    # Ldiagnostic_msgs/DiagnosticArray;

    .line 91
    invoke-interface {p1}, Ldiagnostic_msgs/DiagnosticArray;->getStatus()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldiagnostic_msgs/DiagnosticStatus;

    .line 92
    .local v1, "status":Ldiagnostic_msgs/DiagnosticStatus;
    invoke-interface {v1}, Ldiagnostic_msgs/DiagnosticStatus;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/Power System/Battery"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 93
    iget-object v2, p0, Lcom/github/rosjava/android_remocons/common_tools/dashboards/DefaultDashboard;->robotBattery:Lcom/github/rosjava/android_extras/gingerbread/view/BatteryLevelView;

    invoke-direct {p0, v2, v1}, Lcom/github/rosjava/android_remocons/common_tools/dashboards/DefaultDashboard;->populateBatteryFromStatus(Lcom/github/rosjava/android_extras/gingerbread/view/BatteryLevelView;Ldiagnostic_msgs/DiagnosticStatus;)V

    .line 95
    :cond_25
    invoke-interface {v1}, Ldiagnostic_msgs/DiagnosticStatus;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/Power System/Laptop Battery"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 96
    iget-object v2, p0, Lcom/github/rosjava/android_remocons/common_tools/dashboards/DefaultDashboard;->laptopBattery:Lcom/github/rosjava/android_extras/gingerbread/view/BatteryLevelView;

    invoke-direct {p0, v2, v1}, Lcom/github/rosjava/android_remocons/common_tools/dashboards/DefaultDashboard;->populateBatteryFromStatus(Lcom/github/rosjava/android_extras/gingerbread/view/BatteryLevelView;Ldiagnostic_msgs/DiagnosticStatus;)V

    .line 98
    .end local v1    # "status":Ldiagnostic_msgs/DiagnosticStatus;
    :cond_36
    goto :goto_8

    .line 99
    :cond_37
    return-void
.end method

.method private inflateSelf(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 75
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 76
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/github/rosjava/android_remocons/common_tools/R$layout;->default_dashboard:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 77
    sget v1, Lcom/github/rosjava/android_remocons/common_tools/R$id;->robot_battery:I

    invoke-virtual {p0, v1}, Lcom/github/rosjava/android_remocons/common_tools/dashboards/DefaultDashboard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/github/rosjava/android_extras/gingerbread/view/BatteryLevelView;

    iput-object v1, p0, Lcom/github/rosjava/android_remocons/common_tools/dashboards/DefaultDashboard;->robotBattery:Lcom/github/rosjava/android_extras/gingerbread/view/BatteryLevelView;

    .line 78
    sget v1, Lcom/github/rosjava/android_remocons/common_tools/R$id;->laptop_battery:I

    invoke-virtual {p0, v1}, Lcom/github/rosjava/android_remocons/common_tools/dashboards/DefaultDashboard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/github/rosjava/android_extras/gingerbread/view/BatteryLevelView;

    iput-object v1, p0, Lcom/github/rosjava/android_remocons/common_tools/dashboards/DefaultDashboard;->laptopBattery:Lcom/github/rosjava/android_extras/gingerbread/view/BatteryLevelView;

    .line 79
    return-void
.end method

.method private keyValueArrayToMap(Ljava/util/List;)Ljava/util/HashMap;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ldiagnostic_msgs/KeyValue;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 125
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ldiagnostic_msgs/KeyValue;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 126
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldiagnostic_msgs/KeyValue;

    .line 127
    .local v2, "kv":Ldiagnostic_msgs/KeyValue;
    invoke-interface {v2}, Ldiagnostic_msgs/KeyValue;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Ldiagnostic_msgs/KeyValue;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .end local v2    # "kv":Ldiagnostic_msgs/KeyValue;
    goto :goto_9

    .line 129
    :cond_21
    return-object v0
.end method

.method private populateBatteryFromStatus(Lcom/github/rosjava/android_extras/gingerbread/view/BatteryLevelView;Ldiagnostic_msgs/DiagnosticStatus;)V
    .registers 6
    .param p1, "view"    # Lcom/github/rosjava/android_extras/gingerbread/view/BatteryLevelView;
    .param p2, "status"    # Ldiagnostic_msgs/DiagnosticStatus;

    .line 103
    invoke-interface {p2}, Ldiagnostic_msgs/DiagnosticStatus;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/github/rosjava/android_remocons/common_tools/dashboards/DefaultDashboard;->keyValueArrayToMap(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v0

    .line 105
    .local v0, "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/high16 v1, 0x42c80000    # 100.0f

    :try_start_a
    const-string v2, "Charge (Ah)"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    mul-float v2, v2, v1

    const-string v1, "Capacity (Ah)"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    div-float/2addr v2, v1

    .line 106
    .local v2, "percent":F
    float-to-int v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Lcom/github/rosjava/android_extras/gingerbread/view/BatteryLevelView;->setBatteryPercent(F)V
    :try_end_2a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_2a} :catch_2f
    .catch Ljava/lang/ArithmeticException; {:try_start_a .. :try_end_2a} :catch_2d
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_2a} :catch_2b

    goto :goto_30

    .line 114
    .end local v2    # "percent":F
    :catch_2b
    move-exception v1

    goto :goto_31

    .line 112
    :catch_2d
    move-exception v1

    goto :goto_30

    .line 110
    :catch_2f
    move-exception v1

    .line 116
    :goto_30
    nop

    .line 118
    :goto_31
    :try_start_31
    const-string v1, "Current (A)"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_44

    const/4 v1, 0x1

    goto :goto_45

    :cond_44
    const/4 v1, 0x0

    :goto_45
    invoke-virtual {p1, v1}, Lcom/github/rosjava/android_extras/gingerbread/view/BatteryLevelView;->setPluggedIn(Z)V
    :try_end_48
    .catch Ljava/lang/NumberFormatException; {:try_start_31 .. :try_end_48} :catch_4d
    .catch Ljava/lang/ArithmeticException; {:try_start_31 .. :try_end_48} :catch_4b
    .catch Ljava/lang/NullPointerException; {:try_start_31 .. :try_end_48} :catch_49

    goto :goto_4e

    .line 121
    :catch_49
    move-exception v1

    goto :goto_4f

    .line 120
    :catch_4b
    move-exception v1

    goto :goto_4e

    .line 119
    :catch_4d
    move-exception v1

    .line 122
    :goto_4e
    nop

    .line 123
    :goto_4f
    return-void
.end method


# virtual methods
.method public onShutdown(Lorg/ros/node/Node;)V
    .registers 3
    .param p1, "node"    # Lorg/ros/node/Node;

    .line 134
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/dashboards/DefaultDashboard;->diagnosticSubscriber:Lorg/ros/node/topic/Subscriber;

    if-eqz v0, :cond_9

    .line 135
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/dashboards/DefaultDashboard;->diagnosticSubscriber:Lorg/ros/node/topic/Subscriber;

    invoke-interface {v0}, Lorg/ros/node/topic/Subscriber;->shutdown()V

    .line 137
    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/dashboards/DefaultDashboard;->diagnosticSubscriber:Lorg/ros/node/topic/Subscriber;

    .line 138
    iput-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/dashboards/DefaultDashboard;->connectedNode:Lorg/ros/node/ConnectedNode;

    .line 140
    return-void
.end method

.method public onStart(Lorg/ros/node/ConnectedNode;)V
    .registers 4
    .param p1, "connectedNode"    # Lorg/ros/node/ConnectedNode;

    .line 145
    iput-object p1, p0, Lcom/github/rosjava/android_remocons/common_tools/dashboards/DefaultDashboard;->connectedNode:Lorg/ros/node/ConnectedNode;

    .line 147
    :try_start_2
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/dashboards/DefaultDashboard;->diagnosticSubscriber:Lorg/ros/node/topic/Subscriber;

    .line 150
    const-string v0, "diagnostics_agg"

    const-string v1, "diagnostic_msgs/DiagnosticArray"

    invoke-interface {p1, v0, v1}, Lorg/ros/node/ConnectedNode;->newSubscriber(Ljava/lang/String;Ljava/lang/String;)Lorg/ros/node/topic/Subscriber;

    move-result-object v0

    iput-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/dashboards/DefaultDashboard;->diagnosticSubscriber:Lorg/ros/node/topic/Subscriber;

    .line 151
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/dashboards/DefaultDashboard;->diagnosticSubscriber:Lorg/ros/node/topic/Subscriber;

    new-instance v1, Lcom/github/rosjava/android_remocons/common_tools/dashboards/DefaultDashboard$1;

    invoke-direct {v1, p0}, Lcom/github/rosjava/android_remocons/common_tools/dashboards/DefaultDashboard$1;-><init>(Lcom/github/rosjava/android_remocons/common_tools/dashboards/DefaultDashboard;)V

    invoke-interface {v0, v1}, Lorg/ros/node/topic/Subscriber;->addMessageListener(Lorg/ros/message/MessageListener;)V

    .line 162
    invoke-interface {p1}, Lorg/ros/node/ConnectedNode;->getResolver()Lorg/ros/namespace/NodeNameResolver;

    move-result-object v0

    const-string v1, "/turtlebot_node"

    invoke-static {v1}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ros/namespace/NodeNameResolver;->newChild(Lorg/ros/namespace/GraphName;)Lorg/ros/namespace/NameResolver;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_25} :catch_26

    .line 171
    goto :goto_34

    .line 163
    :catch_26
    move-exception v0

    .line 164
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/github/rosjava/android_remocons/common_tools/dashboards/DefaultDashboard;->connectedNode:Lorg/ros/node/ConnectedNode;

    .line 166
    :try_start_2a
    new-instance v1, Lorg/ros/exception/RosException;

    invoke-direct {v1, v0}, Lorg/ros/exception/RosException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_30
    .catch Lorg/ros/exception/RosException; {:try_start_2a .. :try_end_30} :catch_30

    .line 167
    :catch_30
    move-exception v1

    .line 169
    .local v1, "e":Lorg/ros/exception/RosException;
    invoke-virtual {v1}, Lorg/ros/exception/RosException;->printStackTrace()V

    .line 172
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v1    # "e":Lorg/ros/exception/RosException;
    :goto_34
    return-void
.end method
