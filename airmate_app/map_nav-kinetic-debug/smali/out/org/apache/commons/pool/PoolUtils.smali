.class public final Lorg/apache/commons/pool/PoolUtils;
.super Ljava/lang/Object;
.source "PoolUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/pool/PoolUtils$ErodingPerKeyKeyedObjectPool;,
        Lorg/apache/commons/pool/PoolUtils$ErodingKeyedObjectPool;,
        Lorg/apache/commons/pool/PoolUtils$ErodingObjectPool;,
        Lorg/apache/commons/pool/PoolUtils$ErodingFactor;,
        Lorg/apache/commons/pool/PoolUtils$SynchronizedKeyedPoolableObjectFactory;,
        Lorg/apache/commons/pool/PoolUtils$SynchronizedPoolableObjectFactory;,
        Lorg/apache/commons/pool/PoolUtils$SynchronizedKeyedObjectPool;,
        Lorg/apache/commons/pool/PoolUtils$SynchronizedObjectPool;,
        Lorg/apache/commons/pool/PoolUtils$KeyedObjectPoolMinIdleTimerTask;,
        Lorg/apache/commons/pool/PoolUtils$ObjectPoolMinIdleTimerTask;,
        Lorg/apache/commons/pool/PoolUtils$CheckedKeyedObjectPool;,
        Lorg/apache/commons/pool/PoolUtils$CheckedObjectPool;,
        Lorg/apache/commons/pool/PoolUtils$KeyedObjectPoolAdaptor;,
        Lorg/apache/commons/pool/PoolUtils$ObjectPoolAdaptor;,
        Lorg/apache/commons/pool/PoolUtils$KeyedPoolableObjectFactoryAdaptor;,
        Lorg/apache/commons/pool/PoolUtils$PoolableObjectFactoryAdaptor;
    }
.end annotation


# static fields
.field private static MIN_IDLE_TIMER:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method public static adapt(Lorg/apache/commons/pool/ObjectPool;)Lorg/apache/commons/pool/KeyedObjectPool;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/pool/ObjectPool<",
            "TV;>;)",
            "Lorg/apache/commons/pool/KeyedObjectPool<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 164
    .local p0, "pool":Lorg/apache/commons/pool/ObjectPool;, "Lorg/apache/commons/pool/ObjectPool<TV;>;"
    new-instance v0, Lorg/apache/commons/pool/PoolUtils$KeyedObjectPoolAdaptor;

    invoke-direct {v0, p0}, Lorg/apache/commons/pool/PoolUtils$KeyedObjectPoolAdaptor;-><init>(Lorg/apache/commons/pool/ObjectPool;)V

    return-object v0
.end method

.method public static adapt(Lorg/apache/commons/pool/PoolableObjectFactory;)Lorg/apache/commons/pool/KeyedPoolableObjectFactory;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/pool/PoolableObjectFactory<",
            "TV;>;)",
            "Lorg/apache/commons/pool/KeyedPoolableObjectFactory<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 118
    .local p0, "factory":Lorg/apache/commons/pool/PoolableObjectFactory;, "Lorg/apache/commons/pool/PoolableObjectFactory<TV;>;"
    new-instance v0, Lorg/apache/commons/pool/PoolUtils$KeyedPoolableObjectFactoryAdaptor;

    invoke-direct {v0, p0}, Lorg/apache/commons/pool/PoolUtils$KeyedPoolableObjectFactoryAdaptor;-><init>(Lorg/apache/commons/pool/PoolableObjectFactory;)V

    return-object v0
.end method

.method public static adapt(Lorg/apache/commons/pool/KeyedObjectPool;)Lorg/apache/commons/pool/ObjectPool;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/pool/KeyedObjectPool<",
            "Ljava/lang/Object;",
            "TV;>;)",
            "Lorg/apache/commons/pool/ObjectPool<",
            "TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 133
    .local p0, "keyedPool":Lorg/apache/commons/pool/KeyedObjectPool;, "Lorg/apache/commons/pool/KeyedObjectPool<Ljava/lang/Object;TV;>;"
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0, v0}, Lorg/apache/commons/pool/PoolUtils;->adapt(Lorg/apache/commons/pool/KeyedObjectPool;Ljava/lang/Object;)Lorg/apache/commons/pool/ObjectPool;

    move-result-object v0

    return-object v0
