.class public Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;
.super Ljava/lang/Object;
.source "MasterRegistrationManagerImpl.java"


# static fields
.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field private final listener:Lorg/ros/internal/node/server/master/MasterRegistrationListener;

.field private final nodes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/ros/namespace/GraphName;",
            "Lorg/ros/internal/node/server/master/NodeRegistrationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final services:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/ros/namespace/GraphName;",
            "Lorg/ros/internal/node/server/master/ServiceRegistrationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final topics:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/ros/namespace/GraphName;",
            "Lorg/ros/internal/node/server/master/TopicRegistrationInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 43
    const-class v0, Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(Lorg/ros/internal/node/server/master/MasterRegistrationListener;)V
    .registers 3
    .param p1, "listener"    # Lorg/ros/internal/node/server/master/MasterRegistrationListener;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;->listener:Lorg/ros/internal/node/server/master/MasterRegistrationListener;

    .line 69
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;->nodes:Ljava/util/Map;

    .line 70
    invoke-static {}, Lcom/google/common/collect/Maps;->newConcurrentMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;->services:Ljava/util/Map;

    .line 71
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;->topics:Ljava/util/Map;

    .line 72
    return-void
.end method

.method private cleanupNode(Lorg/ros/internal/node/server/master/NodeRegistrationInfo;)V
    .registers 6
    .param p1, "node"    # Lorg/ros/internal/node/server/master/NodeRegistrationInfo;

    .line 453
    invoke-virtual {p1}, Lorg/ros/internal/node/server/master/NodeRegistrationInfo;->getPublishers()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ros/internal/node/server/master/TopicRegistrationInfo;

    .line 454
    .local v1, "topic":Lorg/ros/internal/node/server/master/TopicRegistrationInfo;
    invoke-virtual {v1, p1}, Lorg/ros/internal/node/server/master/TopicRegistrationInfo;->removePublisher(Lorg/ros/internal/node/server/master/NodeRegistrationInfo;)Z

    .line 455
    .end local v1    # "topic":Lorg/ros/internal/node/server/master/TopicRegistrationInfo;
    goto :goto_8

    .line 457
    :cond_18
    invoke-virtual {p1}, Lorg/ros/internal/node/server/master/NodeRegistrationInfo;->getSubscribers()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ros/internal/node/server/master/TopicRegistrationInfo;

    .line 458
    .restart local v1    # "topic":Lorg/ros/internal/node/server/master/TopicRegistrationInfo;
    invoke-virtual {v1, p1}, Lorg/ros/internal/node/server/master/TopicRegistrationInfo;->removeSubscriber(Lorg/ros/internal/node/server/master/NodeRegistrationInfo;)Z

    .line 459
    .end local v1    # "topic":Lorg/ros/internal/node/server/master/TopicRegistrationInfo;
    goto :goto_20

    .line 461
    :cond_30
    invoke-virtual {p1}, Lorg/ros/internal/node/server/master/NodeRegistrationInfo;->getServices()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_38
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ros/internal/node/server/master/ServiceRegistrationInfo;

    .line 462
    .local v1, "service":Lorg/ros/internal/node/server/master/ServiceRegistrationInfo;
    iget-object v2, p0, Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;->services:Ljava/util/Map;

    invoke-virtual {v1}, Lorg/ros/internal/node/server/master/ServiceRegistrationInfo;->getServiceName()Lorg/ros/namespace/GraphName;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    .end local v1    # "service":Lorg/ros/internal/node/server/master/ServiceRegistrationInfo;
    goto :goto_38

    .line 464
    :cond_4e
    return-void
.end method

