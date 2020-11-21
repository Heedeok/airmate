.class public Lorg/apache/commons/pool/impl/StackObjectPool;
.super Lorg/apache/commons/pool/BaseObjectPool;
.source "StackObjectPool.java"

# interfaces
.implements Lorg/apache/commons/pool/ObjectPool;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/pool/BaseObjectPool<",
        "TT;>;",
        "Lorg/apache/commons/pool/ObjectPool<",
        "TT;>;"
    }
.end annotation


# static fields
.field protected static final DEFAULT_INIT_SLEEPING_CAPACITY:I = 0x4

.field protected static final DEFAULT_MAX_SLEEPING:I = 0x8


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

.field protected _maxSleeping:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected _numActive:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected _pool:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 62
    .local p0, "this":Lorg/apache/commons/pool/impl/StackObjectPool;, "Lorg/apache/commons/pool/impl/StackObjectPool<TT;>;"
    const/4 v0, 0x0

    const/16 v1, 0x8

    const/4 v2, 0x4

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/pool/impl/StackObjectPool;-><init>(Lorg/apache/commons/pool/PoolableObjectFactory;II)V

    .line 63
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .param p1, "maxIdle"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 78
    .local p0, "this":Lorg/apache/commons/pool/impl/StackObjectPool;, "Lorg/apache/commons/pool/impl/StackObjectPool<TT;>;"
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/commons/pool/impl/StackObjectPool;-><init>(Lorg/apache/commons/pool/PoolableObjectFactory;II)V

    .line 79
    return-void
.end method

.method public constructor <init>(II)V
    .registers 4
    .param p1, "maxIdle"    # I
    .param p2, "initIdleCapacity"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 96
    .local p0, "this":Lorg/apache/commons/pool/impl/StackObjectPool;, "Lorg/apache/commons/pool/impl/StackObjectPool<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/pool/impl/StackObjectPool;-><init>(Lorg/apache/commons/pool/PoolableObjectFactory;II)V

    .line 97
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

    .line 105
    .local p0, "this":Lorg/apache/commons/pool/impl/StackObjectPool;, "Lorg/apache/commons/pool/impl/StackObjectPool<TT;>;"
    .local p1, "factory":Lorg/apache/commons/pool/PoolableObjectFactory;, "Lorg/apache/commons/pool/PoolableObjectFactory<TT;>;"
    const/16 v0, 0x8

    const/4 v1, 0x4

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/pool/impl/StackObjectPool;-><init>(Lorg/apache/commons/pool/PoolableObjectFactory;II)V

    .line 106
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

    .line 116
    .local p0, "this":Lorg/apache/commons/pool/impl/StackObjectPool;, "Lorg/apache/commons/pool/impl/StackObjectPool<TT;>;"
    .local p1, "factory":Lorg/apache/commons/pool/PoolableObjectFactory;, "Lorg/apache/commons/pool/PoolableObjectFactory<TT;>;"
    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/pool/impl/StackObjectPool;-><init>(Lorg/apache/commons/pool/PoolableObjectFactory;II)V

    .line 117
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool/PoolableObjectFactory;II)V
    .registers 7
    .param p2, "maxIdle"    # I
    .param p3, "initIdleCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool/PoolableObjectFactory<",
            "TT;>;II)V"
        }
    .end annotation

    .line 134
    .local p0, "this":Lorg/apache/commons/pool/impl/StackObjectPool;, "Lorg/apache/commons/pool/impl/StackObjectPool<TT;>;"
    .local p1, "factory":Lorg/apache/commons/pool/PoolableObjectFactory;, "Lorg/apache/commons/pool/PoolableObjectFactory<TT;>;"
    invoke-direct {p0}, Lorg/apache/commons/pool/BaseObjectPool;-><init>()V

    .line 426
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_pool:Ljava/util/Stack;

    .line 433
    iput-object v0, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    .line 440
    const/16 v0, 0x8

    iput v0, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_maxSleeping:I

    .line 447
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_numActive:I

    .line 135
    iput-object p1, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    .line 136
    if-gez p2, :cond_14

    goto :goto_15

    :cond_14
    move v0, p2

    :goto_15
    iput v0, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_maxSleeping:I

    .line 137
    const/4 v0, 0x1

    if-ge p3, v0, :cond_1c

    const/4 v0, 0x4

    goto :goto_1d

    :cond_1c
    move v0, p3

    .line 138
    .local v0, "initcapacity":I
    :goto_1d
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_pool:Ljava/util/Stack;

    .line 139
    iget-object v1, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_pool:Ljava/util/Stack;

    iget v2, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_maxSleeping:I

    if-le v0, v2, :cond_2d

    iget v2, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_maxSleeping:I

    goto :goto_2e

    :cond_2d
    move v2, v0

    :goto_2e
    invoke-virtual {v1, v2}, Ljava/util/Stack;->ensureCapacity(I)V

    .line 140
    return-void
