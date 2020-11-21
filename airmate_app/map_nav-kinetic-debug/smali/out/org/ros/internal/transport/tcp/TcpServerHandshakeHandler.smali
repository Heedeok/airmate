.class public Lorg/ros/internal/transport/tcp/TcpServerHandshakeHandler;
.super Lorg/jboss/netty/channel/SimpleChannelHandler;
.source "TcpServerHandshakeHandler.java"


# instance fields
.field private final serviceManager:Lorg/ros/internal/node/service/ServiceManager;

.field private final topicParticipantManager:Lorg/ros/internal/node/topic/TopicParticipantManager;


# direct methods
.method public constructor <init>(Lorg/ros/internal/node/topic/TopicParticipantManager;Lorg/ros/internal/node/service/ServiceManager;)V
    .registers 3
    .param p1, "topicParticipantManager"    # Lorg/ros/internal/node/topic/TopicParticipantManager;
    .param p2, "serviceManager"    # Lorg/ros/internal/node/service/ServiceManager;

    .line 54
    invoke-direct {p0}, Lorg/jboss/netty/channel/SimpleChannelHandler;-><init>()V

    .line 55
    iput-object p1, p0, Lorg/ros/internal/transport/tcp/TcpServerHandshakeHandler;->topicParticipantManager:Lorg/ros/internal/node/topic/TopicParticipantManager;

    .line 56
    iput-object p2, p0, Lorg/ros/internal/transport/tcp/TcpServerHandshakeHandler;->serviceManager:Lorg/ros/internal/node/service/ServiceManager;

    .line 57
    return-void
.end method