.method private obtainNodeRegistrationInfo(Lorg/ros/namespace/GraphName;Ljava/net/URI;)Lorg/ros/internal/node/server/master/NodeRegistrationInfo;
    .registers 7
    .param p1, "nodeName"    # Lorg/ros/namespace/GraphName;
    .param p2, "nodeSlaveUri"    # Ljava/net/URI;

    .line 419
    iget-object v0, p0, Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;->nodes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ros/internal/node/server/master/NodeRegistrationInfo;

    .line 420
    .local v0, "node":Lorg/ros/internal/node/server/master/NodeRegistrationInfo;
    if-eqz v0, :cond_29

    .line 422
    invoke-virtual {v0}, Lorg/ros/internal/node/server/master/NodeRegistrationInfo;->getNodeSlaveUri()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 424
    return-object v0

    .line 428
    :cond_15
    invoke-direct {p0, v0}, Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;->potentiallyDeleteNode(Lorg/ros/internal/node/server/master/NodeRegistrationInfo;)V

    .line 429
    invoke-direct {p0, v0}, Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;->cleanupNode(Lorg/ros/internal/node/server/master/NodeRegistrationInfo;)V

    .line 431
    :try_start_1b
    iget-object v1, p0, Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;->listener:Lorg/ros/internal/node/server/master/MasterRegistrationListener;

    invoke-interface {v1, v0}, Lorg/ros/internal/node/server/master/MasterRegistrationListener;->onNodeReplacement(Lorg/ros/internal/node/server/master/NodeRegistrationInfo;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_20} :catch_21

    .line 435
    goto :goto_29

    .line 432
    :catch_21
    move-exception v1

    .line 434
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v3, "Error during onNodeReplacement call"

    invoke-interface {v2, v3, v1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 439
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_29
    :goto_29
    new-instance v1, Lorg/ros/internal/node/server/master/NodeRegistrationInfo;

    invoke-direct {v1, p1, p2}, Lorg/ros/internal/node/server/master/NodeRegistrationInfo;-><init>(Lorg/ros/namespace/GraphName;Ljava/net/URI;)V

    move-object v0, v1

    .line 440
    iget-object v1, p0, Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;->nodes:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    return-object v0
.end method

.method private obtainTopicRegistrationInfo(Lorg/ros/namespace/GraphName;Z)Lorg/ros/internal/node/server/master/TopicRegistrationInfo;
    .registers 5
    .param p1, "topicName"    # Lorg/ros/namespace/GraphName;
    .param p2, "shouldCreate"    # Z

    .line 398
    iget-object v0, p0, Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;->topics:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ros/internal/node/server/master/TopicRegistrationInfo;

    .line 399
    .local v0, "info":Lorg/ros/internal/node/server/master/TopicRegistrationInfo;
    if-nez v0, :cond_17

    if-eqz p2, :cond_17

    .line 400
    new-instance v1, Lorg/ros/internal/node/server/master/TopicRegistrationInfo;

    invoke-direct {v1, p1}, Lorg/ros/internal/node/server/master/TopicRegistrationInfo;-><init>(Lorg/ros/namespace/GraphName;)V

    move-object v0, v1

    .line 401
    iget-object v1, p0, Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;->topics:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    :cond_17
    return-object v0
.end method

.method private potentiallyDeleteNode(Lorg/ros/internal/node/server/master/NodeRegistrationInfo;)V
    .registers 4
    .param p1, "node"    # Lorg/ros/internal/node/server/master/NodeRegistrationInfo;

    .line 473
    invoke-virtual {p1}, Lorg/ros/internal/node/server/master/NodeRegistrationInfo;->hasRegistrations()Z

    move-result v0

    if-nez v0, :cond_f

    .line 474
    iget-object v0, p0, Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;->nodes:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/ros/internal/node/server/master/NodeRegistrationInfo;->getNodeName()Lorg/ros/namespace/GraphName;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    :cond_f
    return-void
.end method


# virtual methods
.method public getAllServices()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/ros/internal/node/server/master/ServiceRegistrationInfo;",
            ">;"
        }
    .end annotation

    .line 369
    iget-object v0, p0, Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;->services:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getAllTopics()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/ros/internal/node/server/master/TopicRegistrationInfo;",
            ">;"
        }
    .end annotation

    .line 334
    iget-object v0, p0, Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;->topics:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getNodeRegistrationInfo(Lorg/ros/namespace/GraphName;)Lorg/ros/internal/node/server/master/NodeRegistrationInfo;
    .registers 3
    .param p1, "nodeName"    # Lorg/ros/namespace/GraphName;

    .line 360
    iget-object v0, p0, Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;->nodes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ros/internal/node/server/master/NodeRegistrationInfo;

    return-object v0
.end method

