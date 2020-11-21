.class public Lorg/ros/concurrent/RetryingExecutorService;
.super Ljava/lang/Object;
.source "RetryingExecutorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ros/concurrent/RetryingExecutorService$RetryLoop;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_RETRY_DELAY:J = 0x5L

.field private static final DEFAULT_RETRY_TIME_UNIT:Ljava/util/concurrent/TimeUnit;

.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field private final callables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final completionService:Ljava/util/concurrent/CompletionService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletionService<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final latches:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/concurrent/CountDownLatch;",
            ">;"
        }
    .end annotation
.end field

.field private final mutex:Ljava/lang/Object;

.field private retryDelay:J

.field private final retryLoop:Lorg/ros/concurrent/RetryingExecutorService$RetryLoop;

.field private retryTimeUnit:Ljava/util/concurrent/TimeUnit;

.field private running:Z

.field private final scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 46
    const-class v0, Lorg/ros/concurrent/RetryingExecutorService;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/ros/concurrent/RetryingExecutorService;->log:Lorg/apache/commons/logging/Log;

    .line 49
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lorg/ros/concurrent/RetryingExecutorService;->DEFAULT_RETRY_TIME_UNIT:Ljava/util/concurrent/TimeUnit;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;)V
    .registers 4
    .param p1, "scheduledExecutorService"    # Ljava/util/concurrent/ScheduledExecutorService;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lorg/ros/concurrent/RetryingExecutorService;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 102
    new-instance v0, Lorg/ros/concurrent/RetryingExecutorService$RetryLoop;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/ros/concurrent/RetryingExecutorService$RetryLoop;-><init>(Lorg/ros/concurrent/RetryingExecutorService;Lorg/ros/concurrent/RetryingExecutorService$1;)V

    iput-object v0, p0, Lorg/ros/concurrent/RetryingExecutorService;->retryLoop:Lorg/ros/concurrent/RetryingExecutorService$RetryLoop;

    .line 103
    invoke-static {}, Lcom/google/common/collect/Maps;->newConcurrentMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/concurrent/RetryingExecutorService;->latches:Ljava/util/Map;

    .line 104
    invoke-static {}, Lcom/google/common/collect/Maps;->newConcurrentMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/concurrent/RetryingExecutorService;->callables:Ljava/util/Map;

    .line 105
    new-instance v0, Ljava/util/concurrent/ExecutorCompletionService;

    invoke-direct {v0, p1}, Ljava/util/concurrent/ExecutorCompletionService;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lorg/ros/concurrent/RetryingExecutorService;->completionService:Ljava/util/concurrent/CompletionService;

    .line 106
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/ros/concurrent/RetryingExecutorService;->mutex:Ljava/lang/Object;

    .line 107
    const-wide/16 v0, 0x5

    iput-wide v0, p0, Lorg/ros/concurrent/RetryingExecutorService;->retryDelay:J

    .line 108
    sget-object v0, Lorg/ros/concurrent/RetryingExecutorService;->DEFAULT_RETRY_TIME_UNIT:Ljava/util/concurrent/TimeUnit;

    iput-object v0, p0, Lorg/ros/concurrent/RetryingExecutorService;->retryTimeUnit:Ljava/util/concurrent/TimeUnit;

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/ros/concurrent/RetryingExecutorService;->running:Z

    .line 111
    iget-object v0, p0, Lorg/ros/concurrent/RetryingExecutorService;->retryLoop:Lorg/ros/concurrent/RetryingExecutorService$RetryLoop;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 112
    return-void
.end method

.method static synthetic access$000(Lorg/ros/concurrent/RetryingExecutorService;)Ljava/util/concurrent/CompletionService;
    .registers 2
    .param p0, "x0"    # Lorg/ros/concurrent/RetryingExecutorService;

    .line 43
    iget-object v0, p0, Lorg/ros/concurrent/RetryingExecutorService;->completionService:Ljava/util/concurrent/CompletionService;

    return-object v0
.end method

