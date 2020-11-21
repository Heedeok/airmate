.class public Lorg/apache/commons/pool/impl/GenericObjectPool;
.super Lorg/apache/commons/pool/BaseObjectPool;
.source "GenericObjectPool.java"

# interfaces
.implements Lorg/apache/commons/pool/ObjectPool;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;,
        Lorg/apache/commons/pool/impl/GenericObjectPool$Config;,
        Lorg/apache/commons/pool/impl/GenericObjectPool$Evictor;
    }
.end annotation

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
.field public static final DEFAULT_LIFO:Z = true

.field public static final DEFAULT_MAX_ACTIVE:I = 0x8

.field public static final DEFAULT_MAX_IDLE:I = 0x8

.field public static final DEFAULT_MAX_WAIT:J = -0x1L

.field public static final DEFAULT_MIN_EVICTABLE_IDLE_TIME_MILLIS:J = 0x1b7740L

.field public static final DEFAULT_MIN_IDLE:I = 0x0

.field public static final DEFAULT_NUM_TESTS_PER_EVICTION_RUN:I = 0x3

.field public static final DEFAULT_SOFT_MIN_EVICTABLE_IDLE_TIME_MILLIS:J = -0x1L

.field public static final DEFAULT_TEST_ON_BORROW:Z = false

.field public static final DEFAULT_TEST_ON_RETURN:Z = false

.field public static final DEFAULT_TEST_WHILE_IDLE:Z = false

.field public static final DEFAULT_TIME_BETWEEN_EVICTION_RUNS_MILLIS:J = -0x1L

.field public static final DEFAULT_WHEN_EXHAUSTED_ACTION:B = 0x1t

.field public static final WHEN_EXHAUSTED_BLOCK:B = 0x1t

.field public static final WHEN_EXHAUSTED_FAIL:B = 0x0t

.field public static final WHEN_EXHAUSTED_GROW:B = 0x2t


# instance fields
.field private final _allocationQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/apache/commons/pool/impl/GenericObjectPool$Latch<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private _evictionCursor:Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/pool/impl/CursorableLinkedList<",
            "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<",
            "TT;>;>.Cursor;"
        }
    .end annotation
.end field

.field private _evictor:Lorg/apache/commons/pool/impl/GenericObjectPool$Evictor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/pool/impl/GenericObjectPool<",
            "TT;>.Evictor;"
        }
    .end annotation
.end field

.field private _factory:Lorg/apache/commons/pool/PoolableObjectFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/pool/PoolableObjectFactory<",
            "TT;>;"
        }
    .end annotation
.end field

.field private _lifo:Z

.field private _maxActive:I

.field private _maxIdle:I

.field private _maxWait:J

.field private _minEvictableIdleTimeMillis:J

.field private _minIdle:I

.field private _numActive:I

.field private _numInternalProcessing:I

.field private _numTestsPerEvictionRun:I

.field private _pool:Lorg/apache/commons/pool/impl/CursorableLinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/pool/impl/CursorableLinkedList<",
            "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private _softMinEvictableIdleTimeMillis:J

.field private volatile _testOnBorrow:Z

.field private volatile _testOnReturn:Z

.field private _testWhileIdle:Z

.field private _timeBetweenEvictionRunsMillis:J

.field private _whenExhaustedAction:B


# direct methods
.method public constructor <init>()V
    .registers 17

    .line 344
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPool;, "Lorg/apache/commons/pool/impl/GenericObjectPool<TT;>;"
    const/4 v1, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x1

    const-wide/16 v4, -0x1

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, -0x1

    const/4 v12, 0x3

    const-wide/32 v13, 0x1b7740

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v15}, Lorg/apache/commons/pool/impl/GenericObjectPool;-><init>(Lorg/apache/commons/pool/PoolableObjectFactory;IBJIIZZJIJZ)V

    .line 347
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool/PoolableObjectFactory;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool/PoolableObjectFactory<",
            "TT;>;)V"
        }
    .end annotation

    .line 354
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPool;, "Lorg/apache/commons/pool/impl/GenericObjectPool<TT;>;"
    .local p1, "factory":Lorg/apache/commons/pool/PoolableObjectFactory;, "Lorg/apache/commons/pool/PoolableObjectFactory<TT;>;"
    const/16 v2, 0x8

    const/4 v3, 0x1

    const-wide/16 v4, -0x1

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, -0x1

    const/4 v12, 0x3

    const-wide/32 v13, 0x1b7740

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v15}, Lorg/apache/commons/pool/impl/GenericObjectPool;-><init>(Lorg/apache/commons/pool/PoolableObjectFactory;IBJIIZZJIJZ)V

    .line 357
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool/PoolableObjectFactory;I)V
    .registers 19
    .param p2, "maxActive"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool/PoolableObjectFactory<",
            "TT;>;I)V"
        }
    .end annotation

    .line 377
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPool;, "Lorg/apache/commons/pool/impl/GenericObjectPool<TT;>;"
    .local p1, "factory":Lorg/apache/commons/pool/PoolableObjectFactory;, "Lorg/apache/commons/pool/PoolableObjectFactory<TT;>;"
    const/4 v3, 0x1

    const-wide/16 v4, -0x1

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, -0x1

    const/4 v12, 0x3

    const-wide/32 v13, 0x1b7740

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct/range {v0 .. v15}, Lorg/apache/commons/pool/impl/GenericObjectPool;-><init>(Lorg/apache/commons/pool/PoolableObjectFactory;IBJIIZZJIJZ)V

    .line 380
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool/PoolableObjectFactory;IBJ)V
    .registers 22
    .param p2, "maxActive"    # I
    .param p3, "whenExhaustedAction"    # B
    .param p4, "maxWait"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool/PoolableObjectFactory<",
            "TT;>;IBJ)V"
        }
    .end annotation

    .line 391
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPool;, "Lorg/apache/commons/pool/impl/GenericObjectPool<TT;>;"
    .local p1, "factory":Lorg/apache/commons/pool/PoolableObjectFactory;, "Lorg/apache/commons/pool/PoolableObjectFactory<TT;>;"
    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, -0x1

    const/4 v12, 0x3

    const-wide/32 v13, 0x1b7740

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-wide/from16 v4, p4

    invoke-direct/range {v0 .. v15}, Lorg/apache/commons/pool/impl/GenericObjectPool;-><init>(Lorg/apache/commons/pool/PoolableObjectFactory;IBJIIZZJIJZ)V

    .line 394
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool/PoolableObjectFactory;IBJI)V
    .registers 23
    .param p2, "maxActive"    # I
    .param p3, "whenExhaustedAction"    # B
    .param p4, "maxWait"    # J
    .param p6, "maxIdle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool/PoolableObjectFactory<",
            "TT;>;IBJI)V"
        }
    .end annotation

    .line 425
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPool;, "Lorg/apache/commons/pool/impl/GenericObjectPool<TT;>;"
    .local p1, "factory":Lorg/apache/commons/pool/PoolableObjectFactory;, "Lorg/apache/commons/pool/PoolableObjectFactory<TT;>;"
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, -0x1

    const/4 v12, 0x3

    const-wide/32 v13, 0x1b7740

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-wide/from16 v4, p4

    move/from16 v6, p6

    invoke-direct/range {v0 .. v15}, Lorg/apache/commons/pool/impl/GenericObjectPool;-><init>(Lorg/apache/commons/pool/PoolableObjectFactory;IBJIIZZJIJZ)V

    .line 428
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool/PoolableObjectFactory;IBJIIZZJIJZ)V
    .registers 34
    .param p2, "maxActive"    # I
    .param p3, "whenExhaustedAction"    # B
    .param p4, "maxWait"    # J
    .param p6, "maxIdle"    # I
    .param p7, "minIdle"    # I
    .param p8, "testOnBorrow"    # Z
    .param p9, "testOnReturn"    # Z
    .param p10, "timeBetweenEvictionRunsMillis"    # J
    .param p12, "numTestsPerEvictionRun"    # I
    .param p13, "minEvictableIdleTimeMillis"    # J
    .param p15, "testWhileIdle"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool/PoolableObjectFactory<",
            "TT;>;IBJIIZZJIJZ)V"
        }
    .end annotation

    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPool;, "Lorg/apache/commons/pool/impl/GenericObjectPool<TT;>;"
    .local p1, "factory":Lorg/apache/commons/pool/PoolableObjectFactory;, "Lorg/apache/commons/pool/PoolableObjectFactory<TT;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-wide/from16 v10, p10

    move/from16 v12, p12

    move-wide/from16 v13, p13

    move/from16 v15, p15

    .line 503
    const-wide/16 v16, -0x1

    invoke-direct/range {v0 .. v17}, Lorg/apache/commons/pool/impl/GenericObjectPool;-><init>(Lorg/apache/commons/pool/PoolableObjectFactory;IBJIIZZJIJZJ)V

    .line 506
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool/PoolableObjectFactory;IBJIIZZJIJZJ)V
    .registers 37
    .param p2, "maxActive"    # I
    .param p3, "whenExhaustedAction"    # B
    .param p4, "maxWait"    # J
    .param p6, "maxIdle"    # I
    .param p7, "minIdle"    # I
    .param p8, "testOnBorrow"    # Z
    .param p9, "testOnReturn"    # Z
    .param p10, "timeBetweenEvictionRunsMillis"    # J
    .param p12, "numTestsPerEvictionRun"    # I
    .param p13, "minEvictableIdleTimeMillis"    # J
    .param p15, "testWhileIdle"    # Z
    .param p16, "softMinEvictableIdleTimeMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool/PoolableObjectFactory<",
            "TT;>;IBJIIZZJIJZJ)V"
        }
    .end annotation

    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPool;, "Lorg/apache/commons/pool/impl/GenericObjectPool<TT;>;"
    .local p1, "factory":Lorg/apache/commons/pool/PoolableObjectFactory;, "Lorg/apache/commons/pool/PoolableObjectFactory<TT;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-wide/from16 v10, p10

    move/from16 v12, p12

    move-wide/from16 v13, p13

    move/from16 v15, p15

    move-wide/from16 v16, p16

    .line 538
    const/16 v18, 0x1

    invoke-direct/range {v0 .. v18}, Lorg/apache/commons/pool/impl/GenericObjectPool;-><init>(Lorg/apache/commons/pool/PoolableObjectFactory;IBJIIZZJIJZJZ)V

    .line 541
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool/PoolableObjectFactory;IBJIIZZJIJZJZ)V
    .registers 35
    .param p2, "maxActive"    # I
    .param p3, "whenExhaustedAction"    # B
    .param p4, "maxWait"    # J
    .param p6, "maxIdle"    # I
    .param p7, "minIdle"    # I
    .param p8, "testOnBorrow"    # Z
    .param p9, "testOnReturn"    # Z
    .param p10, "timeBetweenEvictionRunsMillis"    # J
    .param p12, "numTestsPerEvictionRun"    # I
    .param p13, "minEvictableIdleTimeMillis"    # J
    .param p15, "testWhileIdle"    # Z
    .param p16, "softMinEvictableIdleTimeMillis"    # J
    .param p18, "lifo"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool/PoolableObjectFactory<",
            "TT;>;IBJIIZZJIJZJZ)V"
        }
    .end annotation

    .line 574
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPool;, "Lorg/apache/commons/pool/impl/GenericObjectPool<TT;>;"
    .local p1, "factory":Lorg/apache/commons/pool/PoolableObjectFactory;, "Lorg/apache/commons/pool/PoolableObjectFactory<TT;>;"
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/pool/BaseObjectPool;-><init>()V

    .line 1918
    const/16 v2, 0x8

    iput v2, v0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_maxIdle:I

    .line 1925
    const/4 v3, 0x0

    iput v3, v0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_minIdle:I

    .line 1932
    iput v2, v0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_maxActive:I

    .line 1950
    const-wide/16 v4, -0x1

    iput-wide v4, v0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_maxWait:J

    .line 1964
    const/4 v2, 0x1

    iput-byte v2, v0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_whenExhaustedAction:B

    .line 1977
    iput-boolean v3, v0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_testOnBorrow:Z

    .line 1988
    iput-boolean v3, v0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_testOnReturn:Z

    .line 2001
    iput-boolean v3, v0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_testWhileIdle:Z

    .line 2012
    iput-wide v4, v0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_timeBetweenEvictionRunsMillis:J

    .line 2027
    const/4 v6, 0x3

    iput v6, v0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_numTestsPerEvictionRun:I

    .line 2041
    const-wide/32 v6, 0x1b7740

    iput-wide v6, v0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_minEvictableIdleTimeMillis:J

    .line 2054
    iput-wide v4, v0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_softMinEvictableIdleTimeMillis:J

    .line 2057
    iput-boolean v2, v0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_lifo:Z

    .line 2060
    const/4 v2, 0x0

    iput-object v2, v0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_pool:Lorg/apache/commons/pool/impl/CursorableLinkedList;

    .line 2063
    iput-object v2, v0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_evictionCursor:Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;

    .line 2066
    iput-object v2, v0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    .line 2072
    iput v3, v0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_numActive:I

    .line 2077
    iput-object v2, v0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_evictor:Lorg/apache/commons/pool/impl/GenericObjectPool$Evictor;

    .line 2084
    iput v3, v0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_numInternalProcessing:I

    .line 2091
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, v0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_allocationQueue:Ljava/util/LinkedList;

    .line 575
    move-object/from16 v2, p1

    iput-object v2, v0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    .line 576
    move/from16 v3, p2

    iput v3, v0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_maxActive:I

    .line 577
    move/from16 v4, p18

    iput-boolean v4, v0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_lifo:Z

    .line 578
    packed-switch v1, :pswitch_data_b2

    .line 585
    move-wide/from16 v5, p4

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-wide/from16 v11, p10

    move/from16 v13, p12

    move-wide/from16 v14, p13

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "whenExhaustedAction "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " not recognized."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 582
    :pswitch_7a
    iput-byte v1, v0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_whenExhaustedAction:B

    .line 583
    nop

    .line 587
    move-wide/from16 v5, p4

    iput-wide v5, v0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_maxWait:J

    .line 588
    move/from16 v7, p6

    iput v7, v0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_maxIdle:I

    .line 589
    move/from16 v8, p7

    iput v8, v0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_minIdle:I

    .line 590
    move/from16 v9, p8

    iput-boolean v9, v0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_testOnBorrow:Z

    .line 591
    move/from16 v10, p9

    iput-boolean v10, v0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_testOnReturn:Z

    .line 592
    move-wide/from16 v11, p10

    iput-wide v11, v0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_timeBetweenEvictionRunsMillis:J

    .line 593
    move/from16 v13, p12

    iput v13, v0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_numTestsPerEvictionRun:I

    .line 594
    move-wide/from16 v14, p13

    iput-wide v14, v0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_minEvictableIdleTimeMillis:J

    .line 595
    move-wide/from16 v2, p16

    iput-wide v2, v0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_softMinEvictableIdleTimeMillis:J

    .line 596
    move/from16 v2, p15

    iput-boolean v2, v0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_testWhileIdle:Z

    .line 598
    new-instance v3, Lorg/apache/commons/pool/impl/CursorableLinkedList;

    invoke-direct {v3}, Lorg/apache/commons/pool/impl/CursorableLinkedList;-><init>()V

    iput-object v3, v0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_pool:Lorg/apache/commons/pool/impl/CursorableLinkedList;

    .line 599
    iget-wide v2, v0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_timeBetweenEvictionRunsMillis:J

    invoke-virtual {v0, v2, v3}, Lorg/apache/commons/pool/impl/GenericObjectPool;->startEvictor(J)V

    .line 600
    return-void

    :pswitch_data_b2
    .packed-switch 0x0
        :pswitch_7a
        :pswitch_7a
        :pswitch_7a
    .end packed-switch
