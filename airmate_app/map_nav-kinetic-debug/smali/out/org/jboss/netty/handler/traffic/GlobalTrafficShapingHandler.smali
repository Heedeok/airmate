.class public Lorg/jboss/netty/handler/traffic/GlobalTrafficShapingHandler;
.super Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;
.source "GlobalTrafficShapingHandler.java"


# annotations
.annotation runtime Lorg/jboss/netty/channel/ChannelHandler$Sharable;
.end annotation


# direct methods
.method public constructor <init>(Lorg/jboss/netty/util/ObjectSizeEstimator;Lorg/jboss/netty/util/Timer;)V
    .registers 3
    .param p1, "objectSizeEstimator"    # Lorg/jboss/netty/util/ObjectSizeEstimator;
    .param p2, "timer"    # Lorg/jboss/netty/util/Timer;

    .line 119
    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;-><init>(Lorg/jboss/netty/util/ObjectSizeEstimator;Lorg/jboss/netty/util/Timer;)V

    .line 120
    invoke-virtual {p0}, Lorg/jboss/netty/handler/traffic/GlobalTrafficShapingHandler;->createGlobalTrafficCounter()V

    .line 121
    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/util/ObjectSizeEstimator;Lorg/jboss/netty/util/Timer;J)V
    .registers 5
    .param p1, "objectSizeEstimator"    # Lorg/jboss/netty/util/ObjectSizeEstimator;
    .param p2, "timer"    # Lorg/jboss/netty/util/Timer;
    .param p3, "checkInterval"    # J

    .line 113
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;-><init>(Lorg/jboss/netty/util/ObjectSizeEstimator;Lorg/jboss/netty/util/Timer;J)V

    .line 114
    invoke-virtual {p0}, Lorg/jboss/netty/handler/traffic/GlobalTrafficShapingHandler;->createGlobalTrafficCounter()V

    .line 115
    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/util/ObjectSizeEstimator;Lorg/jboss/netty/util/Timer;JJ)V
    .registers 7
    .param p1, "objectSizeEstimator"    # Lorg/jboss/netty/util/ObjectSizeEstimator;
    .param p2, "timer"    # Lorg/jboss/netty/util/Timer;
    .param p3, "writeLimit"    # J
    .param p5, "readLimit"    # J

    .line 107
    invoke-direct/range {p0 .. p6}, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;-><init>(Lorg/jboss/netty/util/ObjectSizeEstimator;Lorg/jboss/netty/util/Timer;JJ)V

    .line 108
    invoke-virtual {p0}, Lorg/jboss/netty/handler/traffic/GlobalTrafficShapingHandler;->createGlobalTrafficCounter()V

    .line 109
    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/util/ObjectSizeEstimator;Lorg/jboss/netty/util/Timer;JJJ)V
    .registers 9
    .param p1, "objectSizeEstimator"    # Lorg/jboss/netty/util/ObjectSizeEstimator;
    .param p2, "timer"    # Lorg/jboss/netty/util/Timer;
    .param p3, "writeLimit"    # J
    .param p5, "readLimit"    # J
    .param p7, "checkInterval"    # J

    .line 100
    invoke-direct/range {p0 .. p8}, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;-><init>(Lorg/jboss/netty/util/ObjectSizeEstimator;Lorg/jboss/netty/util/Timer;JJJ)V

    .line 102
    invoke-virtual {p0}, Lorg/jboss/netty/handler/traffic/GlobalTrafficShapingHandler;->createGlobalTrafficCounter()V

    .line 103
    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/util/Timer;)V
    .registers 2
    .param p1, "timer"    # Lorg/jboss/netty/util/Timer;

    .line 93
    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;-><init>(Lorg/jboss/netty/util/Timer;)V

    .line 94
    invoke-virtual {p0}, Lorg/jboss/netty/handler/traffic/GlobalTrafficShapingHandler;->createGlobalTrafficCounter()V

    .line 95
    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/util/Timer;J)V
    .registers 4
    .param p1, "timer"    # Lorg/jboss/netty/util/Timer;
    .param p2, "checkInterval"    # J

    .line 88
    invoke-direct {p0, p1, p2, p3}, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;-><init>(Lorg/jboss/netty/util/Timer;J)V

    .line 89
    invoke-virtual {p0}, Lorg/jboss/netty/handler/traffic/GlobalTrafficShapingHandler;->createGlobalTrafficCounter()V

    .line 90
    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/util/Timer;JJ)V
    .registers 6
    .param p1, "timer"    # Lorg/jboss/netty/util/Timer;
    .param p2, "writeLimit"    # J
    .param p4, "readLimit"    # J

    .line 83
    invoke-direct/range {p0 .. p5}, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;-><init>(Lorg/jboss/netty/util/Timer;JJ)V

    .line 84
    invoke-virtual {p0}, Lorg/jboss/netty/handler/traffic/GlobalTrafficShapingHandler;->createGlobalTrafficCounter()V

    .line 85
    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/util/Timer;JJJ)V
    .registers 8
    .param p1, "timer"    # Lorg/jboss/netty/util/Timer;
    .param p2, "writeLimit"    # J
    .param p4, "readLimit"    # J
    .param p6, "checkInterval"    # J

    .line 77
    invoke-direct/range {p0 .. p7}, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;-><init>(Lorg/jboss/netty/util/Timer;JJJ)V

    .line 78
    invoke-virtual {p0}, Lorg/jboss/netty/handler/traffic/GlobalTrafficShapingHandler;->createGlobalTrafficCounter()V

    .line 79
    return-void
.end method


# virtual methods
.method createGlobalTrafficCounter()V
    .registers 8

    .line 67
    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/GlobalTrafficShapingHandler;->timer:Lorg/jboss/netty/util/Timer;

    if-eqz v0, :cond_17

    .line 68
    new-instance v0, Lorg/jboss/netty/handler/traffic/TrafficCounter;

    iget-object v3, p0, Lorg/jboss/netty/handler/traffic/GlobalTrafficShapingHandler;->timer:Lorg/jboss/netty/util/Timer;

    const-string v4, "GlobalTC"

    iget-wide v5, p0, Lorg/jboss/netty/handler/traffic/GlobalTrafficShapingHandler;->checkInterval:J

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/jboss/netty/handler/traffic/TrafficCounter;-><init>(Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;Lorg/jboss/netty/util/Timer;Ljava/lang/String;J)V

    .line 70
    .local v0, "tc":Lorg/jboss/netty/handler/traffic/TrafficCounter;
    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/traffic/GlobalTrafficShapingHandler;->setTrafficCounter(Lorg/jboss/netty/handler/traffic/TrafficCounter;)V

    .line 71
    invoke-virtual {v0}, Lorg/jboss/netty/handler/traffic/TrafficCounter;->start()V

    .line 73
    .end local v0    # "tc":Lorg/jboss/netty/handler/traffic/TrafficCounter;
    :cond_17
    return-void
.end method
