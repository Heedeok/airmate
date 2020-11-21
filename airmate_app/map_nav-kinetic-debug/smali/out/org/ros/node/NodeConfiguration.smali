.class public Lorg/ros/node/NodeConfiguration;
.super Ljava/lang/Object;
.source "NodeConfiguration.java"


# static fields
.field public static final DEFAULT_MASTER_URI:Ljava/net/URI;


# instance fields
.field private masterUri:Ljava/net/URI;

.field private messageSerializationFactory:Lorg/ros/message/MessageSerializationFactory;

.field private nodeName:Lorg/ros/namespace/GraphName;

.field private parentResolver:Lorg/ros/namespace/NameResolver;

.field private rosPackagePath:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private rosRoot:Ljava/io/File;

.field private scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private serviceDescriptionFactory:Lorg/ros/internal/message/service/ServiceDescriptionFactory;

.field private serviceRequestMessageFactory:Lorg/ros/message/MessageFactory;

.field private serviceResponseMessageFactory:Lorg/ros/message/MessageFactory;

.field private tcpRosAdvertiseAddressFactory:Lorg/ros/address/AdvertiseAddressFactory;

.field private tcpRosBindAddress:Lorg/ros/address/BindAddress;

.field private timeProvider:Lorg/ros/time/TimeProvider;

.field private topicDescriptionFactory:Lorg/ros/internal/message/topic/TopicDescriptionFactory;

.field private topicMessageFactory:Lorg/ros/message/MessageFactory;

.field private xmlRpcAdvertiseAddressFactory:Lorg/ros/address/AdvertiseAddressFactory;