.end method


# virtual methods
.method public declared-synchronized addObject()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .local p0, "this":Lorg/apache/commons/pool/impl/StackObjectPool;, "Lorg/apache/commons/pool/impl/StackObjectPool<TT;>;"
    monitor-enter p0

    .line 353
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/StackObjectPool;->assertOpen()V

    .line 354
    iget-object v0, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    if-eqz v0, :cond_4d

    .line 357
    iget-object v0, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    invoke-interface {v0}, Lorg/apache/commons/pool/PoolableObjectFactory;->makeObject()Ljava/lang/Object;

    move-result-object v0

    .line 359
    .local v0, "obj":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x1

    .line 360
    .local v1, "success":Z
    iget-object v2, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    invoke-interface {v2, v0}, Lorg/apache/commons/pool/PoolableObjectFactory;->validateObject(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 361
    const/4 v1, 0x0

    goto :goto_1e

    .line 363
    :cond_19
    iget-object v2, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    invoke-interface {v2, v0}, Lorg/apache/commons/pool/PoolableObjectFactory;->passivateObject(Ljava/lang/Object;)V

    .line 366
    :goto_1e
    const/4 v2, 0x0

    if-nez v1, :cond_23

    const/4 v3, 0x1

    goto :goto_24

    :cond_23
    const/4 v3, 0x0

    .line 368
    .local v3, "shouldDestroy":Z
    :goto_24
    if-eqz v1, :cond_3f

    .line 369
    const/4 v4, 0x0

    .line 370
    .local v4, "toBeDestroyed":Ljava/lang/Object;, "TT;"
    iget-object v5, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_pool:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v5

    iget v6, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_maxSleeping:I

    if-lt v5, v6, :cond_39

    .line 371
    const/4 v3, 0x1

    .line 372
    iget-object v5, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_pool:Ljava/util/Stack;

    invoke-virtual {v5, v2}, Ljava/util/Stack;->remove(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    .line 374
    :cond_39
    iget-object v2, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_pool:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    move-object v0, v4

    .line 377
    .end local v4    # "toBeDestroyed":Ljava/lang/Object;, "TT;"
    :cond_3f
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_42
    .catchall {:try_start_1 .. :try_end_42} :catchall_55

    .line 379
    if-eqz v3, :cond_4b

    .line 381
    :try_start_44
    iget-object v2, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    invoke-interface {v2, v0}, Lorg/apache/commons/pool/PoolableObjectFactory;->destroyObject(Ljava/lang/Object;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_49} :catch_4a
    .catchall {:try_start_44 .. :try_end_49} :catchall_55

    .line 384
    goto :goto_4b

    .line 382
    :catch_4a
    move-exception v2

    .line 386
    :cond_4b
    :goto_4b
    monitor-exit p0

    return-void

    .line 355
    .end local v0    # "obj":Ljava/lang/Object;, "TT;"
    .end local v1    # "success":Z
    .end local v3    # "shouldDestroy":Z
    :cond_4d
    :try_start_4d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot add objects without a factory."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_55
    .catchall {:try_start_4d .. :try_end_55} :catchall_55

    .line 352
    :catchall_55
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized borrowObject()Ljava/lang/Object;
    .registers 7
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

    .local p0, "this":Lorg/apache/commons/pool/impl/StackObjectPool;, "Lorg/apache/commons/pool/impl/StackObjectPool<TT;>;"
    monitor-enter p0

    .line 166
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/StackObjectPool;->assertOpen()V

    .line 167
    const/4 v0, 0x0

    .line 168
    .local v0, "obj":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x0

    .line 169
    .local v1, "newlyCreated":Z
    :cond_6
    :goto_6
    if-nez v0, :cond_82

    .line 170
    iget-object v2, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_pool:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->empty()Z

    move-result v2

    if-nez v2, :cond_18

    .line 171
    iget-object v2, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_pool:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_26

    .line 173
    :cond_18
    iget-object v2, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    if-eqz v2, :cond_7c

    .line 176
    iget-object v2, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    invoke-interface {v2}, Lorg/apache/commons/pool/PoolableObjectFactory;->makeObject()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .line 177
    const/4 v1, 0x1

    .line 178
    if-eqz v0, :cond_74

    .line 183
    :goto_26
    iget-object v2, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_8a

    if-eqz v2, :cond_6

    if-eqz v0, :cond_6

    .line 185
    :try_start_2c
    iget-object v2, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    invoke-interface {v2, v0}, Lorg/apache/commons/pool/PoolableObjectFactory;->activateObject(Ljava/lang/Object;)V

    .line 186
    iget-object v2, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    invoke-interface {v2, v0}, Lorg/apache/commons/pool/PoolableObjectFactory;->validateObject(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    goto :goto_56

    .line 187
    :cond_3a
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "ValidateObject failed"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_42} :catch_42
    .catchall {:try_start_2c .. :try_end_42} :catchall_8a

    .line 189
    :catch_42
    move-exception v2

    .line 190
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_43
    invoke-static {v2}, Lorg/apache/commons/pool/PoolUtils;->checkRethrow(Ljava/lang/Throwable;)V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_8a

    .line 192
    :try_start_46
    iget-object v3, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    invoke-interface {v3, v0}, Lorg/apache/commons/pool/PoolableObjectFactory;->destroyObject(Ljava/lang/Object;)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_4b} :catch_4f
    .catchall {:try_start_46 .. :try_end_4b} :catchall_4d

    .line 197
    :goto_4b
    const/4 v0, 0x0

    .line 198
    goto :goto_54

    .line 197
    :catchall_4d
    move-exception v3

    goto :goto_72

    .line 193
    :catch_4f
    move-exception v3

    .line 194
    .local v3, "t2":Ljava/lang/Throwable;
    :try_start_50
    invoke-static {v3}, Lorg/apache/commons/pool/PoolUtils;->checkRethrow(Ljava/lang/Throwable;)V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_4d

    goto :goto_4b

    .line 199
    .end local v3    # "t2":Ljava/lang/Throwable;
    :goto_54
    if-nez v1, :cond_57

    .line 204
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_56
    goto :goto_6

    .line 200
    .restart local v2    # "t":Ljava/lang/Throwable;
    :cond_57
    :try_start_57
    new-instance v3, Ljava/util/NoSuchElementException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not create a validated object, cause: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 197
    :goto_72
    const/4 v0, 0x0

    throw v3

    .line 179
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_74
    new-instance v2, Ljava/util/NoSuchElementException;

    const-string v3, "PoolableObjectFactory.makeObject() returned null."

    invoke-direct {v2, v3}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 174
    :cond_7c
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2

    .line 207
    :cond_82
    iget v2, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_numActive:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_numActive:I
    :try_end_88
    .catchall {:try_start_57 .. :try_end_88} :catchall_8a

    .line 208
    monitor-exit p0

    return-object v0

    .line 165
    .end local v0    # "obj":Ljava/lang/Object;, "TT;"
    .end local v1    # "newlyCreated":Z
    :catchall_8a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clear()V
    .registers 4

    .local p0, "this":Lorg/apache/commons/pool/impl/StackObjectPool;, "Lorg/apache/commons/pool/impl/StackObjectPool<TT;>;"
    monitor-enter p0

    .line 304
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    if-eqz v0, :cond_1d

    .line 305
    iget-object v0, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_pool:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 306
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_24

    if-eqz v1, :cond_1d

    .line 308
    :try_start_11
    iget-object v1, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/pool/PoolableObjectFactory;->destroyObject(Ljava/lang/Object;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1a} :catch_1b
    .catchall {:try_start_11 .. :try_end_1a} :catchall_24

    goto :goto_1c

    .line 309
    :catch_1b
    move-exception v1

    .line 311
    :goto_1c
    goto :goto_b

    .line 314
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :cond_1d
    :try_start_1d
    iget-object v0, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_pool:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V
    :try_end_22
    .catchall {:try_start_1d .. :try_end_22} :catchall_24

    .line 315
    monitor-exit p0

    return-void

    .line 303
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 329
    .local p0, "this":Lorg/apache/commons/pool/impl/StackObjectPool;, "Lorg/apache/commons/pool/impl/StackObjectPool<TT;>;"
    invoke-super {p0}, Lorg/apache/commons/pool/BaseObjectPool;->close()V

    .line 330
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/StackObjectPool;->clear()V

    .line 331
    return-void
.end method

.method public declared-synchronized getFactory()Lorg/apache/commons/pool/PoolableObjectFactory;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/pool/PoolableObjectFactory<",
            "TT;>;"
        }
    .end annotation

    .local p0, "this":Lorg/apache/commons/pool/impl/StackObjectPool;, "Lorg/apache/commons/pool/impl/StackObjectPool<TT;>;"
    monitor-enter p0

    .line 457
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMaxSleeping()I
    .registers 2

    .line 467
    .local p0, "this":Lorg/apache/commons/pool/impl/StackObjectPool;, "Lorg/apache/commons/pool/impl/StackObjectPool<TT;>;"
    iget v0, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_maxSleeping:I

    return v0
