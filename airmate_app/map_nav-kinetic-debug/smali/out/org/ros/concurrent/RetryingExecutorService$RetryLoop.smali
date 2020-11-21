.class Lorg/ros/concurrent/RetryingExecutorService$RetryLoop;
.super Lorg/ros/concurrent/CancellableLoop;
.source "RetryingExecutorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ros/concurrent/RetryingExecutorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RetryLoop"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ros/concurrent/RetryingExecutorService;


# direct methods
.method private constructor <init>(Lorg/ros/concurrent/RetryingExecutorService;)V
    .registers 2

    .line 62
    iput-object p1, p0, Lorg/ros/concurrent/RetryingExecutorService$RetryLoop;->this$0:Lorg/ros/concurrent/RetryingExecutorService;

    invoke-direct {p0}, Lorg/ros/concurrent/CancellableLoop;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/ros/concurrent/RetryingExecutorService;Lorg/ros/concurrent/RetryingExecutorService$1;)V
    .registers 3
    .param p1, "x0"    # Lorg/ros/concurrent/RetryingExecutorService;
    .param p2, "x1"    # Lorg/ros/concurrent/RetryingExecutorService$1;

    .line 62
    invoke-direct {p0, p1}, Lorg/ros/concurrent/RetryingExecutorService$RetryLoop;-><init>(Lorg/ros/concurrent/RetryingExecutorService;)V

    return-void
.end method


# virtual methods
.method public loop()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lorg/ros/concurrent/RetryingExecutorService$RetryLoop;->this$0:Lorg/ros/concurrent/RetryingExecutorService;

    invoke-static {v0}, Lorg/ros/concurrent/RetryingExecutorService;->access$000(Lorg/ros/concurrent/RetryingExecutorService;)Ljava/util/concurrent/CompletionService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/CompletionService;->take()Ljava/util/concurrent/Future;

    move-result-object v0

    .line 69
    .local v0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Boolean;>;"
    iget-object v1, p0, Lorg/ros/concurrent/RetryingExecutorService$RetryLoop;->this$0:Lorg/ros/concurrent/RetryingExecutorService;

    invoke-static {v1}, Lorg/ros/concurrent/RetryingExecutorService;->access$100(Lorg/ros/concurrent/RetryingExecutorService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 70
    :try_start_11
    iget-object v2, p0, Lorg/ros/concurrent/RetryingExecutorService$RetryLoop;->this$0:Lorg/ros/concurrent/RetryingExecutorService;

    invoke-static {v2}, Lorg/ros/concurrent/RetryingExecutorService;->access$200(Lorg/ros/concurrent/RetryingExecutorService;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Callable;

    .line 71
    .local v2, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Boolean;>;"
    iget-object v3, p0, Lorg/ros/concurrent/RetryingExecutorService$RetryLoop;->this$0:Lorg/ros/concurrent/RetryingExecutorService;

    invoke-static {v3}, Lorg/ros/concurrent/RetryingExecutorService;->access$300(Lorg/ros/concurrent/RetryingExecutorService;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/CountDownLatch;

    .line 72
    .local v3, "latch":Ljava/util/concurrent/CountDownLatch;
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_11 .. :try_end_2a} :catchall_63

    .line 75
    :try_start_2a
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_34
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2a .. :try_end_34} :catch_58

    .line 78
    .local v1, "retry":Z
    nop

    .line 77
    nop

    .line 79
    if-eqz v1, :cond_54

    .line 83
    move-object v4, v2

    .line 84
    .local v4, "finalCallable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Boolean;>;"
    iget-object v5, p0, Lorg/ros/concurrent/RetryingExecutorService$RetryLoop;->this$0:Lorg/ros/concurrent/RetryingExecutorService;

    invoke-static {v5}, Lorg/ros/concurrent/RetryingExecutorService;->access$600(Lorg/ros/concurrent/RetryingExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v5

    new-instance v6, Lorg/ros/concurrent/RetryingExecutorService$RetryLoop$1;

    invoke-direct {v6, p0, v4}, Lorg/ros/concurrent/RetryingExecutorService$RetryLoop$1;-><init>(Lorg/ros/concurrent/RetryingExecutorService$RetryLoop;Ljava/util/concurrent/Callable;)V

    iget-object v7, p0, Lorg/ros/concurrent/RetryingExecutorService$RetryLoop;->this$0:Lorg/ros/concurrent/RetryingExecutorService;

    .line 89
    invoke-static {v7}, Lorg/ros/concurrent/RetryingExecutorService;->access$400(Lorg/ros/concurrent/RetryingExecutorService;)J

    move-result-wide v7

    iget-object v9, p0, Lorg/ros/concurrent/RetryingExecutorService$RetryLoop;->this$0:Lorg/ros/concurrent/RetryingExecutorService;

    invoke-static {v9}, Lorg/ros/concurrent/RetryingExecutorService;->access$500(Lorg/ros/concurrent/RetryingExecutorService;)Ljava/util/concurrent/TimeUnit;

    move-result-object v9

    .line 84
    invoke-interface {v5, v6, v7, v8, v9}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 90
    .end local v4    # "finalCallable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Boolean;>;"
    goto :goto_57

    .line 91
    :cond_54
    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 93
    :goto_57
    return-void

    .line 76
    .end local v1    # "retry":Z
    :catch_58
    move-exception v1

    .line 77
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    new-instance v4, Lorg/ros/exception/RosRuntimeException;

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/ros/exception/RosRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 72
    .end local v1    # "e":Ljava/util/concurrent/ExecutionException;
    .end local v2    # "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Boolean;>;"
    .end local v3    # "latch":Ljava/util/concurrent/CountDownLatch;
    :catchall_63
    move-exception v2

    :try_start_64
    monitor-exit v1
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    throw v2
.end method
