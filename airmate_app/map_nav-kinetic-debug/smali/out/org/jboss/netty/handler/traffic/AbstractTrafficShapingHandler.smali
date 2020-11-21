.class public abstract Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;
.super Lorg/jboss/netty/channel/SimpleChannelHandler;
.source "AbstractTrafficShapingHandler.java"

# interfaces
.implements Lorg/jboss/netty/util/ExternalResourceReleasable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler$ReopenReadTimerTask;
    }
.end annotation


# static fields
.field public static final DEFAULT_CHECK_INTERVAL:J = 0x3e8L

.field private static final MINIMAL_WAIT:J = 0xaL

.field static logger:Lorg/jboss/netty/logging/InternalLogger;


# instance fields
.field protected checkInterval:J

.field private objectSizeEstimator:Lorg/jboss/netty/util/ObjectSizeEstimator;

.field private readLimit:J

.field final release:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile timeout:Lorg/jboss/netty/util/Timeout;

.field protected timer:Lorg/jboss/netty/util/Timer;

.field protected trafficCounter:Lorg/jboss/netty/handler/traffic/TrafficCounter;

.field private writeLimit:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 64
    const-class v0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->logger:Lorg/jboss/netty/logging/InternalLogger;

    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/util/ObjectSizeEstimator;Lorg/jboss/netty/util/Timer;)V
    .registers 14
    .param p1, "objectSizeEstimator"    # Lorg/jboss/netty/util/ObjectSizeEstimator;
    .param p2, "timer"    # Lorg/jboss/netty/util/Timer;

    .line 232
    invoke-direct {p0}, Lorg/jboss/netty/channel/SimpleChannelHandler;-><init>()V

    .line 110
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->checkInterval:J

    .line 117
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->release:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 233
    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x3e8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v10}, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->init(Lorg/jboss/netty/util/ObjectSizeEstimator;Lorg/jboss/netty/util/Timer;JJJ)V

    .line 234
    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/util/ObjectSizeEstimator;Lorg/jboss/netty/util/Timer;J)V
    .registers 16
    .param p1, "objectSizeEstimator"    # Lorg/jboss/netty/util/ObjectSizeEstimator;
    .param p2, "timer"    # Lorg/jboss/netty/util/Timer;
    .param p3, "checkInterval"    # J

    .line 263
    invoke-direct {p0}, Lorg/jboss/netty/channel/SimpleChannelHandler;-><init>()V

    .line 110
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->checkInterval:J

    .line 117
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->release:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 264
    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v9, p3

    invoke-direct/range {v2 .. v10}, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->init(Lorg/jboss/netty/util/ObjectSizeEstimator;Lorg/jboss/netty/util/Timer;JJJ)V

    .line 265
    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/util/ObjectSizeEstimator;Lorg/jboss/netty/util/Timer;JJ)V
    .registers 17
    .param p1, "objectSizeEstimator"    # Lorg/jboss/netty/util/ObjectSizeEstimator;
    .param p2, "timer"    # Lorg/jboss/netty/util/Timer;
    .param p3, "writeLimit"    # J
    .param p5, "readLimit"    # J

    .line 208
    move-object v9, p0

    invoke-direct {p0}, Lorg/jboss/netty/channel/SimpleChannelHandler;-><init>()V

    .line 110
    const-wide/16 v0, 0x3e8

    iput-wide v0, v9, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->checkInterval:J

    .line 117
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, v9, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->release:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 209
    const-wide/16 v7, 0x3e8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-direct/range {v0 .. v8}, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->init(Lorg/jboss/netty/util/ObjectSizeEstimator;Lorg/jboss/netty/util/Timer;JJJ)V

    .line 210
    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/util/ObjectSizeEstimator;Lorg/jboss/netty/util/Timer;JJJ)V
    .registers 11
    .param p1, "objectSizeEstimator"    # Lorg/jboss/netty/util/ObjectSizeEstimator;
    .param p2, "timer"    # Lorg/jboss/netty/util/Timer;
    .param p3, "writeLimit"    # J
    .param p5, "readLimit"    # J
    .param p7, "checkInterval"    # J

    .line 174
    invoke-direct {p0}, Lorg/jboss/netty/channel/SimpleChannelHandler;-><init>()V

    .line 110
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->checkInterval:J

    .line 117
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->release:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 175
    invoke-direct/range {p0 .. p8}, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->init(Lorg/jboss/netty/util/ObjectSizeEstimator;Lorg/jboss/netty/util/Timer;JJJ)V

    .line 176
    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/util/Timer;)V
    .registers 13
    .param p1, "timer"    # Lorg/jboss/netty/util/Timer;

    .line 218
    invoke-direct {p0}, Lorg/jboss/netty/channel/SimpleChannelHandler;-><init>()V

    .line 110
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->checkInterval:J

    .line 117
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->release:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 219
    new-instance v3, Lorg/jboss/netty/util/DefaultObjectSizeEstimator;

    invoke-direct {v3}, Lorg/jboss/netty/util/DefaultObjectSizeEstimator;-><init>()V

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x3e8

    move-object v2, p0

    move-object v4, p1

    invoke-direct/range {v2 .. v10}, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->init(Lorg/jboss/netty/util/ObjectSizeEstimator;Lorg/jboss/netty/util/Timer;JJJ)V

    .line 220
    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/util/Timer;J)V
    .registers 15
    .param p1, "timer"    # Lorg/jboss/netty/util/Timer;
    .param p2, "checkInterval"    # J

    .line 245
    invoke-direct {p0}, Lorg/jboss/netty/channel/SimpleChannelHandler;-><init>()V

    .line 110
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->checkInterval:J

    .line 117
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->release:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 246
    new-instance v3, Lorg/jboss/netty/util/DefaultObjectSizeEstimator;

    invoke-direct {v3}, Lorg/jboss/netty/util/DefaultObjectSizeEstimator;-><init>()V

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-object v2, p0

    move-object v4, p1

    move-wide v9, p2

    invoke-direct/range {v2 .. v10}, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->init(Lorg/jboss/netty/util/ObjectSizeEstimator;Lorg/jboss/netty/util/Timer;JJJ)V

    .line 247
    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/util/Timer;JJ)V
    .registers 15
    .param p1, "timer"    # Lorg/jboss/netty/util/Timer;
    .param p2, "writeLimit"    # J
    .param p4, "readLimit"    # J

    .line 189
    invoke-direct {p0}, Lorg/jboss/netty/channel/SimpleChannelHandler;-><init>()V

    .line 110
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->checkInterval:J

    .line 117
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->release:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 190
    new-instance v1, Lorg/jboss/netty/util/DefaultObjectSizeEstimator;

    invoke-direct {v1}, Lorg/jboss/netty/util/DefaultObjectSizeEstimator;-><init>()V

    const-wide/16 v7, 0x3e8

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v8}, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->init(Lorg/jboss/netty/util/ObjectSizeEstimator;Lorg/jboss/netty/util/Timer;JJJ)V

    .line 191
    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/util/Timer;JJJ)V
    .registers 18
    .param p1, "timer"    # Lorg/jboss/netty/util/Timer;
    .param p2, "writeLimit"    # J
    .param p4, "readLimit"    # J
    .param p6, "checkInterval"    # J

    .line 152
    move-object v9, p0

    invoke-direct {p0}, Lorg/jboss/netty/channel/SimpleChannelHandler;-><init>()V

    .line 110
    const-wide/16 v0, 0x3e8

    iput-wide v0, v9, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->checkInterval:J

    .line 117
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, v9, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->release:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 153
    new-instance v1, Lorg/jboss/netty/util/DefaultObjectSizeEstimator;

    invoke-direct {v1}, Lorg/jboss/netty/util/DefaultObjectSizeEstimator;-><init>()V

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move-wide/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->init(Lorg/jboss/netty/util/ObjectSizeEstimator;Lorg/jboss/netty/util/Timer;JJJ)V

    .line 154
    return-void
