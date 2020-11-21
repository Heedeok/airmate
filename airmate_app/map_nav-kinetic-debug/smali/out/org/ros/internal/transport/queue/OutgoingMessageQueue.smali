.class public Lorg/ros/internal/transport/queue/OutgoingMessageQueue;
.super Ljava/lang/Object;
.source "OutgoingMessageQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ros/internal/transport/queue/OutgoingMessageQueue$Writer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEQUE_CAPACITY:I = 0x10

.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field private final channelGroup:Lorg/jboss/netty/channel/group/ChannelGroup;

.field private final deque:Lorg/ros/concurrent/CircularBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ros/concurrent/CircularBlockingDeque<",
            "TT;>;"
        }
    .end annotation
.end field

.field private latchMode:Z

.field private final latchedBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

.field private latchedMessage:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final messageBufferPool:Lorg/ros/internal/message/MessageBufferPool;

.field private final mutex:Ljava/lang/Object;

.field private final serializer:Lorg/ros/message/MessageSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ros/message/MessageSerializer<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final writer:Lorg/ros/internal/transport/queue/OutgoingMessageQueue$Writer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ros/internal/transport/queue/OutgoingMessageQueue<",
            "TT;>.Writer;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 43
    const-class v0, Lorg/ros/internal/transport/queue/OutgoingMessageQueue;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/ros/internal/transport/queue/OutgoingMessageQueue;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(Lorg/ros/message/MessageSerializer;Ljava/util/concurrent/ExecutorService;)V
    .registers 5
    .param p2, "executorService"    # Ljava/util/concurrent/ExecutorService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/message/MessageSerializer<",
            "TT;>;",
            "Ljava/util/concurrent/ExecutorService;",
            ")V"
        }
    .end annotation

    .line 81
    .local p0, "this":Lorg/ros/internal/transport/queue/OutgoingMessageQueue;, "Lorg/ros/internal/transport/queue/OutgoingMessageQueue<TT;>;"
    .local p1, "serializer":Lorg/ros/message/MessageSerializer;, "Lorg/ros/message/MessageSerializer<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lorg/ros/internal/transport/queue/OutgoingMessageQueue;->serializer:Lorg/ros/message/MessageSerializer;

    .line 83
    new-instance v0, Lorg/ros/concurrent/CircularBlockingDeque;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lorg/ros/concurrent/CircularBlockingDeque;-><init>(I)V

    iput-object v0, p0, Lorg/ros/internal/transport/queue/OutgoingMessageQueue;->deque:Lorg/ros/concurrent/CircularBlockingDeque;

    .line 84
    new-instance v0, Lorg/jboss/netty/channel/group/DefaultChannelGroup;

    invoke-direct {v0}, Lorg/jboss/netty/channel/group/DefaultChannelGroup;-><init>()V

    iput-object v0, p0, Lorg/ros/internal/transport/queue/OutgoingMessageQueue;->channelGroup:Lorg/jboss/netty/channel/group/ChannelGroup;

    .line 85
    new-instance v0, Lorg/ros/internal/transport/queue/OutgoingMessageQueue$Writer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/ros/internal/transport/queue/OutgoingMessageQueue$Writer;-><init>(Lorg/ros/internal/transport/queue/OutgoingMessageQueue;Lorg/ros/internal/transport/queue/OutgoingMessageQueue$1;)V

    iput-object v0, p0, Lorg/ros/internal/transport/queue/OutgoingMessageQueue;->writer:Lorg/ros/internal/transport/queue/OutgoingMessageQueue$Writer;

    .line 86
    new-instance v0, Lorg/ros/internal/message/MessageBufferPool;

    invoke-direct {v0}, Lorg/ros/internal/message/MessageBufferPool;-><init>()V

    iput-object v0, p0, Lorg/ros/internal/transport/queue/OutgoingMessageQueue;->messageBufferPool:Lorg/ros/internal/message/MessageBufferPool;

    .line 87
    invoke-static {}, Lorg/ros/internal/message/MessageBuffers;->dynamicBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/internal/transport/queue/OutgoingMessageQueue;->latchedBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/ros/internal/transport/queue/OutgoingMessageQueue;->mutex:Ljava/lang/Object;

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/ros/internal/transport/queue/OutgoingMessageQueue;->latchMode:Z

    .line 90
    iget-object v0, p0, Lorg/ros/internal/transport/queue/OutgoingMessageQueue;->writer:Lorg/ros/internal/transport/queue/OutgoingMessageQueue$Writer;

    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 91
    return-void
.end method

