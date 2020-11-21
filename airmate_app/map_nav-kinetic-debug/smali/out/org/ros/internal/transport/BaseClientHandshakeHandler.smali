.class public abstract Lorg/ros/internal/transport/BaseClientHandshakeHandler;
.super Lorg/ros/internal/transport/tcp/AbstractNamedChannelHandler;
.source "BaseClientHandshakeHandler.java"


# instance fields
.field private final clientHandshake:Lorg/ros/internal/transport/ClientHandshake;

.field private final clientHandshakeListeners:Lorg/ros/concurrent/ListenerGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ros/concurrent/ListenerGroup<",
            "Lorg/ros/internal/transport/ClientHandshakeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/ros/internal/transport/ClientHandshake;Ljava/util/concurrent/ExecutorService;)V
    .registers 4
    .param p1, "clientHandshake"    # Lorg/ros/internal/transport/ClientHandshake;
    .param p2, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .line 39
    invoke-direct {p0}, Lorg/ros/internal/transport/tcp/AbstractNamedChannelHandler;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/ros/internal/transport/BaseClientHandshakeHandler;->clientHandshake:Lorg/ros/internal/transport/ClientHandshake;

    .line 41
    new-instance v0, Lorg/ros/concurrent/ListenerGroup;

    invoke-direct {v0, p2}, Lorg/ros/concurrent/ListenerGroup;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lorg/ros/internal/transport/BaseClientHandshakeHandler;->clientHandshakeListeners:Lorg/ros/concurrent/ListenerGroup;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lorg/ros/internal/transport/BaseClientHandshakeHandler;)Lorg/ros/internal/transport/ClientHandshake;
    .registers 2
    .param p0, "x0"    # Lorg/ros/internal/transport/BaseClientHandshakeHandler;

    .line 34
    iget-object v0, p0, Lorg/ros/internal/transport/BaseClientHandshakeHandler;->clientHandshake:Lorg/ros/internal/transport/ClientHandshake;

    return-object v0
.end method

.method private signalOnFailure(Ljava/lang/String;)V
    .registers 4
    .param p1, "errorMessage"    # Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lorg/ros/internal/transport/BaseClientHandshakeHandler;->clientHandshakeListeners:Lorg/ros/concurrent/ListenerGroup;

    new-instance v1, Lorg/ros/internal/transport/BaseClientHandshakeHandler$2;

    invoke-direct {v1, p0, p1}, Lorg/ros/internal/transport/BaseClientHandshakeHandler$2;-><init>(Lorg/ros/internal/transport/BaseClientHandshakeHandler;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/ros/concurrent/ListenerGroup;->signal(Lorg/ros/concurrent/SignalRunnable;)V

    .line 99
    return-void
.end method

.method private signalOnSuccess(Lorg/ros/internal/transport/ConnectionHeader;)V
    .registers 4
    .param p1, "incommingConnectionHeader"    # Lorg/ros/internal/transport/ConnectionHeader;

    .line 82
    iget-object v0, p0, Lorg/ros/internal/transport/BaseClientHandshakeHandler;->clientHandshakeListeners:Lorg/ros/concurrent/ListenerGroup;

    new-instance v1, Lorg/ros/internal/transport/BaseClientHandshakeHandler$1;

    invoke-direct {v1, p0, p1}, Lorg/ros/internal/transport/BaseClientHandshakeHandler$1;-><init>(Lorg/ros/internal/transport/BaseClientHandshakeHandler;Lorg/ros/internal/transport/ConnectionHeader;)V

    invoke-virtual {v0, v1}, Lorg/ros/concurrent/ListenerGroup;->signal(Lorg/ros/concurrent/SignalRunnable;)V

    .line 88
    return-void
.end method


# virtual methods
.method public addListener(Lorg/ros/internal/transport/ClientHandshakeListener;)V
    .registers 3
    .param p1, "clientHandshakeListener"    # Lorg/ros/internal/transport/ClientHandshakeListener;

    .line 45
    iget-object v0, p0, Lorg/ros/internal/transport/BaseClientHandshakeHandler;->clientHandshakeListeners:Lorg/ros/concurrent/ListenerGroup;

    invoke-virtual {v0, p1}, Lorg/ros/concurrent/ListenerGroup;->add(Ljava/lang/Object;)Lorg/ros/concurrent/EventDispatcher;

    .line 46
    return-void
.end method

.method public channelConnected(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V
    .registers 5
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/ChannelStateEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 50
    invoke-super {p0, p1, p2}, Lorg/ros/internal/transport/tcp/AbstractNamedChannelHandler;->channelConnected(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V

    .line 51
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelStateEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    iget-object v1, p0, Lorg/ros/internal/transport/BaseClientHandshakeHandler;->clientHandshake:Lorg/ros/internal/transport/ClientHandshake;

    invoke-interface {v1}, Lorg/ros/internal/transport/ClientHandshake;->getOutgoingConnectionHeader()Lorg/ros/internal/transport/ConnectionHeader;

    move-result-object v1

    invoke-virtual {v1}, Lorg/ros/internal/transport/ConnectionHeader;->encode()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/Channel;->write(Ljava/lang/Object;)Lorg/jboss/netty/channel/ChannelFuture;

    .line 52
    return-void
.end method

.method public messageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;)V
    .registers 6
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/MessageEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 56
    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 57
    .local v0, "buffer":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-static {v0}, Lorg/ros/internal/transport/ConnectionHeader;->decode(Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/ros/internal/transport/ConnectionHeader;

    move-result-object v1

    .line 58
    .local v1, "connectionHeader":Lorg/ros/internal/transport/ConnectionHeader;
    iget-object v2, p0, Lorg/ros/internal/transport/BaseClientHandshakeHandler;->clientHandshake:Lorg/ros/internal/transport/ClientHandshake;

    invoke-interface {v2, v1}, Lorg/ros/internal/transport/ClientHandshake;->handshake(Lorg/ros/internal/transport/ConnectionHeader;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 59
    invoke-virtual {p0, v1, p1, p2}, Lorg/ros/internal/transport/BaseClientHandshakeHandler;->onSuccess(Lorg/ros/internal/transport/ConnectionHeader;Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;)V

    .line 60
    invoke-direct {p0, v1}, Lorg/ros/internal/transport/BaseClientHandshakeHandler;->signalOnSuccess(Lorg/ros/internal/transport/ConnectionHeader;)V

    goto :goto_2b

    .line 62
    :cond_19
    iget-object v2, p0, Lorg/ros/internal/transport/BaseClientHandshakeHandler;->clientHandshake:Lorg/ros/internal/transport/ClientHandshake;

    invoke-interface {v2}, Lorg/ros/internal/transport/ClientHandshake;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p1, p2}, Lorg/ros/internal/transport/BaseClientHandshakeHandler;->onFailure(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;)V

    .line 63
    iget-object v2, p0, Lorg/ros/internal/transport/BaseClientHandshakeHandler;->clientHandshake:Lorg/ros/internal/transport/ClientHandshake;

    invoke-interface {v2}, Lorg/ros/internal/transport/ClientHandshake;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/ros/internal/transport/BaseClientHandshakeHandler;->signalOnFailure(Ljava/lang/String;)V

    .line 65
    :goto_2b
    return-void
.end method

.method protected abstract onFailure(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;)V
.end method

.method protected abstract onSuccess(Lorg/ros/internal/transport/ConnectionHeader;Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;)V
.end method
