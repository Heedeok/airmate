.class public Lorg/apache/commons/pool/impl/StackKeyedObjectPoolFactory;
.super Ljava/lang/Object;
.source "StackKeyedObjectPoolFactory.java"

# interfaces
.implements Lorg/apache/commons/pool/KeyedObjectPoolFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/pool/KeyedObjectPoolFactory<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field protected _factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/pool/KeyedPoolableObjectFactory<",
            "TK;TV;>;"
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

    .line 44
    .local p0, "this":Lorg/apache/commons/pool/impl/StackKeyedObjectPoolFactory;, "Lorg/apache/commons/pool/impl/StackKeyedObjectPoolFactory<TK;TV;>;"
    const/4 v0, 0x0

    const/16 v1, 0x8

    const/4 v2, 0x4

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/pool/impl/StackKeyedObjectPoolFactory;-><init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;II)V

    .line 45
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .param p1, "maxSleeping"    # I

    .line 54
    .local p0, "this":Lorg/apache/commons/pool/impl/StackKeyedObjectPoolFactory;, "Lorg/apache/commons/pool/impl/StackKeyedObjectPoolFactory<TK;TV;>;"
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/commons/pool/impl/StackKeyedObjectPoolFactory;-><init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;II)V

    .line 55
    return-void
.end method

.method public constructor <init>(II)V
    .registers 4
    .param p1, "maxSleeping"    # I
    .param p2, "initialCapacity"    # I

    .line 66
    .local p0, "this":Lorg/apache/commons/pool/impl/StackKeyedObjectPoolFactory;, "Lorg/apache/commons/pool/impl/StackKeyedObjectPoolFactory<TK;TV;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/pool/impl/StackKeyedObjectPoolFactory;-><init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;II)V

    .line 67
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool/KeyedPoolableObjectFactory<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 76
    .local p0, "this":Lorg/apache/commons/pool/impl/StackKeyedObjectPoolFactory;, "Lorg/apache/commons/pool/impl/StackKeyedObjectPoolFactory<TK;TV;>;"
    .local p1, "factory":Lorg/apache/commons/pool/KeyedPoolableObjectFactory;, "Lorg/apache/commons/pool/KeyedPoolableObjectFactory<TK;TV;>;"
    const/16 v0, 0x8

    const/4 v1, 0x4

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/pool/impl/StackKeyedObjectPoolFactory;-><init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;II)V

    .line 77
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;I)V
    .registers 4
    .param p2, "maxSleeping"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool/KeyedPoolableObjectFactory<",
            "TK;TV;>;I)V"
        }
    .end annotation

    .line 87
    .local p0, "this":Lorg/apache/commons/pool/impl/StackKeyedObjectPoolFactory;, "Lorg/apache/commons/pool/impl/StackKeyedObjectPoolFactory<TK;TV;>;"
    .local p1, "factory":Lorg/apache/commons/pool/KeyedPoolableObjectFactory;, "Lorg/apache/commons/pool/KeyedPoolableObjectFactory<TK;TV;>;"
    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/pool/impl/StackKeyedObjectPoolFactory;-><init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;II)V

    .line 88
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;II)V
    .registers 5
    .param p2, "maxSleeping"    # I
    .param p3, "initialCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool/KeyedPoolableObjectFactory<",
            "TK;TV;>;II)V"
        }
    .end annotation

    .line 99
    .local p0, "this":Lorg/apache/commons/pool/impl/StackKeyedObjectPoolFactory;, "Lorg/apache/commons/pool/impl/StackKeyedObjectPoolFactory<TK;TV;>;"
    .local p1, "factory":Lorg/apache/commons/pool/KeyedPoolableObjectFactory;, "Lorg/apache/commons/pool/KeyedPoolableObjectFactory<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPoolFactory;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    .line 125
    const/16 v0, 0x8

    iput v0, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPoolFactory;->_maxSleeping:I

    .line 132
    const/4 v0, 0x4

    iput v0, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPoolFactory;->_initCapacity:I

    .line 100
    iput-object p1, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPoolFactory;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    .line 101
    iput p2, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPoolFactory;->_maxSleeping:I

    .line 102
    iput p3, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPoolFactory;->_initCapacity:I

    .line 103
    return-void
.end method


# virtual methods
.method public createPool()Lorg/apache/commons/pool/KeyedObjectPool;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/pool/KeyedObjectPool<",
            "TK;TV;>;"
        }
    .end annotation

    .line 111
    .local p0, "this":Lorg/apache/commons/pool/impl/StackKeyedObjectPoolFactory;, "Lorg/apache/commons/pool/impl/StackKeyedObjectPoolFactory<TK;TV;>;"
    new-instance v0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;

    iget-object v1, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPoolFactory;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    iget v2, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPoolFactory;->_maxSleeping:I

    iget v3, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPoolFactory;->_initCapacity:I

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;-><init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;II)V

    return-object v0
.end method

.method public getFactory()Lorg/apache/commons/pool/KeyedPoolableObjectFactory;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/pool/KeyedPoolableObjectFactory<",
            "TK;TV;>;"
        }
    .end annotation

    .line 142
    .local p0, "this":Lorg/apache/commons/pool/impl/StackKeyedObjectPoolFactory;, "Lorg/apache/commons/pool/impl/StackKeyedObjectPoolFactory<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPoolFactory;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    return-object v0
.end method

.method public getInitialCapacity()I
    .registers 2

    .line 162
    .local p0, "this":Lorg/apache/commons/pool/impl/StackKeyedObjectPoolFactory;, "Lorg/apache/commons/pool/impl/StackKeyedObjectPoolFactory<TK;TV;>;"
    iget v0, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPoolFactory;->_initCapacity:I

    return v0
.end method

.method public getMaxSleeping()I
    .registers 2

    .line 152
    .local p0, "this":Lorg/apache/commons/pool/impl/StackKeyedObjectPoolFactory;, "Lorg/apache/commons/pool/impl/StackKeyedObjectPoolFactory<TK;TV;>;"
    iget v0, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPoolFactory;->_maxSleeping:I

    return v0
.end method