.method static synthetic access$000(Lorg/ros/internal/transport/queue/OutgoingMessageQueue;)Lorg/ros/concurrent/CircularBlockingDeque;
    .registers 2
    .param p0, "x0"    # Lorg/ros/internal/transport/queue/OutgoingMessageQueue;

    .line 40
    iget-object v0, p0, Lorg/ros/internal/transport/queue/OutgoingMessageQueue;->deque:Lorg/ros/concurrent/CircularBlockingDeque;

    return-object v0
.end method

.method static synthetic access$100(Lorg/ros/internal/transport/queue/OutgoingMessageQueue;)Lorg/ros/internal/message/MessageBufferPool;
    .registers 2
    .param p0, "x0"    # Lorg/ros/internal/transport/queue/OutgoingMessageQueue;

    .line 40
    iget-object v0, p0, Lorg/ros/internal/transport/queue/OutgoingMessageQueue;->messageBufferPool:Lorg/ros/internal/message/MessageBufferPool;

    return-object v0
.end method

.method static synthetic access$200(Lorg/ros/internal/transport/queue/OutgoingMessageQueue;)Lorg/ros/message/MessageSerializer;
    .registers 2
    .param p0, "x0"    # Lorg/ros/internal/transport/queue/OutgoingMessageQueue;

    .line 40
    iget-object v0, p0, Lorg/ros/internal/transport/queue/OutgoingMessageQueue;->serializer:Lorg/ros/message/MessageSerializer;

    return-object v0
.end method

.method static synthetic access$300(Lorg/ros/internal/transport/queue/OutgoingMessageQueue;)Lorg/jboss/netty/channel/group/ChannelGroup;
    .registers 2
    .param p0, "x0"    # Lorg/ros/internal/transport/queue/OutgoingMessageQueue;

    .line 40
    iget-object v0, p0, Lorg/ros/internal/transport/queue/OutgoingMessageQueue;->channelGroup:Lorg/jboss/netty/channel/group/ChannelGroup;

    return-object v0
.end method

