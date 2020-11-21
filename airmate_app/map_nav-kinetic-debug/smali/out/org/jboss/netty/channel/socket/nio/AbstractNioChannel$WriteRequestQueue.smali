.class final Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;
.super Ljava/lang/Object;
.source "AbstractNioChannel.java"

# interfaces
.implements Ljava/util/concurrent/BlockingQueue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WriteRequestQueue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/BlockingQueue<",
        "Lorg/jboss/netty/channel/MessageEvent;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final notifying:Lorg/jboss/netty/util/internal/ThreadLocalBoolean;

.field private final queue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lorg/jboss/netty/channel/MessageEvent;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 207
    const-class v0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;

    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;)V
    .registers 2

    .line 212
    .local p0, "this":Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;, "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel<TC;>.WriteRequestQueue;"
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;->this$0:Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    new-instance p1, Lorg/jboss/netty/util/internal/ThreadLocalBoolean;

    invoke-direct {p1}, Lorg/jboss/netty/util/internal/ThreadLocalBoolean;-><init>()V

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;->notifying:Lorg/jboss/netty/util/internal/ThreadLocalBoolean;

    .line 213
    const-class p1, Lorg/jboss/netty/channel/MessageEvent;

    invoke-static {p1}, Lorg/jboss/netty/util/internal/QueueFactory;->createQueue(Ljava/lang/Class;)Ljava/util/concurrent/BlockingQueue;

    move-result-object p1

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;->queue:Ljava/util/concurrent/BlockingQueue;

    .line 214
    return-void
.end method

.method private getMessageSize(Lorg/jboss/netty/channel/MessageEvent;)I
    .registers 4
    .param p1, "e"    # Lorg/jboss/netty/channel/MessageEvent;

    .line 351
    .local p0, "this":Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;, "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel<TC;>.WriteRequestQueue;"
    invoke-interface {p1}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v0

    .line 352
    .local v0, "m":Ljava/lang/Object;
    instance-of v1, v0, Lorg/jboss/netty/buffer/ChannelBuffer;

    if-eqz v1, :cond_10

    .line 353
    move-object v1, v0

    check-cast v1, Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v1

    return v1

    .line 355
    :cond_10
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 207
    .local p0, "this":Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;, "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel<TC;>.WriteRequestQueue;"
    move-object v0, p1

    check-cast v0, Lorg/jboss/netty/channel/MessageEvent;

    invoke-virtual {p0, v0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;->add(Lorg/jboss/netty/channel/MessageEvent;)Z

    move-result v0

    return v0
.end method

.method public add(Lorg/jboss/netty/channel/MessageEvent;)Z
    .registers 3
    .param p1, "e"    # Lorg/jboss/netty/channel/MessageEvent;

    .line 269
    .local p0, "this":Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;, "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel<TC;>.WriteRequestQueue;"
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/jboss/netty/channel/MessageEvent;",
            ">;)Z"
        }
    .end annotation

    .line 253
    .local p0, "this":Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;, "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel<TC;>.WriteRequestQueue;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/jboss/netty/channel/MessageEvent;>;"
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .registers 2

    .line 265
    .local p0, "this":Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;, "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel<TC;>.WriteRequestQueue;"
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 266
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 297
    .local p0, "this":Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;, "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel<TC;>.WriteRequestQueue;"
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 249
    .local p0, "this":Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;, "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel<TC;>.WriteRequestQueue;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public drainTo(Ljava/util/Collection;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "-",
            "Lorg/jboss/netty/channel/MessageEvent;",
            ">;)I"
        }
    .end annotation

    .line 301
    .local p0, "this":Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;, "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel<TC;>.WriteRequestQueue;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-Lorg/jboss/netty/channel/MessageEvent;>;"
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->drainTo(Ljava/util/Collection;)I

    move-result v0

    return v0
.end method

