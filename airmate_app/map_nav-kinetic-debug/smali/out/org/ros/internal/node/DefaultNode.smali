.class public Lorg/ros/internal/node/DefaultNode;
.super Ljava/lang/Object;
.source "DefaultNode.java"

# interfaces
.implements Lorg/ros/node/ConnectedNode;


# static fields
.field private static final DEBUG:Z = false

.field private static final MAX_SHUTDOWN_DELAY_DURATION:I = 0x5

.field private static final MAX_SHUTDOWN_DELAY_UNITS:Ljava/util/concurrent/TimeUnit;


# instance fields
.field private log:Lorg/ros/internal/node/RosoutLogger;

.field private final masterClient:Lorg/ros/internal/node/client/MasterClient;

.field private final masterUri:Ljava/net/URI;

.field private final nodeConfiguration:Lorg/ros/node/NodeConfiguration;

.field private final nodeListeners:Lorg/ros/concurrent/ListenerGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ros/concurrent/ListenerGroup<",
            "Lorg/ros/node/NodeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final nodeName:Lorg/ros/namespace/GraphName;

.field private final parameterManager:Lorg/ros/internal/node/parameter/ParameterManager;

.field private final parameterTree:Lorg/ros/node/parameter/ParameterTree;

.field private final publisherFactory:Lorg/ros/internal/node/topic/PublisherFactory;

.field private final registrar:Lorg/ros/internal/node/client/Registrar;

.field private final resolver:Lorg/ros/namespace/NodeNameResolver;

.field private final scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private final serviceFactory:Lorg/ros/internal/node/service/ServiceFactory;

.field private final serviceManager:Lorg/ros/internal/node/service/ServiceManager;

.field private final slaveServer:Lorg/ros/internal/node/server/SlaveServer;

.field private final subscriberFactory:Lorg/ros/internal/node/topic/SubscriberFactory;

.field private timeProvider:Lorg/ros/time/TimeProvider;

.field private final topicParticipantManager:Lorg/ros/internal/node/topic/TopicParticipantManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 96
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lorg/ros/internal/node/DefaultNode;->MAX_SHUTDOWN_DELAY_UNITS:Ljava/util/concurrent/TimeUnit;

    return-void
.end method

