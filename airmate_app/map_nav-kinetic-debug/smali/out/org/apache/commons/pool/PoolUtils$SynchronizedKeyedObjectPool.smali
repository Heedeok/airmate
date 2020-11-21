.class Lorg/apache/commons/pool/PoolUtils$SynchronizedKeyedObjectPool;
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
    name = "SynchronizedKeyedObjectPool"
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
.field private final keyedPool:Lorg/apache/commons/pool/KeyedObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/pool/KeyedObjectPool<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/apache/commons/pool/KeyedObjectPool;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool/KeyedObjectPool<",
            "TK;TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1688
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$SynchronizedKeyedObjectPool;, "Lorg/apache/commons/pool/PoolUtils$SynchronizedKeyedObjectPool<TK;TV;>;"
    .local p1, "keyedPool":Lorg/apache/commons/pool/KeyedObjectPool;, "Lorg/apache/commons/pool/KeyedObjectPool<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1689
    if-eqz p1, :cond_f

    .line 1692
    iput-object p1, p0, Lorg/apache/commons/pool/PoolUtils$SynchronizedKeyedObjectPool;->keyedPool:Lorg/apache/commons/pool/KeyedObjectPool;

    .line 1693
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/pool/PoolUtils$SynchronizedKeyedObjectPool;->lock:Ljava/lang/Object;

    .line 1694
    return-void

    .line 1690
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keyedPool must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addObject(Ljava/lang/Object;)V
    .registers 4
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

    .line 1735
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$SynchronizedKeyedObjectPool;, "Lorg/apache/commons/pool/PoolUtils$SynchronizedKeyedObjectPool<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$SynchronizedKeyedObjectPool;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1736
    :try_start_3
    iget-object v1, p0, Lorg/apache/commons/pool/PoolUtils$SynchronizedKeyedObjectPool;->keyedPool:Lorg/apache/commons/pool/KeyedObjectPool;

    invoke-interface {v1, p1}, Lorg/apache/commons/pool/KeyedObjectPool;->addObject(Ljava/lang/Object;)V

    .line 1737
    monitor-exit v0

    .line 1738
    return-void

    .line 1737
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public borrowObject(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
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

    .line 1700
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$SynchronizedKeyedObjectPool;, "Lorg/apache/commons/pool/PoolUtils$SynchronizedKeyedObjectPool<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$SynchronizedKeyedObjectPool;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1701
    :try_start_3
    iget-object v1, p0, Lorg/apache/commons/pool/PoolUtils$SynchronizedKeyedObjectPool;->keyedPool:Lorg/apache/commons/pool/KeyedObjectPool;

    invoke-interface {v1, p1}, Lorg/apache/commons/pool/KeyedObjectPool;->borrowObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1702
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public clear()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 1780
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$SynchronizedKeyedObjectPool;, "Lorg/apache/commons/pool/PoolUtils$SynchronizedKeyedObjectPool<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$SynchronizedKeyedObjectPool;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1781
    :try_start_3
    iget-object v1, p0, Lorg/apache/commons/pool/PoolUtils$SynchronizedKeyedObjectPool;->keyedPool:Lorg/apache/commons/pool/KeyedObjectPool;

    invoke-interface {v1}, Lorg/apache/commons/pool/KeyedObjectPool;->clear()V

    .line 1782
    monitor-exit v0

    .line 1783
    return-void

    .line 1782
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public clear(Ljava/lang/Object;)V
    .registers 4
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

    .line 1789
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$SynchronizedKeyedObjectPool;, "Lorg/apache/commons/pool/PoolUtils$SynchronizedKeyedObjectPool<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$SynchronizedKeyedObjectPool;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1790
    :try_start_3
    iget-object v1, p0, Lorg/apache/commons/pool/PoolUtils$SynchronizedKeyedObjectPool;->keyedPool:Lorg/apache/commons/pool/KeyedObjectPool;

    invoke-interface {v1, p1}, Lorg/apache/commons/pool/KeyedObjectPool;->clear(Ljava/lang/Object;)V

    .line 1791
    monitor-exit v0

    .line 1792
    return-void

    .line 1791
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public close()V
    .registers 3

    .line 1799
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$SynchronizedKeyedObjectPool;, "Lorg/apache/commons/pool/PoolUtils$SynchronizedKeyedObjectPool<TK;TV;>;"
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$SynchronizedKeyedObjectPool;->lock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_d

    .line 1800
    :try_start_3
    iget-object v1, p0, Lorg/apache/commons/pool/PoolUtils$SynchronizedKeyedObjectPool;->keyedPool:Lorg/apache/commons/pool/KeyedObjectPool;

    invoke-interface {v1}, Lorg/apache/commons/pool/KeyedObjectPool;->close()V

    .line 1801
    monitor-exit v0

    .line 1804
    goto :goto_e

    .line 1801
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    :try_start_c
    throw v1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_d} :catch_d

    .line 1802
    :catch_d
    move-exception v0

    .line 1805
    :goto_e
    return-void
.end method

