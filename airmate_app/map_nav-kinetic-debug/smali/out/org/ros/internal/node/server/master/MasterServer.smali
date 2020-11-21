.class public Lorg/ros/internal/node/server/master/MasterServer;
.super Lorg/ros/internal/node/server/XmlRpcServer;
.source "MasterServer.java"

# interfaces
.implements Lorg/ros/internal/node/server/master/MasterRegistrationListener;


# static fields
.field private static final DEBUG:Z = false

.field private static final MASTER_NODE_NAME:Lorg/ros/namespace/GraphName;

.field public static final SYSTEM_STATE_PUBLISHERS:I = 0x0

.field public static final SYSTEM_STATE_SERVICES:I = 0x2

.field public static final SYSTEM_STATE_SUBSCRIBERS:I = 0x1

.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field private final masterRegistrationManager:Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 59
    const-class v0, Lorg/ros/internal/node/server/master/MasterServer;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/ros/internal/node/server/master/MasterServer;->log:Lorg/apache/commons/logging/Log;

    .line 80
    const-string v0, "/master"

    invoke-static {v0}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    sput-object v0, Lorg/ros/internal/node/server/master/MasterServer;->MASTER_NODE_NAME:Lorg/ros/namespace/GraphName;

    return-void
.end method

.method public constructor <init>(Lorg/ros/address/BindAddress;Lorg/ros/address/AdvertiseAddress;)V
    .registers 4
    .param p1, "bindAddress"    # Lorg/ros/address/BindAddress;
    .param p2, "advertiseAddress"    # Lorg/ros/address/AdvertiseAddress;

    .line 88
    invoke-direct {p0, p1, p2}, Lorg/ros/internal/node/server/XmlRpcServer;-><init>(Lorg/ros/address/BindAddress;Lorg/ros/address/AdvertiseAddress;)V

    .line 89
    new-instance v0, Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;

    invoke-direct {v0, p0}, Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;-><init>(Lorg/ros/internal/node/server/master/MasterRegistrationListener;)V

    iput-object v0, p0, Lorg/ros/internal/node/server/master/MasterServer;->masterRegistrationManager:Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;

    .line 90
    return-void
.end method

.method private getSystemStatePublishers(Ljava/util/Collection;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/ros/internal/node/server/master/TopicRegistrationInfo;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 362
    .local p1, "topics":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/ros/internal/node/server/master/TopicRegistrationInfo;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 363
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_54

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ros/internal/node/server/master/TopicRegistrationInfo;

    .line 364
    .local v2, "topic":Lorg/ros/internal/node/server/master/TopicRegistrationInfo;
    invoke-virtual {v2}, Lorg/ros/internal/node/server/master/TopicRegistrationInfo;->hasPublishers()Z

    move-result v3

    if-eqz v3, :cond_53

    .line 365
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 366
    .local v3, "topicInfo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {v2}, Lorg/ros/internal/node/server/master/TopicRegistrationInfo;->getTopicName()Lorg/ros/namespace/GraphName;

    move-result-object v4

    invoke-virtual {v4}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 369
    .local v4, "publist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v2}, Lorg/ros/internal/node/server/master/TopicRegistrationInfo;->getPublishers()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_35
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/ros/internal/node/server/master/NodeRegistrationInfo;

    .line 370
    .local v6, "node":Lorg/ros/internal/node/server/master/NodeRegistrationInfo;
    invoke-virtual {v6}, Lorg/ros/internal/node/server/master/NodeRegistrationInfo;->getNodeName()Lorg/ros/namespace/GraphName;

    move-result-object v7

    invoke-virtual {v7}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    .end local v6    # "node":Lorg/ros/internal/node/server/master/NodeRegistrationInfo;
    goto :goto_35

    .line 372
    :cond_4d
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    .end local v2    # "topic":Lorg/ros/internal/node/server/master/TopicRegistrationInfo;
    .end local v3    # "topicInfo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v4    # "publist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_53
    goto :goto_8

    .line 377
    :cond_54
    return-object v0
.end method

.method private getSystemStateServices()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 417
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 419
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v1, p0, Lorg/ros/internal/node/server/master/MasterServer;->masterRegistrationManager:Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;

    invoke-virtual {v1}, Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;->getAllServices()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ros/internal/node/server/master/ServiceRegistrationInfo;

    .line 420
    .local v2, "service":Lorg/ros/internal/node/server/master/ServiceRegistrationInfo;
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 421
    .local v3, "topicInfo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {v2}, Lorg/ros/internal/node/server/master/ServiceRegistrationInfo;->getServiceName()Lorg/ros/namespace/GraphName;

    move-result-object v4

    invoke-virtual {v4}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v2}, Lorg/ros/internal/node/server/master/ServiceRegistrationInfo;->getServiceName()Lorg/ros/namespace/GraphName;

    move-result-object v6

    invoke-virtual {v6}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 424
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 425
    .end local v2    # "service":Lorg/ros/internal/node/server/master/ServiceRegistrationInfo;
    .end local v3    # "topicInfo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    goto :goto_e

    .line 427
    :cond_42
    return-object v0
