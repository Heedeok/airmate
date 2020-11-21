.class public Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;
.super Lorg/jboss/netty/channel/DefaultChannelConfig;
.source "DefaultDatagramChannelConfig.java"

# interfaces
.implements Lorg/jboss/netty/channel/socket/DatagramChannelConfig;


# static fields
.field private static final DEFAULT_PREDICTOR_FACTORY:Lorg/jboss/netty/channel/ReceiveBufferSizePredictorFactory;


# instance fields
.field private volatile predictor:Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;

.field private volatile predictorFactory:Lorg/jboss/netty/channel/ReceiveBufferSizePredictorFactory;

.field private final socket:Ljava/net/DatagramSocket;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 38
    new-instance v0, Lorg/jboss/netty/channel/FixedReceiveBufferSizePredictorFactory;

    const/16 v1, 0x300

    invoke-direct {v0, v1}, Lorg/jboss/netty/channel/FixedReceiveBufferSizePredictorFactory;-><init>(I)V

    sput-object v0, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->DEFAULT_PREDICTOR_FACTORY:Lorg/jboss/netty/channel/ReceiveBufferSizePredictorFactory;

    return-void
.end method

.method public constructor <init>(Ljava/net/DatagramSocket;)V
    .registers 4
    .param p1, "socket"    # Ljava/net/DatagramSocket;

    .line 48
    invoke-direct {p0}, Lorg/jboss/netty/channel/DefaultChannelConfig;-><init>()V

    .line 43
    sget-object v0, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->DEFAULT_PREDICTOR_FACTORY:Lorg/jboss/netty/channel/ReceiveBufferSizePredictorFactory;

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->predictorFactory:Lorg/jboss/netty/channel/ReceiveBufferSizePredictorFactory;

    .line 49
    if-eqz p1, :cond_c

    .line 52
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->socket:Ljava/net/DatagramSocket;

    .line 53
    return-void

    .line 50
    :cond_c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "socket"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getInterface()Ljava/net/InetAddress;
    .registers 3

    .line 106
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->socket:Ljava/net/DatagramSocket;

    instance-of v0, v0, Ljava/net/MulticastSocket;

    if-eqz v0, :cond_16

    .line 108
    :try_start_6
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->socket:Ljava/net/DatagramSocket;

    check-cast v0, Ljava/net/MulticastSocket;

    invoke-virtual {v0}, Ljava/net/MulticastSocket;->getInterface()Ljava/net/InetAddress;

    move-result-object v0
    :try_end_e
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_e} :catch_f

    return-object v0

    .line 109
    :catch_f
    move-exception v0

    .line 110
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 113
    .end local v0    # "e":Ljava/net/SocketException;
    :cond_16
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getNetworkInterface()Ljava/net/NetworkInterface;
    .registers 3

    .line 154
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->socket:Ljava/net/DatagramSocket;

    instance-of v0, v0, Ljava/net/MulticastSocket;

    if-eqz v0, :cond_16

    .line 156
    :try_start_6
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->socket:Ljava/net/DatagramSocket;

    check-cast v0, Ljava/net/MulticastSocket;

    invoke-virtual {v0}, Ljava/net/MulticastSocket;->getNetworkInterface()Ljava/net/NetworkInterface;

    move-result-object v0
    :try_end_e
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_e} :catch_f

    return-object v0

    .line 157
    :catch_f
    move-exception v0

    .line 158
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 161
    .end local v0    # "e":Ljava/net/SocketException;
    :cond_16
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getReceiveBufferSize()I
    .registers 3

    .line 195
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getReceiveBufferSize()I

    move-result v0
    :try_end_6
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 196
    :catch_7
    move-exception v0

    .line 197
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getReceiveBufferSizePredictor()Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;
    .registers 6

    .line 266
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->predictor:Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;

    .line 267
    .local v0, "predictor":Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;
    if-nez v0, :cond_33

    .line 269
    :try_start_4
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->getReceiveBufferSizePredictorFactory()Lorg/jboss/netty/channel/ReceiveBufferSizePredictorFactory;

    move-result-object v1

    invoke-interface {v1}, Lorg/jboss/netty/channel/ReceiveBufferSizePredictorFactory;->getPredictor()Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;

    move-result-object v1

    move-object v0, v1

    iput-object v1, p0, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->predictor:Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_f} :catch_10

    .line 275
    goto :goto_33

    .line 270
    :catch_10
    move-exception v1

    .line 271
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/jboss/netty/channel/ChannelException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to create a new "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v4, Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 277
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_33
    :goto_33
    return-object v0
