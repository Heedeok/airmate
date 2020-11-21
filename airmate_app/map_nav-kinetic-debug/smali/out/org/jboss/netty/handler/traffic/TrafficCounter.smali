.class public Lorg/jboss/netty/handler/traffic/TrafficCounter;
.super Ljava/lang/Object;
.source "TrafficCounter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/handler/traffic/TrafficCounter$TrafficMonitoringTask;
    }
.end annotation


# instance fields
.field checkInterval:Ljava/util/concurrent/atomic/AtomicLong;

.field private final cumulativeReadBytes:Ljava/util/concurrent/atomic/AtomicLong;

.field private final cumulativeWrittenBytes:Ljava/util/concurrent/atomic/AtomicLong;

.field private final currentReadBytes:Ljava/util/concurrent/atomic/AtomicLong;

.field private final currentWrittenBytes:Ljava/util/concurrent/atomic/AtomicLong;

.field private lastCumulativeTime:J

.field private lastReadBytes:J

.field private lastReadThroughput:J

.field private final lastTime:Ljava/util/concurrent/atomic/AtomicLong;

.field private lastWriteThroughput:J

.field private lastWrittenBytes:J

.field monitorActive:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final name:Ljava/lang/String;

.field private volatile timeout:Lorg/jboss/netty/util/Timeout;

.field private final timer:Lorg/jboss/netty/util/Timer;

.field private timerTask:Lorg/jboss/netty/util/TimerTask;

.field private final trafficShapingHandler:Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;


# direct methods
.method public constructor <init>(Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;Lorg/jboss/netty/util/Timer;Ljava/lang/String;J)V
    .registers 9
    .param p1, "trafficShapingHandler"    # Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;
    .param p2, "timer"    # Lorg/jboss/netty/util/Timer;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "checkInterval"    # J

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->currentWrittenBytes:Ljava/util/concurrent/atomic/AtomicLong;

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->currentReadBytes:Ljava/util/concurrent/atomic/AtomicLong;

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->cumulativeWrittenBytes:Ljava/util/concurrent/atomic/AtomicLong;

    .line 55
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->cumulativeReadBytes:Ljava/util/concurrent/atomic/AtomicLong;

    .line 75
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->lastTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 90
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x3e8

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->checkInterval:Ljava/util/concurrent/atomic/AtomicLong;

    .line 121
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->monitorActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 234
    iput-object p1, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->trafficShapingHandler:Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;

    .line 235
    iput-object p2, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->timer:Lorg/jboss/netty/util/Timer;

    .line 236
    iput-object p3, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->name:Ljava/lang/String;

    .line 237
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->lastCumulativeTime:J

    .line 238
    invoke-virtual {p0, p4, p5}, Lorg/jboss/netty/handler/traffic/TrafficCounter;->configure(J)V

    .line 239
    return-void
.end method

.method static synthetic access$000(Lorg/jboss/netty/handler/traffic/TrafficCounter;)Lorg/jboss/netty/util/Timer;
    .registers 2
    .param p0, "x0"    # Lorg/jboss/netty/handler/traffic/TrafficCounter;

    .line 36
    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->timer:Lorg/jboss/netty/util/Timer;

    return-object v0
.end method


# virtual methods
.method bytesRecvFlowControl(Lorg/jboss/netty/channel/ChannelHandlerContext;J)V
    .registers 5
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "recv"    # J

    .line 271
    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->currentReadBytes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 272
    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->cumulativeReadBytes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 273
    return-void
.end method

.method bytesWriteFlowControl(J)V
    .registers 4
    .param p1, "write"    # J

    .line 282
    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->currentWrittenBytes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 283
    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->cumulativeWrittenBytes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 284
    return-void
.end method

.method public configure(J)V
    .registers 9
    .param p1, "newcheckInterval"    # J

    .line 248
    const-wide/16 v0, 0xa

    div-long v2, p1, v0

    mul-long v2, v2, v0

    .line 249
    .local v2, "newInterval":J
    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->checkInterval:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2b

    .line 250
    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->checkInterval:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 251
    const-wide/16 v0, 0x0

    cmp-long v4, v2, v0

    if-gtz v4, :cond_28

    .line 252
    invoke-virtual {p0}, Lorg/jboss/netty/handler/traffic/TrafficCounter;->stop()V

    .line 254
    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->lastTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    goto :goto_2b

    .line 257
    :cond_28
    invoke-virtual {p0}, Lorg/jboss/netty/handler/traffic/TrafficCounter;->start()V

    .line 260
    :cond_2b
    :goto_2b
    return-void
.end method

.method public getCheckInterval()J
    .registers 3

    .line 292
    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->checkInterval:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCumulativeReadBytes()J
    .registers 3

    .line 361
    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->cumulativeReadBytes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCumulativeWrittenBytes()J
    .registers 3

    .line 354
    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->cumulativeWrittenBytes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentReadBytes()J
    .registers 3

    .line 332
    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->currentReadBytes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentWrittenBytes()J
    .registers 3

    .line 340
    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->currentWrittenBytes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastCumulativeTime()J
    .registers 3

    .line 369
    iget-wide v0, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->lastCumulativeTime:J

    return-wide v0
.end method

.method public getLastReadBytes()J
    .registers 3

    .line 316
    iget-wide v0, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->lastReadBytes:J

    return-wide v0
.end method