.end method

.method private getSystemStateSubscribers(Ljava/util/Collection;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/ros/internal/node/server/master/TopicRegistrationInfo;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 391
    .local p1, "topics":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/ros/internal/node/server/master/TopicRegistrationInfo;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 392
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_54

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ros/internal/node/server/master/TopicRegistrationInfo;

    .line 393
    .local v2, "topic":Lorg/ros/internal/node/server/master/TopicRegistrationInfo;
    invoke-virtual {v2}, Lorg/ros/internal/node/server/master/TopicRegistrationInfo;->hasSubscribers()Z

    move-result v3

    if-eqz v3, :cond_53

    .line 394
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 395
    .local v3, "topicInfo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {v2}, Lorg/ros/internal/node/server/master/TopicRegistrationInfo;->getTopicName()Lorg/ros/namespace/GraphName;

    move-result-object v4

    invoke-virtual {v4}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 398
    .local v4, "sublist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {v2}, Lorg/ros/internal/node/server/master/TopicRegistrationInfo;->getSubscribers()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_35
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/ros/internal/node/server/master/NodeRegistrationInfo;

    .line 399
    .local v6, "node":Lorg/ros/internal/node/server/master/NodeRegistrationInfo;
    invoke-virtual {v6}, Lorg/ros/internal/node/server/master/NodeRegistrationInfo;->getNodeName()Lorg/ros/namespace/GraphName;

    move-result-object v7

    invoke-virtual {v7}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 400
    .end local v6    # "node":Lorg/ros/internal/node/server/master/NodeRegistrationInfo;
    goto :goto_35

    .line 401
    :cond_4d
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 403
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    .end local v2    # "topic":Lorg/ros/internal/node/server/master/TopicRegistrationInfo;
    .end local v3    # "topicInfo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v4    # "sublist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_53
    goto :goto_8

    .line 406
    :cond_54
    return-object v0
.end method

.method private publisherUpdate(Lorg/ros/internal/node/server/master/TopicRegistrationInfo;Ljava/util/List;)V
    .registers 7
    .param p1, "topicInfo"    # Lorg/ros/internal/node/server/master/TopicRegistrationInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/internal/node/server/master/TopicRegistrationInfo;",
            "Ljava/util/List<",
            "Ljava/net/URI;",
            ">;)V"
        }
    .end annotation

    .line 244
    .local p2, "subscriberSlaveUris":Ljava/util/List;, "Ljava/util/List<Ljava/net/URI;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 245
    .local v0, "publisherUris":Ljava/util/List;, "Ljava/util/List<Ljava/net/URI;>;"
    invoke-virtual {p1}, Lorg/ros/internal/node/server/master/TopicRegistrationInfo;->getPublishers()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ros/internal/node/server/master/NodeRegistrationInfo;

    .line 246
    .local v2, "publisherNodeInfo":Lorg/ros/internal/node/server/master/NodeRegistrationInfo;
    invoke-virtual {v2}, Lorg/ros/internal/node/server/master/NodeRegistrationInfo;->getNodeSlaveUri()Ljava/net/URI;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    .end local v2    # "publisherNodeInfo":Lorg/ros/internal/node/server/master/NodeRegistrationInfo;
    goto :goto_c

    .line 249
    :cond_20
    invoke-virtual {p1}, Lorg/ros/internal/node/server/master/TopicRegistrationInfo;->getTopicName()Lorg/ros/namespace/GraphName;

    move-result-object v1

    .line 250
    .local v1, "topicName":Lorg/ros/namespace/GraphName;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/URI;

    .line 251
    .local v3, "subscriberSlaveUri":Ljava/net/URI;
    invoke-virtual {p0, v3, v1, v0}, Lorg/ros/internal/node/server/master/MasterServer;->contactSubscriberForPublisherUpdate(Ljava/net/URI;Lorg/ros/namespace/GraphName;Ljava/util/List;)V

    .line 252
    .end local v3    # "subscriberSlaveUri":Ljava/net/URI;
    goto :goto_28

    .line 253
    :cond_38
    return-void