.method public constructor <init>(Lorg/ros/node/NodeConfiguration;Ljava/util/Collection;Ljava/util/concurrent/ScheduledExecutorService;)V
    .registers 20
    .param p1, "nodeConfiguration"    # Lorg/ros/node/NodeConfiguration;
    .param p3, "scheduledExecutorService"    # Ljava/util/concurrent/ScheduledExecutorService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/node/NodeConfiguration;",
            "Ljava/util/Collection<",
            "Lorg/ros/node/NodeListener;",
            ">;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")V"
        }
    .end annotation

    .line 129
    .local p2, "nodeListeners":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/ros/node/NodeListener;>;"
    move-object/from16 v0, p0

    move-object/from16 v12, p3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 130
    invoke-static/range {p1 .. p1}, Lorg/ros/node/NodeConfiguration;->copyOf(Lorg/ros/node/NodeConfiguration;)Lorg/ros/node/NodeConfiguration;

    move-result-object v1

    iput-object v1, v0, Lorg/ros/internal/node/DefaultNode;->nodeConfiguration:Lorg/ros/node/NodeConfiguration;

    .line 131
    new-instance v1, Lorg/ros/concurrent/ListenerGroup;

    invoke-direct {v1, v12}, Lorg/ros/concurrent/ListenerGroup;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object v1, v0, Lorg/ros/internal/node/DefaultNode;->nodeListeners:Lorg/ros/concurrent/ListenerGroup;

    .line 132
    iget-object v1, v0, Lorg/ros/internal/node/DefaultNode;->nodeListeners:Lorg/ros/concurrent/ListenerGroup;

    move-object/from16 v13, p2

    invoke-virtual {v1, v13}, Lorg/ros/concurrent/ListenerGroup;->addAll(Ljava/util/Collection;)Ljava/util/Collection;

    .line 133
    iput-object v12, v0, Lorg/ros/internal/node/DefaultNode;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 134
    invoke-virtual/range {p1 .. p1}, Lorg/ros/node/NodeConfiguration;->getMasterUri()Ljava/net/URI;

    move-result-object v1

    iput-object v1, v0, Lorg/ros/internal/node/DefaultNode;->masterUri:Ljava/net/URI;

    .line 135
    new-instance v1, Lorg/ros/internal/node/client/MasterClient;

    iget-object v2, v0, Lorg/ros/internal/node/DefaultNode;->masterUri:Ljava/net/URI;

    invoke-direct {v1, v2}, Lorg/ros/internal/node/client/MasterClient;-><init>(Ljava/net/URI;)V

    iput-object v1, v0, Lorg/ros/internal/node/DefaultNode;->masterClient:Lorg/ros/internal/node/client/MasterClient;

    .line 136
    new-instance v1, Lorg/ros/internal/node/topic/TopicParticipantManager;

    invoke-direct {v1}, Lorg/ros/internal/node/topic/TopicParticipantManager;-><init>()V

    iput-object v1, v0, Lorg/ros/internal/node/DefaultNode;->topicParticipantManager:Lorg/ros/internal/node/topic/TopicParticipantManager;

    .line 137
    new-instance v1, Lorg/ros/internal/node/service/ServiceManager;

    invoke-direct {v1}, Lorg/ros/internal/node/service/ServiceManager;-><init>()V

    iput-object v1, v0, Lorg/ros/internal/node/DefaultNode;->serviceManager:Lorg/ros/internal/node/service/ServiceManager;

    .line 138
    new-instance v1, Lorg/ros/internal/node/parameter/ParameterManager;

    invoke-direct {v1, v12}, Lorg/ros/internal/node/parameter/ParameterManager;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object v1, v0, Lorg/ros/internal/node/DefaultNode;->parameterManager:Lorg/ros/internal/node/parameter/ParameterManager;

    .line 140
    invoke-virtual/range {p1 .. p1}, Lorg/ros/node/NodeConfiguration;->getNodeName()Lorg/ros/namespace/GraphName;

    move-result-object v14

    .line 141
    .local v14, "basename":Lorg/ros/namespace/GraphName;
    invoke-virtual/range {p1 .. p1}, Lorg/ros/node/NodeConfiguration;->getParentResolver()Lorg/ros/namespace/NameResolver;

    move-result-object v15

    .line 142
    .local v15, "parentResolver":Lorg/ros/namespace/NameResolver;
    invoke-virtual {v15}, Lorg/ros/namespace/NameResolver;->getNamespace()Lorg/ros/namespace/GraphName;

    move-result-object v1

    invoke-virtual {v1, v14}, Lorg/ros/namespace/GraphName;->join(Lorg/ros/namespace/GraphName;)Lorg/ros/namespace/GraphName;

    move-result-object v1

    iput-object v1, v0, Lorg/ros/internal/node/DefaultNode;->nodeName:Lorg/ros/namespace/GraphName;

    .line 143
    new-instance v1, Lorg/ros/namespace/NodeNameResolver;

    iget-object v2, v0, Lorg/ros/internal/node/DefaultNode;->nodeName:Lorg/ros/namespace/GraphName;

    invoke-direct {v1, v2, v15}, Lorg/ros/namespace/NodeNameResolver;-><init>(Lorg/ros/namespace/GraphName;Lorg/ros/namespace/NameResolver;)V

    iput-object v1, v0, Lorg/ros/internal/node/DefaultNode;->resolver:Lorg/ros/namespace/NodeNameResolver;

    .line 144
    new-instance v11, Lorg/ros/internal/node/server/SlaveServer;

    iget-object v2, v0, Lorg/ros/internal/node/DefaultNode;->nodeName:Lorg/ros/namespace/GraphName;

    .line 145
    invoke-virtual/range {p1 .. p1}, Lorg/ros/node/NodeConfiguration;->getTcpRosBindAddress()Lorg/ros/address/BindAddress;

    move-result-object v3

    .line 146
    invoke-virtual/range {p1 .. p1}, Lorg/ros/node/NodeConfiguration;->getTcpRosAdvertiseAddress()Lorg/ros/address/AdvertiseAddress;

    move-result-object v4

    .line 147
    invoke-virtual/range {p1 .. p1}, Lorg/ros/node/NodeConfiguration;->getXmlRpcBindAddress()Lorg/ros/address/BindAddress;

    move-result-object v5

    .line 148
    invoke-virtual/range {p1 .. p1}, Lorg/ros/node/NodeConfiguration;->getXmlRpcAdvertiseAddress()Lorg/ros/address/AdvertiseAddress;

    move-result-object v6

    iget-object v7, v0, Lorg/ros/internal/node/DefaultNode;->masterClient:Lorg/ros/internal/node/client/MasterClient;

    iget-object v8, v0, Lorg/ros/internal/node/DefaultNode;->topicParticipantManager:Lorg/ros/internal/node/topic/TopicParticipantManager;

    iget-object v9, v0, Lorg/ros/internal/node/DefaultNode;->serviceManager:Lorg/ros/internal/node/service/ServiceManager;

    iget-object v10, v0, Lorg/ros/internal/node/DefaultNode;->parameterManager:Lorg/ros/internal/node/parameter/ParameterManager;

    move-object v1, v11

    move-object v13, v11

    move-object/from16 v11, p3

    invoke-direct/range {v1 .. v11}, Lorg/ros/internal/node/server/SlaveServer;-><init>(Lorg/ros/namespace/GraphName;Lorg/ros/address/BindAddress;Lorg/ros/address/AdvertiseAddress;Lorg/ros/address/BindAddress;Lorg/ros/address/AdvertiseAddress;Lorg/ros/internal/node/client/MasterClient;Lorg/ros/internal/node/topic/TopicParticipantManager;Lorg/ros/internal/node/service/ServiceManager;Lorg/ros/internal/node/parameter/ParameterManager;Ljava/util/concurrent/ScheduledExecutorService;)V

    iput-object v13, v0, Lorg/ros/internal/node/DefaultNode;->slaveServer:Lorg/ros/internal/node/server/SlaveServer;

    .line 150
    iget-object v1, v0, Lorg/ros/internal/node/DefaultNode;->slaveServer:Lorg/ros/internal/node/server/SlaveServer;

    invoke-virtual {v1}, Lorg/ros/internal/node/server/SlaveServer;->start()V

    .line 152
    iget-object v1, v0, Lorg/ros/internal/node/DefaultNode;->slaveServer:Lorg/ros/internal/node/server/SlaveServer;

    invoke-virtual {v1}, Lorg/ros/internal/node/server/SlaveServer;->toNodeIdentifier()Lorg/ros/internal/node/server/NodeIdentifier;

    move-result-object v1

    .line 154
    .local v1, "nodeIdentifier":Lorg/ros/internal/node/server/NodeIdentifier;
    iget-object v2, v0, Lorg/ros/internal/node/DefaultNode;->masterClient:Lorg/ros/internal/node/client/MasterClient;

    .line 155
    invoke-virtual {v2}, Lorg/ros/internal/node/client/MasterClient;->getRemoteUri()Ljava/net/URI;

    move-result-object v2

    iget-object v3, v0, Lorg/ros/internal/node/DefaultNode;->resolver:Lorg/ros/namespace/NodeNameResolver;

    iget-object v4, v0, Lorg/ros/internal/node/DefaultNode;->parameterManager:Lorg/ros/internal/node/parameter/ParameterManager;

    invoke-static {v1, v2, v3, v4}, Lorg/ros/internal/node/parameter/DefaultParameterTree;->newFromNodeIdentifier(Lorg/ros/internal/node/server/NodeIdentifier;Ljava/net/URI;Lorg/ros/namespace/NameResolver;Lorg/ros/internal/node/parameter/ParameterManager;)Lorg/ros/internal/node/parameter/DefaultParameterTree;

    move-result-object v2

    iput-object v2, v0, Lorg/ros/internal/node/DefaultNode;->parameterTree:Lorg/ros/node/parameter/ParameterTree;

    .line 158
    new-instance v2, Lorg/ros/internal/node/topic/PublisherFactory;

    iget-object v3, v0, Lorg/ros/internal/node/DefaultNode;->topicParticipantManager:Lorg/ros/internal/node/topic/TopicParticipantManager;

    .line 160
    invoke-virtual/range {p1 .. p1}, Lorg/ros/node/NodeConfiguration;->getTopicMessageFactory()Lorg/ros/message/MessageFactory;

    move-result-object v4

    invoke-direct {v2, v1, v3, v4, v12}, Lorg/ros/internal/node/topic/PublisherFactory;-><init>(Lorg/ros/internal/node/server/NodeIdentifier;Lorg/ros/internal/node/topic/TopicParticipantManager;Lorg/ros/message/MessageFactory;Ljava/util/concurrent/ScheduledExecutorService;)V

    iput-object v2, v0, Lorg/ros/internal/node/DefaultNode;->publisherFactory:Lorg/ros/internal/node/topic/PublisherFactory;

    .line 161
    new-instance v2, Lorg/ros/internal/node/topic/SubscriberFactory;

    iget-object v3, v0, Lorg/ros/internal/node/DefaultNode;->topicParticipantManager:Lorg/ros/internal/node/topic/TopicParticipantManager;

    invoke-direct {v2, v1, v3, v12}, Lorg/ros/internal/node/topic/SubscriberFactory;-><init>(Lorg/ros/internal/node/server/NodeIdentifier;Lorg/ros/internal/node/topic/TopicParticipantManager;Ljava/util/concurrent/ScheduledExecutorService;)V

    iput-object v2, v0, Lorg/ros/internal/node/DefaultNode;->subscriberFactory:Lorg/ros/internal/node/topic/SubscriberFactory;

    .line 163
    new-instance v2, Lorg/ros/internal/node/service/ServiceFactory;

    iget-object v3, v0, Lorg/ros/internal/node/DefaultNode;->nodeName:Lorg/ros/namespace/GraphName;

    iget-object v4, v0, Lorg/ros/internal/node/DefaultNode;->slaveServer:Lorg/ros/internal/node/server/SlaveServer;

    iget-object v5, v0, Lorg/ros/internal/node/DefaultNode;->serviceManager:Lorg/ros/internal/node/service/ServiceManager;

    invoke-direct {v2, v3, v4, v5, v12}, Lorg/ros/internal/node/service/ServiceFactory;-><init>(Lorg/ros/namespace/GraphName;Lorg/ros/internal/node/server/SlaveServer;Lorg/ros/internal/node/service/ServiceManager;Ljava/util/concurrent/ScheduledExecutorService;)V

    iput-object v2, v0, Lorg/ros/internal/node/DefaultNode;->serviceFactory:Lorg/ros/internal/node/service/ServiceFactory;

    .line 166
    new-instance v2, Lorg/ros/internal/node/client/Registrar;

    iget-object v3, v0, Lorg/ros/internal/node/DefaultNode;->masterClient:Lorg/ros/internal/node/client/MasterClient;

    invoke-direct {v2, v3, v12}, Lorg/ros/internal/node/client/Registrar;-><init>(Lorg/ros/internal/node/client/MasterClient;Ljava/util/concurrent/ScheduledExecutorService;)V

    iput-object v2, v0, Lorg/ros/internal/node/DefaultNode;->registrar:Lorg/ros/internal/node/client/Registrar;

    .line 167
    iget-object v2, v0, Lorg/ros/internal/node/DefaultNode;->topicParticipantManager:Lorg/ros/internal/node/topic/TopicParticipantManager;

    iget-object v3, v0, Lorg/ros/internal/node/DefaultNode;->registrar:Lorg/ros/internal/node/client/Registrar;

    invoke-virtual {v2, v3}, Lorg/ros/internal/node/topic/TopicParticipantManager;->setListener(Lorg/ros/internal/node/topic/TopicParticipantManagerListener;)V

    .line 168
    iget-object v2, v0, Lorg/ros/internal/node/DefaultNode;->serviceManager:Lorg/ros/internal/node/service/ServiceManager;

    iget-object v3, v0, Lorg/ros/internal/node/DefaultNode;->registrar:Lorg/ros/internal/node/client/Registrar;

    invoke-virtual {v2, v3}, Lorg/ros/internal/node/service/ServiceManager;->setListener(Lorg/ros/internal/node/service/ServiceManagerListener;)V

    .line 170
    new-instance v2, Lorg/ros/internal/node/DefaultNode$1;

    invoke-direct {v2, v0}, Lorg/ros/internal/node/DefaultNode$1;-><init>(Lorg/ros/internal/node/DefaultNode;)V

    invoke-interface {v12, v2}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 176
    return-void