.field private xmlRpcBindAddress:Lorg/ros/address/BindAddress;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 66
    :try_start_0
    new-instance v0, Ljava/net/URI;

    const-string v1, "http://localhost:11311/"

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/ros/node/NodeConfiguration;->DEFAULT_MASTER_URI:Ljava/net/URI;
    :try_end_9
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_9} :catch_b

    .line 69
    nop

    .line 70
    return-void

    .line 67
    :catch_b
    move-exception v0

    .line 68
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v1, Lorg/ros/exception/RosRuntimeException;

    invoke-direct {v1, v0}, Lorg/ros/exception/RosRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor <init>()V
    .registers 3

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    new-instance v0, Lorg/ros/internal/message/definition/MessageDefinitionReflectionProvider;

    invoke-direct {v0}, Lorg/ros/internal/message/definition/MessageDefinitionReflectionProvider;-><init>()V

    .line 183
    .local v0, "messageDefinitionProvider":Lorg/ros/message/MessageDefinitionProvider;
    new-instance v1, Lorg/ros/internal/message/topic/TopicDescriptionFactory;

    invoke-direct {v1, v0}, Lorg/ros/internal/message/topic/TopicDescriptionFactory;-><init>(Lorg/ros/message/MessageDefinitionProvider;)V

    invoke-virtual {p0, v1}, Lorg/ros/node/NodeConfiguration;->setTopicDescriptionFactory(Lorg/ros/internal/message/topic/TopicDescriptionFactory;)Lorg/ros/node/NodeConfiguration;

    .line 184
    new-instance v1, Lorg/ros/internal/message/DefaultMessageFactory;

    invoke-direct {v1, v0}, Lorg/ros/internal/message/DefaultMessageFactory;-><init>(Lorg/ros/message/MessageDefinitionProvider;)V

    invoke-virtual {p0, v1}, Lorg/ros/node/NodeConfiguration;->setTopicMessageFactory(Lorg/ros/message/MessageFactory;)Lorg/ros/node/NodeConfiguration;

    .line 185
    new-instance v1, Lorg/ros/internal/message/service/ServiceDescriptionFactory;

    invoke-direct {v1, v0}, Lorg/ros/internal/message/service/ServiceDescriptionFactory;-><init>(Lorg/ros/message/MessageDefinitionProvider;)V

    invoke-virtual {p0, v1}, Lorg/ros/node/NodeConfiguration;->setServiceDescriptionFactory(Lorg/ros/internal/message/service/ServiceDescriptionFactory;)Lorg/ros/node/NodeConfiguration;

    .line 186
    new-instance v1, Lorg/ros/internal/message/service/ServiceRequestMessageFactory;

    invoke-direct {v1, v0}, Lorg/ros/internal/message/service/ServiceRequestMessageFactory;-><init>(Lorg/ros/message/MessageDefinitionProvider;)V

    invoke-virtual {p0, v1}, Lorg/ros/node/NodeConfiguration;->setServiceRequestMessageFactory(Lorg/ros/internal/message/service/ServiceRequestMessageFactory;)Lorg/ros/node/NodeConfiguration;

    .line 187
    new-instance v1, Lorg/ros/internal/message/service/ServiceResponseMessageFactory;

    invoke-direct {v1, v0}, Lorg/ros/internal/message/service/ServiceResponseMessageFactory;-><init>(Lorg/ros/message/MessageDefinitionProvider;)V

    invoke-virtual {p0, v1}, Lorg/ros/node/NodeConfiguration;->setServiceResponseMessageFactory(Lorg/ros/internal/message/service/ServiceResponseMessageFactory;)Lorg/ros/node/NodeConfiguration;

    .line 188
    new-instance v1, Lorg/ros/internal/message/DefaultMessageSerializationFactory;

    invoke-direct {v1, v0}, Lorg/ros/internal/message/DefaultMessageSerializationFactory;-><init>(Lorg/ros/message/MessageDefinitionProvider;)V

    invoke-virtual {p0, v1}, Lorg/ros/node/NodeConfiguration;->setMessageSerializationFactory(Lorg/ros/message/MessageSerializationFactory;)Lorg/ros/node/NodeConfiguration;

    .line 189
    invoke-static {}, Lorg/ros/namespace/NameResolver;->newRoot()Lorg/ros/namespace/NameResolver;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/ros/node/NodeConfiguration;->setParentResolver(Lorg/ros/namespace/NameResolver;)Lorg/ros/node/NodeConfiguration;

    .line 190
    new-instance v1, Lorg/ros/time/WallTimeProvider;

    invoke-direct {v1}, Lorg/ros/time/WallTimeProvider;-><init>()V

    invoke-virtual {p0, v1}, Lorg/ros/node/NodeConfiguration;->setTimeProvider(Lorg/ros/time/TimeProvider;)Lorg/ros/node/NodeConfiguration;

    .line 191
    return-void
.end method