.end method

.method public static adapt(Lorg/apache/commons/pool/KeyedObjectPool;Ljava/lang/Object;)Lorg/apache/commons/pool/ObjectPool;
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/pool/KeyedObjectPool<",
            "Ljava/lang/Object;",
            "TV;>;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/commons/pool/ObjectPool<",
            "TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 149
    .local p0, "keyedPool":Lorg/apache/commons/pool/KeyedObjectPool;, "Lorg/apache/commons/pool/KeyedObjectPool<Ljava/lang/Object;TV;>;"
    new-instance v0, Lorg/apache/commons/pool/PoolUtils$ObjectPoolAdaptor;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/pool/PoolUtils$ObjectPoolAdaptor;-><init>(Lorg/apache/commons/pool/KeyedObjectPool;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static adapt(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;)Lorg/apache/commons/pool/PoolableObjectFactory;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/pool/KeyedPoolableObjectFactory<",
            "Ljava/lang/Object;",
            "TV;>;)",
            "Lorg/apache/commons/pool/PoolableObjectFactory<",
            "TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 86
    .local p0, "keyedFactory":Lorg/apache/commons/pool/KeyedPoolableObjectFactory;, "Lorg/apache/commons/pool/KeyedPoolableObjectFactory<Ljava/lang/Object;TV;>;"
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0, v0}, Lorg/apache/commons/pool/PoolUtils;->adapt(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;Ljava/lang/Object;)Lorg/apache/commons/pool/PoolableObjectFactory;

    move-result-object v0

    return-object v0
.end method