.end method

.method static synthetic access$000(Lorg/ros/internal/node/DefaultNode;)V
    .registers 1
    .param p0, "x0"    # Lorg/ros/internal/node/DefaultNode;

    .line 85
    invoke-direct {p0}, Lorg/ros/internal/node/DefaultNode;->start()V

    return-void
.end method

.method private newMessageDeserializer(Ljava/lang/String;)Lorg/ros/message/MessageDeserializer;
    .registers 3
    .param p1, "messageType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lorg/ros/message/MessageDeserializer<",
            "TT;>;"
        }
    .end annotation

    .line 252
    iget-object v0, p0, Lorg/ros/internal/node/DefaultNode;->nodeConfiguration:Lorg/ros/node/NodeConfiguration;

    invoke-virtual {v0}, Lorg/ros/node/NodeConfiguration;->getMessageSerializationFactory()Lorg/ros/message/MessageSerializationFactory;

    move-result-object v0

    .line 253
    invoke-interface {v0, p1}, Lorg/ros/message/MessageSerializationFactory;->newMessageDeserializer(Ljava/lang/String;)Lorg/ros/message/MessageDeserializer;

    move-result-object v0

    .line 252
    return-object v0
.end method

.method private newMessageSerializer(Ljava/lang/String;)Lorg/ros/message/MessageSerializer;
    .registers 3
    .param p1, "messageType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lorg/ros/message/MessageSerializer<",
            "TT;>;"
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lorg/ros/internal/node/DefaultNode;->nodeConfiguration:Lorg/ros/node/NodeConfiguration;

    invoke-virtual {v0}, Lorg/ros/node/NodeConfiguration;->getMessageSerializationFactory()Lorg/ros/message/MessageSerializationFactory;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/ros/message/MessageSerializationFactory;->newMessageSerializer(Ljava/lang/String;)Lorg/ros/message/MessageSerializer;

    move-result-object v0

    return-object v0
.end method

.method private newServiceRequestDeserializer(Ljava/lang/String;)Lorg/ros/message/MessageDeserializer;
    .registers 3
    .param p1, "serviceType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lorg/ros/message/MessageDeserializer<",
            "TT;>;"
        }
    .end annotation

    .line 276
    iget-object v0, p0, Lorg/ros/internal/node/DefaultNode;->nodeConfiguration:Lorg/ros/node/NodeConfiguration;

    invoke-virtual {v0}, Lorg/ros/node/NodeConfiguration;->getMessageSerializationFactory()Lorg/ros/message/MessageSerializationFactory;

    move-result-object v0

    .line 277
    invoke-interface {v0, p1}, Lorg/ros/message/MessageSerializationFactory;->newServiceRequestDeserializer(Ljava/lang/String;)Lorg/ros/message/MessageDeserializer;

    move-result-object v0

    .line 276
    return-object v0
.end method

.method private newServiceRequestSerializer(Ljava/lang/String;)Lorg/ros/message/MessageSerializer;
    .registers 3
    .param p1, "serviceType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lorg/ros/message/MessageSerializer<",
            "TT;>;"
        }
    .end annotation

    .line 270
    iget-object v0, p0, Lorg/ros/internal/node/DefaultNode;->nodeConfiguration:Lorg/ros/node/NodeConfiguration;

    invoke-virtual {v0}, Lorg/ros/node/NodeConfiguration;->getMessageSerializationFactory()Lorg/ros/message/MessageSerializationFactory;

    move-result-object v0

    .line 271
    invoke-interface {v0, p1}, Lorg/ros/message/MessageSerializationFactory;->newServiceRequestSerializer(Ljava/lang/String;)Lorg/ros/message/MessageSerializer;

    move-result-object v0

    .line 270
    return-object v0
.end method

.method private newServiceResponseDeserializer(Ljava/lang/String;)Lorg/ros/message/MessageDeserializer;
    .registers 3
    .param p1, "serviceType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lorg/ros/message/MessageDeserializer<",
            "TT;>;"
        }
    .end annotation

    .line 264
    iget-object v0, p0, Lorg/ros/internal/node/DefaultNode;->nodeConfiguration:Lorg/ros/node/NodeConfiguration;

    invoke-virtual {v0}, Lorg/ros/node/NodeConfiguration;->getMessageSerializationFactory()Lorg/ros/message/MessageSerializationFactory;

    move-result-object v0

    .line 265
    invoke-interface {v0, p1}, Lorg/ros/message/MessageSerializationFactory;->newServiceResponseDeserializer(Ljava/lang/String;)Lorg/ros/message/MessageDeserializer;

    move-result-object v0

    .line 264
    return-object v0
.end method

.method private newServiceResponseSerializer(Ljava/lang/String;)Lorg/ros/message/MessageSerializer;
    .registers 3
    .param p1, "serviceType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lorg/ros/message/MessageSerializer<",
            "TT;>;"
        }
    .end annotation

    .line 258
    iget-object v0, p0, Lorg/ros/internal/node/DefaultNode;->nodeConfiguration:Lorg/ros/node/NodeConfiguration;

    invoke-virtual {v0}, Lorg/ros/node/NodeConfiguration;->getMessageSerializationFactory()Lorg/ros/message/MessageSerializationFactory;

    move-result-object v0

    .line 259
    invoke-interface {v0, p1}, Lorg/ros/message/MessageSerializationFactory;->newServiceResponseSerializer(Ljava/lang/String;)Lorg/ros/message/MessageSerializer;

    move-result-object v0

    .line 258
    return-object v0
.end method

