.class final Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink$Boss;
.super Ljava/lang/Object;
.source "NioServerSocketPipelineSink.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Boss"
.end annotation


# instance fields
.field private final channel:Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;

.field private final selector:Ljava/nio/channels/Selector;

.field final synthetic this$0:Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink;Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;)V
    .registers 6
    .param p2, "channel"    # Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink$Boss;->this$0:Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput-object p2, p0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink$Boss;->channel:Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;

    .line 205
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object p1

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink$Boss;->selector:Ljava/nio/channels/Selector;

    .line 207
    const/4 p1, 0x0

    .line 209
    .local p1, "registered":Z
    :try_start_e
    iget-object v0, p2, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;->socket:Ljava/nio/channels/ServerSocketChannel;

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink$Boss;->selector:Ljava/nio/channels/Selector;

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/ServerSocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_24

    .line 210
    const/4 p1, 0x1

    .line 211
    nop

    .line 218
    if-nez p1, :cond_1e

    .line 213
    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink$Boss;->closeSelector()V

    .line 215
    :cond_1e
    nop

    .line 217
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink$Boss;->selector:Ljava/nio/channels/Selector;

    iput-object v0, p2, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;->selector:Ljava/nio/channels/Selector;

    .line 218
    return-void

    .line 212
    :catchall_24
    move-exception v0

    .line 213
    move-object v1, p0

    .local v1, "this":Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink$Boss;
    if-nez p1, :cond_2b

    invoke-direct {v1}, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink$Boss;->closeSelector()V

    .line 212
    :cond_2b
    throw v0
.end method

.method private closeSelector()V
    .registers 4

    .line 301
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink$Boss;->channel:Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;->selector:Ljava/nio/channels/Selector;

    .line 303
    :try_start_5
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink$Boss;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_b

    .line 308
    goto :goto_1b

    .line 304
    :catch_b
    move-exception v0

    .line 305
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v1}, Lorg/jboss/netty/logging/InternalLogger;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 306
    sget-object v1, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v2, "Failed to close a selector."

    invoke-interface {v1, v2, v0}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 309
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1b
    :goto_1b
    return-void
.end method