.end method

.method public declared-synchronized getNumActive()I
    .registers 2

    .local p0, "this":Lorg/apache/commons/pool/impl/StackObjectPool;, "Lorg/apache/commons/pool/impl/StackObjectPool<TT;>;"
    monitor-enter p0

    .line 295
    :try_start_1
    iget v0, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_numActive:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNumIdle()I
    .registers 2

    .local p0, "this":Lorg/apache/commons/pool/impl/StackObjectPool;, "Lorg/apache/commons/pool/impl/StackObjectPool<TT;>;"
    monitor-enter p0

    .line 285
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_pool:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized invalidateObject(Ljava/lang/Object;)V
    .registers 3
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

    .local p0, "this":Lorg/apache/commons/pool/impl/StackObjectPool;, "Lorg/apache/commons/pool/impl/StackObjectPool<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    .line 270
    :try_start_1
    iget v0, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_numActive:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_numActive:I

    .line 271
    iget-object v0, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    if-eqz v0, :cond_10

    .line 272
    iget-object v0, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    invoke-interface {v0, p1}, Lorg/apache/commons/pool/PoolableObjectFactory;->destroyObject(Ljava/lang/Object;)V

    .line 274
    :cond_10
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 275
    monitor-exit p0

    return-void

    .line 269
    .end local p1    # "obj":Ljava/lang/Object;, "TT;"
    :catchall_15
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized returnObject(Ljava/lang/Object;)V
    .registers 8
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

    .local p0, "this":Lorg/apache/commons/pool/impl/StackObjectPool;, "Lorg/apache/commons/pool/impl/StackObjectPool<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    .line 229
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/StackObjectPool;->isClosed()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 230
    .local v0, "success":Z
    iget-object v2, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    if-eqz v2, :cond_1d

    .line 231
    iget-object v2, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    invoke-interface {v2, p1}, Lorg/apache/commons/pool/PoolableObjectFactory;->validateObject(Ljava/lang/Object;)Z

    move-result v2
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_51

    if-nez v2, :cond_15

    .line 232
    const/4 v0, 0x0

    goto :goto_1d

    .line 235
    :cond_15
    :try_start_15
    iget-object v2, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    invoke-interface {v2, p1}, Lorg/apache/commons/pool/PoolableObjectFactory;->passivateObject(Ljava/lang/Object;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1a} :catch_1b
    .catchall {:try_start_15 .. :try_end_1a} :catchall_51

    .line 238
    goto :goto_1d

    .line 236
    :catch_1b
    move-exception v2

    .line 237
    .local v2, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 242
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1d
    :goto_1d
    const/4 v2, 0x0

    if-nez v0, :cond_22

    const/4 v3, 0x1

    goto :goto_23

    :cond_22
    const/4 v3, 0x0

    .line 244
    .local v3, "shouldDestroy":Z
    :goto_23
    :try_start_23
    iget v4, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_numActive:I

    sub-int/2addr v4, v1

    iput v4, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_numActive:I

    .line 245
    if-eqz v0, :cond_43

    .line 246
    const/4 v1, 0x0

    .line 247
    .local v1, "toBeDestroyed":Ljava/lang/Object;, "TT;"
    iget-object v4, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_pool:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v4

    iget v5, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_maxSleeping:I

    if-lt v4, v5, :cond_3d

    .line 248
    const/4 v3, 0x1

    .line 249
    iget-object v4, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_pool:Ljava/util/Stack;

    invoke-virtual {v4, v2}, Ljava/util/Stack;->remove(I)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    .line 251
    :cond_3d
    iget-object v2, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_pool:Ljava/util/Stack;

    invoke-virtual {v2, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    move-object p1, v1

    .line 254
    .end local v1    # "toBeDestroyed":Ljava/lang/Object;, "TT;"
    :cond_43
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_46
    .catchall {:try_start_23 .. :try_end_46} :catchall_51

    .line 256
    if-eqz v3, :cond_4f

    .line 258
    :try_start_48
    iget-object v1, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    invoke-interface {v1, p1}, Lorg/apache/commons/pool/PoolableObjectFactory;->destroyObject(Ljava/lang/Object;)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4d} :catch_4e
    .catchall {:try_start_48 .. :try_end_4d} :catchall_51

    .line 261
    goto :goto_4f

    .line 259
    :catch_4e
    move-exception v1

    .line 263
    :cond_4f
    :goto_4f
    monitor-exit p0

    return-void

    .line 228
    .end local v0    # "success":Z
    .end local v3    # "shouldDestroy":Z
    .end local p1    # "obj":Ljava/lang/Object;, "TT;"
    :catchall_51
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setFactory(Lorg/apache/commons/pool/PoolableObjectFactory;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool/PoolableObjectFactory<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .local p0, "this":Lorg/apache/commons/pool/impl/StackObjectPool;, "Lorg/apache/commons/pool/impl/StackObjectPool<TT;>;"
    .local p1, "factory":Lorg/apache/commons/pool/PoolableObjectFactory;, "Lorg/apache/commons/pool/PoolableObjectFactory<TT;>;"
    monitor-enter p0

    .line 401
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/StackObjectPool;->assertOpen()V

    .line 402
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/StackObjectPool;->getNumActive()I

    move-result v0

    if-gtz v0, :cond_11

    .line 405
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/StackObjectPool;->clear()V

    .line 406
    iput-object p1, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_19

    .line 408
    monitor-exit p0

    return-void

    .line 403
    :cond_11
    :try_start_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Objects are already active"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_19

    .line 400
    .end local p1    # "factory":Lorg/apache/commons/pool/PoolableObjectFactory;, "Lorg/apache/commons/pool/PoolableObjectFactory<TT;>;"
    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1
.end method
