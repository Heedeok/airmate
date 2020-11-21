.class public final Lorg/jboss/netty/util/internal/ExecutorUtil;
.super Ljava/lang/Object;
.source "ExecutorUtil.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    return-void
.end method

.method public static isShutdown(Ljava/util/concurrent/Executor;)Z
    .registers 2
    .param p0, "executor"    # Ljava/util/concurrent/Executor;

    .line 37
    instance-of v0, p0, Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_f

    .line 38
    move-object v0, p0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 39
    const/4 v0, 0x1

    return v0

    .line 42
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public static varargs terminate(Ljava/lang/ThreadLocal;[Ljava/util/concurrent/Executor;)V
    .registers 13
    .param p1, "executors"    # [Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/concurrent/Executor;",
            ">;[",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 56
    .local p0, "deadLockChecker":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<Ljava/util/concurrent/Executor;>;"
    if-eqz p1, :cond_86

    .line 60
    array-length v0, p1

    new-array v0, v0, [Ljava/util/concurrent/Executor;

    .line 61
    .local v0, "executorsCopy":[Ljava/util/concurrent/Executor;
    const/4 v1, 0x0

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    array-length v3, p1

    if-ge v2, v3, :cond_31

    .line 62
    aget-object v3, p1, v2

    if-eqz v3, :cond_15

    .line 65
    aget-object v3, p1, v2

    aput-object v3, v0, v2

    .line 61
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 63
    :cond_15
    new-instance v1, Ljava/lang/NullPointerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "executors["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 69
    .end local v2    # "i":I
    :cond_31
    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Executor;

    .line 70
    .local v2, "currentParent":Ljava/util/concurrent/Executor;
    if-eqz v2, :cond_4d

    .line 71
    move-object v3, v0

    .local v3, "arr$":[Ljava/util/concurrent/Executor;
    array-length v4, v3

    const/4 v5, 0x0

    .local v4, "len$":I
    .local v5, "i$":I
    :goto_3c
    if-ge v5, v4, :cond_4d

    aget-object v6, v3, v5

    .line 72
    .local v6, "e":Ljava/util/concurrent/Executor;
    if-eq v6, v2, :cond_45

    .line 71
    .end local v6    # "e":Ljava/util/concurrent/Executor;
    add-int/lit8 v5, v5, 0x1

    goto :goto_3c

    .line 73
    .restart local v6    # "e":Ljava/util/concurrent/Executor;
    :cond_45
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v7, "An Executor cannot be shut down from the thread acquired from itself.  Please make sure you are not calling releaseExternalResources() from an I/O worker thread."

    invoke-direct {v1, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 83
    .end local v3    # "arr$":[Ljava/util/concurrent/Executor;
    .end local v4    # "len$":I
    .end local v5    # "i$":I
    .end local v6    # "e":Ljava/util/concurrent/Executor;
    :cond_4d
    const/4 v3, 0x0

    .line 84
    .local v3, "interrupted":Z
    move-object v4, v0

    .local v4, "arr$":[Ljava/util/concurrent/Executor;
    array-length v5, v4

    .local v1, "i$":I
    .local v5, "len$":I
    :goto_50
    if-ge v1, v5, :cond_7c

    aget-object v6, v4, v1

    .line 85
    .restart local v6    # "e":Ljava/util/concurrent/Executor;
    instance-of v7, v6, Ljava/util/concurrent/ExecutorService;

    if-nez v7, :cond_59

    .line 86
    goto :goto_79

    .line 89
    :cond_59
    move-object v7, v6

    check-cast v7, Ljava/util/concurrent/ExecutorService;

    .line 92
    .local v7, "es":Ljava/util/concurrent/ExecutorService;
    :goto_5c
    :try_start_5c
    invoke-interface {v7}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_5f
    .catch Ljava/lang/SecurityException; {:try_start_5c .. :try_end_5f} :catch_62
    .catch Ljava/lang/NullPointerException; {:try_start_5c .. :try_end_5f} :catch_60

    .line 106
    :goto_5f
    goto :goto_69

    .line 104
    :catch_60
    move-exception v8

    goto :goto_69

    .line 93
    :catch_62
    move-exception v8

    .line 96
    .local v8, "ex":Ljava/lang/SecurityException;
    :try_start_63
    invoke-interface {v7}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_66
    .catch Ljava/lang/SecurityException; {:try_start_63 .. :try_end_66} :catch_77
    .catch Ljava/lang/NullPointerException; {:try_start_63 .. :try_end_66} :catch_67

    .line 103
    goto :goto_5f

    .line 101
    :catch_67
    move-exception v9

    goto :goto_5f

    .line 109
    .end local v8    # "ex":Ljava/lang/SecurityException;
    :goto_69
    const-wide/16 v8, 0x64

    :try_start_6b
    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v7, v8, v9, v10}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v8
    :try_end_71
    .catch Ljava/lang/InterruptedException; {:try_start_6b .. :try_end_71} :catch_74

    if-eqz v8, :cond_76

    .line 110
    goto :goto_79

    .line 112
    :catch_74
    move-exception v8

    .line 113
    .local v8, "ex":Ljava/lang/InterruptedException;
    const/4 v3, 0x1

    .line 114
    .end local v8    # "ex":Ljava/lang/InterruptedException;
    :cond_76
    goto :goto_5c

    .line 97
    .local v8, "ex":Ljava/lang/SecurityException;
    :catch_77
    move-exception v9

    .line 100
    .local v9, "ex2":Ljava/lang/SecurityException;
    nop

    .line 84
    .end local v6    # "e":Ljava/util/concurrent/Executor;
    .end local v7    # "es":Ljava/util/concurrent/ExecutorService;
    .end local v8    # "ex":Ljava/lang/SecurityException;
    .end local v9    # "ex2":Ljava/lang/SecurityException;
    :goto_79
    add-int/lit8 v1, v1, 0x1

    goto :goto_50

    .line 118
    .end local v1    # "i$":I
    .end local v4    # "arr$":[Ljava/util/concurrent/Executor;
    .end local v5    # "len$":I
    :cond_7c
    if-eqz v3, :cond_85

    .line 119
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 121
    :cond_85
    return-void

    .line 57
    .end local v0    # "executorsCopy":[Ljava/util/concurrent/Executor;
    .end local v2    # "currentParent":Ljava/util/concurrent/Executor;
    .end local v3    # "interrupted":Z
    :cond_86
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "executors"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs terminate([Ljava/util/concurrent/Executor;)V
    .registers 2
    .param p0, "executors"    # [Ljava/util/concurrent/Executor;

    .line 49
    sget-object v0, Lorg/jboss/netty/util/internal/DeadLockProofWorker;->PARENT:Ljava/lang/ThreadLocal;

    invoke-static {v0, p0}, Lorg/jboss/netty/util/internal/ExecutorUtil;->terminate(Ljava/lang/ThreadLocal;[Ljava/util/concurrent/Executor;)V

    .line 50
    return-void
.end method
