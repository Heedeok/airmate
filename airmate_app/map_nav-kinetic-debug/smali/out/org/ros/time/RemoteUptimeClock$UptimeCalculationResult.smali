.class final Lorg/ros/time/RemoteUptimeClock$UptimeCalculationResult;
.super Ljava/lang/Object;
.source "RemoteUptimeClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ros/time/RemoteUptimeClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UptimeCalculationResult"
.end annotation


# instance fields
.field final latency:D

.field final newLocalUptime:D

.field final newRemoteUptime:D

.field final synthetic this$0:Lorg/ros/time/RemoteUptimeClock;


# direct methods
.method public constructor <init>(Lorg/ros/time/RemoteUptimeClock;DDD)V
    .registers 8
    .param p2, "newLocalUptime"    # D
    .param p4, "newRemoteUptime"    # D
    .param p6, "latency"    # D

    .line 95
    iput-object p1, p0, Lorg/ros/time/RemoteUptimeClock$UptimeCalculationResult;->this$0:Lorg/ros/time/RemoteUptimeClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-wide p2, p0, Lorg/ros/time/RemoteUptimeClock$UptimeCalculationResult;->newLocalUptime:D

    .line 97
    iput-wide p4, p0, Lorg/ros/time/RemoteUptimeClock$UptimeCalculationResult;->newRemoteUptime:D

    .line 98
    iput-wide p6, p0, Lorg/ros/time/RemoteUptimeClock$UptimeCalculationResult;->latency:D

    .line 99
    return-void
.end method
