.class abstract Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;
.super Lorg/jboss/netty/channel/AbstractChannel;
.source "AbstractNioChannel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteTask;,
        Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/nio/channels/SelectableChannel;",
        ":",
        "Ljava/nio/channels/WritableByteChannel;",
        ">",
        "Lorg/jboss/netty/channel/AbstractChannel;"
    }
.end annotation


# instance fields
.field final channel:Ljava/nio/channels/SelectableChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field currentWriteBuffer:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;

.field currentWriteEvent:Lorg/jboss/netty/channel/MessageEvent;

.field final highWaterMarkCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field inWriteNowLoop:Z

.field final interestOpsLock:Ljava/lang/Object;

.field private volatile localAddress:Ljava/net/InetSocketAddress;

.field volatile remoteAddress:Ljava/net/InetSocketAddress;

.field final worker:Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;

.field final writeBufferQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/jboss/netty/channel/MessageEvent;",
            ">;"
        }
    .end annotation
.end field

.field final writeBufferSize:Ljava/util/concurrent/atomic/AtomicInteger;

.field final writeLock:Ljava/lang/Object;

.field writeSuspended:Z

.field final writeTask:Ljava/lang/Runnable;

.field final writeTaskInTaskQueue:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method protected constructor <init>(Ljava/lang/Integer;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFactory;Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelSink;Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;Ljava/nio/channels/SelectableChannel;)V
    .registers 9
    .param p1, "id"    # Ljava/lang/Integer;
    .param p2, "parent"    # Lorg/jboss/netty/channel/Channel;
    .param p3, "factory"    # Lorg/jboss/netty/channel/ChannelFactory;
    .param p4, "pipeline"    # Lorg/jboss/netty/channel/ChannelPipeline;
    .param p5, "sink"    # Lorg/jboss/netty/channel/ChannelSink;
    .param p6, "worker"    # Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Lorg/jboss/netty/channel/Channel;",
            "Lorg/jboss/netty/channel/ChannelFactory;",
            "Lorg/jboss/netty/channel/ChannelPipeline;",
            "Lorg/jboss/netty/channel/ChannelSink;",
            "Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;",
            "TC;)V"
        }
    .end annotation

    .line 106
    .local p0, "this":Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;, "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel<TC;>;"
    .local p7, "ch":Ljava/nio/channels/SelectableChannel;, "TC;"
    invoke-direct/range {p0 .. p5}, Lorg/jboss/netty/channel/AbstractChannel;-><init>(Ljava/lang/Integer;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFactory;Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelSink;)V

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->interestOpsLock:Ljava/lang/Object;

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->writeLock:Ljava/lang/Object;

    .line 62
    new-instance v0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteTask;

    invoke-direct {v0, p0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteTask;-><init>(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;)V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->writeTask:Ljava/lang/Runnable;

    .line 67
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->writeTaskInTaskQueue:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 72
    new-instance v0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;

    invoke-direct {v0, p0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;-><init>(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;)V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->writeBufferQueue:Ljava/util/Queue;

    .line 78
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->writeBufferSize:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 83
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->highWaterMarkCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 107
    iput-object p6, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->worker:Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;

    .line 108
    iput-object p7, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->channel:Ljava/nio/channels/SelectableChannel;

    .line 109
    return-void
.end method

.method protected constructor <init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFactory;Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelSink;Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;Ljava/nio/channels/SelectableChannel;)V
    .registers 8
    .param p1, "parent"    # Lorg/jboss/netty/channel/Channel;
    .param p2, "factory"    # Lorg/jboss/netty/channel/ChannelFactory;
    .param p3, "pipeline"    # Lorg/jboss/netty/channel/ChannelPipeline;
    .param p4, "sink"    # Lorg/jboss/netty/channel/ChannelSink;
    .param p5, "worker"    # Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/channel/Channel;",
            "Lorg/jboss/netty/channel/ChannelFactory;",
            "Lorg/jboss/netty/channel/ChannelPipeline;",
            "Lorg/jboss/netty/channel/ChannelSink;",
            "Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;",
            "TC;)V"
        }
    .end annotation

    .line 114
    .local p0, "this":Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;, "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel<TC;>;"
    .local p6, "ch":Ljava/nio/channels/SelectableChannel;, "TC;"
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/jboss/netty/channel/AbstractChannel;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFactory;Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelSink;)V

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->interestOpsLock:Ljava/lang/Object;

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->writeLock:Ljava/lang/Object;

    .line 62
    new-instance v0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteTask;

    invoke-direct {v0, p0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteTask;-><init>(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;)V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->writeTask:Ljava/lang/Runnable;

    .line 67
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->writeTaskInTaskQueue:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 72
    new-instance v0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;

    invoke-direct {v0, p0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;-><init>(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;)V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->writeBufferQueue:Ljava/util/Queue;

    .line 78
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->writeBufferSize:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 83
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->highWaterMarkCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 115
    iput-object p5, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->worker:Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;

    .line 116
    iput-object p6, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->channel:Ljava/nio/channels/SelectableChannel;

    .line 117
    return-void
.end method


# virtual methods
.method public bridge synthetic getConfig()Lorg/jboss/netty/channel/ChannelConfig;
    .registers 2

    .line 42
    .local p0, "this":Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;, "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel<TC;>;"
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->getConfig()Lorg/jboss/netty/channel/socket/nio/NioChannelConfig;

    move-result-object v0

    return-object v0
.end method

.method public abstract getConfig()Lorg/jboss/netty/channel/socket/nio/NioChannelConfig;
.end method

.method public getInterestOps()I
    .registers 5

    .line 169
    .local p0, "this":Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;, "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel<TC;>;"
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->isOpen()Z

    move-result v0

    const/4 v1, 0x4

    if-nez v0, :cond_8

    .line 170
    return v1

    .line 173
    :cond_8
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->getRawInterestOps()I

    move-result v0

    .line 174
    .local v0, "interestOps":I
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->writeBufferSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    .line 175
    .local v2, "writeBufferSize":I
    if-eqz v2, :cond_3a

    .line 176
    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->highWaterMarkCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-lez v3, :cond_2b

    .line 177
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->getConfig()Lorg/jboss/netty/channel/socket/nio/NioChannelConfig;

    move-result-object v3

    invoke-interface {v3}, Lorg/jboss/netty/channel/socket/nio/NioChannelConfig;->getWriteBufferLowWaterMark()I

    move-result v3

    .line 178
    .local v3, "lowWaterMark":I
    if-lt v2, v3, :cond_28

    .line 179
    or-int/2addr v0, v1

    goto :goto_2a

    .line 181
    :cond_28
    and-int/lit8 v0, v0, -0x5

    .line 183
    .end local v3    # "lowWaterMark":I
    :goto_2a
    goto :goto_3c

    .line 184
    :cond_2b
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->getConfig()Lorg/jboss/netty/channel/socket/nio/NioChannelConfig;

    move-result-object v3

    invoke-interface {v3}, Lorg/jboss/netty/channel/socket/nio/NioChannelConfig;->getWriteBufferHighWaterMark()I

    move-result v3

    .line 185
    .local v3, "highWaterMark":I
    if-lt v2, v3, :cond_37

    .line 186
    or-int/2addr v0, v1

    goto :goto_39

    .line 188
    :cond_37
    and-int/lit8 v0, v0, -0x5

    .line 190
    .end local v3    # "highWaterMark":I
    :goto_39
    goto :goto_3c

    .line 192
    :cond_3a
    and-int/lit8 v0, v0, -0x5

    .line 195
    :goto_3c
    return v0
.end method

.method public getLocalAddress()Ljava/net/InetSocketAddress;
    .registers 4

    .line 130
    .local p0, "this":Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;, "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel<TC;>;"
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->localAddress:Ljava/net/InetSocketAddress;

    .line 131
    .local v0, "localAddress":Ljava/net/InetSocketAddress;
    if-nez v0, :cond_f

    .line 133
    :try_start_4
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->getLocalSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    move-object v0, v1

    iput-object v1, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->localAddress:Ljava/net/InetSocketAddress;
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_b} :catch_c

    .line 137
    goto :goto_f

    .line 134
    :catch_c
    move-exception v1

    .line 136
    .local v1, "t":Ljava/lang/Throwable;
    const/4 v2, 0x0

    return-object v2

    .line 139
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_f
    :goto_f
    return-object v0
.end method

.method public bridge synthetic getLocalAddress()Ljava/net/SocketAddress;
    .registers 2

    .line 42
    .local p0, "this":Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;, "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel<TC;>;"
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->getLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method abstract getLocalSocketAddress()Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method getRawInterestOps()I
    .registers 2

    .line 159
    .local p0, "this":Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;, "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel<TC;>;"
    invoke-super {p0}, Lorg/jboss/netty/channel/AbstractChannel;->getInterestOps()I

    move-result v0

    return v0
.end method

.method public getRemoteAddress()Ljava/net/InetSocketAddress;
    .registers 4

    .line 143
    .local p0, "this":Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;, "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel<TC;>;"
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->remoteAddress:Ljava/net/InetSocketAddress;

    .line 144
    .local v0, "remoteAddress":Ljava/net/InetSocketAddress;
    if-nez v0, :cond_f

    .line 146
    :try_start_4
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->getRemoteSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    move-object v0, v1

    iput-object v1, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->remoteAddress:Ljava/net/InetSocketAddress;
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_b} :catch_c

    .line 151
    goto :goto_f

    .line 148
    :catch_c
    move-exception v1

    .line 150
    .local v1, "t":Ljava/lang/Throwable;
    const/4 v2, 0x0

    return-object v2

    .line 153
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_f
    :goto_f
    return-object v0
.end method

.method public bridge synthetic getRemoteAddress()Ljava/net/SocketAddress;
    .registers 2

    .line 42
    .local p0, "this":Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;, "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel<TC;>;"
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->getRemoteAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method abstract getRemoteSocketAddress()Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public getWorker()Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;
    .registers 2

    .line 126
    .local p0, "this":Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;, "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel<TC;>;"
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->worker:Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;

    return-object v0
.end method

.method protected setClosed()Z
    .registers 2

    .line 200
    .local p0, "this":Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;, "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel<TC;>;"
    invoke-super {p0}, Lorg/jboss/netty/channel/AbstractChannel;->setClosed()Z

    move-result v0

    return v0
.end method

.method setRawInterestOpsNow(I)V
    .registers 2
    .param p1, "interestOps"    # I

    .line 163
    .local p0, "this":Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;, "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel<TC;>;"
    invoke-super {p0, p1}, Lorg/jboss/netty/channel/AbstractChannel;->setInterestOpsNow(I)V

    .line 164
    return-void
.end method
