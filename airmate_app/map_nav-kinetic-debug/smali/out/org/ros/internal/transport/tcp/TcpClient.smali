.class public Lorg/ros/internal/transport/tcp/TcpClient;
.super Ljava/lang/Object;
.source "TcpClient.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_CONNECTION_TIMEOUT_DURATION:I = 0x5

.field private static final DEFAULT_CONNECTION_TIMEOUT_UNIT:Ljava/util/concurrent/TimeUnit;

.field private static final DEFAULT_KEEP_ALIVE:Z = true

.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field private final bootstrap:Lorg/jboss/netty/bootstrap/ClientBootstrap;

.field private channel:Lorg/jboss/netty/channel/Channel;

.field private final channelBufferFactory:Lorg/jboss/netty/buffer/ChannelBufferFactory;

.field private final channelFactory:Lorg/jboss/netty/channel/ChannelFactory;

.field private final channelGroup:Lorg/jboss/netty/channel/group/ChannelGroup;

.field private final namedChannelHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/ros/internal/transport/tcp/NamedChannelHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 48
    const-class v0, Lorg/ros/internal/transport/tcp/TcpClient;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/ros/internal/transport/tcp/TcpClient;->log:Lorg/apache/commons/logging/Log;

    .line 51
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lorg/ros/internal/transport/tcp/TcpClient;->DEFAULT_CONNECTION_TIMEOUT_UNIT:Ljava/util/concurrent/TimeUnit;

    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/channel/group/ChannelGroup;Ljava/util/concurrent/Executor;)V
    .registers 6
    .param p1, "channelGroup"    # Lorg/jboss/netty/channel/group/ChannelGroup;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lorg/ros/internal/transport/tcp/TcpClient;->channelGroup:Lorg/jboss/netty/channel/group/ChannelGroup;

    .line 64
    new-instance v0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannelFactory;

    invoke-direct {v0, p2, p2}, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannelFactory;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lorg/ros/internal/transport/tcp/TcpClient;->channelFactory:Lorg/jboss/netty/channel/ChannelFactory;

    .line 65
    new-instance v0, Lorg/jboss/netty/buffer/HeapChannelBufferFactory;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v0, v1}, Lorg/jboss/netty/buffer/HeapChannelBufferFactory;-><init>(Ljava/nio/ByteOrder;)V

    iput-object v0, p0, Lorg/ros/internal/transport/tcp/TcpClient;->channelBufferFactory:Lorg/jboss/netty/buffer/ChannelBufferFactory;

    .line 66
    new-instance v0, Lorg/jboss/netty/bootstrap/ClientBootstrap;

    iget-object v1, p0, Lorg/ros/internal/transport/tcp/TcpClient;->channelFactory:Lorg/jboss/netty/channel/ChannelFactory;

    invoke-direct {v0, v1}, Lorg/jboss/netty/bootstrap/ClientBootstrap;-><init>(Lorg/jboss/netty/channel/ChannelFactory;)V

    iput-object v0, p0, Lorg/ros/internal/transport/tcp/TcpClient;->bootstrap:Lorg/jboss/netty/bootstrap/ClientBootstrap;

    .line 67
    iget-object v0, p0, Lorg/ros/internal/transport/tcp/TcpClient;->bootstrap:Lorg/jboss/netty/bootstrap/ClientBootstrap;

    const-string v1, "bufferFactory"

    iget-object v2, p0, Lorg/ros/internal/transport/tcp/TcpClient;->channelBufferFactory:Lorg/jboss/netty/buffer/ChannelBufferFactory;

    invoke-virtual {v0, v1, v2}, Lorg/jboss/netty/bootstrap/ClientBootstrap;->setOption(Ljava/lang/String;Ljava/lang/Object;)V

    .line 68
    sget-object v0, Lorg/ros/internal/transport/tcp/TcpClient;->DEFAULT_CONNECTION_TIMEOUT_UNIT:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {p0, v1, v2, v0}, Lorg/ros/internal/transport/tcp/TcpClient;->setConnectionTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 69
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/ros/internal/transport/tcp/TcpClient;->setKeepAlive(Z)V

    .line 70
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/internal/transport/tcp/TcpClient;->namedChannelHandlers:Ljava/util/List;

    .line 71
    return-void
.end method

