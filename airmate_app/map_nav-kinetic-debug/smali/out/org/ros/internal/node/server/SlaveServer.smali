.class public Lorg/ros/internal/node/server/SlaveServer;
.super Lorg/ros/internal/node/server/XmlRpcServer;
.source "SlaveServer.java"


# instance fields
.field private final masterClient:Lorg/ros/internal/node/client/MasterClient;

.field private final nodeName:Lorg/ros/namespace/GraphName;

.field private final parameterManager:Lorg/ros/internal/node/parameter/ParameterManager;

.field private final tcpRosServer:Lorg/ros/internal/transport/tcp/TcpRosServer;

.field private final topicParticipantManager:Lorg/ros/internal/node/topic/TopicParticipantManager;


# direct methods
.method public constructor <init>(Lorg/ros/namespace/GraphName;Lorg/ros/address/BindAddress;Lorg/ros/address/AdvertiseAddress;Lorg/ros/address/BindAddress;Lorg/ros/address/AdvertiseAddress;Lorg/ros/internal/node/client/MasterClient;Lorg/ros/internal/node/topic/TopicParticipantManager;Lorg/ros/internal/node/service/ServiceManager;Lorg/ros/internal/node/parameter/ParameterManager;Ljava/util/concurrent/ScheduledExecutorService;)V
    .registers 25
    .param p1, "nodeName"    # Lorg/ros/namespace/GraphName;
    .param p2, "tcpRosBindAddress"    # Lorg/ros/address/BindAddress;
    .param p3, "tcpRosAdvertiseAddress"    # Lorg/ros/address/AdvertiseAddress;
    .param p4, "xmlRpcBindAddress"    # Lorg/ros/address/BindAddress;
    .param p5, "xmlRpcAdvertiseAddress"    # Lorg/ros/address/AdvertiseAddress;
    .param p6, "master"    # Lorg/ros/internal/node/client/MasterClient;
    .param p7, "topicParticipantManager"    # Lorg/ros/internal/node/topic/TopicParticipantManager;
    .param p8, "serviceManager"    # Lorg/ros/internal/node/service/ServiceManager;
    .param p9, "parameterManager"    # Lorg/ros/internal/node/parameter/ParameterManager;
    .param p10, "executorService"    # Ljava/util/concurrent/ScheduledExecutorService;

    .line 61
    move-object v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-direct {p0, v1, v2}, Lorg/ros/internal/node/server/XmlRpcServer;-><init>(Lorg/ros/address/BindAddress;Lorg/ros/address/AdvertiseAddress;)V

    .line 62
    move-object v3, p1

    iput-object v3, v0, Lorg/ros/internal/node/server/SlaveServer;->nodeName:Lorg/ros/namespace/GraphName;

    .line 63
    move-object/from16 v4, p6

    iput-object v4, v0, Lorg/ros/internal/node/server/SlaveServer;->masterClient:Lorg/ros/internal/node/client/MasterClient;

    .line 64
    move-object/from16 v11, p7

    iput-object v11, v0, Lorg/ros/internal/node/server/SlaveServer;->topicParticipantManager:Lorg/ros/internal/node/topic/TopicParticipantManager;

    .line 65
    move-object/from16 v12, p9

    iput-object v12, v0, Lorg/ros/internal/node/server/SlaveServer;->parameterManager:Lorg/ros/internal/node/parameter/ParameterManager;

    .line 66
    new-instance v13, Lorg/ros/internal/transport/tcp/TcpRosServer;

    move-object v5, v13

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p10

    invoke-direct/range {v5 .. v10}, Lorg/ros/internal/transport/tcp/TcpRosServer;-><init>(Lorg/ros/address/BindAddress;Lorg/ros/address/AdvertiseAddress;Lorg/ros/internal/node/topic/TopicParticipantManager;Lorg/ros/internal/node/service/ServiceManager;Ljava/util/concurrent/ScheduledExecutorService;)V

    iput-object v13, v0, Lorg/ros/internal/node/server/SlaveServer;->tcpRosServer:Lorg/ros/internal/transport/tcp/TcpRosServer;

    .line 69
    return-void
.end method