.end method

.method private static getTimeToWait(JJJJ)J
    .registers 14
    .param p0, "limit"    # J
    .param p2, "bytes"    # J
    .param p4, "lastTime"    # J
    .param p6, "curtime"    # J

    .line 352
    sub-long v0, p6, p4

    .line 353
    .local v0, "interval":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_9

    .line 355
    return-wide v2

    .line 357
    :cond_9
    const-wide/16 v2, 0x3e8

    mul-long v2, v2, p2

    div-long/2addr v2, p0

    sub-long/2addr v2, v0

    const-wide/16 v4, 0xa

    div-long/2addr v2, v4

    mul-long v2, v2, v4

    return-wide v2
.end method

.method private init(Lorg/jboss/netty/util/ObjectSizeEstimator;Lorg/jboss/netty/util/Timer;JJJ)V
    .registers 9
    .param p1, "newObjectSizeEstimator"    # Lorg/jboss/netty/util/ObjectSizeEstimator;
    .param p2, "newTimer"    # Lorg/jboss/netty/util/Timer;
    .param p3, "newWriteLimit"    # J
    .param p5, "newReadLimit"    # J
    .param p7, "newCheckInterval"    # J

    .line 122
    iput-object p1, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->objectSizeEstimator:Lorg/jboss/netty/util/ObjectSizeEstimator;

    .line 123
    iput-object p2, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->timer:Lorg/jboss/netty/util/Timer;

    .line 124
    iput-wide p3, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->writeLimit:J

    .line 125
    iput-wide p5, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->readLimit:J

    .line 126
    iput-wide p7, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->checkInterval:J

    .line 128
    return-void
