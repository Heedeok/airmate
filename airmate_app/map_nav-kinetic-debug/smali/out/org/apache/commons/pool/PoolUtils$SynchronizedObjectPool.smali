.class Lorg/apache/commons/pool/PoolUtils$SynchronizedObjectPool;
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
    name = "SynchronizedObjectPool"
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
.field private final lock:Ljava/lang/Object;

.field private final pool:Lorg/apache/commons/pool/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/pool/ObjectPool<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/apache/commons/pool/ObjectPool;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool/ObjectPool<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1546
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$SynchronizedObjectPool;, "Lorg/apache/commons/pool/PoolUtils$SynchronizedObjectPool<TT;>;"
    .local p1, "pool":Lorg/apache/commons/pool/ObjectPool;, "Lorg/apache/commons/pool/ObjectPool<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1547
    if-eqz p1, :cond_f

    .line 1550
    iput-object p1, p0, Lorg/apache/commons/pool/PoolUtils$SynchronizedObjectPool;->pool:Lorg/apache/commons/pool/ObjectPool;

    .line 1551
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/pool/PoolUtils$SynchronizedObjectPool;->lock:Ljava/lang/Object;

    .line 1552
    return-void

    .line 1548
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pool must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addObject()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 1593
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$SynchronizedObjectPool;, "Lorg/apache/commons/pool/PoolUtils$SynchronizedObjectPool<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$SynchronizedObjectPool;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1594
    :try_start_3
    iget-object v1, p0, Lorg/apache/commons/pool/PoolUtils$SynchronizedObjectPool;->pool:Lorg/apache/commons/pool/ObjectPool;

    invoke-interface {v1}, Lorg/apache/commons/pool/ObjectPool;->addObject()V

    .line 1595
    monitor-exit v0

    .line 1596
    return-void

    .line 1595
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public borrowObject()Ljava/lang/Object;
    .registers 3
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

    .line 1558
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$SynchronizedObjectPool;, "Lorg/apache/commons/pool/PoolUtils$SynchronizedObjectPool<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$SynchronizedObjectPool;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1559
    :try_start_3
    iget-object v1, p0, Lorg/apache/commons/pool/PoolUtils$SynchronizedObjectPool;->pool:Lorg/apache/commons/pool/ObjectPool;

    invoke-interface {v1}, Lorg/apache/commons/pool/ObjectPool;->borrowObject()Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1560
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

    .line 1620
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$SynchronizedObjectPool;, "Lorg/apache/commons/pool/PoolUtils$SynchronizedObjectPool<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$SynchronizedObjectPool;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1621
    :try_start_3
    iget-object v1, p0, Lorg/apache/commons/pool/PoolUtils$SynchronizedObjectPool;->pool:Lorg/apache/commons/pool/ObjectPool;

    invoke-interface {v1}, Lorg/apache/commons/pool/ObjectPool;->clear()V

    .line 1622
    monitor-exit v0

    .line 1623
    return-void

    .line 1622
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public close()V
    .registers 3

    .line 1630
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$SynchronizedObjectPool;, "Lorg/apache/commons/pool/PoolUtils$SynchronizedObjectPool<TT;>;"
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$SynchronizedObjectPool;->lock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_d

    .line 1631
    :try_start_3
    iget-object v1, p0, Lorg/apache/commons/pool/PoolUtils$SynchronizedObjectPool;->pool:Lorg/apache/commons/pool/ObjectPool;

    invoke-interface {v1}, Lorg/apache/commons/pool/ObjectPool;->close()V

    .line 1632
    monitor-exit v0

    .line 1635
    goto :goto_e

    .line 1632
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    :try_start_c
    throw v1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_d} :catch_d

    .line 1633
    :catch_d
    move-exception v0

    .line 1636
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

    .line 1611
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$SynchronizedObjectPool;, "Lorg/apache/commons/pool/PoolUtils$SynchronizedObjectPool<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$SynchronizedObjectPool;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1612
    :try_start_3
    iget-object v1, p0, Lorg/apache/commons/pool/PoolUtils$SynchronizedObjectPool;->pool:Lorg/apache/commons/pool/ObjectPool;

    invoke-interface {v1}, Lorg/apache/commons/pool/ObjectPool;->getNumActive()I

    move-result v1

    monitor-exit v0

    return v1

    .line 1613
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

    .line 1602
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$SynchronizedObjectPool;, "Lorg/apache/commons/pool/PoolUtils$SynchronizedObjectPool<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$SynchronizedObjectPool;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1603
    :try_start_3
    iget-object v1, p0, Lorg/apache/commons/pool/PoolUtils$SynchronizedObjectPool;->pool:Lorg/apache/commons/pool/ObjectPool;

    invoke-interface {v1}, Lorg/apache/commons/pool/ObjectPool;->getNumIdle()I

    move-result v1

    monitor-exit v0

    return v1

    .line 1604
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public invalidateObject(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1580
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$SynchronizedObjectPool;, "Lorg/apache/commons/pool/PoolUtils$SynchronizedObjectPool<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$SynchronizedObjectPool;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1582
    :try_start_3
    iget-object v1, p0, Lorg/apache/commons/pool/PoolUtils$SynchronizedObjectPool;->pool:Lorg/apache/commons/pool/ObjectPool;

    invoke-interface {v1, p1}, Lorg/apache/commons/pool/ObjectPool;->invalidateObject(Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_b
    .catchall {:try_start_3 .. :try_end_8} :catchall_9

    .line 1585
    goto :goto_c

    .line 1586
    :catchall_9
    move-exception v1

    goto :goto_e

    .line 1583
    :catch_b
    move-exception v1

    .line 1586
    :goto_c
    :try_start_c
    monitor-exit v0

    .line 1587
    return-void

    .line 1586
    :goto_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_9

    throw v1
.end method

.method public returnObject(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1567
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$SynchronizedObjectPool;, "Lorg/apache/commons/pool/PoolUtils$SynchronizedObjectPool<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$SynchronizedObjectPool;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1569
    :try_start_3
    iget-object v1, p0, Lorg/apache/commons/pool/PoolUtils$SynchronizedObjectPool;->pool:Lorg/apache/commons/pool/ObjectPool;

    invoke-interface {v1, p1}, Lorg/apache/commons/pool/ObjectPool;->returnObject(Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_b
    .catchall {:try_start_3 .. :try_end_8} :catchall_9

    .line 1572
    goto :goto_c

    .line 1573
    :catchall_9
    move-exception v1

    goto :goto_e

    .line 1570
    :catch_b
    move-exception v1

    .line 1573
    :goto_c
    :try_start_c
    monitor-exit v0

    .line 1574
    return-void

    .line 1573
    :goto_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_9

    throw v1
.end method

.method public setFactory(Lorg/apache/commons/pool/PoolableObjectFactory;)V
    .registers 4
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

    .line 1646
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$SynchronizedObjectPool;, "Lorg/apache/commons/pool/PoolUtils$SynchronizedObjectPool<TT;>;"
    .local p1, "factory":Lorg/apache/commons/pool/PoolableObjectFactory;, "Lorg/apache/commons/pool/PoolableObjectFactory<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$SynchronizedObjectPool;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1647
    :try_start_3
    iget-object v1, p0, Lorg/apache/commons/pool/PoolUtils$SynchronizedObjectPool;->pool:Lorg/apache/commons/pool/ObjectPool;

    invoke-interface {v1, p1}, Lorg/apache/commons/pool/ObjectPool;->setFactory(Lorg/apache/commons/pool/PoolableObjectFactory;)V

    .line 1648
    monitor-exit v0

    .line 1649
    return-void

    .line 1648
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1656
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$SynchronizedObjectPool;, "Lorg/apache/commons/pool/PoolUtils$SynchronizedObjectPool<TT;>;"
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1657
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "SynchronizedObjectPool"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1658
    const-string v1, "{pool="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/commons/pool/PoolUtils$SynchronizedObjectPool;->pool:Lorg/apache/commons/pool/ObjectPool;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 1659
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1660
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
