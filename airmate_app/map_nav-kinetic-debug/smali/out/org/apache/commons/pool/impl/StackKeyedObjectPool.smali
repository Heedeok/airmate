.class public Lorg/apache/commons/pool/impl/StackKeyedObjectPool;
.super Lorg/apache/commons/pool/BaseKeyedObjectPool;
.source "StackKeyedObjectPool.java"

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
        "Lorg/apache/commons/pool/BaseKeyedObjectPool<",
        "TK;TV;>;",
        "Lorg/apache/commons/pool/KeyedObjectPool<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field protected static final DEFAULT_INIT_SLEEPING_CAPACITY:I = 0x4

.field protected static final DEFAULT_MAX_SLEEPING:I = 0x8


# instance fields
.field protected _activeCount:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "TK;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

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

.field protected _initSleepingCapacity:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected _maxSleeping:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected _pools:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "TK;",
            "Ljava/util/Stack<",
            "TV;>;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected _totActive:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected _totIdle:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 64
    .local p0, "this":Lorg/apache/commons/pool/impl/StackKeyedObjectPool;, "Lorg/apache/commons/pool/impl/StackKeyedObjectPool<TK;TV;>;"
    const/4 v0, 0x0

    const/16 v1, 0x8

    const/4 v2, 0x4

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;-><init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;II)V

    .line 65
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .param p1, "max"    # I

    .line 78
    .local p0, "this":Lorg/apache/commons/pool/impl/StackKeyedObjectPool;, "Lorg/apache/commons/pool/impl/StackKeyedObjectPool<TK;TV;>;"
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;-><init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;II)V

    .line 79
    return-void
.end method

.method public constructor <init>(II)V
    .registers 4
    .param p1, "max"    # I
    .param p2, "init"    # I

    .line 94
    .local p0, "this":Lorg/apache/commons/pool/impl/StackKeyedObjectPool;, "Lorg/apache/commons/pool/impl/StackKeyedObjectPool<TK;TV;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;-><init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;II)V

    .line 95
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool/KeyedPoolableObjectFactory<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 104
    .local p0, "this":Lorg/apache/commons/pool/impl/StackKeyedObjectPool;, "Lorg/apache/commons/pool/impl/StackKeyedObjectPool<TK;TV;>;"
    .local p1, "factory":Lorg/apache/commons/pool/KeyedPoolableObjectFactory;, "Lorg/apache/commons/pool/KeyedPoolableObjectFactory<TK;TV;>;"
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;-><init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;I)V

    .line 105
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;I)V
    .registers 4
    .param p2, "max"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool/KeyedPoolableObjectFactory<",
            "TK;TV;>;I)V"
        }
    .end annotation

    .line 116
    .local p0, "this":Lorg/apache/commons/pool/impl/StackKeyedObjectPool;, "Lorg/apache/commons/pool/impl/StackKeyedObjectPool<TK;TV;>;"
    .local p1, "factory":Lorg/apache/commons/pool/KeyedPoolableObjectFactory;, "Lorg/apache/commons/pool/KeyedPoolableObjectFactory<TK;TV;>;"
    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;-><init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;II)V

    .line 117
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;II)V
    .registers 8
    .param p2, "max"    # I
    .param p3, "init"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool/KeyedPoolableObjectFactory<",
            "TK;TV;>;II)V"
        }
    .end annotation

    .line 131
    .local p0, "this":Lorg/apache/commons/pool/impl/StackKeyedObjectPool;, "Lorg/apache/commons/pool/impl/StackKeyedObjectPool<TK;TV;>;"
    .local p1, "factory":Lorg/apache/commons/pool/KeyedPoolableObjectFactory;, "Lorg/apache/commons/pool/KeyedPoolableObjectFactory<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/commons/pool/BaseKeyedObjectPool;-><init>()V

    .line 609
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_pools:Ljava/util/HashMap;

    .line 616
    iput-object v0, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    .line 623
    const/16 v1, 0x8

    iput v1, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_maxSleeping:I

    .line 630
    const/4 v2, 0x4

    iput v2, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_initSleepingCapacity:I

    .line 637
    const/4 v3, 0x0

    iput v3, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_totActive:I

    .line 644
    iput v3, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_totIdle:I

    .line 651
    iput-object v0, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_activeCount:Ljava/util/HashMap;

    .line 132
    iput-object p1, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    .line 133
    if-gez p2, :cond_1b

    goto :goto_1c

    :cond_1b
    move v1, p2

    :goto_1c
    iput v1, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_maxSleeping:I

    .line 134
    const/4 v0, 0x1

    if-ge p3, v0, :cond_22

    goto :goto_23

    :cond_22
    move v2, p3

    :goto_23
    iput v2, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_initSleepingCapacity:I

    .line 135
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_pools:Ljava/util/HashMap;

    .line 136
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_activeCount:Ljava/util/HashMap;

    .line 137
    return-void