.method public static copyOf(Lorg/ros/node/NodeConfiguration;)Lorg/ros/node/NodeConfiguration;
    .registers 3
    .param p0, "nodeConfiguration"    # Lorg/ros/node/NodeConfiguration;

    .line 96
    new-instance v0, Lorg/ros/node/NodeConfiguration;

    invoke-direct {v0}, Lorg/ros/node/NodeConfiguration;-><init>()V

    .line 97
    .local v0, "copy":Lorg/ros/node/NodeConfiguration;
    iget-object v1, p0, Lorg/ros/node/NodeConfiguration;->parentResolver:Lorg/ros/namespace/NameResolver;

    iput-object v1, v0, Lorg/ros/node/NodeConfiguration;->parentResolver:Lorg/ros/namespace/NameResolver;

    .line 98
    iget-object v1, p0, Lorg/ros/node/NodeConfiguration;->masterUri:Ljava/net/URI;

    iput-object v1, v0, Lorg/ros/node/NodeConfiguration;->masterUri:Ljava/net/URI;

    .line 99
    iget-object v1, p0, Lorg/ros/node/NodeConfiguration;->rosRoot:Ljava/io/File;

    iput-object v1, v0, Lorg/ros/node/NodeConfiguration;->rosRoot:Ljava/io/File;

    .line 100
    iget-object v1, p0, Lorg/ros/node/NodeConfiguration;->rosPackagePath:Ljava/util/List;

    iput-object v1, v0, Lorg/ros/node/NodeConfiguration;->rosPackagePath:Ljava/util/List;

    .line 101
    iget-object v1, p0, Lorg/ros/node/NodeConfiguration;->nodeName:Lorg/ros/namespace/GraphName;

    iput-object v1, v0, Lorg/ros/node/NodeConfiguration;->nodeName:Lorg/ros/namespace/GraphName;

    .line 102
    iget-object v1, p0, Lorg/ros/node/NodeConfiguration;->topicDescriptionFactory:Lorg/ros/internal/message/topic/TopicDescriptionFactory;

    iput-object v1, v0, Lorg/ros/node/NodeConfiguration;->topicDescriptionFactory:Lorg/ros/internal/message/topic/TopicDescriptionFactory;

    .line 103
    iget-object v1, p0, Lorg/ros/node/NodeConfiguration;->topicMessageFactory:Lorg/ros/message/MessageFactory;

    iput-object v1, v0, Lorg/ros/node/NodeConfiguration;->topicMessageFactory:Lorg/ros/message/MessageFactory;

    .line 104
    iget-object v1, p0, Lorg/ros/node/NodeConfiguration;->serviceDescriptionFactory:Lorg/ros/internal/message/service/ServiceDescriptionFactory;

    iput-object v1, v0, Lorg/ros/node/NodeConfiguration;->serviceDescriptionFactory:Lorg/ros/internal/message/service/ServiceDescriptionFactory;

    .line 105
    iget-object v1, p0, Lorg/ros/node/NodeConfiguration;->serviceRequestMessageFactory:Lorg/ros/message/MessageFactory;

    iput-object v1, v0, Lorg/ros/node/NodeConfiguration;->serviceRequestMessageFactory:Lorg/ros/message/MessageFactory;

    .line 106
    iget-object v1, p0, Lorg/ros/node/NodeConfiguration;->serviceResponseMessageFactory:Lorg/ros/message/MessageFactory;

    iput-object v1, v0, Lorg/ros/node/NodeConfiguration;->serviceResponseMessageFactory:Lorg/ros/message/MessageFactory;

    .line 107
    iget-object v1, p0, Lorg/ros/node/NodeConfiguration;->messageSerializationFactory:Lorg/ros/message/MessageSerializationFactory;

    iput-object v1, v0, Lorg/ros/node/NodeConfiguration;->messageSerializationFactory:Lorg/ros/message/MessageSerializationFactory;

    .line 108
    iget-object v1, p0, Lorg/ros/node/NodeConfiguration;->tcpRosBindAddress:Lorg/ros/address/BindAddress;

    iput-object v1, v0, Lorg/ros/node/NodeConfiguration;->tcpRosBindAddress:Lorg/ros/address/BindAddress;

    .line 109
    iget-object v1, p0, Lorg/ros/node/NodeConfiguration;->tcpRosAdvertiseAddressFactory:Lorg/ros/address/AdvertiseAddressFactory;

    iput-object v1, v0, Lorg/ros/node/NodeConfiguration;->tcpRosAdvertiseAddressFactory:Lorg/ros/address/AdvertiseAddressFactory;

    .line 110
    iget-object v1, p0, Lorg/ros/node/NodeConfiguration;->xmlRpcBindAddress:Lorg/ros/address/BindAddress;

    iput-object v1, v0, Lorg/ros/node/NodeConfiguration;->xmlRpcBindAddress:Lorg/ros/address/BindAddress;

    .line 111
    iget-object v1, p0, Lorg/ros/node/NodeConfiguration;->xmlRpcAdvertiseAddressFactory:Lorg/ros/address/AdvertiseAddressFactory;

    iput-object v1, v0, Lorg/ros/node/NodeConfiguration;->xmlRpcAdvertiseAddressFactory:Lorg/ros/address/AdvertiseAddressFactory;

    .line 112
    iget-object v1, p0, Lorg/ros/node/NodeConfiguration;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object v1, v0, Lorg/ros/node/NodeConfiguration;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 113
    iget-object v1, p0, Lorg/ros/node/NodeConfiguration;->timeProvider:Lorg/ros/time/TimeProvider;

    iput-object v1, v0, Lorg/ros/node/NodeConfiguration;->timeProvider:Lorg/ros/time/TimeProvider;

    .line 114
    return-object v0
