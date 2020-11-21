.class public Lorg/jboss/netty/channel/socket/oio/OioClientSocketChannelFactory;
.super Ljava/lang/Object;
.source "OioClientSocketChannelFactory.java"

# interfaces
.implements Lorg/jboss/netty/channel/socket/ClientSocketChannelFactory;


# instance fields
.field final sink:Lorg/jboss/netty/channel/socket/oio/OioClientSocketPipelineSink;

.field private final workerExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 86
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jboss/netty/channel/socket/oio/OioClientSocketChannelFactory;-><init>(Ljava/util/concurrent/Executor;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .registers 4
    .param p1, "workerExecutor"    # Ljava/util/concurrent/Executor;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    if-eqz p1, :cond_f

    .line 99
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/oio/OioClientSocketChannelFactory;->workerExecutor:Ljava/util/concurrent/Executor;

    .line 100
    new-instance v0, Lorg/jboss/netty/channel/socket/oio/OioClientSocketPipelineSink;

    invoke-direct {v0, p1}, Lorg/jboss/netty/channel/socket/oio/OioClientSocketPipelineSink;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/oio/OioClientSocketChannelFactory;->sink:Lorg/jboss/netty/channel/socket/oio/OioClientSocketPipelineSink;

    .line 101
    return-void

    .line 97
    :cond_f
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "workerExecutor"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bridge synthetic newChannel(Lorg/jboss/netty/channel/ChannelPipeline;)Lorg/jboss/netty/channel/Channel;
    .registers 3
    .param p1, "x0"    # Lorg/jboss/netty/channel/ChannelPipeline;

    .line 75
    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/socket/oio/OioClientSocketChannelFactory;->newChannel(Lorg/jboss/netty/channel/ChannelPipeline;)Lorg/jboss/netty/channel/socket/SocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public newChannel(Lorg/jboss/netty/channel/ChannelPipeline;)Lorg/jboss/netty/channel/socket/SocketChannel;
    .registers 4
    .param p1, "pipeline"    # Lorg/jboss/netty/channel/ChannelPipeline;

    .line 104
    new-instance v0, Lorg/jboss/netty/channel/socket/oio/OioClientSocketChannel;

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/oio/OioClientSocketChannelFactory;->sink:Lorg/jboss/netty/channel/socket/oio/OioClientSocketPipelineSink;

    invoke-direct {v0, p0, p1, v1}, Lorg/jboss/netty/channel/socket/oio/OioClientSocketChannel;-><init>(Lorg/jboss/netty/channel/ChannelFactory;Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelSink;)V

    return-object v0
.end method

.method public releaseExternalResources()V
    .registers 4

    .line 108
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/oio/OioClientSocketChannelFactory;->workerExecutor:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lorg/jboss/netty/util/internal/ExecutorUtil;->terminate([Ljava/util/concurrent/Executor;)V

    .line 109
    return-void
.end method