.method public static adapt(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;Ljava/lang/Object;)Lorg/apache/commons/pool/PoolableObjectFactory;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/pool/KeyedPoolableObjectFactory<",
            "TK;TV;>;TK;)",
            "Lorg/apache/commons/pool/PoolableObjectFactory<",
            "TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 103
    .local p0, "keyedFactory":Lorg/apache/commons/pool/KeyedPoolableObjectFactory;, "Lorg/apache/commons/pool/KeyedPoolableObjectFactory<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    new-instance v0, Lorg/apache/commons/pool/PoolUtils$PoolableObjectFactoryAdaptor;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/pool/PoolUtils$PoolableObjectFactoryAdaptor;-><init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static checkMinIdle(Lorg/apache/commons/pool/KeyedObjectPool;Ljava/util/Collection;IJ)Ljava/util/Map;
    .registers 9
    .param p2, "minIdle"    # I
    .param p3, "period"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/pool/KeyedObjectPool<",
            "TK;TV;>;",
            "Ljava/util/Collection<",
            "+TK;>;IJ)",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/TimerTask;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 287
    .local p0, "keyedPool":Lorg/apache/commons/pool/KeyedObjectPool;, "Lorg/apache/commons/pool/KeyedObjectPool<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    if-eqz p1, :cond_22

    .line 290
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 291
    .local v0, "tasks":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/TimerTask;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 292
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<+TK;>;"
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 293
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 294
    .local v2, "key":Ljava/lang/Object;, "TK;"
    invoke-static {p0, v2, p2, p3, p4}, Lorg/apache/commons/pool/PoolUtils;->checkMinIdle(Lorg/apache/commons/pool/KeyedObjectPool;Ljava/lang/Object;IJ)Ljava/util/TimerTask;

    move-result-object v3

    .line 295
    .local v3, "task":Ljava/util/TimerTask;
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    .end local v3    # "task":Ljava/util/TimerTask;
    goto :goto_f

    .line 297
    :cond_21
    return-object v0

    .line 288
    .end local v0    # "tasks":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/TimerTask;>;"
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<+TK;>;"
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keys must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkMinIdle(Lorg/apache/commons/pool/KeyedObjectPool;Ljava/lang/Object;IJ)Ljava/util/TimerTask;
    .registers 12
    .param p2, "minIdle"    # I
    .param p3, "period"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/pool/KeyedObjectPool<",
            "TK;TV;>;TK;IJ)",
            "Ljava/util/TimerTask;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 254
    .local p0, "keyedPool":Lorg/apache/commons/pool/KeyedObjectPool;, "Lorg/apache/commons/pool/KeyedObjectPool<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    if-eqz p0, :cond_27

    .line 257
    if-eqz p1, :cond_1f

    .line 260
    if-ltz p2, :cond_17

    .line 263
    new-instance v0, Lorg/apache/commons/pool/PoolUtils$KeyedObjectPoolMinIdleTimerTask;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/pool/PoolUtils$KeyedObjectPoolMinIdleTimerTask;-><init>(Lorg/apache/commons/pool/KeyedObjectPool;Ljava/lang/Object;I)V

    .line 264
    .local v0, "task":Ljava/util/TimerTask;
    invoke-static {}, Lorg/apache/commons/pool/PoolUtils;->getMinIdleTimer()Ljava/util/Timer;

    move-result-object v1

    const-wide/16 v3, 0x0

    move-object v2, v0

    move-wide v5, p3

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 265
    return-object v0

    .line 261
    .end local v0    # "task":Ljava/util/TimerTask;
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "minIdle must be non-negative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keyedPool must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkMinIdle(Lorg/apache/commons/pool/ObjectPool;IJ)Ljava/util/TimerTask;
    .registers 11
    .param p1, "minIdle"    # I
    .param p2, "period"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/pool/ObjectPool<",
            "TT;>;IJ)",
            "Ljava/util/TimerTask;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 224
    .local p0, "pool":Lorg/apache/commons/pool/ObjectPool;, "Lorg/apache/commons/pool/ObjectPool<TT;>;"
    if-eqz p0, :cond_1d

    .line 227
    if-ltz p1, :cond_15

    .line 230
    new-instance v0, Lorg/apache/commons/pool/PoolUtils$ObjectPoolMinIdleTimerTask;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/pool/PoolUtils$ObjectPoolMinIdleTimerTask;-><init>(Lorg/apache/commons/pool/ObjectPool;I)V

    .line 231
    .local v0, "task":Ljava/util/TimerTask;
    invoke-static {}, Lorg/apache/commons/pool/PoolUtils;->getMinIdleTimer()Ljava/util/Timer;

    move-result-object v1

    const-wide/16 v3, 0x0

    move-object v2, v0

    move-wide v5, p2

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 232
    return-object v0

    .line 228
    .end local v0    # "task":Ljava/util/TimerTask;
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "minIdle must be non-negative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keyedPool must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkRethrow(Ljava/lang/Throwable;)V
    .registers 2
    .param p0, "t"    # Ljava/lang/Throwable;

    .line 64
    instance-of v0, p0, Ljava/lang/ThreadDeath;

    if-nez v0, :cond_d

    .line 67
    instance-of v0, p0, Ljava/lang/VirtualMachineError;

    if-nez v0, :cond_9

    .line 71
    return-void

    .line 68
    :cond_9
    move-object v0, p0

    check-cast v0, Ljava/lang/VirtualMachineError;

    throw v0

    .line 65
    :cond_d
    move-object v0, p0

    check-cast v0, Ljava/lang/ThreadDeath;

    throw v0
.end method

