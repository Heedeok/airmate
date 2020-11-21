.class Lorg/jboss/netty/channel/socket/oio/OioDatagramWorker;
.super Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;
.source "OioDatagramWorker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker<",
        "Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;)V
    .registers 2
    .param p1, "channel"    # Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;

    .line 33
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;-><init>(Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;)V

    .line 34
    return-void
.end method

.method static disconnect(Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;Lorg/jboss/netty/channel/ChannelFuture;)V
    .registers 5
    .param p0, "channel"    # Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;
    .param p1, "future"    # Lorg/jboss/netty/channel/ChannelFuture;

    .line 107
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->isConnected()Z

    move-result v0

    .line 108
    .local v0, "connected":Z
    invoke-static {p0}, Lorg/jboss/netty/channel/socket/oio/OioDatagramWorker;->isIoThread(Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;)Z

    move-result v1

    .line 111
    .local v1, "iothread":Z
    :try_start_8
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->socket:Ljava/net/MulticastSocket;

    invoke-virtual {v2}, Ljava/net/MulticastSocket;->disconnect()V

    .line 112
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    .line 113
    if-eqz v0, :cond_1b

    .line 115
    if-eqz v1, :cond_18

    .line 116
    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->fireChannelDisconnected(Lorg/jboss/netty/channel/Channel;)V

    goto :goto_1b

    .line 118
    :cond_18
    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->fireChannelDisconnectedLater(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_1b} :catch_1c

    .line 128
    :cond_1b
    :goto_1b
    goto :goto_29

    .line 121
    :catch_1c
    move-exception v2

    .line 122
    .local v2, "t":Ljava/lang/Throwable;
    invoke-interface {p1, v2}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 123
    if-eqz v1, :cond_26

    .line 124
    invoke-static {p0, v2}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    goto :goto_29

    .line 126
    :cond_26
    invoke-static {p0, v2}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaughtLater(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/ChannelFuture;

    .line 129
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_29
    return-void
.end method

.method static write(Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;Ljava/net/SocketAddress;)V
    .registers 12
    .param p0, "channel"    # Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;
    .param p1, "future"    # Lorg/jboss/netty/channel/ChannelFuture;
    .param p2, "message"    # Ljava/lang/Object;
    .param p3, "remoteAddress"    # Ljava/net/SocketAddress;

    .line 66
    invoke-static {p0}, Lorg/jboss/netty/channel/socket/oio/OioDatagramWorker;->isIoThread(Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;)Z

    move-result v0

    .line 69
    .local v0, "iothread":Z
    :try_start_4
    move-object v1, p2

    check-cast v1, Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 70
    .local v1, "buf":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v2

    .line 71
    .local v2, "offset":I
    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v3

    .line 72
    .local v3, "length":I
    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->toByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 74
    .local v4, "nioBuf":Ljava/nio/ByteBuffer;
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v5

    if-eqz v5, :cond_28

    .line 76
    new-instance v5, Ljava/net/DatagramPacket;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v7

    add-int/2addr v7, v2

    invoke-direct {v5, v6, v7, v3}, Ljava/net/DatagramPacket;-><init>([BII)V

    goto :goto_34

    .line 80
    :cond_28
    new-array v5, v3, [B

    .line 81
    .local v5, "arrayBuf":[B
    const/4 v6, 0x0

    invoke-interface {v1, v6, v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->getBytes(I[B)V

    .line 82
    new-instance v6, Ljava/net/DatagramPacket;

    invoke-direct {v6, v5, v3}, Ljava/net/DatagramPacket;-><init>([BI)V

    move-object v5, v6

    .line 85
    .local v5, "packet":Ljava/net/DatagramPacket;
    :goto_34
    if-eqz p3, :cond_39

    .line 86
    invoke-virtual {v5, p3}, Ljava/net/DatagramPacket;->setSocketAddress(Ljava/net/SocketAddress;)V

    .line 88
    :cond_39
    iget-object v6, p0, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->socket:Ljava/net/MulticastSocket;

    invoke-virtual {v6, v5}, Ljava/net/MulticastSocket;->send(Ljava/net/DatagramPacket;)V

    .line 89
    if-eqz v0, :cond_45

    .line 90
    int-to-long v6, v3

    invoke-static {p0, v6, v7}, Lorg/jboss/netty/channel/Channels;->fireWriteComplete(Lorg/jboss/netty/channel/Channel;J)V

    goto :goto_49

    .line 92
    :cond_45
    int-to-long v6, v3

    invoke-static {p0, v6, v7}, Lorg/jboss/netty/channel/Channels;->fireWriteCompleteLater(Lorg/jboss/netty/channel/Channel;J)Lorg/jboss/netty/channel/ChannelFuture;

    .line 94
    :goto_49
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4c} :catch_4d

    .line 102
    .end local v1    # "buf":Lorg/jboss/netty/buffer/ChannelBuffer;
    .end local v2    # "offset":I
    .end local v3    # "length":I
    .end local v4    # "nioBuf":Ljava/nio/ByteBuffer;
    .end local v5    # "packet":Ljava/net/DatagramPacket;
    goto :goto_5a

    .line 95
    :catch_4d
    move-exception v1

    .line 96
    .local v1, "t":Ljava/lang/Throwable;
    invoke-interface {p1, v1}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 97
    if-eqz v0, :cond_57

    .line 98
    invoke-static {p0, v1}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    goto :goto_5a

    .line 100
    :cond_57
    invoke-static {p0, v1}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaughtLater(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/ChannelFuture;

    .line 103
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_5a
    return-void
.end method


# virtual methods
.method process()Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/oio/OioDatagramWorker;->channel:Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;

    check-cast v0, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;

    invoke-virtual {v0}, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->getConfig()Lorg/jboss/netty/channel/socket/DatagramChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/DatagramChannelConfig;->getReceiveBufferSizePredictor()Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;

    move-result-object v0

    .line 44
    .local v0, "predictor":Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;
    invoke-interface {v0}, Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;->nextReceiveBufferSize()I

    move-result v1

    new-array v1, v1, [B

    .line 45
    .local v1, "buf":[B
    new-instance v2, Ljava/net/DatagramPacket;

    array-length v3, v1

    invoke-direct {v2, v1, v3}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 47
    .local v2, "packet":Ljava/net/DatagramPacket;
    const/4 v3, 0x1

    :try_start_19
    iget-object v4, p0, Lorg/jboss/netty/channel/socket/oio/OioDatagramWorker;->channel:Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;

    check-cast v4, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;

    iget-object v4, v4, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->socket:Ljava/net/MulticastSocket;

    invoke-virtual {v4, v2}, Ljava/net/MulticastSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_22
    .catch Ljava/io/InterruptedIOException; {:try_start_19 .. :try_end_22} :catch_42

    .line 52
    nop

    .line 54
    iget-object v4, p0, Lorg/jboss/netty/channel/socket/oio/OioDatagramWorker;->channel:Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;

    iget-object v5, p0, Lorg/jboss/netty/channel/socket/oio/OioDatagramWorker;->channel:Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;

    check-cast v5, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;

    invoke-virtual {v5}, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->getConfig()Lorg/jboss/netty/channel/socket/DatagramChannelConfig;

    move-result-object v5

    invoke-interface {v5}, Lorg/jboss/netty/channel/socket/DatagramChannelConfig;->getBufferFactory()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getLength()I

    move-result v7

    invoke-interface {v5, v1, v6, v7}, Lorg/jboss/netty/buffer/ChannelBufferFactory;->getBuffer([BII)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v5

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getSocketAddress()Ljava/net/SocketAddress;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lorg/jboss/netty/channel/Channels;->fireMessageReceived(Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    .line 58
    return v3

    .line 48
    :catch_42
    move-exception v4

    .line 51
    .local v4, "e":Ljava/io/InterruptedIOException;
    return v3
.end method
