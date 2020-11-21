.class Lorg/apache/commons/pool/PoolUtils$ErodingObjectPool;
.super Ljava/lang/Object;
.source "PoolUtils.java"

# interfaces
.implements Lorg/apache/commons/pool/ObjectPool;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/pool/PoolUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ErodingObjectPool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/pool/ObjectPool<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final factor:Lorg/apache/commons/pool/PoolUtils$ErodingFactor;

.field private final pool:Lorg/apache/commons/pool/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/pool/ObjectPool<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/pool/ObjectPool;F)V
    .registers 4
    .param p2, "factor"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool/ObjectPool<",
            "TT;>;F)V"
        }
    .end annotation

    .line 2101
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$ErodingObjectPool;, "Lorg/apache/commons/pool/PoolUtils$ErodingObjectPool<TT;>;"
    .local p1, "pool":Lorg/apache/commons/pool/ObjectPool;, "Lorg/apache/commons/pool/ObjectPool<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2102
    iput-object p1, p0, Lorg/apache/commons/pool/PoolUtils$ErodingObjectPool;->pool:Lorg/apache/commons/pool/ObjectPool;

    .line 2103
    new-instance v0, Lorg/apache/commons/pool/PoolUtils$ErodingFactor;

    invoke-direct {v0, p2}, Lorg/apache/commons/pool/PoolUtils$ErodingFactor;-><init>(F)V

    iput-object v0, p0, Lorg/apache/commons/pool/PoolUtils$ErodingObjectPool;->factor:Lorg/apache/commons/pool/PoolUtils$ErodingFactor;

    .line 2104
    return-void
.end method


# virtual methods
.method public addObject()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 2161
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$ErodingObjectPool;, "Lorg/apache/commons/pool/PoolUtils$ErodingObjectPool<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$ErodingObjectPool;->pool:Lorg/apache/commons/pool/ObjectPool;

    invoke-interface {v0}, Lorg/apache/commons/pool/ObjectPool;->addObject()V

    .line 2162
    return-void
.end method

.method public borrowObject()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/util/NoSuchElementException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 2110
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$ErodingObjectPool;, "Lorg/apache/commons/pool/PoolUtils$ErodingObjectPool<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$ErodingObjectPool;->pool:Lorg/apache/commons/pool/ObjectPool;

    invoke-interface {v0}, Lorg/apache/commons/pool/ObjectPool;->borrowObject()Ljava/lang/Object;

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

    .line 2182
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$ErodingObjectPool;, "Lorg/apache/commons/pool/PoolUtils$ErodingObjectPool<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$ErodingObjectPool;->pool:Lorg/apache/commons/pool/ObjectPool;

    invoke-interface {v0}, Lorg/apache/commons/pool/ObjectPool;->clear()V

    .line 2183
    return-void
.end method

.method public close()V
    .registers 2

    .line 2190
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$ErodingObjectPool;, "Lorg/apache/commons/pool/PoolUtils$ErodingObjectPool<TT;>;"
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$ErodingObjectPool;->pool:Lorg/apache/commons/pool/ObjectPool;

    invoke-interface {v0}, Lorg/apache/commons/pool/ObjectPool;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 2193
    goto :goto_7

    .line 2191
    :catch_6
    move-exception v0

    .line 2194
    :goto_7
    return-void
.end method

.method public getNumActive()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 2175
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$ErodingObjectPool;, "Lorg/apache/commons/pool/PoolUtils$ErodingObjectPool<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$ErodingObjectPool;->pool:Lorg/apache/commons/pool/ObjectPool;

    invoke-interface {v0}, Lorg/apache/commons/pool/ObjectPool;->getNumActive()I

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

    .line 2168
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$ErodingObjectPool;, "Lorg/apache/commons/pool/PoolUtils$ErodingObjectPool<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$ErodingObjectPool;->pool:Lorg/apache/commons/pool/ObjectPool;

    invoke-interface {v0}, Lorg/apache/commons/pool/ObjectPool;->getNumIdle()I

    move-result v0

    return v0
.end method

