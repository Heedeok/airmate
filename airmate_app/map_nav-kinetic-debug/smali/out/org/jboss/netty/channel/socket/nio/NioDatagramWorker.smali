.class public Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;
.super Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;
.source "NioDatagramWorker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker$ChannelRegistionTask;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 42
    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Executor;)V
    .registers 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 51
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;-><init>(Ljava/util/concurrent/Executor;)V

    .line 52
    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Executor;Z)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "allowShutdownOnIdle"    # Z

    .line 55
    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;-><init>(Ljava/util/concurrent/Executor;Z)V

    .line 56
    return-void
.end method

.method static disconnect(Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;Lorg/jboss/netty/channel/ChannelFuture;)V
    .registers 5
    .param p0, "channel"    # Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;
    .param p1, "future"    # Lorg/jboss/netty/channel/ChannelFuture;

    .line 135
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->isConnected()Z

    move-result v0

    .line 136
    .local v0, "connected":Z
    invoke-static {p0}, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->isIoThread(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;)Z

    move-result v1

    .line 138
    .local v1, "iothread":Z
    :try_start_8
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->getDatagramChannel()Ljava/nio/channels/DatagramChannel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/channels/DatagramChannel;->disconnect()Ljava/nio/channels/DatagramChannel;

    .line 139
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    .line 140
    if-eqz v0, :cond_1d

    .line 141
    if-eqz v1, :cond_1a

    .line 142
    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->fireChannelDisconnected(Lorg/jboss/netty/channel/Channel;)V

    goto :goto_1d

    .line 144
    :cond_1a
    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->fireChannelDisconnectedLater(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_1d} :catch_1e

    .line 154
    :cond_1d
    :goto_1d
    goto :goto_2b

    .line 147
    :catch_1e
    move-exception v2

    .line 148
    .local v2, "t":Ljava/lang/Throwable;
    invoke-interface {p1, v2}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 149
    if-eqz v1, :cond_28

    .line 150
    invoke-static {p0, v2}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    goto :goto_2b

    .line 152
    :cond_28
    invoke-static {p0, v2}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaughtLater(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/ChannelFuture;

    .line 155
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_2b
    return-void
.end method


# virtual methods
.method protected createRegisterTask(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;Lorg/jboss/netty/channel/ChannelFuture;)Ljava/lang/Runnable;
    .registers 5
    .param p2, "future"    # Lorg/jboss/netty/channel/ChannelFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel<",
            "*>;",
            "Lorg/jboss/netty/channel/ChannelFuture;",
            ")",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .line 160
    .local p1, "channel":Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;, "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel<*>;"
    new-instance v0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker$ChannelRegistionTask;

    move-object v1, p1

    check-cast v1, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;

    invoke-direct {v0, p0, v1, p2}, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker$ChannelRegistionTask;-><init>(Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    return-object v0
.end method

.method public bridge synthetic executeInIoThread(Ljava/lang/Runnable;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Runnable;

    .line 42
    invoke-super {p0, p1}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->executeInIoThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic executeInIoThread(Ljava/lang/Runnable;Z)V
    .registers 3
    .param p1, "x0"    # Ljava/lang/Runnable;
    .param p2, "x1"    # Z

    .line 42
    invoke-super {p0, p1, p2}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->executeInIoThread(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method protected read(Ljava/nio/channels/SelectionKey;)Z
    .registers 11
    .param p1, "key"    # Ljava/nio/channels/SelectionKey;

    .line 60
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;

    .line 61
    .local v0, "channel":Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;
    invoke-virtual {v0}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->getConfig()Lorg/jboss/netty/channel/socket/nio/NioDatagramChannelConfig;

    move-result-object v1

    invoke-interface {v1}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannelConfig;->getReceiveBufferSizePredictor()Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;

    move-result-object v1

    .line 63
    .local v1, "predictor":Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;
    invoke-virtual {v0}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->getConfig()Lorg/jboss/netty/channel/socket/nio/NioDatagramChannelConfig;

    move-result-object v2

    invoke-interface {v2}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannelConfig;->getBufferFactory()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v2

    .line 64
    .local v2, "bufferFactory":Lorg/jboss/netty/buffer/ChannelBufferFactory;
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v3

    check-cast v3, Ljava/nio/channels/DatagramChannel;

    .line 70
    .local v3, "nioChannel":Ljava/nio/channels/DatagramChannel;
    invoke-interface {v1}, Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;->nextReceiveBufferSize()I

    move-result v4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBufferFactory;->getDefaultOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 73
    .local v4, "byteBuffer":Ljava/nio/ByteBuffer;
    const/4 v5, 0x1

    .line 74
    .local v5, "failure":Z
    const/4 v6, 0x0

    .line 78
    .local v6, "remoteAddress":Ljava/net/SocketAddress;
    :try_start_2e
    invoke-virtual {v3, v4}, Ljava/nio/channels/DatagramChannel;->receive(Ljava/nio/ByteBuffer;)Ljava/net/SocketAddress;

    move-result-object v7
    :try_end_32
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_2e .. :try_end_32} :catch_3a
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_32} :catch_35

    move-object v6, v7

    .line 79
    const/4 v5, 0x0

    .line 84
    :goto_34
    goto :goto_3c

    .line 82
    :catch_35
    move-exception v7

    .line 83
    .local v7, "t":Ljava/lang/Throwable;
    invoke-static {v0, v7}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    goto :goto_3c

    .line 80
    .end local v7    # "t":Ljava/lang/Throwable;
    :catch_3a
    move-exception v7

    goto :goto_34

    .line 86
    :goto_3c
    if-eqz v6, :cond_51

    .line 88
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 90
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    .line 91
    .local v7, "readBytes":I
    if-lez v7, :cond_51

    .line 93
    invoke-interface {v1, v7}, Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;->previousReceiveBufferSize(I)V

    .line 96
    invoke-interface {v2, v4}, Lorg/jboss/netty/buffer/ChannelBufferFactory;->getBuffer(Ljava/nio/ByteBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v8

    invoke-static {v0, v8, v6}, Lorg/jboss/netty/channel/Channels;->fireMessageReceived(Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    .line 101
    .end local v7    # "readBytes":I
    :cond_51
    if-eqz v5, :cond_5f

    .line 102
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 103
    invoke-static {v0}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v7

    invoke-virtual {p0, v0, v7}, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->close(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    .line 104
    const/4 v7, 0x0

    return v7

    .line 107
    :cond_5f
    const/4 v7, 0x1

    return v7
.end method

.method public bridge synthetic run()V
    .registers 1

    .line 42
    invoke-super {p0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->run()V

    return-void
.end method

.method protected scheduleWriteIfNecessary(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel<",
            "*>;)Z"
        }
    .end annotation

    .line 113
    .local p1, "channel":Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;, "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel<*>;"
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->thread:Ljava/lang/Thread;

    .line 114
    .local v0, "workerThread":Ljava/lang/Thread;
    const/4 v1, 0x0

    if-eqz v0, :cond_d

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-eq v2, v0, :cond_c

    goto :goto_d

    .line 130
    :cond_c
    return v1

    .line 115
    :cond_d
    :goto_d
    iget-object v2, p1, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->writeTaskInTaskQueue:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 117
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->writeTaskQueue:Ljava/util/Queue;

    iget-object v4, p1, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->writeTask:Ljava/lang/Runnable;

    invoke-interface {v2, v4}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v2

    .line 118
    .local v2, "offered":Z
    nop

    .line 121
    .end local v2    # "offered":Z
    :cond_1f
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->selector:Ljava/nio/channels/Selector;

    .line 122
    .local v2, "selector":Ljava/nio/channels/Selector;
    if-eqz v2, :cond_2e

    .line 123
    iget-object v4, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->wakenUp:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 124
    invoke-virtual {v2}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 127
    :cond_2e
    return v3
.end method

.method protected write0(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;)V
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel<",
            "*>;)V"
        }
    .end annotation

    .line 246
    .local p1, "channel":Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;, "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel<*>;"
    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 247
    .local v2, "addOpWrite":Z
    const/4 v3, 0x0

    .line 249
    .local v3, "removeOpWrite":Z
    const-wide/16 v4, 0x0

    .line 251
    .local v4, "writtenBytes":J
    move-object/from16 v6, p0

    iget-object v7, v6, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->sendBufferPool:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;

    .line 252
    .local v7, "sendBufferPool":Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;
    move-object v0, v1

    check-cast v0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;

    invoke-virtual {v0}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->getDatagramChannel()Ljava/nio/channels/DatagramChannel;

    move-result-object v8

    .line 253
    .local v8, "ch":Ljava/nio/channels/DatagramChannel;
    iget-object v9, v1, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->writeBufferQueue:Ljava/util/Queue;

    .line 254
    .local v9, "writeBuffer":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/jboss/netty/channel/MessageEvent;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->getConfig()Lorg/jboss/netty/channel/socket/nio/NioChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/nio/NioChannelConfig;->getWriteSpinCount()I

    move-result v10

    .line 255
    .local v10, "writeSpinCount":I
    iget-object v11, v1, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->writeLock:Ljava/lang/Object;

    monitor-enter v11

    .line 257
    const/4 v12, 0x1

    :try_start_1f
    iput-boolean v12, v1, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->inWriteNowLoop:Z

    .line 261
    :goto_21
    iget-object v0, v1, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->currentWriteEvent:Lorg/jboss/netty/channel/MessageEvent;

    .line 263
    .local v0, "evt":Lorg/jboss/netty/channel/MessageEvent;
    const/4 v13, 0x0

    if-nez v0, :cond_42

    .line 264
    invoke-interface {v9}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/jboss/netty/channel/MessageEvent;

    move-object v0, v14

    iput-object v14, v1, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->currentWriteEvent:Lorg/jboss/netty/channel/MessageEvent;

    if-nez v14, :cond_36

    .line 265
    const/4 v3, 0x1

    .line 266
    iput-boolean v13, v1, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->writeSuspended:Z

    .line 267
    goto/16 :goto_99

    .line 270
    :cond_36
    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v7, v14}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->acquire(Ljava/lang/Object;)Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;

    move-result-object v14

    move-object v15, v14

    .local v15, "buf":Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;
    iput-object v14, v1, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->currentWriteBuffer:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;

    goto :goto_44

    .line 272
    .end local v15    # "buf":Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;
    :cond_42
    iget-object v15, v1, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->currentWriteBuffer:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;
    :try_end_44
    .catchall {:try_start_1f .. :try_end_44} :catchall_da

    :goto_44
    move-object v14, v0

    .line 276
    .end local v0    # "evt":Lorg/jboss/netty/channel/MessageEvent;
    .local v14, "evt":Lorg/jboss/netty/channel/MessageEvent;
    .restart local v15    # "buf":Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;
    const-wide/16 v16, 0x0

    .line 277
    .local v16, "localWrittenBytes":J
    const/4 v13, 0x0

    :try_start_48
    invoke-interface {v14}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    .line 278
    .local v0, "raddr":Ljava/net/SocketAddress;
    const-wide/16 v18, 0x0

    if-nez v0, :cond_6d

    .line 279
    move-wide/from16 v20, v16

    move/from16 v16, v10

    .local v16, "i":I
    .local v20, "localWrittenBytes":J
    :goto_54
    if-lez v16, :cond_8a

    .line 280
    invoke-interface {v15, v8}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;->transferTo(Ljava/nio/channels/WritableByteChannel;)J

    move-result-wide v22

    move-wide/from16 v20, v22

    .line 281
    cmp-long v17, v20, v18

    if-eqz v17, :cond_63

    .line 282
    add-long v4, v4, v20

    .line 283
    goto :goto_8a

    .line 285
    :cond_63
    invoke-interface {v15}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;->finished()Z

    move-result v17

    if-eqz v17, :cond_6a

    .line 286
    goto :goto_8a

    .line 279
    :cond_6a
    add-int/lit8 v16, v16, -0x1

    goto :goto_54

    .line 290
    .end local v20    # "localWrittenBytes":J
    .local v16, "localWrittenBytes":J
    :cond_6d
    move-wide/from16 v20, v16

    move/from16 v16, v10

    .local v16, "i":I
    .restart local v20    # "localWrittenBytes":J
    :goto_71
    if-lez v16, :cond_8a

    .line 291
    invoke-interface {v15, v8, v0}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;->transferTo(Ljava/nio/channels/DatagramChannel;Ljava/net/SocketAddress;)J

    move-result-wide v22

    move-wide/from16 v20, v22

    .line 292
    cmp-long v17, v20, v18

    if-eqz v17, :cond_80

    .line 293
    add-long v4, v4, v20

    .line 294
    goto :goto_8a

    .line 296
    :cond_80
    invoke-interface {v15}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;->finished()Z

    move-result v17

    if-eqz v17, :cond_87

    .line 297
    goto :goto_8a

    .line 290
    :cond_87
    add-int/lit8 v16, v16, -0x1

    goto :goto_71

    .line 302
    .end local v16    # "i":I
    :cond_8a
    :goto_8a
    cmp-long v16, v20, v18

    if-gtz v16, :cond_ac

    invoke-interface {v15}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;->finished()Z

    move-result v16

    if-eqz v16, :cond_95

    goto :goto_ac

    .line 313
    :cond_95
    const/4 v2, 0x1

    .line 314
    iput-boolean v12, v1, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->writeSuspended:Z
    :try_end_98
    .catch Ljava/nio/channels/AsynchronousCloseException; {:try_start_48 .. :try_end_98} :catch_d6
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_98} :catch_bd
    .catchall {:try_start_48 .. :try_end_98} :catchall_da

    .line 315
    nop

    .line 330
    .end local v0    # "raddr":Ljava/net/SocketAddress;
    .end local v14    # "evt":Lorg/jboss/netty/channel/MessageEvent;
    .end local v15    # "buf":Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;
    .end local v20    # "localWrittenBytes":J
    :goto_99
    const/4 v0, 0x0

    :try_start_9a
    iput-boolean v0, v1, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->inWriteNowLoop:Z

    .line 338
    if-eqz v2, :cond_a2

    .line 339
    invoke-virtual/range {p0 .. p1}, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->setOpWrite(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;)V

    goto :goto_a7

    .line 340
    :cond_a2
    if-eqz v3, :cond_a7

    .line 341
    invoke-virtual/range {p0 .. p1}, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->clearOpWrite(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;)V

    .line 343
    :cond_a7
    :goto_a7
    monitor-exit v11
    :try_end_a8
    .catchall {:try_start_9a .. :try_end_a8} :catchall_da

    .line 345
    invoke-static {v1, v4, v5}, Lorg/jboss/netty/channel/Channels;->fireWriteComplete(Lorg/jboss/netty/channel/Channel;J)V

    .line 346
    return-void

    .line 304
    .restart local v0    # "raddr":Ljava/net/SocketAddress;
    .restart local v14    # "evt":Lorg/jboss/netty/channel/MessageEvent;
    .restart local v15    # "buf":Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;
    .restart local v20    # "localWrittenBytes":J
    :cond_ac
    :goto_ac
    :try_start_ac
    invoke-interface {v15}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;->release()V

    .line 305
    invoke-interface {v14}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v16

    .line 306
    .local v16, "future":Lorg/jboss/netty/channel/ChannelFuture;
    iput-object v13, v1, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->currentWriteEvent:Lorg/jboss/netty/channel/MessageEvent;

    .line 307
    iput-object v13, v1, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->currentWriteBuffer:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;

    .line 308
    const/4 v14, 0x0

    .line 309
    const/4 v15, 0x0

    .line 310
    invoke-interface/range {v16 .. v16}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z
    :try_end_bc
    .catch Ljava/nio/channels/AsynchronousCloseException; {:try_start_ac .. :try_end_bc} :catch_d6
    .catch Ljava/lang/Throwable; {:try_start_ac .. :try_end_bc} :catch_bd
    .catchall {:try_start_ac .. :try_end_bc} :catchall_da

    .line 311
    .end local v16    # "future":Lorg/jboss/netty/channel/ChannelFuture;
    goto :goto_d7

    .line 319
    .end local v0    # "raddr":Ljava/net/SocketAddress;
    .end local v20    # "localWrittenBytes":J
    :catch_bd
    move-exception v0

    .line 320
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_be
    invoke-interface {v15}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;->release()V

    .line 321
    invoke-interface {v14}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v16

    move-object/from16 v24, v16

    .line 322
    .local v24, "future":Lorg/jboss/netty/channel/ChannelFuture;
    iput-object v13, v1, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->currentWriteEvent:Lorg/jboss/netty/channel/MessageEvent;

    .line 323
    iput-object v13, v1, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->currentWriteBuffer:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;

    .line 324
    const/4 v13, 0x0

    .line 325
    .end local v15    # "buf":Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;
    .local v13, "buf":Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;
    const/4 v14, 0x0

    .line 326
    move-object/from16 v15, v24

    .end local v24    # "future":Lorg/jboss/netty/channel/ChannelFuture;
    .local v15, "future":Lorg/jboss/netty/channel/ChannelFuture;
    invoke-interface {v15, v0}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 327
    invoke-static {v1, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    goto :goto_d8

    .line 317
    .end local v0    # "t":Ljava/lang/Throwable;
    .end local v13    # "buf":Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;
    .local v15, "buf":Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;
    :catch_d6
    move-exception v0

    .line 328
    .end local v14    # "evt":Lorg/jboss/netty/channel/MessageEvent;
    .end local v15    # "buf":Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;
    :goto_d7
    nop

    .line 329
    :goto_d8
    goto/16 :goto_21

    .line 343
    :catchall_da
    move-exception v0

    monitor-exit v11
    :try_end_dc
    .catchall {:try_start_be .. :try_end_dc} :catchall_da

    throw v0
.end method

.method public writeFromUserCode(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel<",
            "*>;)V"
        }
    .end annotation

    .line 221
    .local p1, "channel":Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;, "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel<*>;"
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->isBound()Z

    move-result v0

    if-nez v0, :cond_a

    .line 222
    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->cleanUpWriteBuffer(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;)V

    .line 223
    return-void

    .line 226
    :cond_a
    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->scheduleWriteIfNecessary(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 227
    return-void

    .line 232
    :cond_11
    iget-boolean v0, p1, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->writeSuspended:Z

    if-eqz v0, :cond_16

    .line 233
    return-void

    .line 236
    :cond_16
    iget-boolean v0, p1, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->inWriteNowLoop:Z

    if-eqz v0, :cond_1b

    .line 237
    return-void

    .line 240
    :cond_1b
    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->write0(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;)V

    .line 241
    return-void
.end method
