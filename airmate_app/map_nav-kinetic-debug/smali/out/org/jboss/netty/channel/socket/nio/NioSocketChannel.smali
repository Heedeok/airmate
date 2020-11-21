.class public Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;
.super Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;
.source "NioSocketChannel.java"

# interfaces
.implements Lorg/jboss/netty/channel/socket/SocketChannel;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel<",
        "Ljava/nio/channels/SocketChannel;",
        ">;",
        "Lorg/jboss/netty/channel/socket/SocketChannel;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ST_BOUND:I = 0x1

.field private static final ST_CLOSED:I = -0x1

.field private static final ST_CONNECTED:I = 0x2

.field private static final ST_OPEN:I


# instance fields
.field private final config:Lorg/jboss/netty/channel/socket/nio/NioSocketChannelConfig;

.field volatile state:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 28
    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFactory;Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelSink;Ljava/nio/channels/SocketChannel;Lorg/jboss/netty/channel/socket/nio/NioWorker;)V
    .registers 14
    .param p1, "parent"    # Lorg/jboss/netty/channel/Channel;
    .param p2, "factory"    # Lorg/jboss/netty/channel/ChannelFactory;
    .param p3, "pipeline"    # Lorg/jboss/netty/channel/ChannelPipeline;
    .param p4, "sink"    # Lorg/jboss/netty/channel/ChannelSink;
    .param p5, "socket"    # Ljava/nio/channels/SocketChannel;
    .param p6, "worker"    # Lorg/jboss/netty/channel/socket/nio/NioWorker;

    .line 44
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFactory;Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelSink;Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;Ljava/nio/channels/SelectableChannel;)V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->state:I

    .line 45
    new-instance v0, Lorg/jboss/netty/channel/socket/nio/DefaultNioSocketChannelConfig;

    invoke-virtual {p5}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jboss/netty/channel/socket/nio/DefaultNioSocketChannelConfig;-><init>(Ljava/net/Socket;)V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->config:Lorg/jboss/netty/channel/socket/nio/NioSocketChannelConfig;

    .line 46
    return-void
.end method


# virtual methods
.method public bridge synthetic getConfig()Lorg/jboss/netty/channel/ChannelConfig;
    .registers 2

    .line 28
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/nio/NioSocketChannelConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getConfig()Lorg/jboss/netty/channel/socket/SocketChannelConfig;
    .registers 2

    .line 28
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/nio/NioSocketChannelConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getConfig()Lorg/jboss/netty/channel/socket/nio/NioChannelConfig;
    .registers 2

    .line 28
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/nio/NioSocketChannelConfig;

    move-result-object v0

    return-object v0
.end method

.method public getConfig()Lorg/jboss/netty/channel/socket/nio/NioSocketChannelConfig;
    .registers 2

    .line 55
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->config:Lorg/jboss/netty/channel/socket/nio/NioSocketChannelConfig;

    return-object v0
.end method

.method public bridge synthetic getInterestOps()I
    .registers 2

    .line 28
    invoke-super {p0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->getInterestOps()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getLocalAddress()Ljava/net/InetSocketAddress;
    .registers 2

    .line 28
    invoke-super {p0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->getLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method getLocalSocketAddress()Ljava/net/InetSocketAddress;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->channel:Ljava/nio/channels/SelectableChannel;

    check-cast v0, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public bridge synthetic getRemoteAddress()Ljava/net/InetSocketAddress;
    .registers 2

    .line 28
    invoke-super {p0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->getRemoteAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method getRemoteSocketAddress()Ljava/net/InetSocketAddress;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->channel:Ljava/nio/channels/SelectableChannel;

    check-cast v0, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public bridge synthetic getWorker()Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;
    .registers 2

    .line 28
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->getWorker()Lorg/jboss/netty/channel/socket/nio/NioWorker;

    move-result-object v0

    return-object v0
.end method

.method public getWorker()Lorg/jboss/netty/channel/socket/nio/NioWorker;
    .registers 2

    .line 50
    invoke-super {p0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->getWorker()Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/socket/nio/NioWorker;

    return-object v0
.end method

.method public isBound()Z
    .registers 3

    .line 64
    iget v0, p0, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->state:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public isConnected()Z
    .registers 3

    .line 68
    iget v0, p0, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public isOpen()Z
    .registers 2

    .line 60
    iget v0, p0, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->state:I

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method final setBound()V
    .registers 2

    .line 72
    nop

    .line 73
    const/4 v0, 0x1

    iput v0, p0, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->state:I

    .line 74
    return-void
.end method

.method protected setClosed()Z
    .registers 2

    .line 84
    const/4 v0, -0x1

    iput v0, p0, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->state:I

    .line 85
    invoke-super {p0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->setClosed()Z

    move-result v0

    return v0
.end method

.method final setConnected()V
    .registers 3

    .line 77
    iget v0, p0, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->state:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 78
    const/4 v0, 0x2

    iput v0, p0, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->state:I

    .line 80
    :cond_8
    return-void
.end method

.method public write(Ljava/lang/Object;Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;
    .registers 4
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "remoteAddress"    # Ljava/net/SocketAddress;

    .line 102
    if-eqz p2, :cond_12

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->getRemoteAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_12

    .line 105
    :cond_d
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->getUnsupportedOperationFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0

    .line 103
    :cond_12
    :goto_12
    const/4 v0, 0x0

    invoke-super {p0, p1, v0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->write(Ljava/lang/Object;Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method
