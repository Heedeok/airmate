.class public Lorg/ros/internal/transport/tcp/TcpRosServer;
.super Ljava/lang/Object;
.source "TcpRosServer.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field private final advertiseAddress:Lorg/ros/address/AdvertiseAddress;

.field private final bindAddress:Lorg/ros/address/BindAddress;

.field private bootstrap:Lorg/jboss/netty/bootstrap/ServerBootstrap;

.field private channelFactory:Lorg/jboss/netty/channel/ChannelFactory;

.field private final executorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private incomingChannelGroup:Lorg/jboss/netty/channel/group/ChannelGroup;

.field private outgoingChannel:Lorg/jboss/netty/channel/Channel;

.field private final serviceManager:Lorg/ros/internal/node/service/ServiceManager;

.field private final topicParticipantManager:Lorg/ros/internal/node/topic/TopicParticipantManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 53
    const-class v0, Lorg/ros/internal/transport/tcp/TcpRosServer;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/ros/internal/transport/tcp/TcpRosServer;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(Lorg/ros/address/BindAddress;Lorg/ros/address/AdvertiseAddress;Lorg/ros/internal/node/topic/TopicParticipantManager;Lorg/ros/internal/node/service/ServiceManager;Ljava/util/concurrent/ScheduledExecutorService;)V
    .registers 6
    .param p1, "bindAddress"    # Lorg/ros/address/BindAddress;
    .param p2, "advertiseAddress"    # Lorg/ros/address/AdvertiseAddress;
    .param p3, "topicParticipantManager"    # Lorg/ros/internal/node/topic/TopicParticipantManager;
    .param p4, "serviceManager"    # Lorg/ros/internal/node/service/ServiceManager;
    .param p5, "executorService"    # Ljava/util/concurrent/ScheduledExecutorService;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lorg/ros/internal/transport/tcp/TcpRosServer;->bindAddress:Lorg/ros/address/BindAddress;

    .line 70
    iput-object p2, p0, Lorg/ros/internal/transport/tcp/TcpRosServer;->advertiseAddress:Lorg/ros/address/AdvertiseAddress;

    .line 71
    iput-object p3, p0, Lorg/ros/internal/transport/tcp/TcpRosServer;->topicParticipantManager:Lorg/ros/internal/node/topic/TopicParticipantManager;

    .line 72
    iput-object p4, p0, Lorg/ros/internal/transport/tcp/TcpRosServer;->serviceManager:Lorg/ros/internal/node/service/ServiceManager;

    .line 73
    iput-object p5, p0, Lorg/ros/internal/transport/tcp/TcpRosServer;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 74
    return-void
.end method

.method static synthetic access$000(Lorg/ros/internal/transport/tcp/TcpRosServer;)Lorg/jboss/netty/channel/Channel;
    .registers 2
    .param p0, "x0"    # Lorg/ros/internal/transport/tcp/TcpRosServer;

    .line 50
    iget-object v0, p0, Lorg/ros/internal/transport/tcp/TcpRosServer;->outgoingChannel:Lorg/jboss/netty/channel/Channel;

    return-object v0
.end method


# virtual methods
.method public getAddress()Ljava/net/InetSocketAddress;
    .registers 2

    .line 127
    iget-object v0, p0, Lorg/ros/internal/transport/tcp/TcpRosServer;->advertiseAddress:Lorg/ros/address/AdvertiseAddress;

    invoke-virtual {v0}, Lorg/ros/address/AdvertiseAddress;->toInetSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getAdvertiseAddress()Lorg/ros/address/AdvertiseAddress;
    .registers 2

    .line 134
    iget-object v0, p0, Lorg/ros/internal/transport/tcp/TcpRosServer;->advertiseAddress:Lorg/ros/address/AdvertiseAddress;

    return-object v0
.end method

.method public shutdown()V
    .registers 2

    .line 110
    iget-object v0, p0, Lorg/ros/internal/transport/tcp/TcpRosServer;->outgoingChannel:Lorg/jboss/netty/channel/Channel;

    if-eqz v0, :cond_d

    .line 111
    iget-object v0, p0, Lorg/ros/internal/transport/tcp/TcpRosServer;->outgoingChannel:Lorg/jboss/netty/channel/Channel;

    invoke-interface {v0}, Lorg/jboss/netty/channel/Channel;->close()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelFuture;->awaitUninterruptibly()Lorg/jboss/netty/channel/ChannelFuture;

    .line 113
    :cond_d
    iget-object v0, p0, Lorg/ros/internal/transport/tcp/TcpRosServer;->incomingChannelGroup:Lorg/jboss/netty/channel/group/ChannelGroup;

    invoke-interface {v0}, Lorg/jboss/netty/channel/group/ChannelGroup;->close()Lorg/jboss/netty/channel/group/ChannelGroupFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/group/ChannelGroupFuture;->awaitUninterruptibly()Lorg/jboss/netty/channel/group/ChannelGroupFuture;

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/ros/internal/transport/tcp/TcpRosServer;->outgoingChannel:Lorg/jboss/netty/channel/Channel;

    .line 120
    return-void
.end method

