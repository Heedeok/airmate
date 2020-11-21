.class public abstract Lorg/apache/commons/pool/BaseKeyedObjectPool;
.super Ljava/lang/Object;
.source "BaseKeyedObjectPool.java"

# interfaces
.implements Lorg/apache/commons/pool/KeyedObjectPool;


# annotations
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
.field private volatile closed:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 33
    .local p0, "this":Lorg/apache/commons/pool/BaseKeyedObjectPool;, "Lorg/apache/commons/pool/BaseKeyedObjectPool<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/pool/BaseKeyedObjectPool;->closed:Z

    return-void
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
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 69
    .local p0, "this":Lorg/apache/commons/pool/BaseKeyedObjectPool;, "Lorg/apache/commons/pool/BaseKeyedObjectPool<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected final assertOpen()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 159
    .local p0, "this":Lorg/apache/commons/pool/BaseKeyedObjectPool;, "Lorg/apache/commons/pool/BaseKeyedObjectPool<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/pool/BaseKeyedObjectPool;->isClosed()Z

    move-result v0

    if-nez v0, :cond_7

    .line 162
    return-void

    .line 160
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Pool not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract borrowObject(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public clear()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 111
    .local p0, "this":Lorg/apache/commons/pool/BaseKeyedObjectPool;, "Lorg/apache/commons/pool/BaseKeyedObjectPool<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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

    .line 120
    .local p0, "this":Lorg/apache/commons/pool/BaseKeyedObjectPool;, "Lorg/apache/commons/pool/BaseKeyedObjectPool<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 128
    .local p0, "this":Lorg/apache/commons/pool/BaseKeyedObjectPool;, "Lorg/apache/commons/pool/BaseKeyedObjectPool<TK;TV;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/pool/BaseKeyedObjectPool;->closed:Z

    .line 129
    return-void
.end method

.method public getNumActive()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 103
    .local p0, "this":Lorg/apache/commons/pool/BaseKeyedObjectPool;, "Lorg/apache/commons/pool/BaseKeyedObjectPool<TK;TV;>;"
    const/4 v0, -0x1

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

    .line 87
    .local p0, "this":Lorg/apache/commons/pool/BaseKeyedObjectPool;, "Lorg/apache/commons/pool/BaseKeyedObjectPool<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, -0x1

    return v0
.end method

.method public getNumIdle()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 95
    .local p0, "this":Lorg/apache/commons/pool/BaseKeyedObjectPool;, "Lorg/apache/commons/pool/BaseKeyedObjectPool<TK;TV;>;"
    const/4 v0, -0x1

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

    .line 78
    .local p0, "this":Lorg/apache/commons/pool/BaseKeyedObjectPool;, "Lorg/apache/commons/pool/BaseKeyedObjectPool<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, -0x1

    return v0
.end method

.method public abstract invalidateObject(Ljava/lang/Object;Ljava/lang/Object;)V
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
.end method

.method protected final isClosed()Z
    .registers 2

    .line 149
    .local p0, "this":Lorg/apache/commons/pool/BaseKeyedObjectPool;, "Lorg/apache/commons/pool/BaseKeyedObjectPool<TK;TV;>;"
    iget-boolean v0, p0, Lorg/apache/commons/pool/BaseKeyedObjectPool;->closed:Z

    return v0
.end method

.method public abstract returnObject(Ljava/lang/Object;Ljava/lang/Object;)V
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

    .line 140
    .local p0, "this":Lorg/apache/commons/pool/BaseKeyedObjectPool;, "Lorg/apache/commons/pool/BaseKeyedObjectPool<TK;TV;>;"
    .local p1, "factory":Lorg/apache/commons/pool/KeyedPoolableObjectFactory;, "Lorg/apache/commons/pool/KeyedPoolableObjectFactory<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
