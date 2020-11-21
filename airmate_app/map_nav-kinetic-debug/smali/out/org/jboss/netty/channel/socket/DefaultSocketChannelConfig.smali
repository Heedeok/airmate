.class public Lorg/jboss/netty/channel/socket/DefaultSocketChannelConfig;
.super Lorg/jboss/netty/channel/DefaultChannelConfig;
.source "DefaultSocketChannelConfig.java"

# interfaces
.implements Lorg/jboss/netty/channel/socket/SocketChannelConfig;


# instance fields
.field private final socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Ljava/net/Socket;)V
    .registers 4
    .param p1, "socket"    # Ljava/net/Socket;

    .line 36
    invoke-direct {p0}, Lorg/jboss/netty/channel/DefaultChannelConfig;-><init>()V

    .line 37
    if-eqz p1, :cond_8

    .line 40
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/DefaultSocketChannelConfig;->socket:Ljava/net/Socket;

    .line 41
    return-void

    .line 38
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "socket"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getReceiveBufferSize()I
    .registers 3

    .line 71
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/DefaultSocketChannelConfig;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getReceiveBufferSize()I

    move-result v0
    :try_end_6
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 72
    :catch_7
    move-exception v0

    .line 73
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getSendBufferSize()I
    .registers 3

    .line 79
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/DefaultSocketChannelConfig;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSendBufferSize()I

    move-result v0
    :try_end_6
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 80
    :catch_7
    move-exception v0

    .line 81
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getSoLinger()I
    .registers 3

    .line 87
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/DefaultSocketChannelConfig;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSoLinger()I

    move-result v0
    :try_end_6
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 88
    :catch_7
    move-exception v0

    .line 89
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getTrafficClass()I
    .registers 3

    .line 95
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/DefaultSocketChannelConfig;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getTrafficClass()I

    move-result v0
    :try_end_6
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 96
    :catch_7
    move-exception v0

    .line 97
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isKeepAlive()Z
    .registers 3

    .line 103
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/DefaultSocketChannelConfig;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getKeepAlive()Z

    move-result v0
    :try_end_6
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 104
    :catch_7
    move-exception v0

    .line 105
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isReuseAddress()Z
    .registers 3

    .line 111
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/DefaultSocketChannelConfig;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getReuseAddress()Z

    move-result v0
    :try_end_6
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 112
    :catch_7
    move-exception v0

    .line 113
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isTcpNoDelay()Z
    .registers 3

    .line 119
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/DefaultSocketChannelConfig;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getTcpNoDelay()Z

    move-result v0
    :try_end_6
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 120
    :catch_7
    move-exception v0

    .line 121
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setKeepAlive(Z)V
    .registers 4
    .param p1, "keepAlive"    # Z

    .line 127
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/DefaultSocketChannelConfig;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setKeepAlive(Z)V
    :try_end_5
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_5} :catch_7

    .line 130
    nop

    .line 131
    return-void

    .line 128
    :catch_7
    move-exception v0

    .line 129
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setOption(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 45
    invoke-super {p0, p1, p2}, Lorg/jboss/netty/channel/DefaultChannelConfig;->setOption(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 46
    return v1

    .line 49
    :cond_8
    const-string v0, "receiveBufferSize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 50
    invoke-static {p2}, Lorg/jboss/netty/util/internal/ConversionUtil;->toInt(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jboss/netty/channel/socket/DefaultSocketChannelConfig;->setReceiveBufferSize(I)V

    goto :goto_77

    .line 51
    :cond_18
    const-string v0, "sendBufferSize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 52
    invoke-static {p2}, Lorg/jboss/netty/util/internal/ConversionUtil;->toInt(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jboss/netty/channel/socket/DefaultSocketChannelConfig;->setSendBufferSize(I)V

    goto :goto_77

    .line 53
    :cond_28
    const-string v0, "tcpNoDelay"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 54
    invoke-static {p2}, Lorg/jboss/netty/util/internal/ConversionUtil;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jboss/netty/channel/socket/DefaultSocketChannelConfig;->setTcpNoDelay(Z)V

    goto :goto_77

    .line 55
    :cond_38
    const-string v0, "keepAlive"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 56
    invoke-static {p2}, Lorg/jboss/netty/util/internal/ConversionUtil;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jboss/netty/channel/socket/DefaultSocketChannelConfig;->setKeepAlive(Z)V

    goto :goto_77

    .line 57
    :cond_48
    const-string v0, "reuseAddress"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 58
    invoke-static {p2}, Lorg/jboss/netty/util/internal/ConversionUtil;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jboss/netty/channel/socket/DefaultSocketChannelConfig;->setReuseAddress(Z)V

    goto :goto_77

    .line 59
    :cond_58
    const-string v0, "soLinger"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 60
    invoke-static {p2}, Lorg/jboss/netty/util/internal/ConversionUtil;->toInt(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jboss/netty/channel/socket/DefaultSocketChannelConfig;->setSoLinger(I)V

    goto :goto_77

    .line 61
    :cond_68
    const-string v0, "trafficClass"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 62
    invoke-static {p2}, Lorg/jboss/netty/util/internal/ConversionUtil;->toInt(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jboss/netty/channel/socket/DefaultSocketChannelConfig;->setTrafficClass(I)V

    .line 66
    :goto_77
    return v1

    .line 64
    :cond_78
    const/4 v0, 0x0

    return v0
.end method

.method public setPerformancePreferences(III)V
    .registers 5
    .param p1, "connectionTime"    # I
    .param p2, "latency"    # I
    .param p3, "bandwidth"    # I

    .line 135
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/DefaultSocketChannelConfig;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1, p2, p3}, Ljava/net/Socket;->setPerformancePreferences(III)V

    .line 136
    return-void
.end method

.method public setReceiveBufferSize(I)V
    .registers 4
    .param p1, "receiveBufferSize"    # I

    .line 140
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/DefaultSocketChannelConfig;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setReceiveBufferSize(I)V
    :try_end_5
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_5} :catch_7

    .line 143
    nop

    .line 144
    return-void

    .line 141
    :catch_7
    move-exception v0

    .line 142
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setReuseAddress(Z)V
    .registers 4
    .param p1, "reuseAddress"    # Z

    .line 148
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/DefaultSocketChannelConfig;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setReuseAddress(Z)V
    :try_end_5
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_5} :catch_7

    .line 151
    nop

    .line 152
    return-void

    .line 149
    :catch_7
    move-exception v0

    .line 150
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setSendBufferSize(I)V
    .registers 4
    .param p1, "sendBufferSize"    # I

    .line 156
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/DefaultSocketChannelConfig;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSendBufferSize(I)V
    :try_end_5
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_5} :catch_7

    .line 159
    nop

    .line 160
    return-void

    .line 157
    :catch_7
    move-exception v0

    .line 158
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setSoLinger(I)V
    .registers 4
    .param p1, "soLinger"    # I

    .line 164
    if-gez p1, :cond_b

    .line 165
    :try_start_2
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/DefaultSocketChannelConfig;->socket:Ljava/net/Socket;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Ljava/net/Socket;->setSoLinger(ZI)V

    goto :goto_11

    .line 169
    :catch_9
    move-exception v0

    goto :goto_13

    .line 167
    :cond_b
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/DefaultSocketChannelConfig;->socket:Ljava/net/Socket;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/net/Socket;->setSoLinger(ZI)V
    :try_end_11
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_11} :catch_9

    .line 171
    :goto_11
    nop

    .line 172
    return-void

    .line 169
    :goto_13
    nop

    .line 170
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setTcpNoDelay(Z)V
    .registers 4
    .param p1, "tcpNoDelay"    # Z

    .line 176
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/DefaultSocketChannelConfig;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setTcpNoDelay(Z)V
    :try_end_5
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_5} :catch_7

    .line 179
    nop

    .line 180
    return-void

    .line 177
    :catch_7
    move-exception v0

    .line 178
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setTrafficClass(I)V
    .registers 4
    .param p1, "trafficClass"    # I

    .line 184
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/DefaultSocketChannelConfig;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setTrafficClass(I)V
    :try_end_5
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_5} :catch_7

    .line 187
    nop

    .line 188
    return-void

    .line 185
    :catch_7
    move-exception v0

    .line 186
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