.method private signalOnError(Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .line 496
    move-object v0, p0

    .line 497
    .local v0, "node":Lorg/ros/node/Node;
    iget-object v1, p0, Lorg/ros/internal/node/DefaultNode;->nodeListeners:Lorg/ros/concurrent/ListenerGroup;

    new-instance v2, Lorg/ros/internal/node/DefaultNode$4;

    invoke-direct {v2, p0, v0, p1}, Lorg/ros/internal/node/DefaultNode$4;-><init>(Lorg/ros/internal/node/DefaultNode;Lorg/ros/node/Node;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lorg/ros/concurrent/ListenerGroup;->signal(Lorg/ros/concurrent/SignalRunnable;)V

    .line 503
    return-void
.end method

.method private signalOnShutdown()V
    .registers 7

    .line 532
    move-object v0, p0

    .line 534
    .local v0, "node":Lorg/ros/node/Node;
    :try_start_1
    iget-object v1, p0, Lorg/ros/internal/node/DefaultNode;->nodeListeners:Lorg/ros/concurrent/ListenerGroup;

    new-instance v2, Lorg/ros/internal/node/DefaultNode$6;

    invoke-direct {v2, p0, v0}, Lorg/ros/internal/node/DefaultNode$6;-><init>(Lorg/ros/internal/node/DefaultNode;Lorg/ros/node/Node;)V

    const-wide/16 v3, 0x5

    sget-object v5, Lorg/ros/internal/node/DefaultNode;->MAX_SHUTDOWN_DELAY_UNITS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/ros/concurrent/ListenerGroup;->signal(Lorg/ros/concurrent/SignalRunnable;JLjava/util/concurrent/TimeUnit;)Z
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_f} :catch_10

    .line 544
    goto :goto_11

    .line 540
    :catch_10
    move-exception v1

    .line 545
    :goto_11
    return-void
.end method

.method private signalOnShutdownComplete()V
    .registers 4

    .line 554
    move-object v0, p0

    .line 555
    .local v0, "node":Lorg/ros/node/Node;
    iget-object v1, p0, Lorg/ros/internal/node/DefaultNode;->nodeListeners:Lorg/ros/concurrent/ListenerGroup;

    new-instance v2, Lorg/ros/internal/node/DefaultNode$7;

    invoke-direct {v2, p0, v0}, Lorg/ros/internal/node/DefaultNode$7;-><init>(Lorg/ros/internal/node/DefaultNode;Lorg/ros/node/Node;)V

    invoke-virtual {v1, v2}, Lorg/ros/concurrent/ListenerGroup;->signal(Lorg/ros/concurrent/SignalRunnable;)V

    .line 565
    return-void
.end method

.method private signalOnStart()V
    .registers 4

    .line 516
    move-object v0, p0

    .line 517
    .local v0, "connectedNode":Lorg/ros/node/ConnectedNode;
    iget-object v1, p0, Lorg/ros/internal/node/DefaultNode;->nodeListeners:Lorg/ros/concurrent/ListenerGroup;

    new-instance v2, Lorg/ros/internal/node/DefaultNode$5;

    invoke-direct {v2, p0, v0}, Lorg/ros/internal/node/DefaultNode$5;-><init>(Lorg/ros/internal/node/DefaultNode;Lorg/ros/node/ConnectedNode;)V

    invoke-virtual {v1, v2}, Lorg/ros/concurrent/ListenerGroup;->signal(Lorg/ros/concurrent/SignalRunnable;)V

    .line 523
    return-void
.end method

.method private start()V
    .registers 7

    .line 181
    iget-object v0, p0, Lorg/ros/internal/node/DefaultNode;->registrar:Lorg/ros/internal/node/client/Registrar;

    iget-object v1, p0, Lorg/ros/internal/node/DefaultNode;->slaveServer:Lorg/ros/internal/node/server/SlaveServer;

    invoke-virtual {v1}, Lorg/ros/internal/node/server/SlaveServer;->toNodeIdentifier()Lorg/ros/internal/node/server/NodeIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ros/internal/node/client/Registrar;->start(Lorg/ros/internal/node/server/NodeIdentifier;)V

    .line 185
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 187
    .local v0, "rosoutLatch":Ljava/util/concurrent/CountDownLatch;
    new-instance v2, Lorg/ros/internal/node/RosoutLogger;

    invoke-direct {v2, p0}, Lorg/ros/internal/node/RosoutLogger;-><init>(Lorg/ros/internal/node/DefaultNode;)V

    iput-object v2, p0, Lorg/ros/internal/node/DefaultNode;->log:Lorg/ros/internal/node/RosoutLogger;

    .line 188
    iget-object v2, p0, Lorg/ros/internal/node/DefaultNode;->log:Lorg/ros/internal/node/RosoutLogger;

    invoke-virtual {v2}, Lorg/ros/internal/node/RosoutLogger;->getPublisher()Lorg/ros/node/topic/Publisher;

    move-result-object v2

    new-instance v3, Lorg/ros/internal/node/DefaultNode$2;

    invoke-direct {v3, p0, v0}, Lorg/ros/internal/node/DefaultNode$2;-><init>(Lorg/ros/internal/node/DefaultNode;Ljava/util/concurrent/CountDownLatch;)V

    invoke-interface {v2, v3}, Lorg/ros/node/topic/Publisher;->addListener(Lorg/ros/node/topic/PublisherListener;)V

    .line 196
    :try_start_26
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_29
    .catch Ljava/lang/InterruptedException; {:try_start_26 .. :try_end_29} :catch_82

    .line 201
    nop

    .line 203
    const/4 v2, 0x0

    move v3, v2

    .line 205
    .local v3, "useSimTime":Z
    :try_start_2c
    iget-object v4, p0, Lorg/ros/internal/node/DefaultNode;->parameterTree:Lorg/ros/node/parameter/ParameterTree;

    sget-object v5, Lorg/ros/Parameters;->USE_SIM_TIME:Lorg/ros/namespace/GraphName;

    .line 206
    invoke-interface {v4, v5}, Lorg/ros/node/parameter/ParameterTree;->has(Lorg/ros/namespace/GraphName;)Z

    move-result v4

    if-eqz v4, :cond_42

    iget-object v4, p0, Lorg/ros/internal/node/DefaultNode;->parameterTree:Lorg/ros/node/parameter/ParameterTree;

    sget-object v5, Lorg/ros/Parameters;->USE_SIM_TIME:Lorg/ros/namespace/GraphName;

    .line 207
    invoke-interface {v4, v5}, Lorg/ros/node/parameter/ParameterTree;->getBoolean(Lorg/ros/namespace/GraphName;)Z

    move-result v4
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_3e} :catch_7a

    if-eqz v4, :cond_42

    const/4 v2, 0x1

    nop

    .line 212
    .end local v3    # "useSimTime":Z
    .local v2, "useSimTime":Z
    :cond_42
    nop

    .line 214
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v3, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object v1, v3

    .line 215
    .local v1, "timeLatch":Ljava/util/concurrent/CountDownLatch;
    if-eqz v2, :cond_5f

    .line 216
    new-instance v3, Lorg/ros/time/ClockTopicTimeProvider;

    invoke-direct {v3, p0}, Lorg/ros/time/ClockTopicTimeProvider;-><init>(Lorg/ros/internal/node/DefaultNode;)V

    .line 217
    .local v3, "clockTopicTimeProvider":Lorg/ros/time/ClockTopicTimeProvider;
    invoke-virtual {v3}, Lorg/ros/time/ClockTopicTimeProvider;->getSubscriber()Lorg/ros/node/topic/Subscriber;

    move-result-object v4

    new-instance v5, Lorg/ros/internal/node/DefaultNode$3;

    invoke-direct {v5, p0, v1}, Lorg/ros/internal/node/DefaultNode$3;-><init>(Lorg/ros/internal/node/DefaultNode;Ljava/util/concurrent/CountDownLatch;)V

    invoke-interface {v4, v5}, Lorg/ros/node/topic/Subscriber;->addSubscriberListener(Lorg/ros/node/topic/SubscriberListener;)V

    .line 224
    iput-object v3, p0, Lorg/ros/internal/node/DefaultNode;->timeProvider:Lorg/ros/time/TimeProvider;

    .line 225
    .end local v3    # "clockTopicTimeProvider":Lorg/ros/time/ClockTopicTimeProvider;
    goto :goto_6a

    .line 226
    :cond_5f
    iget-object v3, p0, Lorg/ros/internal/node/DefaultNode;->nodeConfiguration:Lorg/ros/node/NodeConfiguration;

    invoke-virtual {v3}, Lorg/ros/node/NodeConfiguration;->getTimeProvider()Lorg/ros/time/TimeProvider;

    move-result-object v3

    iput-object v3, p0, Lorg/ros/internal/node/DefaultNode;->timeProvider:Lorg/ros/time/TimeProvider;

    .line 227
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 231
    :goto_6a
    :try_start_6a
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_6d
    .catch Ljava/lang/InterruptedException; {:try_start_6a .. :try_end_6d} :catch_72

    .line 236
    nop

    .line 238
    invoke-direct {p0}, Lorg/ros/internal/node/DefaultNode;->signalOnStart()V

    .line 239
    return-void

    .line 232
    :catch_72
    move-exception v3

    .line 233
    .local v3, "e":Ljava/lang/InterruptedException;
    invoke-direct {p0, v3}, Lorg/ros/internal/node/DefaultNode;->signalOnError(Ljava/lang/Throwable;)V

    .line 234
    invoke-virtual {p0}, Lorg/ros/internal/node/DefaultNode;->shutdown()V

    .line 235
    return-void

    .line 208
    .end local v1    # "timeLatch":Ljava/util/concurrent/CountDownLatch;
    .end local v2    # "useSimTime":Z
    .local v3, "useSimTime":Z
    :catch_7a
    move-exception v1

    .line 209
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lorg/ros/internal/node/DefaultNode;->signalOnError(Ljava/lang/Throwable;)V

    .line 210
    invoke-virtual {p0}, Lorg/ros/internal/node/DefaultNode;->shutdown()V

    .line 211
    return-void

    .line 197
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "useSimTime":Z
    :catch_82
    move-exception v1

    .line 198
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-direct {p0, v1}, Lorg/ros/internal/node/DefaultNode;->signalOnError(Ljava/lang/Throwable;)V

    .line 199
    invoke-virtual {p0}, Lorg/ros/internal/node/DefaultNode;->shutdown()V

    .line 200
    return-void
.end method


# virtual methods
.method public addListener(Lorg/ros/node/NodeListener;)V
    .registers 3
    .param p1, "listener"    # Lorg/ros/node/NodeListener;

    .line 486
    iget-object v0, p0, Lorg/ros/internal/node/DefaultNode;->nodeListeners:Lorg/ros/concurrent/ListenerGroup;

    invoke-virtual {v0, p1}, Lorg/ros/concurrent/ListenerGroup;->add(Ljava/lang/Object;)Lorg/ros/concurrent/EventDispatcher;

    .line 487
    return-void