.method public getServiceRegistrationInfo(Lorg/ros/namespace/GraphName;)Lorg/ros/internal/node/server/master/ServiceRegistrationInfo;
    .registers 3
    .param p1, "serviceName"    # Lorg/ros/namespace/GraphName;

    .line 382
    iget-object v0, p0, Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;->services:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ros/internal/node/server/master/ServiceRegistrationInfo;

    return-object v0
.end method

.method public getTopicRegistrationInfo(Lorg/ros/namespace/GraphName;)Lorg/ros/internal/node/server/master/TopicRegistrationInfo;
    .registers 3
    .param p1, "topicName"    # Lorg/ros/namespace/GraphName;

    .line 347
    iget-object v0, p0, Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;->topics:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ros/internal/node/server/master/TopicRegistrationInfo;

    return-object v0
.end method

.method public registerPublisher(Lorg/ros/namespace/GraphName;Ljava/net/URI;Lorg/ros/namespace/GraphName;Ljava/lang/String;)Lorg/ros/internal/node/server/master/TopicRegistrationInfo;
    .registers 10
    .param p1, "nodeName"    # Lorg/ros/namespace/GraphName;
    .param p2, "nodeSlaveUri"    # Ljava/net/URI;
    .param p3, "topicName"    # Lorg/ros/namespace/GraphName;
    .param p4, "topicMessageType"    # Ljava/lang/String;

    .line 90
    sget-object v0, Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_22

    .line 91
    sget-object v0, Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "Registering publisher topic %s with message type %s on node %s with slave URI %s"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    aput-object p4, v3, v1

    const/4 v4, 0x2

    aput-object p1, v3, v4

    const/4 v4, 0x3

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 96
    :cond_22
    invoke-direct {p0, p3, v1}, Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;->obtainTopicRegistrationInfo(Lorg/ros/namespace/GraphName;Z)Lorg/ros/internal/node/server/master/TopicRegistrationInfo;

    move-result-object v0

    .line 97
    .local v0, "topic":Lorg/ros/internal/node/server/master/TopicRegistrationInfo;
    invoke-direct {p0, p1, p2}, Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;->obtainNodeRegistrationInfo(Lorg/ros/namespace/GraphName;Ljava/net/URI;)Lorg/ros/internal/node/server/master/NodeRegistrationInfo;

    move-result-object v1

    .line 98
    .local v1, "node":Lorg/ros/internal/node/server/master/NodeRegistrationInfo;
    invoke-virtual {v0, v1, p4}, Lorg/ros/internal/node/server/master/TopicRegistrationInfo;->addPublisher(Lorg/ros/internal/node/server/master/NodeRegistrationInfo;Ljava/lang/String;)V

    .line 99
    invoke-virtual {v1, v0}, Lorg/ros/internal/node/server/master/NodeRegistrationInfo;->addPublisher(Lorg/ros/internal/node/server/master/TopicRegistrationInfo;)V

    .line 101
    return-object v0
.end method

