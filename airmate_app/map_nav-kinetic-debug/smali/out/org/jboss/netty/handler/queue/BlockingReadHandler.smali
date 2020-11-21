.class public Lorg/jboss/netty/handler/queue/BlockingReadHandler;
.super Lorg/jboss/netty/channel/SimpleChannelUpstreamHandler;
.source "BlockingReadHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jboss/netty/channel/SimpleChannelUpstreamHandler;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private volatile closed:Z

.field private final queue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lorg/jboss/netty/channel/ChannelEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 74
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 84
    .local p0, "this":Lorg/jboss/netty/handler/queue/BlockingReadHandler;, "Lorg/jboss/netty/handler/queue/BlockingReadHandler<TE;>;"
    const-class v0, Lorg/jboss/netty/channel/ChannelEvent;

    invoke-static {v0}, Lorg/jboss/netty/util/internal/QueueFactory;->createQueue(Ljava/lang/Class;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/queue/BlockingReadHandler;-><init>(Ljava/util/concurrent/BlockingQueue;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lorg/jboss/netty/channel/ChannelEvent;",
            ">;)V"
        }
    .end annotation

    .line 90
    .local p0, "this":Lorg/jboss/netty/handler/queue/BlockingReadHandler;, "Lorg/jboss/netty/handler/queue/BlockingReadHandler<TE;>;"
    .local p1, "queue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Lorg/jboss/netty/channel/ChannelEvent;>;"
    invoke-direct {p0}, Lorg/jboss/netty/channel/SimpleChannelUpstreamHandler;-><init>()V

    .line 91
    if-eqz p1, :cond_8

    .line 94
    iput-object p1, p0, Lorg/jboss/netty/handler/queue/BlockingReadHandler;->queue:Ljava/util/concurrent/BlockingQueue;

    .line 95
    return-void

    .line 92
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "queue"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static detectDeadLock()V
    .registers 2

    .line 244
    sget-object v0, Lorg/jboss/netty/util/internal/DeadLockProofWorker;->PARENT:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_9

    .line 250
    return-void

    .line 245
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "read*(...) in I/O thread causes a dead lock or sudden performance drop. Implement a state machine or call read*() from a different thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getMessage(Lorg/jboss/netty/channel/MessageEvent;)Ljava/lang/Object;
    .registers 3
    .param p1, "e"    # Lorg/jboss/netty/channel/MessageEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/channel/MessageEvent;",
            ")TE;"
        }
    .end annotation

    .line 272
    .local p0, "this":Lorg/jboss/netty/handler/queue/BlockingReadHandler;, "Lorg/jboss/netty/handler/queue/BlockingReadHandler<TE;>;"
    invoke-interface {p1}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public channelClosed(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V
    .registers 4
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/ChannelStateEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 267
    .local p0, "this":Lorg/jboss/netty/handler/queue/BlockingReadHandler;, "Lorg/jboss/netty/handler/queue/BlockingReadHandler<TE;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jboss/netty/handler/queue/BlockingReadHandler;->closed:Z

    .line 268
    invoke-virtual {p0}, Lorg/jboss/netty/handler/queue/BlockingReadHandler;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 269
    return-void
.end method

.method public exceptionCaught(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ExceptionEvent;)V
    .registers 4
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/ExceptionEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 261
    .local p0, "this":Lorg/jboss/netty/handler/queue/BlockingReadHandler;, "Lorg/jboss/netty/handler/queue/BlockingReadHandler<TE;>;"
    invoke-virtual {p0}, Lorg/jboss/netty/handler/queue/BlockingReadHandler;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 262
    return-void
.end method

.method protected getQueue()Ljava/util/concurrent/BlockingQueue;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lorg/jboss/netty/channel/ChannelEvent;",
            ">;"
        }
    .end annotation

    .line 102
    .local p0, "this":Lorg/jboss/netty/handler/queue/BlockingReadHandler;, "Lorg/jboss/netty/handler/queue/BlockingReadHandler<TE;>;"
    iget-object v0, p0, Lorg/jboss/netty/handler/queue/BlockingReadHandler;->queue:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method public isClosed()Z
    .registers 2

    .line 113
    .local p0, "this":Lorg/jboss/netty/handler/queue/BlockingReadHandler;, "Lorg/jboss/netty/handler/queue/BlockingReadHandler<TE;>;"
    iget-boolean v0, p0, Lorg/jboss/netty/handler/queue/BlockingReadHandler;->closed:Z

    return v0
.end method

.method public messageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;)V
    .registers 4
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/MessageEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 255
    .local p0, "this":Lorg/jboss/netty/handler/queue/BlockingReadHandler;, "Lorg/jboss/netty/handler/queue/BlockingReadHandler<TE;>;"
    invoke-virtual {p0}, Lorg/jboss/netty/handler/queue/BlockingReadHandler;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 256
    return-void
.end method