.end method


# virtual methods
.method protected contactSubscriberForPublisherUpdate(Ljava/net/URI;Lorg/ros/namespace/GraphName;Ljava/util/List;)V
    .registers 6
    .param p1, "subscriberSlaveUri"    # Ljava/net/URI;
    .param p2, "topicName"    # Lorg/ros/namespace/GraphName;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Lorg/ros/namespace/GraphName;",
            "Ljava/util/List<",
            "Ljava/net/URI;",
            ">;)V"
        }
    .end annotation

    .line 268
    .local p3, "publisherUris":Ljava/util/List;, "Ljava/util/List<Ljava/net/URI;>;"
    new-instance v0, Lorg/ros/internal/node/client/SlaveClient;

    sget-object v1, Lorg/ros/internal/node/server/master/MasterServer;->MASTER_NODE_NAME:Lorg/ros/namespace/GraphName;

    invoke-direct {v0, v1, p1}, Lorg/ros/internal/node/client/SlaveClient;-><init>(Lorg/ros/namespace/GraphName;Ljava/net/URI;)V

    .line 269
    .local v0, "client":Lorg/ros/internal/node/client/SlaveClient;
    invoke-virtual {v0, p2, p3}, Lorg/ros/internal/node/client/SlaveClient;->publisherUpdate(Lorg/ros/namespace/GraphName;Ljava/util/Collection;)Lorg/ros/internal/node/response/Response;

    .line 270
    return-void
.end method

.method public getPublishedTopics(Lorg/ros/namespace/GraphName;Lorg/ros/namespace/GraphName;)Ljava/util/List;
    .registers 10
    .param p1, "caller"    # Lorg/ros/namespace/GraphName;
    .param p2, "subgraph"    # Lorg/ros/namespace/GraphName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/namespace/GraphName;",
            "Lorg/ros/namespace/GraphName;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 463
    iget-object v0, p0, Lorg/ros/internal/node/server/master/MasterServer;->masterRegistrationManager:Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;

    monitor-enter v0

    .line 465
    :try_start_3
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 466
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v2, p0, Lorg/ros/internal/node/server/master/MasterServer;->masterRegistrationManager:Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;

    invoke-virtual {v2}, Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;->getAllTopics()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/ros/internal/node/server/master/TopicRegistrationInfo;

    .line 467
    .local v3, "topic":Lorg/ros/internal/node/server/master/TopicRegistrationInfo;
    invoke-virtual {v3}, Lorg/ros/internal/node/server/master/TopicRegistrationInfo;->hasPublishers()Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 468
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3}, Lorg/ros/internal/node/server/master/TopicRegistrationInfo;->getTopicName()Lorg/ros/namespace/GraphName;

    move-result-object v6

    invoke-virtual {v6}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v3}, Lorg/ros/internal/node/server/master/TopicRegistrationInfo;->getMessageType()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 470
    .end local v3    # "topic":Lorg/ros/internal/node/server/master/TopicRegistrationInfo;
    :cond_3f
    goto :goto_11

    .line 471
    :cond_40
    monitor-exit v0

    return-object v1

    .line 472
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :catchall_42
    move-exception v1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_42

    throw v1