.end method

.method public static newPrivate()Lorg/ros/node/NodeConfiguration;
    .registers 1

    .line 178
    sget-object v0, Lorg/ros/node/NodeConfiguration;->DEFAULT_MASTER_URI:Ljava/net/URI;

    invoke-static {v0}, Lorg/ros/node/NodeConfiguration;->newPrivate(Ljava/net/URI;)Lorg/ros/node/NodeConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public static newPrivate(Ljava/net/URI;)Lorg/ros/node/NodeConfiguration;
    .registers 3
    .param p0, "masterUri"    # Ljava/net/URI;

    .line 162
    new-instance v0, Lorg/ros/node/NodeConfiguration;

    invoke-direct {v0}, Lorg/ros/node/NodeConfiguration;-><init>()V

    .line 163
    .local v0, "configuration":Lorg/ros/node/NodeConfiguration;
    invoke-static {}, Lorg/ros/address/BindAddress;->newPrivate()Lorg/ros/address/BindAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ros/node/NodeConfiguration;->setXmlRpcBindAddress(Lorg/ros/address/BindAddress;)Lorg/ros/node/NodeConfiguration;

    .line 164
    new-instance v1, Lorg/ros/address/PrivateAdvertiseAddressFactory;

    invoke-direct {v1}, Lorg/ros/address/PrivateAdvertiseAddressFactory;-><init>()V

    invoke-virtual {v0, v1}, Lorg/ros/node/NodeConfiguration;->setXmlRpcAdvertiseAddressFactory(Lorg/ros/address/AdvertiseAddressFactory;)Lorg/ros/node/NodeConfiguration;

    .line 165
    invoke-static {}, Lorg/ros/address/BindAddress;->newPrivate()Lorg/ros/address/BindAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ros/node/NodeConfiguration;->setTcpRosBindAddress(Lorg/ros/address/BindAddress;)Lorg/ros/node/NodeConfiguration;

    .line 166
    new-instance v1, Lorg/ros/address/PrivateAdvertiseAddressFactory;

    invoke-direct {v1}, Lorg/ros/address/PrivateAdvertiseAddressFactory;-><init>()V

    invoke-virtual {v0, v1}, Lorg/ros/node/NodeConfiguration;->setTcpRosAdvertiseAddressFactory(Lorg/ros/address/AdvertiseAddressFactory;)Lorg/ros/node/NodeConfiguration;

    .line 167
    invoke-virtual {v0, p0}, Lorg/ros/node/NodeConfiguration;->setMasterUri(Ljava/net/URI;)Lorg/ros/node/NodeConfiguration;

    .line 168
    return-object v0
.end method