.end method

.method public constructor <init>(Lorg/apache/commons/pool/PoolableObjectFactory;IBJIZZ)V
    .registers 25
    .param p2, "maxActive"    # I
    .param p3, "whenExhaustedAction"    # B
    .param p4, "maxWait"    # J
    .param p6, "maxIdle"    # I
    .param p7, "testOnBorrow"    # Z
    .param p8, "testOnReturn"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool/PoolableObjectFactory<",
            "TT;>;IBJIZZ)V"
        }
    .end annotation

    .line 445
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPool;, "Lorg/apache/commons/pool/impl/GenericObjectPool<TT;>;"
    .local p1, "factory":Lorg/apache/commons/pool/PoolableObjectFactory;, "Lorg/apache/commons/pool/PoolableObjectFactory<TT;>;"
    const/4 v7, 0x0

    const-wide/16 v10, -0x1

    const/4 v12, 0x3

    const-wide/32 v13, 0x1b7740

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v15}, Lorg/apache/commons/pool/impl/GenericObjectPool;-><init>(Lorg/apache/commons/pool/PoolableObjectFactory;IBJIIZZJIJZ)V

    .line 448
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool/PoolableObjectFactory;IBJIZZJIJZ)V
    .registers 31
    .param p2, "maxActive"    # I
    .param p3, "whenExhaustedAction"    # B
    .param p4, "maxWait"    # J
    .param p6, "maxIdle"    # I
    .param p7, "testOnBorrow"    # Z
    .param p8, "testOnReturn"    # Z
    .param p9, "timeBetweenEvictionRunsMillis"    # J
    .param p11, "numTestsPerEvictionRun"    # I
    .param p12, "minEvictableIdleTimeMillis"    # J
    .param p14, "testWhileIdle"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool/PoolableObjectFactory<",
            "TT;>;IBJIZZJIJZ)V"
        }
    .end annotation

    .line 474
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPool;, "Lorg/apache/commons/pool/impl/GenericObjectPool<TT;>;"
    .local p1, "factory":Lorg/apache/commons/pool/PoolableObjectFactory;, "Lorg/apache/commons/pool/PoolableObjectFactory<TT;>;"
    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-wide/from16 v10, p9

    move/from16 v12, p11

    move-wide/from16 v13, p12

    move/from16 v15, p14

    invoke-direct/range {v0 .. v15}, Lorg/apache/commons/pool/impl/GenericObjectPool;-><init>(Lorg/apache/commons/pool/PoolableObjectFactory;IBJIIZZJIJZ)V

    .line 476
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool/PoolableObjectFactory;IBJZZ)V
    .registers 24
    .param p2, "maxActive"    # I
    .param p3, "whenExhaustedAction"    # B
    .param p4, "maxWait"    # J
    .param p6, "testOnBorrow"    # Z
    .param p7, "testOnReturn"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool/PoolableObjectFactory<",
            "TT;>;IBJZZ)V"
        }
    .end annotation

    .line 410
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPool;, "Lorg/apache/commons/pool/impl/GenericObjectPool<TT;>;"
    .local p1, "factory":Lorg/apache/commons/pool/PoolableObjectFactory;, "Lorg/apache/commons/pool/PoolableObjectFactory<TT;>;"
    const/16 v6, 0x8

    const/4 v7, 0x0

    const-wide/16 v10, -0x1

    const/4 v12, 0x3

    const-wide/32 v13, 0x1b7740

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-wide/from16 v4, p4

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v15}, Lorg/apache/commons/pool/impl/GenericObjectPool;-><init>(Lorg/apache/commons/pool/PoolableObjectFactory;IBJIIZZJIJZ)V

    .line 413
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool/PoolableObjectFactory;Lorg/apache/commons/pool/impl/GenericObjectPool$Config;)V
    .registers 25
    .param p2, "config"    # Lorg/apache/commons/pool/impl/GenericObjectPool$Config;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool/PoolableObjectFactory<",
            "TT;>;",
            "Lorg/apache/commons/pool/impl/GenericObjectPool$Config;",
            ")V"
        }
    .end annotation

    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPool;, "Lorg/apache/commons/pool/impl/GenericObjectPool<TT;>;"
    .local p1, "factory":Lorg/apache/commons/pool/PoolableObjectFactory;, "Lorg/apache/commons/pool/PoolableObjectFactory<TT;>;"
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 365
    iget v3, v0, Lorg/apache/commons/pool/impl/GenericObjectPool$Config;->maxActive:I

    iget-byte v4, v0, Lorg/apache/commons/pool/impl/GenericObjectPool$Config;->whenExhaustedAction:B

    iget-wide v5, v0, Lorg/apache/commons/pool/impl/GenericObjectPool$Config;->maxWait:J

    iget v7, v0, Lorg/apache/commons/pool/impl/GenericObjectPool$Config;->maxIdle:I

    iget v8, v0, Lorg/apache/commons/pool/impl/GenericObjectPool$Config;->minIdle:I

    iget-boolean v9, v0, Lorg/apache/commons/pool/impl/GenericObjectPool$Config;->testOnBorrow:Z

    iget-boolean v10, v0, Lorg/apache/commons/pool/impl/GenericObjectPool$Config;->testOnReturn:Z

    iget-wide v11, v0, Lorg/apache/commons/pool/impl/GenericObjectPool$Config;->timeBetweenEvictionRunsMillis:J

    iget v13, v0, Lorg/apache/commons/pool/impl/GenericObjectPool$Config;->numTestsPerEvictionRun:I

    iget-wide v14, v0, Lorg/apache/commons/pool/impl/GenericObjectPool$Config;->minEvictableIdleTimeMillis:J

    move-object/from16 v20, v1

    iget-boolean v1, v0, Lorg/apache/commons/pool/impl/GenericObjectPool$Config;->testWhileIdle:Z

    move/from16 v16, v1

    move-object/from16 v21, v2

    iget-wide v1, v0, Lorg/apache/commons/pool/impl/GenericObjectPool$Config;->softMinEvictableIdleTimeMillis:J

    move-wide/from16 v17, v1

    iget-boolean v1, v0, Lorg/apache/commons/pool/impl/GenericObjectPool$Config;->lifo:Z

    move/from16 v19, v1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct/range {v1 .. v19}, Lorg/apache/commons/pool/impl/GenericObjectPool;-><init>(Lorg/apache/commons/pool/PoolableObjectFactory;IBJIIZZJIJZJZ)V

    .line 369
    return-void
.end method

.method static synthetic access$700(Lorg/apache/commons/pool/impl/GenericObjectPool;)V
    .registers 1
    .param p0, "x0"    # Lorg/apache/commons/pool/impl/GenericObjectPool;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 192
    invoke-direct {p0}, Lorg/apache/commons/pool/impl/GenericObjectPool;->ensureMinIdle()V

    return-void
