.class public Lorg/ros/time/WallTimeProvider;
.super Ljava/lang/Object;
.source "WallTimeProvider.java"

# interfaces
.implements Lorg/ros/time/TimeProvider;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentTime()Lorg/ros/message/Time;
    .registers 3

    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/ros/message/Time;->fromMillis(J)Lorg/ros/message/Time;

    move-result-object v0

    return-object v0
.end method