.end method

.method public getSystemState()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 340
    iget-object v0, p0, Lorg/ros/internal/node/server/master/MasterServer;->masterRegistrationManager:Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;

    monitor-enter v0

    .line 341
    :try_start_3
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 343
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v2, p0, Lorg/ros/internal/node/server/master/MasterServer;->masterRegistrationManager:Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;

    invoke-virtual {v2}, Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;->getAllTopics()Ljava/util/Collection;

    move-result-object v2

    .line 344
    .local v2, "topics":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/ros/internal/node/server/master/TopicRegistrationInfo;>;"
    invoke-direct {p0, v2}, Lorg/ros/internal/node/server/master/MasterServer;->getSystemStatePublishers(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    invoke-direct {p0, v2}, Lorg/ros/internal/node/server/master/MasterServer;->getSystemStateSubscribers(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 346
    invoke-direct {p0}, Lorg/ros/internal/node/server/master/MasterServer;->getSystemStateServices()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    monitor-exit v0

    return-object v1

    .line 348
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v2    # "topics":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/ros/internal/node/server/master/TopicRegistrationInfo;>;"
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public getTopicTypes(Lorg/ros/namespace/GraphName;)Ljava/util/List;
    .registers 9
    .param p1, "calledId"    # Lorg/ros/namespace/GraphName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/namespace/GraphName;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 322
    iget-object v0, p0, Lorg/ros/internal/node/server/master/MasterServer;->masterRegistrationManager:Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;

    monitor-enter v0

    .line 323
    :try_start_3
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 324
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v2, p0, Lorg/ros/internal/node/server/master/MasterServer;->masterRegistrationManager:Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;

    invoke-virtual {v2}, Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;->getAllTopics()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/ros/internal/node/server/master/TopicRegistrationInfo;

    .line 325
    .local v3, "topic":Lorg/ros/internal/node/server/master/TopicRegistrationInfo;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3}, Lorg/ros/internal/node/server/master/TopicRegistrationInfo;->getTopicName()Lorg/ros/namespace/GraphName;

    move-result-object v6

    invoke-virtual {v6}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v3}, Lorg/ros/internal/node/server/master/TopicRegistrationInfo;->getMessageType()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    .end local v3    # "topic":Lorg/ros/internal/node/server/master/TopicRegistrationInfo;
    goto :goto_11

    .line 327
    :cond_3a
    monitor-exit v0

    return-object v1

    .line 328
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    :catchall_3c
    move-exception v1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_3c

    throw v1
.end method

