.class public Lcom/github/rosjava/android_remocons/common_tools/apps/MasterNameResolver;
.super Lorg/ros/node/AbstractNodeMain;
.source "MasterNameResolver.java"


# instance fields
.field private connectedNode:Lorg/ros/node/ConnectedNode;

.field private currentMaster:Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;

.field private masterName:Lorg/ros/namespace/GraphName;

.field private masterNameResolver:Lorg/ros/namespace/NameResolver;

.field private resolved:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 23
    invoke-direct {p0}, Lorg/ros/node/AbstractNodeMain;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/MasterNameResolver;->resolved:Z

    .line 24
    return-void
.end method


# virtual methods
.method public getDefaultNodeName()Lorg/ros/namespace/GraphName;
    .registers 2

    .line 32
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMasterName()Ljava/lang/String;
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/MasterNameResolver;->masterName:Lorg/ros/namespace/GraphName;

    invoke-virtual {v0}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMasterNameSpace()Lorg/ros/namespace/NameResolver;
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/MasterNameResolver;->masterNameResolver:Lorg/ros/namespace/NameResolver;

    return-object v0
.end method

.method public onStart(Lorg/ros/node/ConnectedNode;)V
    .registers 10
    .param p1, "connectedNode"    # Lorg/ros/node/ConnectedNode;

    .line 95
    iput-object p1, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/MasterNameResolver;->connectedNode:Lorg/ros/node/ConnectedNode;

    .line 96
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/MasterNameResolver;->currentMaster:Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;

    if-eqz v0, :cond_13

    .line 97
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/MasterNameResolver;->currentMaster:Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;

    invoke-virtual {v0}, Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;->getAppsNameSpace()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    iput-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/MasterNameResolver;->masterName:Lorg/ros/namespace/GraphName;

    goto :goto_79

    .line 100
    :cond_13
    new-instance v0, Lorg/ros/master/client/MasterStateClient;

    iget-object v1, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/MasterNameResolver;->connectedNode:Lorg/ros/node/ConnectedNode;

    iget-object v2, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/MasterNameResolver;->connectedNode:Lorg/ros/node/ConnectedNode;

    invoke-interface {v2}, Lorg/ros/node/ConnectedNode;->getMasterUri()Ljava/net/URI;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/ros/master/client/MasterStateClient;-><init>(Lorg/ros/node/Node;Ljava/net/URI;)V

    .line 101
    .local v0, "masterClient":Lorg/ros/master/client/MasterStateClient;
    invoke-virtual {v0}, Lorg/ros/master/client/MasterStateClient;->getSystemState()Lorg/ros/master/client/SystemState;

    move-result-object v1

    .line 102
    .local v1, "systemState":Lorg/ros/master/client/SystemState;
    invoke-virtual {v1}, Lorg/ros/master/client/SystemState;->getTopics()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_79

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/ros/master/client/TopicSystemState;

    .line 103
    .local v3, "topic":Lorg/ros/master/client/TopicSystemState;
    invoke-virtual {v3}, Lorg/ros/master/client/TopicSystemState;->getTopicName()Ljava/lang/String;

    move-result-object v4

    .line 104
    .local v4, "topicName":Ljava/lang/String;
    invoke-static {v4}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v5

    .line 105
    .local v5, "graph_name":Lorg/ros/namespace/GraphName;
    invoke-virtual {v5}, Lorg/ros/namespace/GraphName;->getBasename()Lorg/ros/namespace/GraphName;

    move-result-object v6

    invoke-virtual {v6}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "app_list"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_78

    .line 106
    invoke-virtual {v5}, Lorg/ros/namespace/GraphName;->getParent()Lorg/ros/namespace/GraphName;

    move-result-object v2

    invoke-virtual {v2}, Lorg/ros/namespace/GraphName;->toRelative()Lorg/ros/namespace/GraphName;

    move-result-object v2

    iput-object v2, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/MasterNameResolver;->masterName:Lorg/ros/namespace/GraphName;

    .line 107
    const-string v2, "ApplicationManagement"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Configuring master namespace resolver ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/MasterNameResolver;->masterName:Lorg/ros/namespace/GraphName;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    goto :goto_79

    .line 110
    .end local v3    # "topic":Lorg/ros/master/client/TopicSystemState;
    .end local v4    # "topicName":Ljava/lang/String;
    .end local v5    # "graph_name":Lorg/ros/namespace/GraphName;
    :cond_78
    goto :goto_2c

    .line 112
    .end local v0    # "masterClient":Lorg/ros/master/client/MasterStateClient;
    .end local v1    # "systemState":Lorg/ros/master/client/SystemState;
    :cond_79
    :goto_79
    invoke-interface {p1}, Lorg/ros/node/ConnectedNode;->getResolver()Lorg/ros/namespace/NodeNameResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/MasterNameResolver;->masterName:Lorg/ros/namespace/GraphName;

    invoke-virtual {v0, v1}, Lorg/ros/namespace/NodeNameResolver;->newChild(Lorg/ros/namespace/GraphName;)Lorg/ros/namespace/NameResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/MasterNameResolver;->masterNameResolver:Lorg/ros/namespace/NameResolver;

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/MasterNameResolver;->resolved:Z

    .line 114
    return-void
.end method

.method public resetMasterName(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/MasterNameResolver;->connectedNode:Lorg/ros/node/ConnectedNode;

    invoke-interface {v0}, Lorg/ros/node/ConnectedNode;->getResolver()Lorg/ros/namespace/NodeNameResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/ros/namespace/NodeNameResolver;->newChild(Ljava/lang/String;)Lorg/ros/namespace/NameResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/MasterNameResolver;->masterNameResolver:Lorg/ros/namespace/NameResolver;

    .line 51
    return-void
.end method

.method public setMaster(Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;)V
    .registers 2
    .param p1, "currentMaster"    # Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;

    .line 27
    iput-object p1, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/MasterNameResolver;->currentMaster:Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;

    .line 28
    return-void
.end method

.method public setMasterName(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 36
    invoke-static {p1}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    iput-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/MasterNameResolver;->masterName:Lorg/ros/namespace/GraphName;

    .line 37
    return-void
.end method

.method public waitForResolver()V
    .registers 4

    .line 75
    :goto_0
    iget-boolean v0, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/MasterNameResolver;->resolved:Z

    if-nez v0, :cond_13

    .line 77
    const-wide/16 v0, 0x64

    :try_start_6
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9} :catch_a

    .line 80
    :goto_9
    goto :goto_0

    .line 78
    :catch_a
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MasterRemocon"

    const-string v2, "Master name waitForResolver caught an arbitrary exception"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_9

    .line 82
    :cond_13
    return-void
.end method