.method public invalidateObject(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 2151
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$ErodingObjectPool;, "Lorg/apache/commons/pool/PoolUtils$ErodingObjectPool<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$ErodingObjectPool;->pool:Lorg/apache/commons/pool/ObjectPool;

    invoke-interface {v0, p1}, Lorg/apache/commons/pool/ObjectPool;->invalidateObject(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 2154
    goto :goto_7

    .line 2152
    :catch_6
    move-exception v0

    .line 2155
    :goto_7
    return-void
.end method

.method public returnObject(Ljava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 2123
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$ErodingObjectPool;, "Lorg/apache/commons/pool/PoolUtils$ErodingObjectPool<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .line 2124
    .local v0, "discard":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 2125
    .local v1, "now":J
    iget-object v3, p0, Lorg/apache/commons/pool/PoolUtils$ErodingObjectPool;->pool:Lorg/apache/commons/pool/ObjectPool;

    monitor-enter v3

    .line 2126
    :try_start_8
    iget-object v4, p0, Lorg/apache/commons/pool/PoolUtils$ErodingObjectPool;->factor:Lorg/apache/commons/pool/PoolUtils$ErodingFactor;

    invoke-virtual {v4}, Lorg/apache/commons/pool/PoolUtils$ErodingFactor;->getNextShrink()J

    move-result-wide v4

    cmp-long v6, v4, v1

    if-gez v6, :cond_20

    .line 2127
    iget-object v4, p0, Lorg/apache/commons/pool/PoolUtils$ErodingObjectPool;->pool:Lorg/apache/commons/pool/ObjectPool;

    invoke-interface {v4}, Lorg/apache/commons/pool/ObjectPool;->getNumIdle()I

    move-result v4

    .line 2128
    .local v4, "numIdle":I
    if-lez v4, :cond_1b

    .line 2129
    const/4 v0, 0x1

    .line 2132
    :cond_1b
    iget-object v5, p0, Lorg/apache/commons/pool/PoolUtils$ErodingObjectPool;->factor:Lorg/apache/commons/pool/PoolUtils$ErodingFactor;

    invoke-virtual {v5, v1, v2, v4}, Lorg/apache/commons/pool/PoolUtils$ErodingFactor;->update(JI)V

    .line 2134
    .end local v4    # "numIdle":I
    :cond_20
    monitor-exit v3
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_33

    .line 2136
    if-eqz v0, :cond_2b

    .line 2137
    :try_start_23
    iget-object v3, p0, Lorg/apache/commons/pool/PoolUtils$ErodingObjectPool;->pool:Lorg/apache/commons/pool/ObjectPool;

    invoke-interface {v3, p1}, Lorg/apache/commons/pool/ObjectPool;->invalidateObject(Ljava/lang/Object;)V

    goto :goto_30

    .line 2141
    :catch_29
    move-exception v3

    goto :goto_31

    .line 2139
    :cond_2b
    iget-object v3, p0, Lorg/apache/commons/pool/PoolUtils$ErodingObjectPool;->pool:Lorg/apache/commons/pool/ObjectPool;

    invoke-interface {v3, p1}, Lorg/apache/commons/pool/ObjectPool;->returnObject(Ljava/lang/Object;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_30} :catch_29

    .line 2143
    :goto_30
    goto :goto_32

    .line 2141
    :goto_31
    nop

    .line 2144
    :goto_32
    return-void

    .line 2134
    :catchall_33
    move-exception v4

    :try_start_34
    monitor-exit v3
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v4
.end method

.method public setFactory(Lorg/apache/commons/pool/PoolableObjectFactory;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool/PoolableObjectFactory<",
            "TT;>;)V"
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

    .line 2202
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$ErodingObjectPool;, "Lorg/apache/commons/pool/PoolUtils$ErodingObjectPool<TT;>;"
    .local p1, "factory":Lorg/apache/commons/pool/PoolableObjectFactory;, "Lorg/apache/commons/pool/PoolableObjectFactory<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$ErodingObjectPool;->pool:Lorg/apache/commons/pool/ObjectPool;

    invoke-interface {v0, p1}, Lorg/apache/commons/pool/ObjectPool;->setFactory(Lorg/apache/commons/pool/PoolableObjectFactory;)V

    .line 2203
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 2210
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$ErodingObjectPool;, "Lorg/apache/commons/pool/PoolUtils$ErodingObjectPool<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ErodingObjectPool{factor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/pool/PoolUtils$ErodingObjectPool;->factor:Lorg/apache/commons/pool/PoolUtils$ErodingFactor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", pool="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/pool/PoolUtils$ErodingObjectPool;->pool:Lorg/apache/commons/pool/ObjectPool;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
