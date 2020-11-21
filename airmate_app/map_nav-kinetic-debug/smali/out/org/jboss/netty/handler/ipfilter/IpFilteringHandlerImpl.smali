.class public abstract Lorg/jboss/netty/handler/ipfilter/IpFilteringHandlerImpl;
.super Ljava/lang/Object;
.source "IpFilteringHandlerImpl.java"

# interfaces
.implements Lorg/jboss/netty/channel/ChannelUpstreamHandler;
.implements Lorg/jboss/netty/handler/ipfilter/IpFilteringHandler;


# instance fields
.field private listener:Lorg/jboss/netty/handler/ipfilter/IpFilterListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    return-void
.end method


# virtual methods
.method protected abstract accept(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;Ljava/net/InetSocketAddress;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected continues(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)Z
    .registers 4
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/ChannelEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lorg/jboss/netty/handler/ipfilter/IpFilteringHandlerImpl;->listener:Lorg/jboss/netty/handler/ipfilter/IpFilterListener;

    if-eqz v0, :cond_b

    .line 92
    iget-object v0, p0, Lorg/jboss/netty/handler/ipfilter/IpFilteringHandlerImpl;->listener:Lorg/jboss/netty/handler/ipfilter/IpFilterListener;

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/handler/ipfilter/IpFilterListener;->continues(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)Z

    move-result v0

    return v0

    .line 94
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method protected handleAllowedChannel(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;Ljava/net/InetSocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;
    .registers 5
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/ChannelEvent;
    .param p3, "inetSocketAddress"    # Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lorg/jboss/netty/handler/ipfilter/IpFilteringHandlerImpl;->listener:Lorg/jboss/netty/handler/ipfilter/IpFilterListener;

    if-nez v0, :cond_6

    .line 66
    const/4 v0, 0x0

    return-object v0

    .line 68
    :cond_6
    iget-object v0, p0, Lorg/jboss/netty/handler/ipfilter/IpFilteringHandlerImpl;->listener:Lorg/jboss/netty/handler/ipfilter/IpFilterListener;

    invoke-interface {v0, p1, p2, p3}, Lorg/jboss/netty/handler/ipfilter/IpFilterListener;->allowed(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;Ljava/net/InetSocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method protected handleRefusedChannel(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;Ljava/net/InetSocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;
    .registers 5
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/ChannelEvent;
    .param p3, "inetSocketAddress"    # Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lorg/jboss/netty/handler/ipfilter/IpFilteringHandlerImpl;->listener:Lorg/jboss/netty/handler/ipfilter/IpFilterListener;

    if-nez v0, :cond_6

    .line 58
    const/4 v0, 0x0

    return-object v0

    .line 60
    :cond_6
    iget-object v0, p0, Lorg/jboss/netty/handler/ipfilter/IpFilteringHandlerImpl;->listener:Lorg/jboss/netty/handler/ipfilter/IpFilterListener;

    invoke-interface {v0, p1, p2, p3}, Lorg/jboss/netty/handler/ipfilter/IpFilterListener;->refused(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;Ljava/net/InetSocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public handleUpstream(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V
    .registers 7
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/ChannelEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 100
    instance-of v0, p2, Lorg/jboss/netty/channel/ChannelStateEvent;

    if-eqz v0, :cond_79

    .line 101
    move-object v0, p2

    check-cast v0, Lorg/jboss/netty/channel/ChannelStateEvent;

    .line 102
    .local v0, "evt":Lorg/jboss/netty/channel/ChannelStateEvent;
    sget-object v1, Lorg/jboss/netty/handler/ipfilter/IpFilteringHandlerImpl$1;->$SwitchMap$org$jboss$netty$channel$ChannelState:[I

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getState()Lorg/jboss/netty/channel/ChannelState;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jboss/netty/channel/ChannelState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_8a

    .end local v0    # "evt":Lorg/jboss/netty/channel/ChannelStateEvent;
    goto :goto_79

    .line 115
    .restart local v0    # "evt":Lorg/jboss/netty/channel/ChannelStateEvent;
    :pswitch_17
    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5b

    .line 117
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    invoke-interface {v1}, Lorg/jboss/netty/channel/Channel;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v1

    check-cast v1, Ljava/net/InetSocketAddress;

    .line 118
    .local v1, "inetSocketAddress":Ljava/net/InetSocketAddress;
    invoke-virtual {p0, p1, p2, v1}, Lorg/jboss/netty/handler/ipfilter/IpFilteringHandlerImpl;->accept(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;Ljava/net/InetSocketAddress;)Z

    move-result v2

    if-nez v2, :cond_53

    .line 119
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->setAttachment(Ljava/lang/Object;)V

    .line 120
    invoke-virtual {p0, p1, p2, v1}, Lorg/jboss/netty/handler/ipfilter/IpFilteringHandlerImpl;->handleRefusedChannel(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;Ljava/net/InetSocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v2

    .line 121
    .local v2, "future":Lorg/jboss/netty/channel/ChannelFuture;
    if-eqz v2, :cond_3e

    .line 122
    sget-object v3, Lorg/jboss/netty/channel/ChannelFutureListener;->CLOSE:Lorg/jboss/netty/channel/ChannelFutureListener;

    invoke-interface {v2, v3}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    goto :goto_45

    .line 124
    :cond_3e
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v3

    invoke-static {v3}, Lorg/jboss/netty/channel/Channels;->close(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    .line 126
    :goto_45
    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/ipfilter/IpFilteringHandlerImpl;->isBlocked(Lorg/jboss/netty/channel/ChannelHandlerContext;)Z

    move-result v3

    if-eqz v3, :cond_52

    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/handler/ipfilter/IpFilteringHandlerImpl;->continues(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)Z

    move-result v3

    if-nez v3, :cond_52

    .line 128
    return-void

    .line 130
    .end local v2    # "future":Lorg/jboss/netty/channel/ChannelFuture;
    :cond_52
    goto :goto_56

    .line 131
    :cond_53
    invoke-virtual {p0, p1, p2, v1}, Lorg/jboss/netty/handler/ipfilter/IpFilteringHandlerImpl;->handleAllowedChannel(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;Ljava/net/InetSocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;

    .line 134
    :goto_56
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->setAttachment(Ljava/lang/Object;)V

    .line 135
    .end local v1    # "inetSocketAddress":Ljava/net/InetSocketAddress;
    goto :goto_79

    .line 137
    :cond_5b
    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/ipfilter/IpFilteringHandlerImpl;->isBlocked(Lorg/jboss/netty/channel/ChannelHandlerContext;)Z

    move-result v1

    if-eqz v1, :cond_79

    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/handler/ipfilter/IpFilteringHandlerImpl;->continues(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)Z

    move-result v1

    if-nez v1, :cond_79

    .line 139
    return-void

    .line 107
    :pswitch_68
    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/ipfilter/IpFilteringHandlerImpl;->isBlocked(Lorg/jboss/netty/channel/ChannelHandlerContext;)Z

    move-result v1

    if-eqz v1, :cond_75

    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/handler/ipfilter/IpFilteringHandlerImpl;->continues(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)Z

    move-result v1

    if-nez v1, :cond_75

    .line 109
    return-void

    .line 111
    :cond_75
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 112
    return-void

    .line 145
    .end local v0    # "evt":Lorg/jboss/netty/channel/ChannelStateEvent;
    :cond_79
    :goto_79
    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/ipfilter/IpFilteringHandlerImpl;->isBlocked(Lorg/jboss/netty/channel/ChannelHandlerContext;)Z

    move-result v0

    if-eqz v0, :cond_86

    invoke-virtual {p0, p1, p2}, Lorg/jboss/netty/handler/ipfilter/IpFilteringHandlerImpl;->continues(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)Z

    move-result v0

    if-nez v0, :cond_86

    .line 147
    return-void

    .line 150
    :cond_86
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 151
    return-void

    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_68
        :pswitch_68
        :pswitch_17
    .end packed-switch
.end method

.method protected isBlocked(Lorg/jboss/netty/channel/ChannelHandlerContext;)Z
    .registers 3
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;

    .line 77
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getAttachment()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public removeIpFilterListener()V
    .registers 2

    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jboss/netty/handler/ipfilter/IpFilteringHandlerImpl;->listener:Lorg/jboss/netty/handler/ipfilter/IpFilterListener;

    .line 162
    return-void
.end method

.method public setIpFilterListener(Lorg/jboss/netty/handler/ipfilter/IpFilterListener;)V
    .registers 2
    .param p1, "listener"    # Lorg/jboss/netty/handler/ipfilter/IpFilterListener;

    .line 155
    iput-object p1, p0, Lorg/jboss/netty/handler/ipfilter/IpFilteringHandlerImpl;->listener:Lorg/jboss/netty/handler/ipfilter/IpFilterListener;

    .line 156
    return-void
.end method
