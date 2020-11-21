.class Lorg/apache/commons/pool/PoolUtils$CheckedKeyedObjectPool;
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
    name = "CheckedKeyedObjectPool"
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

.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/apache/commons/pool/KeyedObjectPool;Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool/KeyedObjectPool<",
            "TK;TV;>;",
            "Ljava/lang/Class<",
            "TV;>;)V"
        }
    .end annotation

    .line 1235
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$CheckedKeyedObjectPool;, "Lorg/apache/commons/pool/PoolUtils$CheckedKeyedObjectPool<TK;TV;>;"
    .local p1, "keyedPool":Lorg/apache/commons/pool/KeyedObjectPool;, "Lorg/apache/commons/pool/KeyedObjectPool<TK;TV;>;"
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1236
    if-eqz p1, :cond_14

    .line 1239
    if-eqz p2, :cond_c

    .line 1242
    iput-object p1, p0, Lorg/apache/commons/pool/PoolUtils$CheckedKeyedObjectPool;->keyedPool:Lorg/apache/commons/pool/KeyedObjectPool;

    .line 1243
    iput-object p2, p0, Lorg/apache/commons/pool/PoolUtils$CheckedKeyedObjectPool;->type:Ljava/lang/Class;

    .line 1244
    return-void

    .line 1240
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "type must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1237
    :cond_14
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

    .line 1304
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$CheckedKeyedObjectPool;, "Lorg/apache/commons/pool/PoolUtils$CheckedKeyedObjectPool<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$CheckedKeyedObjectPool;->keyedPool:Lorg/apache/commons/pool/KeyedObjectPool;

    invoke-interface {v0, p1}, Lorg/apache/commons/pool/KeyedObjectPool;->addObject(Ljava/lang/Object;)V

    .line 1305
    return-void
.end method