.end method

.method public executeCancellableLoop(Lorg/ros/concurrent/CancellableLoop;)V
    .registers 3
    .param p1, "cancellableLoop"    # Lorg/ros/concurrent/CancellableLoop;

    .line 579
    iget-object v0, p0, Lorg/ros/internal/node/DefaultNode;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 580
    new-instance v0, Lorg/ros/internal/node/DefaultNode$8;

    invoke-direct {v0, p0, p1}, Lorg/ros/internal/node/DefaultNode$8;-><init>(Lorg/ros/internal/node/DefaultNode;Lorg/ros/concurrent/CancellableLoop;)V

    invoke-virtual {p0, v0}, Lorg/ros/internal/node/DefaultNode;->addListener(Lorg/ros/node/NodeListener;)V

    .line 599
    return-void
.end method

.method getAddress()Ljava/net/InetSocketAddress;
    .registers 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .line 569
    iget-object v0, p0, Lorg/ros/internal/node/DefaultNode;->slaveServer:Lorg/ros/internal/node/server/SlaveServer;

    invoke-virtual {v0}, Lorg/ros/internal/node/server/SlaveServer;->getAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTime()Lorg/ros/message/Time;
    .registers 2

    .line 390
    iget-object v0, p0, Lorg/ros/internal/node/DefaultNode;->timeProvider:Lorg/ros/time/TimeProvider;

    invoke-interface {v0}, Lorg/ros/time/TimeProvider;->getCurrentTime()Lorg/ros/message/Time;

    move-result-object v0

    return-object v0
.end method

.method public getLog()Lorg/apache/commons/logging/Log;
    .registers 2

    .line 400
    iget-object v0, p0, Lorg/ros/internal/node/DefaultNode;->log:Lorg/ros/internal/node/RosoutLogger;

    return-object v0
.end method

.method public getMasterUri()Ljava/net/URI;
    .registers 2

    .line 446
    iget-object v0, p0, Lorg/ros/internal/node/DefaultNode;->masterUri:Ljava/net/URI;

    return-object v0
.end method

.method public getMessageSerializationFactory()Lorg/ros/message/MessageSerializationFactory;
    .registers 2

    .line 466
    iget-object v0, p0, Lorg/ros/internal/node/DefaultNode;->nodeConfiguration:Lorg/ros/node/NodeConfiguration;

    invoke-virtual {v0}, Lorg/ros/node/NodeConfiguration;->getMessageSerializationFactory()Lorg/ros/message/MessageSerializationFactory;

    move-result-object v0

    return-object v0
.end method

.method public getName()Lorg/ros/namespace/GraphName;
    .registers 2

    .line 395
    iget-object v0, p0, Lorg/ros/internal/node/DefaultNode;->nodeName:Lorg/ros/namespace/GraphName;

    return-object v0
.end method

.method public getParameterTree()Lorg/ros/node/parameter/ParameterTree;
    .registers 2

    .line 456
    iget-object v0, p0, Lorg/ros/internal/node/DefaultNode;->parameterTree:Lorg/ros/node/parameter/ParameterTree;

    return-object v0
.end method

.method getRegistrar()Lorg/ros/internal/node/client/Registrar;
    .registers 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .line 243
    iget-object v0, p0, Lorg/ros/internal/node/DefaultNode;->registrar:Lorg/ros/internal/node/client/Registrar;

    return-object v0
.end method

.method public getResolver()Lorg/ros/namespace/NodeNameResolver;
    .registers 2

    .line 451
    iget-object v0, p0, Lorg/ros/internal/node/DefaultNode;->resolver:Lorg/ros/namespace/NodeNameResolver;

    return-object v0
.end method

.method public getScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;
    .registers 2

    .line 574
    iget-object v0, p0, Lorg/ros/internal/node/DefaultNode;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method public getServiceRequestMessageFactory()Lorg/ros/message/MessageFactory;
    .registers 2

    .line 476
    iget-object v0, p0, Lorg/ros/internal/node/DefaultNode;->nodeConfiguration:Lorg/ros/node/NodeConfiguration;

    invoke-virtual {v0}, Lorg/ros/node/NodeConfiguration;->getServiceRequestMessageFactory()Lorg/ros/message/MessageFactory;

    move-result-object v0

    return-object v0
.end method

.method public getServiceResponseMessageFactory()Lorg/ros/message/MessageFactory;
    .registers 2

    .line 481
    iget-object v0, p0, Lorg/ros/internal/node/DefaultNode;->nodeConfiguration:Lorg/ros/node/NodeConfiguration;

    invoke-virtual {v0}, Lorg/ros/node/NodeConfiguration;->getServiceResponseMessageFactory()Lorg/ros/message/MessageFactory;

    move-result-object v0

    return-object v0
.end method

.method public getServiceServer(Ljava/lang/String;)Lorg/ros/node/service/ServiceServer;
    .registers 3
    .param p1, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lorg/ros/node/service/ServiceServer<",
            "TT;TS;>;"
        }
    .end annotation

    .line 343
    invoke-static {p1}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ros/internal/node/DefaultNode;->getServiceServer(Lorg/ros/namespace/GraphName;)Lorg/ros/node/service/ServiceServer;

    move-result-object v0

    return-object v0
.end method

.method public getServiceServer(Lorg/ros/namespace/GraphName;)Lorg/ros/node/service/ServiceServer;
    .registers 3
    .param p1, "serviceName"    # Lorg/ros/namespace/GraphName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/ros/namespace/GraphName;",
            ")",
            "Lorg/ros/node/service/ServiceServer<",
            "TT;TS;>;"
        }
    .end annotation

    .line 338
    iget-object v0, p0, Lorg/ros/internal/node/DefaultNode;->serviceManager:Lorg/ros/internal/node/service/ServiceManager;

    invoke-virtual {v0, p1}, Lorg/ros/internal/node/service/ServiceManager;->getServer(Lorg/ros/namespace/GraphName;)Lorg/ros/internal/node/service/DefaultServiceServer;

    move-result-object v0

    return-object v0
.end method

.method public getTopicMessageFactory()Lorg/ros/message/MessageFactory;
    .registers 2

    .line 471
    iget-object v0, p0, Lorg/ros/internal/node/DefaultNode;->nodeConfiguration:Lorg/ros/node/NodeConfiguration;

    invoke-virtual {v0}, Lorg/ros/node/NodeConfiguration;->getTopicMessageFactory()Lorg/ros/message/MessageFactory;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Ljava/net/URI;
    .registers 2

    .line 461
    iget-object v0, p0, Lorg/ros/internal/node/DefaultNode;->slaveServer:Lorg/ros/internal/node/server/SlaveServer;

    invoke-virtual {v0}, Lorg/ros/internal/node/server/SlaveServer;->getUri()Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public lookupServiceUri(Ljava/lang/String;)Ljava/net/URI;
    .registers 3
    .param p1, "serviceName"    # Ljava/lang/String;

    .line 360
    invoke-static {p1}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ros/internal/node/DefaultNode;->lookupServiceUri(Lorg/ros/namespace/GraphName;)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public lookupServiceUri(Lorg/ros/namespace/GraphName;)Ljava/net/URI;
    .registers 5
    .param p1, "serviceName"    # Lorg/ros/namespace/GraphName;

    .line 348
    iget-object v0, p0, Lorg/ros/internal/node/DefaultNode;->masterClient:Lorg/ros/internal/node/client/MasterClient;

    iget-object v1, p0, Lorg/ros/internal/node/DefaultNode;->slaveServer:Lorg/ros/internal/node/server/SlaveServer;

    .line 349
    invoke-virtual {v1}, Lorg/ros/internal/node/server/SlaveServer;->toNodeIdentifier()Lorg/ros/internal/node/server/NodeIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lorg/ros/internal/node/server/NodeIdentifier;->getName()Lorg/ros/namespace/GraphName;

    move-result-object v1

    .line 350
    invoke-virtual {p0, p1}, Lorg/ros/internal/node/DefaultNode;->resolveName(Lorg/ros/namespace/GraphName;)Lorg/ros/namespace/GraphName;

    move-result-object v2

    invoke-virtual {v2}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v2

    .line 349
    invoke-virtual {v0, v1, v2}, Lorg/ros/internal/node/client/MasterClient;->lookupService(Lorg/ros/namespace/GraphName;Ljava/lang/String;)Lorg/ros/internal/node/response/Response;

    move-result-object v0

    .line 351
    .local v0, "response":Lorg/ros/internal/node/response/Response;, "Lorg/ros/internal/node/response/Response<Ljava/net/URI;>;"
    invoke-virtual {v0}, Lorg/ros/internal/node/response/Response;->getStatusCode()Lorg/ros/internal/node/response/StatusCode;

    move-result-object v1

    sget-object v2, Lorg/ros/internal/node/response/StatusCode;->SUCCESS:Lorg/ros/internal/node/response/StatusCode;

    if-ne v1, v2, :cond_27

    .line 352
    invoke-virtual {v0}, Lorg/ros/internal/node/response/Response;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/URI;

    return-object v1

    .line 354
    :cond_27
    const/4 v1, 0x0

    return-object v1
