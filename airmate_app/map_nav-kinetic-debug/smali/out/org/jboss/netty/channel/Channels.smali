.class public final Lorg/jboss/netty/channel/Channels;
.super Ljava/lang/Object;
.source "Channels.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 858
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 860
    return-void
.end method

.method public static bind(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;
    .registers 6
    .param p0, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p1, "localAddress"    # Ljava/net/SocketAddress;

    .line 565
    if-eqz p1, :cond_15

    .line 568
    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->future(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    .line 569
    .local v0, "future":Lorg/jboss/netty/channel/ChannelFuture;
    invoke-interface {p0}, Lorg/jboss/netty/channel/Channel;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v1

    new-instance v2, Lorg/jboss/netty/channel/DownstreamChannelStateEvent;

    sget-object v3, Lorg/jboss/netty/channel/ChannelState;->BOUND:Lorg/jboss/netty/channel/ChannelState;

    invoke-direct {v2, p0, v0, v3, p1}, Lorg/jboss/netty/channel/DownstreamChannelStateEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFuture;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Lorg/jboss/netty/channel/ChannelPipeline;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 571
    return-object v0

    .line 566
    .end local v0    # "future":Lorg/jboss/netty/channel/ChannelFuture;
    :cond_15
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "localAddress"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static bind(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;Ljava/net/SocketAddress;)V
    .registers 6
    .param p0, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p1, "future"    # Lorg/jboss/netty/channel/ChannelFuture;
    .param p2, "localAddress"    # Ljava/net/SocketAddress;

    .line 587
    if-eqz p2, :cond_11

    .line 590
    new-instance v0, Lorg/jboss/netty/channel/DownstreamChannelStateEvent;

    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->BOUND:Lorg/jboss/netty/channel/ChannelState;

    invoke-direct {v0, v1, p1, v2, p2}, Lorg/jboss/netty/channel/DownstreamChannelStateEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFuture;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 592
    return-void

    .line 588
    :cond_11
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "localAddress"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static close(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;
    .registers 6
    .param p0, "channel"    # Lorg/jboss/netty/channel/Channel;

    .line 820
    invoke-interface {p0}, Lorg/jboss/netty/channel/Channel;->getCloseFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    .line 821
    .local v0, "future":Lorg/jboss/netty/channel/ChannelFuture;
    invoke-interface {p0}, Lorg/jboss/netty/channel/Channel;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v1

    new-instance v2, Lorg/jboss/netty/channel/DownstreamChannelStateEvent;

    sget-object v3, Lorg/jboss/netty/channel/ChannelState;->OPEN:Lorg/jboss/netty/channel/ChannelState;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v2, p0, v0, v3, v4}, Lorg/jboss/netty/channel/DownstreamChannelStateEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFuture;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Lorg/jboss/netty/channel/ChannelPipeline;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 823
    return-object v0
.end method

.method public static close(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;)V
    .registers 6
    .param p0, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p1, "future"    # Lorg/jboss/netty/channel/ChannelFuture;

    .line 837
    new-instance v0, Lorg/jboss/netty/channel/DownstreamChannelStateEvent;

    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->OPEN:Lorg/jboss/netty/channel/ChannelState;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, p1, v2, v3}, Lorg/jboss/netty/channel/DownstreamChannelStateEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFuture;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 839
    return-void
.end method

.method public static connect(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;
    .registers 6
    .param p0, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p1, "remoteAddress"    # Ljava/net/SocketAddress;

    .line 638
    if-eqz p1, :cond_16

    .line 641
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/jboss/netty/channel/Channels;->future(Lorg/jboss/netty/channel/Channel;Z)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    .line 642
    .local v0, "future":Lorg/jboss/netty/channel/ChannelFuture;
    invoke-interface {p0}, Lorg/jboss/netty/channel/Channel;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v1

    new-instance v2, Lorg/jboss/netty/channel/DownstreamChannelStateEvent;

    sget-object v3, Lorg/jboss/netty/channel/ChannelState;->CONNECTED:Lorg/jboss/netty/channel/ChannelState;

    invoke-direct {v2, p0, v0, v3, p1}, Lorg/jboss/netty/channel/DownstreamChannelStateEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFuture;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Lorg/jboss/netty/channel/ChannelPipeline;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 644
    return-object v0

    .line 639
    .end local v0    # "future":Lorg/jboss/netty/channel/ChannelFuture;
    :cond_16
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "remoteAddress"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static connect(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;Ljava/net/SocketAddress;)V
    .registers 6
    .param p0, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p1, "future"    # Lorg/jboss/netty/channel/ChannelFuture;
    .param p2, "remoteAddress"    # Ljava/net/SocketAddress;

    .line 660
    if-eqz p2, :cond_11

    .line 663
    new-instance v0, Lorg/jboss/netty/channel/DownstreamChannelStateEvent;

    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->CONNECTED:Lorg/jboss/netty/channel/ChannelState;

    invoke-direct {v0, v1, p1, v2, p2}, Lorg/jboss/netty/channel/DownstreamChannelStateEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFuture;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 665
    return-void

    .line 661
    :cond_11
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "remoteAddress"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static disconnect(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;
    .registers 6
    .param p0, "channel"    # Lorg/jboss/netty/channel/Channel;

    .line 789
    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->future(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    .line 790
    .local v0, "future":Lorg/jboss/netty/channel/ChannelFuture;
    invoke-interface {p0}, Lorg/jboss/netty/channel/Channel;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v1

    new-instance v2, Lorg/jboss/netty/channel/DownstreamChannelStateEvent;

    sget-object v3, Lorg/jboss/netty/channel/ChannelState;->CONNECTED:Lorg/jboss/netty/channel/ChannelState;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v0, v3, v4}, Lorg/jboss/netty/channel/DownstreamChannelStateEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFuture;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Lorg/jboss/netty/channel/ChannelPipeline;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 792
    return-object v0
.end method

.method public static disconnect(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;)V
    .registers 6
    .param p0, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p1, "future"    # Lorg/jboss/netty/channel/ChannelFuture;

    .line 806
    new-instance v0, Lorg/jboss/netty/channel/DownstreamChannelStateEvent;

    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->CONNECTED:Lorg/jboss/netty/channel/ChannelState;

    const/4 v3, 0x0

    invoke-direct {v0, v1, p1, v2, v3}, Lorg/jboss/netty/channel/DownstreamChannelStateEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFuture;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 808
    return-void
.end method

.method public static failedFuture(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/ChannelFuture;
    .registers 3
    .param p0, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 153
    new-instance v0, Lorg/jboss/netty/channel/FailedChannelFuture;

    invoke-direct {v0, p0, p1}, Lorg/jboss/netty/channel/FailedChannelFuture;-><init>(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private static filterDownstreamInterestOps(I)I
    .registers 2
    .param p0, "interestOps"    # I

    .line 855
    and-int/lit8 v0, p0, -0x5

    return v0
.end method

.method public static fireChannelBound(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)V
    .registers 5
    .param p0, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p1, "localAddress"    # Ljava/net/SocketAddress;

    .line 199
    invoke-interface {p0}, Lorg/jboss/netty/channel/Channel;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;

    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->BOUND:Lorg/jboss/netty/channel/ChannelState;

    invoke-direct {v1, p0, v2, p1}, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelPipeline;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 202
    return-void
.end method

.method public static fireChannelBound(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;)V
    .registers 5
    .param p0, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p1, "localAddress"    # Ljava/net/SocketAddress;

    .line 214
    new-instance v0, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;

    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->BOUND:Lorg/jboss/netty/channel/ChannelState;

    invoke-direct {v0, v1, v2, p1}, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 216
    return-void
.end method

.method public static fireChannelClosed(Lorg/jboss/netty/channel/Channel;)V
    .registers 5
    .param p0, "channel"    # Lorg/jboss/netty/channel/Channel;

    .line 476
    invoke-interface {p0}, Lorg/jboss/netty/channel/Channel;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;

    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->OPEN:Lorg/jboss/netty/channel/ChannelState;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v1, p0, v2, v3}, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelPipeline;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 481
    invoke-interface {p0}, Lorg/jboss/netty/channel/Channel;->getParent()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 482
    invoke-interface {p0}, Lorg/jboss/netty/channel/Channel;->getParent()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/jboss/netty/channel/Channels;->fireChildChannelStateChanged(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/Channel;)V

    .line 484
    :cond_1d
    return-void
.end method

.method public static fireChannelClosed(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .registers 5
    .param p0, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;

    .line 493
    new-instance v0, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;

    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->OPEN:Lorg/jboss/netty/channel/ChannelState;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2, v3}, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 496
    return-void
.end method

.method public static fireChannelClosedLater(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;
    .registers 3
    .param p0, "channel"    # Lorg/jboss/netty/channel/Channel;

    .line 460
    invoke-interface {p0}, Lorg/jboss/netty/channel/Channel;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/channel/Channels$6;

    invoke-direct {v1, p0}, Lorg/jboss/netty/channel/Channels$6;-><init>(Lorg/jboss/netty/channel/Channel;)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelPipeline;->execute(Ljava/lang/Runnable;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public static fireChannelConnected(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)V
    .registers 5
    .param p0, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p1, "remoteAddress"    # Ljava/net/SocketAddress;

    .line 227
    invoke-interface {p0}, Lorg/jboss/netty/channel/Channel;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;

    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->CONNECTED:Lorg/jboss/netty/channel/ChannelState;

    invoke-direct {v1, p0, v2, p1}, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelPipeline;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 230
    return-void
.end method

.method public static fireChannelConnected(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;)V
    .registers 5
    .param p0, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p1, "remoteAddress"    # Ljava/net/SocketAddress;

    .line 243
    new-instance v0, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;

    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->CONNECTED:Lorg/jboss/netty/channel/ChannelState;

    invoke-direct {v0, v1, v2, p1}, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 245
    return-void
.end method

.method public static fireChannelDisconnected(Lorg/jboss/netty/channel/Channel;)V
    .registers 5
    .param p0, "channel"    # Lorg/jboss/netty/channel/Channel;

    .line 399
    invoke-interface {p0}, Lorg/jboss/netty/channel/Channel;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;

    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->CONNECTED:Lorg/jboss/netty/channel/ChannelState;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelPipeline;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 402
    return-void
.end method

.method public static fireChannelDisconnected(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .registers 5
    .param p0, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;

    .line 411
    new-instance v0, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;

    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->CONNECTED:Lorg/jboss/netty/channel/ChannelState;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 413
    return-void
.end method

.method public static fireChannelDisconnectedLater(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;
    .registers 3
    .param p0, "channel"    # Lorg/jboss/netty/channel/Channel;

    .line 386
    invoke-interface {p0}, Lorg/jboss/netty/channel/Channel;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/channel/Channels$4;

    invoke-direct {v1, p0}, Lorg/jboss/netty/channel/Channels$4;-><init>(Lorg/jboss/netty/channel/Channel;)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelPipeline;->execute(Ljava/lang/Runnable;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public static fireChannelInterestChanged(Lorg/jboss/netty/channel/Channel;)V
    .registers 5
    .param p0, "channel"    # Lorg/jboss/netty/channel/Channel;

    .line 361
    invoke-interface {p0}, Lorg/jboss/netty/channel/Channel;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;

    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->INTEREST_OPS:Lorg/jboss/netty/channel/ChannelState;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelPipeline;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 364
    return-void
.end method

.method public static fireChannelInterestChanged(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .registers 5
    .param p0, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;

    .line 375
    new-instance v0, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;

    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->INTEREST_OPS:Lorg/jboss/netty/channel/ChannelState;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 378
    return-void
.end method

.method public static fireChannelInterestChangedLater(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;
    .registers 3
    .param p0, "channel"    # Lorg/jboss/netty/channel/Channel;

    .line 346
    invoke-interface {p0}, Lorg/jboss/netty/channel/Channel;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/channel/Channels$3;

    invoke-direct {v1, p0}, Lorg/jboss/netty/channel/Channels$3;-><init>(Lorg/jboss/netty/channel/Channel;)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelPipeline;->execute(Ljava/lang/Runnable;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public static fireChannelOpen(Lorg/jboss/netty/channel/Channel;)V
    .registers 5
    .param p0, "channel"    # Lorg/jboss/netty/channel/Channel;

    .line 166
    invoke-interface {p0}, Lorg/jboss/netty/channel/Channel;->getParent()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 167
    invoke-interface {p0}, Lorg/jboss/netty/channel/Channel;->getParent()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/jboss/netty/channel/Channels;->fireChildChannelStateChanged(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/Channel;)V

    .line 170
    :cond_d
    invoke-interface {p0}, Lorg/jboss/netty/channel/Channel;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;

    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->OPEN:Lorg/jboss/netty/channel/ChannelState;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v1, p0, v2, v3}, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelPipeline;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 173
    return-void
.end method

.method public static fireChannelOpen(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .registers 5
    .param p0, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;

    .line 186
    new-instance v0, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;

    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->OPEN:Lorg/jboss/netty/channel/ChannelState;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2, v3}, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 188
    return-void
.end method

.method public static fireChannelUnbound(Lorg/jboss/netty/channel/Channel;)V
    .registers 5
    .param p0, "channel"    # Lorg/jboss/netty/channel/Channel;

    .line 436
    invoke-interface {p0}, Lorg/jboss/netty/channel/Channel;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;

    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->BOUND:Lorg/jboss/netty/channel/ChannelState;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelPipeline;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 438
    return-void
.end method

.method public static fireChannelUnbound(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .registers 5
    .param p0, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;

    .line 448
    new-instance v0, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;

    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->BOUND:Lorg/jboss/netty/channel/ChannelState;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 450
    return-void
.end method

.method public static fireChannelUnboundLater(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;
    .registers 3
    .param p0, "channel"    # Lorg/jboss/netty/channel/Channel;

    .line 421
    invoke-interface {p0}, Lorg/jboss/netty/channel/Channel;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/channel/Channels$5;

    invoke-direct {v1, p0}, Lorg/jboss/netty/channel/Channels$5;-><init>(Lorg/jboss/netty/channel/Channel;)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelPipeline;->execute(Ljava/lang/Runnable;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method private static fireChildChannelStateChanged(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/Channel;)V
    .registers 4
    .param p0, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p1, "childChannel"    # Lorg/jboss/netty/channel/Channel;

    .line 549
    invoke-interface {p0}, Lorg/jboss/netty/channel/Channel;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/channel/DefaultChildChannelStateEvent;

    invoke-direct {v1, p0, p1}, Lorg/jboss/netty/channel/DefaultChildChannelStateEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/Channel;)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelPipeline;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 551
    return-void
.end method

.method public static fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V
    .registers 4
    .param p0, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 533
    invoke-interface {p0}, Lorg/jboss/netty/channel/Channel;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/channel/DefaultExceptionEvent;

    invoke-direct {v1, p0, p1}, Lorg/jboss/netty/channel/DefaultExceptionEvent;-><init>(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelPipeline;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 535
    return-void
.end method

.method public static fireExceptionCaught(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .registers 4
    .param p0, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 544
    new-instance v0, Lorg/jboss/netty/channel/DefaultExceptionEvent;

    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/jboss/netty/channel/DefaultExceptionEvent;-><init>(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 545
    return-void
.end method

.method public static fireExceptionCaughtLater(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/ChannelFuture;
    .registers 4
    .param p0, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 504
    invoke-interface {p0}, Lorg/jboss/netty/channel/Channel;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/channel/Channels$7;

    invoke-direct {v1, p0, p1}, Lorg/jboss/netty/channel/Channels$7;-><init>(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelPipeline;->execute(Ljava/lang/Runnable;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public static fireExceptionCaughtLater(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/ChannelFuture;
    .registers 4
    .param p0, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 519
    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/channel/Channels$8;

    invoke-direct {v1, p0, p1}, Lorg/jboss/netty/channel/Channels$8;-><init>(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelPipeline;->execute(Ljava/lang/Runnable;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public static fireMessageReceived(Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;)V
    .registers 3
    .param p0, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p1, "message"    # Ljava/lang/Object;

    .line 255
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/jboss/netty/channel/Channels;->fireMessageReceived(Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    .line 256
    return-void
.end method

.method public static fireMessageReceived(Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;Ljava/net/SocketAddress;)V
    .registers 5
    .param p0, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "remoteAddress"    # Ljava/net/SocketAddress;

    .line 268
    invoke-interface {p0}, Lorg/jboss/netty/channel/Channel;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/channel/UpstreamMessageEvent;

    invoke-direct {v1, p0, p1, p2}, Lorg/jboss/netty/channel/UpstreamMessageEvent;-><init>(Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelPipeline;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 270
    return-void
.end method

.method public static fireMessageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .registers 5
    .param p0, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p1, "message"    # Ljava/lang/Object;

    .line 281
    new-instance v0, Lorg/jboss/netty/channel/UpstreamMessageEvent;

    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lorg/jboss/netty/channel/UpstreamMessageEvent;-><init>(Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 282
    return-void
.end method

.method public static fireMessageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Ljava/net/SocketAddress;)V
    .registers 5
    .param p0, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "remoteAddress"    # Ljava/net/SocketAddress;

    .line 296
    new-instance v0, Lorg/jboss/netty/channel/UpstreamMessageEvent;

    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lorg/jboss/netty/channel/UpstreamMessageEvent;-><init>(Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 298
    return-void
.end method

.method public static fireWriteComplete(Lorg/jboss/netty/channel/Channel;J)V
    .registers 6
    .param p0, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p1, "amount"    # J

    .line 322
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_7

    .line 323
    return-void

    .line 326
    :cond_7
    invoke-interface {p0}, Lorg/jboss/netty/channel/Channel;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/channel/DefaultWriteCompletionEvent;

    invoke-direct {v1, p0, p1, p2}, Lorg/jboss/netty/channel/DefaultWriteCompletionEvent;-><init>(Lorg/jboss/netty/channel/Channel;J)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelPipeline;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 328
    return-void
.end method

.method public static fireWriteComplete(Lorg/jboss/netty/channel/ChannelHandlerContext;J)V
    .registers 5
    .param p0, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p1, "amount"    # J

    .line 337
    new-instance v0, Lorg/jboss/netty/channel/DefaultWriteCompletionEvent;

    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lorg/jboss/netty/channel/DefaultWriteCompletionEvent;-><init>(Lorg/jboss/netty/channel/Channel;J)V

    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 338
    return-void
.end method

.method public static fireWriteCompleteLater(Lorg/jboss/netty/channel/Channel;J)Lorg/jboss/netty/channel/ChannelFuture;
    .registers 5
    .param p0, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p1, "amount"    # J

    .line 306
    invoke-interface {p0}, Lorg/jboss/netty/channel/Channel;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/channel/Channels$2;

    invoke-direct {v1, p0, p1, p2}, Lorg/jboss/netty/channel/Channels$2;-><init>(Lorg/jboss/netty/channel/Channel;J)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelPipeline;->execute(Ljava/lang/Runnable;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public static future(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;
    .registers 2
    .param p0, "channel"    # Lorg/jboss/netty/channel/Channel;

    .line 121
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/jboss/netty/channel/Channels;->future(Lorg/jboss/netty/channel/Channel;Z)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public static future(Lorg/jboss/netty/channel/Channel;Z)Lorg/jboss/netty/channel/ChannelFuture;
    .registers 3
    .param p0, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p1, "cancellable"    # Z

    .line 131
    new-instance v0, Lorg/jboss/netty/channel/DefaultChannelFuture;

    invoke-direct {v0, p0, p1}, Lorg/jboss/netty/channel/DefaultChannelFuture;-><init>(Lorg/jboss/netty/channel/Channel;Z)V

    return-object v0
.end method

.method public static pipeline()Lorg/jboss/netty/channel/ChannelPipeline;
    .registers 1

    .line 58
    new-instance v0, Lorg/jboss/netty/channel/DefaultChannelPipeline;

    invoke-direct {v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline;-><init>()V

    return-object v0
.end method

.method public static pipeline(Lorg/jboss/netty/channel/ChannelPipeline;)Lorg/jboss/netty/channel/ChannelPipeline;
    .registers 6
    .param p0, "pipeline"    # Lorg/jboss/netty/channel/ChannelPipeline;

    .line 91
    invoke-static {}, Lorg/jboss/netty/channel/Channels;->pipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0

    .line 92
    .local v0, "newPipeline":Lorg/jboss/netty/channel/ChannelPipeline;
    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelPipeline;->toMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 93
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jboss/netty/channel/ChannelHandler;

    invoke-interface {v0, v3, v4}, Lorg/jboss/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    .line 94
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;>;"
    goto :goto_10

    .line 95
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2c
    return-object v0
.end method

.method public static varargs pipeline([Lorg/jboss/netty/channel/ChannelHandler;)Lorg/jboss/netty/channel/ChannelPipeline;
    .registers 5
    .param p0, "handlers"    # [Lorg/jboss/netty/channel/ChannelHandler;

    .line 69
    if-eqz p0, :cond_1a

    .line 73
    invoke-static {}, Lorg/jboss/netty/channel/Channels;->pipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0

    .line 74
    .local v0, "newPipeline":Lorg/jboss/netty/channel/ChannelPipeline;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, p0

    if-ge v1, v2, :cond_19

    .line 75
    aget-object v2, p0, v1

    .line 76
    .local v2, "h":Lorg/jboss/netty/channel/ChannelHandler;
    if-nez v2, :cond_f

    .line 77
    goto :goto_19

    .line 79
    :cond_f
    invoke-static {v1}, Lorg/jboss/netty/util/internal/ConversionUtil;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Lorg/jboss/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    .line 74
    .end local v2    # "h":Lorg/jboss/netty/channel/ChannelHandler;
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 81
    .end local v1    # "i":I
    :cond_19
    :goto_19
    return-object v0

    .line 70
    .end local v0    # "newPipeline":Lorg/jboss/netty/channel/ChannelPipeline;
    :cond_1a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "handlers"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static pipelineFactory(Lorg/jboss/netty/channel/ChannelPipeline;)Lorg/jboss/netty/channel/ChannelPipelineFactory;
    .registers 2
    .param p0, "pipeline"    # Lorg/jboss/netty/channel/ChannelPipeline;

    .line 107
    new-instance v0, Lorg/jboss/netty/channel/Channels$1;

    invoke-direct {v0, p0}, Lorg/jboss/netty/channel/Channels$1;-><init>(Lorg/jboss/netty/channel/ChannelPipeline;)V

    return-object v0
.end method

.method public static setInterestOps(Lorg/jboss/netty/channel/Channel;I)Lorg/jboss/netty/channel/ChannelFuture;
    .registers 7
    .param p0, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p1, "interestOps"    # I

    .line 749
    invoke-static {p1}, Lorg/jboss/netty/channel/Channels;->validateInterestOps(I)V

    .line 750
    invoke-static {p1}, Lorg/jboss/netty/channel/Channels;->filterDownstreamInterestOps(I)I

    move-result p1

    .line 752
    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->future(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    .line 753
    .local v0, "future":Lorg/jboss/netty/channel/ChannelFuture;
    invoke-interface {p0}, Lorg/jboss/netty/channel/Channel;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v1

    new-instance v2, Lorg/jboss/netty/channel/DownstreamChannelStateEvent;

    sget-object v3, Lorg/jboss/netty/channel/ChannelState;->INTEREST_OPS:Lorg/jboss/netty/channel/ChannelState;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, p0, v0, v3, v4}, Lorg/jboss/netty/channel/DownstreamChannelStateEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFuture;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Lorg/jboss/netty/channel/ChannelPipeline;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 755
    return-object v0
.end method

.method public static setInterestOps(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;I)V
    .registers 7
    .param p0, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p1, "future"    # Lorg/jboss/netty/channel/ChannelFuture;
    .param p2, "interestOps"    # I

    .line 770
    invoke-static {p2}, Lorg/jboss/netty/channel/Channels;->validateInterestOps(I)V

    .line 771
    invoke-static {p2}, Lorg/jboss/netty/channel/Channels;->filterDownstreamInterestOps(I)I

    move-result p2

    .line 773
    new-instance v0, Lorg/jboss/netty/channel/DownstreamChannelStateEvent;

    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->INTEREST_OPS:Lorg/jboss/netty/channel/ChannelState;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, p1, v2, v3}, Lorg/jboss/netty/channel/DownstreamChannelStateEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFuture;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 777
    return-void
.end method

.method public static succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;
    .registers 2
    .param p0, "channel"    # Lorg/jboss/netty/channel/Channel;

    .line 139
    instance-of v0, p0, Lorg/jboss/netty/channel/AbstractChannel;

    if-eqz v0, :cond_c

    .line 140
    move-object v0, p0

    check-cast v0, Lorg/jboss/netty/channel/AbstractChannel;

    invoke-virtual {v0}, Lorg/jboss/netty/channel/AbstractChannel;->getSucceededFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0

    .line 142
    :cond_c
    new-instance v0, Lorg/jboss/netty/channel/SucceededChannelFuture;

    invoke-direct {v0, p0}, Lorg/jboss/netty/channel/SucceededChannelFuture;-><init>(Lorg/jboss/netty/channel/Channel;)V

    return-object v0
.end method

.method public static unbind(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;
    .registers 6
    .param p0, "channel"    # Lorg/jboss/netty/channel/Channel;

    .line 620
    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->future(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    .line 621
    .local v0, "future":Lorg/jboss/netty/channel/ChannelFuture;
    invoke-interface {p0}, Lorg/jboss/netty/channel/Channel;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v1

    new-instance v2, Lorg/jboss/netty/channel/DownstreamChannelStateEvent;

    sget-object v3, Lorg/jboss/netty/channel/ChannelState;->BOUND:Lorg/jboss/netty/channel/ChannelState;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v0, v3, v4}, Lorg/jboss/netty/channel/DownstreamChannelStateEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFuture;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Lorg/jboss/netty/channel/ChannelPipeline;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 623
    return-object v0
.end method

.method public static unbind(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;)V
    .registers 6
    .param p0, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p1, "future"    # Lorg/jboss/netty/channel/ChannelFuture;

    .line 605
    new-instance v0, Lorg/jboss/netty/channel/DownstreamChannelStateEvent;

    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->BOUND:Lorg/jboss/netty/channel/ChannelState;

    const/4 v3, 0x0

    invoke-direct {v0, v1, p1, v2, v3}, Lorg/jboss/netty/channel/DownstreamChannelStateEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFuture;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 607
    return-void
.end method

.method private static validateInterestOps(I)V
    .registers 4
    .param p0, "interestOps"    # I

    .line 842
    packed-switch p0, :pswitch_data_1c

    .line 849
    :pswitch_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid interestOps: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 847
    :pswitch_1a
    nop

    .line 852
    return-void

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_1a
        :pswitch_3
        :pswitch_3
        :pswitch_1a
        :pswitch_1a
    .end packed-switch
.end method

.method public static write(Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;)Lorg/jboss/netty/channel/ChannelFuture;
    .registers 3
    .param p0, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p1, "message"    # Ljava/lang/Object;

    .line 679
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/jboss/netty/channel/Channels;->write(Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public static write(Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;
    .registers 6
    .param p0, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "remoteAddress"    # Ljava/net/SocketAddress;

    .line 711
    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->future(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    .line 712
    .local v0, "future":Lorg/jboss/netty/channel/ChannelFuture;
    invoke-interface {p0}, Lorg/jboss/netty/channel/Channel;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v1

    new-instance v2, Lorg/jboss/netty/channel/DownstreamMessageEvent;

    invoke-direct {v2, p0, v0, p1, p2}, Lorg/jboss/netty/channel/DownstreamMessageEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    invoke-interface {v1, v2}, Lorg/jboss/netty/channel/ChannelPipeline;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 714
    return-object v0
.end method

.method public static write(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;)V
    .registers 4
    .param p0, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p1, "future"    # Lorg/jboss/netty/channel/ChannelFuture;
    .param p2, "message"    # Ljava/lang/Object;

    .line 694
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/jboss/netty/channel/Channels;->write(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    .line 695
    return-void
.end method

.method public static write(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;Ljava/net/SocketAddress;)V
    .registers 6
    .param p0, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p1, "future"    # Lorg/jboss/netty/channel/ChannelFuture;
    .param p2, "message"    # Ljava/lang/Object;
    .param p3, "remoteAddress"    # Ljava/net/SocketAddress;

    .line 733
    new-instance v0, Lorg/jboss/netty/channel/DownstreamMessageEvent;

    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2, p3}, Lorg/jboss/netty/channel/DownstreamMessageEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 735
    return-void
.end method
