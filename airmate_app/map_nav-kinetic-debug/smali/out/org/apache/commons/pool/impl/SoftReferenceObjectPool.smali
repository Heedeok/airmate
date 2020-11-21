.class public Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;
.super Lorg/apache/commons/pool/BaseObjectPool;
.source "SoftReferenceObjectPool.java"

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


# instance fields
.field private _factory:Lorg/apache/commons/pool/PoolableObjectFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/pool/PoolableObjectFactory<",
            "TT;>;"
        }
    .end annotation
.end field

.field private _numActive:I

.field private final _pool:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/SoftReference<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final refQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 55
    .local p0, "this":Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;, "Lorg/apache/commons/pool/impl/SoftReferenceObjectPool<TT;>;"
    invoke-direct {p0}, Lorg/apache/commons/pool/BaseObjectPool;-><init>()V

    .line 368
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    .line 375
    new-instance v1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->refQueue:Ljava/lang/ref/ReferenceQueue;

    .line 378
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_numActive:I

    .line 56
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_pool:Ljava/util/List;

    .line 57
    iput-object v0, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    .line 58
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool/PoolableObjectFactory;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool/PoolableObjectFactory<",
            "TT;>;)V"
        }
    .end annotation

    .line 65
    .local p0, "this":Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;, "Lorg/apache/commons/pool/impl/SoftReferenceObjectPool<TT;>;"
    .local p1, "factory":Lorg/apache/commons/pool/PoolableObjectFactory;, "Lorg/apache/commons/pool/PoolableObjectFactory<TT;>;"
    invoke-direct {p0}, Lorg/apache/commons/pool/BaseObjectPool;-><init>()V

    .line 368
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    .line 375
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->refQueue:Ljava/lang/ref/ReferenceQueue;

    .line 378
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_numActive:I

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_pool:Ljava/util/List;

    .line 67
    iput-object p1, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    .line 68
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool/PoolableObjectFactory;I)V
    .registers 5
    .param p2, "initSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool/PoolableObjectFactory<",
            "TT;>;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 81
    .local p0, "this":Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;, "Lorg/apache/commons/pool/impl/SoftReferenceObjectPool<TT;>;"
    .local p1, "factory":Lorg/apache/commons/pool/PoolableObjectFactory;, "Lorg/apache/commons/pool/PoolableObjectFactory<TT;>;"
    invoke-direct {p0}, Lorg/apache/commons/pool/BaseObjectPool;-><init>()V

    .line 368
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    .line 375
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->refQueue:Ljava/lang/ref/ReferenceQueue;

    .line 378
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_numActive:I

    .line 82
    if-eqz p1, :cond_1f

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_pool:Ljava/util/List;

    .line 86
    iput-object p1, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    .line 87
    invoke-static {p0, p2}, Lorg/apache/commons/pool/PoolUtils;->prefill(Lorg/apache/commons/pool/ObjectPool;I)V

    .line 88
    return-void

    .line 83
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "factory required to prefill the pool."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private pruneClearedReferences()V
    .registers 3

    .line 345
    .local p0, "this":Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;, "Lorg/apache/commons/pool/impl/SoftReferenceObjectPool<TT;>;"
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->refQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    move-object v1, v0

    .local v1, "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<+TT;>;"
    if-eqz v0, :cond_11

    .line 347
    :try_start_9
    iget-object v0, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_pool:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_e
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_9 .. :try_end_e} :catch_f

    goto :goto_10

    .line 348
    :catch_f
    move-exception v0

    .line 350
    .end local v1    # "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<+TT;>;"
    :goto_10
    goto :goto_0

    .line 352
    .restart local v1    # "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<+TT;>;"
    :cond_11
    return-void
.end method