.method static synthetic access$000(Lorg/ros/internal/transport/tcp/TcpClient;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lorg/ros/internal/transport/tcp/TcpClient;

    .line 45
    iget-object v0, p0, Lorg/ros/internal/transport/tcp/TcpClient;->namedChannelHandlers:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public addAllNamedChannelHandlers(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/ros/internal/transport/tcp/NamedChannelHandler;",
            ">;)V"
        }
    .end annotation

    .line 86
    .local p1, "namedChannelHandlers":Ljava/util/List;, "Ljava/util/List<Lorg/ros/internal/transport/tcp/NamedChannelHandler;>;"
    iget-object v0, p0, Lorg/ros/internal/transport/tcp/TcpClient;->namedChannelHandlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 87
    return-void
.end method

.method public addNamedChannelHandler(Lorg/ros/internal/transport/tcp/NamedChannelHandler;)V
    .registers 3
    .param p1, "namedChannelHandler"    # Lorg/ros/internal/transport/tcp/NamedChannelHandler;

    .line 82
    iget-object v0, p0, Lorg/ros/internal/transport/tcp/TcpClient;->namedChannelHandlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    return-void
.end method

.method public connect(Ljava/lang/String;Ljava/net/SocketAddress;)V
    .registers 8
    .param p1, "connectionName"    # Ljava/lang/String;
    .param p2, "socketAddress"    # Ljava/net/SocketAddress;

    .line 90
    new-instance v0, Lorg/ros/internal/transport/tcp/TcpClient$1;

    iget-object v1, p0, Lorg/ros/internal/transport/tcp/TcpClient;->channelGroup:Lorg/jboss/netty/channel/group/ChannelGroup;

    invoke-direct {v0, p0, v1}, Lorg/ros/internal/transport/tcp/TcpClient$1;-><init>(Lorg/ros/internal/transport/tcp/TcpClient;Lorg/jboss/netty/channel/group/ChannelGroup;)V

    .line 100
    .local v0, "tcpClientPipelineFactory":Lorg/ros/internal/transport/tcp/TcpClientPipelineFactory;
    iget-object v1, p0, Lorg/ros/internal/transport/tcp/TcpClient;->bootstrap:Lorg/jboss/netty/bootstrap/ClientBootstrap;

    invoke-virtual {v1, v0}, Lorg/jboss/netty/bootstrap/ClientBootstrap;->setPipelineFactory(Lorg/jboss/netty/channel/ChannelPipelineFactory;)V

    .line 101
    iget-object v1, p0, Lorg/ros/internal/transport/tcp/TcpClient;->bootstrap:Lorg/jboss/netty/bootstrap/ClientBootstrap;

    invoke-virtual {v1, p2}, Lorg/jboss/netty/bootstrap/ClientBootstrap;->connect(Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    invoke-interface {v1}, Lorg/jboss/netty/channel/ChannelFuture;->awaitUninterruptibly()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    .line 102
    .local v1, "future":Lorg/jboss/netty/channel/ChannelFuture;
    invoke-interface {v1}, Lorg/jboss/netty/channel/ChannelFuture;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 103
    invoke-interface {v1}, Lorg/jboss/netty/channel/ChannelFuture;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v2

    iput-object v2, p0, Lorg/ros/internal/transport/tcp/TcpClient;->channel:Lorg/jboss/netty/channel/Channel;

    .line 111
    return-void

    .line 109
    :cond_23
    new-instance v2, Lorg/ros/exception/RosRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Connection exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lorg/jboss/netty/channel/ChannelFuture;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/ros/exception/RosRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getChannel()Lorg/jboss/netty/channel/Channel;
    .registers 2

    .line 114
    iget-object v0, p0, Lorg/ros/internal/transport/tcp/TcpClient;->channel:Lorg/jboss/netty/channel/Channel;

    return-object v0
.end method

.method public setConnectionTimeout(JLjava/util/concurrent/TimeUnit;)V
    .registers 8
    .param p1, "duration"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 74
    iget-object v0, p0, Lorg/ros/internal/transport/tcp/TcpClient;->bootstrap:Lorg/jboss/netty/bootstrap/ClientBootstrap;

    const-string v1, "connectionTimeoutMillis"

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jboss/netty/bootstrap/ClientBootstrap;->setOption(Ljava/lang/String;Ljava/lang/Object;)V

    .line 75
    return-void
.end method

.method public setKeepAlive(Z)V
    .registers 5
    .param p1, "value"    # Z

    .line 78
    iget-object v0, p0, Lorg/ros/internal/transport/tcp/TcpClient;->bootstrap:Lorg/jboss/netty/bootstrap/ClientBootstrap;

    const-string v1, "keepAlive"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jboss/netty/bootstrap/ClientBootstrap;->setOption(Ljava/lang/String;Ljava/lang/Object;)V

    .line 79
    return-void
.end method

.method public write(Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/channel/ChannelFuture;
    .registers 3
    .param p1, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 118
    iget-object v0, p0, Lorg/ros/internal/transport/tcp/TcpClient;->channel:Lorg/jboss/netty/channel/Channel;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v0, p0, Lorg/ros/internal/transport/tcp/TcpClient;->channel:Lorg/jboss/netty/channel/Channel;

    invoke-interface {v0, p1}, Lorg/jboss/netty/channel/Channel;->write(Ljava/lang/Object;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method