# virtual methods
.method public getBusInfo(Ljava/lang/String;)Ljava/util/List;
    .registers 10
    .param p1, "callerId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 98
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 101
    .local v0, "busInfo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .line 102
    .local v1, "id":I
    invoke-virtual {p0}, Lorg/ros/internal/node/server/SlaveServer;->getPublications()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_65

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/ros/internal/node/topic/DefaultPublisher;

    .line 103
    .local v3, "publisher":Lorg/ros/internal/node/topic/DefaultPublisher;, "Lorg/ros/internal/node/topic/DefaultPublisher<*>;"
    iget-object v4, p0, Lorg/ros/internal/node/server/SlaveServer;->topicParticipantManager:Lorg/ros/internal/node/topic/TopicParticipantManager;

    .line 104
    invoke-virtual {v4, v3}, Lorg/ros/internal/node/topic/TopicParticipantManager;->getPublisherConnections(Lorg/ros/internal/node/topic/DefaultPublisher;)Ljava/util/Collection;

    move-result-object v4

    .line 103
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_23
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_64

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/ros/internal/node/topic/SubscriberIdentifier;

    .line 105
    .local v5, "subscriberIdentifier":Lorg/ros/internal/node/topic/SubscriberIdentifier;
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .line 106
    .local v6, "publisherBusInfo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    invoke-virtual {v5}, Lorg/ros/internal/node/topic/SubscriberIdentifier;->getNodeIdentifier()Lorg/ros/internal/node/server/NodeIdentifier;

    move-result-object v7

    invoke-virtual {v7}, Lorg/ros/internal/node/server/NodeIdentifier;->getName()Lorg/ros/namespace/GraphName;

    move-result-object v7

    invoke-virtual {v7}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    const-string v7, "o"

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    const-string v7, "TCPROS"

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-virtual {v3}, Lorg/ros/internal/node/topic/DefaultPublisher;->getTopicName()Lorg/ros/namespace/GraphName;

    move-result-object v7

    invoke-virtual {v7}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    add-int/lit8 v1, v1, 0x1

    .line 115
    .end local v5    # "subscriberIdentifier":Lorg/ros/internal/node/topic/SubscriberIdentifier;
    .end local v6    # "publisherBusInfo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_23

    .line 116
    .end local v3    # "publisher":Lorg/ros/internal/node/topic/DefaultPublisher;, "Lorg/ros/internal/node/topic/DefaultPublisher<*>;"
    :cond_64
    goto :goto_d

    .line 117
    :cond_65
    invoke-virtual {p0}, Lorg/ros/internal/node/server/SlaveServer;->getSubscriptions()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/ros/internal/node/topic/DefaultSubscriber;

    .line 118
    .local v3, "subscriber":Lorg/ros/internal/node/topic/DefaultSubscriber;, "Lorg/ros/internal/node/topic/DefaultSubscriber<*>;"
    iget-object v4, p0, Lorg/ros/internal/node/server/SlaveServer;->topicParticipantManager:Lorg/ros/internal/node/topic/TopicParticipantManager;

    .line 119
    invoke-virtual {v4, v3}, Lorg/ros/internal/node/topic/TopicParticipantManager;->getSubscriberConnections(Lorg/ros/internal/node/topic/DefaultSubscriber;)Ljava/util/Collection;

    move-result-object v4

    .line 118
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_83
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/ros/internal/node/topic/PublisherIdentifier;

    .line 120
    .local v5, "publisherIdentifer":Lorg/ros/internal/node/topic/PublisherIdentifier;
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .line 121
    .local v6, "subscriberBusInfo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    invoke-virtual {v5}, Lorg/ros/internal/node/topic/PublisherIdentifier;->getNodeIdentifier()Lorg/ros/internal/node/server/NodeIdentifier;

    move-result-object v7

    invoke-virtual {v7}, Lorg/ros/internal/node/server/NodeIdentifier;->getUri()Ljava/net/URI;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    const-string v7, "i"

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    const-string v7, "TCPROS"

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-virtual {v5}, Lorg/ros/internal/node/topic/PublisherIdentifier;->getTopicName()Lorg/ros/namespace/GraphName;

    move-result-object v7

    invoke-virtual {v7}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    add-int/lit8 v1, v1, 0x1

    .line 133
    .end local v5    # "publisherIdentifer":Lorg/ros/internal/node/topic/PublisherIdentifier;
    .end local v6    # "subscriberBusInfo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_83

    .line 134
    .end local v3    # "subscriber":Lorg/ros/internal/node/topic/DefaultSubscriber;, "Lorg/ros/internal/node/topic/DefaultSubscriber<*>;"
    :cond_c4
    goto :goto_6d

    .line 135
    :cond_c5
    return-object v0
.end method