.end method

.method private decrementActiveCount(Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .line 536
    .local p0, "this":Lorg/apache/commons/pool/impl/StackKeyedObjectPool;, "Lorg/apache/commons/pool/impl/StackKeyedObjectPool<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget v0, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_totActive:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_totActive:I

    .line 537
    iget-object v0, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_activeCount:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 538
    .local v0, "active":Ljava/lang/Integer;
    if-nez v0, :cond_11

    goto :goto_2c

    .line 540
    :cond_11
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gt v2, v1, :cond_1d

    .line 541
    iget-object v1, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_activeCount:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2c

    .line 543
    :cond_1d
    iget-object v2, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_activeCount:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    :goto_2c
    return-void
.end method

.method private declared-synchronized destroyStack(Ljava/lang/Object;Ljava/util/Stack;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Stack<",
            "TV;>;)V"
        }
    .end annotation

    .local p0, "this":Lorg/apache/commons/pool/impl/StackKeyedObjectPool;, "Lorg/apache/commons/pool/impl/StackKeyedObjectPool<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "stack":Ljava/util/Stack;, "Ljava/util/Stack<TV;>;"
    monitor-enter p0

    .line 413
    if-nez p2, :cond_5

    .line 414
    monitor-exit p0

    return-void

    .line 416
    :cond_5
    :try_start_5
    iget-object v0, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    if-eqz v0, :cond_1f

    .line 417
    invoke-virtual {p2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 418
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TV;>;"
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_32

    if-eqz v1, :cond_1f

    .line 420
    :try_start_13
    iget-object v1, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lorg/apache/commons/pool/KeyedPoolableObjectFactory;->destroyObject(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1c} :catch_1d
    .catchall {:try_start_13 .. :try_end_1c} :catchall_32

    goto :goto_1e

    .line 421
    :catch_1d
    move-exception v1

    .line 423
    :goto_1e
    goto :goto_d

    .line 426
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TV;>;"
    :cond_1f
    :try_start_1f
    iget v0, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_totIdle:I

    invoke-virtual {p2}, Ljava/util/Stack;->size()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_totIdle:I

    .line 427
    iget-object v0, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_activeCount:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    invoke-virtual {p2}, Ljava/util/Stack;->clear()V
    :try_end_30
    .catchall {:try_start_1f .. :try_end_30} :catchall_32

    .line 430
    monitor-exit p0

    return-void

    .line 412
    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    .end local p2    # "stack":Ljava/util/Stack;, "Ljava/util/Stack<TV;>;"
    :catchall_32
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private getActiveCount(Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .line 505
    .local p0, "this":Lorg/apache/commons/pool/impl/StackKeyedObjectPool;, "Lorg/apache/commons/pool/impl/StackKeyedObjectPool<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_activeCount:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_d
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_d} :catch_10
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_d} :catch_e

    return v1

    .line 508
    :catch_e
    move-exception v1

    .line 509
    .local v1, "e":Ljava/lang/NullPointerException;
    return v0

    .line 506
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_10
    move-exception v1

    .line 507
    .local v1, "e":Ljava/util/NoSuchElementException;
    return v0
.end method

.method private incrementActiveCount(Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .line 520
    .local p0, "this":Lorg/apache/commons/pool/impl/StackKeyedObjectPool;, "Lorg/apache/commons/pool/impl/StackKeyedObjectPool<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget v0, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_totActive:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_totActive:I

    .line 521
    iget-object v0, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_activeCount:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 522
    .local v0, "old":Ljava/lang/Integer;
    if-nez v0, :cond_1b

    .line 523
    iget-object v2, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_activeCount:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a

    .line 525
    :cond_1b
    iget-object v2, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_activeCount:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v1

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    :goto_2a
    return-void
.end method


# virtual methods
.method public declared-synchronized addObject(Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .local p0, "this":Lorg/apache/commons/pool/impl/StackKeyedObjectPool;, "Lorg/apache/commons/pool/impl/StackKeyedObjectPool<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    monitor-enter p0

    .line 283
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->assertOpen()V

    .line 284
    iget-object v0, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    if-eqz v0, :cond_78

    .line 287
    iget-object v0, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    invoke-interface {v0, p1}, Lorg/apache/commons/pool/KeyedPoolableObjectFactory;->makeObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_80

    .line 289
    .local v0, "obj":Ljava/lang/Object;, "TV;"
    :try_start_e
    iget-object v1, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    invoke-interface {v1, p1, v0}, Lorg/apache/commons/pool/KeyedPoolableObjectFactory;->validateObject(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_14} :catch_6e
    .catchall {:try_start_e .. :try_end_14} :catchall_80

    if-nez v1, :cond_18

    .line 290
    monitor-exit p0

    return-void

    .line 299
    :cond_18
    nop

    .line 300
    :try_start_19
    iget-object v1, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    invoke-interface {v1, p1, v0}, Lorg/apache/commons/pool/KeyedPoolableObjectFactory;->passivateObject(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 302
    iget-object v1, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_pools:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Stack;

    .line 303
    .local v1, "stack":Ljava/util/Stack;, "Ljava/util/Stack<TV;>;"
    if-nez v1, :cond_41

    .line 304
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    move-object v1, v2

    .line 305
    iget v2, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_initSleepingCapacity:I

    iget v3, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_maxSleeping:I

    if-le v2, v3, :cond_37

    iget v2, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_maxSleeping:I

    goto :goto_39

    :cond_37
    iget v2, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_initSleepingCapacity:I

    :goto_39
    invoke-virtual {v1, v2}, Ljava/util/Stack;->ensureCapacity(I)V

    .line 306
    iget-object v2, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_pools:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    :cond_41
    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v2

    .line 310
    .local v2, "stackSize":I
    iget v3, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_maxSleeping:I

    if-lt v2, v3, :cond_63

    .line 312
    if-lez v2, :cond_57

    .line 313
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/Stack;->remove(I)Ljava/lang/Object;

    move-result-object v3

    .line 314
    .local v3, "staleObj":Ljava/lang/Object;, "TV;"
    iget v4, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_totIdle:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_totIdle:I
    :try_end_56
    .catchall {:try_start_19 .. :try_end_56} :catchall_80

    goto :goto_58

    .line 316
    .end local v3    # "staleObj":Ljava/lang/Object;, "TV;"
    :cond_57
    move-object v3, v0

    .line 319
    .restart local v3    # "staleObj":Ljava/lang/Object;, "TV;"
    :goto_58
    :try_start_58
    iget-object v4, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    invoke-interface {v4, p1, v3}, Lorg/apache/commons/pool/KeyedPoolableObjectFactory;->destroyObject(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_5d} :catch_5e
    .catchall {:try_start_58 .. :try_end_5d} :catchall_80

    .line 325
    goto :goto_61

    .line 320
    :catch_5e
    move-exception v4

    .line 322
    .local v4, "e":Ljava/lang/Exception;
    if-eq v0, v3, :cond_62

    .line 326
    .end local v3    # "staleObj":Ljava/lang/Object;, "TV;"
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_61
    goto :goto_6c

    .line 323
    .restart local v3    # "staleObj":Ljava/lang/Object;, "TV;"
    .restart local v4    # "e":Ljava/lang/Exception;
    :cond_62
    :try_start_62
    throw v4

    .line 327
    .end local v3    # "staleObj":Ljava/lang/Object;, "TV;"
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_63
    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    iget v3, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_totIdle:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_totIdle:I
    :try_end_6c
    .catchall {:try_start_62 .. :try_end_6c} :catchall_80

    .line 330
    :goto_6c
    monitor-exit p0

    return-void

    .line 292
    .end local v1    # "stack":Ljava/util/Stack;, "Ljava/util/Stack<TV;>;"
    .end local v2    # "stackSize":I
    :catch_6e
    move-exception v1

    .line 294
    .local v1, "e":Ljava/lang/Exception;
    :try_start_6f
    iget-object v2, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    invoke-interface {v2, p1, v0}, Lorg/apache/commons/pool/KeyedPoolableObjectFactory;->destroyObject(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_74} :catch_75
    .catchall {:try_start_6f .. :try_end_74} :catchall_80

    .line 297
    goto :goto_76

    .line 295
    :catch_75
    move-exception v2

    .line 298
    :goto_76
    monitor-exit p0

    return-void

    .line 285
    .end local v0    # "obj":Ljava/lang/Object;, "TV;"
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_78
    :try_start_78
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot add objects without a factory."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_80
    .catchall {:try_start_78 .. :try_end_80} :catchall_80

    .line 282
    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    :catchall_80
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized borrowObject(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9
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

    .local p0, "this":Lorg/apache/commons/pool/impl/StackKeyedObjectPool;, "Lorg/apache/commons/pool/impl/StackKeyedObjectPool<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    monitor-enter p0

    .line 148
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->assertOpen()V

    .line 149
    iget-object v0, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_pools:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    .line 150
    .local v0, "stack":Ljava/util/Stack;, "Ljava/util/Stack<TV;>;"
    if-nez v0, :cond_27

    .line 151
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    move-object v0, v1

    .line 152
    iget v1, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_initSleepingCapacity:I

    iget v2, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_maxSleeping:I

    if-le v1, v2, :cond_1d

    iget v1, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_maxSleeping:I

    goto :goto_1f

    :cond_1d
    iget v1, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_initSleepingCapacity:I

    :goto_1f
    invoke-virtual {v0, v1}, Ljava/util/Stack;->ensureCapacity(I)V

    .line 153
    iget-object v1, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_pools:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :cond_27
    const/4 v1, 0x0

    .line 157
    .local v1, "obj":Ljava/lang/Object;, "TV;"
    :cond_28
    const/4 v2, 0x0

    .line 158
    .local v2, "newlyMade":Z
    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v3

    if-nez v3, :cond_3b

    .line 159
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    .line 160
    iget v3, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_totIdle:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_totIdle:I

    goto :goto_47

    .line 162
    :cond_3b
    iget-object v3, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    if-eqz v3, :cond_9c

    .line 165
    iget-object v3, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    invoke-interface {v3, p1}, Lorg/apache/commons/pool/KeyedPoolableObjectFactory;->makeObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    .line 166
    const/4 v2, 0x1

    .line 169
    :goto_47
    iget-object v3, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;
    :try_end_49
    .catchall {:try_start_1 .. :try_end_49} :catchall_a4

    if-eqz v3, :cond_95

    if-eqz v1, :cond_95

    .line 171
    :try_start_4d
    iget-object v3, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    invoke-interface {v3, p1, v1}, Lorg/apache/commons/pool/KeyedPoolableObjectFactory;->activateObject(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 172
    iget-object v3, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    invoke-interface {v3, p1, v1}, Lorg/apache/commons/pool/KeyedPoolableObjectFactory;->validateObject(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 190
    goto :goto_95

    .line 173
    :cond_5b
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "ValidateObject failed"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_63} :catch_63
    .catchall {:try_start_4d .. :try_end_63} :catchall_a4

    .line 175
    :catch_63
    move-exception v3

    .line 176
    .local v3, "t":Ljava/lang/Throwable;
    :try_start_64
    invoke-static {v3}, Lorg/apache/commons/pool/PoolUtils;->checkRethrow(Ljava/lang/Throwable;)V
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_a4

    .line 178
    :try_start_67
    iget-object v4, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    invoke-interface {v4, p1, v1}, Lorg/apache/commons/pool/KeyedPoolableObjectFactory;->destroyObject(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_67 .. :try_end_6c} :catch_70
    .catchall {:try_start_67 .. :try_end_6c} :catchall_6e

    .line 183
    :goto_6c
    const/4 v1, 0x0

    .line 184
    goto :goto_75

    .line 183
    :catchall_6e
    move-exception v4

    goto :goto_93

    .line 179
    :catch_70
    move-exception v4

    .line 180
    .local v4, "t2":Ljava/lang/Throwable;
    :try_start_71
    invoke-static {v4}, Lorg/apache/commons/pool/PoolUtils;->checkRethrow(Ljava/lang/Throwable;)V
    :try_end_74
    .catchall {:try_start_71 .. :try_end_74} :catchall_6e

    goto :goto_6c

    .line 185
    .end local v4    # "t2":Ljava/lang/Throwable;
    :goto_75
    if-nez v2, :cond_78

    .end local v2    # "newlyMade":Z
    .end local v3    # "t":Ljava/lang/Throwable;
    goto :goto_95

    .line 186
    .restart local v2    # "newlyMade":Z
    .restart local v3    # "t":Ljava/lang/Throwable;
    :cond_78
    :try_start_78
    new-instance v4, Ljava/util/NoSuchElementException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not create a validated object, cause: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 183
    :goto_93
    const/4 v1, 0x0

    throw v4

    .line 192
    .end local v2    # "newlyMade":Z
    .end local v3    # "t":Ljava/lang/Throwable;
    :cond_95
    :goto_95
    if-eqz v1, :cond_28

    .line 193
    invoke-direct {p0, p1}, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->incrementActiveCount(Ljava/lang/Object;)V
    :try_end_9a
    .catchall {:try_start_78 .. :try_end_9a} :catchall_a4

    .line 194
    monitor-exit p0

    return-object v1

    .line 163
    .restart local v2    # "newlyMade":Z
    :cond_9c
    :try_start_9c
    new-instance v3, Ljava/util/NoSuchElementException;

    const-string v4, "pools without a factory cannot create new objects as needed."

    invoke-direct {v3, v4}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_a4
    .catchall {:try_start_9c .. :try_end_a4} :catchall_a4

    .line 147
    .end local v0    # "stack":Ljava/util/Stack;, "Ljava/util/Stack<TV;>;"
    .end local v1    # "obj":Ljava/lang/Object;, "TV;"
    .end local v2    # "newlyMade":Z
    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    :catchall_a4
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clear()V
    .registers 4

    .local p0, "this":Lorg/apache/commons/pool/impl/StackKeyedObjectPool;, "Lorg/apache/commons/pool/impl/StackKeyedObjectPool<TK;TV;>;"
    monitor-enter p0

    .line 384
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_pools:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 385
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TK;>;"
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 386
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 387
    .local v1, "key":Ljava/lang/Object;, "TK;"
    iget-object v2, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_pools:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Stack;

    .line 388
    .local v2, "stack":Ljava/util/Stack;, "Ljava/util/Stack<TV;>;"
    invoke-direct {p0, v1, v2}, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->destroyStack(Ljava/lang/Object;Ljava/util/Stack;)V

    .line 389
    .end local v1    # "key":Ljava/lang/Object;, "TK;"
    .end local v2    # "stack":Ljava/util/Stack;, "Ljava/util/Stack<TV;>;"
    goto :goto_b

    .line 390
    :cond_21
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_totIdle:I

    .line 391
    iget-object v1, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_pools:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 392
    iget-object v1, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_activeCount:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_30

    .line 393
    monitor-exit p0

    return-void

    .line 383
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TK;>;"
    :catchall_30
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clear(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .local p0, "this":Lorg/apache/commons/pool/impl/StackKeyedObjectPool;, "Lorg/apache/commons/pool/impl/StackKeyedObjectPool<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    monitor-enter p0

    .line 402
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_pools:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    .line 403
    .local v0, "stack":Ljava/util/Stack;, "Ljava/util/Stack<TV;>;"
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->destroyStack(Ljava/lang/Object;Ljava/util/Stack;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 404
    monitor-exit p0

    return-void

    .line 401
    .end local v0    # "stack":Ljava/util/Stack;, "Ljava/util/Stack<TV;>;"
    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    :catchall_e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 464
    .local p0, "this":Lorg/apache/commons/pool/impl/StackKeyedObjectPool;, "Lorg/apache/commons/pool/impl/StackKeyedObjectPool<TK;TV;>;"
    invoke-super {p0}, Lorg/apache/commons/pool/BaseKeyedObjectPool;->close()V

    .line 465
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->clear()V

    .line 466
    return-void
.end method

.method public getActiveCount()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 591
    .local p0, "this":Lorg/apache/commons/pool/impl/StackKeyedObjectPool;, "Lorg/apache/commons/pool/impl/StackKeyedObjectPool<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_activeCount:Ljava/util/HashMap;

    return-object v0
.end method

.method public declared-synchronized getFactory()Lorg/apache/commons/pool/KeyedPoolableObjectFactory;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/pool/KeyedPoolableObjectFactory<",
            "TK;TV;>;"
        }
    .end annotation

    .local p0, "this":Lorg/apache/commons/pool/impl/StackKeyedObjectPool;, "Lorg/apache/commons/pool/impl/StackKeyedObjectPool<TK;TV;>;"
    monitor-enter p0

    .line 494
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getInitSleepingCapacity()I
    .registers 2

    .line 569
    .local p0, "this":Lorg/apache/commons/pool/impl/StackKeyedObjectPool;, "Lorg/apache/commons/pool/impl/StackKeyedObjectPool<TK;TV;>;"
    iget v0, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_initSleepingCapacity:I

    return v0
.end method

.method public getMaxSleeping()I
    .registers 2

    .line 561
    .local p0, "this":Lorg/apache/commons/pool/impl/StackKeyedObjectPool;, "Lorg/apache/commons/pool/impl/StackKeyedObjectPool<TK;TV;>;"
    iget v0, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_maxSleeping:I

    return v0
.end method

.method public declared-synchronized getNumActive()I
    .registers 2

    .local p0, "this":Lorg/apache/commons/pool/impl/StackKeyedObjectPool;, "Lorg/apache/commons/pool/impl/StackKeyedObjectPool<TK;TV;>;"
    monitor-enter p0

    .line 349
    :try_start_1
    iget v0, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_totActive:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNumActive(Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .local p0, "this":Lorg/apache/commons/pool/impl/StackKeyedObjectPool;, "Lorg/apache/commons/pool/impl/StackKeyedObjectPool<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    monitor-enter p0

    .line 361
    :try_start_1
    invoke-direct {p0, p1}, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->getActiveCount(Ljava/lang/Object;)I

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return v0

    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getNumIdle()I
    .registers 2

    .local p0, "this":Lorg/apache/commons/pool/impl/StackKeyedObjectPool;, "Lorg/apache/commons/pool/impl/StackKeyedObjectPool<TK;TV;>;"
    monitor-enter p0

    .line 339
    :try_start_1
    iget v0, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_totIdle:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNumIdle(Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .local p0, "this":Lorg/apache/commons/pool/impl/StackKeyedObjectPool;, "Lorg/apache/commons/pool/impl/StackKeyedObjectPool<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    monitor-enter p0

    .line 373
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_pools:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_12
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return v0

    .line 372
    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1

    .line 374
    .restart local p1    # "key":Ljava/lang/Object;, "TK;"
    :catch_12
    move-exception v0

    .line 375
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    monitor-exit p0

    return v1
.end method

.method public getPools()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Stack<",
            "TV;>;>;"
        }
    .end annotation

    .line 553
    .local p0, "this":Lorg/apache/commons/pool/impl/StackKeyedObjectPool;, "Lorg/apache/commons/pool/impl/StackKeyedObjectPool<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_pools:Ljava/util/HashMap;

    return-object v0
.end method

.method public getTotActive()I
    .registers 2

    .line 576
    .local p0, "this":Lorg/apache/commons/pool/impl/StackKeyedObjectPool;, "Lorg/apache/commons/pool/impl/StackKeyedObjectPool<TK;TV;>;"
    iget v0, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_totActive:I

    return v0
.end method

.method public getTotIdle()I
    .registers 2

    .line 583
    .local p0, "this":Lorg/apache/commons/pool/impl/StackKeyedObjectPool;, "Lorg/apache/commons/pool/impl/StackKeyedObjectPool<TK;TV;>;"
    iget v0, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_totIdle:I

    return v0
.end method

.method public declared-synchronized invalidateObject(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
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

    .local p0, "this":Lorg/apache/commons/pool/impl/StackKeyedObjectPool;, "Lorg/apache/commons/pool/impl/StackKeyedObjectPool<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "obj":Ljava/lang/Object;, "TV;"
    monitor-enter p0

    .line 265
    :try_start_1
    invoke-direct {p0, p1}, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->decrementActiveCount(Ljava/lang/Object;)V

    .line 266
    iget-object v0, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    if-eqz v0, :cond_d

    .line 267
    iget-object v0, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/pool/KeyedPoolableObjectFactory;->destroyObject(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 269
    :cond_d
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 270
    monitor-exit p0

    return-void

    .line 264
    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    .end local p2    # "obj":Ljava/lang/Object;, "TV;"
    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized returnObject(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7
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

    .local p0, "this":Lorg/apache/commons/pool/impl/StackKeyedObjectPool;, "Lorg/apache/commons/pool/impl/StackKeyedObjectPool<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "obj":Ljava/lang/Object;, "TV;"
    monitor-enter p0

    .line 208
    :try_start_1
    invoke-direct {p0, p1}, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->decrementActiveCount(Ljava/lang/Object;)V

    .line 209
    iget-object v0, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    if-eqz v0, :cond_20

    .line 210
    iget-object v0, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/pool/KeyedPoolableObjectFactory;->validateObject(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_83

    if-eqz v0, :cond_1e

    .line 212
    :try_start_10
    iget-object v0, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/pool/KeyedPoolableObjectFactory;->passivateObject(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_16
    .catchall {:try_start_10 .. :try_end_15} :catchall_83

    .line 216
    goto :goto_20

    .line 213
    :catch_16
    move-exception v0

    .line 214
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_17
    iget-object v1, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    invoke-interface {v1, p1, p2}, Lorg/apache/commons/pool/KeyedPoolableObjectFactory;->destroyObject(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_83

    .line 215
    monitor-exit p0

    return-void

    .line 218
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_1e
    monitor-exit p0

    return-void

    .line 222
    :cond_20
    :goto_20
    :try_start_20
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 223
    iget-object v0, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;
    :try_end_28
    .catchall {:try_start_20 .. :try_end_28} :catchall_83

    if-eqz v0, :cond_31

    .line 225
    :try_start_2a
    iget-object v0, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/pool/KeyedPoolableObjectFactory;->destroyObject(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2f} :catch_30
    .catchall {:try_start_2a .. :try_end_2f} :catchall_83

    .line 228
    goto :goto_31

    .line 226
    :catch_30
    move-exception v0

    .line 230
    :cond_31
    :goto_31
    monitor-exit p0

    return-void

    .line 233
    :cond_33
    :try_start_33
    iget-object v0, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_pools:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    .line 234
    .local v0, "stack":Ljava/util/Stack;, "Ljava/util/Stack<TV;>;"
    if-nez v0, :cond_56

    .line 235
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    move-object v0, v1

    .line 236
    iget v1, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_initSleepingCapacity:I

    iget v2, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_maxSleeping:I

    if-le v1, v2, :cond_4c

    iget v1, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_maxSleeping:I

    goto :goto_4e

    :cond_4c
    iget v1, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_initSleepingCapacity:I

    :goto_4e
    invoke-virtual {v0, v1}, Ljava/util/Stack;->ensureCapacity(I)V

    .line 237
    iget-object v1, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_pools:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    :cond_56
    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v1

    .line 240
    .local v1, "stackSize":I
    iget v2, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_maxSleeping:I

    if-lt v1, v2, :cond_78

    .line 242
    if-lez v1, :cond_6c

    .line 243
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/Stack;->remove(I)Ljava/lang/Object;

    move-result-object v2

    .line 244
    .local v2, "staleObj":Ljava/lang/Object;, "TV;"
    iget v3, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_totIdle:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_totIdle:I

    goto :goto_6d

    .line 246
    .end local v2    # "staleObj":Ljava/lang/Object;, "TV;"
    :cond_6c
    move-object v2, p2

    .line 248
    .restart local v2    # "staleObj":Ljava/lang/Object;, "TV;"
    :goto_6d
    iget-object v3, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;
    :try_end_6f
    .catchall {:try_start_33 .. :try_end_6f} :catchall_83

    if-eqz v3, :cond_78

    .line 250
    :try_start_71
    iget-object v3, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    invoke-interface {v3, p1, v2}, Lorg/apache/commons/pool/KeyedPoolableObjectFactory;->destroyObject(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_76} :catch_77
    .catchall {:try_start_71 .. :try_end_76} :catchall_83

    .line 253
    goto :goto_78

    .line 251
    :catch_77
    move-exception v3

    .line 256
    .end local v2    # "staleObj":Ljava/lang/Object;, "TV;"
    :cond_78
    :goto_78
    :try_start_78
    invoke-virtual {v0, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    iget v2, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_totIdle:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_totIdle:I
    :try_end_81
    .catchall {:try_start_78 .. :try_end_81} :catchall_83

    .line 258
    monitor-exit p0

    return-void

    .line 207
    .end local v0    # "stack":Ljava/util/Stack;, "Ljava/util/Stack<TV;>;"
    .end local v1    # "stackSize":I
    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    .end local p2    # "obj":Ljava/lang/Object;, "TV;"
    :catchall_83
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setFactory(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;)V
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
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .local p0, "this":Lorg/apache/commons/pool/impl/StackKeyedObjectPool;, "Lorg/apache/commons/pool/impl/StackKeyedObjectPool<TK;TV;>;"
    .local p1, "factory":Lorg/apache/commons/pool/KeyedPoolableObjectFactory;, "Lorg/apache/commons/pool/KeyedPoolableObjectFactory<TK;TV;>;"
    monitor-enter p0

    .line 481
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->getNumActive()I

    move-result v0

    if-gtz v0, :cond_e

    .line 484
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->clear()V

    .line 485
    iput-object p1, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_16

    .line 487
    monitor-exit p0

    return-void

    .line 482
    :cond_e
    :try_start_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Objects are already active"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_16
    .catchall {:try_start_e .. :try_end_16} :catchall_16

    .line 480
    .end local p1    # "factory":Lorg/apache/commons/pool/KeyedPoolableObjectFactory;, "Lorg/apache/commons/pool/KeyedPoolableObjectFactory<TK;TV;>;"
    :catchall_16
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .registers 6

    .local p0, "this":Lorg/apache/commons/pool/impl/StackKeyedObjectPool;, "Lorg/apache/commons/pool/impl/StackKeyedObjectPool<TK;TV;>;"
    monitor-enter p0

    .line 440
    :try_start_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 441
    .local v0, "buf":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 442
    const-string v1, " contains "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_pools:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " distinct pools: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 443
    iget-object v1, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_pools:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 444
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TK;>;"
    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_55

    .line 445
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 446
    .local v2, "key":Ljava/lang/Object;, "TK;"
    const-string v3, " |"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v3, "|="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 447
    iget-object v3, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_pools:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Stack;

    .line 448
    .local v3, "s":Ljava/util/Stack;, "Ljava/util/Stack<TV;>;"
    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 449
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    .end local v3    # "s":Ljava/util/Stack;, "Ljava/util/Stack<TV;>;"
    goto :goto_2e

    .line 450
    :cond_55
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_59
    .catchall {:try_start_1 .. :try_end_59} :catchall_5b

    monitor-exit p0

    return-object v2

    .line 439
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TK;>;"
    :catchall_5b
    move-exception v0

    monitor-exit p0

    throw v0
.end method
