.class public Lorg/jboss/netty/handler/timeout/IdleStateHandler;
.super Lorg/jboss/netty/channel/SimpleChannelUpstreamHandler;
.source "IdleStateHandler.java"

# interfaces
.implements Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;
.implements Lorg/jboss/netty/util/ExternalResourceReleasable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/handler/timeout/IdleStateHandler$State;,
        Lorg/jboss/netty/handler/timeout/IdleStateHandler$AllIdleTimeoutTask;,
        Lorg/jboss/netty/handler/timeout/IdleStateHandler$WriterIdleTimeoutTask;,
        Lorg/jboss/netty/handler/timeout/IdleStateHandler$ReaderIdleTimeoutTask;
    }
.end annotation

.annotation runtime Lorg/jboss/netty/channel/ChannelHandler$Sharable;
.end annotation


# instance fields
.field final allIdleTimeMillis:J

.field final readerIdleTimeMillis:J

.field final timer:Lorg/jboss/netty/util/Timer;

.field final writerIdleTimeMillis:J


# direct methods
.method public constructor <init>(Lorg/jboss/netty/util/Timer;III)V
    .registers 14
    .param p1, "timer"    # Lorg/jboss/netty/util/Timer;
    .param p2, "readerIdleTimeSeconds"    # I
    .param p3, "writerIdleTimeSeconds"    # I
    .param p4, "allIdleTimeSeconds"    # I

    .line 158
    int-to-long v2, p2

    int-to-long v4, p3

    int-to-long v6, p4

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lorg/jboss/netty/handler/timeout/IdleStateHandler;-><init>(Lorg/jboss/netty/util/Timer;JJJLjava/util/concurrent/TimeUnit;)V

    .line 161
    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/util/Timer;JJJLjava/util/concurrent/TimeUnit;)V
    .registers 15
    .param p1, "timer"    # Lorg/jboss/netty/util/Timer;
    .param p2, "readerIdleTime"    # J
    .param p4, "writerIdleTime"    # J
    .param p6, "allIdleTime"    # J
    .param p8, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 188
    invoke-direct {p0}, Lorg/jboss/netty/channel/SimpleChannelUpstreamHandler;-><init>()V

    .line 190
    if-eqz p1, :cond_49

    .line 193
    if-eqz p8, :cond_41

    .line 197
    iput-object p1, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->timer:Lorg/jboss/netty/util/Timer;

    .line 198
    const-wide/16 v0, 0x1

    const-wide/16 v2, 0x0

    cmp-long v4, p2, v2

    if-gtz v4, :cond_14

    .line 199
    iput-wide v2, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->readerIdleTimeMillis:J

    goto :goto_1e

    .line 201
    :cond_14
    invoke-virtual {p8, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->readerIdleTimeMillis:J

    .line 203
    :goto_1e
    cmp-long v4, p4, v2

    if-gtz v4, :cond_25

    .line 204
    iput-wide v2, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->writerIdleTimeMillis:J

    goto :goto_2f

    .line 206
    :cond_25
    invoke-virtual {p8, p4, p5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->writerIdleTimeMillis:J

    .line 208
    :goto_2f
    cmp-long v4, p6, v2

    if-gtz v4, :cond_36

    .line 209
    iput-wide v2, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->allIdleTimeMillis:J

    goto :goto_40

    .line 211
    :cond_36
    invoke-virtual {p8, p6, p7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->allIdleTimeMillis:J

    .line 213
    :goto_40
    return-void

    .line 194
    :cond_41
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "unit"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_49
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "timer"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static destroy(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .registers 5
    .param p0, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;

    .line 337
    monitor-enter p0

    .line 338
    const/4 v0, 0x0

    :try_start_2
    invoke-static {p0}, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->state(Lorg/jboss/netty/channel/ChannelHandlerContext;)Lorg/jboss/netty/handler/timeout/IdleStateHandler$State;

    move-result-object v1
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_2e

    .line 339
    .local v1, "state":Lorg/jboss/netty/handler/timeout/IdleStateHandler$State;
    const/4 v2, 0x1

    :try_start_7
    iput-boolean v2, v1, Lorg/jboss/netty/handler/timeout/IdleStateHandler$State;->destroyed:Z

    .line 340
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_2c

    .line 342
    iget-object v2, v1, Lorg/jboss/netty/handler/timeout/IdleStateHandler$State;->readerIdleTimeout:Lorg/jboss/netty/util/Timeout;

    if-eqz v2, :cond_15

    .line 343
    iget-object v2, v1, Lorg/jboss/netty/handler/timeout/IdleStateHandler$State;->readerIdleTimeout:Lorg/jboss/netty/util/Timeout;

    invoke-interface {v2}, Lorg/jboss/netty/util/Timeout;->cancel()V

    .line 344
    iput-object v0, v1, Lorg/jboss/netty/handler/timeout/IdleStateHandler$State;->readerIdleTimeout:Lorg/jboss/netty/util/Timeout;

    .line 346
    :cond_15
    iget-object v2, v1, Lorg/jboss/netty/handler/timeout/IdleStateHandler$State;->writerIdleTimeout:Lorg/jboss/netty/util/Timeout;

    if-eqz v2, :cond_20

    .line 347
    iget-object v2, v1, Lorg/jboss/netty/handler/timeout/IdleStateHandler$State;->writerIdleTimeout:Lorg/jboss/netty/util/Timeout;

    invoke-interface {v2}, Lorg/jboss/netty/util/Timeout;->cancel()V

    .line 348
    iput-object v0, v1, Lorg/jboss/netty/handler/timeout/IdleStateHandler$State;->writerIdleTimeout:Lorg/jboss/netty/util/Timeout;

    .line 350
    :cond_20
    iget-object v2, v1, Lorg/jboss/netty/handler/timeout/IdleStateHandler$State;->allIdleTimeout:Lorg/jboss/netty/util/Timeout;

    if-eqz v2, :cond_2b

    .line 351
    iget-object v2, v1, Lorg/jboss/netty/handler/timeout/IdleStateHandler$State;->allIdleTimeout:Lorg/jboss/netty/util/Timeout;

    invoke-interface {v2}, Lorg/jboss/netty/util/Timeout;->cancel()V

    .line 352
    iput-object v0, v1, Lorg/jboss/netty/handler/timeout/IdleStateHandler$State;->allIdleTimeout:Lorg/jboss/netty/util/Timeout;

    .line 354
    :cond_2b
    return-void

    .line 340
    :catchall_2c
    move-exception v0

    goto :goto_32

    .end local v1    # "state":Lorg/jboss/netty/handler/timeout/IdleStateHandler$State;
    :catchall_2e
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    .restart local v1    # "state":Lorg/jboss/netty/handler/timeout/IdleStateHandler$State;
    :goto_32
    :try_start_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_2c

    throw v0
.end method

.method private initialize(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .registers 10
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;

    .line 308
    invoke-static {p1}, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->state(Lorg/jboss/netty/channel/ChannelHandlerContext;)Lorg/jboss/netty/handler/timeout/IdleStateHandler$State;

    move-result-object v0

    .line 312
    .local v0, "state":Lorg/jboss/netty/handler/timeout/IdleStateHandler$State;
    iget-boolean v1, v0, Lorg/jboss/netty/handler/timeout/IdleStateHandler$State;->destroyed:Z

    if-eqz v1, :cond_9

    .line 313
    return-void

    .line 316
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/jboss/netty/handler/timeout/IdleStateHandler$State;->lastWriteTime:J

    iput-wide v1, v0, Lorg/jboss/netty/handler/timeout/IdleStateHandler$State;->lastReadTime:J

    .line 317
    iget-wide v1, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->readerIdleTimeMillis:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_2a

    .line 318
    iget-object v1, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->timer:Lorg/jboss/netty/util/Timer;

    new-instance v2, Lorg/jboss/netty/handler/timeout/IdleStateHandler$ReaderIdleTimeoutTask;

    invoke-direct {v2, p0, p1}, Lorg/jboss/netty/handler/timeout/IdleStateHandler$ReaderIdleTimeoutTask;-><init>(Lorg/jboss/netty/handler/timeout/IdleStateHandler;Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    iget-wide v5, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->readerIdleTimeMillis:J

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v5, v6, v7}, Lorg/jboss/netty/util/Timer;->newTimeout(Lorg/jboss/netty/util/TimerTask;JLjava/util/concurrent/TimeUnit;)Lorg/jboss/netty/util/Timeout;

    move-result-object v1

    iput-object v1, v0, Lorg/jboss/netty/handler/timeout/IdleStateHandler$State;->readerIdleTimeout:Lorg/jboss/netty/util/Timeout;

    .line 322
    :cond_2a
    iget-wide v1, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->writerIdleTimeMillis:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_41

    .line 323
    iget-object v1, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->timer:Lorg/jboss/netty/util/Timer;

    new-instance v2, Lorg/jboss/netty/handler/timeout/IdleStateHandler$WriterIdleTimeoutTask;

    invoke-direct {v2, p0, p1}, Lorg/jboss/netty/handler/timeout/IdleStateHandler$WriterIdleTimeoutTask;-><init>(Lorg/jboss/netty/handler/timeout/IdleStateHandler;Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    iget-wide v5, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->writerIdleTimeMillis:J

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v5, v6, v7}, Lorg/jboss/netty/util/Timer;->newTimeout(Lorg/jboss/netty/util/TimerTask;JLjava/util/concurrent/TimeUnit;)Lorg/jboss/netty/util/Timeout;

    move-result-object v1

    iput-object v1, v0, Lorg/jboss/netty/handler/timeout/IdleStateHandler$State;->writerIdleTimeout:Lorg/jboss/netty/util/Timeout;

    .line 327
    :cond_41
    iget-wide v1, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->allIdleTimeMillis:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_58

    .line 328
    iget-object v1, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->timer:Lorg/jboss/netty/util/Timer;

    new-instance v2, Lorg/jboss/netty/handler/timeout/IdleStateHandler$AllIdleTimeoutTask;

    invoke-direct {v2, p0, p1}, Lorg/jboss/netty/handler/timeout/IdleStateHandler$AllIdleTimeoutTask;-><init>(Lorg/jboss/netty/handler/timeout/IdleStateHandler;Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    iget-wide v3, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->allIdleTimeMillis:J

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4, v5}, Lorg/jboss/netty/util/Timer;->newTimeout(Lorg/jboss/netty/util/TimerTask;JLjava/util/concurrent/TimeUnit;)Lorg/jboss/netty/util/Timeout;

    move-result-object v1

    iput-object v1, v0, Lorg/jboss/netty/handler/timeout/IdleStateHandler$State;->allIdleTimeout:Lorg/jboss/netty/util/Timeout;

    .line 332
    :cond_58
    return-void
.end method

.method private static state(Lorg/jboss/netty/channel/ChannelHandlerContext;)Lorg/jboss/netty/handler/timeout/IdleStateHandler$State;
    .registers 3
    .param p0, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;

    .line 358
    monitor-enter p0

    .line 360
    const/4 v0, 0x0

    :try_start_2
    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getAttachment()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jboss/netty/handler/timeout/IdleStateHandler$State;

    move-object v0, v1

    .line 361
    .local v0, "state":Lorg/jboss/netty/handler/timeout/IdleStateHandler$State;
    if-eqz v0, :cond_d

    .line 362
    monitor-exit p0

    return-object v0

    .line 364
    :cond_d
    new-instance v1, Lorg/jboss/netty/handler/timeout/IdleStateHandler$State;

    invoke-direct {v1}, Lorg/jboss/netty/handler/timeout/IdleStateHandler$State;-><init>()V

    move-object v0, v1

    .line 365
    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->setAttachment(Ljava/lang/Object;)V

    .line 366
    monitor-exit p0

    .line 367
    return-object v0

    .line 366
    .end local v0    # "state":Lorg/jboss/netty/handler/timeout/IdleStateHandler$State;
    :catchall_18
    move-exception v1

    .restart local v0    # "state":Lorg/jboss/netty/handler/timeout/IdleStateHandler$State;
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_2 .. :try_end_1a} :catchall_18

    throw v1
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

    .line 262
    return-void
.end method

.method public afterRemove(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .registers 2
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 270
    return-void
.end method

.method public beforeAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .registers 3
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 249
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelPipeline;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 253
    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->initialize(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    .line 258
    :cond_d
    return-void
.end method

.method public beforeRemove(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .registers 2
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 265
    invoke-static {p1}, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->destroy(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    .line 266
    return-void
.end method

.method public channelClosed(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V
    .registers 3
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/ChannelStateEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 285
    invoke-static {p1}, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->destroy(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    .line 286
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 287
    return-void
.end method

.method protected channelIdle(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/handler/timeout/IdleState;J)V
    .registers 7
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "state"    # Lorg/jboss/netty/handler/timeout/IdleState;
    .param p3, "lastActivityTimeMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 372
    new-instance v0, Lorg/jboss/netty/handler/timeout/DefaultIdleStateEvent;

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3, p4}, Lorg/jboss/netty/handler/timeout/DefaultIdleStateEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/handler/timeout/IdleState;J)V

    invoke-interface {p1, v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 373
    return-void
.end method

.method public channelOpen(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V
    .registers 3
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/ChannelStateEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 278
    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->initialize(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    .line 279
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 280
    return-void
.end method

.method public getAllIdleTimeInMillis()J
    .registers 3

    .line 236
    iget-wide v0, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->allIdleTimeMillis:J

    return-wide v0
.end method

.method public getReaderIdleTimeInMillis()J
    .registers 3

    .line 220
    iget-wide v0, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->readerIdleTimeMillis:J

    return-wide v0
.end method

.method public getWriterIdleTimeInMillis()J
    .registers 3

    .line 228
    iget-wide v0, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->writerIdleTimeMillis:J

    return-wide v0
.end method

.method public messageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;)V
    .registers 6
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/MessageEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 292
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getAttachment()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/timeout/IdleStateHandler$State;

    .line 293
    .local v0, "state":Lorg/jboss/netty/handler/timeout/IdleStateHandler$State;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/jboss/netty/handler/timeout/IdleStateHandler$State;->lastReadTime:J

    .line 294
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 295
    return-void
.end method

.method public releaseExternalResources()V
    .registers 2

    .line 245
    iget-object v0, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->timer:Lorg/jboss/netty/util/Timer;

    invoke-interface {v0}, Lorg/jboss/netty/util/Timer;->stop()Ljava/util/Set;

    .line 246
    return-void
.end method

.method public writeComplete(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/WriteCompletionEvent;)V
    .registers 8
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/WriteCompletionEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 300
    invoke-interface {p2}, Lorg/jboss/netty/channel/WriteCompletionEvent;->getWrittenAmount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_16

    .line 301
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getAttachment()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/timeout/IdleStateHandler$State;

    .line 302
    .local v0, "state":Lorg/jboss/netty/handler/timeout/IdleStateHandler$State;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/jboss/netty/handler/timeout/IdleStateHandler$State;->lastWriteTime:J

    .line 304
    .end local v0    # "state":Lorg/jboss/netty/handler/timeout/IdleStateHandler$State;
    :cond_16
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 305
    return-void
.end method