.method public drainTo(Ljava/util/Collection;I)I
    .registers 4
    .param p2, "maxElements"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "-",
            "Lorg/jboss/netty/channel/MessageEvent;",
            ">;I)I"
        }
    .end annotation

    .line 305
    .local p0, "this":Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;, "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel<TC;>.WriteRequestQueue;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-Lorg/jboss/netty/channel/MessageEvent;>;"
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/BlockingQueue;->drainTo(Ljava/util/Collection;I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic element()Ljava/lang/Object;
    .registers 2

    .line 207
    .local p0, "this":Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;, "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel<TC;>.WriteRequestQueue;"
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;->element()Lorg/jboss/netty/channel/MessageEvent;

    move-result-object v0

    return-object v0
.end method

.method public element()Lorg/jboss/netty/channel/MessageEvent;
    .registers 2

    .line 221
    .local p0, "this":Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;, "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel<TC;>.WriteRequestQueue;"
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->element()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/MessageEvent;

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 233
    .local p0, "this":Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;, "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel<TC;>.WriteRequestQueue;"
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/jboss/netty/channel/MessageEvent;",
            ">;"
        }
    .end annotation

    .line 237
    .local p0, "this":Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;, "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel<TC;>.WriteRequestQueue;"
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic offer(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 207
    .local p0, "this":Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;, "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel<TC;>.WriteRequestQueue;"
    move-object v0, p1

    check-cast v0, Lorg/jboss/netty/channel/MessageEvent;

    invoke-virtual {p0, v0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;->offer(Lorg/jboss/netty/channel/MessageEvent;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .registers 6
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # J
    .param p4, "x2"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 207
    .local p0, "this":Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;, "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel<TC;>.WriteRequestQueue;"
    move-object v0, p1

    check-cast v0, Lorg/jboss/netty/channel/MessageEvent;

    invoke-virtual {p0, v0, p2, p3, p4}, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;->offer(Lorg/jboss/netty/channel/MessageEvent;JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public offer(Lorg/jboss/netty/channel/MessageEvent;)Z
    .registers 8
    .param p1, "e"    # Lorg/jboss/netty/channel/MessageEvent;

    .line 309
    .local p0, "this":Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;, "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel<TC;>.WriteRequestQueue;"
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    .line 310
    .local v0, "success":Z
    nop

    .line 312
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;->getMessageSize(Lorg/jboss/netty/channel/MessageEvent;)I

    move-result v1

    .line 313
    .local v1, "messageSize":I
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;->this$0:Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;

    iget-object v2, v2, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->writeBufferSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v2

    .line 314
    .local v2, "newWriteBufferSize":I
    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;->this$0:Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;

    invoke-virtual {v3}, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->getConfig()Lorg/jboss/netty/channel/socket/nio/NioChannelConfig;

    move-result-object v3

    invoke-interface {v3}, Lorg/jboss/netty/channel/socket/nio/NioChannelConfig;->getWriteBufferHighWaterMark()I

    move-result v3

    .line 316
    .local v3, "highWaterMark":I
    if-lt v2, v3, :cond_4b

    .line 317
    sub-int v4, v2, v1

    if-ge v4, v3, :cond_4b

    .line 318
    iget-object v4, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;->this$0:Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;

    iget-object v4, v4, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->highWaterMarkCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 319
    iget-object v4, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;->notifying:Lorg/jboss/netty/util/internal/ThreadLocalBoolean;

    invoke-virtual {v4}, Lorg/jboss/netty/util/internal/ThreadLocalBoolean;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_4b

    .line 320
    iget-object v4, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;->notifying:Lorg/jboss/netty/util/internal/ThreadLocalBoolean;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Lorg/jboss/netty/util/internal/ThreadLocalBoolean;->set(Ljava/lang/Object;)V

    .line 321
    iget-object v4, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;->this$0:Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;

    invoke-static {v4}, Lorg/jboss/netty/channel/Channels;->fireChannelInterestChanged(Lorg/jboss/netty/channel/Channel;)V

    .line 322
    iget-object v4, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;->notifying:Lorg/jboss/netty/util/internal/ThreadLocalBoolean;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Lorg/jboss/netty/util/internal/ThreadLocalBoolean;->set(Ljava/lang/Object;)V

    .line 326
    :cond_4b
    const/4 v4, 0x1

    return v4
.end method

.method public offer(Lorg/jboss/netty/channel/MessageEvent;JLjava/util/concurrent/TimeUnit;)Z
    .registers 6
    .param p1, "e"    # Lorg/jboss/netty/channel/MessageEvent;
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 277
    .local p0, "this":Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;, "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel<TC;>.WriteRequestQueue;"
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic peek()Ljava/lang/Object;
    .registers 2

    .line 207
    .local p0, "this":Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;, "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel<TC;>.WriteRequestQueue;"
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;->peek()Lorg/jboss/netty/channel/MessageEvent;

    move-result-object v0

    return-object v0
.end method

.method public peek()Lorg/jboss/netty/channel/MessageEvent;
    .registers 2

    .line 225
    .local p0, "this":Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;, "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel<TC;>.WriteRequestQueue;"
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/MessageEvent;

    return-object v0
.end method

.method public bridge synthetic poll()Ljava/lang/Object;
    .registers 2

    .line 207
    .local p0, "this":Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;, "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel<TC;>.WriteRequestQueue;"
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;->poll()Lorg/jboss/netty/channel/MessageEvent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 5
    .param p1, "x0"    # J
    .param p3, "x1"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 207
    .local p0, "this":Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;, "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel<TC;>.WriteRequestQueue;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;->poll(JLjava/util/concurrent/TimeUnit;)Lorg/jboss/netty/channel/MessageEvent;

    move-result-object v0

    return-object v0
.end method

.method public poll()Lorg/jboss/netty/channel/MessageEvent;
    .registers 7

    .line 330
    .local p0, "this":Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;, "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel<TC;>.WriteRequestQueue;"
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/MessageEvent;

    .line 331
    .local v0, "e":Lorg/jboss/netty/channel/MessageEvent;
    if-eqz v0, :cond_59

    .line 332
    invoke-direct {p0, v0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;->getMessageSize(Lorg/jboss/netty/channel/MessageEvent;)I

    move-result v1

    .line 333
    .local v1, "messageSize":I
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;->this$0:Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;

    iget-object v2, v2, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->writeBufferSize:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v3, v1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v2

    .line 334
    .local v2, "newWriteBufferSize":I
    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;->this$0:Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;

    invoke-virtual {v3}, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->getConfig()Lorg/jboss/netty/channel/socket/nio/NioChannelConfig;

    move-result-object v3

    invoke-interface {v3}, Lorg/jboss/netty/channel/socket/nio/NioChannelConfig;->getWriteBufferLowWaterMark()I

    move-result v3

    .line 336
    .local v3, "lowWaterMark":I
    if-eqz v2, :cond_25

    if-ge v2, v3, :cond_59

    .line 337
    :cond_25
    add-int v4, v2, v1

    if-lt v4, v3, :cond_59

    .line 338
    iget-object v4, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;->this$0:Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;

    iget-object v4, v4, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->highWaterMarkCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 339
    iget-object v4, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;->this$0:Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;

    invoke-virtual {v4}, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_59

    iget-object v4, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;->notifying:Lorg/jboss/netty/util/internal/ThreadLocalBoolean;

    invoke-virtual {v4}, Lorg/jboss/netty/util/internal/ThreadLocalBoolean;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_59

    .line 340
    iget-object v4, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;->notifying:Lorg/jboss/netty/util/internal/ThreadLocalBoolean;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Lorg/jboss/netty/util/internal/ThreadLocalBoolean;->set(Ljava/lang/Object;)V

    .line 341
    iget-object v4, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;->this$0:Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;

    invoke-static {v4}, Lorg/jboss/netty/channel/Channels;->fireChannelInterestChanged(Lorg/jboss/netty/channel/Channel;)V

    .line 342
    iget-object v4, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;->notifying:Lorg/jboss/netty/util/internal/ThreadLocalBoolean;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Lorg/jboss/netty/util/internal/ThreadLocalBoolean;->set(Ljava/lang/Object;)V

    .line 347
    .end local v1    # "messageSize":I
    .end local v2    # "newWriteBufferSize":I
    .end local v3    # "lowWaterMark":I
    :cond_59
    return-object v0
.end method

.method public poll(JLjava/util/concurrent/TimeUnit;)Lorg/jboss/netty/channel/MessageEvent;
    .registers 5
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 285
    .local p0, "this":Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;, "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel<TC;>.WriteRequestQueue;"
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1, p2, p3}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/MessageEvent;

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;)V
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 207
    .local p0, "this":Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;, "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel<TC;>.WriteRequestQueue;"
    move-object v0, p1

    check-cast v0, Lorg/jboss/netty/channel/MessageEvent;

    invoke-virtual {p0, v0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;->put(Lorg/jboss/netty/channel/MessageEvent;)V

    return-void
.end method

.method public put(Lorg/jboss/netty/channel/MessageEvent;)V
    .registers 3
    .param p1, "e"    # Lorg/jboss/netty/channel/MessageEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 273
    .local p0, "this":Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;, "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel<TC;>.WriteRequestQueue;"
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 274
    return-void
.end method

.method public remainingCapacity()I
    .registers 2

    .line 289
    .local p0, "this":Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;, "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel<TC;>.WriteRequestQueue;"
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->remainingCapacity()I

    move-result v0

    return v0
.end method

.method public bridge synthetic remove()Ljava/lang/Object;
    .registers 2

    .line 207
    .local p0, "this":Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;, "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel<TC;>.WriteRequestQueue;"
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;->remove()Lorg/jboss/netty/channel/MessageEvent;

    move-result-object v0

    return-object v0
.end method

.method public remove()Lorg/jboss/netty/channel/MessageEvent;
    .registers 2

    .line 217
    .local p0, "this":Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;, "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel<TC;>.WriteRequestQueue;"
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/MessageEvent;

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 293
    .local p0, "this":Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;, "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel<TC;>.WriteRequestQueue;"
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 257
    .local p0, "this":Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;, "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel<TC;>.WriteRequestQueue;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 261
    .local p0, "this":Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;, "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel<TC;>.WriteRequestQueue;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .registers 2

    .line 229
    .local p0, "this":Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;, "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel<TC;>.WriteRequestQueue;"
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic take()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 207
    .local p0, "this":Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;, "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel<TC;>.WriteRequestQueue;"
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;->take()Lorg/jboss/netty/channel/MessageEvent;

    move-result-object v0

    return-object v0
.end method

.method public take()Lorg/jboss/netty/channel/MessageEvent;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 281
    .local p0, "this":Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;, "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel<TC;>.WriteRequestQueue;"
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/MessageEvent;

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    .line 241
    .local p0, "this":Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;, "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel<TC;>.WriteRequestQueue;"
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 245
    .local p0, "this":Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;, "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel<TC;>.WriteRequestQueue;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteRequestQueue;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