.method public static checkedPool(Lorg/apache/commons/pool/KeyedObjectPool;Ljava/lang/Class;)Lorg/apache/commons/pool/KeyedObjectPool;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/pool/KeyedObjectPool<",
            "TK;TV;>;",
            "Ljava/lang/Class<",
            "TV;>;)",
            "Lorg/apache/commons/pool/KeyedObjectPool<",
            "TK;TV;>;"
        }
    .end annotation

    .line 199
    .local p0, "keyedPool":Lorg/apache/commons/pool/KeyedObjectPool;, "Lorg/apache/commons/pool/KeyedObjectPool<TK;TV;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    if-eqz p0, :cond_12

    .line 202
    if-eqz p1, :cond_a

    .line 205
    new-instance v0, Lorg/apache/commons/pool/PoolUtils$CheckedKeyedObjectPool;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/pool/PoolUtils$CheckedKeyedObjectPool;-><init>(Lorg/apache/commons/pool/KeyedObjectPool;Ljava/lang/Class;)V

    return-object v0

    .line 203
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "type must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keyedPool must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkedPool(Lorg/apache/commons/pool/ObjectPool;Ljava/lang/Class;)Lorg/apache/commons/pool/ObjectPool;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/pool/ObjectPool<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lorg/apache/commons/pool/ObjectPool<",
            "TT;>;"
        }
    .end annotation

    .line 178
    .local p0, "pool":Lorg/apache/commons/pool/ObjectPool;, "Lorg/apache/commons/pool/ObjectPool<TT;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-eqz p0, :cond_12

    .line 181
    if-eqz p1, :cond_a

    .line 184
    new-instance v0, Lorg/apache/commons/pool/PoolUtils$CheckedObjectPool;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/pool/PoolUtils$CheckedObjectPool;-><init>(Lorg/apache/commons/pool/ObjectPool;Ljava/lang/Class;)V

    return-object v0

    .line 182
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "type must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pool must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static erodingPool(Lorg/apache/commons/pool/KeyedObjectPool;)Lorg/apache/commons/pool/KeyedObjectPool;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/pool/KeyedObjectPool<",
            "TK;TV;>;)",
            "Lorg/apache/commons/pool/KeyedObjectPool<",
            "TK;TV;>;"
        }
    .end annotation

    .line 521
    .local p0, "keyedPool":Lorg/apache/commons/pool/KeyedObjectPool;, "Lorg/apache/commons/pool/KeyedObjectPool<TK;TV;>;"
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, v0}, Lorg/apache/commons/pool/PoolUtils;->erodingPool(Lorg/apache/commons/pool/KeyedObjectPool;F)Lorg/apache/commons/pool/KeyedObjectPool;

    move-result-object v0

    return-object v0
.end method

.method public static erodingPool(Lorg/apache/commons/pool/KeyedObjectPool;F)Lorg/apache/commons/pool/KeyedObjectPool;
    .registers 3
    .param p1, "factor"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/pool/KeyedObjectPool<",
            "TK;TV;>;F)",
            "Lorg/apache/commons/pool/KeyedObjectPool<",
            "TK;TV;>;"
        }
    .end annotation

    .line 548
    .local p0, "keyedPool":Lorg/apache/commons/pool/KeyedObjectPool;, "Lorg/apache/commons/pool/KeyedObjectPool<TK;TV;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/pool/PoolUtils;->erodingPool(Lorg/apache/commons/pool/KeyedObjectPool;FZ)Lorg/apache/commons/pool/KeyedObjectPool;

    move-result-object v0

    return-object v0
.end method

.method public static erodingPool(Lorg/apache/commons/pool/KeyedObjectPool;FZ)Lorg/apache/commons/pool/KeyedObjectPool;
    .registers 5
    .param p1, "factor"    # F
    .param p2, "perKey"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/pool/KeyedObjectPool<",
            "TK;TV;>;FZ)",
            "Lorg/apache/commons/pool/KeyedObjectPool<",
            "TK;TV;>;"
        }
    .end annotation

    .line 583
    .local p0, "keyedPool":Lorg/apache/commons/pool/KeyedObjectPool;, "Lorg/apache/commons/pool/KeyedObjectPool<TK;TV;>;"
    if-eqz p0, :cond_1d

    .line 586
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_15

    .line 589
    if-eqz p2, :cond_f

    .line 590
    new-instance v0, Lorg/apache/commons/pool/PoolUtils$ErodingPerKeyKeyedObjectPool;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/pool/PoolUtils$ErodingPerKeyKeyedObjectPool;-><init>(Lorg/apache/commons/pool/KeyedObjectPool;F)V

    return-object v0

    .line 592
    :cond_f
    new-instance v0, Lorg/apache/commons/pool/PoolUtils$ErodingKeyedObjectPool;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/pool/PoolUtils$ErodingKeyedObjectPool;-><init>(Lorg/apache/commons/pool/KeyedObjectPool;F)V

    return-object v0

    .line 587
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "factor must be positive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 584
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keyedPool must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static erodingPool(Lorg/apache/commons/pool/ObjectPool;)Lorg/apache/commons/pool/ObjectPool;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/pool/ObjectPool<",
            "TT;>;)",
            "Lorg/apache/commons/pool/ObjectPool<",
            "TT;>;"
        }
    .end annotation

    .line 471
    .local p0, "pool":Lorg/apache/commons/pool/ObjectPool;, "Lorg/apache/commons/pool/ObjectPool<TT;>;"
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, v0}, Lorg/apache/commons/pool/PoolUtils;->erodingPool(Lorg/apache/commons/pool/ObjectPool;F)Lorg/apache/commons/pool/ObjectPool;

    move-result-object v0

    return-object v0