.method public static newPublic(Ljava/lang/String;)Lorg/ros/node/NodeConfiguration;
    .registers 2
    .param p0, "host"    # Ljava/lang/String;

    .line 149
    sget-object v0, Lorg/ros/node/NodeConfiguration;->DEFAULT_MASTER_URI:Ljava/net/URI;

    invoke-static {p0, v0}, Lorg/ros/node/NodeConfiguration;->newPublic(Ljava/lang/String;Ljava/net/URI;)Lorg/ros/node/NodeConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public static newPublic(Ljava/lang/String;Ljava/net/URI;)Lorg/ros/node/NodeConfiguration;
    .registers 4
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "masterUri"    # Ljava/net/URI;

    .line 130
    new-instance v0, Lorg/ros/node/NodeConfiguration;

    invoke-direct {v0}, Lorg/ros/node/NodeConfiguration;-><init>()V

    .line 131
    .local v0, "configuration":Lorg/ros/node/NodeConfiguration;
    invoke-static {}, Lorg/ros/address/BindAddress;->newPublic()Lorg/ros/address/BindAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ros/node/NodeConfiguration;->setXmlRpcBindAddress(Lorg/ros/address/BindAddress;)Lorg/ros/node/NodeConfiguration;

    .line 132
    new-instance v1, Lorg/ros/address/PublicAdvertiseAddressFactory;

    invoke-direct {v1, p0}, Lorg/ros/address/PublicAdvertiseAddressFactory;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/ros/node/NodeConfiguration;->setXmlRpcAdvertiseAddressFactory(Lorg/ros/address/AdvertiseAddressFactory;)Lorg/ros/node/NodeConfiguration;

    .line 133
    invoke-static {}, Lorg/ros/address/BindAddress;->newPublic()Lorg/ros/address/BindAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ros/node/NodeConfiguration;->setTcpRosBindAddress(Lorg/ros/address/BindAddress;)Lorg/ros/node/NodeConfiguration;

    .line 134
    new-instance v1, Lorg/ros/address/PublicAdvertiseAddressFactory;

    invoke-direct {v1, p0}, Lorg/ros/address/PublicAdvertiseAddressFactory;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/ros/node/NodeConfiguration;->setTcpRosAdvertiseAddressFactory(Lorg/ros/address/AdvertiseAddressFactory;)Lorg/ros/node/NodeConfiguration;

    .line 135
    invoke-virtual {v0, p1}, Lorg/ros/node/NodeConfiguration;->setMasterUri(Ljava/net/URI;)Lorg/ros/node/NodeConfiguration;

    .line 136
    return-object v0
.end method


# virtual methods
.method public getMasterUri()Ljava/net/URI;
    .registers 2

    .line 218
    iget-object v0, p0, Lorg/ros/node/NodeConfiguration;->masterUri:Ljava/net/URI;

    return-object v0
.end method

.method public getMessageSerializationFactory()Lorg/ros/message/MessageSerializationFactory;
    .registers 2

    .line 346
    iget-object v0, p0, Lorg/ros/node/NodeConfiguration;->messageSerializationFactory:Lorg/ros/message/MessageSerializationFactory;

    return-object v0
.end method

.method public getNodeName()Lorg/ros/namespace/GraphName;
    .registers 2

    .line 295
    iget-object v0, p0, Lorg/ros/node/NodeConfiguration;->nodeName:Lorg/ros/namespace/GraphName;

    return-object v0
.end method

.method public getParentResolver()Lorg/ros/namespace/NameResolver;
    .registers 2

    .line 197
    iget-object v0, p0, Lorg/ros/node/NodeConfiguration;->parentResolver:Lorg/ros/namespace/NameResolver;

    return-object v0
.end method

.method public getRosPackagePath()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 270
    iget-object v0, p0, Lorg/ros/node/NodeConfiguration;->rosPackagePath:Ljava/util/List;

    return-object v0
.end method

.method public getRosRoot()Ljava/io/File;
    .registers 2

    .line 242
    iget-object v0, p0, Lorg/ros/node/NodeConfiguration;->rosRoot:Ljava/io/File;

    return-object v0
.end method

.method public getServiceDescriptionFactory()Lorg/ros/internal/message/service/ServiceDescriptionFactory;
    .registers 2

    .line 431
    iget-object v0, p0, Lorg/ros/node/NodeConfiguration;->serviceDescriptionFactory:Lorg/ros/internal/message/service/ServiceDescriptionFactory;

    return-object v0
.end method

.method public getServiceRequestMessageFactory()Lorg/ros/message/MessageFactory;
    .registers 2

    .line 386
    iget-object v0, p0, Lorg/ros/node/NodeConfiguration;->serviceRequestMessageFactory:Lorg/ros/message/MessageFactory;

    return-object v0
.end method

.method public getServiceResponseMessageFactory()Lorg/ros/message/MessageFactory;
    .registers 2

    .line 401
    iget-object v0, p0, Lorg/ros/node/NodeConfiguration;->serviceResponseMessageFactory:Lorg/ros/message/MessageFactory;

    return-object v0
.end method