.method public registerService(Lorg/ros/namespace/GraphName;Ljava/net/URI;Lorg/ros/namespace/GraphName;Ljava/net/URI;)Lorg/ros/internal/node/server/master/ServiceRegistrationInfo;
    .registers 15
    .param p1, "nodeName"    # Lorg/ros/namespace/GraphName;
    .param p2, "nodeSlaveUri"    # Ljava/net/URI;
    .param p3, "serviceName"    # Lorg/ros/namespace/GraphName;
    .param p4, "serviceUri"    # Ljava/net/URI;

    .line 240
    sget-object v0, Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x4

    if-eqz v0, :cond_22

    .line 241
    sget-object v0, Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v6, "Registering service %s with server URI %s on node %s with slave URI %s"

    new-array v7, v5, [Ljava/lang/Object;

    aput-object p3, v7, v4

    aput-object p4, v7, v3

    aput-object p1, v7, v2

    aput-object p2, v7, v1

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 246
    :cond_22
    invoke-direct {p0, p1, p2}, Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;->obtainNodeRegistrationInfo(Lorg/ros/namespace/GraphName;Ljava/net/URI;)Lorg/ros/internal/node/server/master/NodeRegistrationInfo;

    move-result-object v0

    .line 248
    .local v0, "node":Lorg/ros/internal/node/server/master/NodeRegistrationInfo;
    iget-object v6, p0, Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;->services:Ljava/util/Map;

    invoke-interface {v6, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/ros/internal/node/server/master/ServiceRegistrationInfo;

    .line 249
    .local v6, "service":Lorg/ros/internal/node/server/master/ServiceRegistrationInfo;
    if-eqz v6, :cond_5a

    .line 250
    invoke-virtual {v6}, Lorg/ros/internal/node/server/master/ServiceRegistrationInfo;->getNode()Lorg/ros/internal/node/server/master/NodeRegistrationInfo;

    move-result-object v7

    .line 251
    .local v7, "previousServiceNode":Lorg/ros/internal/node/server/master/NodeRegistrationInfo;
    if-ne v7, v0, :cond_54

    .line 253
    sget-object v8, Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v8}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v8

    if-eqz v8, :cond_53

    .line 254
    sget-object v8, Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v9, "Registering already known service %s with server URI %s on node %s with slave URI %s"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p3, v5, v4

    aput-object p4, v5, v3

    aput-object p1, v5, v2

    aput-object p2, v5, v1

    .line 255
    invoke-static {v9, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 254
    invoke-interface {v8, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 259
    :cond_53
    return-object v6

    .line 262
    :cond_54
    invoke-virtual {v7, v6}, Lorg/ros/internal/node/server/master/NodeRegistrationInfo;->removeService(Lorg/ros/internal/node/server/master/ServiceRegistrationInfo;)Z

    .line 263
    invoke-direct {p0, v7}, Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;->potentiallyDeleteNode(Lorg/ros/internal/node/server/master/NodeRegistrationInfo;)V

    .line 268
    .end local v7    # "previousServiceNode":Lorg/ros/internal/node/server/master/NodeRegistrationInfo;
    :cond_5a
    new-instance v1, Lorg/ros/internal/node/server/master/ServiceRegistrationInfo;

    invoke-direct {v1, p3, p4, v0}, Lorg/ros/internal/node/server/master/ServiceRegistrationInfo;-><init>(Lorg/ros/namespace/GraphName;Ljava/net/URI;Lorg/ros/internal/node/server/master/NodeRegistrationInfo;)V

    .line 269
    .end local v6    # "service":Lorg/ros/internal/node/server/master/ServiceRegistrationInfo;
    .local v1, "service":Lorg/ros/internal/node/server/master/ServiceRegistrationInfo;
    invoke-virtual {v0, v1}, Lorg/ros/internal/node/server/master/NodeRegistrationInfo;->addService(Lorg/ros/internal/node/server/master/ServiceRegistrationInfo;)V

    .line 271
    iget-object v2, p0, Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;->services:Ljava/util/Map;

    invoke-interface {v2, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    return-object v1
.end method

.method public registerSubscriber(Lorg/ros/namespace/GraphName;Ljava/net/URI;Lorg/ros/namespace/GraphName;Ljava/lang/String;)Lorg/ros/internal/node/server/master/TopicRegistrationInfo;
    .registers 10
    .param p1, "nodeName"    # Lorg/ros/namespace/GraphName;
    .param p2, "nodeSlaveUri"    # Ljava/net/URI;
    .param p3, "topicName"    # Lorg/ros/namespace/GraphName;
    .param p4, "topicMessageType"    # Ljava/lang/String;

    .line 167
    sget-object v0, Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_22

    .line 168
    sget-object v0, Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "Registering subscriber topic %s with message type %s on node %s with slave URI %s"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    aput-object p4, v3, v1

    const/4 v4, 0x2

    aput-object p1, v3, v4

    const/4 v4, 0x3

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 173
    :cond_22
    invoke-direct {p0, p3, v1}, Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;->obtainTopicRegistrationInfo(Lorg/ros/namespace/GraphName;Z)Lorg/ros/internal/node/server/master/TopicRegistrationInfo;

    move-result-object v0

    .line 174
    .local v0, "topic":Lorg/ros/internal/node/server/master/TopicRegistrationInfo;
    invoke-direct {p0, p1, p2}, Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;->obtainNodeRegistrationInfo(Lorg/ros/namespace/GraphName;Ljava/net/URI;)Lorg/ros/internal/node/server/master/NodeRegistrationInfo;

    move-result-object v1

    .line 175
    .local v1, "node":Lorg/ros/internal/node/server/master/NodeRegistrationInfo;
    invoke-virtual {v0, v1, p4}, Lorg/ros/internal/node/server/master/TopicRegistrationInfo;->addSubscriber(Lorg/ros/internal/node/server/master/NodeRegistrationInfo;Ljava/lang/String;)V

    .line 176
    invoke-virtual {v1, v0}, Lorg/ros/internal/node/server/master/NodeRegistrationInfo;->addSubscriber(Lorg/ros/internal/node/server/master/TopicRegistrationInfo;)V

    .line 178
    return-object v0
.end method

.method public unregisterPublisher(Lorg/ros/namespace/GraphName;Lorg/ros/namespace/GraphName;)Z
    .registers 10
    .param p1, "nodeName"    # Lorg/ros/namespace/GraphName;
    .param p2, "topicName"    # Lorg/ros/namespace/GraphName;

    .line 116
    sget-object v0, Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1c

    .line 117
    sget-object v0, Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v4, "Unregistering publisher of topic %s from node %s"

    new-array v5, v1, [Ljava/lang/Object;

    aput-object p2, v5, v3

    aput-object p1, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 121
    :cond_1c
    invoke-direct {p0, p2, v3}, Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;->obtainTopicRegistrationInfo(Lorg/ros/namespace/GraphName;Z)Lorg/ros/internal/node/server/master/TopicRegistrationInfo;

    move-result-object v0

    .line 122
    .local v0, "topic":Lorg/ros/internal/node/server/master/TopicRegistrationInfo;
    if-eqz v0, :cond_50

    .line 123
    iget-object v4, p0, Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;->nodes:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/ros/internal/node/server/master/NodeRegistrationInfo;

    .line 124
    .local v4, "node":Lorg/ros/internal/node/server/master/NodeRegistrationInfo;
    if-eqz v4, :cond_36

    .line 125
    invoke-virtual {v4, v0}, Lorg/ros/internal/node/server/master/NodeRegistrationInfo;->removePublisher(Lorg/ros/internal/node/server/master/TopicRegistrationInfo;)Z

    .line 126
    invoke-virtual {v0, v4}, Lorg/ros/internal/node/server/master/TopicRegistrationInfo;->removePublisher(Lorg/ros/internal/node/server/master/NodeRegistrationInfo;)Z

    .line 128
    invoke-direct {p0, v4}, Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;->potentiallyDeleteNode(Lorg/ros/internal/node/server/master/NodeRegistrationInfo;)V

    .line 130
    return v2

    .line 133
    :cond_36
    sget-object v5, Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v5}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 134
    sget-object v5, Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v6, "Received unregister publisher for topic %s on unknown node %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v3

    aput-object p1, v1, v2

    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 138
    :cond_4f
    return v3

    .line 142
    .end local v4    # "node":Lorg/ros/internal/node/server/master/NodeRegistrationInfo;
    :cond_50
    sget-object v4, Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v4

    if-eqz v4, :cond_69

    .line 143
    sget-object v4, Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v5, "Received unregister publisher for unknown topic %s on node %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v3

    aput-object p1, v1, v2

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 147
    :cond_69
    return v3
.end method

.method public unregisterService(Lorg/ros/namespace/GraphName;Lorg/ros/namespace/GraphName;Ljava/net/URI;)Z
    .registers 11
    .param p1, "nodeName"    # Lorg/ros/namespace/GraphName;
    .param p2, "serviceName"    # Lorg/ros/namespace/GraphName;
    .param p3, "serviceUri"    # Ljava/net/URI;

    .line 290
    sget-object v0, Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1c

    .line 291
    sget-object v0, Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v4, "Unregistering service %s from node %s"

    new-array v5, v1, [Ljava/lang/Object;

    aput-object p2, v5, v3

    aput-object p1, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 294
    :cond_1c
    iget-object v0, p0, Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;->services:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ros/internal/node/server/master/ServiceRegistrationInfo;

    .line 295
    .local v0, "service":Lorg/ros/internal/node/server/master/ServiceRegistrationInfo;
    if-eqz v0, :cond_56

    .line 296
    iget-object v4, p0, Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;->nodes:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/ros/internal/node/server/master/NodeRegistrationInfo;

    .line 297
    .local v4, "node":Lorg/ros/internal/node/server/master/NodeRegistrationInfo;
    if-eqz v4, :cond_3c

    .line 299
    iget-object v1, p0, Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;->services:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    invoke-virtual {v4, v0}, Lorg/ros/internal/node/server/master/NodeRegistrationInfo;->removeService(Lorg/ros/internal/node/server/master/ServiceRegistrationInfo;)Z

    .line 302
    invoke-direct {p0, v4}, Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;->potentiallyDeleteNode(Lorg/ros/internal/node/server/master/NodeRegistrationInfo;)V

    .line 304
    return v2

    .line 307
    :cond_3c
    sget-object v5, Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v5}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v5

    if-eqz v5, :cond_55

    .line 308
    sget-object v5, Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v6, "Received unregister for service %s on unknown node %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v3

    aput-object p1, v1, v2

    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 315
    :cond_55
    return v3

    .line 319
    .end local v4    # "node":Lorg/ros/internal/node/server/master/NodeRegistrationInfo;
    :cond_56
    sget-object v4, Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v4

    if-eqz v4, :cond_6f

    .line 320
    sget-object v4, Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v5, "Received unregister for unknown service %s on node %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v3

    aput-object p1, v1, v2

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 324
    :cond_6f
    return v3
.end method

.method public unregisterSubscriber(Lorg/ros/namespace/GraphName;Lorg/ros/namespace/GraphName;)Z
    .registers 10
    .param p1, "nodeName"    # Lorg/ros/namespace/GraphName;
    .param p2, "topicName"    # Lorg/ros/namespace/GraphName;

    .line 193
    sget-object v0, Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1c

    .line 194
    sget-object v0, Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v4, "Unregistering subscriber of topic %s from node %s"

    new-array v5, v1, [Ljava/lang/Object;

    aput-object p2, v5, v3

    aput-object p1, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 198
    :cond_1c
    invoke-direct {p0, p2, v3}, Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;->obtainTopicRegistrationInfo(Lorg/ros/namespace/GraphName;Z)Lorg/ros/internal/node/server/master/TopicRegistrationInfo;

    move-result-object v0

    .line 199
    .local v0, "topic":Lorg/ros/internal/node/server/master/TopicRegistrationInfo;
    if-eqz v0, :cond_50

    .line 200
    iget-object v4, p0, Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;->nodes:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/ros/internal/node/server/master/NodeRegistrationInfo;

    .line 201
    .local v4, "node":Lorg/ros/internal/node/server/master/NodeRegistrationInfo;
    if-eqz v4, :cond_36

    .line 202
    invoke-virtual {v4, v0}, Lorg/ros/internal/node/server/master/NodeRegistrationInfo;->removeSubscriber(Lorg/ros/internal/node/server/master/TopicRegistrationInfo;)Z

    .line 203
    invoke-virtual {v0, v4}, Lorg/ros/internal/node/server/master/TopicRegistrationInfo;->removeSubscriber(Lorg/ros/internal/node/server/master/NodeRegistrationInfo;)Z

    .line 204
    invoke-direct {p0, v4}, Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;->potentiallyDeleteNode(Lorg/ros/internal/node/server/master/NodeRegistrationInfo;)V

    .line 205
    return v2

    .line 208
    :cond_36
    sget-object v5, Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v5}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 209
    sget-object v5, Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v6, "Received unregister subscriber for topic %s on unknown node %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v3

    aput-object p1, v1, v2

    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 212
    :cond_4f
    return v3

    .line 216
    .end local v4    # "node":Lorg/ros/internal/node/server/master/NodeRegistrationInfo;
    :cond_50
    sget-object v4, Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v4

    if-eqz v4, :cond_69

    .line 217
    sget-object v4, Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v5, "Received unregister subscriber for unknown topic %s on node %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v3

    aput-object p1, v1, v2

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 220
    :cond_69
    return v3
.end method