.method public borrowObject(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
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

    .line 1254
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$CheckedKeyedObjectPool;, "Lorg/apache/commons/pool/PoolUtils$CheckedKeyedObjectPool<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$CheckedKeyedObjectPool;->keyedPool:Lorg/apache/commons/pool/KeyedObjectPool;

    invoke-interface {v0, p1}, Lorg/apache/commons/pool/KeyedObjectPool;->borrowObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1255
    .local v0, "obj":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lorg/apache/commons/pool/PoolUtils$CheckedKeyedObjectPool;->type:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1256
    return-object v0

    .line 1258
    :cond_f
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Borrowed object for key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is not of type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/commons/pool/PoolUtils$CheckedKeyedObjectPool;->type:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " was: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public clear()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 1339
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$CheckedKeyedObjectPool;, "Lorg/apache/commons/pool/PoolUtils$CheckedKeyedObjectPool<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$CheckedKeyedObjectPool;->keyedPool:Lorg/apache/commons/pool/KeyedObjectPool;

    invoke-interface {v0}, Lorg/apache/commons/pool/KeyedObjectPool;->clear()V

    .line 1340
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

    .line 1346
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$CheckedKeyedObjectPool;, "Lorg/apache/commons/pool/PoolUtils$CheckedKeyedObjectPool<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$CheckedKeyedObjectPool;->keyedPool:Lorg/apache/commons/pool/KeyedObjectPool;

    invoke-interface {v0, p1}, Lorg/apache/commons/pool/KeyedObjectPool;->clear(Ljava/lang/Object;)V

    .line 1347
    return-void
.end method

.method public close()V
    .registers 2

    .line 1354
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$CheckedKeyedObjectPool;, "Lorg/apache/commons/pool/PoolUtils$CheckedKeyedObjectPool<TK;TV;>;"
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$CheckedKeyedObjectPool;->keyedPool:Lorg/apache/commons/pool/KeyedObjectPool;

    invoke-interface {v0}, Lorg/apache/commons/pool/KeyedObjectPool;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 1357
    goto :goto_7

    .line 1355
    :catch_6
    move-exception v0

    .line 1358
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

    .line 1332
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$CheckedKeyedObjectPool;, "Lorg/apache/commons/pool/PoolUtils$CheckedKeyedObjectPool<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$CheckedKeyedObjectPool;->keyedPool:Lorg/apache/commons/pool/KeyedObjectPool;

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

    .line 1318
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$CheckedKeyedObjectPool;, "Lorg/apache/commons/pool/PoolUtils$CheckedKeyedObjectPool<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$CheckedKeyedObjectPool;->keyedPool:Lorg/apache/commons/pool/KeyedObjectPool;

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

    .line 1325
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$CheckedKeyedObjectPool;, "Lorg/apache/commons/pool/PoolUtils$CheckedKeyedObjectPool<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$CheckedKeyedObjectPool;->keyedPool:Lorg/apache/commons/pool/KeyedObjectPool;

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

    .line 1311
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$CheckedKeyedObjectPool;, "Lorg/apache/commons/pool/PoolUtils$CheckedKeyedObjectPool<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$CheckedKeyedObjectPool;->keyedPool:Lorg/apache/commons/pool/KeyedObjectPool;

    invoke-interface {v0, p1}, Lorg/apache/commons/pool/KeyedObjectPool;->getNumIdle(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public invalidateObject(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 1289
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$CheckedKeyedObjectPool;, "Lorg/apache/commons/pool/PoolUtils$CheckedKeyedObjectPool<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "obj":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$CheckedKeyedObjectPool;->type:Ljava/lang/Class;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1291
    :try_start_8
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$CheckedKeyedObjectPool;->keyedPool:Lorg/apache/commons/pool/KeyedObjectPool;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/pool/KeyedObjectPool;->invalidateObject(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_e

    goto :goto_f

    .line 1292
    :catch_e
    move-exception v0

    .line 1294
    :goto_f
    nop

    .line 1298
    return-void

    .line 1296
    :cond_11
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalidated object for key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not of type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/commons/pool/PoolUtils$CheckedKeyedObjectPool;->type:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public returnObject(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 1270
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$CheckedKeyedObjectPool;, "Lorg/apache/commons/pool/PoolUtils$CheckedKeyedObjectPool<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "obj":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$CheckedKeyedObjectPool;->type:Ljava/lang/Class;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1272
    :try_start_8
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$CheckedKeyedObjectPool;->keyedPool:Lorg/apache/commons/pool/KeyedObjectPool;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/pool/KeyedObjectPool;->returnObject(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_e

    goto :goto_f

    .line 1273
    :catch_e
    move-exception v0

    .line 1275
    :goto_f
    nop

    .line 1279
    return-void

    .line 1277
    :cond_11
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Returned object for key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not of type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/commons/pool/PoolUtils$CheckedKeyedObjectPool;->type:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 1368
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$CheckedKeyedObjectPool;, "Lorg/apache/commons/pool/PoolUtils$CheckedKeyedObjectPool<TK;TV;>;"
    .local p1, "factory":Lorg/apache/commons/pool/KeyedPoolableObjectFactory;, "Lorg/apache/commons/pool/KeyedPoolableObjectFactory<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$CheckedKeyedObjectPool;->keyedPool:Lorg/apache/commons/pool/KeyedObjectPool;

    invoke-interface {v0, p1}, Lorg/apache/commons/pool/KeyedObjectPool;->setFactory(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;)V

    .line 1369
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1376
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$CheckedKeyedObjectPool;, "Lorg/apache/commons/pool/PoolUtils$CheckedKeyedObjectPool<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1377
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "CheckedKeyedObjectPool"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1378
    const-string v1, "{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/commons/pool/PoolUtils$CheckedKeyedObjectPool;->type:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 1379
    const-string v1, ", keyedPool="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/commons/pool/PoolUtils$CheckedKeyedObjectPool;->keyedPool:Lorg/apache/commons/pool/KeyedObjectPool;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 1380
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1381
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