.end method


# virtual methods
.method public configure(J)V
    .registers 6
    .param p1, "newCheckInterval"    # J

    .line 300
    iput-wide p1, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->checkInterval:J

    .line 301
    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->trafficCounter:Lorg/jboss/netty/handler/traffic/TrafficCounter;

    if-eqz v0, :cond_d

    .line 302
    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->trafficCounter:Lorg/jboss/netty/handler/traffic/TrafficCounter;

    iget-wide v1, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->checkInterval:J

    invoke-virtual {v0, v1, v2}, Lorg/jboss/netty/handler/traffic/TrafficCounter;->configure(J)V

    .line 304
    :cond_d
    return-void
.end method

.method public configure(JJ)V
    .registers 10
    .param p1, "newWriteLimit"    # J
    .param p3, "newReadLimit"    # J

    .line 287
    iput-wide p1, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->writeLimit:J

    .line 288
    iput-wide p3, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->readLimit:J

    .line 289
    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->trafficCounter:Lorg/jboss/netty/handler/traffic/TrafficCounter;

    if-eqz v0, :cond_14

    .line 290
    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->trafficCounter:Lorg/jboss/netty/handler/traffic/TrafficCounter;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lorg/jboss/netty/handler/traffic/TrafficCounter;->resetAccounting(J)V

    .line 292
    :cond_14
    return-void
.end method

.method public configure(JJJ)V
    .registers 7
    .param p1, "newWriteLimit"    # J
    .param p3, "newReadLimit"    # J
    .param p5, "newCheckInterval"    # J

    .line 276
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->configure(JJ)V

    .line 277
    invoke-virtual {p0, p5, p6}, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->configure(J)V

    .line 278
    return-void
.end method

.method protected doAccounting(Lorg/jboss/netty/handler/traffic/TrafficCounter;)V
    .registers 2
    .param p1, "counter"    # Lorg/jboss/netty/handler/traffic/TrafficCounter;

    .line 315
    return-void
.end method

.method public getTrafficCounter()Lorg/jboss/netty/handler/traffic/TrafficCounter;
    .registers 2

    .line 480
    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->trafficCounter:Lorg/jboss/netty/handler/traffic/TrafficCounter;

    return-object v0
