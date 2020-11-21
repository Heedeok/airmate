.class public Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/RoconInteractions;
.super Lorg/ros/node/AbstractNodeMain;
.source "RoconInteractions.java"


# instance fields
.field private getRolesClient:Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/BlockingServiceClientNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/BlockingServiceClientNode<",
            "Lrocon_interaction_msgs/GetRolesRequest;",
            "Lrocon_interaction_msgs/GetRolesResponse;",
            ">;"
        }
    .end annotation
.end field

.field private namespace:Lorg/ros/namespace/GraphName;

.field private roconURI:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "roconURI"    # Ljava/lang/String;

    .line 44
    invoke-direct {p0}, Lorg/ros/node/AbstractNodeMain;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/RoconInteractions;->getRolesClient:Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/BlockingServiceClientNode;

    .line 46
    iput-object p1, p0, Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/RoconInteractions;->roconURI:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 13
    .param p0, "argv"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.github.rocon_rosjava_core.rocon_interactions.RoconInteractions"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 140
    .local v0, "args":[Ljava/lang/String;
    new-instance v1, Lorg/ros/internal/loader/CommandLineLoader;

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/ros/internal/loader/CommandLineLoader;-><init>(Ljava/util/List;)V

    .line 141
    .local v1, "loader":Lorg/ros/internal/loader/CommandLineLoader;
    invoke-virtual {v1}, Lorg/ros/internal/loader/CommandLineLoader;->build()Lorg/ros/node/NodeConfiguration;

    move-result-object v2

    .line 143
    .local v2, "nodeConfiguration":Lorg/ros/node/NodeConfiguration;
    const-string v3, "rocon:/*/*/hydro|indigo/ice_cream_sandwich|jellybean|chrome"

    .line 147
    .local v3, "roconURI":Ljava/lang/String;
    new-instance v4, Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/RoconInteractions;

    invoke-direct {v4, v3}, Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/RoconInteractions;-><init>(Ljava/lang/String;)V

    .line 149
    .local v4, "interactions":Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/RoconInteractions;
    invoke-static {}, Lorg/ros/node/DefaultNodeMainExecutor;->newDefault()Lorg/ros/node/NodeMainExecutor;

    move-result-object v5

    .line 150
    .local v5, "nodeMainExecutor":Lorg/ros/node/NodeMainExecutor;
    invoke-interface {v5, v4, v2}, Lorg/ros/node/NodeMainExecutor;->execute(Lorg/ros/node/NodeMain;Lorg/ros/node/NodeConfiguration;)V

    .line 152
    :try_start_23
    invoke-virtual {v4}, Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/RoconInteractions;->getRoles()Ljava/util/List;

    move-result-object v6

    .line 153
    .local v6, "roles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_2b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_53

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 154
    .local v8, "role":Ljava/lang/String;
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Interactions : found role \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_52
    .catch Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/InteractionsException; {:try_start_23 .. :try_end_52} :catch_54

    .line 155
    .end local v8    # "role":Ljava/lang/String;
    goto :goto_2b

    .line 158
    .end local v6    # "roles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_53
    goto :goto_74

    .line 156
    :catch_54
    move-exception v6

    .line 157
    .local v6, "e":Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/InteractionsException;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Interactions : error getting roles ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/InteractionsException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 169
    .end local v6    # "e":Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/InteractionsException;
    :goto_74
    return-void
.end method


# virtual methods
.method public getDefaultNodeName()Lorg/ros/namespace/GraphName;
    .registers 2

    .line 110
    const-string v0, "rocon_rosjava_interactions"

    invoke-static {v0}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .registers 2

    .line 129
    iget-object v0, p0, Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/RoconInteractions;->namespace:Lorg/ros/namespace/GraphName;

    invoke-virtual {v0}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRoles()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/InteractionsException;
        }
    .end annotation

    .line 124
    invoke-virtual {p0}, Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/RoconInteractions;->waitForResponse()V

    .line 125
    iget-object v0, p0, Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/RoconInteractions;->getRolesClient:Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/BlockingServiceClientNode;

    invoke-virtual {v0}, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/BlockingServiceClientNode;->getResponse()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrocon_interaction_msgs/GetRolesResponse;

    invoke-interface {v0}, Lrocon_interaction_msgs/GetRolesResponse;->getRoles()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onStart(Lorg/ros/node/ConnectedNode;)V
    .registers 9
    .param p1, "connectedNode"    # Lorg/ros/node/ConnectedNode;

    .line 55
    const-string v0, ""

    .line 56
    .local v0, "topicName":Ljava/lang/String;
    new-instance v1, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/RosTopicInfo;

    invoke-direct {v1, p1}, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/RosTopicInfo;-><init>(Lorg/ros/node/Node;)V

    .line 58
    .local v1, "topicInformation":Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/RosTopicInfo;
    :try_start_7
    const-string v2, "rocon_interaction_msgs/InteractiveClients"

    invoke-virtual {v1, v2}, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/RosTopicInfo;->findTopic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_d
    .catch Lorg/ros/exception/RosRuntimeException; {:try_start_7 .. :try_end_d} :catch_5b

    move-object v0, v2

    .line 62
    nop

    .line 63
    invoke-static {v0}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v2

    invoke-virtual {v2}, Lorg/ros/namespace/GraphName;->getParent()Lorg/ros/namespace/GraphName;

    move-result-object v2

    iput-object v2, p0, Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/RoconInteractions;->namespace:Lorg/ros/namespace/GraphName;

    .line 65
    invoke-interface {p1}, Lorg/ros/node/ConnectedNode;->getServiceRequestMessageFactory()Lorg/ros/message/MessageFactory;

    move-result-object v2

    .line 67
    .local v2, "messageFactory":Lorg/ros/message/MessageFactory;
    :try_start_1d
    const-string v3, "rocon_interaction_msgs/GetRoles"

    invoke-interface {v2, v3}, Lorg/ros/message/MessageFactory;->newFromType(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lrocon_interaction_msgs/GetRolesRequest;

    .line 68
    .local v3, "request":Lrocon_interaction_msgs/GetRolesRequest;
    iget-object v4, p0, Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/RoconInteractions;->roconURI:Ljava/lang/String;

    invoke-interface {v3, v4}, Lrocon_interaction_msgs/GetRolesRequest;->setUri(Ljava/lang/String;)V

    .line 69
    monitor-enter p0
    :try_end_2b
    .catch Lorg/ros/exception/ServiceNotFoundException; {:try_start_1d .. :try_end_2b} :catch_59

    .line 70
    :try_start_2b
    new-instance v4, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/BlockingServiceClientNode;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/RoconInteractions;->namespace:Lorg/ros/namespace/GraphName;

    invoke-virtual {v6}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/get_roles"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "rocon_interaction_msgs/GetRoles"

    invoke-direct {v4, p1, v5, v6, v3}, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/BlockingServiceClientNode;-><init>(Lorg/ros/node/ConnectedNode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v4, p0, Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/RoconInteractions;->getRolesClient:Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/BlockingServiceClientNode;

    .line 76
    iget-object v4, p0, Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/RoconInteractions;->getRolesClient:Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/BlockingServiceClientNode;

    invoke-virtual {v4}, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/BlockingServiceClientNode;->waitForResponse()V

    .line 77
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 78
    monitor-exit p0

    .line 82
    .end local v3    # "request":Lrocon_interaction_msgs/GetRolesRequest;
    nop

    .line 83
    return-void

    .line 78
    .restart local v3    # "request":Lrocon_interaction_msgs/GetRolesRequest;
    :catchall_56
    move-exception v4

    monitor-exit p0
    :try_end_58
    .catchall {:try_start_2b .. :try_end_58} :catchall_56

    :try_start_58
    throw v4
    :try_end_59
    .catch Lorg/ros/exception/ServiceNotFoundException; {:try_start_58 .. :try_end_59} :catch_59

    .line 79
    .end local v3    # "request":Lrocon_interaction_msgs/GetRolesRequest;
    :catch_59
    move-exception v3

    .line 81
    .local v3, "e":Lorg/ros/exception/ServiceNotFoundException;
    return-void

    .line 59
    .end local v2    # "messageFactory":Lorg/ros/message/MessageFactory;
    .end local v3    # "e":Lorg/ros/exception/ServiceNotFoundException;
    :catch_5b
    move-exception v2

    .line 61
    .local v2, "e":Lorg/ros/exception/RosRuntimeException;
    return-void
.end method

.method public waitForResponse()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/InteractionsException;
        }
    .end annotation

    .line 93
    monitor-enter p0

    .line 95
    :try_start_1
    iget-object v0, p0, Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/RoconInteractions;->getRolesClient:Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/BlockingServiceClientNode;

    if-nez v0, :cond_a

    .line 96
    const-wide/16 v0, 0xfa0

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_a} :catch_d
    .catchall {:try_start_1 .. :try_end_a} :catchall_b

    .line 100
    :cond_a
    goto :goto_11

    .line 101
    :catchall_b
    move-exception v0

    goto :goto_13

    .line 98
    :catch_d
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_e
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 101
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_11
    monitor-exit p0

    .line 102
    return-void

    .line 101
    :goto_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_b

    throw v0
.end method
