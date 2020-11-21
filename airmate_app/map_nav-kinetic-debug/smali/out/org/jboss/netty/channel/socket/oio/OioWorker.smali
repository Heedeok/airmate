.class Lorg/jboss/netty/channel/socket/oio/OioWorker;
.super Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;
.source "OioWorker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker<",
        "Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;",
        ">;"
    }
.end annotation


# static fields
.field private static final SOCKET_CLOSED_MESSAGE:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 36
    const-string v0, "^.*(?:Socket.*closed).*$"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/channel/socket/oio/OioWorker;->SOCKET_CLOSED_MESSAGE:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;)V
    .registers 2
    .param p1, "channel"    # Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;

    .line 40
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;-><init>(Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;)V

    .line 41
    return-void
.end method

.method static write(Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;)V
    .registers 20
    .param p0, "channel"    # Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;
    .param p1, "future"    # Lorg/jboss/netty/channel/ChannelFuture;
    .param p2, "message"    # Ljava/lang/Object;

    .line 81
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-static/range {p0 .. p0}, Lorg/jboss/netty/channel/socket/oio/OioWorker;->isIoThread(Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;)Z

    move-result v3

    .line 82
    .local v3, "iothread":Z
    invoke-virtual/range {p0 .. p0}, Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 83
    .local v4, "out":Ljava/io/OutputStream;
    if-nez v4, :cond_22

    .line 84
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    .line 85
    .local v0, "e":Ljava/lang/Exception;
    move-object/from16 v5, p1

    invoke-interface {v5, v0}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 86
    if-eqz v3, :cond_1e

    .line 87
    invoke-static {v1, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    goto :goto_21

    .line 89
    :cond_1e
    invoke-static {v1, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaughtLater(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/ChannelFuture;

    .line 91
    :goto_21
    return-void

    .line 95
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_22
    move-object/from16 v5, p1

    const/4 v6, 0x0

    .line 99
    .local v6, "length":I
    :try_start_25
    instance-of v0, v2, Lorg/jboss/netty/channel/FileRegion;

    if-eqz v0, :cond_7e

    .line 100
    move-object v0, v2

    check-cast v0, Lorg/jboss/netty/channel/FileRegion;
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_2c} :catch_a3

    move-object v7, v0

    .line 102
    .local v7, "fr":Lorg/jboss/netty/channel/FileRegion;
    :try_start_2d
    monitor-enter v4
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_65

    .line 103
    :try_start_2e
    invoke-static {v4}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object v0

    .line 105
    .local v0, "bchannel":Ljava/nio/channels/WritableByteChannel;
    const-wide/16 v8, 0x0

    move-wide v10, v8

    .line 106
    .local v10, "i":J
    :cond_35
    int-to-long v12, v6

    invoke-interface {v7, v0, v12, v13}, Lorg/jboss/netty/channel/FileRegion;->transferTo(Ljava/nio/channels/WritableByteChannel;J)J

    move-result-wide v12

    move-wide v10, v12

    cmp-long v14, v12, v8

    if-lez v14, :cond_4c

    .line 107
    int-to-long v12, v6

    add-long/2addr v12, v10

    long-to-int v6, v12

    .line 108
    int-to-long v12, v6

    invoke-interface {v7}, Lorg/jboss/netty/channel/FileRegion;->getCount()J

    move-result-wide v14

    cmp-long v16, v12, v14

    if-ltz v16, :cond_35

    .line 109
    nop

    .line 112
    .end local v0    # "bchannel":Ljava/nio/channels/WritableByteChannel;
    .end local v10    # "i":J
    :cond_4c
    monitor-exit v4
    :try_end_4d
    .catchall {:try_start_2e .. :try_end_4d} :catchall_62

    .line 113
    nop

    .line 152
    move v0, v6

    .end local v6    # "length":I
    .local v0, "length":I
    :try_start_4f
    instance-of v6, v7, Lorg/jboss/netty/channel/DefaultFileRegion;

    if-eqz v6, :cond_5f

    .line 115
    move-object v6, v7

    check-cast v6, Lorg/jboss/netty/channel/DefaultFileRegion;

    .line 116
    .local v6, "dfr":Lorg/jboss/netty/channel/DefaultFileRegion;
    invoke-virtual {v6}, Lorg/jboss/netty/channel/DefaultFileRegion;->releaseAfterTransfer()Z

    move-result v8

    if-eqz v8, :cond_5f

    .line 117
    invoke-interface {v7}, Lorg/jboss/netty/channel/FileRegion;->releaseExternalResources()V
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_5f} :catch_a3

    .line 119
    .end local v6    # "dfr":Lorg/jboss/netty/channel/DefaultFileRegion;
    :cond_5f
    nop

    .line 121
    nop

    .line 122
    .end local v7    # "fr":Lorg/jboss/netty/channel/FileRegion;
    goto :goto_91

    .line 112
    .end local v0    # "length":I
    .local v6, "length":I
    .restart local v7    # "fr":Lorg/jboss/netty/channel/FileRegion;
    :catchall_62
    move-exception v0

    :try_start_63
    monitor-exit v4
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_62

    :try_start_64
    throw v0
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_65

    .line 114
    :catchall_65
    move-exception v0

    .line 119
    move-object/from16 v1, p0

    .end local p0    # "channel":Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;
    .local v1, "channel":Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;
    move-object/from16 v5, p1

    .end local p1    # "future":Lorg/jboss/netty/channel/ChannelFuture;
    .local v5, "future":Lorg/jboss/netty/channel/ChannelFuture;
    move-object/from16 v2, p2

    .end local p2    # "message":Ljava/lang/Object;
    .local v2, "message":Ljava/lang/Object;
    :try_start_6c
    instance-of v8, v7, Lorg/jboss/netty/channel/DefaultFileRegion;

    if-eqz v8, :cond_7c

    .line 115
    move-object v8, v7

    check-cast v8, Lorg/jboss/netty/channel/DefaultFileRegion;

    .line 116
    .local v8, "dfr":Lorg/jboss/netty/channel/DefaultFileRegion;
    invoke-virtual {v8}, Lorg/jboss/netty/channel/DefaultFileRegion;->releaseAfterTransfer()Z

    move-result v9

    if-eqz v9, :cond_7c

    .line 117
    invoke-interface {v7}, Lorg/jboss/netty/channel/FileRegion;->releaseExternalResources()V

    .line 119
    .end local v8    # "dfr":Lorg/jboss/netty/channel/DefaultFileRegion;
    :cond_7c
    nop

    .line 114
    throw v0

    .line 123
    .end local v1    # "channel":Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;
    .end local v2    # "message":Ljava/lang/Object;
    .end local v5    # "future":Lorg/jboss/netty/channel/ChannelFuture;
    .end local v7    # "fr":Lorg/jboss/netty/channel/FileRegion;
    .restart local p0    # "channel":Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;
    .restart local p1    # "future":Lorg/jboss/netty/channel/ChannelFuture;
    .restart local p2    # "message":Ljava/lang/Object;
    :cond_7e
    move-object v0, v2

    check-cast v0, Lorg/jboss/netty/buffer/ChannelBuffer;

    move-object v7, v0

    .line 124
    .local v7, "a":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-interface {v7}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    move v6, v0

    .line 125
    monitor-enter v4
    :try_end_88
    .catch Ljava/lang/Throwable; {:try_start_6c .. :try_end_88} :catch_a3

    .line 126
    :try_start_88
    invoke-interface {v7}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    invoke-interface {v7, v0, v4, v6}, Lorg/jboss/netty/buffer/ChannelBuffer;->getBytes(ILjava/io/OutputStream;I)V

    .line 127
    monitor-exit v4
    :try_end_90
    .catchall {:try_start_88 .. :try_end_90} :catchall_a0

    .line 130
    move v0, v6

    .end local v6    # "length":I
    .end local v7    # "a":Lorg/jboss/netty/buffer/ChannelBuffer;
    .restart local v0    # "length":I
    :goto_91
    :try_start_91
    invoke-interface/range {p1 .. p1}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    .line 131
    if-eqz v3, :cond_9b

    .line 132
    int-to-long v6, v0

    invoke-static {v1, v6, v7}, Lorg/jboss/netty/channel/Channels;->fireWriteComplete(Lorg/jboss/netty/channel/Channel;J)V

    goto :goto_9f

    .line 134
    :cond_9b
    int-to-long v6, v0

    invoke-static {v1, v6, v7}, Lorg/jboss/netty/channel/Channels;->fireWriteCompleteLater(Lorg/jboss/netty/channel/Channel;J)Lorg/jboss/netty/channel/ChannelFuture;
    :try_end_9f
    .catch Ljava/lang/Throwable; {:try_start_91 .. :try_end_9f} :catch_a3

    .line 151
    .end local v0    # "length":I
    :goto_9f
    goto :goto_ce

    .line 127
    .restart local v6    # "length":I
    .restart local v7    # "a":Lorg/jboss/netty/buffer/ChannelBuffer;
    :catchall_a0
    move-exception v0

    :try_start_a1
    monitor-exit v4
    :try_end_a2
    .catchall {:try_start_a1 .. :try_end_a2} :catchall_a0

    :try_start_a2
    throw v0
    :try_end_a3
    .catch Ljava/lang/Throwable; {:try_start_a2 .. :try_end_a3} :catch_a3

    .line 137
    .end local v6    # "length":I
    .end local v7    # "a":Lorg/jboss/netty/buffer/ChannelBuffer;
    :catch_a3
    move-exception v0

    .line 140
    .end local p0    # "channel":Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;
    .end local p1    # "future":Lorg/jboss/netty/channel/ChannelFuture;
    .end local p2    # "message":Ljava/lang/Object;
    .local v0, "t":Ljava/lang/Throwable;
    .restart local v1    # "channel":Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;
    .restart local v2    # "message":Ljava/lang/Object;
    .restart local v5    # "future":Lorg/jboss/netty/channel/ChannelFuture;
    instance-of v6, v0, Ljava/net/SocketException;

    if-eqz v6, :cond_c2

    sget-object v6, Lorg/jboss/netty/channel/socket/oio/OioWorker;->SOCKET_CLOSED_MESSAGE:Ljava/util/regex/Pattern;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_c2

    .line 143
    new-instance v6, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v6}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    move-object v0, v6

    .line 145
    :cond_c2
    invoke-interface {v5, v0}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 146
    if-eqz v3, :cond_cb

    .line 147
    invoke-static {v1, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    goto :goto_ce

    .line 149
    :cond_cb
    invoke-static {v1, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaughtLater(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/ChannelFuture;

    .line 152
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_ce
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

    .line 59
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/oio/OioWorker;->channel:Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;

    check-cast v0, Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;

    invoke-virtual {v0}, Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;->getInputStream()Ljava/io/PushbackInputStream;

    move-result-object v0

    .line 60
    .local v0, "in":Ljava/io/PushbackInputStream;
    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->available()I

    move-result v1

    .line 61
    .local v1, "bytesToRead":I
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_2d

    .line 62
    new-array v4, v1, [B

    .line 63
    .local v4, "buf":[B
    invoke-virtual {v0, v4}, Ljava/io/PushbackInputStream;->read([B)I

    move-result v5

    .line 70
    .local v5, "readBytes":I
    nop

    .line 72
    iget-object v6, p0, Lorg/jboss/netty/channel/socket/oio/OioWorker;->channel:Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;

    iget-object v7, p0, Lorg/jboss/netty/channel/socket/oio/OioWorker;->channel:Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;

    check-cast v7, Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;

    invoke-virtual {v7}, Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/SocketChannelConfig;

    move-result-object v7

    invoke-interface {v7}, Lorg/jboss/netty/channel/socket/SocketChannelConfig;->getBufferFactory()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v7

    invoke-interface {v7, v4, v3, v5}, Lorg/jboss/netty/buffer/ChannelBufferFactory;->getBuffer([BII)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v3

    invoke-static {v6, v3}, Lorg/jboss/netty/channel/Channels;->fireMessageReceived(Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;)V

    .line 74
    return v2

    .line 65
    .end local v4    # "buf":[B
    .end local v5    # "readBytes":I
    :cond_2d
    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->read()I

    move-result v4

    .line 66
    .local v4, "b":I
    if-gez v4, :cond_34

    .line 67
    return v3

    .line 69
    :cond_34
    invoke-virtual {v0, v4}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 70
    return v2
.end method

.method public run()V
    .registers 4

    .line 45
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/oio/OioWorker;->channel:Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;

    instance-of v0, v0, Lorg/jboss/netty/channel/socket/oio/OioAcceptedSocketChannel;

    .line 46
    .local v0, "fireConnected":Z
    if-eqz v0, :cond_1d

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/oio/OioWorker;->channel:Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;

    check-cast v1, Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;

    invoke-virtual {v1}, Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 49
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/oio/OioWorker;->channel:Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;

    iget-object v2, p0, Lorg/jboss/netty/channel/socket/oio/OioWorker;->channel:Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;

    check-cast v2, Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;

    invoke-virtual {v2}, Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;->getRemoteAddress()Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/jboss/netty/channel/Channels;->fireChannelConnected(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)V

    .line 52
    :cond_1d
    invoke-super {p0}, Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;->run()V

    .line 53
    return-void
.end method