.end method

.method public newPublisher(Ljava/lang/String;Ljava/lang/String;)Lorg/ros/node/topic/Publisher;
    .registers 4
    .param p1, "topicName"    # Ljava/lang/String;
    .param p2, "messageType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lorg/ros/node/topic/Publisher<",
            "TT;>;"
        }
    .end annotation

    .line 293
    invoke-static {p1}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/ros/internal/node/DefaultNode;->newPublisher(Lorg/ros/namespace/GraphName;Ljava/lang/String;)Lorg/ros/node/topic/Publisher;

    move-result-object v0

    return-object v0
.end method

.method public newPublisher(Lorg/ros/namespace/GraphName;Ljava/lang/String;)Lorg/ros/node/topic/Publisher;
    .registers 8
    .param p1, "topicName"    # Lorg/ros/namespace/GraphName;
    .param p2, "messageType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/ros/namespace/GraphName;",
            "Ljava/lang/String;",
            ")",
            "Lorg/ros/node/topic/Publisher<",
            "TT;>;"
        }
    .end annotation

    .line 282
    invoke-virtual {p0, p1}, Lorg/ros/internal/node/DefaultNode;->resolveName(Lorg/ros/namespace/GraphName;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    .line 283
    .local v0, "resolvedTopicName":Lorg/ros/namespace/GraphName;
    iget-object v1, p0, Lorg/ros/internal/node/DefaultNode;->nodeConfiguration:Lorg/ros/node/NodeConfiguration;

    .line 284
    invoke-virtual {v1}, Lorg/ros/node/NodeConfiguration;->getTopicDescriptionFactory()Lorg/ros/internal/message/topic/TopicDescriptionFactory;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/ros/internal/message/topic/TopicDescriptionFactory;->newFromType(Ljava/lang/String;)Lorg/ros/internal/message/topic/TopicDescription;

    move-result-object v1

    .line 285
    .local v1, "topicDescription":Lorg/ros/internal/message/topic/TopicDescription;
    nop

    .line 286
    invoke-static {v0, v1}, Lorg/ros/internal/node/topic/TopicDeclaration;->newFromTopicName(Lorg/ros/namespace/GraphName;Lorg/ros/internal/message/topic/TopicDescription;)Lorg/ros/internal/node/topic/TopicDeclaration;

    move-result-object v2

    .line 287
    .local v2, "topicDeclaration":Lorg/ros/internal/node/topic/TopicDeclaration;
    invoke-direct {p0, p2}, Lorg/ros/internal/node/DefaultNode;->newMessageSerializer(Ljava/lang/String;)Lorg/ros/message/MessageSerializer;

    move-result-object v3

    .line 288
    .local v3, "serializer":Lorg/ros/message/MessageSerializer;, "Lorg/ros/message/MessageSerializer<TT;>;"
    iget-object v4, p0, Lorg/ros/internal/node/DefaultNode;->publisherFactory:Lorg/ros/internal/node/topic/PublisherFactory;

    invoke-virtual {v4, v2, v3}, Lorg/ros/internal/node/topic/PublisherFactory;->newOrExisting(Lorg/ros/internal/node/topic/TopicDeclaration;Lorg/ros/message/MessageSerializer;)Lorg/ros/node/topic/Publisher;

    move-result-object v4

    return-object v4
.end method

.method public newServiceClient(Ljava/lang/String;Ljava/lang/String;)Lorg/ros/node/service/ServiceClient;
    .registers 4
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "serviceType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lorg/ros/node/service/ServiceClient<",
            "TT;TS;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ros/exception/ServiceNotFoundException;
        }
    .end annotation

    .line 385
    invoke-static {p1}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/ros/internal/node/DefaultNode;->newServiceClient(Lorg/ros/namespace/GraphName;Ljava/lang/String;)Lorg/ros/node/service/ServiceClient;

    move-result-object v0

    return-object v0
.end method

.method public newServiceClient(Lorg/ros/namespace/GraphName;Ljava/lang/String;)Lorg/ros/node/service/ServiceClient;
    .registers 12
    .param p1, "serviceName"    # Lorg/ros/namespace/GraphName;
    .param p2, "serviceType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/ros/namespace/GraphName;",
            "Ljava/lang/String;",
            ")",
            "Lorg/ros/node/service/ServiceClient<",
            "TT;TS;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ros/exception/ServiceNotFoundException;
        }
    .end annotation

    .line 366
    invoke-virtual {p0, p1}, Lorg/ros/internal/node/DefaultNode;->resolveName(Lorg/ros/namespace/GraphName;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    .line 367
    .local v0, "resolvedServiceName":Lorg/ros/namespace/GraphName;
    invoke-virtual {p0, v0}, Lorg/ros/internal/node/DefaultNode;->lookupServiceUri(Lorg/ros/namespace/GraphName;)Ljava/net/URI;

    move-result-object v1

    .line 368
    .local v1, "uri":Ljava/net/URI;
    if-eqz v1, :cond_33

    .line 372
    iget-object v2, p0, Lorg/ros/internal/node/DefaultNode;->nodeConfiguration:Lorg/ros/node/NodeConfiguration;

    .line 373
    invoke-virtual {v2}, Lorg/ros/node/NodeConfiguration;->getServiceDescriptionFactory()Lorg/ros/internal/message/service/ServiceDescriptionFactory;

    move-result-object v2

    invoke-virtual {v2, p2}, Lorg/ros/internal/message/service/ServiceDescriptionFactory;->newFromType(Ljava/lang/String;)Lorg/ros/internal/message/service/ServiceDescription;

    move-result-object v2

    .line 374
    .local v2, "serviceDescription":Lorg/ros/internal/message/service/ServiceDescription;
    new-instance v3, Lorg/ros/internal/node/service/ServiceIdentifier;

    invoke-direct {v3, v0, v1}, Lorg/ros/internal/node/service/ServiceIdentifier;-><init>(Lorg/ros/namespace/GraphName;Ljava/net/URI;)V

    .line 375
    .local v3, "serviceIdentifier":Lorg/ros/internal/node/service/ServiceIdentifier;
    new-instance v4, Lorg/ros/internal/node/service/ServiceDeclaration;

    invoke-direct {v4, v3, v2}, Lorg/ros/internal/node/service/ServiceDeclaration;-><init>(Lorg/ros/internal/node/service/ServiceIdentifier;Lorg/ros/internal/message/service/ServiceDescription;)V

    .line 376
    .local v4, "definition":Lorg/ros/internal/node/service/ServiceDeclaration;
    invoke-direct {p0, p2}, Lorg/ros/internal/node/DefaultNode;->newServiceRequestSerializer(Ljava/lang/String;)Lorg/ros/message/MessageSerializer;

    move-result-object v5

    .line 377
    .local v5, "requestSerializer":Lorg/ros/message/MessageSerializer;, "Lorg/ros/message/MessageSerializer<TT;>;"
    invoke-direct {p0, p2}, Lorg/ros/internal/node/DefaultNode;->newServiceResponseDeserializer(Ljava/lang/String;)Lorg/ros/message/MessageDeserializer;

    move-result-object v6

    .line 378
    .local v6, "responseDeserializer":Lorg/ros/message/MessageDeserializer;, "Lorg/ros/message/MessageDeserializer<TS;>;"
    iget-object v7, p0, Lorg/ros/internal/node/DefaultNode;->serviceFactory:Lorg/ros/internal/node/service/ServiceFactory;

    iget-object v8, p0, Lorg/ros/internal/node/DefaultNode;->nodeConfiguration:Lorg/ros/node/NodeConfiguration;

    .line 379
    invoke-virtual {v8}, Lorg/ros/node/NodeConfiguration;->getServiceRequestMessageFactory()Lorg/ros/message/MessageFactory;

    move-result-object v8

    .line 378
    invoke-virtual {v7, v4, v5, v6, v8}, Lorg/ros/internal/node/service/ServiceFactory;->newClient(Lorg/ros/internal/node/service/ServiceDeclaration;Lorg/ros/message/MessageSerializer;Lorg/ros/message/MessageDeserializer;Lorg/ros/message/MessageFactory;)Lorg/ros/internal/node/service/DefaultServiceClient;

    move-result-object v7

    return-object v7

    .line 369
    .end local v2    # "serviceDescription":Lorg/ros/internal/message/service/ServiceDescription;
    .end local v3    # "serviceIdentifier":Lorg/ros/internal/node/service/ServiceIdentifier;
    .end local v4    # "definition":Lorg/ros/internal/node/service/ServiceDeclaration;
    .end local v5    # "requestSerializer":Lorg/ros/message/MessageSerializer;, "Lorg/ros/message/MessageSerializer<TT;>;"
    .end local v6    # "responseDeserializer":Lorg/ros/message/MessageDeserializer;, "Lorg/ros/message/MessageDeserializer<TS;>;"
    :cond_33
    new-instance v2, Lorg/ros/exception/ServiceNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No such service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/ros/exception/ServiceNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public newServiceServer(Ljava/lang/String;Ljava/lang/String;Lorg/ros/node/service/ServiceResponseBuilder;)Lorg/ros/node/service/ServiceServer;
    .registers 5
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "serviceType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/ros/node/service/ServiceResponseBuilder<",
            "TT;TS;>;)",
            "Lorg/ros/node/service/ServiceServer<",
            "TT;TS;>;"
        }
    .end annotation

    .line 332
    .local p3, "responseBuilder":Lorg/ros/node/service/ServiceResponseBuilder;, "Lorg/ros/node/service/ServiceResponseBuilder<TT;TS;>;"
    invoke-static {p1}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/ros/internal/node/DefaultNode;->newServiceServer(Lorg/ros/namespace/GraphName;Ljava/lang/String;Lorg/ros/node/service/ServiceResponseBuilder;)Lorg/ros/node/service/ServiceServer;

    move-result-object v0

    return-object v0
