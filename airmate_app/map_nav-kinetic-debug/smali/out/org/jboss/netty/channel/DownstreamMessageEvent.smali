.class public Lorg/jboss/netty/channel/DownstreamMessageEvent;
.super Ljava/lang/Object;
.source "DownstreamMessageEvent.java"

# interfaces
.implements Lorg/jboss/netty/channel/MessageEvent;


# instance fields
.field private final channel:Lorg/jboss/netty/channel/Channel;

.field private final future:Lorg/jboss/netty/channel/ChannelFuture;

.field private final message:Ljava/lang/Object;

.field private final remoteAddress:Ljava/net/SocketAddress;


# direct methods
.method public constructor <init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;Ljava/net/SocketAddress;)V
    .registers 7
    .param p1, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p2, "future"    # Lorg/jboss/netty/channel/ChannelFuture;
    .param p3, "message"    # Ljava/lang/Object;
    .param p4, "remoteAddress"    # Ljava/net/SocketAddress;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    if-eqz p1, :cond_2b

    .line 42
    if-eqz p2, :cond_23

    .line 45
    if-eqz p3, :cond_1b

    .line 48
    iput-object p1, p0, Lorg/jboss/netty/channel/DownstreamMessageEvent;->channel:Lorg/jboss/netty/channel/Channel;

    .line 49
    iput-object p2, p0, Lorg/jboss/netty/channel/DownstreamMessageEvent;->future:Lorg/jboss/netty/channel/ChannelFuture;

    .line 50
    iput-object p3, p0, Lorg/jboss/netty/channel/DownstreamMessageEvent;->message:Ljava/lang/Object;

    .line 51
    if-eqz p4, :cond_14

    .line 52
    iput-object p4, p0, Lorg/jboss/netty/channel/DownstreamMessageEvent;->remoteAddress:Ljava/net/SocketAddress;

    goto :goto_1a

    .line 54
    :cond_14
    invoke-interface {p1}, Lorg/jboss/netty/channel/Channel;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/channel/DownstreamMessageEvent;->remoteAddress:Ljava/net/SocketAddress;

    .line 56
    :goto_1a
    return-void

    .line 46
    :cond_1b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "message"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_23
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "future"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_2b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "channel"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getChannel()Lorg/jboss/netty/channel/Channel;
    .registers 2

    .line 59
    iget-object v0, p0, Lorg/jboss/netty/channel/DownstreamMessageEvent;->channel:Lorg/jboss/netty/channel/Channel;

    return-object v0
.end method

.method public getFuture()Lorg/jboss/netty/channel/ChannelFuture;
    .registers 2

    .line 63
    iget-object v0, p0, Lorg/jboss/netty/channel/DownstreamMessageEvent;->future:Lorg/jboss/netty/channel/ChannelFuture;

    return-object v0
.end method

.method public getMessage()Ljava/lang/Object;
    .registers 2

    .line 67
    iget-object v0, p0, Lorg/jboss/netty/channel/DownstreamMessageEvent;->message:Ljava/lang/Object;

    return-object v0
.end method

.method public getRemoteAddress()Ljava/net/SocketAddress;
    .registers 2

    .line 71
    iget-object v0, p0, Lorg/jboss/netty/channel/DownstreamMessageEvent;->remoteAddress:Ljava/net/SocketAddress;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 76
    invoke-virtual {p0}, Lorg/jboss/netty/channel/DownstreamMessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jboss/netty/channel/DownstreamMessageEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    invoke-interface {v1}, Lorg/jboss/netty/channel/Channel;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v1

    if-ne v0, v1, :cond_33

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jboss/netty/channel/DownstreamMessageEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " WRITE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jboss/netty/channel/DownstreamMessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/jboss/netty/util/internal/StringUtil;->stripControlCharacters(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 80
    :cond_33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jboss/netty/channel/DownstreamMessageEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " WRITE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jboss/netty/channel/DownstreamMessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/jboss/netty/util/internal/StringUtil;->stripControlCharacters(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jboss/netty/channel/DownstreamMessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
