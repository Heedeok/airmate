.class Lorg/jboss/netty/handler/traffic/TrafficCounter$TrafficMonitoringTask;
.super Ljava/lang/Object;
.source "TrafficCounter.java"

# interfaces
.implements Lorg/jboss/netty/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/handler/traffic/TrafficCounter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TrafficMonitoringTask"
.end annotation


# instance fields
.field private final counter:Lorg/jboss/netty/handler/traffic/TrafficCounter;

.field private final trafficShapingHandler1:Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;


# direct methods
.method protected constructor <init>(Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;Lorg/jboss/netty/handler/traffic/TrafficCounter;)V
    .registers 3
    .param p1, "trafficShapingHandler"    # Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;
    .param p2, "counter"    # Lorg/jboss/netty/handler/traffic/TrafficCounter;

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-object p1, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter$TrafficMonitoringTask;->trafficShapingHandler1:Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;

    .line 146
    iput-object p2, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter$TrafficMonitoringTask;->counter:Lorg/jboss/netty/handler/traffic/TrafficCounter;

    .line 147
    return-void
.end method


# virtual methods
.method public run(Lorg/jboss/netty/util/Timeout;)V
    .registers 8
    .param p1, "timeout"    # Lorg/jboss/netty/util/Timeout;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter$TrafficMonitoringTask;->counter:Lorg/jboss/netty/handler/traffic/TrafficCounter;

    iget-object v0, v0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->monitorActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_b

    .line 151
    return-void

    .line 153
    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 154
    .local v0, "endTime":J
    iget-object v2, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter$TrafficMonitoringTask;->counter:Lorg/jboss/netty/handler/traffic/TrafficCounter;

    invoke-virtual {v2, v0, v1}, Lorg/jboss/netty/handler/traffic/TrafficCounter;->resetAccounting(J)V

    .line 155
    iget-object v2, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter$TrafficMonitoringTask;->trafficShapingHandler1:Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;

    if-eqz v2, :cond_1f

    .line 156
    iget-object v2, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter$TrafficMonitoringTask;->trafficShapingHandler1:Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;

    iget-object v3, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter$TrafficMonitoringTask;->counter:Lorg/jboss/netty/handler/traffic/TrafficCounter;

    invoke-virtual {v2, v3}, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->doAccounting(Lorg/jboss/netty/handler/traffic/TrafficCounter;)V

    .line 158
    :cond_1f
    iget-object v2, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter$TrafficMonitoringTask;->counter:Lorg/jboss/netty/handler/traffic/TrafficCounter;

    invoke-static {v2}, Lorg/jboss/netty/handler/traffic/TrafficCounter;->access$000(Lorg/jboss/netty/handler/traffic/TrafficCounter;)Lorg/jboss/netty/util/Timer;

    move-result-object v2

    iget-object v3, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter$TrafficMonitoringTask;->counter:Lorg/jboss/netty/handler/traffic/TrafficCounter;

    iget-object v3, v3, Lorg/jboss/netty/handler/traffic/TrafficCounter;->checkInterval:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, p0, v3, v4, v5}, Lorg/jboss/netty/util/Timer;->newTimeout(Lorg/jboss/netty/util/TimerTask;JLjava/util/concurrent/TimeUnit;)Lorg/jboss/netty/util/Timeout;

    move-result-object p1

    .line 160
    return-void
.end method