.end method

.method public newServiceServer(Lorg/ros/namespace/GraphName;Ljava/lang/String;Lorg/ros/node/service/ServiceResponseBuilder;)Lorg/ros/node/service/ServiceServer;
    .registers 15
    .param p1, "serviceName"    # Lorg/ros/namespace/GraphName;
    .param p2, "serviceType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/ros/namespace/GraphName;",
            "Ljava/lang/String;",
            "Lorg/ros/node/service/ServiceResponseBuilder<",
            "TT;TS;>;)",
            "Lorg/ros/node/service/ServiceServer<",
            "TT;TS;>;"
        }
    .end annotation

    .line 316
    .local p3, "responseBuilder":Lorg/ros/node/service/ServiceResponseBuilder;, "Lorg/ros/node/service/ServiceResponseBuilder<TT;TS;>;"
    invoke-virtual {p0, p1}, Lorg/ros/internal/node/DefaultNode;->resolveName(Lorg/ros/namespace/GraphName;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    .line 319
    .local v0, "resolvedServiceName":Lorg/ros/namespace/GraphName;
    new-instance v1, Lorg/ros/internal/node/service/ServiceIdentifier;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lorg/ros/internal/node/service/ServiceIdentifier;-><init>(Lorg/ros/namespace/GraphName;Ljava/net/URI;)V

    .line 320
    .local v1, "identifier":Lorg/ros/internal/node/service/ServiceIdentifier;
    iget-object v2, p0, Lorg/ros/internal/node/DefaultNode;->nodeConfiguration:Lorg/ros/node/NodeConfiguration;

    .line 321
    invoke-virtual {v2}, Lorg/ros/node/NodeConfiguration;->getServiceDescriptionFactory()Lorg/ros/internal/message/service/ServiceDescriptionFactory;

    move-result-object v2

    invoke-virtual {v2, p2}, Lorg/ros/internal/message/service/ServiceDescriptionFactory;->newFromType(Ljava/lang/String;)Lorg/ros/internal/message/service/ServiceDescription;

    move-result-object v2

    .line 322
    .local v2, "serviceDescription":Lorg/ros/internal/message/service/ServiceDescription;
    new-instance v4, Lorg/ros/internal/node/service/ServiceDeclaration;

    invoke-direct {v4, v1, v2}, Lorg/ros/internal/node/service/ServiceDeclaration;-><init>(Lorg/ros/internal/node/service/ServiceIdentifier;Lorg/ros/internal/message/service/ServiceDescription;)V

    .line 323
    .local v4, "definition":Lorg/ros/internal/node/service/ServiceDeclaration;
    invoke-direct {p0, p2}, Lorg/ros/internal/node/DefaultNode;->newServiceRequestDeserializer(Ljava/lang/String;)Lorg/ros/message/MessageDeserializer;

    move-result-object v9

    .line 324
    .local v9, "requestDeserializer":Lorg/ros/message/MessageDeserializer;, "Lorg/ros/message/MessageDeserializer<TT;>;"
    invoke-direct {p0, p2}, Lorg/ros/internal/node/DefaultNode;->newServiceResponseSerializer(Ljava/lang/String;)Lorg/ros/message/MessageSerializer;

    move-result-object v10

    .line 325
    .local v10, "responseSerializer":Lorg/ros/message/MessageSerializer;, "Lorg/ros/message/MessageSerializer<TS;>;"
    iget-object v3, p0, Lorg/ros/internal/node/DefaultNode;->serviceFactory:Lorg/ros/internal/node/service/ServiceFactory;

    iget-object v5, p0, Lorg/ros/internal/node/DefaultNode;->nodeConfiguration:Lorg/ros/node/NodeConfiguration;

    .line 326
    invoke-virtual {v5}, Lorg/ros/node/NodeConfiguration;->getServiceResponseMessageFactory()Lorg/ros/message/MessageFactory;

    move-result-object v8

    .line 325
    move-object v5, p3

    move-object v6, v9

    move-object v7, v10

    invoke-virtual/range {v3 .. v8}, Lorg/ros/internal/node/service/ServiceFactory;->newServer(Lorg/ros/internal/node/service/ServiceDeclaration;Lorg/ros/node/service/ServiceResponseBuilder;Lorg/ros/message/MessageDeserializer;Lorg/ros/message/MessageSerializer;Lorg/ros/message/MessageFactory;)Lorg/ros/internal/node/service/DefaultServiceServer;

    move-result-object v3

    return-object v3
.end method

.method public newSubscriber(Ljava/lang/String;Ljava/lang/String;)Lorg/ros/node/topic/Subscriber;
    .registers 4
    .param p1, "topicName"    # Ljava/lang/String;
    .param p2, "messageType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lorg/ros/node/topic/Subscriber<",
            "TT;>;"
        }
    .end annotation

    .line 310
    invoke-static {p1}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/ros/internal/node/DefaultNode;->newSubscriber(Lorg/ros/namespace/GraphName;Ljava/lang/String;)Lorg/ros/node/topic/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public newSubscriber(Lorg/ros/namespace/GraphName;Ljava/lang/String;)Lorg/ros/node/topic/Subscriber;
    .registers 8
    .param p1, "topicName"    # Lorg/ros/namespace/GraphName;
    .param p2, "messageType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/ros/namespace/GraphName;",
            "Ljava/lang/String;",
            ")",
            "Lorg/ros/node/topic/Subscriber<",
            "TT;>;"
        }
    .end annotation

    .line 298
    invoke-virtual {p0, p1}, Lorg/ros/internal/node/DefaultNode;->resolveName(Lorg/ros/namespace/GraphName;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    .line 299
    .local v0, "resolvedTopicName":Lorg/ros/namespace/GraphName;
    iget-object v1, p0, Lorg/ros/internal/node/DefaultNode;->nodeConfiguration:Lorg/ros/node/NodeConfiguration;

    .line 300
    invoke-virtual {v1}, Lorg/ros/node/NodeConfiguration;->getTopicDescriptionFactory()Lorg/ros/internal/message/topic/TopicDescriptionFactory;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/ros/internal/message/topic/TopicDescriptionFactory;->newFromType(Ljava/lang/String;)Lorg/ros/internal/message/topic/TopicDescription;

    move-result-object v1

    .line 301
    .local v1, "topicDescription":Lorg/ros/internal/message/topic/TopicDescription;
    nop

    .line 302
    invoke-static {v0, v1}, Lorg/ros/internal/node/topic/TopicDeclaration;->newFromTopicName(Lorg/ros/namespace/GraphName;Lorg/ros/internal/message/topic/TopicDescription;)Lorg/ros/internal/node/topic/TopicDeclaration;

    move-result-object v2

    .line 303
    .local v2, "topicDeclaration":Lorg/ros/internal/node/topic/TopicDeclaration;
    invoke-direct {p0, p2}, Lorg/ros/internal/node/DefaultNode;->newMessageDeserializer(Ljava/lang/String;)Lorg/ros/message/MessageDeserializer;

    move-result-object v3

    .line 304
    .local v3, "deserializer":Lorg/ros/message/MessageDeserializer;, "Lorg/ros/message/MessageDeserializer<TT;>;"
    iget-object v4, p0, Lorg/ros/internal/node/DefaultNode;->subscriberFactory:Lorg/ros/internal/node/topic/SubscriberFactory;

    invoke-virtual {v4, v2, v3}, Lorg/ros/internal/node/topic/SubscriberFactory;->newOrExisting(Lorg/ros/internal/node/topic/TopicDeclaration;Lorg/ros/message/MessageDeserializer;)Lorg/ros/node/topic/Subscriber;

    move-result-object v4

    .line 305
    .local v4, "subscriber":Lorg/ros/node/topic/Subscriber;, "Lorg/ros/node/topic/Subscriber<TT;>;"
    return-object v4
.end method

.method public removeListeners()V
    .registers 2

    .line 507
    iget-object v0, p0, Lorg/ros/internal/node/DefaultNode;->nodeListeners:Lorg/ros/concurrent/ListenerGroup;

    invoke-virtual {v0}, Lorg/ros/concurrent/ListenerGroup;->shutdown()V

    .line 508
    return-void
.end method

.method public resolveName(Ljava/lang/String;)Lorg/ros/namespace/GraphName;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 410
    iget-object v0, p0, Lorg/ros/internal/node/DefaultNode;->resolver:Lorg/ros/namespace/NodeNameResolver;

    invoke-static {p1}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ros/namespace/NodeNameResolver;->resolve(Lorg/ros/namespace/GraphName;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    return-object v0
.end method

.method public resolveName(Lorg/ros/namespace/GraphName;)Lorg/ros/namespace/GraphName;
    .registers 3
    .param p1, "name"    # Lorg/ros/namespace/GraphName;

    .line 405
    iget-object v0, p0, Lorg/ros/internal/node/DefaultNode;->resolver:Lorg/ros/namespace/NodeNameResolver;

    invoke-virtual {v0, p1}, Lorg/ros/namespace/NodeNameResolver;->resolve(Lorg/ros/namespace/GraphName;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    return-object v0
.end method

.method public shutdown()V
    .registers 5

    .line 415
    invoke-direct {p0}, Lorg/ros/internal/node/DefaultNode;->signalOnShutdown()V

    .line 419
    iget-object v0, p0, Lorg/ros/internal/node/DefaultNode;->slaveServer:Lorg/ros/internal/node/server/SlaveServer;

    invoke-virtual {v0}, Lorg/ros/internal/node/server/SlaveServer;->shutdown()V

    .line 420
    iget-object v0, p0, Lorg/ros/internal/node/DefaultNode;->topicParticipantManager:Lorg/ros/internal/node/topic/TopicParticipantManager;

    invoke-virtual {v0}, Lorg/ros/internal/node/topic/TopicParticipantManager;->shutdown()V

    .line 421
    iget-object v0, p0, Lorg/ros/internal/node/DefaultNode;->serviceManager:Lorg/ros/internal/node/service/ServiceManager;

    invoke-virtual {v0}, Lorg/ros/internal/node/service/ServiceManager;->getServers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ros/node/service/ServiceServer;

    .line 423
    .local v1, "serviceServer":Lorg/ros/node/service/ServiceServer;, "Lorg/ros/node/service/ServiceServer<**>;"
    :try_start_23
    iget-object v2, p0, Lorg/ros/internal/node/DefaultNode;->masterClient:Lorg/ros/internal/node/client/MasterClient;

    iget-object v3, p0, Lorg/ros/internal/node/DefaultNode;->slaveServer:Lorg/ros/internal/node/server/SlaveServer;

    .line 424
    invoke-virtual {v3}, Lorg/ros/internal/node/server/SlaveServer;->toNodeIdentifier()Lorg/ros/internal/node/server/NodeIdentifier;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lorg/ros/internal/node/client/MasterClient;->unregisterService(Lorg/ros/internal/node/server/NodeIdentifier;Lorg/ros/node/service/ServiceServer;)Lorg/ros/internal/node/response/Response;
    :try_end_2e
    .catch Lorg/ros/internal/node/xmlrpc/XmlRpcTimeoutException; {:try_start_23 .. :try_end_2e} :catch_36
    .catch Lorg/ros/exception/RemoteException; {:try_start_23 .. :try_end_2e} :catch_2f

    goto :goto_3c

    .line 432
    :catch_2f
    move-exception v2

    .line 433
    .local v2, "e":Lorg/ros/exception/RemoteException;
    iget-object v3, p0, Lorg/ros/internal/node/DefaultNode;->log:Lorg/ros/internal/node/RosoutLogger;

    invoke-virtual {v3, v2}, Lorg/ros/internal/node/RosoutLogger;->error(Ljava/lang/Object;)V

    goto :goto_3d

    .line 430
    .end local v2    # "e":Lorg/ros/exception/RemoteException;
    :catch_36
    move-exception v2

    .line 431
    .local v2, "e":Lorg/ros/internal/node/xmlrpc/XmlRpcTimeoutException;
    iget-object v3, p0, Lorg/ros/internal/node/DefaultNode;->log:Lorg/ros/internal/node/RosoutLogger;

    invoke-virtual {v3, v2}, Lorg/ros/internal/node/RosoutLogger;->error(Ljava/lang/Object;)V

    .line 434
    .end local v1    # "serviceServer":Lorg/ros/node/service/ServiceServer;, "Lorg/ros/node/service/ServiceServer<**>;"
    .end local v2    # "e":Lorg/ros/internal/node/xmlrpc/XmlRpcTimeoutException;
    :goto_3c
    nop

    .line 435
    :goto_3d
    goto :goto_17

    .line 436
    :cond_3e
    iget-object v0, p0, Lorg/ros/internal/node/DefaultNode;->serviceManager:Lorg/ros/internal/node/service/ServiceManager;

    invoke-virtual {v0}, Lorg/ros/internal/node/service/ServiceManager;->getClients()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_48
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_58

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ros/node/service/ServiceClient;

    .line 437
    .local v1, "serviceClient":Lorg/ros/node/service/ServiceClient;, "Lorg/ros/node/service/ServiceClient<**>;"
    invoke-interface {v1}, Lorg/ros/node/service/ServiceClient;->shutdown()V

    .line 438
    .end local v1    # "serviceClient":Lorg/ros/node/service/ServiceClient;, "Lorg/ros/node/service/ServiceClient<**>;"
    goto :goto_48

    .line 439
    :cond_58
    iget-object v0, p0, Lorg/ros/internal/node/DefaultNode;->registrar:Lorg/ros/internal/node/client/Registrar;

    invoke-virtual {v0}, Lorg/ros/internal/node/client/Registrar;->shutdown()V

    .line 440
    iget-object v0, p0, Lorg/ros/internal/node/DefaultNode;->slaveServer:Lorg/ros/internal/node/server/SlaveServer;

    invoke-virtual {v0}, Lorg/ros/internal/node/server/SlaveServer;->shutdown()V

    .line 441
    invoke-direct {p0}, Lorg/ros/internal/node/DefaultNode;->signalOnShutdownComplete()V

    .line 442
    return-void
.end method
