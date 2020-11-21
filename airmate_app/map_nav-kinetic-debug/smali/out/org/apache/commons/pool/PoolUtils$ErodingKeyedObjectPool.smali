.class Lorg/apache/commons/pool/PoolUtils$ErodingKeyedObjectPool;
.super Ljava/lang/Object;
.source "PoolUtils.java"

# interfaces
.implements Lorg/apache/commons/pool/KeyedObjectPool;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/pool/PoolUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ErodingKeyedObjectPool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/pool/KeyedObjectPool<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final erodingFactor:Lorg/apache/commons/pool/PoolUtils$ErodingFactor;

.field private final keyedPool:Lorg/apache/commons/pool/KeyedObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/pool/KeyedObjectPool<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/pool/KeyedObjectPool;F)V
    .registers 4
    .param p2, "factor"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool/KeyedObjectPool<",
            "TK;TV;>;F)V"
        }
    .end annotation

    .line 2238
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$ErodingKeyedObjectPool;, "Lorg/apache/commons/pool/PoolUtils$ErodingKeyedObjectPool<TK;TV;>;"
    .local p1, "keyedPool":Lorg/apache/commons/pool/KeyedObjectPool;, "Lorg/apache/commons/pool/KeyedObjectPool<TK;TV;>;"
    new-instance v0, Lorg/apache/commons/pool/PoolUtils$ErodingFactor;

    invoke-direct {v0, p2}, Lorg/apache/commons/pool/PoolUtils$ErodingFactor;-><init>(F)V

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/pool/PoolUtils$ErodingKeyedObjectPool;-><init>(Lorg/apache/commons/pool/KeyedObjectPool;Lorg/apache/commons/pool/PoolUtils$ErodingFactor;)V

    .line 2239
    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/pool/KeyedObjectPool;Lorg/apache/commons/pool/PoolUtils$ErodingFactor;)V
    .registers 5
    .param p2, "erodingFactor"    # Lorg/apache/commons/pool/PoolUtils$ErodingFactor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool/KeyedObjectPool<",
            "TK;TV;>;",
            "Lorg/apache/commons/pool/PoolUtils$ErodingFactor;",
            ")V"
        }
    .end annotation

    .line 2248
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$ErodingKeyedObjectPool;, "Lorg/apache/commons/pool/PoolUtils$ErodingKeyedObjectPool<TK;TV;>;"
    .local p1, "keyedPool":Lorg/apache/commons/pool/KeyedObjectPool;, "Lorg/apache/commons/pool/KeyedObjectPool<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2249
    if-eqz p1, :cond_a

    .line 2252
    iput-object p1, p0, Lorg/apache/commons/pool/PoolUtils$ErodingKeyedObjectPool;->keyedPool:Lorg/apache/commons/pool/KeyedObjectPool;

    .line 2253
    iput-object p2, p0, Lorg/apache/commons/pool/PoolUtils$ErodingKeyedObjectPool;->erodingFactor:Lorg/apache/commons/pool/PoolUtils$ErodingFactor;

    .line 2254
    return-void

    .line 2250
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keyedPool must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addObject(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 2334
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$ErodingKeyedObjectPool;, "Lorg/apache/commons/pool/PoolUtils$ErodingKeyedObjectPool<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$ErodingKeyedObjectPool;->keyedPool:Lorg/apache/commons/pool/KeyedObjectPool;

    invoke-interface {v0, p1}, Lorg/apache/commons/pool/KeyedObjectPool;->addObject(Ljava/lang/Object;)V

    .line 2335
    return-void
.end method

.method public borrowObject(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/util/NoSuchElementException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 2260
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$ErodingKeyedObjectPool;, "Lorg/apache/commons/pool/PoolUtils$ErodingKeyedObjectPool<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$ErodingKeyedObjectPool;->keyedPool:Lorg/apache/commons/pool/KeyedObjectPool;

    invoke-interface {v0, p1}, Lorg/apache/commons/pool/KeyedObjectPool;->borrowObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 2369
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$ErodingKeyedObjectPool;, "Lorg/apache/commons/pool/PoolUtils$ErodingKeyedObjectPool<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$ErodingKeyedObjectPool;->keyedPool:Lorg/apache/commons/pool/KeyedObjectPool;

    invoke-interface {v0}, Lorg/apache/commons/pool/KeyedObjectPool;->clear()V

    .line 2370
    return-void
.end method

.method public clear(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 2376
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$ErodingKeyedObjectPool;, "Lorg/apache/commons/pool/PoolUtils$ErodingKeyedObjectPool<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$ErodingKeyedObjectPool;->keyedPool:Lorg/apache/commons/pool/KeyedObjectPool;

    invoke-interface {v0, p1}, Lorg/apache/commons/pool/KeyedObjectPool;->clear(Ljava/lang/Object;)V

    .line 2377
    return-void
.end method

.method public close()V
    .registers 2

    .line 2384
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$ErodingKeyedObjectPool;, "Lorg/apache/commons/pool/PoolUtils$ErodingKeyedObjectPool<TK;TV;>;"
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$ErodingKeyedObjectPool;->keyedPool:Lorg/apache/commons/pool/KeyedObjectPool;

    invoke-interface {v0}, Lorg/apache/commons/pool/KeyedObjectPool;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 2387
    goto :goto_7

    .line 2385
    :catch_6
    move-exception v0

    .line 2388
    :goto_7
    return-void
.end method

.method protected getErodingFactor(Ljava/lang/Object;)Lorg/apache/commons/pool/PoolUtils$ErodingFactor;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lorg/apache/commons/pool/PoolUtils$ErodingFactor;"
        }
    .end annotation

    .line 2316
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$ErodingKeyedObjectPool;, "Lorg/apache/commons/pool/PoolUtils$ErodingKeyedObjectPool<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$ErodingKeyedObjectPool;->erodingFactor:Lorg/apache/commons/pool/PoolUtils$ErodingFactor;

    return-object v0
.end method

.method protected getKeyedPool()Lorg/apache/commons/pool/KeyedObjectPool;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/pool/KeyedObjectPool<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2405
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$ErodingKeyedObjectPool;, "Lorg/apache/commons/pool/PoolUtils$ErodingKeyedObjectPool<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$ErodingKeyedObjectPool;->keyedPool:Lorg/apache/commons/pool/KeyedObjectPool;

    return-object v0
.end method

.method public getNumActive()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 2355
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$ErodingKeyedObjectPool;, "Lorg/apache/commons/pool/PoolUtils$ErodingKeyedObjectPool<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$ErodingKeyedObjectPool;->keyedPool:Lorg/apache/commons/pool/KeyedObjectPool;

    invoke-interface {v0}, Lorg/apache/commons/pool/KeyedObjectPool;->getNumActive()I

    move-result v0

    return v0
.end method

.method public getNumActive(Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 2362
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$ErodingKeyedObjectPool;, "Lorg/apache/commons/pool/PoolUtils$ErodingKeyedObjectPool<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$ErodingKeyedObjectPool;->keyedPool:Lorg/apache/commons/pool/KeyedObjectPool;

    invoke-interface {v0, p1}, Lorg/apache/commons/pool/KeyedObjectPool;->getNumActive(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getNumIdle()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 2341
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$ErodingKeyedObjectPool;, "Lorg/apache/commons/pool/PoolUtils$ErodingKeyedObjectPool<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$ErodingKeyedObjectPool;->keyedPool:Lorg/apache/commons/pool/KeyedObjectPool;

    invoke-interface {v0}, Lorg/apache/commons/pool/KeyedObjectPool;->getNumIdle()I

    move-result v0

    return v0
.end method

.method public getNumIdle(Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 2348
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$ErodingKeyedObjectPool;, "Lorg/apache/commons/pool/PoolUtils$ErodingKeyedObjectPool<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$ErodingKeyedObjectPool;->keyedPool:Lorg/apache/commons/pool/KeyedObjectPool;

    invoke-interface {v0, p1}, Lorg/apache/commons/pool/KeyedObjectPool;->getNumIdle(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public invalidateObject(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 2324
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$ErodingKeyedObjectPool;, "Lorg/apache/commons/pool/PoolUtils$ErodingKeyedObjectPool<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "obj":Ljava/lang/Object;, "TV;"
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$ErodingKeyedObjectPool;->keyedPool:Lorg/apache/commons/pool/KeyedObjectPool;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/pool/KeyedObjectPool;->invalidateObject(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 2327
    goto :goto_7

    .line 2325
    :catch_6
    move-exception v0

    .line 2328
    :goto_7
    return-void
.end method

.method protected numIdle(Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .line 2307
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$ErodingKeyedObjectPool;, "Lorg/apache/commons/pool/PoolUtils$ErodingKeyedObjectPool<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lorg/apache/commons/pool/PoolUtils$ErodingKeyedObjectPool;->getKeyedPool()Lorg/apache/commons/pool/KeyedObjectPool;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/pool/KeyedObjectPool;->getNumIdle()I

    move-result v0

    return v0
.end method

.method public returnObject(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2274
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$ErodingKeyedObjectPool;, "Lorg/apache/commons/pool/PoolUtils$ErodingKeyedObjectPool<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "obj":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x0

    .line 2275
    .local v0, "discard":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 2276
    .local v1, "now":J
    invoke-virtual {p0, p1}, Lorg/apache/commons/pool/PoolUtils$ErodingKeyedObjectPool;->getErodingFactor(Ljava/lang/Object;)Lorg/apache/commons/pool/PoolUtils$ErodingFactor;

    move-result-object v3

    .line 2277
    .local v3, "factor":Lorg/apache/commons/pool/PoolUtils$ErodingFactor;
    iget-object v4, p0, Lorg/apache/commons/pool/PoolUtils$ErodingKeyedObjectPool;->keyedPool:Lorg/apache/commons/pool/KeyedObjectPool;

    monitor-enter v4

    .line 2278
    :try_start_c
    invoke-virtual {v3}, Lorg/apache/commons/pool/PoolUtils$ErodingFactor;->getNextShrink()J

    move-result-wide v5

    cmp-long v7, v5, v1

    if-gez v7, :cond_1e

    .line 2279
    invoke-virtual {p0, p1}, Lorg/apache/commons/pool/PoolUtils$ErodingKeyedObjectPool;->numIdle(Ljava/lang/Object;)I

    move-result v5

    .line 2280
    .local v5, "numIdle":I
    if-lez v5, :cond_1b

    .line 2281
    const/4 v0, 0x1

    .line 2284
    :cond_1b
    invoke-virtual {v3, v1, v2, v5}, Lorg/apache/commons/pool/PoolUtils$ErodingFactor;->update(JI)V

    .line 2286
    .end local v5    # "numIdle":I
    :cond_1e
    monitor-exit v4
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_31

    .line 2288
    if-eqz v0, :cond_29

    .line 2289
    :try_start_21
    iget-object v4, p0, Lorg/apache/commons/pool/PoolUtils$ErodingKeyedObjectPool;->keyedPool:Lorg/apache/commons/pool/KeyedObjectPool;

    invoke-interface {v4, p1, p2}, Lorg/apache/commons/pool/KeyedObjectPool;->invalidateObject(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2e

    .line 2293
    :catch_27
    move-exception v4

    goto :goto_2f

    .line 2291
    :cond_29
    iget-object v4, p0, Lorg/apache/commons/pool/PoolUtils$ErodingKeyedObjectPool;->keyedPool:Lorg/apache/commons/pool/KeyedObjectPool;

    invoke-interface {v4, p1, p2}, Lorg/apache/commons/pool/KeyedObjectPool;->returnObject(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2e} :catch_27

    .line 2295
    :goto_2e
    goto :goto_30

    .line 2293
    :goto_2f
    nop

    .line 2296
    :goto_30
    return-void

    .line 2286
    :catchall_31
    move-exception v5

    :try_start_32
    monitor-exit v4
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v5
.end method

.method public setFactory(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool/KeyedPoolableObjectFactory<",
            "TK;TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2396
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$ErodingKeyedObjectPool;, "Lorg/apache/commons/pool/PoolUtils$ErodingKeyedObjectPool<TK;TV;>;"
    .local p1, "factory":Lorg/apache/commons/pool/KeyedPoolableObjectFactory;, "Lorg/apache/commons/pool/KeyedPoolableObjectFactory<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$ErodingKeyedObjectPool;->keyedPool:Lorg/apache/commons/pool/KeyedObjectPool;

    invoke-interface {v0, p1}, Lorg/apache/commons/pool/KeyedObjectPool;->setFactory(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;)V

    .line 2397
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 2413
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$ErodingKeyedObjectPool;, "Lorg/apache/commons/pool/PoolUtils$ErodingKeyedObjectPool<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ErodingKeyedObjectPool{erodingFactor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/pool/PoolUtils$ErodingKeyedObjectPool;->erodingFactor:Lorg/apache/commons/pool/PoolUtils$ErodingFactor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", keyedPool="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/pool/PoolUtils$ErodingKeyedObjectPool;->keyedPool:Lorg/apache/commons/pool/KeyedObjectPool;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