.method public getNumActive()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 1771
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$SynchronizedKeyedObjectPool;, "Lorg/apache/commons/pool/PoolUtils$SynchronizedKeyedObjectPool<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$SynchronizedKeyedObjectPool;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1772
    :try_start_3
    iget-object v1, p0, Lorg/apache/commons/pool/PoolUtils$SynchronizedKeyedObjectPool;->keyedPool:Lorg/apache/commons/pool/KeyedObjectPool;

    invoke-interface {v1}, Lorg/apache/commons/pool/KeyedObjectPool;->getNumActive()I

    move-result v1

    monitor-exit v0

    return v1

    .line 1773
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public getNumActive(Ljava/lang/Object;)I
    .registers 4
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

    .line 1753
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$SynchronizedKeyedObjectPool;, "Lorg/apache/commons/pool/PoolUtils$SynchronizedKeyedObjectPool<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$SynchronizedKeyedObjectPool;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1754
    :try_start_3
    iget-object v1, p0, Lorg/apache/commons/pool/PoolUtils$SynchronizedKeyedObjectPool;->keyedPool:Lorg/apache/commons/pool/KeyedObjectPool;

    invoke-interface {v1, p1}, Lorg/apache/commons/pool/KeyedObjectPool;->getNumActive(Ljava/lang/Object;)I

    move-result v1

    monitor-exit v0

    return v1

    .line 1755
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public getNumIdle()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 1762
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$SynchronizedKeyedObjectPool;, "Lorg/apache/commons/pool/PoolUtils$SynchronizedKeyedObjectPool<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$SynchronizedKeyedObjectPool;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1763
    :try_start_3
    iget-object v1, p0, Lorg/apache/commons/pool/PoolUtils$SynchronizedKeyedObjectPool;->keyedPool:Lorg/apache/commons/pool/KeyedObjectPool;

    invoke-interface {v1}, Lorg/apache/commons/pool/KeyedObjectPool;->getNumIdle()I

    move-result v1

    monitor-exit v0

    return v1

    .line 1764
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public getNumIdle(Ljava/lang/Object;)I
    .registers 4
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

    .line 1744
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$SynchronizedKeyedObjectPool;, "Lorg/apache/commons/pool/PoolUtils$SynchronizedKeyedObjectPool<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$SynchronizedKeyedObjectPool;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1745
    :try_start_3
    iget-object v1, p0, Lorg/apache/commons/pool/PoolUtils$SynchronizedKeyedObjectPool;->keyedPool:Lorg/apache/commons/pool/KeyedObjectPool;

    invoke-interface {v1, p1}, Lorg/apache/commons/pool/KeyedObjectPool;->getNumIdle(Ljava/lang/Object;)I

    move-result v1

    monitor-exit v0

    return v1

    .line 1746
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public invalidateObject(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 1722
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$SynchronizedKeyedObjectPool;, "Lorg/apache/commons/pool/PoolUtils$SynchronizedKeyedObjectPool<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "obj":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$SynchronizedKeyedObjectPool;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1724
    :try_start_3
    iget-object v1, p0, Lorg/apache/commons/pool/PoolUtils$SynchronizedKeyedObjectPool;->keyedPool:Lorg/apache/commons/pool/KeyedObjectPool;

    invoke-interface {v1, p1, p2}, Lorg/apache/commons/pool/KeyedObjectPool;->invalidateObject(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_b
    .catchall {:try_start_3 .. :try_end_8} :catchall_9

    .line 1727
    goto :goto_c

    .line 1728
    :catchall_9
    move-exception v1

    goto :goto_e

    .line 1725
    :catch_b
    move-exception v1

    .line 1728
    :goto_c
    :try_start_c
    monitor-exit v0

    .line 1729
    return-void

    .line 1728
    :goto_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_9

    throw v1
.end method

.method public returnObject(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 1709
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$SynchronizedKeyedObjectPool;, "Lorg/apache/commons/pool/PoolUtils$SynchronizedKeyedObjectPool<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "obj":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$SynchronizedKeyedObjectPool;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1711
    :try_start_3
    iget-object v1, p0, Lorg/apache/commons/pool/PoolUtils$SynchronizedKeyedObjectPool;->keyedPool:Lorg/apache/commons/pool/KeyedObjectPool;

    invoke-interface {v1, p1, p2}, Lorg/apache/commons/pool/KeyedObjectPool;->returnObject(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_b
    .catchall {:try_start_3 .. :try_end_8} :catchall_9

    .line 1714
    goto :goto_c

    .line 1715
    :catchall_9
    move-exception v1

    goto :goto_e

    .line 1712
    :catch_b
    move-exception v1

    .line 1715
    :goto_c
    :try_start_c
    monitor-exit v0

    .line 1716
    return-void

    .line 1715
    :goto_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_9

    throw v1
.end method

.method public setFactory(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;)V
    .registers 4
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

    .line 1815
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$SynchronizedKeyedObjectPool;, "Lorg/apache/commons/pool/PoolUtils$SynchronizedKeyedObjectPool<TK;TV;>;"
    .local p1, "factory":Lorg/apache/commons/pool/KeyedPoolableObjectFactory;, "Lorg/apache/commons/pool/KeyedPoolableObjectFactory<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$SynchronizedKeyedObjectPool;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1816
    :try_start_3
    iget-object v1, p0, Lorg/apache/commons/pool/PoolUtils$SynchronizedKeyedObjectPool;->keyedPool:Lorg/apache/commons/pool/KeyedObjectPool;

    invoke-interface {v1, p1}, Lorg/apache/commons/pool/KeyedObjectPool;->setFactory(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;)V

    .line 1817
    monitor-exit v0

    .line 1818
    return-void

    .line 1817
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1825
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$SynchronizedKeyedObjectPool;, "Lorg/apache/commons/pool/PoolUtils$SynchronizedKeyedObjectPool<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1826
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "SynchronizedKeyedObjectPool"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1827
    const-string v1, "{keyedPool="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/commons/pool/PoolUtils$SynchronizedKeyedObjectPool;->keyedPool:Lorg/apache/commons/pool/KeyedObjectPool;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 1828
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1829
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
