.class Lorg/apache/commons/pool/PoolUtils$ObjectPoolMinIdleTimerTask;
.super Ljava/util/TimerTask;
.source "PoolUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/pool/PoolUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ObjectPoolMinIdleTimerTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/TimerTask;"
    }
.end annotation


# instance fields
.field private final minIdle:I

.field private final pool:Lorg/apache/commons/pool/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/pool/ObjectPool<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/apache/commons/pool/ObjectPool;I)V
    .registers 5
    .param p2, "minIdle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool/ObjectPool<",
            "TT;>;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1406
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$ObjectPoolMinIdleTimerTask;, "Lorg/apache/commons/pool/PoolUtils$ObjectPoolMinIdleTimerTask<TT;>;"
    .local p1, "pool":Lorg/apache/commons/pool/ObjectPool;, "Lorg/apache/commons/pool/ObjectPool<TT;>;"
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 1407
    if-eqz p1, :cond_a

    .line 1410
    iput-object p1, p0, Lorg/apache/commons/pool/PoolUtils$ObjectPoolMinIdleTimerTask;->pool:Lorg/apache/commons/pool/ObjectPool;

    .line 1411
    iput p2, p0, Lorg/apache/commons/pool/PoolUtils$ObjectPoolMinIdleTimerTask;->minIdle:I

    .line 1412
    return-void

    .line 1408
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pool must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1419
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$ObjectPoolMinIdleTimerTask;, "Lorg/apache/commons/pool/PoolUtils$ObjectPoolMinIdleTimerTask<TT;>;"
    const/4 v0, 0x0

    .line 1421
    .local v0, "success":Z
    :try_start_1
    iget-object v1, p0, Lorg/apache/commons/pool/PoolUtils$ObjectPoolMinIdleTimerTask;->pool:Lorg/apache/commons/pool/ObjectPool;

    invoke-interface {v1}, Lorg/apache/commons/pool/ObjectPool;->getNumIdle()I

    move-result v1

    iget v2, p0, Lorg/apache/commons/pool/PoolUtils$ObjectPoolMinIdleTimerTask;->minIdle:I

    if-ge v1, v2, :cond_10

    .line 1422
    iget-object v1, p0, Lorg/apache/commons/pool/PoolUtils$ObjectPoolMinIdleTimerTask;->pool:Lorg/apache/commons/pool/ObjectPool;

    invoke-interface {v1}, Lorg/apache/commons/pool/ObjectPool;->addObject()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_19
    .catchall {:try_start_1 .. :try_end_10} :catchall_17

    .line 1424
    :cond_10
    const/4 v0, 0x1

    .line 1431
    if-nez v0, :cond_20

    .line 1432
    :goto_13
    invoke-virtual {p0}, Lorg/apache/commons/pool/PoolUtils$ObjectPoolMinIdleTimerTask;->cancel()Z

    goto :goto_20

    .line 1431
    :catchall_17
    move-exception v1

    goto :goto_21

    .line 1426
    :catch_19
    move-exception v1

    .line 1427
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1a
    invoke-virtual {p0}, Lorg/apache/commons/pool/PoolUtils$ObjectPoolMinIdleTimerTask;->cancel()Z
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_17

    .line 1431
    .end local v1    # "e":Ljava/lang/Exception;
    if-nez v0, :cond_20

    goto :goto_13

    .line 1435
    :cond_20
    :goto_20
    return-void

    .line 1431
    :goto_21
    if-nez v0, :cond_26

    .line 1432
    invoke-virtual {p0}, Lorg/apache/commons/pool/PoolUtils$ObjectPoolMinIdleTimerTask;->cancel()Z

    :cond_26
    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1442
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$ObjectPoolMinIdleTimerTask;, "Lorg/apache/commons/pool/PoolUtils$ObjectPoolMinIdleTimerTask<TT;>;"
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1443
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "ObjectPoolMinIdleTimerTask"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1444
    const-string v1, "{minIdle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/commons/pool/PoolUtils$ObjectPoolMinIdleTimerTask;->minIdle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1445
    const-string v1, ", pool="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/commons/pool/PoolUtils$ObjectPoolMinIdleTimerTask;->pool:Lorg/apache/commons/pool/ObjectPool;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 1446
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1447
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
