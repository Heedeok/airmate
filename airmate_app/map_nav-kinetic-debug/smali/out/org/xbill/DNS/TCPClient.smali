.class final Lorg/xbill/DNS/TCPClient;
.super Lorg/xbill/DNS/Client;
.source "TCPClient.java"


# direct methods
.method public constructor <init>(J)V
    .registers 4
    .param p1, "endTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14
    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lorg/xbill/DNS/Client;-><init>(Ljava/nio/channels/SelectableChannel;J)V

    .line 15
    return-void
.end method

.method private _recv(I)[B
    .registers 14
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lorg/xbill/DNS/TCPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SocketChannel;

    .line 76
    .local v0, "channel":Ljava/nio/channels/SocketChannel;
    const/4 v1, 0x0

    .line 77
    .local v1, "nrecvd":I
    new-array v2, p1, [B

    .line 78
    .local v2, "data":[B
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 79
    .local v3, "buffer":Ljava/nio/ByteBuffer;
    iget-object v4, p0, Lorg/xbill/DNS/TCPClient;->key:Ljava/nio/channels/SelectionKey;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 81
    :goto_15
    const/4 v4, 0x0

    if-ge v1, p1, :cond_5e

    .line 82
    :try_start_18
    iget-object v5, p0, Lorg/xbill/DNS/TCPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v5}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v5

    if-eqz v5, :cond_47

    .line 83
    invoke-virtual {v0, v3}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v5

    int-to-long v5, v5

    .line 84
    .local v5, "n":J
    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-ltz v9, :cond_41

    .line 86
    long-to-int v7, v5

    add-int/2addr v1, v7

    .line 87
    if-ge v1, p1, :cond_40

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lorg/xbill/DNS/TCPClient;->endTime:J

    cmp-long v11, v7, v9

    if-gtz v11, :cond_3a

    .end local v5    # "n":J
    goto :goto_40

    .line 89
    .restart local v5    # "n":J
    :cond_3a
    new-instance v7, Ljava/net/SocketTimeoutException;

    invoke-direct {v7}, Ljava/net/SocketTimeoutException;-><init>()V

    throw v7

    .line 90
    .end local v5    # "n":J
    :cond_40
    :goto_40
    goto :goto_15

    .line 85
    .restart local v5    # "n":J
    :cond_41
    new-instance v7, Ljava/io/EOFException;

    invoke-direct {v7}, Ljava/io/EOFException;-><init>()V

    throw v7

    .line 91
    .end local v5    # "n":J
    :cond_47
    iget-object v5, p0, Lorg/xbill/DNS/TCPClient;->key:Ljava/nio/channels/SelectionKey;

    iget-wide v6, p0, Lorg/xbill/DNS/TCPClient;->endTime:J

    invoke-static {v5, v6, v7}, Lorg/xbill/DNS/TCPClient;->blockUntil(Ljava/nio/channels/SelectionKey;J)V
    :try_end_4e
    .catchall {:try_start_18 .. :try_end_4e} :catchall_4f

    goto :goto_15

    .line 95
    :catchall_4f
    move-exception v5

    iget-object v6, p0, Lorg/xbill/DNS/TCPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v6}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v6

    if-eqz v6, :cond_5d

    .line 96
    iget-object v6, p0, Lorg/xbill/DNS/TCPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v6, v4}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    :cond_5d
    throw v5

    .line 95
    :cond_5e
    iget-object v5, p0, Lorg/xbill/DNS/TCPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v5}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v5

    if-eqz v5, :cond_6b

    .line 96
    iget-object v5, p0, Lorg/xbill/DNS/TCPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v5, v4}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 98
    :cond_6b
    return-object v2
.end method