.method public getTcpRosAdvertiseAddress()Lorg/ros/address/AdvertiseAddress;
    .registers 2

    .line 484
    iget-object v0, p0, Lorg/ros/node/NodeConfiguration;->tcpRosAdvertiseAddressFactory:Lorg/ros/address/AdvertiseAddressFactory;

    invoke-interface {v0}, Lorg/ros/address/AdvertiseAddressFactory;->newDefault()Lorg/ros/address/AdvertiseAddress;

    move-result-object v0

    return-object v0
.end method

.method public getTcpRosAdvertiseAddressFactory()Lorg/ros/address/AdvertiseAddressFactory;
    .registers 2

    .line 461
    iget-object v0, p0, Lorg/ros/node/NodeConfiguration;->tcpRosAdvertiseAddressFactory:Lorg/ros/address/AdvertiseAddressFactory;

    return-object v0
.end method

.method public getTcpRosBindAddress()Lorg/ros/address/BindAddress;
    .registers 2

    .line 440
    iget-object v0, p0, Lorg/ros/node/NodeConfiguration;->tcpRosBindAddress:Lorg/ros/address/BindAddress;

    return-object v0
.end method

.method public getTimeProvider()Lorg/ros/time/TimeProvider;
    .registers 2

    .line 548
    iget-object v0, p0, Lorg/ros/node/NodeConfiguration;->timeProvider:Lorg/ros/time/TimeProvider;

    return-object v0
.end method

.method public getTopicDescriptionFactory()Lorg/ros/internal/message/topic/TopicDescriptionFactory;
    .registers 2

    .line 416
    iget-object v0, p0, Lorg/ros/node/NodeConfiguration;->topicDescriptionFactory:Lorg/ros/internal/message/topic/TopicDescriptionFactory;

    return-object v0
.end method

.method public getTopicMessageFactory()Lorg/ros/message/MessageFactory;
    .registers 2

    .line 371
    iget-object v0, p0, Lorg/ros/node/NodeConfiguration;->topicMessageFactory:Lorg/ros/message/MessageFactory;

    return-object v0
.end method

.method public getXmlRpcAdvertiseAddress()Lorg/ros/address/AdvertiseAddress;
    .registers 2

    .line 516
    iget-object v0, p0, Lorg/ros/node/NodeConfiguration;->xmlRpcAdvertiseAddressFactory:Lorg/ros/address/AdvertiseAddressFactory;

    invoke-interface {v0}, Lorg/ros/address/AdvertiseAddressFactory;->newDefault()Lorg/ros/address/AdvertiseAddress;

    move-result-object v0

    return-object v0
.end method

.method public getXmlRpcAdvertiseAddressFactory()Lorg/ros/address/AdvertiseAddressFactory;
    .registers 2

    .line 527
    iget-object v0, p0, Lorg/ros/node/NodeConfiguration;->xmlRpcAdvertiseAddressFactory:Lorg/ros/address/AdvertiseAddressFactory;

    return-object v0
.end method

.method public getXmlRpcBindAddress()Lorg/ros/address/BindAddress;
    .registers 2

    .line 494
    iget-object v0, p0, Lorg/ros/node/NodeConfiguration;->xmlRpcBindAddress:Lorg/ros/address/BindAddress;

    return-object v0
.end method

.method public setDefaultNodeName(Ljava/lang/String;)Lorg/ros/node/NodeConfiguration;
    .registers 3
    .param p1, "nodeName"    # Ljava/lang/String;

    .line 339
    invoke-static {p1}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ros/node/NodeConfiguration;->setDefaultNodeName(Lorg/ros/namespace/GraphName;)Lorg/ros/node/NodeConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public setDefaultNodeName(Lorg/ros/namespace/GraphName;)Lorg/ros/node/NodeConfiguration;
    .registers 3
    .param p1, "nodeName"    # Lorg/ros/namespace/GraphName;

    .line 325
    iget-object v0, p0, Lorg/ros/node/NodeConfiguration;->nodeName:Lorg/ros/namespace/GraphName;

    if-nez v0, :cond_7

    .line 326
    invoke-virtual {p0, p1}, Lorg/ros/node/NodeConfiguration;->setNodeName(Lorg/ros/namespace/GraphName;)Lorg/ros/node/NodeConfiguration;

    .line 328
    :cond_7
    return-object p0