# virtual methods
.method public declared-synchronized addObject()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .local p0, "this":Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;, "Lorg/apache/commons/pool/impl/SoftReferenceObjectPool<TT;>;"
    monitor-enter p0

    .line 230
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->assertOpen()V

    .line 231
    iget-object v0, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    if-eqz v0, :cond_3f

    .line 234
    iget-object v0, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    invoke-interface {v0}, Lorg/apache/commons/pool/PoolableObjectFactory;->makeObject()Ljava/lang/Object;

    move-result-object v0

    .line 236
    .local v0, "obj":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x1

    .line 237
    .local v1, "success":Z
    iget-object v2, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    invoke-interface {v2, v0}, Lorg/apache/commons/pool/PoolableObjectFactory;->validateObject(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 238
    const/4 v1, 0x0

    goto :goto_1e

    .line 240
    :cond_19
    iget-object v2, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    invoke-interface {v2, v0}, Lorg/apache/commons/pool/PoolableObjectFactory;->passivateObject(Ljava/lang/Object;)V

    .line 243
    :goto_1e
    if-nez v1, :cond_22

    const/4 v2, 0x1

    goto :goto_23

    :cond_22
    const/4 v2, 0x0

    .line 244
    .local v2, "shouldDestroy":Z
    :goto_23
    if-eqz v1, :cond_34

    .line 245
    iget-object v3, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_pool:Ljava/util/List;

    new-instance v4, Ljava/lang/ref/SoftReference;

    iget-object v5, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->refQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v4, v0, v5}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_47

    .line 249
    :cond_34
    if-eqz v2, :cond_3d

    .line 251
    :try_start_36
    iget-object v3, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    invoke-interface {v3, v0}, Lorg/apache/commons/pool/PoolableObjectFactory;->destroyObject(Ljava/lang/Object;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_3b} :catch_3c
    .catchall {:try_start_36 .. :try_end_3b} :catchall_47

    .line 254
    goto :goto_3d

    .line 252
    :catch_3c
    move-exception v3

    .line 256
    :cond_3d
    :goto_3d
    monitor-exit p0

    return-void

    .line 232
    .end local v0    # "obj":Ljava/lang/Object;, "TT;"
    .end local v1    # "success":Z
    .end local v2    # "shouldDestroy":Z
    :cond_3f
    :try_start_3f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot add objects without a factory."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_47
    .catchall {:try_start_3f .. :try_end_47} :catchall_47

    .line 229
    :catchall_47
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

    .local p0, "this":Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;, "Lorg/apache/commons/pool/impl/SoftReferenceObjectPool<TT;>;"
    monitor-enter p0

    .line 113
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->assertOpen()V

    .line 114
    const/4 v0, 0x0

    .line 115
    .local v0, "obj":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x0

    .line 116
    .local v1, "newlyCreated":Z
    :cond_6
    :goto_6
    if-nez v0, :cond_89

    .line 117
    iget-object v2, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_pool:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 118
    iget-object v2, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    if-eqz v2, :cond_1d

    .line 121
    const/4 v1, 0x1

    .line 122
    iget-object v2, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    invoke-interface {v2}, Lorg/apache/commons/pool/PoolableObjectFactory;->makeObject()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_3b

    .line 119
    :cond_1d
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2

    .line 125
    :cond_23
    iget-object v2, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_pool:Ljava/util/List;

    iget-object v3, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_pool:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/SoftReference;

    .line 126
    .local v2, "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<TT;>;"
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .line 127
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->clear()V

    .line 129
    .end local v2    # "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<TT;>;"
    :goto_3b
    iget-object v2, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_91

    if-eqz v2, :cond_6

    if-eqz v0, :cond_6

    .line 131
    :try_start_41
    iget-object v2, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    invoke-interface {v2, v0}, Lorg/apache/commons/pool/PoolableObjectFactory;->activateObject(Ljava/lang/Object;)V

    .line 132
    iget-object v2, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    invoke-interface {v2, v0}, Lorg/apache/commons/pool/PoolableObjectFactory;->validateObject(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    goto :goto_6b

    .line 133
    :cond_4f
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "ValidateObject failed"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_57} :catch_57
    .catchall {:try_start_41 .. :try_end_57} :catchall_91

    .line 135
    :catch_57
    move-exception v2

    .line 136
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_58
    invoke-static {v2}, Lorg/apache/commons/pool/PoolUtils;->checkRethrow(Ljava/lang/Throwable;)V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_91

    .line 138
    :try_start_5b
    iget-object v3, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    invoke-interface {v3, v0}, Lorg/apache/commons/pool/PoolableObjectFactory;->destroyObject(Ljava/lang/Object;)V
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_60} :catch_64
    .catchall {:try_start_5b .. :try_end_60} :catchall_62

    .line 143
    :goto_60
    const/4 v0, 0x0

    .line 144
    goto :goto_69

    .line 143
    :catchall_62
    move-exception v3

    goto :goto_87

    .line 139
    :catch_64
    move-exception v3

    .line 140
    .local v3, "t2":Ljava/lang/Throwable;
    :try_start_65
    invoke-static {v3}, Lorg/apache/commons/pool/PoolUtils;->checkRethrow(Ljava/lang/Throwable;)V
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_62

    goto :goto_60

    .line 145
    .end local v3    # "t2":Ljava/lang/Throwable;
    :goto_69
    if-nez v1, :cond_6c

    .line 150
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_6b
    goto :goto_6

    .line 146
    .restart local v2    # "t":Ljava/lang/Throwable;
    :cond_6c
    :try_start_6c
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

    .line 143
    :goto_87
    const/4 v0, 0x0

    throw v3

    .line 153
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_89
    iget v2, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_numActive:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_numActive:I
    :try_end_8f
    .catchall {:try_start_6c .. :try_end_8f} :catchall_91

    .line 154
    monitor-exit p0

    return-object v0

    .line 112
    .end local v0    # "obj":Ljava/lang/Object;, "TT;"
    .end local v1    # "newlyCreated":Z
    :catchall_91
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clear()V
    .registers 4

    .local p0, "this":Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;, "Lorg/apache/commons/pool/impl/SoftReferenceObjectPool<TT;>;"
    monitor-enter p0

    .line 284
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    if-eqz v0, :cond_25

    .line 285
    iget-object v0, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_pool:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 286
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/SoftReference<TT;>;>;"
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_2f

    if-eqz v1, :cond_25

    .line 288
    :try_start_11
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    .line 289
    .local v1, "obj":Ljava/lang/Object;, "TT;"
    if-eqz v1, :cond_24

    .line 290
    iget-object v2, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    invoke-interface {v2, v1}, Lorg/apache/commons/pool/PoolableObjectFactory;->destroyObject(Ljava/lang/Object;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_22} :catch_23
    .catchall {:try_start_11 .. :try_end_22} :catchall_2f

    goto :goto_24

    .line 292
    .end local v1    # "obj":Ljava/lang/Object;, "TT;"
    :catch_23
    move-exception v1

    .line 294
    :cond_24
    :goto_24
    goto :goto_b

    .line 297
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/SoftReference<TT;>;>;"
    :cond_25
    :try_start_25
    iget-object v0, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_pool:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 298
    invoke-direct {p0}, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->pruneClearedReferences()V
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2f

    .line 299
    monitor-exit p0

    return-void

    .line 283
    :catchall_2f
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

    .line 313
    .local p0, "this":Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;, "Lorg/apache/commons/pool/impl/SoftReferenceObjectPool<TT;>;"
    invoke-super {p0}, Lorg/apache/commons/pool/BaseObjectPool;->close()V

    .line 314
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->clear()V

    .line 315
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

    .local p0, "this":Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;, "Lorg/apache/commons/pool/impl/SoftReferenceObjectPool<TT;>;"
    monitor-enter p0

    .line 361
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNumActive()I
    .registers 2

    .local p0, "this":Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;, "Lorg/apache/commons/pool/impl/SoftReferenceObjectPool<TT;>;"
    monitor-enter p0

    .line 276
    :try_start_1
    iget v0, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_numActive:I
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

    .local p0, "this":Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;, "Lorg/apache/commons/pool/impl/SoftReferenceObjectPool<TT;>;"
    monitor-enter p0

    .line 265
    :try_start_1
    invoke-direct {p0}, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->pruneClearedReferences()V

    .line 266
    iget-object v0, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_pool:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return v0

    .line 264
    :catchall_c
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

    .local p0, "this":Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;, "Lorg/apache/commons/pool/impl/SoftReferenceObjectPool<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    .line 207
    :try_start_1
    iget v0, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_numActive:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_numActive:I

    .line 208
    iget-object v0, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    if-eqz v0, :cond_10

    .line 209
    iget-object v0, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    invoke-interface {v0, p1}, Lorg/apache/commons/pool/PoolableObjectFactory;->destroyObject(Ljava/lang/Object;)V

    .line 211
    :cond_10
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 212
    monitor-exit p0

    return-void

    .line 206
    .end local p1    # "obj":Ljava/lang/Object;, "TT;"
    :catchall_15
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized returnObject(Ljava/lang/Object;)V
    .registers 7
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

    .local p0, "this":Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;, "Lorg/apache/commons/pool/impl/SoftReferenceObjectPool<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    .line 173
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->isClosed()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 174
    .local v0, "success":Z
    iget-object v2, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    if-eqz v2, :cond_1d

    .line 175
    iget-object v2, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    invoke-interface {v2, p1}, Lorg/apache/commons/pool/PoolableObjectFactory;->validateObject(Ljava/lang/Object;)Z

    move-result v2
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_47

    if-nez v2, :cond_15

    .line 176
    const/4 v0, 0x0

    goto :goto_1d

    .line 179
    :cond_15
    :try_start_15
    iget-object v2, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    invoke-interface {v2, p1}, Lorg/apache/commons/pool/PoolableObjectFactory;->passivateObject(Ljava/lang/Object;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1a} :catch_1b
    .catchall {:try_start_15 .. :try_end_1a} :catchall_47

    .line 182
    goto :goto_1d

    .line 180
    :catch_1b
    move-exception v2

    .line 181
    .local v2, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 186
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1d
    :goto_1d
    if-nez v0, :cond_21

    const/4 v2, 0x1

    goto :goto_22

    :cond_21
    const/4 v2, 0x0

    .line 187
    .local v2, "shouldDestroy":Z
    :goto_22
    :try_start_22
    iget v3, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_numActive:I

    sub-int/2addr v3, v1

    iput v3, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_numActive:I

    .line 188
    if-eqz v0, :cond_35

    .line 189
    iget-object v1, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_pool:Ljava/util/List;

    new-instance v3, Ljava/lang/ref/SoftReference;

    iget-object v4, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->refQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v3, p1, v4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    :cond_35
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 193
    if-eqz v2, :cond_45

    iget-object v1, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;
    :try_end_3c
    .catchall {:try_start_22 .. :try_end_3c} :catchall_47

    if-eqz v1, :cond_45

    .line 195
    :try_start_3e
    iget-object v1, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    invoke-interface {v1, p1}, Lorg/apache/commons/pool/PoolableObjectFactory;->destroyObject(Ljava/lang/Object;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_43} :catch_44
    .catchall {:try_start_3e .. :try_end_43} :catchall_47

    .line 198
    goto :goto_45

    .line 196
    :catch_44
    move-exception v1

    .line 200
    :cond_45
    :goto_45
    monitor-exit p0

    return-void

    .line 172
    .end local v0    # "success":Z
    .end local v2    # "shouldDestroy":Z
    .end local p1    # "obj":Ljava/lang/Object;, "TT;"
    :catchall_47
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

    .local p0, "this":Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;, "Lorg/apache/commons/pool/impl/SoftReferenceObjectPool<TT;>;"
    .local p1, "factory":Lorg/apache/commons/pool/PoolableObjectFactory;, "Lorg/apache/commons/pool/PoolableObjectFactory<TT;>;"
    monitor-enter p0

    .line 330
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->assertOpen()V

    .line 331
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->getNumActive()I

    move-result v0

    if-gtz v0, :cond_11

    .line 334
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->clear()V

    .line 335
    iput-object p1, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_19

    .line 337
    monitor-exit p0

    return-void

    .line 332
    :cond_11
    :try_start_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Objects are already active"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_19

    .line 329
    .end local p1    # "factory":Lorg/apache/commons/pool/PoolableObjectFactory;, "Lorg/apache/commons/pool/PoolableObjectFactory<TT;>;"
    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1
.end method