.method public getBusStats(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .param p1, "callerId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 94
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getMasterUri()Ljava/net/URI;
    .registers 2

    .line 139
    iget-object v0, p0, Lorg/ros/internal/node/server/SlaveServer;->masterClient:Lorg/ros/internal/node/client/MasterClient;

    invoke-virtual {v0}, Lorg/ros/internal/node/client/MasterClient;->getRemoteUri()Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public getPid()I
    .registers 2

    .line 148
    invoke-static {}, Lorg/ros/internal/system/Process;->getPid()I

    move-result v0

    return v0
.end method

.method public getPublications()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/ros/internal/node/topic/DefaultPublisher<",
            "*>;>;"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lorg/ros/internal/node/server/SlaveServer;->topicParticipantManager:Lorg/ros/internal/node/topic/TopicParticipantManager;

    invoke-virtual {v0}, Lorg/ros/internal/node/topic/TopicParticipantManager;->getPublishers()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriptions()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/ros/internal/node/topic/DefaultSubscriber<",
            "*>;>;"
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lorg/ros/internal/node/server/SlaveServer;->topicParticipantManager:Lorg/ros/internal/node/topic/TopicParticipantManager;

    invoke-virtual {v0}, Lorg/ros/internal/node/topic/TopicParticipantManager;->getSubscribers()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getTcpRosAdvertiseAddress()Lorg/ros/address/AdvertiseAddress;
    .registers 2

    .line 72
    iget-object v0, p0, Lorg/ros/internal/node/server/SlaveServer;->tcpRosServer:Lorg/ros/internal/transport/tcp/TcpRosServer;

    invoke-virtual {v0}, Lorg/ros/internal/transport/tcp/TcpRosServer;->getAdvertiseAddress()Lorg/ros/address/AdvertiseAddress;

    move-result-object v0

    return-object v0
.end method

.method public paramUpdate(Lorg/ros/namespace/GraphName;Ljava/lang/Object;)I
    .registers 4
    .param p1, "parameterName"    # Lorg/ros/namespace/GraphName;
    .param p2, "parameterValue"    # Ljava/lang/Object;

    .line 165
    iget-object v0, p0, Lorg/ros/internal/node/server/SlaveServer;->parameterManager:Lorg/ros/internal/node/parameter/ParameterManager;

    invoke-virtual {v0, p1, p2}, Lorg/ros/internal/node/parameter/ParameterManager;->updateParameter(Lorg/ros/namespace/GraphName;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public publisherUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V
    .registers 8
    .param p1, "callerId"    # Ljava/lang/String;
    .param p2, "topicName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/net/URI;",
            ">;)V"
        }
    .end annotation

    .line 169
    .local p3, "publisherUris":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/URI;>;"
    invoke-static {p2}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    .line 170
    .local v0, "graphName":Lorg/ros/namespace/GraphName;
    iget-object v1, p0, Lorg/ros/internal/node/server/SlaveServer;->topicParticipantManager:Lorg/ros/internal/node/topic/TopicParticipantManager;

    invoke-virtual {v1, v0}, Lorg/ros/internal/node/topic/TopicParticipantManager;->hasSubscriber(Lorg/ros/namespace/GraphName;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 171
    iget-object v1, p0, Lorg/ros/internal/node/server/SlaveServer;->topicParticipantManager:Lorg/ros/internal/node/topic/TopicParticipantManager;

    invoke-virtual {v1, v0}, Lorg/ros/internal/node/topic/TopicParticipantManager;->getSubscriber(Lorg/ros/namespace/GraphName;)Lorg/ros/internal/node/topic/DefaultSubscriber;

    move-result-object v1

    .line 172
    .local v1, "subscriber":Lorg/ros/internal/node/topic/DefaultSubscriber;, "Lorg/ros/internal/node/topic/DefaultSubscriber<*>;"
    invoke-virtual {v1}, Lorg/ros/internal/node/topic/DefaultSubscriber;->getTopicDeclaration()Lorg/ros/internal/node/topic/TopicDeclaration;

    move-result-object v2

    .line 173
    .local v2, "topicDeclaration":Lorg/ros/internal/node/topic/TopicDeclaration;
    nop

    .line 174
    invoke-static {p3, v2}, Lorg/ros/internal/node/topic/PublisherIdentifier;->newCollectionFromUris(Ljava/util/Collection;Lorg/ros/internal/node/topic/TopicDeclaration;)Ljava/util/Collection;

    move-result-object v3

    .line 175
    .local v3, "identifiers":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/ros/internal/node/topic/PublisherIdentifier;>;"
    invoke-virtual {v1, v3}, Lorg/ros/internal/node/topic/DefaultSubscriber;->updatePublishers(Ljava/util/Collection;)V

    .line 177
    .end local v1    # "subscriber":Lorg/ros/internal/node/topic/DefaultSubscriber;, "Lorg/ros/internal/node/topic/DefaultSubscriber<*>;"
    .end local v2    # "topicDeclaration":Lorg/ros/internal/node/topic/TopicDeclaration;
    .end local v3    # "identifiers":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/ros/internal/node/topic/PublisherIdentifier;>;"
    :cond_1e
    return-void
.end method

.method public requestTopic(Ljava/lang/String;Ljava/util/Collection;)Lorg/ros/internal/transport/ProtocolDescription;
    .registers 7
    .param p1, "topicName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/ros/internal/transport/ProtocolDescription;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ros/internal/node/server/ServerException;
        }
    .end annotation

    .line 183
    .local p2, "protocols":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {p1}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ros/namespace/GraphName;->toGlobal()Lorg/ros/namespace/GraphName;

    move-result-object v0

    .line 184
    .local v0, "graphName":Lorg/ros/namespace/GraphName;
    iget-object v1, p0, Lorg/ros/internal/node/server/SlaveServer;->topicParticipantManager:Lorg/ros/internal/node/topic/TopicParticipantManager;

    invoke-virtual {v1, v0}, Lorg/ros/internal/node/topic/TopicParticipantManager;->hasPublisher(Lorg/ros/namespace/GraphName;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 187
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 188
    .local v2, "protocol":Ljava/lang/String;
    const-string v3, "TCPROS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 190
    :try_start_28
    new-instance v1, Lorg/ros/internal/transport/tcp/TcpRosProtocolDescription;

    iget-object v3, p0, Lorg/ros/internal/node/server/SlaveServer;->tcpRosServer:Lorg/ros/internal/transport/tcp/TcpRosServer;

    invoke-virtual {v3}, Lorg/ros/internal/transport/tcp/TcpRosServer;->getAdvertiseAddress()Lorg/ros/address/AdvertiseAddress;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/ros/internal/transport/tcp/TcpRosProtocolDescription;-><init>(Lorg/ros/address/AdvertiseAddress;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_33} :catch_34

    return-object v1

    .line 191
    :catch_34
    move-exception v1

    .line 192
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Lorg/ros/internal/node/server/ServerException;

    invoke-direct {v3, v1}, Lorg/ros/internal/node/server/ServerException;-><init>(Ljava/lang/Exception;)V

    throw v3

    .line 195
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "protocol":Ljava/lang/String;
    :cond_3b
    goto :goto_14

    .line 196
    :cond_3c
    new-instance v1, Lorg/ros/internal/node/server/ServerException;

    const-string v2, "No supported protocols specified."

    invoke-direct {v1, v2}, Lorg/ros/internal/node/server/ServerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 185
    :cond_44
    new-instance v1, Lorg/ros/internal/node/server/ServerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No publishers for topic: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/ros/internal/node/server/ServerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public shutdown()V
    .registers 2

    .line 89
    invoke-super {p0}, Lorg/ros/internal/node/server/XmlRpcServer;->shutdown()V

    .line 90
    iget-object v0, p0, Lorg/ros/internal/node/server/SlaveServer;->tcpRosServer:Lorg/ros/internal/transport/tcp/TcpRosServer;

    invoke-virtual {v0}, Lorg/ros/internal/transport/tcp/TcpRosServer;->shutdown()V

    .line 91
    return-void
.end method

.method public start()V
    .registers 3

    .line 81
    const-class v0, Lorg/ros/internal/node/xmlrpc/SlaveXmlRpcEndpointImpl;

    new-instance v1, Lorg/ros/internal/node/xmlrpc/SlaveXmlRpcEndpointImpl;

    invoke-direct {v1, p0}, Lorg/ros/internal/node/xmlrpc/SlaveXmlRpcEndpointImpl;-><init>(Lorg/ros/internal/node/server/SlaveServer;)V

    invoke-super {p0, v0, v1}, Lorg/ros/internal/node/server/XmlRpcServer;->start(Ljava/lang/Class;Lorg/ros/internal/node/xmlrpc/XmlRpcEndpoint;)V

    .line 83
    iget-object v0, p0, Lorg/ros/internal/node/server/SlaveServer;->tcpRosServer:Lorg/ros/internal/transport/tcp/TcpRosServer;

    invoke-virtual {v0}, Lorg/ros/internal/transport/tcp/TcpRosServer;->start()V

    .line 84
    return-void
.end method

.method public toNodeIdentifier()Lorg/ros/internal/node/server/NodeIdentifier;
    .registers 4

    .line 203
    new-instance v0, Lorg/ros/internal/node/server/NodeIdentifier;

    iget-object v1, p0, Lorg/ros/internal/node/server/SlaveServer;->nodeName:Lorg/ros/namespace/GraphName;

    invoke-virtual {p0}, Lorg/ros/internal/node/server/SlaveServer;->getUri()Ljava/net/URI;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/ros/internal/node/server/NodeIdentifier;-><init>(Lorg/ros/namespace/GraphName;Ljava/net/URI;)V

    return-object v0
.end method
