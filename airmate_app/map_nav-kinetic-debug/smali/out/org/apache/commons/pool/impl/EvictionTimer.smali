.class Lorg/apache/commons/pool/impl/EvictionTimer;
.super Ljava/lang/Object;
.source "EvictionTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/pool/impl/EvictionTimer$PrivilegedSetTccl;,
        Lorg/apache/commons/pool/impl/EvictionTimer$PrivilegedGetTccl;
    }
.end annotation


# static fields
.field private static _timer:Ljava/util/Timer;

.field private static _usageCount:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method static declared-synchronized cancel(Ljava/util/TimerTask;)V
    .registers 3
    .param p0, "task"    # Ljava/util/TimerTask;

    const-class v0, Lorg/apache/commons/pool/impl/EvictionTimer;

    monitor-enter v0

    .line 84
    :try_start_3
    invoke-virtual {p0}, Ljava/util/TimerTask;->cancel()Z

    .line 85
    sget v1, Lorg/apache/commons/pool/impl/EvictionTimer;->_usageCount:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lorg/apache/commons/pool/impl/EvictionTimer;->_usageCount:I

    .line 86
    sget v1, Lorg/apache/commons/pool/impl/EvictionTimer;->_usageCount:I

    if-nez v1, :cond_18

    .line 87
    sget-object v1, Lorg/apache/commons/pool/impl/EvictionTimer;->_timer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 88
    const/4 v1, 0x0

    sput-object v1, Lorg/apache/commons/pool/impl/EvictionTimer;->_timer:Ljava/util/Timer;
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1a

    .line 90
    :cond_18
    monitor-exit v0

    return-void

    .line 83
    .end local p0    # "task":Ljava/util/TimerTask;
    :catchall_1a
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static declared-synchronized schedule(Ljava/util/TimerTask;JJ)V
    .registers 13
    .param p0, "task"    # Ljava/util/TimerTask;
    .param p1, "delay"    # J
    .param p3, "period"    # J

    const-class v0, Lorg/apache/commons/pool/impl/EvictionTimer;

    monitor-enter v0

    .line 62
    :try_start_3
    sget-object v1, Lorg/apache/commons/pool/impl/EvictionTimer;->_timer:Ljava/util/Timer;

    const/4 v2, 0x1

    if-nez v1, :cond_3c

    .line 65
    new-instance v1, Lorg/apache/commons/pool/impl/EvictionTimer$PrivilegedGetTccl;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lorg/apache/commons/pool/impl/EvictionTimer$PrivilegedGetTccl;-><init>(Lorg/apache/commons/pool/impl/EvictionTimer$1;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ClassLoader;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_4b

    .line 68
    .local v1, "ccl":Ljava/lang/ClassLoader;
    :try_start_14
    new-instance v3, Lorg/apache/commons/pool/impl/EvictionTimer$PrivilegedSetTccl;

    const-class v4, Lorg/apache/commons/pool/impl/EvictionTimer;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/commons/pool/impl/EvictionTimer$PrivilegedSetTccl;-><init>(Ljava/lang/ClassLoader;)V

    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 70
    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3, v2}, Ljava/util/Timer;-><init>(Z)V

    sput-object v3, Lorg/apache/commons/pool/impl/EvictionTimer;->_timer:Ljava/util/Timer;
    :try_end_29
    .catchall {:try_start_14 .. :try_end_29} :catchall_32

    .line 72
    :try_start_29
    new-instance v3, Lorg/apache/commons/pool/impl/EvictionTimer$PrivilegedSetTccl;

    invoke-direct {v3, v1}, Lorg/apache/commons/pool/impl/EvictionTimer$PrivilegedSetTccl;-><init>(Ljava/lang/ClassLoader;)V

    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 73
    goto :goto_3c

    .line 72
    :catchall_32
    move-exception v2

    new-instance v3, Lorg/apache/commons/pool/impl/EvictionTimer$PrivilegedSetTccl;

    invoke-direct {v3, v1}, Lorg/apache/commons/pool/impl/EvictionTimer$PrivilegedSetTccl;-><init>(Ljava/lang/ClassLoader;)V

    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    throw v2

    .line 75
    .end local v1    # "ccl":Ljava/lang/ClassLoader;
    :cond_3c
    :goto_3c
    sget v1, Lorg/apache/commons/pool/impl/EvictionTimer;->_usageCount:I

    add-int/2addr v1, v2

    sput v1, Lorg/apache/commons/pool/impl/EvictionTimer;->_usageCount:I

    .line 76
    sget-object v2, Lorg/apache/commons/pool/impl/EvictionTimer;->_timer:Ljava/util/Timer;

    move-object v3, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_49
    .catchall {:try_start_29 .. :try_end_49} :catchall_4b

    .line 77
    monitor-exit v0

    return-void

    .line 61
    .end local p0    # "task":Ljava/util/TimerTask;
    .end local p1    # "delay":J
    .end local p3    # "period":J
    :catchall_4b
    move-exception p0

    monitor-exit v0

    throw p0
.end method