.end method

.method public handleDownstream(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V
    .registers 6
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/ChannelEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 456
    instance-of v0, p2, Lorg/jboss/netty/channel/ChannelStateEvent;

    if-eqz v0, :cond_30

    .line 457
    move-object v0, p2

    check-cast v0, Lorg/jboss/netty/channel/ChannelStateEvent;

    .line 458
    .local v0, "cse":Lorg/jboss/netty/channel/ChannelStateEvent;
    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getState()Lorg/jboss/netty/channel/ChannelState;

    move-result-object v1

    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->INTEREST_OPS:Lorg/jboss/netty/channel/ChannelState;

    if-ne v1, v2, :cond_30

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_30

    .line 462
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getAttachment()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_24

    goto :goto_25

    :cond_24
    const/4 v2, 0x0

    :goto_25
    move v1, v2

    .line 463
    .local v1, "readSuspended":Z
    if-eqz v1, :cond_30

    .line 466
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v2

    invoke-interface {v2}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    .line 467
    return-void

    .line 471
    .end local v0    # "cse":Lorg/jboss/netty/channel/ChannelStateEvent;
    .end local v1    # "readSuspended":Z
    :cond_30
    invoke-super {p0, p1, p2}, Lorg/jboss/netty/channel/SimpleChannelHandler;->handleDownstream(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 472
    return-void
.end method

.method public messageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;)V
    .registers 13
    .param p1, "arg0"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "arg1"    # Lorg/jboss/netty/channel/MessageEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 364
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 365
    .local v6, "curtime":J
    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->objectSizeEstimator:Lorg/jboss/netty/util/ObjectSizeEstimator;

    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/jboss/netty/util/ObjectSizeEstimator;->estimateSize(Ljava/lang/Object;)I

    move-result v0

    int-to-long v8, v0

    .line 366
    .local v8, "size":J
    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->trafficCounter:Lorg/jboss/netty/handler/traffic/TrafficCounter;

    if-eqz v0, :cond_91

    .line 367
    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->trafficCounter:Lorg/jboss/netty/handler/traffic/TrafficCounter;

    invoke-virtual {v0, p1, v8, v9}, Lorg/jboss/netty/handler/traffic/TrafficCounter;->bytesRecvFlowControl(Lorg/jboss/netty/channel/ChannelHandlerContext;J)V

    .line 368
    iget-wide v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->readLimit:J
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_96

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_24

    .line 420
    .end local v6    # "curtime":J
    .end local v8    # "size":J
    .end local p0    # "this":Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;
    .end local p1    # "arg0":Lorg/jboss/netty/channel/ChannelHandlerContext;
    .end local p2    # "arg1":Lorg/jboss/netty/channel/MessageEvent;
    :goto_20
    invoke-super {p0, p1, p2}, Lorg/jboss/netty/channel/SimpleChannelHandler;->messageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;)V

    return-void

    .line 373
    .restart local v6    # "curtime":J
    .restart local v8    # "size":J
    .restart local p0    # "this":Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;
    .restart local p1    # "arg0":Lorg/jboss/netty/channel/ChannelHandlerContext;
    .restart local p2    # "arg1":Lorg/jboss/netty/channel/MessageEvent;
    :cond_24
    :try_start_24
    iget-wide v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->readLimit:J

    iget-object v2, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->trafficCounter:Lorg/jboss/netty/handler/traffic/TrafficCounter;

    invoke-virtual {v2}, Lorg/jboss/netty/handler/traffic/TrafficCounter;->getCurrentReadBytes()J

    move-result-wide v2

    iget-object v4, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->trafficCounter:Lorg/jboss/netty/handler/traffic/TrafficCounter;

    invoke-virtual {v4}, Lorg/jboss/netty/handler/traffic/TrafficCounter;->getLastTime()J

    move-result-wide v4

    invoke-static/range {v0 .. v7}, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->getTimeToWait(JJJJ)J

    move-result-wide v0

    .line 376
    .local v0, "wait":J
    const-wide/16 v2, 0xa

    cmp-long v4, v0, v2

    if-ltz v4, :cond_91

    .line 378
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v2

    .line 380
    .local v2, "channel":Lorg/jboss/netty/channel/Channel;
    if-eqz v2, :cond_85

    invoke-interface {v2}, Lorg/jboss/netty/channel/Channel;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_85

    .line 382
    iget-object v3, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->timer:Lorg/jboss/netty/util/Timer;

    if-nez v3, :cond_59

    .line 385
    iget-object v3, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->release:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_55

    goto :goto_20

    .line 388
    :cond_55
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_20

    .line 391
    :cond_59
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getAttachment()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_78

    .line 393
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v3}, Lorg/jboss/netty/channel/ChannelHandlerContext;->setAttachment(Ljava/lang/Object;)V

    .line 394
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lorg/jboss/netty/channel/Channel;->setReadable(Z)Lorg/jboss/netty/channel/ChannelFuture;

    .line 396
    new-instance v3, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler$ReopenReadTimerTask;

    invoke-direct {v3, p0, p1}, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler$ReopenReadTimerTask;-><init>(Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    .line 397
    .local v3, "timerTask":Lorg/jboss/netty/util/TimerTask;
    iget-object v4, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->timer:Lorg/jboss/netty/util/Timer;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v3, v0, v1, v5}, Lorg/jboss/netty/util/Timer;->newTimeout(Lorg/jboss/netty/util/TimerTask;JLjava/util/concurrent/TimeUnit;)Lorg/jboss/netty/util/Timeout;

    move-result-object v4

    iput-object v4, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->timeout:Lorg/jboss/netty/util/Timeout;

    .line 399
    .end local v3    # "timerTask":Lorg/jboss/netty/util/TimerTask;
    goto :goto_91

    .line 403
    :cond_78
    iget-object v3, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->release:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_81

    goto :goto_20

    .line 406
    :cond_81
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_91

    .line 411
    :cond_85
    iget-object v3, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->release:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_8e

    goto :goto_20

    .line 414
    :cond_8e
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_91
    .catchall {:try_start_24 .. :try_end_91} :catchall_96

    .line 420
    .end local v0    # "wait":J
    .end local v2    # "channel":Lorg/jboss/netty/channel/Channel;
    .end local v6    # "curtime":J
    .end local v8    # "size":J
    :cond_91
    :goto_91
    invoke-super {p0, p1, p2}, Lorg/jboss/netty/channel/SimpleChannelHandler;->messageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;)V

    .line 421
    nop

    .line 422
    return-void

    .line 420
    :catchall_96
    move-exception v0

    invoke-super {p0, p1, p2}, Lorg/jboss/netty/channel/SimpleChannelHandler;->messageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;)V

    throw v0
