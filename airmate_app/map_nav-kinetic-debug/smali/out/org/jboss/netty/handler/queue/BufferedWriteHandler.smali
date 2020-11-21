.class public Lorg/jboss/netty/handler/queue/BufferedWriteHandler;
.super Lorg/jboss/netty/channel/SimpleChannelHandler;
.source "BufferedWriteHandler.java"

# interfaces
.implements Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final consolidateOnFlush:Z

.field private volatile ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

.field private final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/jboss/netty/channel/MessageEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 163
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 174
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/queue/BufferedWriteHandler;-><init>(Z)V

    .line 175
    return-void
.end method

.method public constructor <init>(Ljava/util/Queue;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Lorg/jboss/netty/channel/MessageEvent;",
            ">;)V"
        }
    .end annotation

    .line 184
    .local p1, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/jboss/netty/channel/MessageEvent;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/queue/BufferedWriteHandler;-><init>(Ljava/util/Queue;Z)V

    .line 185
    return-void
.end method

.method public constructor <init>(Ljava/util/Queue;Z)V
    .registers 5
    .param p2, "consolidateOnFlush"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Lorg/jboss/netty/channel/MessageEvent;",
            ">;Z)V"
        }
    .end annotation

    .line 208
    .local p1, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/jboss/netty/channel/MessageEvent;>;"
    invoke-direct {p0}, Lorg/jboss/netty/channel/SimpleChannelHandler;-><init>()V

    .line 209
    if-eqz p1, :cond_a

    .line 212
    iput-object p1, p0, Lorg/jboss/netty/handler/queue/BufferedWriteHandler;->queue:Ljava/util/Queue;

    .line 213
    iput-boolean p2, p0, Lorg/jboss/netty/handler/queue/BufferedWriteHandler;->consolidateOnFlush:Z

    .line 214
    return-void

    .line 210
    :cond_a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "queue"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Z)V
    .registers 3
    .param p1, "consolidateOnFlush"    # Z

    .line 196
    const-class v0, Lorg/jboss/netty/channel/MessageEvent;

    invoke-static {v0}, Lorg/jboss/netty/util/internal/QueueFactory;->createQueue(Ljava/lang/Class;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/jboss/netty/handler/queue/BufferedWriteHandler;-><init>(Ljava/util/Queue;Z)V

    .line 197
    return-void
.end method

.method private consolidatedWrite(Ljava/util/List;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jboss/netty/channel/MessageEvent;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/jboss/netty/channel/MessageEvent;",
            ">;"
        }
    .end annotation

    .line 287
    .local p1, "pendingWrites":Ljava/util/List;, "Ljava/util/List<Lorg/jboss/netty/channel/MessageEvent;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 288
    .local v0, "size":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_14

    .line 289
    iget-object v2, p0, Lorg/jboss/netty/handler/queue/BufferedWriteHandler;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jboss/netty/channel/ChannelEvent;

    invoke-interface {v2, v1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 290
    return-object p1

    .line 291
    :cond_14
    if-nez v0, :cond_17

    .line 292
    return-object p1

    .line 295
    :cond_17
    new-array v2, v0, [Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 296
    .local v2, "data":[Lorg/jboss/netty/buffer/ChannelBuffer;
    nop

    .local v1, "i":I
    :goto_1a
    array-length v3, v2

    if-ge v1, v3, :cond_2e

    .line 297
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jboss/netty/channel/MessageEvent;

    invoke-interface {v3}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jboss/netty/buffer/ChannelBuffer;

    aput-object v3, v2, v1

    .line 296
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 300
    .end local v1    # "i":I
    :cond_2e
    invoke-static {v2}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    .line 301
    .local v1, "composite":Lorg/jboss/netty/buffer/ChannelBuffer;
    iget-object v3, p0, Lorg/jboss/netty/handler/queue/BufferedWriteHandler;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    invoke-interface {v3}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v3

    invoke-static {v3}, Lorg/jboss/netty/channel/Channels;->future(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v3

    .line 302
    .local v3, "future":Lorg/jboss/netty/channel/ChannelFuture;
    new-instance v4, Lorg/jboss/netty/handler/queue/BufferedWriteHandler$1;

    invoke-direct {v4, p0, p1}, Lorg/jboss/netty/handler/queue/BufferedWriteHandler$1;-><init>(Lorg/jboss/netty/handler/queue/BufferedWriteHandler;Ljava/util/List;)V

    invoke-interface {v3, v4}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    .line 318
    iget-object v4, p0, Lorg/jboss/netty/handler/queue/BufferedWriteHandler;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    invoke-static {v4, v3, v1}, Lorg/jboss/netty/channel/Channels;->write(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;)V

    .line 319
    const/4 v4, 0x0

    return-object v4
.end method


# virtual methods
.method public afterAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .registers 2
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 393
    return-void
.end method

.method public afterRemove(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .registers 6
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 405
    const/4 v0, 0x0

    .line 407
    .local v0, "cause":Ljava/lang/Throwable;
    :goto_1
    iget-object v1, p0, Lorg/jboss/netty/handler/queue/BufferedWriteHandler;->queue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jboss/netty/channel/MessageEvent;

    .line 409
    .local v1, "ev":Lorg/jboss/netty/channel/MessageEvent;
    if-nez v1, :cond_16

    .line 410
    nop

    .line 419
    .end local v1    # "ev":Lorg/jboss/netty/channel/MessageEvent;
    if-eqz v0, :cond_15

    .line 420
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaughtLater(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/ChannelFuture;

    .line 422
    :cond_15
    return-void

    .line 413
    .restart local v1    # "ev":Lorg/jboss/netty/channel/MessageEvent;
    :cond_16
    if-nez v0, :cond_20

    .line 414
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Unable to flush message"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 416
    :cond_20
    invoke-interface {v1}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 418
    .end local v1    # "ev":Lorg/jboss/netty/channel/MessageEvent;
    goto :goto_1
.end method

.method public beforeAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .registers 2
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 388
    return-void
.end method

.method public beforeRemove(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .registers 3
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 397
    iget-boolean v0, p0, Lorg/jboss/netty/handler/queue/BufferedWriteHandler;->consolidateOnFlush:Z

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/queue/BufferedWriteHandler;->flush(Z)V

    .line 398
    return-void
.end method

.method public channelClosed(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V
    .registers 6
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/ChannelStateEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 364
    const/4 v0, 0x0

    .line 366
    .local v0, "cause":Ljava/lang/Throwable;
    :goto_1
    iget-object v1, p0, Lorg/jboss/netty/handler/queue/BufferedWriteHandler;->queue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jboss/netty/channel/MessageEvent;

    .line 368
    .local v1, "ev":Lorg/jboss/netty/channel/MessageEvent;
    if-nez v1, :cond_19

    .line 369
    nop

    .line 378
    .end local v1    # "ev":Lorg/jboss/netty/channel/MessageEvent;
    if-eqz v0, :cond_15

    .line 379
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    .line 382
    :cond_15
    invoke-super {p0, p1, p2}, Lorg/jboss/netty/channel/SimpleChannelHandler;->channelClosed(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V

    .line 383
    return-void

    .line 372
    .restart local v1    # "ev":Lorg/jboss/netty/channel/MessageEvent;
    :cond_19
    if-nez v0, :cond_21

    .line 373
    new-instance v2, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v2}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    move-object v0, v2

    .line 375
    :cond_21
    invoke-interface {v1}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 377
    .end local v1    # "ev":Lorg/jboss/netty/channel/MessageEvent;
    goto :goto_1
.end method

.method public closeRequested(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V
    .registers 4
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/ChannelStateEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 352
    :try_start_0
    iget-boolean v0, p0, Lorg/jboss/netty/handler/queue/BufferedWriteHandler;->consolidateOnFlush:Z

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/queue/BufferedWriteHandler;->flush(Z)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_b

    .line 353
    nop

    .line 356
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 355
    nop

    .line 356
    return-void

    .line 354
    :catchall_b
    move-exception v0

    .line 356
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 354
    throw v0
.end method

.method public disconnectRequested(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V
    .registers 4
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/ChannelStateEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 342
    :try_start_0
    iget-boolean v0, p0, Lorg/jboss/netty/handler/queue/BufferedWriteHandler;->consolidateOnFlush:Z

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/queue/BufferedWriteHandler;->flush(Z)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_b

    .line 343
    nop

    .line 346
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 345
    nop

    .line 346
    return-void

    .line 344
    :catchall_b
    move-exception v0

    .line 346
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 344
    throw v0
.end method

.method public flush()V
    .registers 2

    .line 232
    iget-boolean v0, p0, Lorg/jboss/netty/handler/queue/BufferedWriteHandler;->consolidateOnFlush:Z

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/queue/BufferedWriteHandler;->flush(Z)V

    .line 233
    return-void
.end method

.method public flush(Z)V
    .registers 7
    .param p1, "consolidateOnFlush"    # Z

    .line 243
    iget-object v0, p0, Lorg/jboss/netty/handler/queue/BufferedWriteHandler;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    .line 244
    .local v0, "ctx":Lorg/jboss/netty/channel/ChannelHandlerContext;
    if-nez v0, :cond_5

    .line 246
    return-void

    .line 249
    :cond_5
    invoke-virtual {p0}, Lorg/jboss/netty/handler/queue/BufferedWriteHandler;->getQueue()Ljava/util/Queue;

    move-result-object v1

    .line 250
    .local v1, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/jboss/netty/channel/MessageEvent;>;"
    if-eqz p1, :cond_46

    .line 251
    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 252
    return-void

    .line 255
    :cond_12
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 256
    .local v2, "pendingWrites":Ljava/util/List;, "Ljava/util/List<Lorg/jboss/netty/channel/MessageEvent;>;"
    monitor-enter p0

    .line 258
    :goto_18
    :try_start_18
    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jboss/netty/channel/MessageEvent;

    .line 259
    .local v3, "e":Lorg/jboss/netty/channel/MessageEvent;
    if-nez v3, :cond_26

    .line 260
    nop

    .line 271
    .end local v3    # "e":Lorg/jboss/netty/channel/MessageEvent;
    invoke-direct {p0, v2}, Lorg/jboss/netty/handler/queue/BufferedWriteHandler;->consolidatedWrite(Ljava/util/List;)Ljava/util/List;

    .line 272
    monitor-exit p0

    .line 273
    .end local v2    # "pendingWrites":Ljava/util/List;, "Ljava/util/List<Lorg/jboss/netty/channel/MessageEvent;>;"
    goto :goto_51

    .line 262
    .restart local v2    # "pendingWrites":Ljava/util/List;, "Ljava/util/List<Lorg/jboss/netty/channel/MessageEvent;>;"
    .restart local v3    # "e":Lorg/jboss/netty/channel/MessageEvent;
    :cond_26
    invoke-interface {v3}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lorg/jboss/netty/buffer/ChannelBuffer;

    if-nez v4, :cond_3f

    .line 263
    invoke-direct {p0, v2}, Lorg/jboss/netty/handler/queue/BufferedWriteHandler;->consolidatedWrite(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    move-object v2, v4

    if-nez v4, :cond_3b

    .line 264
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v4

    .line 266
    :cond_3b
    invoke-interface {v0, v3}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    goto :goto_42

    .line 268
    :cond_3f
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    .end local v3    # "e":Lorg/jboss/netty/channel/MessageEvent;
    :goto_42
    goto :goto_18

    .line 272
    :catchall_43
    move-exception v3

    monitor-exit p0
    :try_end_45
    .catchall {:try_start_18 .. :try_end_45} :catchall_43

    throw v3

    .line 274
    .end local v2    # "pendingWrites":Ljava/util/List;, "Ljava/util/List<Lorg/jboss/netty/channel/MessageEvent;>;"
    :cond_46
    monitor-enter p0

    .line 276
    :goto_47
    :try_start_47
    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jboss/netty/channel/MessageEvent;

    .line 277
    .local v2, "e":Lorg/jboss/netty/channel/MessageEvent;
    if-nez v2, :cond_52

    .line 278
    nop

    .line 282
    .end local v2    # "e":Lorg/jboss/netty/channel/MessageEvent;
    monitor-exit p0

    .line 284
    :goto_51
    return-void

    .line 280
    .restart local v2    # "e":Lorg/jboss/netty/channel/MessageEvent;
    :cond_52
    invoke-interface {v0, v2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 281
    .end local v2    # "e":Lorg/jboss/netty/channel/MessageEvent;
    goto :goto_47

    .line 282
    :catchall_56
    move-exception v2

    monitor-exit p0
    :try_end_58
    .catchall {:try_start_47 .. :try_end_58} :catchall_56

    throw v2
.end method

.method protected getQueue()Ljava/util/Queue;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Lorg/jboss/netty/channel/MessageEvent;",
            ">;"
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lorg/jboss/netty/handler/queue/BufferedWriteHandler;->queue:Ljava/util/Queue;

    return-object v0
.end method

.method public isConsolidateOnFlush()Z
    .registers 2

    .line 217
    iget-boolean v0, p0, Lorg/jboss/netty/handler/queue/BufferedWriteHandler;->consolidateOnFlush:Z

    return v0
.end method

.method public writeRequested(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;)V
    .registers 4
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/MessageEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 329
    iget-object v0, p0, Lorg/jboss/netty/handler/queue/BufferedWriteHandler;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    if-nez v0, :cond_7

    .line 330
    iput-object p1, p0, Lorg/jboss/netty/handler/queue/BufferedWriteHandler;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    goto :goto_8

    .line 332
    :cond_7
    nop

    .line 335
    :goto_8
    invoke-virtual {p0}, Lorg/jboss/netty/handler/queue/BufferedWriteHandler;->getQueue()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 336
    return-void
.end method
