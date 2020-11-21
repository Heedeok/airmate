.class final Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$NewThreadRunsPolicy;
.super Ljava/lang/Object;
.source "MemoryAwareThreadPoolExecutor.java"

# interfaces
.implements Ljava/util/concurrent/RejectedExecutionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NewThreadRunsPolicy"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 602
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$1;)V
    .registers 2
    .param p1, "x0"    # Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$1;

    .line 602
    invoke-direct {p0}, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$NewThreadRunsPolicy;-><init>()V

    return-void
.end method


# virtual methods
.method public rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .registers 6
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "executor"    # Ljava/util/concurrent/ThreadPoolExecutor;

    .line 605
    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "Temporary task executor"

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 606
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_a} :catch_c

    .line 610
    .end local v0    # "t":Ljava/lang/Thread;
    nop

    .line 611
    return-void

    .line 607
    :catch_c
    move-exception v0

    .line 608
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/util/concurrent/RejectedExecutionException;

    const-string v2, "Failed to start a new thread"

    invoke-direct {v1, v2, v0}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
