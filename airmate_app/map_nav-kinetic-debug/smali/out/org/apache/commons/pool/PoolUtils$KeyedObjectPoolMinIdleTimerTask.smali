.class Lorg/apache/commons/pool/PoolUtils$KeyedObjectPoolMinIdleTimerTask;
.super Ljava/util/TimerTask;
.source "PoolUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/pool/PoolUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyedObjectPoolMinIdleTimerTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/TimerTask;"
    }
.end annotation


# instance fields
.field private final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private final keyedPool:Lorg/apache/commons/pool/KeyedObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/pool/KeyedObjectPool<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final minIdle:I


# direct methods
.method constructor <init>(Lorg/apache/commons/pool/KeyedObjectPool;Ljava/lang/Object;I)V
    .registers 6
    .param p3, "minIdle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool/KeyedObjectPool<",
            "TK;TV;>;TK;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1475
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$KeyedObjectPoolMinIdleTimerTask;, "Lorg/apache/commons/pool/PoolUtils$KeyedObjectPoolMinIdleTimerTask<TK;TV;>;"
    .local p1, "keyedPool":Lorg/apache/commons/pool/KeyedObjectPool;, "Lorg/apache/commons/pool/KeyedObjectPool<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 1476
    if-eqz p1, :cond_c

    .line 1479
    iput-object p1, p0, Lorg/apache/commons/pool/PoolUtils$KeyedObjectPoolMinIdleTimerTask;->keyedPool:Lorg/apache/commons/pool/KeyedObjectPool;

    .line 1480
    iput-object p2, p0, Lorg/apache/commons/pool/PoolUtils$KeyedObjectPoolMinIdleTimerTask;->key:Ljava/lang/Object;

    .line 1481
    iput p3, p0, Lorg/apache/commons/pool/PoolUtils$KeyedObjectPoolMinIdleTimerTask;->minIdle:I

    .line 1482
    return-void

    .line 1477
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keyedPool must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1489
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$KeyedObjectPoolMinIdleTimerTask;, "Lorg/apache/commons/pool/PoolUtils$KeyedObjectPoolMinIdleTimerTask<TK;TV;>;"
    const/4 v0, 0x0

    .line 1491
    .local v0, "success":Z
    :try_start_1
    iget-object v1, p0, Lorg/apache/commons/pool/PoolUtils$KeyedObjectPoolMinIdleTimerTask;->keyedPool:Lorg/apache/commons/pool/KeyedObjectPool;

    iget-object v2, p0, Lorg/apache/commons/pool/PoolUtils$KeyedObjectPoolMinIdleTimerTask;->key:Ljava/lang/Object;

    invoke-interface {v1, v2}, Lorg/apache/commons/pool/KeyedObjectPool;->getNumIdle(Ljava/lang/Object;)I

    move-result v1

    iget v2, p0, Lorg/apache/commons/pool/PoolUtils$KeyedObjectPoolMinIdleTimerTask;->minIdle:I

    if-ge v1, v2, :cond_14

    .line 1492
    iget-object v1, p0, Lorg/apache/commons/pool/PoolUtils$KeyedObjectPoolMinIdleTimerTask;->keyedPool:Lorg/apache/commons/pool/KeyedObjectPool;

    iget-object v2, p0, Lorg/apache/commons/pool/PoolUtils$KeyedObjectPoolMinIdleTimerTask;->key:Ljava/lang/Object;

    invoke-interface {v1, v2}, Lorg/apache/commons/pool/KeyedObjectPool;->addObject(Ljava/lang/Object;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_14} :catch_1d
    .catchall {:try_start_1 .. :try_end_14} :catchall_1b

    .line 1494
    :cond_14
    const/4 v0, 0x1

    .line 1501
    if-nez v0, :cond_24

    .line 1502
    :goto_17
    invoke-virtual {p0}, Lorg/apache/commons/pool/PoolUtils$KeyedObjectPoolMinIdleTimerTask;->cancel()Z

    goto :goto_24

    .line 1501
    :catchall_1b
    move-exception v1

    goto :goto_25

    .line 1496
    :catch_1d
    move-exception v1

    .line 1497
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1e
    invoke-virtual {p0}, Lorg/apache/commons/pool/PoolUtils$KeyedObjectPoolMinIdleTimerTask;->cancel()Z
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_1b

    .line 1501
    .end local v1    # "e":Ljava/lang/Exception;
    if-nez v0, :cond_24

    goto :goto_17

    .line 1505
    :cond_24
    :goto_24
    return-void

    .line 1501
    :goto_25
    if-nez v0, :cond_2a

    .line 1502
    invoke-virtual {p0}, Lorg/apache/commons/pool/PoolUtils$KeyedObjectPoolMinIdleTimerTask;->cancel()Z

    :cond_2a
    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1512
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$KeyedObjectPoolMinIdleTimerTask;, "Lorg/apache/commons/pool/PoolUtils$KeyedObjectPoolMinIdleTimerTask<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1513
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "KeyedObjectPoolMinIdleTimerTask"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1514
    const-string v1, "{minIdle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/commons/pool/PoolUtils$KeyedObjectPoolMinIdleTimerTask;->minIdle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1515
    const-string v1, ", key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/commons/pool/PoolUtils$KeyedObjectPoolMinIdleTimerTask;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 1516
    const-string v1, ", keyedPool="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/commons/pool/PoolUtils$KeyedObjectPoolMinIdleTimerTask;->keyedPool:Lorg/apache/commons/pool/KeyedObjectPool;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 1517
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1518
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