.method public getLastReadThroughput()J
    .registers 3

    .line 300
    iget-wide v0, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->lastReadThroughput:J

    return-wide v0
.end method

.method public getLastTime()J
    .registers 3

    .line 347
    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->lastTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastWriteThroughput()J
    .registers 3

    .line 308
    iget-wide v0, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->lastWriteThroughput:J

    return-wide v0
.end method

.method public getLastWrittenBytes()J
    .registers 3

    .line 324
    iget-wide v0, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->lastWrittenBytes:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 385
    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->name:Ljava/lang/String;

    return-object v0
.end method

.method resetAccounting(J)V
    .registers 10
    .param p1, "newLastTime"    # J

    .line 206
    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->lastTime:Ljava/util/concurrent/atomic/AtomicLong;

    monitor-enter v0

    .line 207
    :try_start_3
    iget-object v1, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->lastTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v1

    const/4 v3, 0x0

    sub-long v1, p1, v1

    .line 208
    .local v1, "interval":J
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_14

    .line 210
    monitor-exit v0

    return-void

    .line 212
    :cond_14
    iget-object v5, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->currentReadBytes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v5

    iput-wide v5, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->lastReadBytes:J

    .line 213
    iget-object v5, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->currentWrittenBytes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v3

    iput-wide v3, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->lastWrittenBytes:J

    .line 214
    iget-wide v3, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->lastReadBytes:J

    div-long/2addr v3, v1

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    iput-wide v3, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->lastReadThroughput:J

    .line 216
    iget-wide v3, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->lastWrittenBytes:J

    div-long/2addr v3, v1

    mul-long v3, v3, v5

    iput-wide v3, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->lastWriteThroughput:J

    .line 218
    .end local v1    # "interval":J
    monitor-exit v0

    .line 219
    return-void

    .line 218
    :catchall_36
    move-exception v1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_36

    throw v1
.end method

.method public resetCumulativeTime()V
    .registers 4

    .line 376
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->lastCumulativeTime:J

    .line 377
    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->cumulativeReadBytes:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 378
    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->cumulativeWrittenBytes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 379
    return-void
.end method

.method public start()V
    .registers 7

    .line 167
    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->lastTime:Ljava/util/concurrent/atomic/AtomicLong;

    monitor-enter v0

    .line 168
    :try_start_3
    iget-object v1, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->monitorActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 169
    monitor-exit v0

    return-void

    .line 171
    :cond_d
    iget-object v1, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->lastTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 172
    iget-object v1, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->checkInterval:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_43

    .line 173
    iget-object v1, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->monitorActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 174
    new-instance v1, Lorg/jboss/netty/handler/traffic/TrafficCounter$TrafficMonitoringTask;

    iget-object v2, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->trafficShapingHandler:Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;

    invoke-direct {v1, v2, p0}, Lorg/jboss/netty/handler/traffic/TrafficCounter$TrafficMonitoringTask;-><init>(Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;Lorg/jboss/netty/handler/traffic/TrafficCounter;)V

    iput-object v1, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->timerTask:Lorg/jboss/netty/util/TimerTask;

    .line 175
    iget-object v1, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->timer:Lorg/jboss/netty/util/Timer;

    iget-object v2, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->timerTask:Lorg/jboss/netty/util/TimerTask;

    iget-object v3, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->checkInterval:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4, v5}, Lorg/jboss/netty/util/Timer;->newTimeout(Lorg/jboss/netty/util/TimerTask;JLjava/util/concurrent/TimeUnit;)Lorg/jboss/netty/util/Timeout;

    move-result-object v1

    iput-object v1, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->timeout:Lorg/jboss/netty/util/Timeout;

    .line 178
    :cond_43
    monitor-exit v0

    .line 179
    return-void

    .line 178
    :catchall_45
    move-exception v1

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_3 .. :try_end_47} :catchall_45

    throw v1
.end method

.method public stop()V
    .registers 4

    .line 185
    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->lastTime:Ljava/util/concurrent/atomic/AtomicLong;

    monitor-enter v0

    .line 186
    :try_start_3
    iget-object v1, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->monitorActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_d

    .line 187
    monitor-exit v0

    return-void

    .line 189
    :cond_d
    iget-object v1, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->monitorActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 190
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lorg/jboss/netty/handler/traffic/TrafficCounter;->resetAccounting(J)V

    .line 191
    iget-object v1, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->trafficShapingHandler:Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;

    if-eqz v1, :cond_23

    .line 192
    iget-object v1, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->trafficShapingHandler:Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;

    invoke-virtual {v1, p0}, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->doAccounting(Lorg/jboss/netty/handler/traffic/TrafficCounter;)V

    .line 194
    :cond_23
    iget-object v1, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->timeout:Lorg/jboss/netty/util/Timeout;

    if-eqz v1, :cond_2c

    .line 195
    iget-object v1, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->timeout:Lorg/jboss/netty/util/Timeout;

    invoke-interface {v1}, Lorg/jboss/netty/util/Timeout;->cancel()V

    .line 197
    :cond_2c
    monitor-exit v0

    .line 198
    return-void

    .line 197
    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Monitor "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Current Speed Read: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->lastReadThroughput:J

    const/16 v3, 0xa

    shr-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " KB/s, Write: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->lastWriteThroughput:J

    shr-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " KB/s Current Read: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->currentReadBytes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    shr-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " KB Current Write: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->currentWrittenBytes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    shr-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " KB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
