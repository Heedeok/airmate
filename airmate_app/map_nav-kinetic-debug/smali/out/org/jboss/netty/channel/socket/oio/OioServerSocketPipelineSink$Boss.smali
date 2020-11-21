.class final Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink$Boss;
.super Ljava/lang/Object;
.source "OioServerSocketPipelineSink.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Boss"
.end annotation


# instance fields
.field private final channel:Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;

.field final synthetic this$0:Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink;Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;)V
    .registers 3
    .param p2, "channel"    # Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;

    .line 184
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink$Boss;->this$0:Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    iput-object p2, p0, Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink$Boss;->channel:Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;

    .line 186
    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 189
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink$Boss;->channel:Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;->shutdownLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 191
    :goto_7
    :try_start_7
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink$Boss;->channel:Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;

    invoke-virtual {v0}, Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;->isBound()Z

    move-result v0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_ce

    if-eqz v0, :cond_c3

    .line 193
    :try_start_f
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink$Boss;->channel:Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;->socket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v6
    :try_end_17
    .catch Ljava/net/SocketTimeoutException; {:try_start_f .. :try_end_17} :catch_c0
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_17} :catch_92
    .catchall {:try_start_f .. :try_end_17} :catchall_ce

    .line 195
    .local v6, "acceptedSocket":Ljava/net/Socket;
    :try_start_17
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink$Boss;->channel:Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;

    invoke-virtual {v0}, Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/ServerSocketChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/ServerSocketChannelConfig;->getPipelineFactory()Lorg/jboss/netty/channel/ChannelPipelineFactory;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelPipelineFactory;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v4

    .line 197
    .local v4, "pipeline":Lorg/jboss/netty/channel/ChannelPipeline;
    new-instance v0, Lorg/jboss/netty/channel/socket/oio/OioAcceptedSocketChannel;

    iget-object v2, p0, Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink$Boss;->channel:Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink$Boss;->channel:Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;

    invoke-virtual {v1}, Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;->getFactory()Lorg/jboss/netty/channel/ChannelFactory;

    move-result-object v3

    iget-object v5, p0, Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink$Boss;->this$0:Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/jboss/netty/channel/socket/oio/OioAcceptedSocketChannel;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFactory;Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelSink;Ljava/net/Socket;)V

    .line 204
    .local v0, "acceptedChannel":Lorg/jboss/netty/channel/socket/oio/OioAcceptedSocketChannel;
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink$Boss;->this$0:Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink;

    iget-object v1, v1, Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink;->workerExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lorg/jboss/netty/util/ThreadRenamingRunnable;

    new-instance v3, Lorg/jboss/netty/channel/socket/oio/OioWorker;

    invoke-direct {v3, v0}, Lorg/jboss/netty/channel/socket/oio/OioWorker;-><init>(Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Old I/O server worker (parentId: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink$Boss;->channel:Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;

    invoke-virtual {v7}, Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;->getId()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink$Boss;->channel:Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v7, 0x29

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Lorg/jboss/netty/util/ThreadRenamingRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lorg/jboss/netty/util/internal/DeadLockProofWorker;->start(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_6c} :catch_6d
    .catch Ljava/net/SocketTimeoutException; {:try_start_17 .. :try_end_6c} :catch_c0
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_6c} :catch_92
    .catchall {:try_start_17 .. :try_end_6c} :catchall_ce

    .line 226
    .end local v0    # "acceptedChannel":Lorg/jboss/netty/channel/socket/oio/OioAcceptedSocketChannel;
    .end local v4    # "pipeline":Lorg/jboss/netty/channel/ChannelPipeline;
    goto :goto_c1

    .line 210
    :catch_6d
    move-exception v0

    .line 211
    .local v0, "e":Ljava/lang/Exception;
    :try_start_6e
    sget-object v1, Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v1}, Lorg/jboss/netty/logging/InternalLogger;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 212
    sget-object v1, Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v2, "Failed to initialize an accepted socket."

    invoke-interface {v1, v2, v0}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7d
    .catch Ljava/net/SocketTimeoutException; {:try_start_6e .. :try_end_7d} :catch_c0
    .catch Ljava/lang/Throwable; {:try_start_6e .. :try_end_7d} :catch_92
    .catchall {:try_start_6e .. :try_end_7d} :catchall_ce

    .line 217
    :cond_7d
    :try_start_7d
    invoke-virtual {v6}, Ljava/net/Socket;->close()V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_81
    .catch Ljava/net/SocketTimeoutException; {:try_start_7d .. :try_end_80} :catch_c0
    .catch Ljava/lang/Throwable; {:try_start_7d .. :try_end_80} :catch_92
    .catchall {:try_start_7d .. :try_end_80} :catchall_ce

    .line 225
    goto :goto_c1

    .line 218
    :catch_81
    move-exception v1

    .line 219
    .local v1, "e2":Ljava/io/IOException;
    :try_start_82
    sget-object v2, Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v2}, Lorg/jboss/netty/logging/InternalLogger;->isWarnEnabled()Z

    move-result v2

    if-eqz v2, :cond_c1

    .line 220
    sget-object v2, Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v3, "Failed to close a partially accepted socket."

    invoke-interface {v2, v3, v1}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_91
    .catch Ljava/net/SocketTimeoutException; {:try_start_82 .. :try_end_91} :catch_c0
    .catch Ljava/lang/Throwable; {:try_start_82 .. :try_end_91} :catch_92
    .catchall {:try_start_82 .. :try_end_91} :catchall_ce

    goto :goto_c1

    .line 229
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "e2":Ljava/io/IOException;
    .end local v6    # "acceptedSocket":Ljava/net/Socket;
    :catch_92
    move-exception v0

    .line 232
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_93
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink$Boss;->channel:Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;

    iget-object v1, v1, Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;->socket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->isBound()Z

    move-result v1

    if-eqz v1, :cond_bf

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink$Boss;->channel:Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;

    iget-object v1, v1, Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;->socket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_a8

    goto :goto_bf

    .line 235
    :cond_a8
    sget-object v1, Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v1}, Lorg/jboss/netty/logging/InternalLogger;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_b7

    .line 236
    sget-object v1, Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v2, "Failed to accept a connection."

    invoke-interface {v1, v2, v0}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b7
    .catchall {:try_start_93 .. :try_end_b7} :catchall_ce

    .line 240
    :cond_b7
    const-wide/16 v1, 0x3e8

    :try_start_b9
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_bc
    .catch Ljava/lang/InterruptedException; {:try_start_b9 .. :try_end_bc} :catch_bd
    .catchall {:try_start_b9 .. :try_end_bc} :catchall_ce

    .line 243
    goto :goto_c1

    .line 241
    :catch_bd
    move-exception v1

    goto :goto_c1

    .line 233
    :cond_bf
    :goto_bf
    goto :goto_c3

    .line 227
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_c0
    move-exception v0

    .line 244
    :cond_c1
    :goto_c1
    goto/16 :goto_7

    .line 246
    :cond_c3
    :goto_c3
    nop

    .line 249
    move-object v0, p0

    .local v0, "this":Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink$Boss;
    iget-object v1, v0, Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink$Boss;->channel:Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;

    iget-object v1, v1, Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;->shutdownLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 248
    nop

    .line 249
    return-void

    .line 247
    .end local v0    # "this":Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink$Boss;
    :catchall_ce
    move-exception v0

    .line 249
    move-object v1, p0

    .local v1, "this":Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink$Boss;
    iget-object v2, v1, Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink$Boss;->channel:Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;

    iget-object v2, v2, Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;->shutdownLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 247
    throw v0
.end method
