.class Lorg/ros/concurrent/WatchdogTimer$1;
.super Ljava/lang/Object;
.source "WatchdogTimer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ros/concurrent/WatchdogTimer;-><init>(Ljava/util/concurrent/ScheduledExecutorService;JLjava/util/concurrent/TimeUnit;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ros/concurrent/WatchdogTimer;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lorg/ros/concurrent/WatchdogTimer;Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "this$0"    # Lorg/ros/concurrent/WatchdogTimer;

    .line 46
    iput-object p1, p0, Lorg/ros/concurrent/WatchdogTimer$1;->this$0:Lorg/ros/concurrent/WatchdogTimer;

    iput-object p2, p0, Lorg/ros/concurrent/WatchdogTimer$1;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 50
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lorg/ros/concurrent/WatchdogTimer$1;->this$0:Lorg/ros/concurrent/WatchdogTimer;

    invoke-static {v1}, Lorg/ros/concurrent/WatchdogTimer;->access$000(Lorg/ros/concurrent/WatchdogTimer;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 51
    iget-object v1, p0, Lorg/ros/concurrent/WatchdogTimer$1;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_15

    .line 54
    :cond_e
    iget-object v1, p0, Lorg/ros/concurrent/WatchdogTimer$1;->this$0:Lorg/ros/concurrent/WatchdogTimer;

    invoke-static {v1, v0}, Lorg/ros/concurrent/WatchdogTimer;->access$002(Lorg/ros/concurrent/WatchdogTimer;Z)Z

    .line 55
    nop

    .line 56
    return-void

    .line 54
    :catchall_15
    move-exception v1

    iget-object v2, p0, Lorg/ros/concurrent/WatchdogTimer$1;->this$0:Lorg/ros/concurrent/WatchdogTimer;

    invoke-static {v2, v0}, Lorg/ros/concurrent/WatchdogTimer;->access$002(Lorg/ros/concurrent/WatchdogTimer;Z)Z

    .line 55
    throw v1
.end method