.end method

.method public setMasterUri(Ljava/net/URI;)Lorg/ros/node/NodeConfiguration;
    .registers 2
    .param p1, "masterUri"    # Ljava/net/URI;

    .line 231
    iput-object p1, p0, Lorg/ros/node/NodeConfiguration;->masterUri:Ljava/net/URI;

    .line 232
    return-object p0
.end method

.method public setMessageSerializationFactory(Lorg/ros/message/MessageSerializationFactory;)Lorg/ros/node/NodeConfiguration;
    .registers 2
    .param p1, "messageSerializationFactory"    # Lorg/ros/message/MessageSerializationFactory;

    .line 356
    iput-object p1, p0, Lorg/ros/node/NodeConfiguration;->messageSerializationFactory:Lorg/ros/message/MessageSerializationFactory;

    .line 357
    return-object p0
.end method

.method public setNodeName(Ljava/lang/String;)Lorg/ros/node/NodeConfiguration;
    .registers 3
    .param p1, "nodeName"    # Ljava/lang/String;

    .line 314
    invoke-static {p1}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ros/node/NodeConfiguration;->setNodeName(Lorg/ros/namespace/GraphName;)Lorg/ros/node/NodeConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public setNodeName(Lorg/ros/namespace/GraphName;)Lorg/ros/node/NodeConfiguration;
    .registers 2
    .param p1, "nodeName"    # Lorg/ros/namespace/GraphName;

    .line 304
    iput-object p1, p0, Lorg/ros/node/NodeConfiguration;->nodeName:Lorg/ros/namespace/GraphName;

    .line 305
    return-object p0
.end method

.method public setParentResolver(Lorg/ros/namespace/NameResolver;)Lorg/ros/node/NodeConfiguration;
    .registers 2
    .param p1, "resolver"    # Lorg/ros/namespace/NameResolver;

    .line 206
    iput-object p1, p0, Lorg/ros/node/NodeConfiguration;->parentResolver:Lorg/ros/namespace/NameResolver;

    .line 207
    return-object p0
.end method

.method public setRosPackagePath(Ljava/util/List;)Lorg/ros/node/NodeConfiguration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)",
            "Lorg/ros/node/NodeConfiguration;"
        }
    .end annotation

    .line 287
    .local p1, "rosPackagePath":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    iput-object p1, p0, Lorg/ros/node/NodeConfiguration;->rosPackagePath:Ljava/util/List;

    .line 288
    return-object p0
.end method

.method public setRosRoot(Ljava/io/File;)Lorg/ros/node/NodeConfiguration;
    .registers 2
    .param p1, "rosRoot"    # Ljava/io/File;

    .line 254
    iput-object p1, p0, Lorg/ros/node/NodeConfiguration;->rosRoot:Ljava/io/File;

    .line 255
    return-object p0
.end method

.method public setServiceDescriptionFactory(Lorg/ros/internal/message/service/ServiceDescriptionFactory;)Lorg/ros/node/NodeConfiguration;
    .registers 2
    .param p1, "serviceDescriptionFactory"    # Lorg/ros/internal/message/service/ServiceDescriptionFactory;

    .line 426
    iput-object p1, p0, Lorg/ros/node/NodeConfiguration;->serviceDescriptionFactory:Lorg/ros/internal/message/service/ServiceDescriptionFactory;

    .line 427
    return-object p0
.end method

.method public setServiceRequestMessageFactory(Lorg/ros/internal/message/service/ServiceRequestMessageFactory;)Lorg/ros/node/NodeConfiguration;
    .registers 2
    .param p1, "serviceRequestMessageFactory"    # Lorg/ros/internal/message/service/ServiceRequestMessageFactory;

    .line 381
    iput-object p1, p0, Lorg/ros/node/NodeConfiguration;->serviceRequestMessageFactory:Lorg/ros/message/MessageFactory;

    .line 382
    return-object p0