.method public lookupNode(Lorg/ros/namespace/GraphName;)Ljava/net/URI;
    .registers 5
    .param p1, "nodeName"    # Lorg/ros/namespace/GraphName;

    .line 303
    iget-object v0, p0, Lorg/ros/internal/node/server/master/MasterServer;->masterRegistrationManager:Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;

    monitor-enter v0

    .line 304
    :try_start_3
    iget-object v1, p0, Lorg/ros/internal/node/server/master/MasterServer;->masterRegistrationManager:Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;

    invoke-virtual {v1, p1}, Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;->getNodeRegistrationInfo(Lorg/ros/namespace/GraphName;)Lorg/ros/internal/node/server/master/NodeRegistrationInfo;

    move-result-object v1

    .line 305
    .local v1, "node":Lorg/ros/internal/node/server/master/NodeRegistrationInfo;
    if-eqz v1, :cond_11

    .line 306
    invoke-virtual {v1}, Lorg/ros/internal/node/server/master/NodeRegistrationInfo;->getNodeSlaveUri()Ljava/net/URI;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 308
    :cond_11
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 310
    .end local v1    # "node":Lorg/ros/internal/node/server/master/NodeRegistrationInfo;
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public lookupService(Lorg/ros/namespace/GraphName;)Ljava/net/URI;
    .registers 5
    .param p1, "serviceName"    # Lorg/ros/namespace/GraphName;

    .line 439
    iget-object v0, p0, Lorg/ros/internal/node/server/master/MasterServer;->masterRegistrationManager:Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;

    monitor-enter v0

    .line 440
    :try_start_3
    iget-object v1, p0, Lorg/ros/internal/node/server/master/MasterServer;->masterRegistrationManager:Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;

    .line 441
    invoke-virtual {v1, p1}, Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;->getServiceRegistrationInfo(Lorg/ros/namespace/GraphName;)Lorg/ros/internal/node/server/master/ServiceRegistrationInfo;

    move-result-object v1

    .line 442
    .local v1, "service":Lorg/ros/internal/node/server/master/ServiceRegistrationInfo;
    if-eqz v1, :cond_11

    .line 443
    invoke-virtual {v1}, Lorg/ros/internal/node/server/master/ServiceRegistrationInfo;->getServiceUri()Ljava/net/URI;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 445
    :cond_11
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 447
    .end local v1    # "service":Lorg/ros/internal/node/server/master/ServiceRegistrationInfo;
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public onNodeReplacement(Lorg/ros/internal/node/server/master/NodeRegistrationInfo;)V
    .registers 7
    .param p1, "nodeInfo"    # Lorg/ros/internal/node/server/master/NodeRegistrationInfo;

    .line 479
    sget-object v0, Lorg/ros/internal/node/server/master/MasterServer;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 480
    sget-object v0, Lorg/ros/internal/node/server/master/MasterServer;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "Existing node %s with slave URI %s will be shutdown."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 481
    invoke-virtual {p1}, Lorg/ros/internal/node/server/master/NodeRegistrationInfo;->getNodeName()Lorg/ros/namespace/GraphName;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lorg/ros/internal/node/server/master/NodeRegistrationInfo;->getNodeSlaveUri()Ljava/net/URI;

    move-result-object v4

    aput-object v4, v2, v3

    .line 480
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 484
    :cond_24
    new-instance v0, Lorg/ros/internal/node/client/SlaveClient;

    sget-object v1, Lorg/ros/internal/node/server/master/MasterServer;->MASTER_NODE_NAME:Lorg/ros/namespace/GraphName;

    invoke-virtual {p1}, Lorg/ros/internal/node/server/master/NodeRegistrationInfo;->getNodeSlaveUri()Ljava/net/URI;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/ros/internal/node/client/SlaveClient;-><init>(Lorg/ros/namespace/GraphName;Ljava/net/URI;)V

    .line 485
    .local v0, "client":Lorg/ros/internal/node/client/SlaveClient;
    const-string v1, "Replaced by new slave"

    invoke-virtual {v0, v1}, Lorg/ros/internal/node/client/SlaveClient;->shutdown(Ljava/lang/String;)Lorg/ros/internal/node/response/Response;

    .line 486
    return-void
.end method

.method public registerPublisher(Lorg/ros/namespace/GraphName;Ljava/net/URI;Lorg/ros/namespace/GraphName;Ljava/lang/String;)Ljava/util/List;
    .registers 11
    .param p1, "nodeName"    # Lorg/ros/namespace/GraphName;
    .param p2, "nodeSlaveUri"    # Ljava/net/URI;
    .param p3, "topicName"    # Lorg/ros/namespace/GraphName;
    .param p4, "topicMessageType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/namespace/GraphName;",
            "Ljava/net/URI;",
            "Lorg/ros/namespace/GraphName;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/URI;",
            ">;"
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lorg/ros/internal/node/server/master/MasterServer;->masterRegistrationManager:Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;

    monitor-enter v0

    .line 216
    :try_start_3
    iget-object v1, p0, Lorg/ros/internal/node/server/master/MasterServer;->masterRegistrationManager:Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;

    .line 217
    invoke-virtual {v1, p1, p2, p3, p4}, Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;->registerPublisher(Lorg/ros/namespace/GraphName;Ljava/net/URI;Lorg/ros/namespace/GraphName;Ljava/lang/String;)Lorg/ros/internal/node/server/master/TopicRegistrationInfo;

    move-result-object v1

    .line 220
    .local v1, "topicInfo":Lorg/ros/internal/node/server/master/TopicRegistrationInfo;
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 221
    .local v2, "subscriberSlaveUris":Ljava/util/List;, "Ljava/util/List<Ljava/net/URI;>;"
    invoke-virtual {v1}, Lorg/ros/internal/node/server/master/TopicRegistrationInfo;->getSubscribers()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/ros/internal/node/server/master/NodeRegistrationInfo;

    .line 222
    .local v4, "publisherNodeInfo":Lorg/ros/internal/node/server/master/NodeRegistrationInfo;
    invoke-virtual {v4}, Lorg/ros/internal/node/server/master/NodeRegistrationInfo;->getNodeSlaveUri()Ljava/net/URI;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    .end local v4    # "publisherNodeInfo":Lorg/ros/internal/node/server/master/NodeRegistrationInfo;
    goto :goto_15

    .line 225
    :cond_29
    invoke-direct {p0, v1, v2}, Lorg/ros/internal/node/server/master/MasterServer;->publisherUpdate(Lorg/ros/internal/node/server/master/TopicRegistrationInfo;Ljava/util/List;)V

    .line 227
    monitor-exit v0

    return-object v2

    .line 228
    .end local v1    # "topicInfo":Lorg/ros/internal/node/server/master/TopicRegistrationInfo;
    .end local v2    # "subscriberSlaveUris":Ljava/util/List;, "Ljava/util/List<Ljava/net/URI;>;"
    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw v1