.end method

.method private addObjectToPool(Ljava/lang/Object;Z)V
    .registers 9
    .param p2, "decrementNumActive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1426
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPool;, "Lorg/apache/commons/pool/impl/GenericObjectPool<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    .line 1427
    .local v0, "success":Z
    iget-boolean v1, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_testOnReturn:Z

    if-eqz v1, :cond_f

    iget-object v1, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    invoke-interface {v1, p1}, Lorg/apache/commons/pool/PoolableObjectFactory;->validateObject(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 1428
    const/4 v0, 0x0

    goto :goto_14

    .line 1430
    :cond_f
    iget-object v1, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    invoke-interface {v1, p1}, Lorg/apache/commons/pool/PoolableObjectFactory;->passivateObject(Ljava/lang/Object;)V

    .line 1433
    :goto_14
    const/4 v1, 0x1

    if-nez v0, :cond_19

    const/4 v2, 0x1

    goto :goto_1a

    :cond_19
    const/4 v2, 0x0

    .line 1437
    .local v2, "shouldDestroy":Z
    :goto_1a
    const/4 v3, 0x0

    .line 1438
    .local v3, "doAllocate":Z
    monitor-enter p0

    .line 1439
    :try_start_1c
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/GenericObjectPool;->isClosed()Z

    move-result v4

    if-eqz v4, :cond_24

    .line 1440
    const/4 v2, 0x1

    goto :goto_57

    .line 1442
    :cond_24
    iget v4, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_maxIdle:I

    if-ltz v4, :cond_34

    iget-object v4, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_pool:Lorg/apache/commons/pool/impl/CursorableLinkedList;

    invoke-virtual {v4}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->size()I

    move-result v4

    iget v5, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_maxIdle:I

    if-lt v4, v5, :cond_34

    .line 1443
    const/4 v2, 0x1

    goto :goto_57

    .line 1444
    :cond_34
    if-eqz v0, :cond_57

    .line 1447
    iget-boolean v4, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_lifo:Z

    if-eqz v4, :cond_45

    .line 1448
    iget-object v4, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_pool:Lorg/apache/commons/pool/impl/CursorableLinkedList;

    new-instance v5, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;

    invoke-direct {v5, p1}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->addFirst(Ljava/lang/Object;)Z

    goto :goto_4f

    .line 1450
    :cond_45
    iget-object v4, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_pool:Lorg/apache/commons/pool/impl/CursorableLinkedList;

    new-instance v5, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;

    invoke-direct {v5, p1}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->addLast(Ljava/lang/Object;)Z

    .line 1452
    :goto_4f
    if-eqz p2, :cond_56

    .line 1453
    iget v4, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_numActive:I

    sub-int/2addr v4, v1

    iput v4, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_numActive:I

    .line 1455
    :cond_56
    const/4 v3, 0x1

    .line 1458
    :cond_57
    :goto_57
    monitor-exit p0
    :try_end_58
    .catchall {:try_start_1c .. :try_end_58} :catchall_77

    .line 1459
    if-eqz v3, :cond_5d

    .line 1460
    invoke-direct {p0}, Lorg/apache/commons/pool/impl/GenericObjectPool;->allocate()V

    .line 1464
    :cond_5d
    if-eqz v2, :cond_76

    .line 1466
    :try_start_5f
    iget-object v4, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    invoke-interface {v4, p1}, Lorg/apache/commons/pool/PoolableObjectFactory;->destroyObject(Ljava/lang/Object;)V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_64} :catch_65

    .line 1469
    goto :goto_66

    .line 1467
    :catch_65
    move-exception v4

    .line 1471
    :goto_66
    if-eqz p2, :cond_76

    .line 1472
    monitor-enter p0

    .line 1473
    :try_start_69
    iget v4, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_numActive:I

    sub-int/2addr v4, v1

    iput v4, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_numActive:I

    .line 1474
    monitor-exit p0
    :try_end_6f
    .catchall {:try_start_69 .. :try_end_6f} :catchall_73

    .line 1475
    invoke-direct {p0}, Lorg/apache/commons/pool/impl/GenericObjectPool;->allocate()V

    goto :goto_76

    .line 1474
    :catchall_73
    move-exception v1

    :try_start_74
    monitor-exit p0
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_73

    throw v1

    .line 1479
    :cond_76
    :goto_76
    return-void

    .line 1458
    :catchall_77
    move-exception v1

    :try_start_78
    monitor-exit p0
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_77

    throw v1
.end method

.method private declared-synchronized allocate()V
    .registers 4

    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPool;, "Lorg/apache/commons/pool/impl/GenericObjectPool<TT;>;"
    monitor-enter p0

    .line 1249
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/GenericObjectPool;->isClosed()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_6b

    if-eqz v0, :cond_9

    monitor-exit p0

    return-void

    .line 1253
    :cond_9
    :goto_9
    :try_start_9
    iget-object v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_pool:Lorg/apache/commons/pool/impl/CursorableLinkedList;

    invoke-virtual {v0}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3b

    iget-object v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_allocationQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 1254
    iget-object v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_allocationQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;

    .line 1255
    .local v0, "latch":Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;, "Lorg/apache/commons/pool/impl/GenericObjectPool$Latch<TT;>;"
    iget-object v2, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_pool:Lorg/apache/commons/pool/impl/CursorableLinkedList;

    invoke-virtual {v2}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;

    invoke-static {v0, v2}, Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;->access$300(Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;)V

    .line 1256
    iget v2, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_numInternalProcessing:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_numInternalProcessing:I

    .line 1257
    monitor-enter v0
    :try_end_33
    .catchall {:try_start_9 .. :try_end_33} :catchall_6b

    .line 1258
    :try_start_33
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1259
    monitor-exit v0

    .line 1260
    .end local v0    # "latch":Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;, "Lorg/apache/commons/pool/impl/GenericObjectPool$Latch<TT;>;"
    goto :goto_9

    .line 1259
    .restart local v0    # "latch":Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;, "Lorg/apache/commons/pool/impl/GenericObjectPool$Latch<TT;>;"
    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_38

    :try_start_3a
    throw v1

    .line 1267
    .end local v0    # "latch":Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;, "Lorg/apache/commons/pool/impl/GenericObjectPool$Latch<TT;>;"
    :cond_3b
    :goto_3b
    iget-object v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_allocationQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_69

    iget v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_maxActive:I

    if-ltz v0, :cond_50

    iget v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_numActive:I

    iget v2, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_numInternalProcessing:I

    add-int/2addr v0, v2

    iget v2, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_maxActive:I

    if-ge v0, v2, :cond_69

    .line 1268
    :cond_50
    iget-object v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_allocationQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;

    .line 1269
    .restart local v0    # "latch":Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;, "Lorg/apache/commons/pool/impl/GenericObjectPool$Latch<TT;>;"
    invoke-static {v0, v1}, Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;->access$500(Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;Z)V

    .line 1270
    iget v2, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_numInternalProcessing:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_numInternalProcessing:I

    .line 1271
    monitor-enter v0
    :try_end_61
    .catchall {:try_start_3a .. :try_end_61} :catchall_6b

    .line 1272
    :try_start_61
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1273
    monitor-exit v0

    .line 1274
    .end local v0    # "latch":Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;, "Lorg/apache/commons/pool/impl/GenericObjectPool$Latch<TT;>;"
    goto :goto_3b

    .line 1273
    .restart local v0    # "latch":Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;, "Lorg/apache/commons/pool/impl/GenericObjectPool$Latch<TT;>;"
    :catchall_66
    move-exception v1

    monitor-exit v0
    :try_end_68
    .catchall {:try_start_61 .. :try_end_68} :catchall_66

    :try_start_68
    throw v1
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_6b

    .line 1278
    .end local v0    # "latch":Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;, "Lorg/apache/commons/pool/impl/GenericObjectPool$Latch<TT;>;"
    :cond_69
    monitor-exit p0

    return-void

    .line 1248
    :catchall_6b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized calculateDeficit(Z)I
    .registers 6
    .param p1, "incrementInternal"    # Z

    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPool;, "Lorg/apache/commons/pool/impl/GenericObjectPool<TT;>;"
    monitor-enter p0

    .line 1669
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/GenericObjectPool;->getMinIdle()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/GenericObjectPool;->getNumIdle()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1670
    .local v0, "objectDeficit":I
    iget v1, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_maxActive:I

    if-lez v1, :cond_29

    .line 1671
    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/GenericObjectPool;->getMaxActive()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/GenericObjectPool;->getNumActive()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/GenericObjectPool;->getNumIdle()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_numInternalProcessing:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1673
    .local v1, "growLimit":I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v0, v2

    .line 1675
    .end local v1    # "growLimit":I
    :cond_29
    if-eqz p1, :cond_33

    if-lez v0, :cond_33

    .line 1676
    iget v1, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_numInternalProcessing:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_numInternalProcessing:I
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_35

    .line 1678
    :cond_33
    monitor-exit p0

    return v0

    .line 1668
    .end local v0    # "objectDeficit":I
    .end local p1    # "incrementInternal":Z
    :catchall_35
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private destroy(Ljava/util/Collection;Lorg/apache/commons/pool/PoolableObjectFactory;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<",
            "TT;>;>;",
            "Lorg/apache/commons/pool/PoolableObjectFactory<",
            "TT;>;)V"
        }
    .end annotation

    .line 1337
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPool;, "Lorg/apache/commons/pool/impl/GenericObjectPool<TT;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TT;>;>;"
    .local p2, "factory":Lorg/apache/commons/pool/PoolableObjectFactory;, "Lorg/apache/commons/pool/PoolableObjectFactory<TT;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TT;>;>;"
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 1339
    :try_start_a
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;

    iget-object v1, v1, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;->value:Ljava/lang/Object;

    invoke-interface {p2, v1}, Lorg/apache/commons/pool/PoolableObjectFactory;->destroyObject(Ljava/lang/Object;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_15} :catch_31
    .catchall {:try_start_a .. :try_end_15} :catchall_21

    .line 1343
    monitor-enter p0

    .line 1344
    :try_start_16
    iget v1, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_numInternalProcessing:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_numInternalProcessing:I

    .line 1345
    monitor-exit p0

    goto :goto_3a

    :catchall_1e
    move-exception v1

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_16 .. :try_end_20} :catchall_1e

    throw v1

    .line 1343
    :catchall_21
    move-exception v1

    monitor-enter p0

    .line 1344
    :try_start_23
    iget v2, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_numInternalProcessing:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_numInternalProcessing:I

    .line 1345
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_2e

    .line 1346
    invoke-direct {p0}, Lorg/apache/commons/pool/impl/GenericObjectPool;->allocate()V

    throw v1

    .line 1345
    :catchall_2e
    move-exception v1

    :try_start_2f
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v1

    .line 1340
    :catch_31
    move-exception v1

    .line 1343
    monitor-enter p0

    .line 1344
    :try_start_33
    iget v1, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_numInternalProcessing:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_numInternalProcessing:I

    .line 1345
    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_3e

    .line 1346
    :goto_3a
    invoke-direct {p0}, Lorg/apache/commons/pool/impl/GenericObjectPool;->allocate()V

    .line 1347
    goto :goto_4

    .line 1345
    :catchall_3e
    move-exception v1

    :try_start_3f
    monitor-exit p0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw v1

    .line 1349
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TT;>;>;"
    :cond_41
    return-void
