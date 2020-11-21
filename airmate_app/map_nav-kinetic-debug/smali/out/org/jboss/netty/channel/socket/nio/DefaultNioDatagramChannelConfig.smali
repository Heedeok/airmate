.class Lorg/jboss/netty/channel/socket/nio/DefaultNioDatagramChannelConfig;
.super Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;
.source "DefaultNioDatagramChannelConfig.java"

# interfaces
.implements Lorg/jboss/netty/channel/socket/nio/NioDatagramChannelConfig;


# static fields
.field private static final logger:Lorg/jboss/netty/logging/InternalLogger;


# instance fields
.field private final channel:Ljava/nio/channels/DatagramChannel;

.field private volatile writeBufferHighWaterMark:I

.field private volatile writeBufferLowWaterMark:I

.field private volatile writeSpinCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 40
    const-class v0, Lorg/jboss/netty/channel/socket/nio/DefaultNioDatagramChannelConfig;

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/channel/socket/nio/DefaultNioDatagramChannelConfig;->logger:Lorg/jboss/netty/logging/InternalLogger;

    return-void
.end method

.method constructor <init>(Ljava/nio/channels/DatagramChannel;)V
    .registers 3
    .param p1, "channel"    # Ljava/nio/channels/DatagramChannel;

    .line 50
    invoke-virtual {p1}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;-><init>(Ljava/net/DatagramSocket;)V

    .line 44
    const/high16 v0, 0x10000

    iput v0, p0, Lorg/jboss/netty/channel/socket/nio/DefaultNioDatagramChannelConfig;->writeBufferHighWaterMark:I

    .line 45
    const v0, 0x8000

    iput v0, p0, Lorg/jboss/netty/channel/socket/nio/DefaultNioDatagramChannelConfig;->writeBufferLowWaterMark:I

    .line 46
    const/16 v0, 0x10

    iput v0, p0, Lorg/jboss/netty/channel/socket/nio/DefaultNioDatagramChannelConfig;->writeSpinCount:I

    .line 51
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/DefaultNioDatagramChannelConfig;->channel:Ljava/nio/channels/DatagramChannel;

    .line 52
    return-void
.end method

.method private setWriteBufferHighWaterMark0(I)V
    .registers 5
    .param p1, "writeBufferHighWaterMark"    # I

    .line 104
    if-ltz p1, :cond_5

    .line 108
    iput p1, p0, Lorg/jboss/netty/channel/socket/nio/DefaultNioDatagramChannelConfig;->writeBufferHighWaterMark:I

    .line 109
    return-void

    .line 105
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeBufferHighWaterMark: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setWriteBufferLowWaterMark0(I)V
    .registers 5
    .param p1, "writeBufferLowWaterMark"    # I

    .line 127
    if-ltz p1, :cond_5

    .line 131
    iput p1, p0, Lorg/jboss/netty/channel/socket/nio/DefaultNioDatagramChannelConfig;->writeBufferLowWaterMark:I

    .line 132
    return-void

    .line 128
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeBufferLowWaterMark: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getInterface()Ljava/net/InetAddress;
    .registers 5

    .line 201
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/DefaultNioDatagramChannelConfig;->getNetworkInterface()Ljava/net/NetworkInterface;

    move-result-object v0

    .line 202
    .local v0, "inf":Ljava/net/NetworkInterface;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 203
    return-object v1

    .line 205
    :cond_8
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    .line 206
    .local v2, "addresses":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 207
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    return-object v1

    .line 209
    :cond_19
    return-object v1
.end method

.method public getNetworkInterface()Ljava/net/NetworkInterface;
    .registers 3

    .line 161
    invoke-static {}, Lorg/jboss/netty/util/internal/DetectionUtil;->javaVersion()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_19

    .line 165
    :try_start_7
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/DefaultNioDatagramChannelConfig;->channel:Ljava/nio/channels/DatagramChannel;

    sget-object v1, Ljava/net/StandardSocketOptions;->IP_MULTICAST_IF:Ljava/net/SocketOption;

    invoke-virtual {v0, v1}, Ljava/nio/channels/DatagramChannel;->getOption(Ljava/net/SocketOption;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_11} :catch_12

    return-object v0

    .line 166
    :catch_12
    move-exception v0

    .line 167
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 162
    .end local v0    # "e":Ljava/io/IOException;
    :cond_19
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getTimeToLive()I
    .registers 3

    .line 174
    invoke-static {}, Lorg/jboss/netty/util/internal/DetectionUtil;->javaVersion()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_1d

    .line 178
    :try_start_7
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/DefaultNioDatagramChannelConfig;->channel:Ljava/nio/channels/DatagramChannel;

    sget-object v1, Ljava/net/StandardSocketOptions;->IP_MULTICAST_TTL:Ljava/net/SocketOption;

    invoke-virtual {v0, v1}, Ljava/nio/channels/DatagramChannel;->getOption(Ljava/net/SocketOption;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_15} :catch_16

    return v0

    .line 179
    :catch_16
    move-exception v0

    .line 180
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 175
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1d
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getWriteBufferHighWaterMark()I
    .registers 2

    .line 89
    iget v0, p0, Lorg/jboss/netty/channel/socket/nio/DefaultNioDatagramChannelConfig;->writeBufferHighWaterMark:I

    return v0