.end method

.method public setServiceResponseMessageFactory(Lorg/ros/internal/message/service/ServiceResponseMessageFactory;)Lorg/ros/node/NodeConfiguration;
    .registers 2
    .param p1, "serviceResponseMessageFactory"    # Lorg/ros/internal/message/service/ServiceResponseMessageFactory;

    .line 396
    iput-object p1, p0, Lorg/ros/node/NodeConfiguration;->serviceResponseMessageFactory:Lorg/ros/message/MessageFactory;

    .line 397
    return-object p0
.end method

.method public setTcpRosAdvertiseAddressFactory(Lorg/ros/address/AdvertiseAddressFactory;)Lorg/ros/node/NodeConfiguration;
    .registers 2
    .param p1, "tcpRosAdvertiseAddressFactory"    # Lorg/ros/address/AdvertiseAddressFactory;

    .line 474
    iput-object p1, p0, Lorg/ros/node/NodeConfiguration;->tcpRosAdvertiseAddressFactory:Lorg/ros/address/AdvertiseAddressFactory;

    .line 475
    return-object p0
.end method

.method public setTcpRosBindAddress(Lorg/ros/address/BindAddress;)Lorg/ros/node/NodeConfiguration;
    .registers 2
    .param p1, "tcpRosBindAddress"    # Lorg/ros/address/BindAddress;

    .line 450
    iput-object p1, p0, Lorg/ros/node/NodeConfiguration;->tcpRosBindAddress:Lorg/ros/address/BindAddress;

    .line 451
    return-object p0
.end method

.method public setTimeProvider(Lorg/ros/time/TimeProvider;)Lorg/ros/node/NodeConfiguration;
    .registers 2
    .param p1, "timeProvider"    # Lorg/ros/time/TimeProvider;

    .line 559
    iput-object p1, p0, Lorg/ros/node/NodeConfiguration;->timeProvider:Lorg/ros/time/TimeProvider;

    .line 560
    return-object p0
.end method

.method public setTopicDescriptionFactory(Lorg/ros/internal/message/topic/TopicDescriptionFactory;)Lorg/ros/node/NodeConfiguration;
    .registers 2
    .param p1, "topicDescriptionFactory"    # Lorg/ros/internal/message/topic/TopicDescriptionFactory;

    .line 411
    iput-object p1, p0, Lorg/ros/node/NodeConfiguration;->topicDescriptionFactory:Lorg/ros/internal/message/topic/TopicDescriptionFactory;

    .line 412
    return-object p0
.end method

.method public setTopicMessageFactory(Lorg/ros/message/MessageFactory;)Lorg/ros/node/NodeConfiguration;
    .registers 2
    .param p1, "topicMessageFactory"    # Lorg/ros/message/MessageFactory;

    .line 366
    iput-object p1, p0, Lorg/ros/node/NodeConfiguration;->topicMessageFactory:Lorg/ros/message/MessageFactory;

    .line 367
    return-object p0
.end method

.method public setXmlRpcAdvertiseAddressFactory(Lorg/ros/address/AdvertiseAddressFactory;)Lorg/ros/node/NodeConfiguration;
    .registers 2
    .param p1, "xmlRpcAdvertiseAddressFactory"    # Lorg/ros/address/AdvertiseAddressFactory;

    .line 540
    iput-object p1, p0, Lorg/ros/node/NodeConfiguration;->xmlRpcAdvertiseAddressFactory:Lorg/ros/address/AdvertiseAddressFactory;

    .line 541
    return-object p0
.end method

.method public setXmlRpcBindAddress(Lorg/ros/address/BindAddress;)Lorg/ros/node/NodeConfiguration;
    .registers 2
    .param p1, "xmlRpcBindAddress"    # Lorg/ros/address/BindAddress;

    .line 505
    iput-object p1, p0, Lorg/ros/node/NodeConfiguration;->xmlRpcBindAddress:Lorg/ros/address/BindAddress;

    .line 506
    return-object p0
.end method
