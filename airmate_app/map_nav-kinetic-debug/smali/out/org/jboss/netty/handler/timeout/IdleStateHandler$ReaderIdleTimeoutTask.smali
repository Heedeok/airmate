.class final Lorg/jboss/netty/handler/timeout/IdleStateHandler$ReaderIdleTimeoutTask;
.super Ljava/lang/Object;
.source "IdleStateHandler.java"

# interfaces
.implements Lorg/jboss/netty/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/handler/timeout/IdleStateHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ReaderIdleTimeoutTask"
.end annotation


# instance fields
.field private final ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

.field final synthetic this$0:Lorg/jboss/netty/handler/timeout/IdleStateHandler;


# direct methods
.method constructor <init>(Lorg/jboss/netty/handler/timeout/IdleStateHandler;Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .registers 3
    .param p2, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;

    .line 379
    iput-object p1, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler$ReaderIdleTimeoutTask;->this$0:Lorg/jboss/netty/handler/timeout/IdleStateHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    iput-object p2, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler$ReaderIdleTimeoutTask;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    .line 381
    return-void
.end method


# virtual methods
.method public run(Lorg/jboss/netty/util/Timeout;)V
    .registers 13
    .param p1, "timeout"    # Lorg/jboss/netty/util/Timeout;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 384
    invoke-interface {p1}, Lorg/jboss/netty/util/Timeout;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_5c

    iget-object v0, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler$ReaderIdleTimeoutTask;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/Channel;->isOpen()Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_5c

    .line 388
    :cond_13
    iget-object v0, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler$ReaderIdleTimeoutTask;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getAttachment()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/timeout/IdleStateHandler$State;

    .line 389
    .local v0, "state":Lorg/jboss/netty/handler/timeout/IdleStateHandler$State;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 390
    .local v1, "currentTime":J
    iget-wide v3, v0, Lorg/jboss/netty/handler/timeout/IdleStateHandler$State;->lastReadTime:J

    .line 391
    .local v3, "lastReadTime":J
    iget-object v5, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler$ReaderIdleTimeoutTask;->this$0:Lorg/jboss/netty/handler/timeout/IdleStateHandler;

    iget-wide v5, v5, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->readerIdleTimeMillis:J

    sub-long v7, v1, v3

    sub-long/2addr v5, v7

    .line 392
    .local v5, "nextDelay":J
    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-gtz v9, :cond_4f

    .line 394
    iget-object v7, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler$ReaderIdleTimeoutTask;->this$0:Lorg/jboss/netty/handler/timeout/IdleStateHandler;

    iget-object v7, v7, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->timer:Lorg/jboss/netty/util/Timer;

    iget-object v8, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler$ReaderIdleTimeoutTask;->this$0:Lorg/jboss/netty/handler/timeout/IdleStateHandler;

    iget-wide v8, v8, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->readerIdleTimeMillis:J

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v7, p0, v8, v9, v10}, Lorg/jboss/netty/util/Timer;->newTimeout(Lorg/jboss/netty/util/TimerTask;JLjava/util/concurrent/TimeUnit;)Lorg/jboss/netty/util/Timeout;

    move-result-object v7

    iput-object v7, v0, Lorg/jboss/netty/handler/timeout/IdleStateHandler$State;->readerIdleTimeout:Lorg/jboss/netty/util/Timeout;

    .line 397
    :try_start_3e
    iget-object v7, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler$ReaderIdleTimeoutTask;->this$0:Lorg/jboss/netty/handler/timeout/IdleStateHandler;

    iget-object v8, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler$ReaderIdleTimeoutTask;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    sget-object v9, Lorg/jboss/netty/handler/timeout/IdleState;->READER_IDLE:Lorg/jboss/netty/handler/timeout/IdleState;

    invoke-virtual {v7, v8, v9, v3, v4}, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->channelIdle(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/handler/timeout/IdleState;J)V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_47} :catch_48

    goto :goto_4e

    .line 398
    :catch_48
    move-exception v7

    .line 399
    .local v7, "t":Ljava/lang/Throwable;
    iget-object v8, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler$ReaderIdleTimeoutTask;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    invoke-static {v8, v7}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    .line 400
    .end local v7    # "t":Ljava/lang/Throwable;
    :goto_4e
    goto :goto_5b

    .line 403
    :cond_4f
    iget-object v7, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler$ReaderIdleTimeoutTask;->this$0:Lorg/jboss/netty/handler/timeout/IdleStateHandler;

    iget-object v7, v7, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->timer:Lorg/jboss/netty/util/Timer;

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v7, p0, v5, v6, v8}, Lorg/jboss/netty/util/Timer;->newTimeout(Lorg/jboss/netty/util/TimerTask;JLjava/util/concurrent/TimeUnit;)Lorg/jboss/netty/util/Timeout;

    move-result-object v7

    iput-object v7, v0, Lorg/jboss/netty/handler/timeout/IdleStateHandler$State;->readerIdleTimeout:Lorg/jboss/netty/util/Timeout;

    .line 406
    :goto_5b
    return-void

    .line 385
    .end local v0    # "state":Lorg/jboss/netty/handler/timeout/IdleStateHandler$State;
    .end local v1    # "currentTime":J
    .end local v3    # "lastReadTime":J
    .end local v5    # "nextDelay":J
    :cond_5c
    :goto_5c
    return-void
.end method
