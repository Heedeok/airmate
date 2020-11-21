.class Lorg/apache/commons/pool/PoolUtils$ErodingPerKeyKeyedObjectPool;
.super Lorg/apache/commons/pool/PoolUtils$ErodingKeyedObjectPool;
.source "PoolUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/pool/PoolUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ErodingPerKeyKeyedObjectPool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/pool/PoolUtils$ErodingKeyedObjectPool<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final factor:F

.field private final factors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;",
            "Lorg/apache/commons/pool/PoolUtils$ErodingFactor;",
            ">;"
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

    .line 2438
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$ErodingPerKeyKeyedObjectPool;, "Lorg/apache/commons/pool/PoolUtils$ErodingPerKeyKeyedObjectPool<TK;TV;>;"
    .local p1, "keyedPool":Lorg/apache/commons/pool/KeyedObjectPool;, "Lorg/apache/commons/pool/KeyedObjectPool<TK;TV;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/pool/PoolUtils$ErodingKeyedObjectPool;-><init>(Lorg/apache/commons/pool/KeyedObjectPool;Lorg/apache/commons/pool/PoolUtils$ErodingFactor;)V

    .line 2429
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/pool/PoolUtils$ErodingPerKeyKeyedObjectPool;->factors:Ljava/util/Map;

    .line 2439
    iput p2, p0, Lorg/apache/commons/pool/PoolUtils$ErodingPerKeyKeyedObjectPool;->factor:F

    .line 2440
    return-void
.end method


# virtual methods
.method protected getErodingFactor(Ljava/lang/Object;)Lorg/apache/commons/pool/PoolUtils$ErodingFactor;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lorg/apache/commons/pool/PoolUtils$ErodingFactor;"
        }
    .end annotation

    .line 2455
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$ErodingPerKeyKeyedObjectPool;, "Lorg/apache/commons/pool/PoolUtils$ErodingPerKeyKeyedObjectPool<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$ErodingPerKeyKeyedObjectPool;->factors:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/pool/PoolUtils$ErodingFactor;

    .line 2458
    .local v0, "factor":Lorg/apache/commons/pool/PoolUtils$ErodingFactor;
    if-nez v0, :cond_17

    .line 2459
    new-instance v1, Lorg/apache/commons/pool/PoolUtils$ErodingFactor;

    iget v2, p0, Lorg/apache/commons/pool/PoolUtils$ErodingPerKeyKeyedObjectPool;->factor:F

    invoke-direct {v1, v2}, Lorg/apache/commons/pool/PoolUtils$ErodingFactor;-><init>(F)V

    move-object v0, v1

    .line 2460
    iget-object v1, p0, Lorg/apache/commons/pool/PoolUtils$ErodingPerKeyKeyedObjectPool;->factors:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2462
    :cond_17
    return-object v0
.end method

.method protected numIdle(Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .line 2447
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$ErodingPerKeyKeyedObjectPool;, "Lorg/apache/commons/pool/PoolUtils$ErodingPerKeyKeyedObjectPool<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lorg/apache/commons/pool/PoolUtils$ErodingPerKeyKeyedObjectPool;->getKeyedPool()Lorg/apache/commons/pool/KeyedObjectPool;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/pool/KeyedObjectPool;->getNumIdle(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 2470
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$ErodingPerKeyKeyedObjectPool;, "Lorg/apache/commons/pool/PoolUtils$ErodingPerKeyKeyedObjectPool<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ErodingPerKeyKeyedObjectPool{factor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/commons/pool/PoolUtils$ErodingPerKeyKeyedObjectPool;->factor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", keyedPool="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/pool/PoolUtils$ErodingPerKeyKeyedObjectPool;->getKeyedPool()Lorg/apache/commons/pool/KeyedObjectPool;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
