.class final Lorg/ros/time/RemoteUptimeClock$1;
.super Ljava/lang/Object;
.source "RemoteUptimeClock.java"

# interfaces
.implements Lorg/ros/time/RemoteUptimeClock$LocalUptimeProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ros/time/RemoteUptimeClock;->newDefault(Lorg/ros/time/TimeProvider;Ljava/util/concurrent/Callable;DDID)Lorg/ros/time/RemoteUptimeClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$timeProvider:Lorg/ros/time/TimeProvider;


# direct methods
.method constructor <init>(Lorg/ros/time/TimeProvider;)V
    .registers 2

    .line 184
    iput-object p1, p0, Lorg/ros/time/RemoteUptimeClock$1;->val$timeProvider:Lorg/ros/time/TimeProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSeconds()D
    .registers 3

    .line 187
    iget-object v0, p0, Lorg/ros/time/RemoteUptimeClock$1;->val$timeProvider:Lorg/ros/time/TimeProvider;

    invoke-interface {v0}, Lorg/ros/time/TimeProvider;->getCurrentTime()Lorg/ros/message/Time;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ros/message/Time;->toSeconds()D

    move-result-wide v0

    return-wide v0
.end method
