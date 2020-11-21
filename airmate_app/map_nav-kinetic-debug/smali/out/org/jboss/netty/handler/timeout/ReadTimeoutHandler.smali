.class public Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;
.super Lorg/jboss/netty/channel/SimpleChannelUpstreamHandler;
.source "ReadTimeoutHandler.java"

# interfaces
.implements Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;
.implements Lorg/jboss/netty/util/ExternalResourceReleasable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler$State;,
        Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler$ReadTimeoutTask;
    }
.end annotation

.annotation runtime Lorg/jboss/netty/channel/ChannelHandler$Sharable;
.end annotation


# static fields
.field static final EXCEPTION:Lorg/jboss/netty/handler/timeout/ReadTimeoutException;


# instance fields
.field final timeoutMillis:J

.field final timer:Lorg/jboss/netty/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 84
    new-instance v0, Lorg/jboss/netty/handler/timeout/ReadTimeoutException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/timeout/ReadTimeoutException;-><init>()V

    sput-object v0, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;->EXCEPTION:Lorg/jboss/netty/handler/timeout/ReadTimeoutException;

    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/util/Timer;I)V
    .registers 6
    .param p1, "timer"    # Lorg/jboss/netty/util/Timer;
    .param p2, "timeoutSeconds"    # I

    .line 99
    int-to-long v0, p2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;-><init>(Lorg/jboss/netty/util/Timer;JLjava/util/concurrent/TimeUnit;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/util/Timer;JLjava/util/concurrent/TimeUnit;)V
    .registers 9
    .param p1, "timer"    # Lorg/jboss/netty/util/Timer;
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 113
    invoke-direct {p0}, Lorg/jboss/netty/channel/SimpleChannelUpstreamHandler;-><init>()V

    .line 114
    if-eqz p1, :cond_27

    .line 117
    if-eqz p4, :cond_1f

    .line 121
    iput-object p1, p0, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;->timer:Lorg/jboss/netty/util/Timer;

    .line 122
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gtz v2, :cond_12

    .line 123
    iput-wide v0, p0, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;->timeoutMillis:J

    goto :goto_1e

    .line 125
    :cond_12
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;->timeoutMillis:J

    .line 127
    :goto_1e
    return-void

    .line 118
    :cond_1f
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "unit"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_27
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "timer"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static destroy(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .registers 5
    .param p0, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;

    .line 203
    monitor-enter p0

    .line 204
    const/4 v0, 0x0

    :try_start_2
    invoke-static {p0}, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;->state(Lorg/jboss/netty/channel/ChannelHandlerContext;)Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler$State;

    move-result-object v1
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_18

    .line 205
    .local v1, "state":Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler$State;
    const/4 v2, 0x1

    :try_start_7
    iput-boolean v2, v1, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler$State;->destroyed:Z

    .line 206
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_16

    .line 208
    iget-object v2, v1, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler$State;->timeout:Lorg/jboss/netty/util/Timeout;

    if-eqz v2, :cond_15

    .line 209
    iget-object v2, v1, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler$State;->timeout:Lorg/jboss/netty/util/Timeout;

    invoke-interface {v2}, Lorg/jboss/netty/util/Timeout;->cancel()V

    .line 210
    iput-object v0, v1, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler$State;->timeout:Lorg/jboss/netty/util/Timeout;

    .line 212
    :cond_15
    return-void

    .line 206
    :catchall_16
    move-exception v0

    goto :goto_1c

    .end local v1    # "state":Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler$State;
    :catchall_18
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    .restart local v1    # "state":Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler$State;
    :goto_1c
    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_16

    throw v0
.end method

.method private initialize(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .registers 8
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;

    .line 188
    invoke-static {p1}, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;->state(Lorg/jboss/netty/channel/ChannelHandlerContext;)Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler$State;

    move-result-object v0

    .line 192
    .local v0, "state":Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler$State;
    iget-boolean v1, v0, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler$State;->destroyed:Z

    if-eqz v1, :cond_9

    .line 193
    return-void

    .line 196
    :cond_9
    iget-wide v1, p0, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;->timeoutMillis:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_22

    .line 197
    iget-object v1, p0, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;->timer:Lorg/jboss/netty/util/Timer;

    new-instance v2, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler$ReadTimeoutTask;

    invoke-direct {v2, p0, p1}, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler$ReadTimeoutTask;-><init>(Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    iget-wide v3, p0, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;->timeoutMillis:J

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4, v5}, Lorg/jboss/netty/util/Timer;->newTimeout(Lorg/jboss/netty/util/TimerTask;JLjava/util/concurrent/TimeUnit;)Lorg/jboss/netty/util/Timeout;

    move-result-object v1

    iput-object v1, v0, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler$State;->timeout:Lorg/jboss/netty/util/Timeout;

    .line 199
    :cond_22
    return-void
.end method

.method private static state(Lorg/jboss/netty/channel/ChannelHandlerContext;)Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler$State;
    .registers 3
    .param p0, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;

    .line 216
    monitor-enter p0

    .line 218
    const/4 v0, 0x0

    :try_start_2
    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getAttachment()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler$State;

    move-object v0, v1

    .line 219
    .local v0, "state":Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler$State;
    if-eqz v0, :cond_d

    .line 220
    monitor-exit p0

    return-object v0

    .line 222
    :cond_d
    new-instance v1, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler$State;

    invoke-direct {v1}, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler$State;-><init>()V

    move-object v0, v1

    .line 223
    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->setAttachment(Ljava/lang/Object;)V

    .line 224
    monitor-exit p0

    .line 225
    return-object v0

    .line 224
    .end local v0    # "state":Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler$State;
    :catchall_18
    move-exception v1

    .restart local v0    # "state":Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler$State;
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

    .line 152
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

    .line 160
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

    .line 139
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelPipeline;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 143
    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;->initialize(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    .line 148
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

    .line 155
    invoke-static {p1}, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;->destroy(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    .line 156
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

    .line 175
    invoke-static {p1}, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;->destroy(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    .line 176
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 177
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

    .line 168
    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;->initialize(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    .line 169
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 170
    return-void
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

    .line 182
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getAttachment()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler$State;

    .line 183
    .local v0, "state":Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler$State;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler$State;->lastReadTime:J

    .line 184
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 185
    return-void
.end method

.method protected readTimedOut(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .registers 3
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 229
    sget-object v0, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;->EXCEPTION:Lorg/jboss/netty/handler/timeout/ReadTimeoutException;

    invoke-static {p1, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    .line 230
    return-void
.end method

.method public releaseExternalResources()V
    .registers 2

    .line 135
    iget-object v0, p0, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;->timer:Lorg/jboss/netty/util/Timer;

    invoke-interface {v0}, Lorg/jboss/netty/util/Timer;->stop()Ljava/util/Set;

    .line 136
    return-void
.end method