.method public start()V
    .registers 6

    .line 77
    iget-object v0, p0, Lorg/ros/internal/transport/tcp/TcpRosServer;->outgoingChannel:Lorg/jboss/netty/channel/Channel;

    const/4 v1, 0x1

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 78
    new-instance v0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannelFactory;

    iget-object v2, p0, Lorg/ros/internal/transport/tcp/TcpRosServer;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v3, p0, Lorg/ros/internal/transport/tcp/TcpRosServer;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v0, v2, v3}, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannelFactory;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lorg/ros/internal/transport/tcp/TcpRosServer;->channelFactory:Lorg/jboss/netty/channel/ChannelFactory;

    .line 79
    new-instance v0, Lorg/jboss/netty/bootstrap/ServerBootstrap;

    iget-object v2, p0, Lorg/ros/internal/transport/tcp/TcpRosServer;->channelFactory:Lorg/jboss/netty/channel/ChannelFactory;

    invoke-direct {v0, v2}, Lorg/jboss/netty/bootstrap/ServerBootstrap;-><init>(Lorg/jboss/netty/channel/ChannelFactory;)V

    iput-object v0, p0, Lorg/ros/internal/transport/tcp/TcpRosServer;->bootstrap:Lorg/jboss/netty/bootstrap/ServerBootstrap;

    .line 80
    iget-object v0, p0, Lorg/ros/internal/transport/tcp/TcpRosServer;->bootstrap:Lorg/jboss/netty/bootstrap/ServerBootstrap;

    const-string v2, "child.bufferFactory"

    new-instance v3, Lorg/jboss/netty/buffer/HeapChannelBufferFactory;

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v3, v4}, Lorg/jboss/netty/buffer/HeapChannelBufferFactory;-><init>(Ljava/nio/ByteOrder;)V

    invoke-virtual {v0, v2, v3}, Lorg/jboss/netty/bootstrap/ServerBootstrap;->setOption(Ljava/lang/String;Ljava/lang/Object;)V

    .line 82
    iget-object v0, p0, Lorg/ros/internal/transport/tcp/TcpRosServer;->bootstrap:Lorg/jboss/netty/bootstrap/ServerBootstrap;

    const-string v2, "child.keepAlive"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/jboss/netty/bootstrap/ServerBootstrap;->setOption(Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    new-instance v0, Lorg/jboss/netty/channel/group/DefaultChannelGroup;

    invoke-direct {v0}, Lorg/jboss/netty/channel/group/DefaultChannelGroup;-><init>()V

    iput-object v0, p0, Lorg/ros/internal/transport/tcp/TcpRosServer;->incomingChannelGroup:Lorg/jboss/netty/channel/group/ChannelGroup;

    .line 84
    iget-object v0, p0, Lorg/ros/internal/transport/tcp/TcpRosServer;->bootstrap:Lorg/jboss/netty/bootstrap/ServerBootstrap;

    new-instance v1, Lorg/ros/internal/transport/tcp/TcpServerPipelineFactory;

    iget-object v2, p0, Lorg/ros/internal/transport/tcp/TcpRosServer;->incomingChannelGroup:Lorg/jboss/netty/channel/group/ChannelGroup;

    iget-object v3, p0, Lorg/ros/internal/transport/tcp/TcpRosServer;->topicParticipantManager:Lorg/ros/internal/node/topic/TopicParticipantManager;

    iget-object v4, p0, Lorg/ros/internal/transport/tcp/TcpRosServer;->serviceManager:Lorg/ros/internal/node/service/ServiceManager;

    invoke-direct {v1, v2, v3, v4}, Lorg/ros/internal/transport/tcp/TcpServerPipelineFactory;-><init>(Lorg/jboss/netty/channel/group/ChannelGroup;Lorg/ros/internal/node/topic/TopicParticipantManager;Lorg/ros/internal/node/service/ServiceManager;)V

    invoke-virtual {v0, v1}, Lorg/jboss/netty/bootstrap/ServerBootstrap;->setPipelineFactory(Lorg/jboss/netty/channel/ChannelPipelineFactory;)V

    .line 87
    iget-object v0, p0, Lorg/ros/internal/transport/tcp/TcpRosServer;->bootstrap:Lorg/jboss/netty/bootstrap/ServerBootstrap;

    iget-object v1, p0, Lorg/ros/internal/transport/tcp/TcpRosServer;->bindAddress:Lorg/ros/address/BindAddress;

    invoke-virtual {v1}, Lorg/ros/address/BindAddress;->toInetSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jboss/netty/bootstrap/ServerBootstrap;->bind(Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/internal/transport/tcp/TcpRosServer;->outgoingChannel:Lorg/jboss/netty/channel/Channel;

    .line 88
    iget-object v0, p0, Lorg/ros/internal/transport/tcp/TcpRosServer;->advertiseAddress:Lorg/ros/address/AdvertiseAddress;

    new-instance v1, Lorg/ros/internal/transport/tcp/TcpRosServer$1;

    invoke-direct {v1, p0}, Lorg/ros/internal/transport/tcp/TcpRosServer$1;-><init>(Lorg/ros/internal/transport/tcp/TcpRosServer;)V

    invoke-virtual {v0, v1}, Lorg/ros/address/AdvertiseAddress;->setPortCallable(Ljava/util/concurrent/Callable;)V

    .line 98
    return-void
.end method