.end method

.method private ensureMinIdle()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1645
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPool;, "Lorg/apache/commons/pool/impl/GenericObjectPool<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/pool/impl/GenericObjectPool;->calculateDeficit(Z)I

    move-result v1

    .line 1646
    .local v1, "objectDeficit":I
    nop

    .local v0, "j":I
    :goto_6
    if-ge v0, v1, :cond_32

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lorg/apache/commons/pool/impl/GenericObjectPool;->calculateDeficit(Z)I

    move-result v3

    if-lez v3, :cond_32

    .line 1648
    :try_start_f
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/GenericObjectPool;->addObject()V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_23

    .line 1650
    monitor-enter p0

    .line 1651
    :try_start_13
    iget v3, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_numInternalProcessing:I

    sub-int/2addr v3, v2

    iput v3, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_numInternalProcessing:I

    .line 1652
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_20

    .line 1653
    invoke-direct {p0}, Lorg/apache/commons/pool/impl/GenericObjectPool;->allocate()V

    .line 1654
    nop

    .line 1646
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1652
    :catchall_20
    move-exception v2

    :try_start_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v2

    .line 1650
    :catchall_23
    move-exception v3

    monitor-enter p0

    .line 1651
    :try_start_25
    iget v4, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_numInternalProcessing:I

    sub-int/2addr v4, v2

    iput v4, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_numInternalProcessing:I

    .line 1652
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_2f

    .line 1653
    invoke-direct {p0}, Lorg/apache/commons/pool/impl/GenericObjectPool;->allocate()V

    throw v3

    .line 1652
    :catchall_2f
    move-exception v2

    :try_start_30
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v2

    .line 1656
    .end local v0    # "j":I
    :cond_32
    return-void
.end method

.method private getNumTests()I
    .registers 5

    .line 1754
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPool;, "Lorg/apache/commons/pool/impl/GenericObjectPool<TT;>;"
    iget v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_numTestsPerEvictionRun:I

    if-ltz v0, :cond_11

    .line 1755
    iget v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_numTestsPerEvictionRun:I

    iget-object v1, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_pool:Lorg/apache/commons/pool/impl/CursorableLinkedList;

    invoke-virtual {v1}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    .line 1757
    :cond_11
    iget-object v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_pool:Lorg/apache/commons/pool/impl/CursorableLinkedList;

    invoke-virtual {v0}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->size()I

    move-result v0

    int-to-double v0, v0

    iget v2, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_numTestsPerEvictionRun:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method


