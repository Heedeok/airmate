.class final Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler$ReadTimeoutTask;
.super Ljava/lang/Object;
.source "ReadTimeoutHandler.java"

# interfaces
.implements Lorg/jboss/netty/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ReadTimeoutTask"
.end annotation


# instance fields
.field private final ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

.field final synthetic this$0:Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;


# direct methods
.method constructor <init>(Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .registers 3
    .param p2, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;

    .line 236
    iput-object p1, p0, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler$ReadTimeoutTask;->this$0:Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    iput-object p2, p0, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler$ReadTimeoutTask;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    .line 238
    return-void
.end method


# virtual methods
.method public run(Lorg/jboss/netty/util/Timeout;)V
    .registers 11
    .param p1, "timeout"    # Lorg/jboss/netty/util/Timeout;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 241
    invoke-interface {p1}, Lorg/jboss/netty/util/Timeout;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 242
    return-void

    .line 245
    :cond_7
    iget-object v0, p0, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler$ReadTimeoutTask;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/Channel;->isOpen()Z

    move-result v0

    if-nez v0, :cond_14

    .line 246
    return-void

    .line 249
    :cond_14
    iget-object v0, p0, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler$ReadTimeoutTask;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getAttachment()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler$State;

    .line 250
    .local v0, "state":Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler$State;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 251
    .local v1, "currentTime":J
    iget-object v3, p0, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler$ReadTimeoutTask;->this$0:Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;

    iget-wide v3, v3, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;->timeoutMillis:J

    iget-wide v5, v0, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler$State;->lastReadTime:J

    sub-long v5, v1, v5

    sub-long/2addr v3, v5

    .line 252
    .local v3, "nextDelay":J
    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-gtz v7, :cond_4e

    .line 254
    iget-object v5, p0, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler$ReadTimeoutTask;->this$0:Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;

    iget-object v5, v5, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;->timer:Lorg/jboss/netty/util/Timer;

    iget-object v6, p0, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler$ReadTimeoutTask;->this$0:Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;

    iget-wide v6, v6, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;->timeoutMillis:J

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v5, p0, v6, v7, v8}, Lorg/jboss/netty/util/Timer;->newTimeout(Lorg/jboss/netty/util/TimerTask;JLjava/util/concurrent/TimeUnit;)Lorg/jboss/netty/util/Timeout;

    move-result-object v5

    iput-object v5, v0, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler$State;->timeout:Lorg/jboss/netty/util/Timeout;

    .line 259
    :try_start_3f
    iget-object v5, p0, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler$ReadTimeoutTask;->this$0:Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;

    iget-object v6, p0, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler$ReadTimeoutTask;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    invoke-virtual {v5, v6}, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;->readTimedOut(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_46} :catch_47

    goto :goto_4d

    .line 260
    :catch_47
    move-exception v5

    .line 261
    .local v5, "t":Ljava/lang/Throwable;
    iget-object v6, p0, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler$ReadTimeoutTask;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    invoke-static {v6, v5}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    .line 262
    .end local v5    # "t":Ljava/lang/Throwable;
    :goto_4d
    goto :goto_5a

    .line 265
    :cond_4e
    iget-object v5, p0, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler$ReadTimeoutTask;->this$0:Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;

    iget-object v5, v5, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;->timer:Lorg/jboss/netty/util/Timer;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v5, p0, v3, v4, v6}, Lorg/jboss/netty/util/Timer;->newTimeout(Lorg/jboss/netty/util/TimerTask;JLjava/util/concurrent/TimeUnit;)Lorg/jboss/netty/util/Timeout;

    move-result-object v5

    iput-object v5, v0, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler$State;->timeout:Lorg/jboss/netty/util/Timeout;

    .line 268
    :goto_5a
    return-void
.end method
