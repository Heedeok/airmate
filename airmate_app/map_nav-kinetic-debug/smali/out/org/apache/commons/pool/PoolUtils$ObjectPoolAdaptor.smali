.class Lorg/apache/commons/pool/PoolUtils$ObjectPoolAdaptor;
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
    name = "ObjectPoolAdaptor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/pool/ObjectPool<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final key:Ljava/lang/Object;

.field private final keyedPool:Lorg/apache/commons/pool/KeyedObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/pool/KeyedObjectPool<",
            "Ljava/lang/Object;",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/apache/commons/pool/KeyedObjectPool;Ljava/lang/Object;)V
    .registers 5
    .param p2, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool/KeyedObjectPool<",
            "Ljava/lang/Object;",
            "TV;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 806
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$ObjectPoolAdaptor;, "Lorg/apache/commons/pool/PoolUtils$ObjectPoolAdaptor<TV;>;"
    .local p1, "keyedPool":Lorg/apache/commons/pool/KeyedObjectPool;, "Lorg/apache/commons/pool/KeyedObjectPool<Ljava/lang/Object;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 807
    if-eqz p1, :cond_14

    .line 810
    if-eqz p2, :cond_c

    .line 813
    iput-object p1, p0, Lorg/apache/commons/pool/PoolUtils$ObjectPoolAdaptor;->keyedPool:Lorg/apache/commons/pool/KeyedObjectPool;

    .line 814
    iput-object p2, p0, Lorg/apache/commons/pool/PoolUtils$ObjectPoolAdaptor;->key:Ljava/lang/Object;

    .line 815
    return-void

    .line 811
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 808
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keyedPool must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addObject()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 850
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$ObjectPoolAdaptor;, "Lorg/apache/commons/pool/PoolUtils$ObjectPoolAdaptor<TV;>;"
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$ObjectPoolAdaptor;->keyedPool:Lorg/apache/commons/pool/KeyedObjectPool;

    iget-object v1, p0, Lorg/apache/commons/pool/PoolUtils$ObjectPoolAdaptor;->key:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lorg/apache/commons/pool/KeyedObjectPool;->addObject(Ljava/lang/Object;)V

    .line 851
    return-void
.end method

.method public borrowObject()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/util/NoSuchElementException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 821
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$ObjectPoolAdaptor;, "Lorg/apache/commons/pool/PoolUtils$ObjectPoolAdaptor<TV;>;"
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$ObjectPoolAdaptor;->keyedPool:Lorg/apache/commons/pool/KeyedObjectPool;

    iget-object v1, p0, Lorg/apache/commons/pool/PoolUtils$ObjectPoolAdaptor;->key:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lorg/apache/commons/pool/KeyedObjectPool;->borrowObject(Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 871
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$ObjectPoolAdaptor;, "Lorg/apache/commons/pool/PoolUtils$ObjectPoolAdaptor<TV;>;"
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$ObjectPoolAdaptor;->keyedPool:Lorg/apache/commons/pool/KeyedObjectPool;

    invoke-interface {v0}, Lorg/apache/commons/pool/KeyedObjectPool;->clear()V

    .line 872
    return-void
.end method

.method public close()V
    .registers 2

    .line 879
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$ObjectPoolAdaptor;, "Lorg/apache/commons/pool/PoolUtils$ObjectPoolAdaptor<TV;>;"
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$ObjectPoolAdaptor;->keyedPool:Lorg/apache/commons/pool/KeyedObjectPool;

    invoke-interface {v0}, Lorg/apache/commons/pool/KeyedObjectPool;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 882
    goto :goto_7

    .line 880
    :catch_6
    move-exception v0

    .line 883
    :goto_7
    return-void
.end method

.method public getNumActive()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 864
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$ObjectPoolAdaptor;, "Lorg/apache/commons/pool/PoolUtils$ObjectPoolAdaptor<TV;>;"
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$ObjectPoolAdaptor;->keyedPool:Lorg/apache/commons/pool/KeyedObjectPool;

    iget-object v1, p0, Lorg/apache/commons/pool/PoolUtils$ObjectPoolAdaptor;->key:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lorg/apache/commons/pool/KeyedObjectPool;->getNumActive(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getNumIdle()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 857
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$ObjectPoolAdaptor;, "Lorg/apache/commons/pool/PoolUtils$ObjectPoolAdaptor<TV;>;"
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$ObjectPoolAdaptor;->keyedPool:Lorg/apache/commons/pool/KeyedObjectPool;

    iget-object v1, p0, Lorg/apache/commons/pool/PoolUtils$ObjectPoolAdaptor;->key:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lorg/apache/commons/pool/KeyedObjectPool;->getNumIdle(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public invalidateObject(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 840
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$ObjectPoolAdaptor;, "Lorg/apache/commons/pool/PoolUtils$ObjectPoolAdaptor<TV;>;"
    .local p1, "obj":Ljava/lang/Object;, "TV;"
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$ObjectPoolAdaptor;->keyedPool:Lorg/apache/commons/pool/KeyedObjectPool;

    iget-object v1, p0, Lorg/apache/commons/pool/PoolUtils$ObjectPoolAdaptor;->key:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lorg/apache/commons/pool/KeyedObjectPool;->invalidateObject(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 843
    goto :goto_9

    .line 841
    :catch_8
    move-exception v0

    .line 844
    :goto_9
    return-void
.end method

.method public returnObject(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 829
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$ObjectPoolAdaptor;, "Lorg/apache/commons/pool/PoolUtils$ObjectPoolAdaptor<TV;>;"
    .local p1, "obj":Ljava/lang/Object;, "TV;"
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$ObjectPoolAdaptor;->keyedPool:Lorg/apache/commons/pool/KeyedObjectPool;

    iget-object v1, p0, Lorg/apache/commons/pool/PoolUtils$ObjectPoolAdaptor;->key:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lorg/apache/commons/pool/KeyedObjectPool;->returnObject(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 832
    goto :goto_9

    .line 830
    :catch_8
    move-exception v0

    .line 833
    :goto_9
    return-void
.end method

.method public setFactory(Lorg/apache/commons/pool/PoolableObjectFactory;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool/PoolableObjectFactory<",
            "TV;>;)V"
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

    .line 893
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$ObjectPoolAdaptor;, "Lorg/apache/commons/pool/PoolUtils$ObjectPoolAdaptor<TV;>;"
    .local p1, "factory":Lorg/apache/commons/pool/PoolableObjectFactory;, "Lorg/apache/commons/pool/PoolableObjectFactory<TV;>;"
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$ObjectPoolAdaptor;->keyedPool:Lorg/apache/commons/pool/KeyedObjectPool;

    invoke-static {p1}, Lorg/apache/commons/pool/PoolUtils;->adapt(Lorg/apache/commons/pool/PoolableObjectFactory;)Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/pool/KeyedObjectPool;->setFactory(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;)V

    .line 894
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 901
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$ObjectPoolAdaptor;, "Lorg/apache/commons/pool/PoolUtils$ObjectPoolAdaptor<TV;>;"
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 902
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "ObjectPoolAdaptor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 903
    const-string v1, "{key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/commons/pool/PoolUtils$ObjectPoolAdaptor;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 904
    const-string v1, ", keyedPool="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/commons/pool/PoolUtils$ObjectPoolAdaptor;->keyedPool:Lorg/apache/commons/pool/KeyedObjectPool;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 905
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 906
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
