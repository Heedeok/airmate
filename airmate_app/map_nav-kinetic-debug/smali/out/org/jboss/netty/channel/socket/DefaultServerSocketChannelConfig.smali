.class public Lorg/jboss/netty/channel/socket/DefaultServerSocketChannelConfig;
.super Lorg/jboss/netty/channel/DefaultServerChannelConfig;
.source "DefaultServerSocketChannelConfig.java"

# interfaces
.implements Lorg/jboss/netty/channel/socket/ServerSocketChannelConfig;


# instance fields
.field private volatile backlog:I

.field private final socket:Ljava/net/ServerSocket;


# direct methods
.method public constructor <init>(Ljava/net/ServerSocket;)V
    .registers 4
    .param p1, "socket"    # Ljava/net/ServerSocket;

    .line 37
    invoke-direct {p0}, Lorg/jboss/netty/channel/DefaultServerChannelConfig;-><init>()V

    .line 38
    if-eqz p1, :cond_8

    .line 41
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/DefaultServerSocketChannelConfig;->socket:Ljava/net/ServerSocket;

    .line 42
    return-void

    .line 39
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "socket"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getBacklog()I
    .registers 2

    .line 99
    iget v0, p0, Lorg/jboss/netty/channel/socket/DefaultServerSocketChannelConfig;->backlog:I

    return v0
.end method

.method public getReceiveBufferSize()I
    .registers 3

    .line 80
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/DefaultServerSocketChannelConfig;->socket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getReceiveBufferSize()I

    move-result v0
    :try_end_6
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 81
    :catch_7
    move-exception v0

    .line 82
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isReuseAddress()Z
    .registers 3

    .line 64
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/DefaultServerSocketChannelConfig;->socket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getReuseAddress()Z

    move-result v0
    :try_end_6
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 65
    :catch_7
    move-exception v0

    .line 66
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setBacklog(I)V
    .registers 5
    .param p1, "backlog"    # I

    .line 103
    if-ltz p1, :cond_5

    .line 106
    iput p1, p0, Lorg/jboss/netty/channel/socket/DefaultServerSocketChannelConfig;->backlog:I

    .line 107
    return-void

    .line 104
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "backlog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOption(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 46
    invoke-super {p0, p1, p2}, Lorg/jboss/netty/channel/DefaultServerChannelConfig;->setOption(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 47
    return v1

    .line 50
    :cond_8
    const-string v0, "receiveBufferSize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 51
    invoke-static {p2}, Lorg/jboss/netty/util/internal/ConversionUtil;->toInt(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jboss/netty/channel/socket/DefaultServerSocketChannelConfig;->setReceiveBufferSize(I)V

    goto :goto_37

    .line 52
    :cond_18
    const-string v0, "reuseAddress"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 53
    invoke-static {p2}, Lorg/jboss/netty/util/internal/ConversionUtil;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jboss/netty/channel/socket/DefaultServerSocketChannelConfig;->setReuseAddress(Z)V

    goto :goto_37

    .line 54
    :cond_28
    const-string v0, "backlog"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 55
    invoke-static {p2}, Lorg/jboss/netty/util/internal/ConversionUtil;->toInt(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jboss/netty/channel/socket/DefaultServerSocketChannelConfig;->setBacklog(I)V

    .line 59
    :goto_37
    return v1

    .line 57
    :cond_38
    const/4 v0, 0x0

    return v0
.end method

.method public setPerformancePreferences(III)V
    .registers 5
    .param p1, "connectionTime"    # I
    .param p2, "latency"    # I
    .param p3, "bandwidth"    # I

    .line 95
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/DefaultServerSocketChannelConfig;->socket:Ljava/net/ServerSocket;

    invoke-virtual {v0, p1, p2, p3}, Ljava/net/ServerSocket;->setPerformancePreferences(III)V

    .line 96
    return-void
.end method

.method public setReceiveBufferSize(I)V
    .registers 4
    .param p1, "receiveBufferSize"    # I

    .line 88
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/DefaultServerSocketChannelConfig;->socket:Ljava/net/ServerSocket;

    invoke-virtual {v0, p1}, Ljava/net/ServerSocket;->setReceiveBufferSize(I)V
    :try_end_5
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_5} :catch_7

    .line 91
    nop

    .line 92
    return-void

    .line 89
    :catch_7
    move-exception v0

    .line 90
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setReuseAddress(Z)V
    .registers 4
    .param p1, "reuseAddress"    # Z

    .line 72
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/DefaultServerSocketChannelConfig;->socket:Ljava/net/ServerSocket;

    invoke-virtual {v0, p1}, Ljava/net/ServerSocket;->setReuseAddress(Z)V
    :try_end_5
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_5} :catch_7

    .line 75
    nop

    .line 76
    return-void

    .line 73
    :catch_7
    move-exception v0

    .line 74
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
