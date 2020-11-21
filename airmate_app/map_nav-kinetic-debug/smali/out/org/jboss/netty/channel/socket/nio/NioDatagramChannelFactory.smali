.class public Lorg/jboss/netty/channel/socket/nio/NioDatagramChannelFactory;
.super Ljava/lang/Object;
.source "NioDatagramChannelFactory.java"

# interfaces
.implements Lorg/jboss/netty/channel/socket/DatagramChannelFactory;


# instance fields
.field private final family:Lorg/jboss/netty/channel/socket/InternetProtocolFamily;

.field private final sink:Lorg/jboss/netty/channel/socket/nio/NioDatagramPipelineSink;

.field private final workerPool:Lorg/jboss/netty/channel/socket/nio/WorkerPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jboss/netty/channel/socket/nio/WorkerPool<",
            "Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 94
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannelFactory;-><init>(Ljava/util/concurrent/Executor;Lorg/jboss/netty/channel/socket/InternetProtocolFamily;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .registers 3
    .param p1, "workerExecutor"    # Ljava/util/concurrent/Executor;

    .line 120
    sget v0, Lorg/jboss/netty/channel/socket/nio/SelectorUtil;->DEFAULT_IO_THREADS:I

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannelFactory;-><init>(Ljava/util/concurrent/Executor;I)V

    .line 121
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;I)V
    .registers 5
    .param p1, "workerExecutor"    # Ljava/util/concurrent/Executor;
    .param p2, "workerCount"    # I

    .line 136
    new-instance v0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorkerPool;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorkerPool;-><init>(Ljava/util/concurrent/Executor;IZ)V

    invoke-direct {p0, v0}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannelFactory;-><init>(Lorg/jboss/netty/channel/socket/nio/WorkerPool;)V

    .line 137
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;ILorg/jboss/netty/channel/socket/InternetProtocolFamily;)V
    .registers 6
    .param p1, "workerExecutor"    # Ljava/util/concurrent/Executor;
    .param p2, "workerCount"    # I
    .param p3, "family"    # Lorg/jboss/netty/channel/socket/InternetProtocolFamily;

    .line 183
    new-instance v0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorkerPool;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorkerPool;-><init>(Ljava/util/concurrent/Executor;IZ)V

    invoke-direct {p0, v0, p3}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannelFactory;-><init>(Lorg/jboss/netty/channel/socket/nio/WorkerPool;Lorg/jboss/netty/channel/socket/InternetProtocolFamily;)V

    .line 184
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lorg/jboss/netty/channel/socket/InternetProtocolFamily;)V
    .registers 4
    .param p1, "workerExecutor"    # Ljava/util/concurrent/Executor;
    .param p2, "family"    # Lorg/jboss/netty/channel/socket/InternetProtocolFamily;

    .line 167
    sget v0, Lorg/jboss/netty/channel/socket/nio/SelectorUtil;->DEFAULT_IO_THREADS:I

    invoke-direct {p0, p1, v0, p2}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannelFactory;-><init>(Ljava/util/concurrent/Executor;ILorg/jboss/netty/channel/socket/InternetProtocolFamily;)V

    .line 168
    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/channel/socket/InternetProtocolFamily;)V
    .registers 3
    .param p1, "family"    # Lorg/jboss/netty/channel/socket/InternetProtocolFamily;

    .line 103
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannelFactory;-><init>(Ljava/util/concurrent/Executor;Lorg/jboss/netty/channel/socket/InternetProtocolFamily;)V

    .line 104
    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/channel/socket/nio/WorkerPool;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/channel/socket/nio/WorkerPool<",
            "Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;",
            ">;)V"
        }
    .end annotation

    .line 151
    .local p1, "workerPool":Lorg/jboss/netty/channel/socket/nio/WorkerPool;, "Lorg/jboss/netty/channel/socket/nio/WorkerPool<Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannelFactory;-><init>(Lorg/jboss/netty/channel/socket/nio/WorkerPool;Lorg/jboss/netty/channel/socket/InternetProtocolFamily;)V

    .line 152
    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/channel/socket/nio/WorkerPool;Lorg/jboss/netty/channel/socket/InternetProtocolFamily;)V
    .registers 4
    .param p2, "family"    # Lorg/jboss/netty/channel/socket/InternetProtocolFamily;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/channel/socket/nio/WorkerPool<",
            "Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;",
            ">;",
            "Lorg/jboss/netty/channel/socket/InternetProtocolFamily;",
            ")V"
        }
    .end annotation

    .line 196
    .local p1, "workerPool":Lorg/jboss/netty/channel/socket/nio/WorkerPool;, "Lorg/jboss/netty/channel/socket/nio/WorkerPool<Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannelFactory;->workerPool:Lorg/jboss/netty/channel/socket/nio/WorkerPool;

    .line 198
    iput-object p2, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannelFactory;->family:Lorg/jboss/netty/channel/socket/InternetProtocolFamily;

    .line 199
    new-instance v0, Lorg/jboss/netty/channel/socket/nio/NioDatagramPipelineSink;

    invoke-direct {v0, p1}, Lorg/jboss/netty/channel/socket/nio/NioDatagramPipelineSink;-><init>(Lorg/jboss/netty/channel/socket/nio/WorkerPool;)V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannelFactory;->sink:Lorg/jboss/netty/channel/socket/nio/NioDatagramPipelineSink;

    .line 200
    return-void
.end method


# virtual methods
.method public bridge synthetic newChannel(Lorg/jboss/netty/channel/ChannelPipeline;)Lorg/jboss/netty/channel/Channel;
    .registers 3
    .param p1, "x0"    # Lorg/jboss/netty/channel/ChannelPipeline;

    .line 79
    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannelFactory;->newChannel(Lorg/jboss/netty/channel/ChannelPipeline;)Lorg/jboss/netty/channel/socket/DatagramChannel;

    move-result-object v0

    return-object v0
.end method

.method public newChannel(Lorg/jboss/netty/channel/ChannelPipeline;)Lorg/jboss/netty/channel/socket/DatagramChannel;
    .registers 9
    .param p1, "pipeline"    # Lorg/jboss/netty/channel/ChannelPipeline;

    .line 203
    new-instance v6, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;

    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannelFactory;->sink:Lorg/jboss/netty/channel/socket/nio/NioDatagramPipelineSink;

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannelFactory;->sink:Lorg/jboss/netty/channel/socket/nio/NioDatagramPipelineSink;

    invoke-virtual {v0}, Lorg/jboss/netty/channel/socket/nio/NioDatagramPipelineSink;->nextWorker()Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;

    move-result-object v4

    iget-object v5, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannelFactory;->family:Lorg/jboss/netty/channel/socket/InternetProtocolFamily;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;-><init>(Lorg/jboss/netty/channel/ChannelFactory;Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelSink;Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;Lorg/jboss/netty/channel/socket/InternetProtocolFamily;)V

    return-object v6
.end method

.method public releaseExternalResources()V
    .registers 2

    .line 207
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannelFactory;->workerPool:Lorg/jboss/netty/channel/socket/nio/WorkerPool;

    instance-of v0, v0, Lorg/jboss/netty/util/ExternalResourceReleasable;

    if-eqz v0, :cond_d

    .line 208
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannelFactory;->workerPool:Lorg/jboss/netty/channel/socket/nio/WorkerPool;

    check-cast v0, Lorg/jboss/netty/util/ExternalResourceReleasable;

    invoke-interface {v0}, Lorg/jboss/netty/util/ExternalResourceReleasable;->releaseExternalResources()V

    .line 210
    :cond_d
    return-void
.end method