.end method

.method public getWriteBufferLowWaterMark()I
    .registers 2

    .line 112
    iget v0, p0, Lorg/jboss/netty/channel/socket/nio/DefaultNioDatagramChannelConfig;->writeBufferLowWaterMark:I

    return v0
.end method

.method public getWriteSpinCount()I
    .registers 2

    .line 135
    iget v0, p0, Lorg/jboss/netty/channel/socket/nio/DefaultNioDatagramChannelConfig;->writeSpinCount:I

    return v0
.end method

.method public isLoopbackModeDisabled()Z
    .registers 3

    .line 224
    invoke-static {}, Lorg/jboss/netty/util/internal/DetectionUtil;->javaVersion()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_1d

    .line 228
    :try_start_7
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/DefaultNioDatagramChannelConfig;->channel:Ljava/nio/channels/DatagramChannel;

    sget-object v1, Ljava/net/StandardSocketOptions;->IP_MULTICAST_LOOP:Ljava/net/SocketOption;

    invoke-virtual {v0, v1}, Ljava/nio/channels/DatagramChannel;->getOption(Ljava/net/SocketOption;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_15} :catch_16

    return v0

    .line 229
    :catch_16
    move-exception v0

    .line 230
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 225
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1d
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setInterface(Ljava/net/InetAddress;)V
    .registers 4
    .param p1, "interfaceAddress"    # Ljava/net/InetAddress;

    .line 216
    :try_start_0
    invoke-static {p1}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jboss/netty/channel/socket/nio/DefaultNioDatagramChannelConfig;->setNetworkInterface(Ljava/net/NetworkInterface;)V
    :try_end_7
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_7} :catch_9

    .line 219
    nop

    .line 220
    return-void

    .line 217
    :catch_9
    move-exception v0

    .line 218
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setLoopbackModeDisabled(Z)V
    .registers 5
    .param p1, "loopbackModeDisabled"    # Z

    .line 237
    invoke-static {}, Lorg/jboss/netty/util/internal/DetectionUtil;->javaVersion()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_1b

    .line 241
    :try_start_7
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/DefaultNioDatagramChannelConfig;->channel:Ljava/nio/channels/DatagramChannel;

    sget-object v1, Ljava/net/StandardSocketOptions;->IP_MULTICAST_LOOP:Ljava/net/SocketOption;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/DatagramChannel;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/DatagramChannel;
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_12} :catch_14

    .line 244
    nop

    .line 246
    return-void

    .line 242
    :catch_14
    move-exception v0

    .line 243
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 238
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setNetworkInterface(Ljava/net/NetworkInterface;)V
    .registers 4
    .param p1, "networkInterface"    # Ljava/net/NetworkInterface;

    .line 148
    invoke-static {}, Lorg/jboss/netty/util/internal/DetectionUtil;->javaVersion()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_17

    .line 152
    :try_start_7
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/DefaultNioDatagramChannelConfig;->channel:Ljava/nio/channels/DatagramChannel;

    sget-object v1, Ljava/net/StandardSocketOptions;->IP_MULTICAST_IF:Ljava/net/SocketOption;

    invoke-virtual {v0, v1, p1}, Ljava/nio/channels/DatagramChannel;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/DatagramChannel;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_e} :catch_10

    .line 155
    nop

    .line 157
    return-void

    .line 153
    :catch_10
    move-exception v0

    .line 154
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 149
    .end local v0    # "e":Ljava/io/IOException;
    :cond_17
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setOption(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 72
    invoke-super {p0, p1, p2}, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->setOption(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 73
    return v1

    .line 76
    :cond_8
    const-string v0, "writeBufferHighWaterMark"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 77
    invoke-static {p2}, Lorg/jboss/netty/util/internal/ConversionUtil;->toInt(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/jboss/netty/channel/socket/nio/DefaultNioDatagramChannelConfig;->setWriteBufferHighWaterMark0(I)V

    goto :goto_37

    .line 78
    :cond_18
    const-string v0, "writeBufferLowWaterMark"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 79
    invoke-static {p2}, Lorg/jboss/netty/util/internal/ConversionUtil;->toInt(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/jboss/netty/channel/socket/nio/DefaultNioDatagramChannelConfig;->setWriteBufferLowWaterMark0(I)V

    goto :goto_37

    .line 80
    :cond_28
    const-string v0, "writeSpinCount"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 81
    invoke-static {p2}, Lorg/jboss/netty/util/internal/ConversionUtil;->toInt(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jboss/netty/channel/socket/nio/DefaultNioDatagramChannelConfig;->setWriteSpinCount(I)V

    .line 85
    :goto_37
    return v1

    .line 83
    :cond_38
    const/4 v0, 0x0

    return v0
.end method

.method public setOptions(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 56
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-super {p0, p1}, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->setOptions(Ljava/util/Map;)V

    .line 57
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/DefaultNioDatagramChannelConfig;->getWriteBufferHighWaterMark()I

    move-result v0

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/DefaultNioDatagramChannelConfig;->getWriteBufferLowWaterMark()I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 59
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/DefaultNioDatagramChannelConfig;->getWriteBufferHighWaterMark()I

    move-result v0

    ushr-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lorg/jboss/netty/channel/socket/nio/DefaultNioDatagramChannelConfig;->setWriteBufferLowWaterMark0(I)V

    .line 60
    sget-object v0, Lorg/jboss/netty/channel/socket/nio/DefaultNioDatagramChannelConfig;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v0}, Lorg/jboss/netty/logging/InternalLogger;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 62
    sget-object v0, Lorg/jboss/netty/channel/socket/nio/DefaultNioDatagramChannelConfig;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v1, "writeBufferLowWaterMark cannot be greater than writeBufferHighWaterMark; setting to the half of the writeBufferHighWaterMark."

    invoke-interface {v0, v1}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;)V

    .line 68
    :cond_25
    return-void
.end method

.method public setTimeToLive(I)V
    .registers 5
    .param p1, "ttl"    # I

    .line 187
    invoke-static {}, Lorg/jboss/netty/util/internal/DetectionUtil;->javaVersion()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_1b

    .line 191
    :try_start_7
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/DefaultNioDatagramChannelConfig;->channel:Ljava/nio/channels/DatagramChannel;

    sget-object v1, Ljava/net/StandardSocketOptions;->IP_MULTICAST_TTL:Ljava/net/SocketOption;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/DatagramChannel;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/DatagramChannel;
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_12} :catch_14

    .line 194
    nop

    .line 197
    return-void

    .line 192
    :catch_14
    move-exception v0

    .line 193
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 188
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setWriteBufferHighWaterMark(I)V
    .registers 5
    .param p1, "writeBufferHighWaterMark"    # I

    .line 93
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/DefaultNioDatagramChannelConfig;->getWriteBufferLowWaterMark()I

    move-result v0

    if-lt p1, v0, :cond_a

    .line 100
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/socket/nio/DefaultNioDatagramChannelConfig;->setWriteBufferHighWaterMark0(I)V

    .line 101
    return-void

    .line 94
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeBufferHighWaterMark cannot be less than writeBufferLowWaterMark ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/DefaultNioDatagramChannelConfig;->getWriteBufferLowWaterMark()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setWriteBufferLowWaterMark(I)V
    .registers 5
    .param p1, "writeBufferLowWaterMark"    # I

    .line 116
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/DefaultNioDatagramChannelConfig;->getWriteBufferHighWaterMark()I

    move-result v0

    if-gt p1, v0, :cond_a

    .line 123
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/socket/nio/DefaultNioDatagramChannelConfig;->setWriteBufferLowWaterMark0(I)V

    .line 124
    return-void

    .line 117
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeBufferLowWaterMark cannot be greater than writeBufferHighWaterMark ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/DefaultNioDatagramChannelConfig;->getWriteBufferHighWaterMark()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setWriteSpinCount(I)V
    .registers 4
    .param p1, "writeSpinCount"    # I

    .line 139
    if-lez p1, :cond_5

    .line 143
    iput p1, p0, Lorg/jboss/netty/channel/socket/nio/DefaultNioDatagramChannelConfig;->writeSpinCount:I

    .line 144
    return-void

    .line 140
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "writeSpinCount must be a positive integer."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
