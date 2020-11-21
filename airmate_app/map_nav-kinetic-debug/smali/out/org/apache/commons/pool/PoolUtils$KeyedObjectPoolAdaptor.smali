.class Lorg/apache/commons/pool/PoolUtils$KeyedObjectPoolAdaptor;
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
    name = "KeyedObjectPoolAdaptor"
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
.field private final pool:Lorg/apache/commons/pool/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/pool/ObjectPool<",
            "TV;>;"
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
            "TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 924
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$KeyedObjectPoolAdaptor;, "Lorg/apache/commons/pool/PoolUtils$KeyedObjectPoolAdaptor<TK;TV;>;"
    .local p1, "pool":Lorg/apache/commons/pool/ObjectPool;, "Lorg/apache/commons/pool/ObjectPool<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 925
    if-eqz p1, :cond_8

    .line 928
    iput-object p1, p0, Lorg/apache/commons/pool/PoolUtils$KeyedObjectPoolAdaptor;->pool:Lorg/apache/commons/pool/ObjectPool;

    .line 929
    return-void

    .line 926
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pool must not be null."

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
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 975
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$KeyedObjectPoolAdaptor;, "Lorg/apache/commons/pool/PoolUtils$KeyedObjectPoolAdaptor<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$KeyedObjectPoolAdaptor;->pool:Lorg/apache/commons/pool/ObjectPool;

    invoke-interface {v0}, Lorg/apache/commons/pool/ObjectPool;->addObject()V

    .line 976
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

    .line 938
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$KeyedObjectPoolAdaptor;, "Lorg/apache/commons/pool/PoolUtils$KeyedObjectPoolAdaptor<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$KeyedObjectPoolAdaptor;->pool:Lorg/apache/commons/pool/ObjectPool;

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

    .line 1016
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$KeyedObjectPoolAdaptor;, "Lorg/apache/commons/pool/PoolUtils$KeyedObjectPoolAdaptor<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$KeyedObjectPoolAdaptor;->pool:Lorg/apache/commons/pool/ObjectPool;

    invoke-interface {v0}, Lorg/apache/commons/pool/ObjectPool;->clear()V

    .line 1017
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

    .line 1025
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$KeyedObjectPoolAdaptor;, "Lorg/apache/commons/pool/PoolUtils$KeyedObjectPoolAdaptor<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$KeyedObjectPoolAdaptor;->pool:Lorg/apache/commons/pool/ObjectPool;

    invoke-interface {v0}, Lorg/apache/commons/pool/ObjectPool;->clear()V

    .line 1026
    return-void
.end method

.method public close()V
    .registers 2

    .line 1033
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$KeyedObjectPoolAdaptor;, "Lorg/apache/commons/pool/PoolUtils$KeyedObjectPoolAdaptor<TK;TV;>;"
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$KeyedObjectPoolAdaptor;->pool:Lorg/apache/commons/pool/ObjectPool;

    invoke-interface {v0}, Lorg/apache/commons/pool/ObjectPool;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 1036
    goto :goto_7

    .line 1034
    :catch_6
    move-exception v0

    .line 1037
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

    .line 1009
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$KeyedObjectPoolAdaptor;, "Lorg/apache/commons/pool/PoolUtils$KeyedObjectPoolAdaptor<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$KeyedObjectPoolAdaptor;->pool:Lorg/apache/commons/pool/ObjectPool;

    invoke-interface {v0}, Lorg/apache/commons/pool/ObjectPool;->getNumActive()I

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

    .line 995
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$KeyedObjectPoolAdaptor;, "Lorg/apache/commons/pool/PoolUtils$KeyedObjectPoolAdaptor<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$KeyedObjectPoolAdaptor;->pool:Lorg/apache/commons/pool/ObjectPool;

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

    .line 1002
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$KeyedObjectPoolAdaptor;, "Lorg/apache/commons/pool/PoolUtils$KeyedObjectPoolAdaptor<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$KeyedObjectPoolAdaptor;->pool:Lorg/apache/commons/pool/ObjectPool;

    invoke-interface {v0}, Lorg/apache/commons/pool/ObjectPool;->getNumIdle()I

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

    .line 985
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$KeyedObjectPoolAdaptor;, "Lorg/apache/commons/pool/PoolUtils$KeyedObjectPoolAdaptor<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$KeyedObjectPoolAdaptor;->pool:Lorg/apache/commons/pool/ObjectPool;

    invoke-interface {v0}, Lorg/apache/commons/pool/ObjectPool;->getNumIdle()I

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

    .line 963
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$KeyedObjectPoolAdaptor;, "Lorg/apache/commons/pool/PoolUtils$KeyedObjectPoolAdaptor<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "obj":Ljava/lang/Object;, "TV;"
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$KeyedObjectPoolAdaptor;->pool:Lorg/apache/commons/pool/ObjectPool;

    invoke-interface {v0, p2}, Lorg/apache/commons/pool/ObjectPool;->invalidateObject(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 966
    goto :goto_7

    .line 964
    :catch_6
    move-exception v0

    .line 967
    :goto_7
    return-void
.end method

.method public returnObject(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 949
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$KeyedObjectPoolAdaptor;, "Lorg/apache/commons/pool/PoolUtils$KeyedObjectPoolAdaptor<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "obj":Ljava/lang/Object;, "TV;"
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$KeyedObjectPoolAdaptor;->pool:Lorg/apache/commons/pool/ObjectPool;

    invoke-interface {v0, p2}, Lorg/apache/commons/pool/ObjectPool;->returnObject(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 952
    goto :goto_7

    .line 950
    :catch_6
    move-exception v0

    .line 953
    :goto_7
    return-void
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

    .line 1048
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$KeyedObjectPoolAdaptor;, "Lorg/apache/commons/pool/PoolUtils$KeyedObjectPoolAdaptor<TK;TV;>;"
    .local p1, "factory":Lorg/apache/commons/pool/KeyedPoolableObjectFactory;, "Lorg/apache/commons/pool/KeyedPoolableObjectFactory<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$KeyedObjectPoolAdaptor;->pool:Lorg/apache/commons/pool/ObjectPool;

    invoke-static {p1}, Lorg/apache/commons/pool/PoolUtils;->adapt(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;)Lorg/apache/commons/pool/PoolableObjectFactory;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/pool/ObjectPool;->setFactory(Lorg/apache/commons/pool/PoolableObjectFactory;)V

    .line 1049
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1056
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$KeyedObjectPoolAdaptor;, "Lorg/apache/commons/pool/PoolUtils$KeyedObjectPoolAdaptor<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1057
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "KeyedObjectPoolAdaptor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1058
    const-string v1, "{pool="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/commons/pool/PoolUtils$KeyedObjectPoolAdaptor;->pool:Lorg/apache/commons/pool/ObjectPool;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 1059
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1060
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
