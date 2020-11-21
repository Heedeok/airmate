.class public Lcom/github/robotics_in_concert/rocon_rosjava_core/master_info/MasterInfo;
.super Lorg/ros/node/AbstractNodeMain;
.source "MasterInfo.java"


# instance fields
.field private masterInfoListener:Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerNode<",
            "Lrocon_std_msgs/MasterInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Lorg/ros/node/AbstractNodeMain;-><init>()V

    .line 31
    new-instance v0, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerNode;

    invoke-direct {v0}, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerNode;-><init>()V

    iput-object v0, p0, Lcom/github/robotics_in_concert/rocon_rosjava_core/master_info/MasterInfo;->masterInfoListener:Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerNode;

    .line 32
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 10
    .param p0, "argv"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.github.robotics_in_concert.rocon_rosjava_core.master_info.MasterInfo"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 138
    .local v0, "args":[Ljava/lang/String;
    new-instance v1, Lorg/ros/internal/loader/CommandLineLoader;

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/ros/internal/loader/CommandLineLoader;-><init>(Ljava/util/List;)V

    .line 139
    .local v1, "loader":Lorg/ros/internal/loader/CommandLineLoader;
    invoke-virtual {v1}, Lorg/ros/internal/loader/CommandLineLoader;->build()Lorg/ros/node/NodeConfiguration;

    move-result-object v2

    .line 140
    .local v2, "nodeConfiguration":Lorg/ros/node/NodeConfiguration;
    new-instance v3, Lcom/github/robotics_in_concert/rocon_rosjava_core/master_info/MasterInfo;

    invoke-direct {v3}, Lcom/github/robotics_in_concert/rocon_rosjava_core/master_info/MasterInfo;-><init>()V

    .line 142
    .local v3, "masterInfo":Lcom/github/robotics_in_concert/rocon_rosjava_core/master_info/MasterInfo;
    invoke-static {}, Lorg/ros/node/DefaultNodeMainExecutor;->newDefault()Lorg/ros/node/NodeMainExecutor;

    move-result-object v4

    .line 143
    .local v4, "nodeMainExecutor":Lorg/ros/node/NodeMainExecutor;
    invoke-interface {v4, v3, v2}, Lorg/ros/node/NodeMainExecutor;->execute(Lorg/ros/node/NodeMain;Lorg/ros/node/NodeConfiguration;)V

    .line 145
    :try_start_21
    invoke-virtual {v3}, Lcom/github/robotics_in_concert/rocon_rosjava_core/master_info/MasterInfo;->waitForResponse()V

    .line 146
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MasterInfo : retrieved information ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/github/robotics_in_concert/rocon_rosjava_core/master_info/MasterInfo;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_43
    .catch Lcom/github/robotics_in_concert/rocon_rosjava_core/master_info/MasterInfoException; {:try_start_21 .. :try_end_43} :catch_44

    .line 149
    goto :goto_64

    .line 147
    :catch_44
    move-exception v5

    .line 148
    .local v5, "e":Lcom/github/robotics_in_concert/rocon_rosjava_core/master_info/MasterInfoException;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Interactions : error getting roles ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/github/robotics_in_concert/rocon_rosjava_core/master_info/MasterInfoException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 160
    .end local v5    # "e":Lcom/github/robotics_in_concert/rocon_rosjava_core/master_info/MasterInfoException;
    :goto_64
    return-void
.end method


# virtual methods
.method public getDefaultNodeName()Lorg/ros/namespace/GraphName;
    .registers 2

    .line 63
    const-string v0, "rocon_rosjava_master_info"

    invoke-static {v0}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/robotics_in_concert/rocon_rosjava_core/master_info/MasterInfoException;
        }
    .end annotation

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/github/robotics_in_concert/rocon_rosjava_core/master_info/MasterInfo;->masterInfoListener:Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerNode;

    invoke-virtual {v0}, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerNode;->getMessage()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_d

    .line 82
    iget-object v0, p0, Lcom/github/robotics_in_concert/rocon_rosjava_core/master_info/MasterInfo;->masterInfoListener:Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerNode;

    invoke-virtual {v0}, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerNode;->waitForResponse()V
    :try_end_d
    .catch Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerException; {:try_start_0 .. :try_end_d} :catch_26
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_d} :catch_1b

    .line 88
    :cond_d
    nop

    .line 89
    iget-object v0, p0, Lcom/github/robotics_in_concert/rocon_rosjava_core/master_info/MasterInfo;->masterInfoListener:Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerNode;

    invoke-virtual {v0}, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerNode;->getMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrocon_std_msgs/MasterInfo;

    invoke-interface {v0}, Lrocon_std_msgs/MasterInfo;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 86
    :catch_1b
    move-exception v0

    .line 87
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v1, Lcom/github/robotics_in_concert/rocon_rosjava_core/master_info/MasterInfoException;

    invoke-virtual {v0}, Ljava/util/concurrent/TimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/github/robotics_in_concert/rocon_rosjava_core/master_info/MasterInfoException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 84
    .end local v0    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_26
    move-exception v0

    .line 85
    .local v0, "e":Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerException;
    new-instance v1, Lcom/github/robotics_in_concert/rocon_rosjava_core/master_info/MasterInfoException;

    invoke-virtual {v0}, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/github/robotics_in_concert/rocon_rosjava_core/master_info/MasterInfoException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getIcon()Lrocon_std_msgs/Icon;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/robotics_in_concert/rocon_rosjava_core/master_info/MasterInfoException;
        }
    .end annotation

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/github/robotics_in_concert/rocon_rosjava_core/master_info/MasterInfo;->masterInfoListener:Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerNode;

    invoke-virtual {v0}, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerNode;->getMessage()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_d

    .line 121
    iget-object v0, p0, Lcom/github/robotics_in_concert/rocon_rosjava_core/master_info/MasterInfo;->masterInfoListener:Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerNode;

    invoke-virtual {v0}, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerNode;->waitForResponse()V
    :try_end_d
    .catch Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerException; {:try_start_0 .. :try_end_d} :catch_26
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_d} :catch_1b

    .line 127
    :cond_d
    nop

    .line 128
    iget-object v0, p0, Lcom/github/robotics_in_concert/rocon_rosjava_core/master_info/MasterInfo;->masterInfoListener:Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerNode;

    invoke-virtual {v0}, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerNode;->getMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrocon_std_msgs/MasterInfo;

    invoke-interface {v0}, Lrocon_std_msgs/MasterInfo;->getIcon()Lrocon_std_msgs/Icon;

    move-result-object v0

    return-object v0

    .line 125
    :catch_1b
    move-exception v0

    .line 126
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v1, Lcom/github/robotics_in_concert/rocon_rosjava_core/master_info/MasterInfoException;

    invoke-virtual {v0}, Ljava/util/concurrent/TimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/github/robotics_in_concert/rocon_rosjava_core/master_info/MasterInfoException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 123
    .end local v0    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_26
    move-exception v0

    .line 124
    .local v0, "e":Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerException;
    new-instance v1, Lcom/github/robotics_in_concert/rocon_rosjava_core/master_info/MasterInfoException;

    invoke-virtual {v0}, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/github/robotics_in_concert/rocon_rosjava_core/master_info/MasterInfoException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getIconFormat()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/robotics_in_concert/rocon_rosjava_core/master_info/MasterInfoException;
        }
    .end annotation

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/github/robotics_in_concert/rocon_rosjava_core/master_info/MasterInfo;->masterInfoListener:Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerNode;

    invoke-virtual {v0}, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerNode;->getMessage()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_d

    .line 108
    iget-object v0, p0, Lcom/github/robotics_in_concert/rocon_rosjava_core/master_info/MasterInfo;->masterInfoListener:Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerNode;

    invoke-virtual {v0}, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerNode;->waitForResponse()V
    :try_end_d
    .catch Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerException; {:try_start_0 .. :try_end_d} :catch_2a
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_d} :catch_1f

    .line 114
    :cond_d
    nop

    .line 115
    iget-object v0, p0, Lcom/github/robotics_in_concert/rocon_rosjava_core/master_info/MasterInfo;->masterInfoListener:Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerNode;

    invoke-virtual {v0}, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerNode;->getMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrocon_std_msgs/MasterInfo;

    invoke-interface {v0}, Lrocon_std_msgs/MasterInfo;->getIcon()Lrocon_std_msgs/Icon;

    move-result-object v0

    invoke-interface {v0}, Lrocon_std_msgs/Icon;->getFormat()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 112
    :catch_1f
    move-exception v0

    .line 113
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v1, Lcom/github/robotics_in_concert/rocon_rosjava_core/master_info/MasterInfoException;

    invoke-virtual {v0}, Ljava/util/concurrent/TimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/github/robotics_in_concert/rocon_rosjava_core/master_info/MasterInfoException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 110
    .end local v0    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_2a
    move-exception v0

    .line 111
    .local v0, "e":Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerException;
    new-instance v1, Lcom/github/robotics_in_concert/rocon_rosjava_core/master_info/MasterInfoException;

    invoke-virtual {v0}, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/github/robotics_in_concert/rocon_rosjava_core/master_info/MasterInfoException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getIconResourceName()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/robotics_in_concert/rocon_rosjava_core/master_info/MasterInfoException;
        }
    .end annotation

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/github/robotics_in_concert/rocon_rosjava_core/master_info/MasterInfo;->masterInfoListener:Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerNode;

    invoke-virtual {v0}, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerNode;->getMessage()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_d

    .line 95
    iget-object v0, p0, Lcom/github/robotics_in_concert/rocon_rosjava_core/master_info/MasterInfo;->masterInfoListener:Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerNode;

    invoke-virtual {v0}, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerNode;->waitForResponse()V
    :try_end_d
    .catch Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerException; {:try_start_0 .. :try_end_d} :catch_2a
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_d} :catch_1f

    .line 101
    :cond_d
    nop

    .line 102
    iget-object v0, p0, Lcom/github/robotics_in_concert/rocon_rosjava_core/master_info/MasterInfo;->masterInfoListener:Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerNode;

    invoke-virtual {v0}, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerNode;->getMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrocon_std_msgs/MasterInfo;

    invoke-interface {v0}, Lrocon_std_msgs/MasterInfo;->getIcon()Lrocon_std_msgs/Icon;

    move-result-object v0

    invoke-interface {v0}, Lrocon_std_msgs/Icon;->getResourceName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 99
    :catch_1f
    move-exception v0

    .line 100
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v1, Lcom/github/robotics_in_concert/rocon_rosjava_core/master_info/MasterInfoException;

    invoke-virtual {v0}, Ljava/util/concurrent/TimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/github/robotics_in_concert/rocon_rosjava_core/master_info/MasterInfoException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 97
    .end local v0    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_2a
    move-exception v0

    .line 98
    .local v0, "e":Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerException;
    new-instance v1, Lcom/github/robotics_in_concert/rocon_rosjava_core/master_info/MasterInfoException;

    invoke-virtual {v0}, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/github/robotics_in_concert/rocon_rosjava_core/master_info/MasterInfoException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getName()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/robotics_in_concert/rocon_rosjava_core/master_info/MasterInfoException;
        }
    .end annotation

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/github/robotics_in_concert/rocon_rosjava_core/master_info/MasterInfo;->masterInfoListener:Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerNode;

    invoke-virtual {v0}, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerNode;->getMessage()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_d

    .line 69
    iget-object v0, p0, Lcom/github/robotics_in_concert/rocon_rosjava_core/master_info/MasterInfo;->masterInfoListener:Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerNode;

    invoke-virtual {v0}, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerNode;->waitForResponse()V
    :try_end_d
    .catch Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerException; {:try_start_0 .. :try_end_d} :catch_26
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_d} :catch_1b

    .line 75
    :cond_d
    nop

    .line 76
    iget-object v0, p0, Lcom/github/robotics_in_concert/rocon_rosjava_core/master_info/MasterInfo;->masterInfoListener:Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerNode;

    invoke-virtual {v0}, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerNode;->getMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrocon_std_msgs/MasterInfo;

    invoke-interface {v0}, Lrocon_std_msgs/MasterInfo;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 73
    :catch_1b
    move-exception v0

    .line 74
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v1, Lcom/github/robotics_in_concert/rocon_rosjava_core/master_info/MasterInfoException;

    invoke-virtual {v0}, Ljava/util/concurrent/TimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/github/robotics_in_concert/rocon_rosjava_core/master_info/MasterInfoException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 71
    .end local v0    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_26
    move-exception v0

    .line 72
    .local v0, "e":Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerException;
    new-instance v1, Lcom/github/robotics_in_concert/rocon_rosjava_core/master_info/MasterInfoException;

    invoke-virtual {v0}, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/github/robotics_in_concert/rocon_rosjava_core/master_info/MasterInfoException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onStart(Lorg/ros/node/ConnectedNode;)V
    .registers 6
    .param p1, "connectedNode"    # Lorg/ros/node/ConnectedNode;

    .line 35
    new-instance v0, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/RosTopicInfo;

    invoke-direct {v0, p1}, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/RosTopicInfo;-><init>(Lorg/ros/node/Node;)V

    .line 36
    .local v0, "topicInformation":Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/RosTopicInfo;
    const-string v1, "rocon_std_msgs/MasterInfo"

    invoke-virtual {v0, v1}, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/RosTopicInfo;->findTopic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, "topicName":Ljava/lang/String;
    iget-object v2, p0, Lcom/github/robotics_in_concert/rocon_rosjava_core/master_info/MasterInfo;->masterInfoListener:Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerNode;

    const-string v3, "rocon_std_msgs/MasterInfo"

    invoke-virtual {v2, p1, v1, v3}, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerNode;->connect(Lorg/ros/node/ConnectedNode;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public waitForResponse()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/robotics_in_concert/rocon_rosjava_core/master_info/MasterInfoException;
        }
    .end annotation

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/github/robotics_in_concert/rocon_rosjava_core/master_info/MasterInfo;->masterInfoListener:Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerNode;

    invoke-virtual {v0}, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerNode;->waitForResponse()V
    :try_end_5
    .catch Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerException; {:try_start_0 .. :try_end_5} :catch_12
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_5} :catch_7

    .line 54
    nop

    .line 55
    return-void

    .line 52
    :catch_7
    move-exception v0

    .line 53
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v1, Lcom/github/robotics_in_concert/rocon_rosjava_core/master_info/MasterInfoException;

    invoke-virtual {v0}, Ljava/util/concurrent/TimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/github/robotics_in_concert/rocon_rosjava_core/master_info/MasterInfoException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 50
    .end local v0    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_12
    move-exception v0

    .line 51
    .local v0, "e":Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerException;
    new-instance v1, Lcom/github/robotics_in_concert/rocon_rosjava_core/master_info/MasterInfoException;

    invoke-virtual {v0}, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/github/robotics_in_concert/rocon_rosjava_core/master_info/MasterInfoException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