.end method

.method public getReceiveBufferSizePredictorFactory()Lorg/jboss/netty/channel/ReceiveBufferSizePredictorFactory;
    .registers 2

    .line 289
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->predictorFactory:Lorg/jboss/netty/channel/ReceiveBufferSizePredictorFactory;

    return-object v0
.end method

.method public getSendBufferSize()I
    .registers 3

    .line 211
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getSendBufferSize()I

    move-result v0
    :try_end_6
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 212
    :catch_7
    move-exception v0

    .line 213
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getTimeToLive()I
    .registers 3

    .line 226
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->socket:Ljava/net/DatagramSocket;

    instance-of v0, v0, Ljava/net/MulticastSocket;

    if-eqz v0, :cond_16

    .line 228
    :try_start_6
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->socket:Ljava/net/DatagramSocket;

    check-cast v0, Ljava/net/MulticastSocket;

    invoke-virtual {v0}, Ljava/net/MulticastSocket;->getTimeToLive()I

    move-result v0
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    .line 229
    :catch_f
    move-exception v0

    .line 230
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 233
    .end local v0    # "e":Ljava/io/IOException;
    :cond_16
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getTrafficClass()I
    .registers 3

    .line 251
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getTrafficClass()I

    move-result v0
    :try_end_6
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 252
    :catch_7
    move-exception v0

    .line 253
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isBroadcast()Z
    .registers 3

    .line 91
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getBroadcast()Z

    move-result v0
    :try_end_6
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 92
    :catch_7
    move-exception v0

    .line 93
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isLoopbackModeDisabled()Z
    .registers 3

    .line 130
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->socket:Ljava/net/DatagramSocket;

    instance-of v0, v0, Ljava/net/MulticastSocket;

    if-eqz v0, :cond_16

    .line 132
    :try_start_6
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->socket:Ljava/net/DatagramSocket;

    check-cast v0, Ljava/net/MulticastSocket;

    invoke-virtual {v0}, Ljava/net/MulticastSocket;->getLoopbackMode()Z

    move-result v0
    :try_end_e
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    .line 133
    :catch_f
    move-exception v0

    .line 134
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 137
    .end local v0    # "e":Ljava/net/SocketException;
    :cond_16
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isReuseAddress()Z
    .registers 3

    .line 179
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getReuseAddress()Z

    move-result v0
    :try_end_6
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 180
    :catch_7
    move-exception v0

    .line 181
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setBroadcast(Z)V
    .registers 4
    .param p1, "broadcast"    # Z

    .line 99
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v0, p1}, Ljava/net/DatagramSocket;->setBroadcast(Z)V
    :try_end_5
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_5} :catch_7

    .line 102
    nop

    .line 103
    return-void

    .line 100
    :catch_7
    move-exception v0

    .line 101
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setInterface(Ljava/net/InetAddress;)V
    .registers 4
    .param p1, "interfaceAddress"    # Ljava/net/InetAddress;

    .line 118
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->socket:Ljava/net/DatagramSocket;

    instance-of v0, v0, Ljava/net/MulticastSocket;

    if-eqz v0, :cond_16

    .line 120
    :try_start_6
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->socket:Ljava/net/DatagramSocket;

    check-cast v0, Ljava/net/MulticastSocket;

    invoke-virtual {v0, p1}, Ljava/net/MulticastSocket;->setInterface(Ljava/net/InetAddress;)V
    :try_end_d
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_d} :catch_f

    .line 123
    nop

    .line 127
    return-void

    .line 121
    :catch_f
    move-exception v0

    .line 122
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 125
    .end local v0    # "e":Ljava/net/SocketException;
    :cond_16
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setLoopbackModeDisabled(Z)V
    .registers 4
    .param p1, "loopbackModeDisabled"    # Z

    .line 142
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->socket:Ljava/net/DatagramSocket;

    instance-of v0, v0, Ljava/net/MulticastSocket;

    if-eqz v0, :cond_16

    .line 144
    :try_start_6
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->socket:Ljava/net/DatagramSocket;

    check-cast v0, Ljava/net/MulticastSocket;

    invoke-virtual {v0, p1}, Ljava/net/MulticastSocket;->setLoopbackMode(Z)V
    :try_end_d
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_d} :catch_f

    .line 147
    nop

    .line 151
    return-void

    .line 145
    :catch_f
    move-exception v0

    .line 146
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 149
    .end local v0    # "e":Ljava/net/SocketException;
    :cond_16
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setNetworkInterface(Ljava/net/NetworkInterface;)V
    .registers 4
    .param p1, "networkInterface"    # Ljava/net/NetworkInterface;

    .line 166
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->socket:Ljava/net/DatagramSocket;

    instance-of v0, v0, Ljava/net/MulticastSocket;

    if-eqz v0, :cond_16

    .line 168
    :try_start_6
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->socket:Ljava/net/DatagramSocket;

    check-cast v0, Ljava/net/MulticastSocket;

    invoke-virtual {v0, p1}, Ljava/net/MulticastSocket;->setNetworkInterface(Ljava/net/NetworkInterface;)V
    :try_end_d
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_d} :catch_f

    .line 171
    nop

    .line 175
    return-void

    .line 169
    :catch_f
    move-exception v0

    .line 170
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 173
    .end local v0    # "e":Ljava/net/SocketException;
    :cond_16
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setOption(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 57
    invoke-super {p0, p1, p2}, Lorg/jboss/netty/channel/DefaultChannelConfig;->setOption(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 58
    return v1

    .line 61
    :cond_8
    const-string v0, "broadcast"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 62
    invoke-static {p2}, Lorg/jboss/netty/util/internal/ConversionUtil;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->setBroadcast(Z)V

    goto/16 :goto_b7

    .line 63
    :cond_19
    const-string v0, "receiveBufferSize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 64
    invoke-static {p2}, Lorg/jboss/netty/util/internal/ConversionUtil;->toInt(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->setReceiveBufferSize(I)V

    goto/16 :goto_b7

    .line 65
    :cond_2a
    const-string v0, "sendBufferSize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 66
    invoke-static {p2}, Lorg/jboss/netty/util/internal/ConversionUtil;->toInt(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->setSendBufferSize(I)V

    goto/16 :goto_b7

    .line 67
    :cond_3b
    const-string v0, "receiveBufferSizePredictorFactory"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 68
    move-object v0, p2

    check-cast v0, Lorg/jboss/netty/channel/ReceiveBufferSizePredictorFactory;

    invoke-virtual {p0, v0}, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->setReceiveBufferSizePredictorFactory(Lorg/jboss/netty/channel/ReceiveBufferSizePredictorFactory;)V

    goto/16 :goto_b7

    .line 69
    :cond_4b
    const-string v0, "receiveBufferSizePredictor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 70
    move-object v0, p2

    check-cast v0, Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;

    invoke-virtual {p0, v0}, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->setReceiveBufferSizePredictor(Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;)V

    goto :goto_b7

    .line 71
    :cond_5a
    const-string v0, "reuseAddress"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 72
    invoke-static {p2}, Lorg/jboss/netty/util/internal/ConversionUtil;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->setReuseAddress(Z)V

    goto :goto_b7

    .line 73
    :cond_6a
    const-string v0, "loopbackModeDisabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 74
    invoke-static {p2}, Lorg/jboss/netty/util/internal/ConversionUtil;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->setLoopbackModeDisabled(Z)V

    goto :goto_b7

    .line 75
    :cond_7a
    const-string v0, "interface"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_89

    .line 76
    move-object v0, p2

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {p0, v0}, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->setInterface(Ljava/net/InetAddress;)V

    goto :goto_b7

    .line 77
    :cond_89
    const-string v0, "networkInterface"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_98

    .line 78
    move-object v0, p2

    check-cast v0, Ljava/net/NetworkInterface;

    invoke-virtual {p0, v0}, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->setNetworkInterface(Ljava/net/NetworkInterface;)V

    goto :goto_b7

    .line 79
    :cond_98
    const-string v0, "timeToLive"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 80
    invoke-static {p2}, Lorg/jboss/netty/util/internal/ConversionUtil;->toInt(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->setTimeToLive(I)V

    goto :goto_b7

    .line 81
    :cond_a8
    const-string v0, "trafficClass"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b8

    .line 82
    invoke-static {p2}, Lorg/jboss/netty/util/internal/ConversionUtil;->toInt(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->setTrafficClass(I)V

    .line 86
    :goto_b7
    return v1

    .line 84
    :cond_b8
    const/4 v0, 0x0

    return v0
.end method

.method public setReceiveBufferSize(I)V
    .registers 4
    .param p1, "receiveBufferSize"    # I

    .line 203
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v0, p1}, Ljava/net/DatagramSocket;->setReceiveBufferSize(I)V
    :try_end_5
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_5} :catch_7

    .line 206
    nop

    .line 207
    return-void

    .line 204
    :catch_7
    move-exception v0

    .line 205
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setReceiveBufferSizePredictor(Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;)V
    .registers 4
    .param p1, "predictor"    # Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;

    .line 282
    if-eqz p1, :cond_5

    .line 285
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->predictor:Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;

    .line 286
    return-void

    .line 283
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "predictor"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setReceiveBufferSizePredictorFactory(Lorg/jboss/netty/channel/ReceiveBufferSizePredictorFactory;)V
    .registers 4
    .param p1, "predictorFactory"    # Lorg/jboss/netty/channel/ReceiveBufferSizePredictorFactory;

    .line 293
    if-eqz p1, :cond_5

    .line 296
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->predictorFactory:Lorg/jboss/netty/channel/ReceiveBufferSizePredictorFactory;

    .line 297
    return-void

    .line 294
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "predictorFactory"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setReuseAddress(Z)V
    .registers 4
    .param p1, "reuseAddress"    # Z

    .line 187
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v0, p1}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V
    :try_end_5
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_5} :catch_7

    .line 190
    nop

    .line 191
    return-void

    .line 188
    :catch_7
    move-exception v0

    .line 189
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setSendBufferSize(I)V
    .registers 4
    .param p1, "sendBufferSize"    # I

    .line 219
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v0, p1}, Ljava/net/DatagramSocket;->setSendBufferSize(I)V
    :try_end_5
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_5} :catch_7

    .line 222
    nop

    .line 223
    return-void

    .line 220
    :catch_7
    move-exception v0

    .line 221
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setTimeToLive(I)V
    .registers 4
    .param p1, "ttl"    # I

    .line 238
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->socket:Ljava/net/DatagramSocket;

    instance-of v0, v0, Ljava/net/MulticastSocket;

    if-eqz v0, :cond_16

    .line 240
    :try_start_6
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->socket:Ljava/net/DatagramSocket;

    check-cast v0, Ljava/net/MulticastSocket;

    invoke-virtual {v0, p1}, Ljava/net/MulticastSocket;->setTimeToLive(I)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_d} :catch_f

    .line 243
    nop

    .line 247
    return-void

    .line 241
    :catch_f
    move-exception v0

    .line 242
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 245
    .end local v0    # "e":Ljava/io/IOException;
    :cond_16
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setTrafficClass(I)V
    .registers 4
    .param p1, "trafficClass"    # I

    .line 259
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v0, p1}, Ljava/net/DatagramSocket;->setTrafficClass(I)V
    :try_end_5
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_5} :catch_7

    .line 262
    nop

    .line 263
    return-void

    .line 260
    :catch_7
    move-exception v0

    .line 261
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