.end method

.method public static erodingPool(Lorg/apache/commons/pool/ObjectPool;F)Lorg/apache/commons/pool/ObjectPool;
    .registers 4
    .param p1, "factor"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/pool/ObjectPool<",
            "TT;>;F)",
            "Lorg/apache/commons/pool/ObjectPool<",
            "TT;>;"
        }
    .end annotation

    .line 496
    .local p0, "pool":Lorg/apache/commons/pool/ObjectPool;, "Lorg/apache/commons/pool/ObjectPool<TT;>;"
    if-eqz p0, :cond_15

    .line 499
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_d

    .line 502
    new-instance v0, Lorg/apache/commons/pool/PoolUtils$ErodingObjectPool;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/pool/PoolUtils$ErodingObjectPool;-><init>(Lorg/apache/commons/pool/ObjectPool;F)V

    return-object v0

    .line 500
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "factor must be positive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 497
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pool must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static declared-synchronized getMinIdleTimer()Ljava/util/Timer;
    .registers 3

    const-class v0, Lorg/apache/commons/pool/PoolUtils;

    monitor-enter v0

    .line 603
    :try_start_3
    sget-object v1, Lorg/apache/commons/pool/PoolUtils;->MIN_IDLE_TIMER:Ljava/util/Timer;

    if-nez v1, :cond_f

    .line 604
    new-instance v1, Ljava/util/Timer;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/Timer;-><init>(Z)V

    sput-object v1, Lorg/apache/commons/pool/PoolUtils;->MIN_IDLE_TIMER:Ljava/util/Timer;

    .line 606
    :cond_f
    sget-object v1, Lorg/apache/commons/pool/PoolUtils;->MIN_IDLE_TIMER:Ljava/util/Timer;
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_13

    monitor-exit v0

    return-object v1

    .line 602
    :catchall_13
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static prefill(Lorg/apache/commons/pool/KeyedObjectPool;Ljava/lang/Object;I)V
    .registers 5
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/pool/KeyedObjectPool<",
            "TK;TV;>;TK;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 333
    .local p0, "keyedPool":Lorg/apache/commons/pool/KeyedObjectPool;, "Lorg/apache/commons/pool/KeyedObjectPool<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    if-eqz p0, :cond_16

    .line 336
    if-eqz p1, :cond_e

    .line 339
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    if-ge v0, p2, :cond_d

    .line 340
    invoke-interface {p0, p1}, Lorg/apache/commons/pool/KeyedObjectPool;->addObject(Ljava/lang/Object;)V

    .line 339
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 342
    .end local v0    # "i":I
    :cond_d
    return-void

    .line 337
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 334
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keyedPool must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static prefill(Lorg/apache/commons/pool/KeyedObjectPool;Ljava/util/Collection;I)V
    .registers 5
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/pool/KeyedObjectPool<",
            "TK;TV;>;",
            "Ljava/util/Collection<",
            "+TK;>;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 361
    .local p0, "keyedPool":Lorg/apache/commons/pool/KeyedObjectPool;, "Lorg/apache/commons/pool/KeyedObjectPool<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    if-eqz p1, :cond_15

    .line 364
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 365
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<+TK;>;"
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 366
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v1, p2}, Lorg/apache/commons/pool/PoolUtils;->prefill(Lorg/apache/commons/pool/KeyedObjectPool;Ljava/lang/Object;I)V

    goto :goto_6

    .line 368
    :cond_14
    return-void

    .line 362
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<+TK;>;"
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keys must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static prefill(Lorg/apache/commons/pool/ObjectPool;I)V
    .registers 4
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/pool/ObjectPool<",
            "TT;>;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 311
    .local p0, "pool":Lorg/apache/commons/pool/ObjectPool;, "Lorg/apache/commons/pool/ObjectPool<TT;>;"
    if-eqz p0, :cond_c

    .line 314
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    if-ge v0, p1, :cond_b

    .line 315
    invoke-interface {p0}, Lorg/apache/commons/pool/ObjectPool;->addObject()V

    .line 314
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 317
    .end local v0    # "i":I
    :cond_b
    return-void

    .line 312
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pool must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synchronizedPool(Lorg/apache/commons/pool/KeyedObjectPool;)Lorg/apache/commons/pool/KeyedObjectPool;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/pool/KeyedObjectPool<",
            "TK;TV;>;)",
            "Lorg/apache/commons/pool/KeyedObjectPool<",
            "TK;TV;>;"
        }
    .end annotation

    .line 419
    .local p0, "keyedPool":Lorg/apache/commons/pool/KeyedObjectPool;, "Lorg/apache/commons/pool/KeyedObjectPool<TK;TV;>;"
    if-eqz p0, :cond_8

    .line 430
    new-instance v0, Lorg/apache/commons/pool/PoolUtils$SynchronizedKeyedObjectPool;

    invoke-direct {v0, p0}, Lorg/apache/commons/pool/PoolUtils$SynchronizedKeyedObjectPool;-><init>(Lorg/apache/commons/pool/KeyedObjectPool;)V

    return-object v0

    .line 420
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keyedPool must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synchronizedPool(Lorg/apache/commons/pool/ObjectPool;)Lorg/apache/commons/pool/ObjectPool;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/pool/ObjectPool<",
            "TT;>;)",
            "Lorg/apache/commons/pool/ObjectPool<",
            "TT;>;"
        }
    .end annotation

    .line 386
    .local p0, "pool":Lorg/apache/commons/pool/ObjectPool;, "Lorg/apache/commons/pool/ObjectPool<TT;>;"
    if-eqz p0, :cond_8

    .line 399
    new-instance v0, Lorg/apache/commons/pool/PoolUtils$SynchronizedObjectPool;

    invoke-direct {v0, p0}, Lorg/apache/commons/pool/PoolUtils$SynchronizedObjectPool;-><init>(Lorg/apache/commons/pool/ObjectPool;)V

    return-object v0

    .line 387
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pool must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synchronizedPoolableFactory(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;)Lorg/apache/commons/pool/KeyedPoolableObjectFactory;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/pool/KeyedPoolableObjectFactory<",
            "TK;TV;>;)",
            "Lorg/apache/commons/pool/KeyedPoolableObjectFactory<",
            "TK;TV;>;"
        }
    .end annotation

    .line 455
    .local p0, "keyedFactory":Lorg/apache/commons/pool/KeyedPoolableObjectFactory;, "Lorg/apache/commons/pool/KeyedPoolableObjectFactory<TK;TV;>;"
    new-instance v0, Lorg/apache/commons/pool/PoolUtils$SynchronizedKeyedPoolableObjectFactory;

    invoke-direct {v0, p0}, Lorg/apache/commons/pool/PoolUtils$SynchronizedKeyedPoolableObjectFactory;-><init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;)V

    return-object v0
.end method

.method public static synchronizedPoolableFactory(Lorg/apache/commons/pool/PoolableObjectFactory;)Lorg/apache/commons/pool/PoolableObjectFactory;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/pool/PoolableObjectFactory<",
            "TT;>;)",
            "Lorg/apache/commons/pool/PoolableObjectFactory<",
            "TT;>;"
        }
    .end annotation

    .line 442
    .local p0, "factory":Lorg/apache/commons/pool/PoolableObjectFactory;, "Lorg/apache/commons/pool/PoolableObjectFactory<TT;>;"
    new-instance v0, Lorg/apache/commons/pool/PoolUtils$SynchronizedPoolableObjectFactory;

    invoke-direct {v0, p0}, Lorg/apache/commons/pool/PoolUtils$SynchronizedPoolableObjectFactory;-><init>(Lorg/apache/commons/pool/PoolableObjectFactory;)V

    return-object v0
.end method