.end method

.method public releaseExternalResources()V
    .registers 3

    .line 484
    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->trafficCounter:Lorg/jboss/netty/handler/traffic/TrafficCounter;

    if-eqz v0, :cond_9

    .line 485
    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->trafficCounter:Lorg/jboss/netty/handler/traffic/TrafficCounter;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/traffic/TrafficCounter;->stop()V

    .line 487
    :cond_9
    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->release:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 488
    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->timeout:Lorg/jboss/netty/util/Timeout;

    if-eqz v0, :cond_18

    .line 489
    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->timeout:Lorg/jboss/netty/util/Timeout;

    invoke-interface {v0}, Lorg/jboss/netty/util/Timeout;->cancel()V

    .line 491
    :cond_18
    return-void
.end method

.method setTrafficCounter(Lorg/jboss/netty/handler/traffic/TrafficCounter;)V
    .registers 2
    .param p1, "newTrafficCounter"    # Lorg/jboss/netty/handler/traffic/TrafficCounter;

    .line 135
    iput-object p1, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->trafficCounter:Lorg/jboss/netty/handler/traffic/TrafficCounter;

    .line 136
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TrafficShaping with Write Limit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->writeLimit:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " Read Limit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->readLimit:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " and Counter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->trafficCounter:Lorg/jboss/netty/handler/traffic/TrafficCounter;

    if-eqz v1, :cond_29

    iget-object v1, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->trafficCounter:Lorg/jboss/netty/handler/traffic/TrafficCounter;

    invoke-virtual {v1}, Lorg/jboss/netty/handler/traffic/TrafficCounter;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2b

    :cond_29
    const-string v1, "none"

    :goto_2b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeRequested(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;)V
    .registers 13
    .param p1, "arg0"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "arg1"    # Lorg/jboss/netty/channel/MessageEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 428
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 429
    .local v6, "curtime":J
    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->objectSizeEstimator:Lorg/jboss/netty/util/ObjectSizeEstimator;

    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/jboss/netty/util/ObjectSizeEstimator;->estimateSize(Ljava/lang/Object;)I

    move-result v0

    int-to-long v8, v0

    .line 430
    .local v8, "size":J
    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->trafficCounter:Lorg/jboss/netty/handler/traffic/TrafficCounter;

    if-eqz v0, :cond_48

    .line 431
    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->trafficCounter:Lorg/jboss/netty/handler/traffic/TrafficCounter;

    invoke-virtual {v0, v8, v9}, Lorg/jboss/netty/handler/traffic/TrafficCounter;->bytesWriteFlowControl(J)V

    .line 432
    iget-wide v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->writeLimit:J
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_4d

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_24

    .line 450
    .end local v6    # "curtime":J
    .end local v8    # "size":J
    .end local p0    # "this":Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;
    .end local p1    # "arg0":Lorg/jboss/netty/channel/ChannelHandlerContext;
    .end local p2    # "arg1":Lorg/jboss/netty/channel/MessageEvent;
    :goto_20
    invoke-super {p0, p1, p2}, Lorg/jboss/netty/channel/SimpleChannelHandler;->writeRequested(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;)V

    return-void

    .line 437
    .restart local v6    # "curtime":J
    .restart local v8    # "size":J
    .restart local p0    # "this":Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;
    .restart local p1    # "arg0":Lorg/jboss/netty/channel/ChannelHandlerContext;
    .restart local p2    # "arg1":Lorg/jboss/netty/channel/MessageEvent;
    :cond_24
    :try_start_24
    iget-wide v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->writeLimit:J

    iget-object v2, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->trafficCounter:Lorg/jboss/netty/handler/traffic/TrafficCounter;

    invoke-virtual {v2}, Lorg/jboss/netty/handler/traffic/TrafficCounter;->getCurrentWrittenBytes()J

    move-result-wide v2

    iget-object v4, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->trafficCounter:Lorg/jboss/netty/handler/traffic/TrafficCounter;

    invoke-virtual {v4}, Lorg/jboss/netty/handler/traffic/TrafficCounter;->getLastTime()J

    move-result-wide v4

    invoke-static/range {v0 .. v7}, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->getTimeToWait(JJJJ)J

    move-result-wide v0

    .line 440
    .local v0, "wait":J
    const-wide/16 v2, 0xa

    cmp-long v4, v0, v2

    if-ltz v4, :cond_48

    .line 442
    iget-object v2, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->release:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_45

    goto :goto_20

    .line 445
    :cond_45
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_48
    .catchall {:try_start_24 .. :try_end_48} :catchall_4d

    .line 450
    .end local v0    # "wait":J
    .end local v6    # "curtime":J
    .end local v8    # "size":J
    :cond_48
    invoke-super {p0, p1, p2}, Lorg/jboss/netty/channel/SimpleChannelHandler;->writeRequested(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;)V

    .line 451
    nop

    .line 452
    return-void

    .line 450
    :catchall_4d
    move-exception v0

    invoke-super {p0, p1, p2}, Lorg/jboss/netty/channel/SimpleChannelHandler;->writeRequested(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;)V

    throw v0
.end method