.method static synthetic access$100(Lorg/ros/concurrent/RetryingExecutorService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lorg/ros/concurrent/RetryingExecutorService;

    .line 43
    iget-object v0, p0, Lorg/ros/concurrent/RetryingExecutorService;->mutex:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lorg/ros/concurrent/RetryingExecutorService;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lorg/ros/concurrent/RetryingExecutorService;

    .line 43
    iget-object v0, p0, Lorg/ros/concurrent/RetryingExecutorService;->callables:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lorg/ros/concurrent/RetryingExecutorService;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lorg/ros/concurrent/RetryingExecutorService;

    .line 43
    iget-object v0, p0, Lorg/ros/concurrent/RetryingExecutorService;->latches:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400(Lorg/ros/concurrent/RetryingExecutorService;)J
    .registers 3
    .param p0, "x0"    # Lorg/ros/concurrent/RetryingExecutorService;

    .line 43
    iget-wide v0, p0, Lorg/ros/concurrent/RetryingExecutorService;->retryDelay:J

    return-wide v0
.end method

.method static synthetic access$500(Lorg/ros/concurrent/RetryingExecutorService;)Ljava/util/concurrent/TimeUnit;
    .registers 2
    .param p0, "x0"    # Lorg/ros/concurrent/RetryingExecutorService;

    .line 43
    iget-object v0, p0, Lorg/ros/concurrent/RetryingExecutorService;->retryTimeUnit:Ljava/util/concurrent/TimeUnit;

    return-object v0
.end method

.method static synthetic access$600(Lorg/ros/concurrent/RetryingExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;
    .registers 2
    .param p0, "x0"    # Lorg/ros/concurrent/RetryingExecutorService;

    .line 43
    iget-object v0, p0, Lorg/ros/concurrent/RetryingExecutorService;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method


# virtual methods
.method public setRetryDelay(JLjava/util/concurrent/TimeUnit;)V
    .registers 4
    .param p1, "delay"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 143
    iput-wide p1, p0, Lorg/ros/concurrent/RetryingExecutorService;->retryDelay:J

    .line 144
    iput-object p3, p0, Lorg/ros/concurrent/RetryingExecutorService;->retryTimeUnit:Ljava/util/concurrent/TimeUnit;

    .line 145
    return-void
.end method

.method public shutdown(JLjava/util/concurrent/TimeUnit;)V
    .registers 6
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/ros/concurrent/RetryingExecutorService;->running:Z

    .line 159
    iget-object v0, p0, Lorg/ros/concurrent/RetryingExecutorService;->latches:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/CountDownLatch;

    .line 160
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    invoke-virtual {v1, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 161
    .end local v1    # "latch":Ljava/util/concurrent/CountDownLatch;
    goto :goto_d

    .line 162
    :cond_1d
    iget-object v0, p0, Lorg/ros/concurrent/RetryingExecutorService;->retryLoop:Lorg/ros/concurrent/RetryingExecutorService$RetryLoop;

    invoke-virtual {v0}, Lorg/ros/concurrent/RetryingExecutorService$RetryLoop;->cancel()V

    .line 163
    return-void
.end method

.method public submit(Ljava/util/concurrent/Callable;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 125
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lorg/ros/concurrent/RetryingExecutorService;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 126
    :try_start_3
    iget-boolean v1, p0, Lorg/ros/concurrent/RetryingExecutorService;->running:Z

    if-eqz v1, :cond_20

    .line 127
    iget-object v1, p0, Lorg/ros/concurrent/RetryingExecutorService;->completionService:Ljava/util/concurrent/CompletionService;

    invoke-interface {v1, p1}, Ljava/util/concurrent/CompletionService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 128
    .local v1, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Boolean;>;"
    iget-object v2, p0, Lorg/ros/concurrent/RetryingExecutorService;->latches:Ljava/util/Map;

    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v2, p0, Lorg/ros/concurrent/RetryingExecutorService;->callables:Ljava/util/Map;

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .end local v1    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Boolean;>;"
    nop

    .line 133
    monitor-exit v0

    .line 134
    return-void

    .line 131
    :cond_20
    new-instance v1, Ljava/util/concurrent/RejectedExecutionException;

    invoke-direct {v1}, Ljava/util/concurrent/RejectedExecutionException;-><init>()V

    throw v1

    .line 133
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v1
.end method