.method private handleServiceHandshake(Lorg/jboss/netty/channel/MessageEvent;Lorg/jboss/netty/channel/ChannelPipeline;Lorg/ros/internal/transport/ConnectionHeader;)V
    .registers 10
    .param p1, "e"    # Lorg/jboss/netty/channel/MessageEvent;
    .param p2, "pipeline"    # Lorg/jboss/netty/channel/ChannelPipeline;
    .param p3, "incomingHeader"    # Lorg/ros/internal/transport/ConnectionHeader;

    .line 73
    const-string v0, "service"

    invoke-virtual {p3, v0}, Lorg/ros/internal/transport/ConnectionHeader;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    .line 74
    .local v0, "serviceName":Lorg/ros/namespace/GraphName;
    iget-object v1, p0, Lorg/ros/internal/transport/tcp/TcpServerHandshakeHandler;->serviceManager:Lorg/ros/internal/node/service/ServiceManager;

    invoke-virtual {v1, v0}, Lorg/ros/internal/node/service/ServiceManager;->hasServer(Lorg/ros/namespace/GraphName;)Z

    move-result v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 75
    iget-object v1, p0, Lorg/ros/internal/transport/tcp/TcpServerHandshakeHandler;->serviceManager:Lorg/ros/internal/node/service/ServiceManager;

    invoke-virtual {v1, v0}, Lorg/ros/internal/node/service/ServiceManager;->getServer(Lorg/ros/namespace/GraphName;)Lorg/ros/internal/node/service/DefaultServiceServer;

    move-result-object v1

    .line 76
    .local v1, "serviceServer":Lorg/ros/internal/node/service/DefaultServiceServer;, "Lorg/ros/internal/node/service/DefaultServiceServer<**>;"
    invoke-interface {p1}, Lorg/jboss/netty/channel/MessageEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v2

    invoke-virtual {v1, p3}, Lorg/ros/internal/node/service/DefaultServiceServer;->finishHandshake(Lorg/ros/internal/transport/ConnectionHeader;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/jboss/netty/channel/Channel;->write(Ljava/lang/Object;)Lorg/jboss/netty/channel/ChannelFuture;

    .line 77
    const-string v2, "probe"

    invoke-virtual {p3, v2}, Lorg/ros/internal/transport/ConnectionHeader;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, "probe":Ljava/lang/String;
    if-eqz v2, :cond_3c

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 79
    invoke-interface {p1}, Lorg/jboss/netty/channel/MessageEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v3

    invoke-interface {v3}, Lorg/jboss/netty/channel/Channel;->close()Lorg/jboss/netty/channel/ChannelFuture;

    goto :goto_51

    .line 81
    :cond_3c
    const-string v3, "LengthFieldPrepender"

    const-string v4, "ServiceResponseEncoder"

    new-instance v5, Lorg/ros/internal/node/service/ServiceResponseEncoder;

    invoke-direct {v5}, Lorg/ros/internal/node/service/ServiceResponseEncoder;-><init>()V

    invoke-interface {p2, v3, v4, v5}, Lorg/jboss/netty/channel/ChannelPipeline;->replace(Ljava/lang/String;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)Lorg/jboss/netty/channel/ChannelHandler;

    .line 83
    const-string v3, "ServiceRequestHandler"

    invoke-virtual {v1}, Lorg/ros/internal/node/service/DefaultServiceServer;->newRequestHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v4

    invoke-interface {p2, p0, v3, v4}, Lorg/jboss/netty/channel/ChannelPipeline;->replace(Lorg/jboss/netty/channel/ChannelHandler;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    .line 85
    :goto_51
    return-void
.end method

.method private handleSubscriberHandshake(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;Lorg/jboss/netty/channel/ChannelPipeline;Lorg/ros/internal/transport/ConnectionHeader;)V
    .registers 14
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/MessageEvent;
    .param p3, "pipeline"    # Lorg/jboss/netty/channel/ChannelPipeline;
    .param p4, "incomingConnectionHeader"    # Lorg/ros/internal/transport/ConnectionHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .line 90
    const-string v0, "topic"

    invoke-virtual {p4, v0}, Lorg/ros/internal/transport/ConnectionHeader;->hasField(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "Handshake header missing field: topic"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 92
    const-string v0, "topic"

    .line 93
    invoke-virtual {p4, v0}, Lorg/ros/internal/transport/ConnectionHeader;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    .line 94
    .local v0, "topicName":Lorg/ros/namespace/GraphName;
    iget-object v1, p0, Lorg/ros/internal/transport/tcp/TcpServerHandshakeHandler;->topicParticipantManager:Lorg/ros/internal/node/topic/TopicParticipantManager;

    invoke-virtual {v1, v0}, Lorg/ros/internal/node/topic/TopicParticipantManager;->hasPublisher(Lorg/ros/namespace/GraphName;)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No publisher for topic: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 96
    iget-object v1, p0, Lorg/ros/internal/transport/tcp/TcpServerHandshakeHandler;->topicParticipantManager:Lorg/ros/internal/node/topic/TopicParticipantManager;

    invoke-virtual {v1, v0}, Lorg/ros/internal/node/topic/TopicParticipantManager;->getPublisher(Lorg/ros/namespace/GraphName;)Lorg/ros/internal/node/topic/DefaultPublisher;

    move-result-object v1

    .line 97
    .local v1, "publisher":Lorg/ros/internal/node/topic/DefaultPublisher;, "Lorg/ros/internal/node/topic/DefaultPublisher<*>;"
    invoke-virtual {v1, p4}, Lorg/ros/internal/node/topic/DefaultPublisher;->finishHandshake(Lorg/ros/internal/transport/ConnectionHeader;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    .line 98
    .local v2, "outgoingBuffer":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v3

    .line 99
    .local v3, "channel":Lorg/jboss/netty/channel/Channel;
    invoke-interface {v3, v2}, Lorg/jboss/netty/channel/Channel;->write(Ljava/lang/Object;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v4

    invoke-interface {v4}, Lorg/jboss/netty/channel/ChannelFuture;->await()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v4

    .line 100
    .local v4, "future":Lorg/jboss/netty/channel/ChannelFuture;
    invoke-interface {v4}, Lorg/jboss/netty/channel/ChannelFuture;->isSuccess()Z

    move-result v5

    if-eqz v5, :cond_6d

    .line 103
    const-string v5, "callerid"

    invoke-virtual {p4, v5}, Lorg/ros/internal/transport/ConnectionHeader;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 104
    .local v5, "nodeName":Ljava/lang/String;
    new-instance v6, Lorg/ros/internal/node/topic/SubscriberIdentifier;

    invoke-static {v5}, Lorg/ros/internal/node/server/NodeIdentifier;->forName(Ljava/lang/String;)Lorg/ros/internal/node/server/NodeIdentifier;

    move-result-object v7

    new-instance v8, Lorg/ros/internal/node/topic/TopicIdentifier;

    invoke-direct {v8, v0}, Lorg/ros/internal/node/topic/TopicIdentifier;-><init>(Lorg/ros/namespace/GraphName;)V

    invoke-direct {v6, v7, v8}, Lorg/ros/internal/node/topic/SubscriberIdentifier;-><init>(Lorg/ros/internal/node/server/NodeIdentifier;Lorg/ros/internal/node/topic/TopicIdentifier;)V

    invoke-virtual {v1, v6, v3}, Lorg/ros/internal/node/topic/DefaultPublisher;->addSubscriber(Lorg/ros/internal/node/topic/SubscriberIdentifier;Lorg/jboss/netty/channel/Channel;)V

    .line 110
    const-string v6, "DiscardHandler"

    new-instance v7, Lorg/jboss/netty/channel/SimpleChannelHandler;

    invoke-direct {v7}, Lorg/jboss/netty/channel/SimpleChannelHandler;-><init>()V

    invoke-interface {p3, p0, v6, v7}, Lorg/jboss/netty/channel/ChannelPipeline;->replace(Lorg/jboss/netty/channel/ChannelHandler;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    .line 111
    return-void

    .line 101
    .end local v5    # "nodeName":Ljava/lang/String;
    :cond_6d
    new-instance v5, Lorg/ros/exception/RosRuntimeException;

    invoke-interface {v4}, Lorg/jboss/netty/channel/ChannelFuture;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/ros/exception/RosRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method


# virtual methods
.method public messageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;)V
    .registers 7
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/MessageEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 61
    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 62
    .local v0, "incomingBuffer":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    invoke-interface {v1}, Lorg/jboss/netty/channel/Channel;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v1

    .line 63
    .local v1, "pipeline":Lorg/jboss/netty/channel/ChannelPipeline;
    invoke-static {v0}, Lorg/ros/internal/transport/ConnectionHeader;->decode(Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/ros/internal/transport/ConnectionHeader;

    move-result-object v2

    .line 64
    .local v2, "incomingHeader":Lorg/ros/internal/transport/ConnectionHeader;
    const-string v3, "service"

    invoke-virtual {v2, v3}, Lorg/ros/internal/transport/ConnectionHeader;->hasField(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 65
    invoke-direct {p0, p2, v1, v2}, Lorg/ros/internal/transport/tcp/TcpServerHandshakeHandler;->handleServiceHandshake(Lorg/jboss/netty/channel/MessageEvent;Lorg/jboss/netty/channel/ChannelPipeline;Lorg/ros/internal/transport/ConnectionHeader;)V

    goto :goto_21

    .line 67
    :cond_1e
    invoke-direct {p0, p1, p2, v1, v2}, Lorg/ros/internal/transport/tcp/TcpServerHandshakeHandler;->handleSubscriberHandshake(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;Lorg/jboss/netty/channel/ChannelPipeline;Lorg/ros/internal/transport/ConnectionHeader;)V

    .line 69
    :goto_21
    return-void
.end method