# virtual methods
.method public addObject()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1687
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPool;, "Lorg/apache/commons/pool/impl/GenericObjectPool<TT;>;"
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/GenericObjectPool;->assertOpen()V

    .line 1688
    iget-object v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    if-eqz v0, :cond_1f

    .line 1691
    iget-object v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    invoke-interface {v0}, Lorg/apache/commons/pool/PoolableObjectFactory;->makeObject()Ljava/lang/Object;

    move-result-object v0

    .line 1693
    .local v0, "obj":Ljava/lang/Object;, "TT;"
    :try_start_d
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/GenericObjectPool;->assertOpen()V

    .line 1694
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/pool/impl/GenericObjectPool;->addObjectToPool(Ljava/lang/Object;Z)V
    :try_end_14
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_14} :catch_16

    .line 1702
    nop

    .line 1703
    return-void

    .line 1695
    :catch_16
    move-exception v1

    .line 1697
    .local v1, "ex":Ljava/lang/IllegalStateException;
    :try_start_17
    iget-object v2, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    invoke-interface {v2, v0}, Lorg/apache/commons/pool/PoolableObjectFactory;->destroyObject(Ljava/lang/Object;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1c} :catch_1d

    .line 1700
    goto :goto_1e

    .line 1698
    :catch_1d
    move-exception v2

    .line 1701
    :goto_1e
    throw v1

    .line 1689
    .end local v0    # "obj":Ljava/lang/Object;, "TT;"
    .end local v1    # "ex":Ljava/lang/IllegalStateException;
    :cond_1f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot add objects without a factory."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public borrowObject()Ljava/lang/Object;
    .registers 16
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

    .line 1059
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPool;, "Lorg/apache/commons/pool/impl/GenericObjectPool<TT;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1060
    .local v0, "starttime":J
    new-instance v2, Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;-><init>(Lorg/apache/commons/pool/impl/GenericObjectPool$1;)V

    .line 1063
    .local v2, "latch":Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;, "Lorg/apache/commons/pool/impl/GenericObjectPool$Latch<TT;>;"
    monitor-enter p0

    .line 1067
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    :try_start_e
    iget-byte v6, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_whenExhaustedAction:B
    :try_end_10
    .catchall {:try_start_e .. :try_end_10} :catchall_20b

    .line 1068
    .local v6, "whenExhaustedAction":B
    :try_start_10
    iget-wide v7, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_maxWait:J
    :try_end_12
    .catchall {:try_start_10 .. :try_end_12} :catchall_209

    .line 1071
    .local v7, "maxWait":J
    :try_start_12
    iget-object v9, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_allocationQueue:Ljava/util/LinkedList;

    invoke-virtual {v9, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1072
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_206

    .line 1075
    invoke-direct {p0}, Lorg/apache/commons/pool/impl/GenericObjectPool;->allocate()V

    .line 1078
    :cond_1b
    :goto_1b
    monitor-enter p0

    .line 1079
    :try_start_1c
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/GenericObjectPool;->assertOpen()V

    .line 1080
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_203

    .line 1083
    invoke-static {v2}, Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;->access$100(Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;)Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;

    move-result-object v9

    const/4 v10, 0x1

    if-nez v9, :cond_145

    .line 1085
    invoke-static {v2}, Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;->access$200(Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;)Z

    move-result v9

    if-eqz v9, :cond_2f

    goto/16 :goto_145

    .line 1089
    :cond_2f
    packed-switch v6, :pswitch_data_210

    .line 1179
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WhenExhaustedAction property "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " not recognized."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1092
    :pswitch_4e
    monitor-enter p0

    .line 1095
    :try_start_4f
    invoke-static {v2}, Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;->access$100(Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;)Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;

    move-result-object v9

    if-nez v9, :cond_65

    invoke-static {v2}, Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;->access$200(Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;)Z

    move-result v9

    if-nez v9, :cond_65

    .line 1096
    iget-object v9, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_allocationQueue:Ljava/util/LinkedList;

    invoke-virtual {v9, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 1097
    iget v9, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_numInternalProcessing:I

    add-int/2addr v9, v10

    iput v9, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_numInternalProcessing:I

    .line 1099
    :cond_65
    monitor-exit p0

    .line 1100
    goto/16 :goto_145

    .line 1099
    :catchall_68
    move-exception v3

    monitor-exit p0
    :try_end_6a
    .catchall {:try_start_4f .. :try_end_6a} :catchall_68

    throw v3

    .line 1113
    :pswitch_6b
    :try_start_6b
    monitor-enter v2
    :try_end_6c
    .catch Ljava/lang/InterruptedException; {:try_start_6b .. :try_end_6c} :catch_d5

    .line 1116
    :try_start_6c
    invoke-static {v2}, Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;->access$100(Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;)Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;

    move-result-object v9

    if-nez v9, :cond_cf

    invoke-static {v2}, Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;->access$200(Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;)Z

    move-result v9

    if-nez v9, :cond_cf

    .line 1117
    cmp-long v9, v7, v4

    if-gtz v9, :cond_80

    .line 1118
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    goto :goto_90

    .line 1122
    :cond_80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const/4 v9, 0x0

    sub-long/2addr v11, v0

    .line 1123
    .local v11, "elapsed":J
    sub-long v13, v7, v11

    .line 1124
    .local v13, "waitTime":J
    cmp-long v9, v13, v4

    if-lez v9, :cond_8f

    .line 1126
    invoke-virtual {v2, v13, v14}, Ljava/lang/Object;->wait(J)V

    .line 1128
    .end local v11    # "elapsed":J
    .end local v13    # "waitTime":J
    :cond_8f
    nop

    .line 1132
    :goto_90
    monitor-exit v2
    :try_end_91
    .catchall {:try_start_6c .. :try_end_91} :catchall_d2

    .line 1134
    :try_start_91
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/GenericObjectPool;->isClosed()Z

    move-result v9
    :try_end_95
    .catch Ljava/lang/InterruptedException; {:try_start_91 .. :try_end_95} :catch_d5

    if-eq v9, v10, :cond_c7

    .line 1162
    nop

    .line 1163
    cmp-long v9, v7, v4

    if-lez v9, :cond_1b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v0

    cmp-long v9, v11, v7

    if-ltz v9, :cond_1b

    .line 1164
    monitor-enter p0

    .line 1167
    :try_start_a6
    invoke-static {v2}, Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;->access$100(Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;)Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;

    move-result-object v9

    if-nez v9, :cond_c1

    invoke-static {v2}, Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;->access$200(Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;)Z

    move-result v9

    if-eqz v9, :cond_b3

    goto :goto_c1

    .line 1169
    :cond_b3
    iget-object v3, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_allocationQueue:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 1173
    monitor-exit p0
    :try_end_b9
    .catchall {:try_start_a6 .. :try_end_b9} :catchall_c4

    .line 1174
    new-instance v3, Ljava/util/NoSuchElementException;

    const-string v4, "Timeout waiting for idle object"

    invoke-direct {v3, v4}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1171
    :cond_c1
    :goto_c1
    :try_start_c1
    monitor-exit p0

    goto/16 :goto_145

    .line 1173
    :catchall_c4
    move-exception v3

    monitor-exit p0
    :try_end_c6
    .catchall {:try_start_c1 .. :try_end_c6} :catchall_c4

    throw v3

    .line 1135
    :cond_c7
    :try_start_c7
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Pool closed"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_cf
    .catch Ljava/lang/InterruptedException; {:try_start_c7 .. :try_end_cf} :catch_d5

    .line 1130
    :cond_cf
    :try_start_cf
    monitor-exit v2

    goto/16 :goto_145

    .line 1132
    :catchall_d2
    move-exception v3

    monitor-exit v2
    :try_end_d4
    .catchall {:try_start_cf .. :try_end_d4} :catchall_d2

    :try_start_d4
    throw v3
    :try_end_d5
    .catch Ljava/lang/InterruptedException; {:try_start_d4 .. :try_end_d5} :catch_d5

    .line 1137
    :catch_d5
    move-exception v3

    move-object v9, v3

    .line 1138
    .local v9, "e":Ljava/lang/InterruptedException;
    const/4 v3, 0x0

    .line 1139
    .local v3, "doAllocate":Z
    monitor-enter p0

    .line 1141
    :try_start_d9
    invoke-static {v2}, Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;->access$100(Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;)Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;

    move-result-object v4

    if-nez v4, :cond_eb

    invoke-static {v2}, Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;->access$200(Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;)Z

    move-result v4

    if-nez v4, :cond_eb

    .line 1144
    iget-object v4, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_allocationQueue:Ljava/util/LinkedList;

    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_113

    .line 1145
    :cond_eb
    invoke-static {v2}, Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;->access$100(Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;)Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;

    move-result-object v4

    if-nez v4, :cond_fe

    invoke-static {v2}, Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;->access$200(Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;)Z

    move-result v4

    if-eqz v4, :cond_fe

    .line 1148
    iget v4, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_numInternalProcessing:I

    sub-int/2addr v4, v10

    iput v4, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_numInternalProcessing:I

    .line 1149
    const/4 v3, 0x1

    goto :goto_113

    .line 1152
    :cond_fe
    iget v4, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_numInternalProcessing:I

    sub-int/2addr v4, v10

    iput v4, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_numInternalProcessing:I

    .line 1153
    iget v4, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_numActive:I

    add-int/2addr v4, v10

    iput v4, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_numActive:I

    .line 1154
    invoke-static {v2}, Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;->access$100(Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;)Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/commons/pool/impl/GenericObjectPool;->returnObject(Ljava/lang/Object;)V

    .line 1156
    :goto_113
    monitor-exit p0
    :try_end_114
    .catchall {:try_start_d9 .. :try_end_114} :catchall_121

    .line 1157
    if-eqz v3, :cond_119

    .line 1158
    invoke-direct {p0}, Lorg/apache/commons/pool/impl/GenericObjectPool;->allocate()V

    .line 1160
    :cond_119
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 1161
    throw v9

    .line 1156
    :catchall_121
    move-exception v4

    :try_start_122
    monitor-exit p0
    :try_end_123
    .catchall {:try_start_122 .. :try_end_123} :catchall_121

    throw v4

    .line 1102
    .end local v3    # "doAllocate":Z
    .end local v9    # "e":Ljava/lang/InterruptedException;
    :pswitch_124
    monitor-enter p0

    .line 1105
    :try_start_125
    invoke-static {v2}, Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;->access$100(Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;)Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;

    move-result-object v9

    if-nez v9, :cond_140

    invoke-static {v2}, Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;->access$200(Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;)Z

    move-result v9

    if-eqz v9, :cond_132

    goto :goto_140

    .line 1108
    :cond_132
    iget-object v3, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_allocationQueue:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 1109
    monitor-exit p0
    :try_end_138
    .catchall {:try_start_125 .. :try_end_138} :catchall_142

    .line 1110
    new-instance v3, Ljava/util/NoSuchElementException;

    const-string v4, "Pool exhausted"

    invoke-direct {v3, v4}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1106
    :cond_140
    :goto_140
    :try_start_140
    monitor-exit p0

    goto :goto_145

    .line 1109
    :catchall_142
    move-exception v3

    monitor-exit p0
    :try_end_144
    .catchall {:try_start_140 .. :try_end_144} :catchall_142

    throw v3

    .line 1185
    :cond_145
    :goto_145
    const/4 v9, 0x0

    .line 1186
    .local v9, "newlyCreated":Z
    invoke-static {v2}, Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;->access$100(Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;)Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;

    move-result-object v11

    if-nez v11, :cond_17d

    .line 1188
    :try_start_14c
    iget-object v11, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    invoke-interface {v11}, Lorg/apache/commons/pool/PoolableObjectFactory;->makeObject()Ljava/lang/Object;

    move-result-object v11

    .line 1189
    .local v11, "obj":Ljava/lang/Object;, "TT;"
    new-instance v12, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;

    invoke-direct {v12, v11}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;-><init>(Ljava/lang/Object;)V

    invoke-static {v2, v12}, Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;->access$300(Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;)V
    :try_end_15a
    .catchall {:try_start_14c .. :try_end_15a} :catchall_16b

    .line 1190
    const/4 v9, 0x1

    .line 1192
    .end local v11    # "obj":Ljava/lang/Object;, "TT;"
    if-nez v9, :cond_17d

    .line 1194
    monitor-enter p0

    .line 1195
    :try_start_15e
    iget v11, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_numInternalProcessing:I

    sub-int/2addr v11, v10

    iput v11, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_numInternalProcessing:I

    .line 1197
    monitor-exit p0
    :try_end_164
    .catchall {:try_start_15e .. :try_end_164} :catchall_168

    .line 1198
    invoke-direct {p0}, Lorg/apache/commons/pool/impl/GenericObjectPool;->allocate()V

    goto :goto_17d

    .line 1197
    :catchall_168
    move-exception v3

    :try_start_169
    monitor-exit p0
    :try_end_16a
    .catchall {:try_start_169 .. :try_end_16a} :catchall_168

    throw v3

    .line 1192
    :catchall_16b
    move-exception v3

    if-nez v9, :cond_17c

    .line 1194
    monitor-enter p0

    .line 1195
    :try_start_16f
    iget v4, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_numInternalProcessing:I

    sub-int/2addr v4, v10

    iput v4, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_numInternalProcessing:I

    .line 1197
    monitor-exit p0
    :try_end_175
    .catchall {:try_start_16f .. :try_end_175} :catchall_179

    .line 1198
    invoke-direct {p0}, Lorg/apache/commons/pool/impl/GenericObjectPool;->allocate()V

    goto :goto_17c

    .line 1197
    :catchall_179
    move-exception v3

    :try_start_17a
    monitor-exit p0
    :try_end_17b
    .catchall {:try_start_17a .. :try_end_17b} :catchall_179

    throw v3

    .line 1198
    :cond_17c
    :goto_17c
    throw v3

    .line 1204
    :cond_17d
    :goto_17d
    :try_start_17d
    iget-object v11, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    invoke-static {v2}, Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;->access$100(Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;)Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;

    move-result-object v12

    iget-object v12, v12, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;->value:Ljava/lang/Object;

    invoke-interface {v11, v12}, Lorg/apache/commons/pool/PoolableObjectFactory;->activateObject(Ljava/lang/Object;)V

    .line 1205
    iget-boolean v11, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_testOnBorrow:Z

    if-eqz v11, :cond_1a3

    iget-object v11, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    invoke-static {v2}, Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;->access$100(Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;)Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;

    move-result-object v12

    iget-object v12, v12, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;->value:Ljava/lang/Object;

    invoke-interface {v11, v12}, Lorg/apache/commons/pool/PoolableObjectFactory;->validateObject(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_19b

    goto :goto_1a3

    .line 1207
    :cond_19b
    new-instance v11, Ljava/lang/Exception;

    const-string v12, "ValidateObject failed"

    invoke-direct {v11, v12}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1209
    :cond_1a3
    :goto_1a3
    monitor-enter p0
    :try_end_1a4
    .catch Ljava/lang/Throwable; {:try_start_17d .. :try_end_1a4} :catch_1b9

    .line 1210
    :try_start_1a4
    iget v11, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_numInternalProcessing:I

    sub-int/2addr v11, v10

    iput v11, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_numInternalProcessing:I

    .line 1211
    iget v11, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_numActive:I

    add-int/2addr v11, v10

    iput v11, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_numActive:I

    .line 1212
    monitor-exit p0
    :try_end_1af
    .catchall {:try_start_1a4 .. :try_end_1af} :catchall_1b6

    .line 1213
    :try_start_1af
    invoke-static {v2}, Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;->access$100(Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;)Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;

    move-result-object v11

    iget-object v11, v11, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;->value:Ljava/lang/Object;
    :try_end_1b5
    .catch Ljava/lang/Throwable; {:try_start_1af .. :try_end_1b5} :catch_1b9

    return-object v11

    .line 1212
    :catchall_1b6
    move-exception v11

    :try_start_1b7
    monitor-exit p0
    :try_end_1b8
    .catchall {:try_start_1b7 .. :try_end_1b8} :catchall_1b6

    :try_start_1b8
    throw v11
    :try_end_1b9
    .catch Ljava/lang/Throwable; {:try_start_1b8 .. :try_end_1b9} :catch_1b9

    .line 1215
    :catch_1b9
    move-exception v11

    .line 1216
    .local v11, "e":Ljava/lang/Throwable;
    invoke-static {v11}, Lorg/apache/commons/pool/PoolUtils;->checkRethrow(Ljava/lang/Throwable;)V

    .line 1219
    :try_start_1bd
    iget-object v12, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    invoke-static {v2}, Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;->access$100(Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;)Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;

    move-result-object v13

    iget-object v13, v13, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;->value:Ljava/lang/Object;

    invoke-interface {v12, v13}, Lorg/apache/commons/pool/PoolableObjectFactory;->destroyObject(Ljava/lang/Object;)V
    :try_end_1c8
    .catch Ljava/lang/Throwable; {:try_start_1bd .. :try_end_1c8} :catch_1c9

    .line 1223
    goto :goto_1cd

    .line 1220
    :catch_1c9
    move-exception v12

    .line 1221
    .local v12, "e2":Ljava/lang/Throwable;
    invoke-static {v12}, Lorg/apache/commons/pool/PoolUtils;->checkRethrow(Ljava/lang/Throwable;)V

    .line 1224
    .end local v12    # "e2":Ljava/lang/Throwable;
    :goto_1cd
    monitor-enter p0

    .line 1225
    :try_start_1ce
    iget v12, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_numInternalProcessing:I

    sub-int/2addr v12, v10

    iput v12, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_numInternalProcessing:I

    .line 1226
    if-nez v9, :cond_1dd

    .line 1227
    invoke-static {v2}, Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;->access$400(Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;)V

    .line 1228
    iget-object v10, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_allocationQueue:Ljava/util/LinkedList;

    invoke-virtual {v10, v3, v2}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 1230
    :cond_1dd
    monitor-exit p0
    :try_end_1de
    .catchall {:try_start_1ce .. :try_end_1de} :catchall_200

    .line 1231
    invoke-direct {p0}, Lorg/apache/commons/pool/impl/GenericObjectPool;->allocate()V

    .line 1232
    if-nez v9, :cond_1e5

    .line 1236
    goto/16 :goto_1b

    .line 1233
    :cond_1e5
    new-instance v3, Ljava/util/NoSuchElementException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not create a validated object, cause: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1230
    :catchall_200
    move-exception v3

    :try_start_201
    monitor-exit p0
    :try_end_202
    .catchall {:try_start_201 .. :try_end_202} :catchall_200

    throw v3

    .line 1080
    .end local v9    # "newlyCreated":Z
    .end local v11    # "e":Ljava/lang/Throwable;
    :catchall_203
    move-exception v3

    :try_start_204
    monitor-exit p0
    :try_end_205
    .catchall {:try_start_204 .. :try_end_205} :catchall_203

    throw v3

    .line 1072
    :catchall_206
    move-exception v3

    move-wide v4, v7

    goto :goto_20e

    .end local v7    # "maxWait":J
    :catchall_209
    move-exception v3

    goto :goto_20e

    .end local v6    # "whenExhaustedAction":B
    :catchall_20b
    move-exception v6

    move-object v3, v6

    const/4 v6, 0x0

    .local v4, "maxWait":J
    .restart local v6    # "whenExhaustedAction":B
    :goto_20e
    :try_start_20e
    monitor-exit p0
    :try_end_20f
    .catchall {:try_start_20e .. :try_end_20f} :catchall_209

    throw v3

    :pswitch_data_210
    .packed-switch 0x0
        :pswitch_124
        :pswitch_6b
        :pswitch_4e
    .end packed-switch
.end method

.method public clear()V
    .registers 4

    .line 1317
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPool;, "Lorg/apache/commons/pool/impl/GenericObjectPool<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1319
    .local v0, "toDestroy":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TT;>;>;"
    monitor-enter p0

    .line 1320
    :try_start_6
    iget-object v1, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_pool:Lorg/apache/commons/pool/impl/CursorableLinkedList;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1321
    iget v1, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_numInternalProcessing:I

    iget-object v2, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_pool:Lorg/apache/commons/pool/impl/CursorableLinkedList;

    iget v2, v2, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_size:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_numInternalProcessing:I

    .line 1322
    iget-object v1, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_pool:Lorg/apache/commons/pool/impl/CursorableLinkedList;

    invoke-virtual {v1}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->clear()V

    .line 1323
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_20

    .line 1324
    iget-object v1, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/pool/impl/GenericObjectPool;->destroy(Ljava/util/Collection;Lorg/apache/commons/pool/PoolableObjectFactory;)V

    .line 1325
    return-void

    .line 1323
    :catchall_20
    move-exception v1

    :try_start_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1493
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPool;, "Lorg/apache/commons/pool/impl/GenericObjectPool<TT;>;"
    invoke-super {p0}, Lorg/apache/commons/pool/BaseObjectPool;->close()V

    .line 1494
    monitor-enter p0

    .line 1495
    :try_start_4
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/GenericObjectPool;->clear()V

    .line 1496
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/pool/impl/GenericObjectPool;->startEvictor(J)V

    .line 1498
    :goto_c
    iget-object v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_allocationQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_25

    .line 1499
    iget-object v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_allocationQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;

    .line 1501
    .local v0, "l":Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;, "Lorg/apache/commons/pool/impl/GenericObjectPool$Latch<TT;>;"
    monitor-enter v0
    :try_end_1d
    .catchall {:try_start_4 .. :try_end_1d} :catchall_27

    .line 1503
    :try_start_1d
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1504
    monitor-exit v0

    .line 1505
    .end local v0    # "l":Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;, "Lorg/apache/commons/pool/impl/GenericObjectPool$Latch<TT;>;"
    goto :goto_c

    .line 1504
    .restart local v0    # "l":Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;, "Lorg/apache/commons/pool/impl/GenericObjectPool$Latch<TT;>;"
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_22

    :try_start_24
    throw v1

    .line 1506
    .end local v0    # "l":Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;, "Lorg/apache/commons/pool/impl/GenericObjectPool$Latch<TT;>;"
    :cond_25
    monitor-exit p0

    .line 1507
    return-void

    .line 1506
    :catchall_27
    move-exception v0

    monitor-exit p0
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_27

    throw v0
.end method

.method declared-synchronized debugInfo()Ljava/lang/String;
    .registers 9

    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPool;, "Lorg/apache/commons/pool/impl/GenericObjectPool<TT;>;"
    monitor-enter p0

    .line 1732
    :try_start_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1733
    .local v0, "buf":Ljava/lang/StringBuffer;
    const-string v1, "Active: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/GenericObjectPool;->getNumActive()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1734
    const-string v1, "Idle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/GenericObjectPool;->getNumIdle()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1735
    const-string v1, "Idle Objects:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1736
    iget-object v1, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_pool:Lorg/apache/commons/pool/impl/CursorableLinkedList;

    invoke-virtual {v1}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1737
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TT;>;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1738
    .local v2, "time":J
    :goto_37
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_60

    .line 1739
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;

    .line 1740
    .local v4, "pair":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TT;>;"
    const-string v5, "\t"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v5, v4, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;->value:Ljava/lang/Object;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v5, "\t"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v5, v4, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;->tstamp:J

    const/4 v7, 0x0

    sub-long v5, v2, v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1741
    .end local v4    # "pair":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TT;>;"
    goto :goto_37

    .line 1742
    :cond_60
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_64
    .catchall {:try_start_1 .. :try_end_64} :catchall_66

    monitor-exit p0

    return-object v4

    .line 1731
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TT;>;>;"
    .end local v2    # "time":J
    :catchall_66
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public evict()V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1554
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPool;, "Lorg/apache/commons/pool/impl/GenericObjectPool<TT;>;"
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/GenericObjectPool;->assertOpen()V

    .line 1555
    monitor-enter p0

    .line 1556
    :try_start_4
    iget-object v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_pool:Lorg/apache/commons/pool/impl/CursorableLinkedList;

    invoke-virtual {v0}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1557
    monitor-exit p0

    return-void

    .line 1559
    :cond_e
    iget-object v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_evictionCursor:Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;

    const/4 v1, 0x0

    if-nez v0, :cond_27

    .line 1560
    iget-object v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_pool:Lorg/apache/commons/pool/impl/CursorableLinkedList;

    iget-boolean v2, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_lifo:Z

    if-eqz v2, :cond_20

    iget-object v2, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_pool:Lorg/apache/commons/pool/impl/CursorableLinkedList;

    invoke-virtual {v2}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->size()I

    move-result v2

    goto :goto_21

    :cond_20
    const/4 v2, 0x0

    :goto_21
    invoke-virtual {v0, v2}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->cursor(I)Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_evictionCursor:Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;

    .line 1562
    :cond_27
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_4 .. :try_end_28} :catchall_11b

    .line 1564
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-direct {p0}, Lorg/apache/commons/pool/impl/GenericObjectPool;->getNumTests()I

    move-result v2

    const/4 v3, 0x0

    .local v2, "m":I
    .local v3, "pair":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TT;>;"
    :goto_2e
    if-ge v0, v2, :cond_117

    .line 1566
    monitor-enter p0

    .line 1567
    :try_start_31
    iget-boolean v4, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_lifo:Z

    if-eqz v4, :cond_3d

    iget-object v4, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_evictionCursor:Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;

    invoke-virtual {v4}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;->hasPrevious()Z

    move-result v4

    if-eqz v4, :cond_49

    :cond_3d
    iget-boolean v4, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_lifo:Z

    if-nez v4, :cond_62

    iget-object v4, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_evictionCursor:Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;

    invoke-virtual {v4}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;->hasNext()Z

    move-result v4

    if-nez v4, :cond_62

    .line 1569
    :cond_49
    iget-object v4, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_evictionCursor:Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;

    invoke-virtual {v4}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;->close()V

    .line 1570
    iget-object v4, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_pool:Lorg/apache/commons/pool/impl/CursorableLinkedList;

    iget-boolean v5, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_lifo:Z

    if-eqz v5, :cond_5b

    iget-object v5, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_pool:Lorg/apache/commons/pool/impl/CursorableLinkedList;

    invoke-virtual {v5}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->size()I

    move-result v5

    goto :goto_5c

    :cond_5b
    const/4 v5, 0x0

    :goto_5c
    invoke-virtual {v4, v5}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->cursor(I)Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_evictionCursor:Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;

    .line 1573
    :cond_62
    iget-boolean v4, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_lifo:Z

    if-eqz v4, :cond_6f

    iget-object v4, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_evictionCursor:Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;

    invoke-virtual {v4}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;->previous()Ljava/lang/Object;

    move-result-object v4

    :goto_6c
    check-cast v4, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;

    goto :goto_76

    :cond_6f
    iget-object v4, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_evictionCursor:Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;

    invoke-virtual {v4}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;->next()Ljava/lang/Object;

    move-result-object v4

    goto :goto_6c

    .end local v3    # "pair":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TT;>;"
    :goto_76
    move-object v3, v4

    .line 1577
    .restart local v3    # "pair":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TT;>;"
    iget-object v4, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_evictionCursor:Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;

    invoke-virtual {v4}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;->remove()V

    .line 1578
    iget v4, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_numInternalProcessing:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_numInternalProcessing:I

    .line 1579
    monitor-exit p0
    :try_end_83
    .catchall {:try_start_31 .. :try_end_83} :catchall_114

    .line 1581
    const/4 v4, 0x0

    .line 1582
    .local v4, "removeObject":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, v3, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;->tstamp:J

    sub-long/2addr v5, v7

    .line 1583
    .local v5, "idleTimeMilis":J
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/GenericObjectPool;->getMinEvictableIdleTimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-lez v11, :cond_9f

    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/GenericObjectPool;->getMinEvictableIdleTimeMillis()J

    move-result-wide v7

    cmp-long v11, v5, v7

    if-lez v11, :cond_9f

    .line 1585
    const/4 v4, 0x1

    goto :goto_bc

    .line 1586
    :cond_9f
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/GenericObjectPool;->getSoftMinEvictableIdleTimeMillis()J

    move-result-wide v7

    cmp-long v11, v7, v9

    if-lez v11, :cond_bc

    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/GenericObjectPool;->getSoftMinEvictableIdleTimeMillis()J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-lez v9, :cond_bc

    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/GenericObjectPool;->getNumIdle()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/GenericObjectPool;->getMinIdle()I

    move-result v8

    if-le v7, v8, :cond_bc

    .line 1589
    const/4 v4, 0x1

    .line 1591
    :cond_bc
    :goto_bc
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/GenericObjectPool;->getTestWhileIdle()Z

    move-result v7

    if-eqz v7, :cond_e8

    if-nez v4, :cond_e8

    .line 1592
    move v7, v1

    .line 1594
    .local v7, "active":Z
    :try_start_c5
    iget-object v8, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    iget-object v9, v3, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;->value:Ljava/lang/Object;

    invoke-interface {v8, v9}, Lorg/apache/commons/pool/PoolableObjectFactory;->activateObject(Ljava/lang/Object;)V
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_c5 .. :try_end_cc} :catch_ce

    .line 1595
    const/4 v7, 0x1

    .line 1598
    goto :goto_d0

    .line 1596
    :catch_ce
    move-exception v8

    .line 1597
    .local v8, "e":Ljava/lang/Exception;
    const/4 v4, 0x1

    .line 1599
    .end local v8    # "e":Ljava/lang/Exception;
    :goto_d0
    if-eqz v7, :cond_e8

    .line 1600
    iget-object v8, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    iget-object v9, v3, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;->value:Ljava/lang/Object;

    invoke-interface {v8, v9}, Lorg/apache/commons/pool/PoolableObjectFactory;->validateObject(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_de

    .line 1601
    const/4 v4, 0x1

    goto :goto_e8

    .line 1604
    :cond_de
    :try_start_de
    iget-object v8, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    iget-object v9, v3, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;->value:Ljava/lang/Object;

    invoke-interface {v8, v9}, Lorg/apache/commons/pool/PoolableObjectFactory;->passivateObject(Ljava/lang/Object;)V
    :try_end_e5
    .catch Ljava/lang/Exception; {:try_start_de .. :try_end_e5} :catch_e6

    .line 1607
    goto :goto_e8

    .line 1605
    :catch_e6
    move-exception v8

    .line 1606
    .restart local v8    # "e":Ljava/lang/Exception;
    const/4 v4, 0x1

    .line 1612
    .end local v7    # "active":Z
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_e8
    :goto_e8
    if-eqz v4, :cond_f3

    .line 1614
    :try_start_ea
    iget-object v7, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    iget-object v8, v3, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;->value:Ljava/lang/Object;

    invoke-interface {v7, v8}, Lorg/apache/commons/pool/PoolableObjectFactory;->destroyObject(Ljava/lang/Object;)V
    :try_end_f1
    .catch Ljava/lang/Exception; {:try_start_ea .. :try_end_f1} :catch_f2

    .line 1617
    goto :goto_f3

    .line 1615
    :catch_f2
    move-exception v7

    .line 1619
    :cond_f3
    :goto_f3
    monitor-enter p0

    .line 1620
    if-nez v4, :cond_107

    .line 1621
    :try_start_f6
    iget-object v7, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_evictionCursor:Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;

    invoke-virtual {v7, v3}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;->add(Ljava/lang/Object;)V

    .line 1622
    iget-boolean v7, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_lifo:Z

    if-eqz v7, :cond_107

    .line 1624
    iget-object v7, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_evictionCursor:Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;

    invoke-virtual {v7}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;->previous()Ljava/lang/Object;

    goto :goto_107

    .line 1628
    :catchall_105
    move-exception v1

    goto :goto_112

    .line 1627
    :cond_107
    :goto_107
    iget v7, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_numInternalProcessing:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_numInternalProcessing:I

    .line 1628
    monitor-exit p0

    .line 1564
    .end local v4    # "removeObject":Z
    .end local v5    # "idleTimeMilis":J
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2e

    .line 1628
    .restart local v4    # "removeObject":Z
    .restart local v5    # "idleTimeMilis":J
    :goto_112
    monitor-exit p0
    :try_end_113
    .catchall {:try_start_f6 .. :try_end_113} :catchall_105

    throw v1

    .line 1579
    .end local v4    # "removeObject":Z
    .end local v5    # "idleTimeMilis":J
    :catchall_114
    move-exception v1

    :try_start_115
    monitor-exit p0
    :try_end_116
    .catchall {:try_start_115 .. :try_end_116} :catchall_114

    throw v1

    .line 1630
    .end local v0    # "i":I
    .end local v2    # "m":I
    .end local v3    # "pair":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TT;>;"
    :cond_117
    invoke-direct {p0}, Lorg/apache/commons/pool/impl/GenericObjectPool;->allocate()V

    .line 1631
    return-void

    .line 1562
    :catchall_11b
    move-exception v0

    :try_start_11c
    monitor-exit p0
    :try_end_11d
    .catchall {:try_start_11c .. :try_end_11d} :catchall_11b

    throw v0
.end method

.method public declared-synchronized getLifo()Z
    .registers 2

    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPool;, "Lorg/apache/commons/pool/impl/GenericObjectPool<TT;>;"
    monitor-enter p0

    .line 986
    :try_start_1
    iget-boolean v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_lifo:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMaxActive()I
    .registers 2

    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPool;, "Lorg/apache/commons/pool/impl/GenericObjectPool<TT;>;"
    monitor-enter p0

    .line 616
    :try_start_1
    iget v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_maxActive:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMaxIdle()I
    .registers 2

    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPool;, "Lorg/apache/commons/pool/impl/GenericObjectPool<TT;>;"
    monitor-enter p0

    .line 721
    :try_start_1
    iget v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_maxIdle:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMaxWait()J
    .registers 3

    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPool;, "Lorg/apache/commons/pool/impl/GenericObjectPool<TT;>;"
    monitor-enter p0

    .line 690
    :try_start_1
    iget-wide v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_maxWait:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMinEvictableIdleTimeMillis()J
    .registers 3

    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPool;, "Lorg/apache/commons/pool/impl/GenericObjectPool<TT;>;"
    monitor-enter p0

    .line 898
    :try_start_1
    iget-wide v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_minEvictableIdleTimeMillis:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMinIdle()I
    .registers 2

    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPool;, "Lorg/apache/commons/pool/impl/GenericObjectPool<TT;>;"
    monitor-enter p0

    .line 772
    :try_start_1
    iget v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_minIdle:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNumActive()I
    .registers 2

    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPool;, "Lorg/apache/commons/pool/impl/GenericObjectPool<TT;>;"
    monitor-enter p0

    .line 1358
    :try_start_1
    iget v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_numActive:I
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

    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPool;, "Lorg/apache/commons/pool/impl/GenericObjectPool<TT;>;"
    monitor-enter p0

    .line 1368
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_pool:Lorg/apache/commons/pool/impl/CursorableLinkedList;

    invoke-virtual {v0}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->size()I

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

.method public declared-synchronized getNumTestsPerEvictionRun()I
    .registers 2

    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPool;, "Lorg/apache/commons/pool/impl/GenericObjectPool<TT;>;"
    monitor-enter p0

    .line 867
    :try_start_1
    iget v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_numTestsPerEvictionRun:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSoftMinEvictableIdleTimeMillis()J
    .registers 3

    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPool;, "Lorg/apache/commons/pool/impl/GenericObjectPool<TT;>;"
    monitor-enter p0

    .line 927
    :try_start_1
    iget-wide v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_softMinEvictableIdleTimeMillis:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTestOnBorrow()Z
    .registers 2

    .line 787
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPool;, "Lorg/apache/commons/pool/impl/GenericObjectPool<TT;>;"
    iget-boolean v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_testOnBorrow:Z

    return v0
.end method

.method public getTestOnReturn()Z
    .registers 2

    .line 815
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPool;, "Lorg/apache/commons/pool/impl/GenericObjectPool<TT;>;"
    iget-boolean v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_testOnReturn:Z

    return v0
.end method

.method public declared-synchronized getTestWhileIdle()Z
    .registers 2

    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPool;, "Lorg/apache/commons/pool/impl/GenericObjectPool<TT;>;"
    monitor-enter p0

    .line 958
    :try_start_1
    iget-boolean v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_testWhileIdle:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTimeBetweenEvictionRunsMillis()J
    .registers 3

    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPool;, "Lorg/apache/commons/pool/impl/GenericObjectPool<TT;>;"
    monitor-enter p0

    .line 841
    :try_start_1
    iget-wide v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_timeBetweenEvictionRunsMillis:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWhenExhaustedAction()B
    .registers 2

    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPool;, "Lorg/apache/commons/pool/impl/GenericObjectPool<TT;>;"
    monitor-enter p0

    .line 645
    :try_start_1
    iget-byte v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_whenExhaustedAction:B
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public invalidateObject(Ljava/lang/Object;)V
    .registers 4
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

    .line 1289
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPool;, "Lorg/apache/commons/pool/impl/GenericObjectPool<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    if-eqz v0, :cond_9

    .line 1290
    iget-object v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    invoke-interface {v0, p1}, Lorg/apache/commons/pool/PoolableObjectFactory;->destroyObject(Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_19

    .line 1293
    :cond_9
    monitor-enter p0

    .line 1294
    :try_start_a
    iget v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_numActive:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_numActive:I

    .line 1295
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_16

    .line 1296
    invoke-direct {p0}, Lorg/apache/commons/pool/impl/GenericObjectPool;->allocate()V

    .line 1297
    nop

    .line 1298
    return-void

    .line 1295
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0

    .line 1293
    :catchall_19
    move-exception v0

    monitor-enter p0

    .line 1294
    :try_start_1b
    iget v1, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_numActive:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_numActive:I

    .line 1295
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_26

    .line 1296
    invoke-direct {p0}, Lorg/apache/commons/pool/impl/GenericObjectPool;->allocate()V

    throw v0

    .line 1295
    :catchall_26
    move-exception v0

    :try_start_27
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v0
.end method

.method public returnObject(Ljava/lang/Object;)V
    .registers 5
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

    .line 1393
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPool;, "Lorg/apache/commons/pool/impl/GenericObjectPool<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    :try_start_1
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/pool/impl/GenericObjectPool;->addObjectToPool(Ljava/lang/Object;Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_5

    .line 1409
    goto :goto_1f

    .line 1394
    :catch_5
    move-exception v1

    .line 1395
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    if-eqz v2, :cond_1f

    .line 1397
    :try_start_a
    iget-object v2, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    invoke-interface {v2, p1}, Lorg/apache/commons/pool/PoolableObjectFactory;->destroyObject(Ljava/lang/Object;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_10

    .line 1400
    goto :goto_11

    .line 1398
    :catch_10
    move-exception v2

    .line 1404
    :goto_11
    monitor-enter p0

    .line 1405
    :try_start_12
    iget v2, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_numActive:I

    sub-int/2addr v2, v0

    iput v2, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_numActive:I

    .line 1406
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_1c

    .line 1407
    invoke-direct {p0}, Lorg/apache/commons/pool/impl/GenericObjectPool;->allocate()V

    goto :goto_1f

    .line 1406
    :catchall_1c
    move-exception v0

    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v0

    .line 1410
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1f
    :goto_1f
    return-void
.end method

.method public setConfig(Lorg/apache/commons/pool/impl/GenericObjectPool$Config;)V
    .registers 4
    .param p1, "conf"    # Lorg/apache/commons/pool/impl/GenericObjectPool$Config;

    .line 1010
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPool;, "Lorg/apache/commons/pool/impl/GenericObjectPool<TT;>;"
    monitor-enter p0

    .line 1011
    :try_start_1
    iget v0, p1, Lorg/apache/commons/pool/impl/GenericObjectPool$Config;->maxIdle:I

    invoke-virtual {p0, v0}, Lorg/apache/commons/pool/impl/GenericObjectPool;->setMaxIdle(I)V

    .line 1012
    iget v0, p1, Lorg/apache/commons/pool/impl/GenericObjectPool$Config;->minIdle:I

    invoke-virtual {p0, v0}, Lorg/apache/commons/pool/impl/GenericObjectPool;->setMinIdle(I)V

    .line 1013
    iget v0, p1, Lorg/apache/commons/pool/impl/GenericObjectPool$Config;->maxActive:I

    invoke-virtual {p0, v0}, Lorg/apache/commons/pool/impl/GenericObjectPool;->setMaxActive(I)V

    .line 1014
    iget-wide v0, p1, Lorg/apache/commons/pool/impl/GenericObjectPool$Config;->maxWait:J

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/pool/impl/GenericObjectPool;->setMaxWait(J)V

    .line 1015
    iget-byte v0, p1, Lorg/apache/commons/pool/impl/GenericObjectPool$Config;->whenExhaustedAction:B

    invoke-virtual {p0, v0}, Lorg/apache/commons/pool/impl/GenericObjectPool;->setWhenExhaustedAction(B)V

    .line 1016
    iget-boolean v0, p1, Lorg/apache/commons/pool/impl/GenericObjectPool$Config;->testOnBorrow:Z

    invoke-virtual {p0, v0}, Lorg/apache/commons/pool/impl/GenericObjectPool;->setTestOnBorrow(Z)V

    .line 1017
    iget-boolean v0, p1, Lorg/apache/commons/pool/impl/GenericObjectPool$Config;->testOnReturn:Z

    invoke-virtual {p0, v0}, Lorg/apache/commons/pool/impl/GenericObjectPool;->setTestOnReturn(Z)V

    .line 1018
    iget-boolean v0, p1, Lorg/apache/commons/pool/impl/GenericObjectPool$Config;->testWhileIdle:Z

    invoke-virtual {p0, v0}, Lorg/apache/commons/pool/impl/GenericObjectPool;->setTestWhileIdle(Z)V

    .line 1019
    iget v0, p1, Lorg/apache/commons/pool/impl/GenericObjectPool$Config;->numTestsPerEvictionRun:I

    invoke-virtual {p0, v0}, Lorg/apache/commons/pool/impl/GenericObjectPool;->setNumTestsPerEvictionRun(I)V

    .line 1020
    iget-wide v0, p1, Lorg/apache/commons/pool/impl/GenericObjectPool$Config;->minEvictableIdleTimeMillis:J

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/pool/impl/GenericObjectPool;->setMinEvictableIdleTimeMillis(J)V

    .line 1021
    iget-wide v0, p1, Lorg/apache/commons/pool/impl/GenericObjectPool$Config;->timeBetweenEvictionRunsMillis:J

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/pool/impl/GenericObjectPool;->setTimeBetweenEvictionRunsMillis(J)V

    .line 1022
    iget-wide v0, p1, Lorg/apache/commons/pool/impl/GenericObjectPool$Config;->softMinEvictableIdleTimeMillis:J

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/pool/impl/GenericObjectPool;->setSoftMinEvictableIdleTimeMillis(J)V

    .line 1023
    iget-boolean v0, p1, Lorg/apache/commons/pool/impl/GenericObjectPool$Config;->lifo:Z

    invoke-virtual {p0, v0}, Lorg/apache/commons/pool/impl/GenericObjectPool;->setLifo(Z)V

    .line 1024
    monitor-exit p0
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_47

    .line 1025
    invoke-direct {p0}, Lorg/apache/commons/pool/impl/GenericObjectPool;->allocate()V

    .line 1026
    return-void

    .line 1024
    :catchall_47
    move-exception v0

    :try_start_48
    monitor-exit p0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw v0
.end method

.method public setFactory(Lorg/apache/commons/pool/PoolableObjectFactory;)V
    .registers 6
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

    .line 1524
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPool;, "Lorg/apache/commons/pool/impl/GenericObjectPool<TT;>;"
    .local p1, "factory":Lorg/apache/commons/pool/PoolableObjectFactory;, "Lorg/apache/commons/pool/PoolableObjectFactory<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1525
    .local v0, "toDestroy":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TT;>;>;"
    iget-object v1, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    .line 1526
    .local v1, "oldFactory":Lorg/apache/commons/pool/PoolableObjectFactory;, "Lorg/apache/commons/pool/PoolableObjectFactory<TT;>;"
    monitor-enter p0

    .line 1527
    :try_start_8
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/GenericObjectPool;->assertOpen()V

    .line 1528
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/GenericObjectPool;->getNumActive()I

    move-result v2

    if-gtz v2, :cond_2b

    .line 1531
    iget-object v2, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_pool:Lorg/apache/commons/pool/impl/CursorableLinkedList;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1532
    iget v2, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_numInternalProcessing:I

    iget-object v3, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_pool:Lorg/apache/commons/pool/impl/CursorableLinkedList;

    iget v3, v3, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_size:I

    add-int/2addr v2, v3

    iput v2, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_numInternalProcessing:I

    .line 1533
    iget-object v2, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_pool:Lorg/apache/commons/pool/impl/CursorableLinkedList;

    invoke-virtual {v2}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->clear()V

    .line 1535
    iput-object p1, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    .line 1536
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_33

    .line 1537
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/pool/impl/GenericObjectPool;->destroy(Ljava/util/Collection;Lorg/apache/commons/pool/PoolableObjectFactory;)V

    .line 1538
    return-void

    .line 1529
    :cond_2b
    :try_start_2b
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Objects are already active"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1536
    :catchall_33
    move-exception v2

    monitor-exit p0
    :try_end_35
    .catchall {:try_start_2b .. :try_end_35} :catchall_33

    throw v2
.end method

.method public declared-synchronized setLifo(Z)V
    .registers 2
    .param p1, "lifo"    # Z

    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPool;, "Lorg/apache/commons/pool/impl/GenericObjectPool<TT;>;"
    monitor-enter p0

    .line 1000
    :try_start_1
    iput-boolean p1, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_lifo:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 1001
    monitor-exit p0

    return-void

    .line 999
    .end local p1    # "lifo":Z
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setMaxActive(I)V
    .registers 3
    .param p1, "maxActive"    # I

    .line 630
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPool;, "Lorg/apache/commons/pool/impl/GenericObjectPool<TT;>;"
    monitor-enter p0

    .line 631
    :try_start_1
    iput p1, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_maxActive:I

    .line 632
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_8

    .line 633
    invoke-direct {p0}, Lorg/apache/commons/pool/impl/GenericObjectPool;->allocate()V

    .line 634
    return-void

    .line 632
    :catchall_8
    move-exception v0

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public setMaxIdle(I)V
    .registers 3
    .param p1, "maxIdle"    # I

    .line 738
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPool;, "Lorg/apache/commons/pool/impl/GenericObjectPool<TT;>;"
    monitor-enter p0

    .line 739
    :try_start_1
    iput p1, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_maxIdle:I

    .line 740
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_8

    .line 741
    invoke-direct {p0}, Lorg/apache/commons/pool/impl/GenericObjectPool;->allocate()V

    .line 742
    return-void

    .line 740
    :catchall_8
    move-exception v0

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public setMaxWait(J)V
    .registers 4
    .param p1, "maxWait"    # J

    .line 709
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPool;, "Lorg/apache/commons/pool/impl/GenericObjectPool<TT;>;"
    monitor-enter p0

    .line 710
    :try_start_1
    iput-wide p1, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_maxWait:J

    .line 711
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_8

    .line 712
    invoke-direct {p0}, Lorg/apache/commons/pool/impl/GenericObjectPool;->allocate()V

    .line 713
    return-void

    .line 711
    :catchall_8
    move-exception v0

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public declared-synchronized setMinEvictableIdleTimeMillis(J)V
    .registers 3
    .param p1, "minEvictableIdleTimeMillis"    # J

    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPool;, "Lorg/apache/commons/pool/impl/GenericObjectPool<TT;>;"
    monitor-enter p0

    .line 913
    :try_start_1
    iput-wide p1, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_minEvictableIdleTimeMillis:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 914
    monitor-exit p0

    return-void

    .line 912
    .end local p1    # "minEvictableIdleTimeMillis":J
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setMinIdle(I)V
    .registers 3
    .param p1, "minIdle"    # I

    .line 757
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPool;, "Lorg/apache/commons/pool/impl/GenericObjectPool<TT;>;"
    monitor-enter p0

    .line 758
    :try_start_1
    iput p1, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_minIdle:I

    .line 759
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_8

    .line 760
    invoke-direct {p0}, Lorg/apache/commons/pool/impl/GenericObjectPool;->allocate()V

    .line 761
    return-void

    .line 759
    :catchall_8
    move-exception v0

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public declared-synchronized setNumTestsPerEvictionRun(I)V
    .registers 2
    .param p1, "numTestsPerEvictionRun"    # I

    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPool;, "Lorg/apache/commons/pool/impl/GenericObjectPool<TT;>;"
    monitor-enter p0

    .line 885
    :try_start_1
    iput p1, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_numTestsPerEvictionRun:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 886
    monitor-exit p0

    return-void

    .line 884
    .end local p1    # "numTestsPerEvictionRun":I
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSoftMinEvictableIdleTimeMillis(J)V
    .registers 3
    .param p1, "softMinEvictableIdleTimeMillis"    # J

    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPool;, "Lorg/apache/commons/pool/impl/GenericObjectPool<TT;>;"
    monitor-enter p0

    .line 944
    :try_start_1
    iput-wide p1, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_softMinEvictableIdleTimeMillis:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 945
    monitor-exit p0

    return-void

    .line 943
    .end local p1    # "softMinEvictableIdleTimeMillis":J
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setTestOnBorrow(Z)V
    .registers 2
    .param p1, "testOnBorrow"    # Z

    .line 802
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPool;, "Lorg/apache/commons/pool/impl/GenericObjectPool<TT;>;"
    iput-boolean p1, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_testOnBorrow:Z

    .line 803
    return-void
.end method

.method public setTestOnReturn(Z)V
    .registers 2
    .param p1, "testOnReturn"    # Z

    .line 828
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPool;, "Lorg/apache/commons/pool/impl/GenericObjectPool<TT;>;"
    iput-boolean p1, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_testOnReturn:Z

    .line 829
    return-void
.end method

.method public declared-synchronized setTestWhileIdle(Z)V
    .registers 2
    .param p1, "testWhileIdle"    # Z

    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPool;, "Lorg/apache/commons/pool/impl/GenericObjectPool<TT;>;"
    monitor-enter p0

    .line 972
    :try_start_1
    iput-boolean p1, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_testWhileIdle:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 973
    monitor-exit p0

    return-void

    .line 971
    .end local p1    # "testWhileIdle":Z
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setTimeBetweenEvictionRunsMillis(J)V
    .registers 5
    .param p1, "timeBetweenEvictionRunsMillis"    # J

    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPool;, "Lorg/apache/commons/pool/impl/GenericObjectPool<TT;>;"
    monitor-enter p0

    .line 854
    :try_start_1
    iput-wide p1, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_timeBetweenEvictionRunsMillis:J

    .line 855
    iget-wide v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_timeBetweenEvictionRunsMillis:J

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/pool/impl/GenericObjectPool;->startEvictor(J)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 856
    monitor-exit p0

    return-void

    .line 853
    .end local p1    # "timeBetweenEvictionRunsMillis":J
    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setWhenExhaustedAction(B)V
    .registers 5
    .param p1, "whenExhaustedAction"    # B

    .line 659
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPool;, "Lorg/apache/commons/pool/impl/GenericObjectPool<TT;>;"
    monitor-enter p0

    .line 660
    packed-switch p1, :pswitch_data_2c

    .line 667
    :try_start_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    goto :goto_f

    .line 664
    :pswitch_7
    iput-byte p1, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_whenExhaustedAction:B

    .line 665
    nop

    .line 669
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_29

    .line 670
    invoke-direct {p0}, Lorg/apache/commons/pool/impl/GenericObjectPool;->allocate()V

    .line 671
    return-void

    .line 667
    :goto_f
    :try_start_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "whenExhaustedAction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " not recognized."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 669
    :catchall_29
    move-exception v0

    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_f .. :try_end_2b} :catchall_29

    throw v0

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method protected declared-synchronized startEvictor(J)V
    .registers 7
    .param p1, "delay"    # J

    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPool;, "Lorg/apache/commons/pool/impl/GenericObjectPool<TT;>;"
    monitor-enter p0

    .line 1715
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_evictor:Lorg/apache/commons/pool/impl/GenericObjectPool$Evictor;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 1716
    iget-object v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_evictor:Lorg/apache/commons/pool/impl/GenericObjectPool$Evictor;

    invoke-static {v0}, Lorg/apache/commons/pool/impl/EvictionTimer;->cancel(Ljava/util/TimerTask;)V

    .line 1717
    iput-object v1, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_evictor:Lorg/apache/commons/pool/impl/GenericObjectPool$Evictor;

    .line 1719
    :cond_d
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-lez v0, :cond_1f

    .line 1720
    new-instance v0, Lorg/apache/commons/pool/impl/GenericObjectPool$Evictor;

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/pool/impl/GenericObjectPool$Evictor;-><init>(Lorg/apache/commons/pool/impl/GenericObjectPool;Lorg/apache/commons/pool/impl/GenericObjectPool$1;)V

    iput-object v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_evictor:Lorg/apache/commons/pool/impl/GenericObjectPool$Evictor;

    .line 1721
    iget-object v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_evictor:Lorg/apache/commons/pool/impl/GenericObjectPool$Evictor;

    invoke-static {v0, p1, p2, p1, p2}, Lorg/apache/commons/pool/impl/EvictionTimer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_21

    .line 1723
    :cond_1f
    monitor-exit p0

    return-void

    .line 1714
    .end local p1    # "delay":J
    :catchall_21
    move-exception p1

    monitor-exit p0

    throw p1
.end method
