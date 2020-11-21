.class final Lorg/jboss/netty/channel/local/DefaultLocalServerChannel;
.super Lorg/jboss/netty/channel/AbstractServerChannel;
.source "DefaultLocalServerChannel.java"

# interfaces
.implements Lorg/jboss/netty/channel/local/LocalServerChannel;


# instance fields
.field final bound:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final channelConfig:Lorg/jboss/netty/channel/ChannelConfig;

.field volatile localAddress:Lorg/jboss/netty/channel/local/LocalAddress;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/ChannelFactory;Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelSink;)V
    .registers 5
    .param p1, "factory"    # Lorg/jboss/netty/channel/ChannelFactory;
    .param p2, "pipeline"    # Lorg/jboss/netty/channel/ChannelPipeline;
    .param p3, "sink"    # Lorg/jboss/netty/channel/ChannelSink;

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lorg/jboss/netty/channel/AbstractServerChannel;-><init>(Lorg/jboss/netty/channel/ChannelFactory;Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelSink;)V

    .line 35
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/local/DefaultLocalServerChannel;->bound:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 40
    new-instance v0, Lorg/jboss/netty/channel/DefaultServerChannelConfig;

    invoke-direct {v0}, Lorg/jboss/netty/channel/DefaultServerChannelConfig;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/local/DefaultLocalServerChannel;->channelConfig:Lorg/jboss/netty/channel/ChannelConfig;

    .line 41
    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->fireChannelOpen(Lorg/jboss/netty/channel/Channel;)V

    .line 42
    return-void
.end method


# virtual methods
.method public getConfig()Lorg/jboss/netty/channel/ChannelConfig;
    .registers 2

    .line 45
    iget-object v0, p0, Lorg/jboss/netty/channel/local/DefaultLocalServerChannel;->channelConfig:Lorg/jboss/netty/channel/ChannelConfig;

    return-object v0
.end method

.method public bridge synthetic getLocalAddress()Ljava/net/SocketAddress;
    .registers 2

    .line 31
    invoke-virtual {p0}, Lorg/jboss/netty/channel/local/DefaultLocalServerChannel;->getLocalAddress()Lorg/jboss/netty/channel/local/LocalAddress;

    move-result-object v0

    return-object v0
.end method

.method public getLocalAddress()Lorg/jboss/netty/channel/local/LocalAddress;
    .registers 2

    .line 53
    invoke-virtual {p0}, Lorg/jboss/netty/channel/local/DefaultLocalServerChannel;->isBound()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/jboss/netty/channel/local/DefaultLocalServerChannel;->localAddress:Lorg/jboss/netty/channel/local/LocalAddress;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public bridge synthetic getRemoteAddress()Ljava/net/SocketAddress;
    .registers 2

    .line 31
    invoke-virtual {p0}, Lorg/jboss/netty/channel/local/DefaultLocalServerChannel;->getRemoteAddress()Lorg/jboss/netty/channel/local/LocalAddress;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteAddress()Lorg/jboss/netty/channel/local/LocalAddress;
    .registers 2

    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method public isBound()Z
    .registers 2

    .line 49
    invoke-virtual {p0}, Lorg/jboss/netty/channel/local/DefaultLocalServerChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lorg/jboss/netty/channel/local/DefaultLocalServerChannel;->bound:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method protected setClosed()Z
    .registers 2

    .line 62
    invoke-super {p0}, Lorg/jboss/netty/channel/AbstractServerChannel;->setClosed()Z

    move-result v0

    return v0
.end method
