.class public Lorg/ros/concurrent/WallTimeRate;
.super Ljava/lang/Object;
.source "WallTimeRate.java"

# interfaces
.implements Lorg/ros/concurrent/Rate;


# instance fields
.field private final delay:J

.field private time:J


# direct methods
.method public constructor <init>(I)V
    .registers 4
    .param p1, "hz"    # I

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/16 v0, 0x3e8

    div-int/2addr v0, p1

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/ros/concurrent/WallTimeRate;->delay:J

    .line 31
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/ros/concurrent/WallTimeRate;->time:J

    .line 32
    return-void
.end method


# virtual methods
.method public sleep()V
    .registers 7

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/ros/concurrent/WallTimeRate;->time:J

    sub-long/2addr v0, v2

    .line 37
    .local v0, "delta":J
    :goto_7
    iget-wide v2, p0, Lorg/ros/concurrent/WallTimeRate;->delay:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_20

    .line 39
    :try_start_d
    iget-wide v2, p0, Lorg/ros/concurrent/WallTimeRate;->delay:J

    const/4 v4, 0x0

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_14} :catch_1e

    .line 42
    nop

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/ros/concurrent/WallTimeRate;->time:J

    sub-long v0, v2, v4

    goto :goto_7

    .line 40
    :catch_1e
    move-exception v2

    .line 41
    .local v2, "e":Ljava/lang/InterruptedException;
    nop

    .line 45
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/ros/concurrent/WallTimeRate;->time:J

    .line 46
    return-void
.end method
