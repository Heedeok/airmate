.class public Lorg/ros/concurrent/WatchdogTimer;
.super Ljava/lang/Object;
.source "WatchdogTimer.java"


# instance fields
.field private final period:J

.field private pulsed:Z

.field private final runnable:Ljava/lang/Runnable;

.field private final scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private scheduledFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;JLjava/util/concurrent/TimeUnit;Ljava/lang/Runnable;)V
    .registers 7
    .param p1, "scheduledExecutorService"    # Ljava/util/concurrent/ScheduledExecutorService;
    .param p2, "period"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "runnable"    # Ljava/lang/Runnable;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/ros/concurrent/WatchdogTimer;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 44
    iput-wide p2, p0, Lorg/ros/concurrent/WatchdogTimer;->period:J

    .line 45
    iput-object p4, p0, Lorg/ros/concurrent/WatchdogTimer;->unit:Ljava/util/concurrent/TimeUnit;

    .line 46
    new-instance v0, Lorg/ros/concurrent/WatchdogTimer$1;

    invoke-direct {v0, p0, p5}, Lorg/ros/concurrent/WatchdogTimer$1;-><init>(Lorg/ros/concurrent/WatchdogTimer;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/ros/concurrent/WatchdogTimer;->runnable:Ljava/lang/Runnable;

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/ros/concurrent/WatchdogTimer;->pulsed:Z

    .line 59
    return-void
.end method

.method static synthetic access$000(Lorg/ros/concurrent/WatchdogTimer;)Z
    .registers 2
    .param p0, "x0"    # Lorg/ros/concurrent/WatchdogTimer;

    .line 31
    iget-boolean v0, p0, Lorg/ros/concurrent/WatchdogTimer;->pulsed:Z

    return v0
.end method

.method static synthetic access$002(Lorg/ros/concurrent/WatchdogTimer;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/ros/concurrent/WatchdogTimer;
    .param p1, "x1"    # Z

    .line 31
    iput-boolean p1, p0, Lorg/ros/concurrent/WatchdogTimer;->pulsed:Z

    return p1
.end method


# virtual methods
.method public cancel()V
    .registers 3

    .line 70
    iget-object v0, p0, Lorg/ros/concurrent/WatchdogTimer;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 71
    return-void
.end method

.method public pulse()V
    .registers 2

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/ros/concurrent/WatchdogTimer;->pulsed:Z

    .line 67
    return-void
.end method

.method public start()V
    .registers 8

    .line 62
    iget-object v0, p0, Lorg/ros/concurrent/WatchdogTimer;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lorg/ros/concurrent/WatchdogTimer;->runnable:Ljava/lang/Runnable;

    iget-wide v2, p0, Lorg/ros/concurrent/WatchdogTimer;->period:J

    iget-wide v4, p0, Lorg/ros/concurrent/WatchdogTimer;->period:J

    iget-object v6, p0, Lorg/ros/concurrent/WatchdogTimer;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/concurrent/WatchdogTimer;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 63
    return-void
.end method