.end method

.method public registerService(Lorg/ros/namespace/GraphName;Ljava/net/URI;Lorg/ros/namespace/GraphName;Ljava/net/URI;)V
    .registers 7
    .param p1, "nodeName"    # Lorg/ros/namespace/GraphName;
    .param p2, "nodeSlaveUri"    # Ljava/net/URI;
    .param p3, "serviceName"    # Lorg/ros/namespace/GraphName;
    .param p4, "serviceUri"    # Ljava/net/URI;

    .line 116
    iget-object v0, p0, Lorg/ros/internal/node/server/master/MasterServer;->masterRegistrationManager:Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;

    monitor-enter v0

    .line 117
    :try_start_3
    iget-object v1, p0, Lorg/ros/internal/node/server/master/MasterServer;->masterRegistrationManager:Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;

    invoke-virtual {v1, p1, p2, p3, p4}, Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;->registerService(Lorg/ros/namespace/GraphName;Ljava/net/URI;Lorg/ros/namespace/GraphName;Ljava/net/URI;)Lorg/ros/internal/node/server/master/ServiceRegistrationInfo;

    .line 118
    monitor-exit v0

    .line 119
    return-void

    .line 118
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public registerSubscriber(Lorg/ros/namespace/GraphName;Ljava/net/URI;Lorg/ros/namespace/GraphName;Ljava/lang/String;)Ljava/util/List;
    .registers 11
    .param p1, "nodeName"    # Lorg/ros/namespace/GraphName;
    .param p2, "nodeSlaveUri"    # Ljava/net/URI;
    .param p3, "topicName"    # Lorg/ros/namespace/GraphName;
    .param p4, "topicMessageType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/namespace/GraphName;",
            "Ljava/net/URI;",
            "Lorg/ros/namespace/GraphName;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/URI;",
            ">;"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lorg/ros/internal/node/server/master/MasterServer;->masterRegistrationManager:Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;

    monitor-enter v0

    .line 163
    :try_start_3
    iget-object v1, p0, Lorg/ros/internal/node/server/master/MasterServer;->masterRegistrationManager:Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;

    .line 164
    invoke-virtual {v1, p1, p2, p3, p4}, Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;->registerSubscriber(Lorg/ros/namespace/GraphName;Ljava/net/URI;Lorg/ros/namespace/GraphName;Ljava/lang/String;)Lorg/ros/internal/node/server/master/TopicRegistrationInfo;

    move-result-object v1

    .line 166
    .local v1, "topicInfo":Lorg/ros/internal/node/server/master/TopicRegistrationInfo;
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 167
    .local v2, "publisherUris":Ljava/util/List;, "Ljava/util/List<Ljava/net/URI;>;"
    invoke-virtual {v1}, Lorg/ros/internal/node/server/master/TopicRegistrationInfo;->getPublishers()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/ros/internal/node/server/master/NodeRegistrationInfo;

    .line 168
    .local v4, "publisherNodeInfo":Lorg/ros/internal/node/server/master/NodeRegistrationInfo;
    invoke-virtual {v4}, Lorg/ros/internal/node/server/master/NodeRegistrationInfo;->getNodeSlaveUri()Ljava/net/URI;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    .end local v4    # "publisherNodeInfo":Lorg/ros/internal/node/server/master/NodeRegistrationInfo;
    goto :goto_15

    .line 170
    :cond_29
    monitor-exit v0

    return-object v2

    .line 171
    .end local v1    # "topicInfo":Lorg/ros/internal/node/server/master/TopicRegistrationInfo;
    .end local v2    # "publisherUris":Ljava/util/List;, "Ljava/util/List<Ljava/net/URI;>;"
    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method public start()V
    .registers 3

    .line 99
    const-class v0, Lorg/ros/internal/node/xmlrpc/MasterXmlRpcEndpointImpl;

    new-instance v1, Lorg/ros/internal/node/xmlrpc/MasterXmlRpcEndpointImpl;

    invoke-direct {v1, p0}, Lorg/ros/internal/node/xmlrpc/MasterXmlRpcEndpointImpl;-><init>(Lorg/ros/internal/node/server/master/MasterServer;)V

    invoke-super {p0, v0, v1}, Lorg/ros/internal/node/server/XmlRpcServer;->start(Ljava/lang/Class;Lorg/ros/internal/node/xmlrpc/XmlRpcEndpoint;)V

    .line 100
    return-void