.method private registerAcceptedChannel(Ljava/nio/channels/SocketChannel;Ljava/lang/Thread;)V
    .registers 13
    .param p1, "acceptedSocket"    # Ljava/nio/channels/SocketChannel;
    .param p2, "currentThread"    # Ljava/lang/Thread;

    .line 274
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink$Boss;->channel:Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;

    invoke-virtual {v0}, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/ServerSocketChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/ServerSocketChannelConfig;->getPipelineFactory()Lorg/jboss/netty/channel/ChannelPipelineFactory;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelPipelineFactory;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v3

    .line 276
    .local v3, "pipeline":Lorg/jboss/netty/channel/ChannelPipeline;
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink$Boss;->this$0:Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink;

    invoke-virtual {v0}, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink;->nextWorker()Lorg/jboss/netty/channel/socket/nio/NioWorker;

    move-result-object v0

    .line 277
    .local v0, "worker":Lorg/jboss/netty/channel/socket/nio/NioWorker;
    new-instance v9, Lorg/jboss/netty/channel/socket/nio/NioAcceptedSocketChannel;

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink$Boss;->channel:Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;

    invoke-virtual {v1}, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;->getFactory()Lorg/jboss/netty/channel/ChannelFactory;

    move-result-object v2

    iget-object v4, p0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink$Boss;->channel:Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;

    iget-object v5, p0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink$Boss;->this$0:Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink;

    move-object v1, v9

    move-object v6, p1

    move-object v7, v0

    move-object v8, p2

    invoke-direct/range {v1 .. v8}, Lorg/jboss/netty/channel/socket/nio/NioAcceptedSocketChannel;-><init>(Lorg/jboss/netty/channel/ChannelFactory;Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelSink;Ljava/nio/channels/SocketChannel;Lorg/jboss/netty/channel/socket/nio/NioWorker;Ljava/lang/Thread;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v9, v1}, Lorg/jboss/netty/channel/socket/nio/NioWorker;->register(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;Lorg/jboss/netty/channel/ChannelFuture;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2b} :catch_2c

    .line 297
    .end local v0    # "worker":Lorg/jboss/netty/channel/socket/nio/NioWorker;
    .end local v3    # "pipeline":Lorg/jboss/netty/channel/ChannelPipeline;
    goto :goto_50

    .line 281
    :catch_2c
    move-exception v0

    .line 282
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v1}, Lorg/jboss/netty/logging/InternalLogger;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 283
    sget-object v1, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v2, "Failed to initialize an accepted socket."

    invoke-interface {v1, v2, v0}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 288
    :cond_3c
    :try_start_3c
    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_40

    .line 296
    goto :goto_50

    .line 289
    :catch_40
    move-exception v1

    .line 290
    .local v1, "e2":Ljava/io/IOException;
    sget-object v2, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v2}, Lorg/jboss/netty/logging/InternalLogger;->isWarnEnabled()Z

    move-result v2

    if-eqz v2, :cond_50

    .line 291
    sget-object v2, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v3, "Failed to close a partially accepted socket."

    invoke-interface {v2, v3, v1}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 298
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "e2":Ljava/io/IOException;
    :cond_50
    :goto_50
    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 221
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 223
    .local v0, "currentThread":Ljava/lang/Thread;
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink$Boss;->channel:Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;

    iget-object v1, v1, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;->shutdownLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 227
    :goto_b
    const-wide/16 v1, 0x3e8

    :try_start_d
    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink$Boss;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v3, v1, v2}, Ljava/nio/channels/Selector;->select(J)I

    move-result v3

    if-lez v3, :cond_1e

    .line 230
    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink$Boss;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v3}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 235
    :cond_1e
    :goto_1e
    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink$Boss;->channel:Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;

    iget-object v3, v3, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;->socket:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v3}, Ljava/nio/channels/ServerSocketChannel;->accept()Ljava/nio/channels/SocketChannel;

    move-result-object v3

    .line 236
    .local v3, "acceptedSocket":Ljava/nio/channels/SocketChannel;
    if-nez v3, :cond_29

    .line 237
    goto :goto_67

    .line 239
    :cond_29
    invoke-direct {p0, v3, v0}, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink$Boss;->registerAcceptedChannel(Ljava/nio/channels/SocketChannel;Ljava/lang/Thread;)V
    :try_end_2c
    .catch Ljava/net/SocketTimeoutException; {:try_start_d .. :try_end_2c} :catch_66
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_d .. :try_end_2c} :catch_64
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_d .. :try_end_2c} :catch_62
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_d .. :try_end_2c} :catch_52
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_2c} :catch_2f
    .catchall {:try_start_d .. :try_end_2c} :catchall_2d

    .line 241
    .end local v3    # "acceptedSocket":Ljava/nio/channels/SocketChannel;
    goto :goto_1e

    .line 267
    :catchall_2d
    move-exception v1

    goto :goto_45

    .line 253
    :catch_2f
    move-exception v3

    .line 254
    .local v3, "e":Ljava/lang/Throwable;
    :try_start_30
    sget-object v4, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v4}, Lorg/jboss/netty/logging/InternalLogger;->isWarnEnabled()Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 255
    sget-object v4, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v5, "Failed to accept a connection."

    invoke-interface {v4, v5, v3}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3f
    .catchall {:try_start_30 .. :try_end_3f} :catchall_2d

    .line 260
    :cond_3f
    :try_start_3f
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_42
    .catch Ljava/lang/InterruptedException; {:try_start_3f .. :try_end_42} :catch_43
    .catchall {:try_start_3f .. :try_end_42} :catchall_2d

    .line 263
    goto :goto_67

    .line 261
    :catch_43
    move-exception v1

    goto :goto_67

    .line 267
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_45
    nop

    .line 268
    move-object v2, p0

    .local v2, "this":Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink$Boss;
    iget-object v3, v2, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink$Boss;->channel:Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;

    iget-object v3, v3, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;->shutdownLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-direct {v2}, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink$Boss;->closeSelector()V

    .line 267
    throw v1

    .line 250
    .end local v2    # "this":Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink$Boss;
    :catch_52
    move-exception v1

    .line 252
    .local v1, "e":Ljava/nio/channels/ClosedChannelException;
    nop

    .line 266
    .end local v1    # "e":Ljava/nio/channels/ClosedChannelException;
    nop

    .line 270
    move-object v1, p0

    .local v1, "this":Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink$Boss;
    iget-object v2, v1, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink$Boss;->channel:Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;

    iget-object v2, v2, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;->shutdownLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 268
    invoke-direct {v1}, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink$Boss;->closeSelector()V

    .line 269
    nop

    .line 270
    return-void

    .line 248
    .end local v1    # "this":Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink$Boss;
    :catch_62
    move-exception v1

    goto :goto_67

    .line 246
    :catch_64
    move-exception v1

    goto :goto_67

    .line 243
    :catch_66
    move-exception v1

    .line 264
    :goto_67
    goto :goto_b
.end method
