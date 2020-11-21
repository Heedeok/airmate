.class public Lorg/apache/commons/pool/impl/StackObjectPoolFactory;
.super Ljava/lang/Object;
.source "StackObjectPoolFactory.java"

# interfaces
.implements Lorg/apache/commons/pool/ObjectPoolFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/pool/ObjectPoolFactory<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected _factory:Lorg/apache/commons/pool/PoolableObjectFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/pool/PoolableObjectFactory<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected _initCapacity:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected _maxSleeping:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 45
    .local p0, "this":Lorg/apache/commons/pool/impl/StackObjectPoolFactory;, "Lorg/apache/commons/pool/impl/StackObjectPoolFactory<TT;>;"
    const/4 v0, 0x0

    const/16 v1, 0x8

    const/4 v2, 0x4

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/pool/impl/StackObjectPoolFactory;-><init>(Lorg/apache/commons/pool/PoolableObjectFactory;II)V

    .line 46
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .param p1, "maxIdle"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 57
    .local p0, "this":Lorg/apache/commons/pool/impl/StackObjectPoolFactory;, "Lorg/apache/commons/pool/impl/StackObjectPoolFactory<TT;>;"
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/commons/pool/impl/StackObjectPoolFactory;-><init>(Lorg/apache/commons/pool/PoolableObjectFactory;II)V

    .line 58
    return-void
.end method

.method public constructor <init>(II)V
    .registers 4
    .param p1, "maxIdle"    # I
    .param p2, "initIdleCapacity"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 71
    .local p0, "this":Lorg/apache/commons/pool/impl/StackObjectPoolFactory;, "Lorg/apache/commons/pool/impl/StackObjectPoolFactory<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/pool/impl/StackObjectPoolFactory;-><init>(Lorg/apache/commons/pool/PoolableObjectFactory;II)V

    .line 72
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool/PoolableObjectFactory;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool/PoolableObjectFactory<",
            "TT;>;)V"
        }
    .end annotation

    .line 81
    .local p0, "this":Lorg/apache/commons/pool/impl/StackObjectPoolFactory;, "Lorg/apache/commons/pool/impl/StackObjectPoolFactory<TT;>;"
    .local p1, "factory":Lorg/apache/commons/pool/PoolableObjectFactory;, "Lorg/apache/commons/pool/PoolableObjectFactory<TT;>;"
    const/16 v0, 0x8

    const/4 v1, 0x4

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/pool/impl/StackObjectPoolFactory;-><init>(Lorg/apache/commons/pool/PoolableObjectFactory;II)V

    .line 82
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool/PoolableObjectFactory;I)V
    .registers 4
    .param p2, "maxIdle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool/PoolableObjectFactory<",
            "TT;>;I)V"
        }
    .end annotation

    .line 91
    .local p0, "this":Lorg/apache/commons/pool/impl/StackObjectPoolFactory;, "Lorg/apache/commons/pool/impl/StackObjectPoolFactory<TT;>;"
    .local p1, "factory":Lorg/apache/commons/pool/PoolableObjectFactory;, "Lorg/apache/commons/pool/PoolableObjectFactory<TT;>;"
    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/pool/impl/StackObjectPoolFactory;-><init>(Lorg/apache/commons/pool/PoolableObjectFactory;II)V

    .line 92
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool/PoolableObjectFactory;II)V
    .registers 5
    .param p2, "maxIdle"    # I
    .param p3, "initIdleCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool/PoolableObjectFactory<",
            "TT;>;II)V"
        }
    .end annotation

    .line 102
    .local p0, "this":Lorg/apache/commons/pool/impl/StackObjectPoolFactory;, "Lorg/apache/commons/pool/impl/StackObjectPoolFactory<TT;>;"
    .local p1, "factory":Lorg/apache/commons/pool/PoolableObjectFactory;, "Lorg/apache/commons/pool/PoolableObjectFactory<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/pool/impl/StackObjectPoolFactory;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    .line 128
    const/16 v0, 0x8

    iput v0, p0, Lorg/apache/commons/pool/impl/StackObjectPoolFactory;->_maxSleeping:I

    .line 135
    const/4 v0, 0x4

    iput v0, p0, Lorg/apache/commons/pool/impl/StackObjectPoolFactory;->_initCapacity:I

    .line 103
    iput-object p1, p0, Lorg/apache/commons/pool/impl/StackObjectPoolFactory;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    .line 104
    iput p2, p0, Lorg/apache/commons/pool/impl/StackObjectPoolFactory;->_maxSleeping:I

    .line 105
    iput p3, p0, Lorg/apache/commons/pool/impl/StackObjectPoolFactory;->_initCapacity:I

    .line 106
    return-void
.end method


# virtual methods
.method public createPool()Lorg/apache/commons/pool/ObjectPool;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/pool/ObjectPool<",
            "TT;>;"
        }
    .end annotation

    .line 114
    .local p0, "this":Lorg/apache/commons/pool/impl/StackObjectPoolFactory;, "Lorg/apache/commons/pool/impl/StackObjectPoolFactory<TT;>;"
    new-instance v0, Lorg/apache/commons/pool/impl/StackObjectPool;

    iget-object v1, p0, Lorg/apache/commons/pool/impl/StackObjectPoolFactory;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    iget v2, p0, Lorg/apache/commons/pool/impl/StackObjectPoolFactory;->_maxSleeping:I

    iget v3, p0, Lorg/apache/commons/pool/impl/StackObjectPoolFactory;->_initCapacity:I

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/pool/impl/StackObjectPool;-><init>(Lorg/apache/commons/pool/PoolableObjectFactory;II)V

    return-object v0
.end method

.method public getFactory()Lorg/apache/commons/pool/PoolableObjectFactory;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/pool/PoolableObjectFactory<",
            "TT;>;"
        }
    .end annotation

    .line 145
    .local p0, "this":Lorg/apache/commons/pool/impl/StackObjectPoolFactory;, "Lorg/apache/commons/pool/impl/StackObjectPoolFactory<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/pool/impl/StackObjectPoolFactory;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    return-object v0
.end method

.method public getInitCapacity()I
    .registers 2

    .line 165
    .local p0, "this":Lorg/apache/commons/pool/impl/StackObjectPoolFactory;, "Lorg/apache/commons/pool/impl/StackObjectPoolFactory<TT;>;"
    iget v0, p0, Lorg/apache/commons/pool/impl/StackObjectPoolFactory;->_initCapacity:I

    return v0
.end method

.method public getMaxSleeping()I
    .registers 2

    .line 155
    .local p0, "this":Lorg/apache/commons/pool/impl/StackObjectPoolFactory;, "Lorg/apache/commons/pool/impl/StackObjectPoolFactory<TT;>;"
    iget v0, p0, Lorg/apache/commons/pool/impl/StackObjectPoolFactory;->_maxSleeping:I

    return v0
.end method