.end method

.method public unregisterPublisher(Lorg/ros/namespace/GraphName;Lorg/ros/namespace/GraphName;)Z
    .registers 5
    .param p1, "nodeName"    # Lorg/ros/namespace/GraphName;
    .param p2, "topicName"    # Lorg/ros/namespace/GraphName;

    .line 285
    iget-object v0, p0, Lorg/ros/internal/node/server/master/MasterServer;->masterRegistrationManager:Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;

    monitor-enter v0

    .line 286
    :try_start_3
    iget-object v1, p0, Lorg/ros/internal/node/server/master/MasterServer;->masterRegistrationManager:Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;

    invoke-virtual {v1, p1, p2}, Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;->unregisterPublisher(Lorg/ros/namespace/GraphName;Lorg/ros/namespace/GraphName;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 287
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public unregisterService(Lorg/ros/namespace/GraphName;Lorg/ros/namespace/GraphName;Ljava/net/URI;)Z
    .registers 6
    .param p1, "nodeName"    # Lorg/ros/namespace/GraphName;
    .param p2, "serviceName"    # Lorg/ros/namespace/GraphName;
    .param p3, "serviceUri"    # Ljava/net/URI;

    .line 133
    iget-object v0, p0, Lorg/ros/internal/node/server/master/MasterServer;->masterRegistrationManager:Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;

    monitor-enter v0

    .line 134
    :try_start_3
    iget-object v1, p0, Lorg/ros/internal/node/server/master/MasterServer;->masterRegistrationManager:Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;

    invoke-virtual {v1, p1, p2, p3}, Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;->unregisterService(Lorg/ros/namespace/GraphName;Lorg/ros/namespace/GraphName;Ljava/net/URI;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 135
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public unregisterSubscriber(Lorg/ros/namespace/GraphName;Lorg/ros/namespace/GraphName;)Z
    .registers 5
    .param p1, "nodeName"    # Lorg/ros/namespace/GraphName;
    .param p2, "topicName"    # Lorg/ros/namespace/GraphName;

    .line 187
    iget-object v0, p0, Lorg/ros/internal/node/server/master/MasterServer;->masterRegistrationManager:Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;

    monitor-enter v0

    .line 188
    :try_start_3
    iget-object v1, p0, Lorg/ros/internal/node/server/master/MasterServer;->masterRegistrationManager:Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;

    invoke-virtual {v1, p1, p2}, Lorg/ros/internal/node/server/master/MasterRegistrationManagerImpl;->unregisterSubscriber(Lorg/ros/namespace/GraphName;Lorg/ros/namespace/GraphName;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 189
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method
