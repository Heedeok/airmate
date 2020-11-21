.class public abstract Lorg/apache/commons/pool/BaseObjectPool;
.super Ljava/lang/Object;
.source "BaseObjectPool.java"

# interfaces
.implements Lorg/apache/commons/pool/ObjectPool;


# annotations
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
.field private volatile closed:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 32
    .local p0, "this":Lorg/apache/commons/pool/BaseObjectPool;, "Lorg/apache/commons/pool/BaseObjectPool<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/pool/BaseObjectPool;->closed:Z

    return-void
.end method


# virtual methods
.method public addObject()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 99
    .local p0, "this":Lorg/apache/commons/pool/BaseObjectPool;, "Lorg/apache/commons/pool/BaseObjectPool<TT;>;"
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

    .line 139
    .local p0, "this":Lorg/apache/commons/pool/BaseObjectPool;, "Lorg/apache/commons/pool/BaseObjectPool<TT;>;"
    invoke-virtual {p0}, Lorg/apache/commons/pool/BaseObjectPool;->isClosed()Z

    move-result v0

    if-nez v0, :cond_7

    .line 142
    return-void

    .line 140
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Pool not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract borrowObject()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
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

    .line 88
    .local p0, "this":Lorg/apache/commons/pool/BaseObjectPool;, "Lorg/apache/commons/pool/BaseObjectPool<TT;>;"
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

    .line 107
    .local p0, "this":Lorg/apache/commons/pool/BaseObjectPool;, "Lorg/apache/commons/pool/BaseObjectPool<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/pool/BaseObjectPool;->closed:Z

    .line 108
    return-void
.end method

.method public getNumActive()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 79
    .local p0, "this":Lorg/apache/commons/pool/BaseObjectPool;, "Lorg/apache/commons/pool/BaseObjectPool<TT;>;"
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

    .line 69
    .local p0, "this":Lorg/apache/commons/pool/BaseObjectPool;, "Lorg/apache/commons/pool/BaseObjectPool<TT;>;"
    const/4 v0, -0x1

    return v0
.end method

.method public abstract invalidateObject(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public final isClosed()Z
    .registers 2

    .line 130
    .local p0, "this":Lorg/apache/commons/pool/BaseObjectPool;, "Lorg/apache/commons/pool/BaseObjectPool<TT;>;"
    iget-boolean v0, p0, Lorg/apache/commons/pool/BaseObjectPool;->closed:Z

    return v0
.end method

.method public abstract returnObject(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
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

    .line 122
    .local p0, "this":Lorg/apache/commons/pool/BaseObjectPool;, "Lorg/apache/commons/pool/BaseObjectPool<TT;>;"
    .local p1, "factory":Lorg/apache/commons/pool/PoolableObjectFactory;, "Lorg/apache/commons/pool/PoolableObjectFactory<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
