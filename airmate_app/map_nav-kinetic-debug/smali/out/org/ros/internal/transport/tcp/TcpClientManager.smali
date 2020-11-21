.class public Lorg/ros/internal/transport/tcp/TcpClientManager;
.super Ljava/lang/Object;
.source "TcpClientManager.java"


# instance fields
.field private final channelGroup:Lorg/jboss/netty/channel/group/ChannelGroup;

.field private final executor:Ljava/util/concurrent/Executor;

.field private final namedChannelHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/ros/internal/transport/tcp/NamedChannelHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final tcpClients:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/ros/internal/transport/tcp/TcpClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/ros/internal/transport/tcp/TcpClientManager;->executor:Ljava/util/concurrent/Executor;

    .line 42
    new-instance v0, Lorg/jboss/netty/channel/group/DefaultChannelGroup;

    invoke-direct {v0}, Lorg/jboss/netty/channel/group/DefaultChannelGroup;-><init>()V

    iput-object v0, p0, Lorg/ros/internal/transport/tcp/TcpClientManager;->channelGroup:Lorg/jboss/netty/channel/group/ChannelGroup;

    .line 43
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/internal/transport/tcp/TcpClientManager;->tcpClients:Ljava/util/Collection;

    .line 44
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/internal/transport/tcp/TcpClientManager;->namedChannelHandlers:Ljava/util/List;

    .line 45
    return-void
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

    .line 52
    .local p1, "namedChannelHandlers":Ljava/util/List;, "Ljava/util/List<Lorg/ros/internal/transport/tcp/NamedChannelHandler;>;"
    iget-object v0, p0, Lorg/ros/internal/transport/tcp/TcpClientManager;->namedChannelHandlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 53
    return-void
.end method

.method public addNamedChannelHandler(Lorg/ros/internal/transport/tcp/NamedChannelHandler;)V
    .registers 3
    .param p1, "namedChannelHandler"    # Lorg/ros/internal/transport/tcp/NamedChannelHandler;

    .line 48
    iget-object v0, p0, Lorg/ros/internal/transport/tcp/TcpClientManager;->namedChannelHandlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    return-void
.end method

.method public connect(Ljava/lang/String;Ljava/net/SocketAddress;)Lorg/ros/internal/transport/tcp/TcpClient;
    .registers 6
    .param p1, "connectionName"    # Ljava/lang/String;
    .param p2, "socketAddress"    # Ljava/net/SocketAddress;

    .line 67
    new-instance v0, Lorg/ros/internal/transport/tcp/TcpClient;

    iget-object v1, p0, Lorg/ros/internal/transport/tcp/TcpClientManager;->channelGroup:Lorg/jboss/netty/channel/group/ChannelGroup;

    iget-object v2, p0, Lorg/ros/internal/transport/tcp/TcpClientManager;->executor:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, v2}, Lorg/ros/internal/transport/tcp/TcpClient;-><init>(Lorg/jboss/netty/channel/group/ChannelGroup;Ljava/util/concurrent/Executor;)V

    .line 68
    .local v0, "tcpClient":Lorg/ros/internal/transport/tcp/TcpClient;
    iget-object v1, p0, Lorg/ros/internal/transport/tcp/TcpClientManager;->namedChannelHandlers:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/ros/internal/transport/tcp/TcpClient;->addAllNamedChannelHandlers(Ljava/util/List;)V

    .line 69
    invoke-virtual {v0, p1, p2}, Lorg/ros/internal/transport/tcp/TcpClient;->connect(Ljava/lang/String;Ljava/net/SocketAddress;)V

    .line 70
    iget-object v1, p0, Lorg/ros/internal/transport/tcp/TcpClientManager;->tcpClients:Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 71
    return-object v0
.end method

.method public shutdown()V
    .registers 2

    .line 79
    iget-object v0, p0, Lorg/ros/internal/transport/tcp/TcpClientManager;->channelGroup:Lorg/jboss/netty/channel/group/ChannelGroup;

    invoke-interface {v0}, Lorg/jboss/netty/channel/group/ChannelGroup;->close()Lorg/jboss/netty/channel/group/ChannelGroupFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/group/ChannelGroupFuture;->awaitUninterruptibly()Lorg/jboss/netty/channel/group/ChannelGroupFuture;

    .line 80
    iget-object v0, p0, Lorg/ros/internal/transport/tcp/TcpClientManager;->tcpClients:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 85
    return-void
.end method