.method static sendrecv(Ljava/net/SocketAddress;Ljava/net/SocketAddress;[BJ)[B
    .registers 7
    .param p0, "local"    # Ljava/net/SocketAddress;
    .param p1, "remote"    # Ljava/net/SocketAddress;
    .param p2, "data"    # [B
    .param p3, "endTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    new-instance v0, Lorg/xbill/DNS/TCPClient;

    invoke-direct {v0, p3, p4}, Lorg/xbill/DNS/TCPClient;-><init>(J)V

    .line 116
    .local v0, "client":Lorg/xbill/DNS/TCPClient;
    if-eqz p0, :cond_d

    .line 117
    :try_start_7
    invoke-virtual {v0, p0}, Lorg/xbill/DNS/TCPClient;->bind(Ljava/net/SocketAddress;)V

    goto :goto_d

    .line 123
    :catchall_b
    move-exception v1

    goto :goto_1b

    .line 118
    :cond_d
    :goto_d
    invoke-virtual {v0, p1}, Lorg/xbill/DNS/TCPClient;->connect(Ljava/net/SocketAddress;)V

    .line 119
    invoke-virtual {v0, p2}, Lorg/xbill/DNS/TCPClient;->send([B)V

    .line 120
    invoke-virtual {v0}, Lorg/xbill/DNS/TCPClient;->recv()[B

    move-result-object v1
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_b

    .line 123
    invoke-virtual {v0}, Lorg/xbill/DNS/TCPClient;->cleanup()V

    return-object v1

    :goto_1b
    invoke-virtual {v0}, Lorg/xbill/DNS/TCPClient;->cleanup()V

    throw v1
.end method

.method static sendrecv(Ljava/net/SocketAddress;[BJ)[B
    .registers 5
    .param p0, "addr"    # Ljava/net/SocketAddress;
    .param p1, "data"    # [B
    .param p2, "endTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2, p3}, Lorg/xbill/DNS/TCPClient;->sendrecv(Ljava/net/SocketAddress;Ljava/net/SocketAddress;[BJ)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method bind(Ljava/net/SocketAddress;)V
    .registers 4
    .param p1, "addr"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lorg/xbill/DNS/TCPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SocketChannel;

    .line 20
    .local v0, "channel":Ljava/nio/channels/SocketChannel;
    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 21
    return-void
.end method

.method connect(Ljava/net/SocketAddress;)V
    .registers 7
    .param p1, "addr"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lorg/xbill/DNS/TCPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SocketChannel;

    .line 26
    .local v0, "channel":Ljava/nio/channels/SocketChannel;
    invoke-virtual {v0, p1}, Ljava/nio/channels/SocketChannel;->connect(Ljava/net/SocketAddress;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 27
    return-void

    .line 28
    :cond_f
    iget-object v1, p0, Lorg/xbill/DNS/TCPClient;->key:Ljava/nio/channels/SelectionKey;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 30
    :cond_16
    :goto_16
    const/4 v1, 0x0

    :try_start_17
    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->finishConnect()Z

    move-result v2

    if-nez v2, :cond_2d

    .line 31
    iget-object v2, p0, Lorg/xbill/DNS/TCPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->isConnectable()Z

    move-result v2

    if-nez v2, :cond_16

    .line 32
    iget-object v2, p0, Lorg/xbill/DNS/TCPClient;->key:Ljava/nio/channels/SelectionKey;

    iget-wide v3, p0, Lorg/xbill/DNS/TCPClient;->endTime:J

    invoke-static {v2, v3, v4}, Lorg/xbill/DNS/TCPClient;->blockUntil(Ljava/nio/channels/SelectionKey;J)V
    :try_end_2c
    .catchall {:try_start_17 .. :try_end_2c} :catchall_3b

    goto :goto_16

    .line 36
    :cond_2d
    iget-object v2, p0, Lorg/xbill/DNS/TCPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 37
    iget-object v2, p0, Lorg/xbill/DNS/TCPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v2, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 39
    :cond_3a
    return-void

    .line 36
    :catchall_3b
    move-exception v2

    iget-object v3, p0, Lorg/xbill/DNS/TCPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v3

    if-eqz v3, :cond_49

    .line 37
    iget-object v3, p0, Lorg/xbill/DNS/TCPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v3, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    :cond_49
    throw v2
.end method

.method recv()[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/xbill/DNS/TCPClient;->_recv(I)[B

    move-result-object v0

    .line 104
    .local v0, "buf":[B
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    const/4 v2, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    .line 105
    .local v1, "length":I
    invoke-direct {p0, v1}, Lorg/xbill/DNS/TCPClient;->_recv(I)[B

    move-result-object v2

    .line 106
    .local v2, "data":[B
    const-string v3, "TCP read"

    invoke-static {v3, v2}, Lorg/xbill/DNS/TCPClient;->verboseLog(Ljava/lang/String;[B)V

    .line 107
    return-object v2
.end method

.method send([B)V
    .registers 15
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lorg/xbill/DNS/TCPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SocketChannel;

    .line 44
    .local v0, "channel":Ljava/nio/channels/SocketChannel;
    const-string v1, "TCP write"

    invoke-static {v1, p1}, Lorg/xbill/DNS/TCPClient;->verboseLog(Ljava/lang/String;[B)V

    .line 45
    const/4 v1, 0x2

    new-array v2, v1, [B

    .line 46
    .local v2, "lengthArray":[B
    array-length v3, p1

    ushr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    const/4 v4, 0x0

    aput-byte v3, v2, v4

    .line 47
    array-length v3, p1

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    const/4 v5, 0x1

    aput-byte v3, v2, v5

    .line 48
    new-array v3, v1, [Ljava/nio/ByteBuffer;

    .line 49
    .local v3, "buffers":[Ljava/nio/ByteBuffer;
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    aput-object v6, v3, v4

    .line 50
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    aput-object v6, v3, v5

    .line 51
    const/4 v5, 0x0

    .line 52
    .local v5, "nsent":I
    iget-object v6, p0, Lorg/xbill/DNS/TCPClient;->key:Ljava/nio/channels/SelectionKey;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 54
    :goto_33
    :try_start_33
    array-length v6, p1

    add-int/2addr v6, v1

    if-ge v5, v6, :cond_6f

    .line 55
    iget-object v6, p0, Lorg/xbill/DNS/TCPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v6}, Ljava/nio/channels/SelectionKey;->isWritable()Z

    move-result v6

    if-eqz v6, :cond_67

    .line 56
    invoke-virtual {v0, v3}, Ljava/nio/channels/SocketChannel;->write([Ljava/nio/ByteBuffer;)J

    move-result-wide v6

    .line 57
    .local v6, "n":J
    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-ltz v10, :cond_61

    .line 59
    long-to-int v8, v6

    add-int/2addr v5, v8

    .line 60
    array-length v8, p1

    add-int/2addr v8, v1

    if-ge v5, v8, :cond_60

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lorg/xbill/DNS/TCPClient;->endTime:J

    cmp-long v12, v8, v10

    if-gtz v12, :cond_5a

    .end local v6    # "n":J
    goto :goto_60

    .line 62
    .restart local v6    # "n":J
    :cond_5a
    new-instance v1, Ljava/net/SocketTimeoutException;

    invoke-direct {v1}, Ljava/net/SocketTimeoutException;-><init>()V

    throw v1

    .line 63
    .end local v6    # "n":J
    :cond_60
    :goto_60
    goto :goto_33

    .line 58
    .restart local v6    # "n":J
    :cond_61
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 64
    .end local v6    # "n":J
    :cond_67
    iget-object v6, p0, Lorg/xbill/DNS/TCPClient;->key:Ljava/nio/channels/SelectionKey;

    iget-wide v7, p0, Lorg/xbill/DNS/TCPClient;->endTime:J

    invoke-static {v6, v7, v8}, Lorg/xbill/DNS/TCPClient;->blockUntil(Ljava/nio/channels/SelectionKey;J)V
    :try_end_6e
    .catchall {:try_start_33 .. :try_end_6e} :catchall_7d

    goto :goto_33

    .line 68
    :cond_6f
    iget-object v1, p0, Lorg/xbill/DNS/TCPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 69
    iget-object v1, p0, Lorg/xbill/DNS/TCPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v1, v4}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 71
    :cond_7c
    return-void

    .line 68
    :catchall_7d
    move-exception v1

    iget-object v6, p0, Lorg/xbill/DNS/TCPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v6}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v6

    if-eqz v6, :cond_8b

    .line 69
    iget-object v6, p0, Lorg/xbill/DNS/TCPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v6, v4}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    :cond_8b
    throw v1
.end method