.method private setLatchedMessage(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 111
    .local p0, "this":Lorg/ros/internal/transport/queue/OutgoingMessageQueue;, "Lorg/ros/internal/transport/queue/OutgoingMessageQueue<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/ros/internal/transport/queue/OutgoingMessageQueue;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 112
    :try_start_3
    iput-object p1, p0, Lorg/ros/internal/transport/queue/OutgoingMessageQueue;->latchedMessage:Ljava/lang/Object;

    .line 113
    monitor-exit v0

    .line 114
    return-void

    .line 113
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private writeLatchedMessage(Lorg/jboss/netty/channel/Channel;)V
    .registers 6
    .param p1, "channel"    # Lorg/jboss/netty/channel/Channel;

    .line 142
    .local p0, "this":Lorg/ros/internal/transport/queue/OutgoingMessageQueue;, "Lorg/ros/internal/transport/queue/OutgoingMessageQueue<TT;>;"
    iget-object v0, p0, Lorg/ros/internal/transport/queue/OutgoingMessageQueue;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 143
    :try_start_3
    iget-object v1, p0, Lorg/ros/internal/transport/queue/OutgoingMessageQueue;->latchedBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->clear()V

    .line 144
    iget-object v1, p0, Lorg/ros/internal/transport/queue/OutgoingMessageQueue;->serializer:Lorg/ros/message/MessageSerializer;

    iget-object v2, p0, Lorg/ros/internal/transport/queue/OutgoingMessageQueue;->latchedMessage:Ljava/lang/Object;

    iget-object v3, p0, Lorg/ros/internal/transport/queue/OutgoingMessageQueue;->latchedBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v1, v2, v3}, Lorg/ros/message/MessageSerializer;->serialize(Ljava/lang/Object;Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 145
    iget-object v1, p0, Lorg/ros/internal/transport/queue/OutgoingMessageQueue;->latchedBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {p1, v1}, Lorg/jboss/netty/channel/Channel;->write(Ljava/lang/Object;)Lorg/jboss/netty/channel/ChannelFuture;

    .line 146
    monitor-exit v0

    .line 147
    return-void

    .line 146
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 106
    .local p0, "this":Lorg/ros/internal/transport/queue/OutgoingMessageQueue;, "Lorg/ros/internal/transport/queue/OutgoingMessageQueue<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/ros/internal/transport/queue/OutgoingMessageQueue;->deque:Lorg/ros/concurrent/CircularBlockingDeque;

    invoke-virtual {v0, p1}, Lorg/ros/concurrent/CircularBlockingDeque;->addLast(Ljava/lang/Object;)Z

    .line 107
    invoke-direct {p0, p1}, Lorg/ros/internal/transport/queue/OutgoingMessageQueue;->setLatchedMessage(Ljava/lang/Object;)V

    .line 108
    return-void
.end method

.method public addChannel(Lorg/jboss/netty/channel/Channel;)V
    .registers 4
    .param p1, "channel"    # Lorg/jboss/netty/channel/Channel;

    .line 129
    .local p0, "this":Lorg/ros/internal/transport/queue/OutgoingMessageQueue;, "Lorg/ros/internal/transport/queue/OutgoingMessageQueue<TT;>;"
    iget-object v0, p0, Lorg/ros/internal/transport/queue/OutgoingMessageQueue;->writer:Lorg/ros/internal/transport/queue/OutgoingMessageQueue$Writer;

    invoke-virtual {v0}, Lorg/ros/internal/transport/queue/OutgoingMessageQueue$Writer;->isRunning()Z

    move-result v0

    if-nez v0, :cond_10

    .line 130
    sget-object v0, Lorg/ros/internal/transport/queue/OutgoingMessageQueue;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "Failed to add channel. Cannot add channels after shutdown."

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 131
    return-void

    .line 133
    :cond_10
    iget-boolean v0, p0, Lorg/ros/internal/transport/queue/OutgoingMessageQueue;->latchMode:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lorg/ros/internal/transport/queue/OutgoingMessageQueue;->latchedMessage:Ljava/lang/Object;

    if-eqz v0, :cond_1b

    .line 134
    invoke-direct {p0, p1}, Lorg/ros/internal/transport/queue/OutgoingMessageQueue;->writeLatchedMessage(Lorg/jboss/netty/channel/Channel;)V

    .line 136
    :cond_1b
    iget-object v0, p0, Lorg/ros/internal/transport/queue/OutgoingMessageQueue;->channelGroup:Lorg/jboss/netty/channel/group/ChannelGroup;

    invoke-interface {v0, p1}, Lorg/jboss/netty/channel/group/ChannelGroup;->add(Ljava/lang/Object;)Z

    .line 137
    return-void
.end method

.method public getChannelGroup()Lorg/jboss/netty/channel/group/ChannelGroup;
    .registers 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .line 158
    .local p0, "this":Lorg/ros/internal/transport/queue/OutgoingMessageQueue;, "Lorg/ros/internal/transport/queue/OutgoingMessageQueue<TT;>;"
    iget-object v0, p0, Lorg/ros/internal/transport/queue/OutgoingMessageQueue;->channelGroup:Lorg/jboss/netty/channel/group/ChannelGroup;

    return-object v0
.end method

.method public getLatchMode()Z
    .registers 2

    .line 98
    .local p0, "this":Lorg/ros/internal/transport/queue/OutgoingMessageQueue;, "Lorg/ros/internal/transport/queue/OutgoingMessageQueue<TT;>;"
    iget-boolean v0, p0, Lorg/ros/internal/transport/queue/OutgoingMessageQueue;->latchMode:Z

    return v0
.end method

.method public getNumberOfChannels()I
    .registers 2

    .line 153
    .local p0, "this":Lorg/ros/internal/transport/queue/OutgoingMessageQueue;, "Lorg/ros/internal/transport/queue/OutgoingMessageQueue<TT;>;"
    iget-object v0, p0, Lorg/ros/internal/transport/queue/OutgoingMessageQueue;->channelGroup:Lorg/jboss/netty/channel/group/ChannelGroup;

    invoke-interface {v0}, Lorg/jboss/netty/channel/group/ChannelGroup;->size()I

    move-result v0

    return v0
.end method

.method public setLatchMode(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 94
    .local p0, "this":Lorg/ros/internal/transport/queue/OutgoingMessageQueue;, "Lorg/ros/internal/transport/queue/OutgoingMessageQueue<TT;>;"
    iput-boolean p1, p0, Lorg/ros/internal/transport/queue/OutgoingMessageQueue;->latchMode:Z

    .line 95
    return-void
.end method

.method public shutdown()V
    .registers 2

    .line 120
    .local p0, "this":Lorg/ros/internal/transport/queue/OutgoingMessageQueue;, "Lorg/ros/internal/transport/queue/OutgoingMessageQueue<TT;>;"
    iget-object v0, p0, Lorg/ros/internal/transport/queue/OutgoingMessageQueue;->writer:Lorg/ros/internal/transport/queue/OutgoingMessageQueue$Writer;

    invoke-virtual {v0}, Lorg/ros/internal/transport/queue/OutgoingMessageQueue$Writer;->cancel()V

    .line 121
    iget-object v0, p0, Lorg/ros/internal/transport/queue/OutgoingMessageQueue;->channelGroup:Lorg/jboss/netty/channel/group/ChannelGroup;

    invoke-interface {v0}, Lorg/jboss/netty/channel/group/ChannelGroup;->close()Lorg/jboss/netty/channel/group/ChannelGroupFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/group/ChannelGroupFuture;->awaitUninterruptibly()Lorg/jboss/netty/channel/group/ChannelGroupFuture;

    .line 122
    return-void
.end method