.method public read()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 128
    .local p0, "this":Lorg/jboss/netty/handler/queue/BlockingReadHandler;, "Lorg/jboss/netty/handler/queue/BlockingReadHandler<TE;>;"
    invoke-virtual {p0}, Lorg/jboss/netty/handler/queue/BlockingReadHandler;->readEvent()Lorg/jboss/netty/channel/ChannelEvent;

    move-result-object v0

    .line 129
    .local v0, "e":Lorg/jboss/netty/channel/ChannelEvent;
    if-nez v0, :cond_8

    .line 130
    const/4 v1, 0x0

    return-object v1

    .line 133
    :cond_8
    instance-of v1, v0, Lorg/jboss/netty/channel/MessageEvent;

    if-eqz v1, :cond_14

    .line 134
    move-object v1, v0

    check-cast v1, Lorg/jboss/netty/channel/MessageEvent;

    invoke-direct {p0, v1}, Lorg/jboss/netty/handler/queue/BlockingReadHandler;->getMessage(Lorg/jboss/netty/channel/MessageEvent;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 135
    :cond_14
    instance-of v1, v0, Lorg/jboss/netty/channel/ExceptionEvent;

    if-eqz v1, :cond_2b

    .line 136
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    move-object v2, v0

    check-cast v2, Lorg/jboss/netty/channel/ExceptionEvent;

    invoke-interface {v2}, Lorg/jboss/netty/channel/ExceptionEvent;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/io/IOException;

    throw v1

    .line 138
    :cond_2b
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method

.method public read(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 7
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 163
    .local p0, "this":Lorg/jboss/netty/handler/queue/BlockingReadHandler;, "Lorg/jboss/netty/handler/queue/BlockingReadHandler<TE;>;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/jboss/netty/handler/queue/BlockingReadHandler;->readEvent(JLjava/util/concurrent/TimeUnit;)Lorg/jboss/netty/channel/ChannelEvent;

    move-result-object v0

    .line 164
    .local v0, "e":Lorg/jboss/netty/channel/ChannelEvent;
    if-nez v0, :cond_8

    .line 165
    const/4 v1, 0x0

    return-object v1

    .line 168
    :cond_8
    instance-of v1, v0, Lorg/jboss/netty/channel/MessageEvent;

    if-eqz v1, :cond_14

    .line 169
    move-object v1, v0

    check-cast v1, Lorg/jboss/netty/channel/MessageEvent;

    invoke-direct {p0, v1}, Lorg/jboss/netty/handler/queue/BlockingReadHandler;->getMessage(Lorg/jboss/netty/channel/MessageEvent;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 170
    :cond_14
    instance-of v1, v0, Lorg/jboss/netty/channel/ExceptionEvent;

    if-eqz v1, :cond_2b

    .line 171
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    move-object v2, v0

    check-cast v2, Lorg/jboss/netty/channel/ExceptionEvent;

    invoke-interface {v2}, Lorg/jboss/netty/channel/ExceptionEvent;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/io/IOException;

    throw v1

    .line 173
    :cond_2b
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method

.method public readEvent()Lorg/jboss/netty/channel/ChannelEvent;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 187
    .local p0, "this":Lorg/jboss/netty/handler/queue/BlockingReadHandler;, "Lorg/jboss/netty/handler/queue/BlockingReadHandler<TE;>;"
    invoke-static {}, Lorg/jboss/netty/handler/queue/BlockingReadHandler;->detectDeadLock()V

    .line 188
    invoke-virtual {p0}, Lorg/jboss/netty/handler/queue/BlockingReadHandler;->isClosed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    .line 189
    invoke-virtual {p0}, Lorg/jboss/netty/handler/queue/BlockingReadHandler;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 190
    return-object v1

    .line 194
    :cond_15
    invoke-virtual {p0}, Lorg/jboss/netty/handler/queue/BlockingReadHandler;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/ChannelEvent;

    .line 195
    .local v0, "e":Lorg/jboss/netty/channel/ChannelEvent;
    instance-of v2, v0, Lorg/jboss/netty/channel/ChannelStateEvent;

    if-eqz v2, :cond_25

    .line 197
    nop

    .line 198
    return-object v1

    .line 200
    :cond_25
    return-object v0
.end method

.method public readEvent(JLjava/util/concurrent/TimeUnit;)Lorg/jboss/netty/channel/ChannelEvent;
    .registers 7
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lorg/jboss/netty/handler/queue/BlockingReadTimeoutException;
        }
    .end annotation

    .line 224
    .local p0, "this":Lorg/jboss/netty/handler/queue/BlockingReadHandler;, "Lorg/jboss/netty/handler/queue/BlockingReadHandler<TE;>;"
    invoke-static {}, Lorg/jboss/netty/handler/queue/BlockingReadHandler;->detectDeadLock()V

    .line 225
    invoke-virtual {p0}, Lorg/jboss/netty/handler/queue/BlockingReadHandler;->isClosed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    .line 226
    invoke-virtual {p0}, Lorg/jboss/netty/handler/queue/BlockingReadHandler;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 227
    return-object v1

    .line 231
    :cond_15
    invoke-virtual {p0}, Lorg/jboss/netty/handler/queue/BlockingReadHandler;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/ChannelEvent;

    .line 232
    .local v0, "e":Lorg/jboss/netty/channel/ChannelEvent;
    if-eqz v0, :cond_28

    .line 234
    instance-of v2, v0, Lorg/jboss/netty/channel/ChannelStateEvent;

    if-eqz v2, :cond_27

    .line 236
    nop

    .line 237
    return-object v1

    .line 239
    :cond_27
    return-object v0

    .line 233
    :cond_28
    new-instance v1, Lorg/jboss/netty/handler/queue/BlockingReadTimeoutException;

    invoke-direct {v1}, Lorg/jboss/netty/handler/queue/BlockingReadTimeoutException;-><init>()V

    throw v1
.end method
