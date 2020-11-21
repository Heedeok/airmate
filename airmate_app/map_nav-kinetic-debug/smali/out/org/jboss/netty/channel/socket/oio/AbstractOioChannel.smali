.class abstract Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;
.super Lorg/jboss/netty/channel/AbstractChannel;
.source "AbstractOioChannel.java"


# instance fields
.field final interestOpsLock:Ljava/lang/Object;

.field private volatile localAddress:Ljava/net/InetSocketAddress;

.field volatile remoteAddress:Ljava/net/InetSocketAddress;

.field volatile worker:Lorg/jboss/netty/channel/socket/Worker;

.field volatile workerThread:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFactory;Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelSink;)V
    .registers 6
    .param p1, "parent"    # Lorg/jboss/netty/channel/Channel;
    .param p2, "factory"    # Lorg/jboss/netty/channel/ChannelFactory;
    .param p3, "pipeline"    # Lorg/jboss/netty/channel/ChannelPipeline;
    .param p4, "sink"    # Lorg/jboss/netty/channel/ChannelSink;

    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/jboss/netty/channel/AbstractChannel;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFactory;Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelSink;)V

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;->interestOpsLock:Ljava/lang/Object;

    .line 44
    return-void
.end method


# virtual methods
.method abstract closeSocket()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getLocalAddress()Ljava/net/InetSocketAddress;
    .registers 4

    .line 78
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;->localAddress:Ljava/net/InetSocketAddress;

    .line 79
    .local v0, "localAddress":Ljava/net/InetSocketAddress;
    if-nez v0, :cond_f

    .line 81
    :try_start_4
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;->getLocalSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    move-object v0, v1

    iput-object v1, p0, Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;->localAddress:Ljava/net/InetSocketAddress;
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_b} :catch_c

    .line 85
    goto :goto_f

    .line 82
    :catch_c
    move-exception v1

    .line 84
    .local v1, "t":Ljava/lang/Throwable;
    const/4 v2, 0x0

    return-object v2

    .line 87
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_f
    :goto_f
    return-object v0
.end method

.method public bridge synthetic getLocalAddress()Ljava/net/SocketAddress;
    .registers 2

    .line 30
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;->getLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method abstract getLocalSocketAddress()Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public getRemoteAddress()Ljava/net/InetSocketAddress;
    .registers 4

    .line 92
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;->remoteAddress:Ljava/net/InetSocketAddress;

    .line 93
    .local v0, "remoteAddress":Ljava/net/InetSocketAddress;
    if-nez v0, :cond_f

    .line 95
    :try_start_4
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;->getRemoteSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    move-object v0, v1

    iput-object v1, p0, Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;->remoteAddress:Ljava/net/InetSocketAddress;
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_b} :catch_c

    .line 100
    goto :goto_f

    .line 97
    :catch_c
    move-exception v1

    .line 99
    .local v1, "t":Ljava/lang/Throwable;
    const/4 v2, 0x0

    return-object v2

    .line 102
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_f
    :goto_f
    return-object v0
.end method

.method public bridge synthetic getRemoteAddress()Ljava/net/SocketAddress;
    .registers 2

    .line 30
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;->getRemoteAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method abstract getRemoteSocketAddress()Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public isBound()Z
    .registers 2

    .line 67
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;->isSocketBound()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public isConnected()Z
    .registers 2

    .line 72
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;->isSocketConnected()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method abstract isSocketBound()Z
.end method

.method abstract isSocketClosed()Z
.end method

.method abstract isSocketConnected()Z
.end method

.method protected setClosed()Z
    .registers 2

    .line 48
    invoke-super {p0}, Lorg/jboss/netty/channel/AbstractChannel;->setClosed()Z

    move-result v0

    return v0
.end method

.method protected setInterestOpsNow(I)V
    .registers 2
    .param p1, "interestOps"    # I

    .line 53
    invoke-super {p0, p1}, Lorg/jboss/netty/channel/AbstractChannel;->setInterestOpsNow(I)V

    .line 54
    return-void
.end method

.method public write(Ljava/lang/Object;Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;
    .registers 4
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "remoteAddress"    # Ljava/net/SocketAddress;

    .line 58
    if-eqz p2, :cond_12

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;->getRemoteAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_12

    .line 61
    :cond_d
    invoke-super {p0, p1, p2}, Lorg/jboss/netty/channel/AbstractChannel;->write(Ljava/lang/Object;Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0

    .line 59
    :cond_12
    :goto_12
    const/4 v0, 0x0

    invoke-super {p0, p1, v0}, Lorg/jboss/netty/channel/AbstractChannel;->write(Ljava/lang/Object;Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method
