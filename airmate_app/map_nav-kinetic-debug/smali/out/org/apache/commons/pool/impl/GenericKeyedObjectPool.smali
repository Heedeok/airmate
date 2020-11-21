.class public Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;
.super Lorg/apache/commons/pool/BaseKeyedObjectPool;
.source "GenericKeyedObjectPool.java"

# interfaces
.implements Lorg/apache/commons/pool/KeyedObjectPool;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;,
        Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;,
        Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Evictor;,
        Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;,
        Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;
    }
.end annotation

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
.field public static final DEFAULT_LIFO:Z = true

.field public static final DEFAULT_MAX_ACTIVE:I = 0x8

.field public static final DEFAULT_MAX_IDLE:I = 0x8

.field public static final DEFAULT_MAX_TOTAL:I = -0x1

.field public static final DEFAULT_MAX_WAIT:J = -0x1L

.field public static final DEFAULT_MIN_EVICTABLE_IDLE_TIME_MILLIS:J = 0x1b7740L

.field public static final DEFAULT_MIN_IDLE:I = 0x0

.field public static final DEFAULT_NUM_TESTS_PER_EVICTION_RUN:I = 0x3

.field public static final DEFAULT_TEST_ON_BORROW:Z = false

.field public static final DEFAULT_TEST_ON_RETURN:Z = false

.field public static final DEFAULT_TEST_WHILE_IDLE:Z = false

.field public static final DEFAULT_TIME_BETWEEN_EVICTION_RUNS_MILLIS:J = -0x1L

.field public static final DEFAULT_WHEN_EXHAUSTED_ACTION:B = 0x1t

.field public static final WHEN_EXHAUSTED_BLOCK:B = 0x1t

.field public static final WHEN_EXHAUSTED_FAIL:B = 0x0t

.field public static final WHEN_EXHAUSTED_GROW:B = 0x2t


# instance fields
.field private _allocationQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<",
            "TK;TV;>.",
            "Latch<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private _evictionCursor:Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/pool/impl/CursorableLinkedList<",
            "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<",
            "TV;>;>.Cursor;"
        }
    .end annotation
.end field

.field private _evictionKeyCursor:Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/pool/impl/CursorableLinkedList<",
            "TK;>.Cursor;"
        }
    .end annotation
.end field

.field private _evictor:Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Evictor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<",
            "TK;TV;>.Evictor;"
        }
    .end annotation
.end field

.field private _factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/pool/KeyedPoolableObjectFactory<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private _lifo:Z

.field private _maxActive:I

.field private _maxIdle:I

.field private _maxTotal:I

.field private _maxWait:J

.field private _minEvictableIdleTimeMillis:J

.field private volatile _minIdle:I

.field private _numTestsPerEvictionRun:I

.field private _poolList:Lorg/apache/commons/pool/impl/CursorableLinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/pool/impl/CursorableLinkedList<",
            "TK;>;"
        }
    .end annotation
.end field

.field private _poolMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;",
            "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<",
            "TK;TV;>.ObjectQueue;>;"
        }
    .end annotation
.end field

.field private volatile _testOnBorrow:Z

.field private volatile _testOnReturn:Z

.field private _testWhileIdle:Z

.field private _timeBetweenEvictionRunsMillis:J

.field private _totalActive:I

.field private _totalIdle:I

.field private _totalInternalProcessing:I

.field private _whenExhaustedAction:B


# direct methods
.method public constructor <init>()V
    .registers 16

    .line 364
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>;"
    const/4 v1, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x1

    const-wide/16 v4, -0x1

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, -0x1

    const/4 v11, 0x3

    const-wide/32 v12, 0x1b7740

    const/4 v14, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v14}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;-><init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;IBJIZZJIJZ)V

    .line 367
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;)V
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool/KeyedPoolableObjectFactory<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 375
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>;"
    .local p1, "factory":Lorg/apache/commons/pool/KeyedPoolableObjectFactory;, "Lorg/apache/commons/pool/KeyedPoolableObjectFactory<TK;TV;>;"
    const/16 v2, 0x8

    const/4 v3, 0x1

    const-wide/16 v4, -0x1

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, -0x1

    const/4 v11, 0x3

    const-wide/32 v12, 0x1b7740

    const/4 v14, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v14}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;-><init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;IBJIZZJIJZ)V

    .line 378
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;I)V
    .registers 18
    .param p2, "maxActive"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool/KeyedPoolableObjectFactory<",
            "TK;TV;>;I)V"
        }
    .end annotation

    .line 399
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>;"
    .local p1, "factory":Lorg/apache/commons/pool/KeyedPoolableObjectFactory;, "Lorg/apache/commons/pool/KeyedPoolableObjectFactory<TK;TV;>;"
    const/4 v3, 0x1

    const-wide/16 v4, -0x1

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, -0x1

    const/4 v11, 0x3

    const-wide/32 v12, 0x1b7740

    const/4 v14, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct/range {v0 .. v14}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;-><init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;IBJIZZJIJZ)V

    .line 402
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;IBJ)V
    .registers 21
    .param p2, "maxActive"    # I
    .param p3, "whenExhaustedAction"    # B
    .param p4, "maxWait"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool/KeyedPoolableObjectFactory<",
            "TK;TV;>;IBJ)V"
        }
    .end annotation

    .line 415
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>;"
    .local p1, "factory":Lorg/apache/commons/pool/KeyedPoolableObjectFactory;, "Lorg/apache/commons/pool/KeyedPoolableObjectFactory<TK;TV;>;"
    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, -0x1

    const/4 v11, 0x3

    const-wide/32 v12, 0x1b7740

    const/4 v14, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-wide/from16 v4, p4

    invoke-direct/range {v0 .. v14}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;-><init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;IBJIZZJIJZ)V

    .line 418
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;IBJI)V
    .registers 22
    .param p2, "maxActive"    # I
    .param p3, "whenExhaustedAction"    # B
    .param p4, "maxWait"    # J
    .param p6, "maxIdle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool/KeyedPoolableObjectFactory<",
            "TK;TV;>;IBJI)V"
        }
    .end annotation

    .line 453
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>;"
    .local p1, "factory":Lorg/apache/commons/pool/KeyedPoolableObjectFactory;, "Lorg/apache/commons/pool/KeyedPoolableObjectFactory<TK;TV;>;"
    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, -0x1

    const/4 v11, 0x3

    const-wide/32 v12, 0x1b7740

    const/4 v14, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-wide/from16 v4, p4

    move/from16 v6, p6

    invoke-direct/range {v0 .. v14}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;-><init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;IBJIZZJIJZ)V

    .line 456
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;IBJIIIZZJIJZ)V
    .registers 35
    .param p2, "maxActive"    # I
    .param p3, "whenExhaustedAction"    # B
    .param p4, "maxWait"    # J
    .param p6, "maxIdle"    # I
    .param p7, "maxTotal"    # I
    .param p8, "minIdle"    # I
    .param p9, "testOnBorrow"    # Z
    .param p10, "testOnReturn"    # Z
    .param p11, "timeBetweenEvictionRunsMillis"    # J
    .param p13, "numTestsPerEvictionRun"    # I
    .param p14, "minEvictableIdleTimeMillis"    # J
    .param p16, "testWhileIdle"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool/KeyedPoolableObjectFactory<",
            "TK;TV;>;IBJIIIZZJIJZ)V"
        }
    .end annotation

    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>;"
    .local p1, "factory":Lorg/apache/commons/pool/KeyedPoolableObjectFactory;, "Lorg/apache/commons/pool/KeyedPoolableObjectFactory<TK;TV;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move-wide/from16 v11, p11

    move/from16 v13, p13

    move-wide/from16 v14, p14

    move/from16 v16, p16

    .line 575
    const/16 v17, 0x1

    invoke-direct/range {v0 .. v17}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;-><init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;IBJIIIZZJIJZZ)V

    .line 578
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;IBJIIIZZJIJZZ)V
    .registers 34
    .param p2, "maxActive"    # I
    .param p3, "whenExhaustedAction"    # B
    .param p4, "maxWait"    # J
    .param p6, "maxIdle"    # I
    .param p7, "maxTotal"    # I
    .param p8, "minIdle"    # I
    .param p9, "testOnBorrow"    # Z
    .param p10, "testOnReturn"    # Z
    .param p11, "timeBetweenEvictionRunsMillis"    # J
    .param p13, "numTestsPerEvictionRun"    # I
    .param p14, "minEvictableIdleTimeMillis"    # J
    .param p16, "testWhileIdle"    # Z
    .param p17, "lifo"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool/KeyedPoolableObjectFactory<",
            "TK;TV;>;IBJIIIZZJIJZZ)V"
        }
    .end annotation

    .line 610
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>;"
    .local p1, "factory":Lorg/apache/commons/pool/KeyedPoolableObjectFactory;, "Lorg/apache/commons/pool/KeyedPoolableObjectFactory<TK;TV;>;"
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/pool/BaseKeyedObjectPool;-><init>()V

    .line 2571
    const/16 v2, 0x8

    iput v2, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_maxIdle:I

    .line 2578
    const/4 v3, 0x0

    iput v3, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_minIdle:I

    .line 2585
    iput v2, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_maxActive:I

    .line 2592
    const/4 v2, -0x1

    iput v2, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_maxTotal:I

    .line 2610
    const-wide/16 v4, -0x1

    iput-wide v4, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_maxWait:J

    .line 2624
    const/4 v2, 0x1

    iput-byte v2, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_whenExhaustedAction:B

    .line 2637
    iput-boolean v3, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_testOnBorrow:Z

    .line 2648
    iput-boolean v3, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_testOnReturn:Z

    .line 2661
    iput-boolean v3, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_testWhileIdle:Z

    .line 2672
    iput-wide v4, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_timeBetweenEvictionRunsMillis:J

    .line 2687
    const/4 v4, 0x3

    iput v4, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_numTestsPerEvictionRun:I

    .line 2701
    const-wide/32 v4, 0x1b7740

    iput-wide v4, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_minEvictableIdleTimeMillis:J

    .line 2704
    const/4 v4, 0x0

    iput-object v4, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_poolMap:Ljava/util/Map;

    .line 2707
    iput v3, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_totalActive:I

    .line 2710
    iput v3, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_totalIdle:I

    .line 2717
    iput v3, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_totalInternalProcessing:I

    .line 2720
    iput-object v4, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    .line 2725
    iput-object v4, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_evictor:Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Evictor;

    .line 2731
    iput-object v4, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_poolList:Lorg/apache/commons/pool/impl/CursorableLinkedList;

    .line 2734
    iput-object v4, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_evictionCursor:Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;

    .line 2737
    iput-object v4, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_evictionKeyCursor:Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;

    .line 2740
    iput-boolean v2, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_lifo:Z

    .line 2747
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_allocationQueue:Ljava/util/LinkedList;

    .line 611
    move-object/from16 v2, p1

    iput-object v2, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    .line 612
    move/from16 v3, p2

    iput v3, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_maxActive:I

    .line 613
    move/from16 v4, p17

    iput-boolean v4, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_lifo:Z

    .line 614
    packed-switch v1, :pswitch_data_c2

    .line 621
    move-wide/from16 v5, p4

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move-wide/from16 v12, p11

    move/from16 v14, p13

    move/from16 v15, p16

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

    .line 618
    :pswitch_83
    iput-byte v1, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_whenExhaustedAction:B

    .line 619
    nop

    .line 623
    move-wide/from16 v5, p4

    iput-wide v5, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_maxWait:J

    .line 624
    move/from16 v7, p6

    iput v7, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_maxIdle:I

    .line 625
    move/from16 v8, p7

    iput v8, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_maxTotal:I

    .line 626
    move/from16 v9, p8

    iput v9, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_minIdle:I

    .line 627
    move/from16 v10, p9

    iput-boolean v10, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_testOnBorrow:Z

    .line 628
    move/from16 v11, p10

    iput-boolean v11, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_testOnReturn:Z

    .line 629
    move-wide/from16 v12, p11

    iput-wide v12, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_timeBetweenEvictionRunsMillis:J

    .line 630
    move/from16 v14, p13

    iput v14, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_numTestsPerEvictionRun:I

    .line 631
    move-wide/from16 v2, p14

    iput-wide v2, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_minEvictableIdleTimeMillis:J

    .line 632
    move/from16 v15, p16

    iput-boolean v15, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_testWhileIdle:Z

    .line 634
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_poolMap:Ljava/util/Map;

    .line 635
    new-instance v2, Lorg/apache/commons/pool/impl/CursorableLinkedList;

    invoke-direct {v2}, Lorg/apache/commons/pool/impl/CursorableLinkedList;-><init>()V

    iput-object v2, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_poolList:Lorg/apache/commons/pool/impl/CursorableLinkedList;

    .line 637
    iget-wide v2, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_timeBetweenEvictionRunsMillis:J

    invoke-virtual {v0, v2, v3}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->startEvictor(J)V

    .line 638
    return-void

    :pswitch_data_c2
    .packed-switch 0x0
        :pswitch_83
        :pswitch_83
        :pswitch_83
    .end packed-switch
.end method

.method public constructor <init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;IBJIIZZJIJZ)V
    .registers 33
    .param p2, "maxActive"    # I
    .param p3, "whenExhaustedAction"    # B
    .param p4, "maxWait"    # J
    .param p6, "maxIdle"    # I
    .param p7, "maxTotal"    # I
    .param p8, "testOnBorrow"    # Z
    .param p9, "testOnReturn"    # Z
    .param p10, "timeBetweenEvictionRunsMillis"    # J
    .param p12, "numTestsPerEvictionRun"    # I
    .param p13, "minEvictableIdleTimeMillis"    # J
    .param p15, "testWhileIdle"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool/KeyedPoolableObjectFactory<",
            "TK;TV;>;IBJIIZZJIJZ)V"
        }
    .end annotation

    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>;"
    .local p1, "factory":Lorg/apache/commons/pool/KeyedPoolableObjectFactory;, "Lorg/apache/commons/pool/KeyedPoolableObjectFactory<TK;TV;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-wide/from16 v11, p10

    move/from16 v13, p12

    move-wide/from16 v14, p13

    move/from16 v16, p15

    .line 540
    const/4 v8, 0x0

    invoke-direct/range {v0 .. v16}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;-><init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;IBJIIIZZJIJZ)V

    .line 543
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;IBJIZZ)V
    .registers 24
    .param p2, "maxActive"    # I
    .param p3, "whenExhaustedAction"    # B
    .param p4, "maxWait"    # J
    .param p6, "maxIdle"    # I
    .param p7, "testOnBorrow"    # Z
    .param p8, "testOnReturn"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool/KeyedPoolableObjectFactory<",
            "TK;TV;>;IBJIZZ)V"
        }
    .end annotation

    .line 475
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>;"
    .local p1, "factory":Lorg/apache/commons/pool/KeyedPoolableObjectFactory;, "Lorg/apache/commons/pool/KeyedPoolableObjectFactory<TK;TV;>;"
    const-wide/16 v9, -0x1

    const/4 v11, 0x3

    const-wide/32 v12, 0x1b7740

    const/4 v14, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v14}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;-><init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;IBJIZZJIJZ)V

    .line 478
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;IBJIZZJIJZ)V
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
            "Lorg/apache/commons/pool/KeyedPoolableObjectFactory<",
            "TK;TV;>;IBJIZZJIJZ)V"
        }
    .end annotation

    .line 507
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>;"
    .local p1, "factory":Lorg/apache/commons/pool/KeyedPoolableObjectFactory;, "Lorg/apache/commons/pool/KeyedPoolableObjectFactory<TK;TV;>;"
    const/4 v7, -0x1

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

    invoke-direct/range {v0 .. v15}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;-><init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;IBJIIZZJIJZ)V

    .line 510
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;IBJZZ)V
    .registers 23
    .param p2, "maxActive"    # I
    .param p3, "whenExhaustedAction"    # B
    .param p4, "maxWait"    # J
    .param p6, "testOnBorrow"    # Z
    .param p7, "testOnReturn"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool/KeyedPoolableObjectFactory<",
            "TK;TV;>;IBJZZ)V"
        }
    .end annotation

    .line 435
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>;"
    .local p1, "factory":Lorg/apache/commons/pool/KeyedPoolableObjectFactory;, "Lorg/apache/commons/pool/KeyedPoolableObjectFactory<TK;TV;>;"
    const/16 v6, 0x8

    const-wide/16 v9, -0x1

    const/4 v11, 0x3

    const-wide/32 v12, 0x1b7740

    const/4 v14, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-wide/from16 v4, p4

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v14}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;-><init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;IBJIZZJIJZ)V

    .line 438
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;)V
    .registers 24
    .param p2, "config"    # Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool/KeyedPoolableObjectFactory<",
            "TK;TV;>;",
            "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;",
            ")V"
        }
    .end annotation

    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>;"
    .local p1, "factory":Lorg/apache/commons/pool/KeyedPoolableObjectFactory;, "Lorg/apache/commons/pool/KeyedPoolableObjectFactory<TK;TV;>;"
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 387
    iget v3, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;->maxActive:I

    iget-byte v4, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;->whenExhaustedAction:B

    iget-wide v5, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;->maxWait:J

    iget v7, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;->maxIdle:I

    iget v8, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;->maxTotal:I

    iget v9, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;->minIdle:I

    iget-boolean v10, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;->testOnBorrow:Z

    iget-boolean v11, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;->testOnReturn:Z

    iget-wide v12, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;->timeBetweenEvictionRunsMillis:J

    iget v14, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;->numTestsPerEvictionRun:I

    move-object/from16 v19, v1

    move-object/from16 v20, v2

    iget-wide v1, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;->minEvictableIdleTimeMillis:J

    move-wide v15, v1

    iget-boolean v1, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;->testWhileIdle:Z

    move/from16 v17, v1

    iget-boolean v1, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;->lifo:Z

    move/from16 v18, v1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct/range {v1 .. v18}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;-><init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;IBJIIIZZJIJZZ)V

    .line 390
    return-void
.end method

.method static synthetic access$1408(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;)I
    .registers 3
    .param p0, "x0"    # Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;

    .line 207
    iget v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_totalActive:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_totalActive:I

    return v0
.end method

.method static synthetic access$1410(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;)I
    .registers 3
    .param p0, "x0"    # Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;

    .line 207
    iget v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_totalActive:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_totalActive:I

    return v0
.end method

.method static synthetic access$1508(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;)I
    .registers 3
    .param p0, "x0"    # Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;

    .line 207
    iget v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_totalInternalProcessing:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_totalInternalProcessing:I

    return v0
.end method

.method static synthetic access$1510(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;)I
    .registers 3
    .param p0, "x0"    # Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;

    .line 207
    iget v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_totalInternalProcessing:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_totalInternalProcessing:I

    return v0
.end method

.method static synthetic access$1600(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;)V
    .registers 1
    .param p0, "x0"    # Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 207
    invoke-direct {p0}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->ensureMinIdle()V

    return-void
.end method

.method private addObjectToPool(Ljava/lang/Object;Ljava/lang/Object;Z)V
    .registers 11
    .param p3, "decrementNumActive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1633
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "obj":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x1

    .line 1634
    .local v0, "success":Z
    iget-boolean v1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_testOnReturn:Z

    if-eqz v1, :cond_f

    iget-object v1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    invoke-interface {v1, p1, p2}, Lorg/apache/commons/pool/KeyedPoolableObjectFactory;->validateObject(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 1635
    const/4 v0, 0x0

    goto :goto_14

    .line 1637
    :cond_f
    iget-object v1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    invoke-interface {v1, p1, p2}, Lorg/apache/commons/pool/KeyedPoolableObjectFactory;->passivateObject(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1640
    :goto_14
    const/4 v1, 0x1

    if-nez v0, :cond_19

    const/4 v2, 0x1

    goto :goto_1a

    :cond_19
    const/4 v2, 0x0

    .line 1645
    .local v2, "shouldDestroy":Z
    :goto_1a
    const/4 v3, 0x0

    .line 1646
    .local v3, "doAllocate":Z
    monitor-enter p0

    .line 1648
    const/4 v4, 0x0

    :try_start_1d
    iget-object v5, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_poolMap:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;
    :try_end_25
    .catchall {:try_start_1d .. :try_end_25} :catchall_bf

    .line 1650
    .local v5, "pool":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>.ObjectQueue;"
    if-nez v5, :cond_3c

    .line 1651
    :try_start_27
    new-instance v6, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;

    invoke-direct {v6, p0, v4}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;-><init>(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$1;)V
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_38

    move-object v4, v6

    .line 1652
    .end local v5    # "pool":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>.ObjectQueue;"
    .local v4, "pool":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>.ObjectQueue;"
    :try_start_2d
    iget-object v5, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_poolMap:Ljava/util/Map;

    invoke-interface {v5, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1653
    iget-object v5, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_poolList:Lorg/apache/commons/pool/impl/CursorableLinkedList;

    invoke-virtual {v5, p1}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_3d

    .line 1677
    .end local v4    # "pool":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>.ObjectQueue;"
    .restart local v5    # "pool":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>.ObjectQueue;"
    :catchall_38
    move-exception v1

    move-object v4, v5

    goto/16 :goto_c0

    .line 1655
    :cond_3c
    move-object v4, v5

    .end local v5    # "pool":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>.ObjectQueue;"
    .restart local v4    # "pool":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>.ObjectQueue;"
    :goto_3d
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->isClosed()Z

    move-result v5

    if-eqz v5, :cond_45

    .line 1656
    const/4 v2, 0x1

    goto :goto_81

    .line 1660
    :cond_45
    iget v5, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_maxIdle:I

    if-ltz v5, :cond_57

    invoke-static {v4}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->access$900(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;)Lorg/apache/commons/pool/impl/CursorableLinkedList;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->size()I

    move-result v5

    iget v6, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_maxIdle:I

    if-lt v5, v6, :cond_57

    .line 1661
    const/4 v2, 0x1

    goto :goto_81

    .line 1662
    :cond_57
    if-eqz v0, :cond_81

    .line 1665
    iget-boolean v5, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_lifo:Z

    if-eqz v5, :cond_6a

    .line 1666
    invoke-static {v4}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->access$900(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;)Lorg/apache/commons/pool/impl/CursorableLinkedList;

    move-result-object v5

    new-instance v6, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;

    invoke-direct {v6, p2}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->addFirst(Ljava/lang/Object;)Z

    goto :goto_76

    .line 1668
    :cond_6a
    invoke-static {v4}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->access$900(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;)Lorg/apache/commons/pool/impl/CursorableLinkedList;

    move-result-object v5

    new-instance v6, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;

    invoke-direct {v6, p2}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->addLast(Ljava/lang/Object;)Z

    .line 1670
    :goto_76
    iget v5, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_totalIdle:I

    add-int/2addr v5, v1

    iput v5, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_totalIdle:I

    .line 1671
    if-eqz p3, :cond_80

    .line 1672
    invoke-virtual {v4}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->decrementActiveCount()V

    .line 1674
    :cond_80
    const/4 v3, 0x1

    .line 1677
    :cond_81
    :goto_81
    monitor-exit p0
    :try_end_82
    .catchall {:try_start_2d .. :try_end_82} :catchall_bf

    .line 1678
    if-eqz v3, :cond_87

    .line 1679
    invoke-direct {p0}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->allocate()V

    .line 1683
    :cond_87
    if-eqz v2, :cond_be

    .line 1685
    :try_start_89
    iget-object v1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    invoke-interface {v1, p1, p2}, Lorg/apache/commons/pool/KeyedPoolableObjectFactory;->destroyObject(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_8e} :catch_8f

    .line 1688
    goto :goto_90

    .line 1686
    :catch_8f
    move-exception v1

    .line 1690
    :goto_90
    if-eqz p3, :cond_be

    .line 1691
    monitor-enter p0

    .line 1692
    :try_start_93
    invoke-virtual {v4}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->decrementActiveCount()V

    .line 1693
    invoke-static {v4}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->access$900(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;)Lorg/apache/commons/pool/impl/CursorableLinkedList;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b6

    invoke-static {v4}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->access$1000(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;)I

    move-result v1

    if-nez v1, :cond_b6

    invoke-static {v4}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->access$1100(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;)I

    move-result v1

    if-nez v1, :cond_b6

    .line 1696
    iget-object v1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_poolMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1697
    iget-object v1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_poolList:Lorg/apache/commons/pool/impl/CursorableLinkedList;

    invoke-virtual {v1, p1}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->remove(Ljava/lang/Object;)Z

    .line 1699
    :cond_b6
    monitor-exit p0
    :try_end_b7
    .catchall {:try_start_93 .. :try_end_b7} :catchall_bb

    .line 1700
    invoke-direct {p0}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->allocate()V

    goto :goto_be

    .line 1699
    :catchall_bb
    move-exception v1

    :try_start_bc
    monitor-exit p0
    :try_end_bd
    .catchall {:try_start_bc .. :try_end_bd} :catchall_bb

    throw v1

    .line 1703
    :cond_be
    :goto_be
    return-void

    .line 1677
    .end local v4    # "pool":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>.ObjectQueue;"
    :catchall_bf
    move-exception v1

    .restart local v4    # "pool":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>.ObjectQueue;"
    :goto_c0
    :try_start_c0
    monitor-exit p0
    :try_end_c1
    .catchall {:try_start_c0 .. :try_end_c1} :catchall_bf

    throw v1
.end method

.method private allocate()V
    .registers 8

    .line 1282
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>;"
    const/4 v0, 0x0

    .line 1284
    .local v0, "clearOldest":Z
    monitor-enter p0

    .line 1285
    :try_start_2
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_a

    monitor-exit p0

    return-void

    .line 1287
    :cond_a
    iget-object v1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_allocationQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1289
    .local v1, "allocationQueueIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>.Latch<TK;TV;>;>;"
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c0

    .line 1291
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;

    .line 1292
    .local v2, "latch":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>.Latch<TK;TV;>;"
    iget-object v3, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_poolMap:Ljava/util/Map;

    invoke-static {v2}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;->access$400(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;

    .line 1293
    .local v3, "pool":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>.ObjectQueue;"
    if-nez v3, :cond_43

    .line 1294
    new-instance v4, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;-><init>(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$1;)V

    move-object v3, v4

    .line 1295
    iget-object v4, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_poolMap:Ljava/util/Map;

    invoke-static {v2}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;->access$400(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1296
    iget-object v4, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_poolList:Lorg/apache/commons/pool/impl/CursorableLinkedList;

    invoke-static {v2}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;->access$400(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->add(Ljava/lang/Object;)Z

    .line 1298
    :cond_43
    invoke-static {v2, v3}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;->access$800(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;)V

    .line 1299
    invoke-static {v3}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->access$900(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;)Lorg/apache/commons/pool/impl/CursorableLinkedList;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->isEmpty()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_72

    .line 1300
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1301
    invoke-static {v3}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->access$900(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;)Lorg/apache/commons/pool/impl/CursorableLinkedList;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;

    invoke-static {v2, v4}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;->access$500(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;)V

    .line 1303
    invoke-virtual {v3}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->incrementInternalProcessingCount()V

    .line 1304
    iget v4, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_totalIdle:I

    sub-int/2addr v4, v5

    iput v4, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_totalIdle:I

    .line 1305
    monitor-enter v2
    :try_end_6a
    .catchall {:try_start_2 .. :try_end_6a} :catchall_c7

    .line 1306
    :try_start_6a
    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 1307
    monitor-exit v2

    .line 1309
    goto :goto_10

    .line 1307
    :catchall_6f
    move-exception v4

    monitor-exit v2
    :try_end_71
    .catchall {:try_start_6a .. :try_end_71} :catchall_6f

    :try_start_71
    throw v4

    .line 1314
    :cond_72
    iget v4, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_maxTotal:I

    if-lez v4, :cond_84

    iget v4, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_totalActive:I

    iget v6, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_totalIdle:I

    add-int/2addr v4, v6

    iget v6, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_totalInternalProcessing:I

    add-int/2addr v4, v6

    iget v6, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_maxTotal:I

    if-lt v4, v6, :cond_84

    .line 1316
    const/4 v0, 0x1

    .line 1317
    goto :goto_c0

    .line 1321
    :cond_84
    iget v4, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_maxActive:I

    if-ltz v4, :cond_95

    invoke-static {v3}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->access$1000(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;)I

    move-result v4

    invoke-static {v3}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->access$1100(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;)I

    move-result v6

    add-int/2addr v4, v6

    iget v6, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_maxActive:I

    if-ge v4, v6, :cond_a6

    :cond_95
    iget v4, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_maxTotal:I

    if-ltz v4, :cond_ad

    iget v4, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_totalActive:I

    iget v6, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_totalIdle:I

    add-int/2addr v4, v6

    iget v6, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_totalInternalProcessing:I

    add-int/2addr v4, v6

    iget v6, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_maxTotal:I

    if-ge v4, v6, :cond_a6

    goto :goto_ad

    .line 1337
    :cond_a6
    iget v4, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_maxActive:I

    if-gez v4, :cond_ab

    .line 1338
    goto :goto_c0

    .line 1340
    .end local v2    # "latch":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>.Latch<TK;TV;>;"
    .end local v3    # "pool":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>.ObjectQueue;"
    :cond_ab
    goto/16 :goto_10

    .line 1324
    .restart local v2    # "latch":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>.Latch<TK;TV;>;"
    .restart local v3    # "pool":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>.ObjectQueue;"
    :cond_ad
    :goto_ad
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1325
    invoke-static {v2, v5}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;->access$1200(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;Z)V

    .line 1326
    invoke-virtual {v3}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->incrementInternalProcessingCount()V

    .line 1327
    monitor-enter v2
    :try_end_b7
    .catchall {:try_start_71 .. :try_end_b7} :catchall_c7

    .line 1328
    :try_start_b7
    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 1329
    monitor-exit v2

    .line 1331
    goto/16 :goto_10

    .line 1329
    :catchall_bd
    move-exception v4

    monitor-exit v2
    :try_end_bf
    .catchall {:try_start_b7 .. :try_end_bf} :catchall_bd

    :try_start_bf
    throw v4

    .line 1341
    .end local v1    # "allocationQueueIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>.Latch<TK;TV;>;>;"
    .end local v2    # "latch":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>.Latch<TK;TV;>;"
    .end local v3    # "pool":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>.ObjectQueue;"
    :cond_c0
    :goto_c0
    monitor-exit p0
    :try_end_c1
    .catchall {:try_start_bf .. :try_end_c1} :catchall_c7

    .line 1343
    if-eqz v0, :cond_c6

    .line 1352
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->clearOldest()V

    .line 1354
    :cond_c6
    return-void

    .line 1341
    :catchall_c7
    move-exception v1

    :try_start_c8
    monitor-exit p0
    :try_end_c9
    .catchall {:try_start_c8 .. :try_end_c9} :catchall_c7

    throw v1
.end method

.method private declared-synchronized calculateDeficit(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;Z)I
    .registers 7
    .param p2, "incrementInternal"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<",
            "TK;TV;>.ObjectQueue;Z)I"
        }
    .end annotation

    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>;"
    .local p1, "pool":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>.ObjectQueue;"
    monitor-enter p0

    .line 2204
    const/4 v0, 0x0

    .line 2208
    .local v0, "objectDefecit":I
    :try_start_2
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->getMinIdle()I

    move-result v1

    invoke-static {p1}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->access$900(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;)Lorg/apache/commons/pool/impl/CursorableLinkedList;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->size()I

    move-result v2

    sub-int/2addr v1, v2

    .line 2209
    .end local v0    # "objectDefecit":I
    .local v1, "objectDefecit":I
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->getMaxActive()I

    move-result v0

    const/4 v2, 0x0

    if-lez v0, :cond_36

    .line 2210
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->getMaxActive()I

    move-result v0

    invoke-static {p1}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->access$1000(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;)I

    move-result v3

    sub-int/2addr v0, v3

    invoke-static {p1}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->access$900(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;)Lorg/apache/commons/pool/impl/CursorableLinkedList;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->size()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-static {p1}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->access$1100(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;)I

    move-result v3

    sub-int/2addr v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2211
    .local v0, "growLimit":I
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v1, v3

    .line 2215
    .end local v0    # "growLimit":I
    :cond_36
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->getMaxTotal()I

    move-result v0

    if-lez v0, :cond_56

    .line 2216
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->getMaxTotal()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->getNumActive()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->getNumIdle()I

    move-result v3

    sub-int/2addr v0, v3

    iget v3, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_totalInternalProcessing:I

    sub-int/2addr v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2217
    .restart local v0    # "growLimit":I
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v1, v2

    .line 2220
    .end local v0    # "growLimit":I
    :cond_56
    if-eqz p2, :cond_5d

    if-lez v1, :cond_5d

    .line 2221
    invoke-virtual {p1}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->incrementInternalProcessingCount()V
    :try_end_5d
    .catchall {:try_start_2 .. :try_end_5d} :catchall_5f

    .line 2223
    :cond_5d
    monitor-exit p0

    return v1

    .line 2203
    .end local v1    # "objectDefecit":I
    .end local p1    # "pool":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>.ObjectQueue;"
    .end local p2    # "incrementInternal":Z
    :catchall_5f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private destroy(Ljava/util/Map;Lorg/apache/commons/pool/KeyedPoolableObjectFactory;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/List<",
            "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<",
            "TV;>;>;>;",
            "Lorg/apache/commons/pool/KeyedPoolableObjectFactory<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1488
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/List<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TV;>;>;>;"
    .local p2, "factory":Lorg/apache/commons/pool/KeyedPoolableObjectFactory;, "Lorg/apache/commons/pool/KeyedPoolableObjectFactory<TK;TV;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .end local p1    # "m":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/List<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TV;>;>;>;"
    .end local p2    # "factory":Lorg/apache/commons/pool/KeyedPoolableObjectFactory;, "Lorg/apache/commons/pool/KeyedPoolableObjectFactory<TK;TV;>;"
    .local v0, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;Ljava/util/List<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TV;>;>;>;>;"
    .local v1, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>;"
    .local v2, "m":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/List<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TV;>;>;>;"
    .local v3, "factory":Lorg/apache/commons/pool/KeyedPoolableObjectFactory;, "Lorg/apache/commons/pool/KeyedPoolableObjectFactory<TK;TV;>;"
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11b

    .line 1489
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1490
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Ljava/util/List<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TV;>;>;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 1491
    .local v5, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1492
    .local v6, "c":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TV;>;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v8, v0

    .end local v0    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;Ljava/util/List<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TV;>;>;>;>;"
    .local v7, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TV;>;>;"
    .local v8, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;Ljava/util/List<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TV;>;>;>;>;"
    :goto_29
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_117

    .line 1494
    :try_start_2f
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;

    iget-object v0, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;->value:Ljava/lang/Object;

    invoke-interface {v3, v5, v0}, Lorg/apache/commons/pool/KeyedPoolableObjectFactory;->destroyObject(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_3a} :catch_ce
    .catchall {:try_start_2f .. :try_end_3a} :catchall_87

    .line 1496
    nop

    .line 1519
    move-object v9, v4

    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Ljava/util/List<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TV;>;>;>;"
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Ljava/util/List<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TV;>;>;>;"
    move-object v10, v5

    .end local v5    # "key":Ljava/lang/Object;, "TK;"
    .local v10, "key":Ljava/lang/Object;, "TK;"
    move-object v11, v6

    .end local v6    # "c":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TV;>;>;"
    .local v11, "c":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TV;>;>;"
    move-object v12, v8

    .end local v8    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;Ljava/util/List<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TV;>;>;>;>;"
    .local v12, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;Ljava/util/List<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TV;>;>;>;>;"
    move-object v13, v1

    .end local v1    # "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>;"
    .local v13, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>;"
    move-object v14, v2

    .end local v2    # "m":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/List<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TV;>;>;>;"
    .local v14, "m":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/List<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TV;>;>;>;"
    move-object v15, v3

    .end local v3    # "factory":Lorg/apache/commons/pool/KeyedPoolableObjectFactory;, "Lorg/apache/commons/pool/KeyedPoolableObjectFactory<TK;TV;>;"
    .local v15, "factory":Lorg/apache/commons/pool/KeyedPoolableObjectFactory;, "Lorg/apache/commons/pool/KeyedPoolableObjectFactory<TK;TV;>;"
    monitor-enter v13

    .line 1500
    :try_start_43
    iget-object v0, v13, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_poolMap:Ljava/util/Map;

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;

    .line 1502
    .local v0, "objectQueue":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>.ObjectQueue;"
    if-eqz v0, :cond_71

    .line 1503
    invoke-virtual {v0}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->decrementInternalProcessingCount()V

    .line 1504
    invoke-static {v0}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->access$1100(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;)I

    move-result v1

    if-nez v1, :cond_77

    invoke-static {v0}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->access$1000(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;)I

    move-result v1

    if-nez v1, :cond_77

    invoke-static {v0}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->access$900(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;)Lorg/apache/commons/pool/impl/CursorableLinkedList;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_77

    .line 1507
    iget-object v1, v13, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_poolMap:Ljava/util/Map;

    invoke-interface {v1, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1508
    iget-object v1, v13, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_poolList:Lorg/apache/commons/pool/impl/CursorableLinkedList;

    invoke-virtual {v1, v10}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_77

    .line 1511
    :cond_71
    iget v1, v13, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_totalInternalProcessing:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v13, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_totalInternalProcessing:I

    .line 1513
    .end local v0    # "objectQueue":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>.ObjectQueue;"
    :cond_77
    :goto_77
    monitor-exit v13
    :try_end_78
    .catchall {:try_start_43 .. :try_end_78} :catchall_84

    .line 1514
    invoke-direct {v13}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->allocate()V

    .line 1515
    nop

    .line 1492
    move-object v4, v9

    move-object v5, v10

    move-object v6, v11

    move-object v8, v12

    move-object v1, v13

    move-object v2, v14

    move-object v3, v15

    goto :goto_29

    .line 1513
    :catchall_84
    move-exception v0

    :try_start_85
    monitor-exit v13
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_84

    throw v0

    .line 1499
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Ljava/util/List<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TV;>;>;>;"
    .end local v10    # "key":Ljava/lang/Object;, "TK;"
    .end local v11    # "c":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TV;>;>;"
    .end local v12    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;Ljava/util/List<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TV;>;>;>;>;"
    .end local v13    # "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>;"
    .end local v14    # "m":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/List<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TV;>;>;>;"
    .end local v15    # "factory":Lorg/apache/commons/pool/KeyedPoolableObjectFactory;, "Lorg/apache/commons/pool/KeyedPoolableObjectFactory<TK;TV;>;"
    .restart local v1    # "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>;"
    .restart local v2    # "m":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/List<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TV;>;>;>;"
    .restart local v3    # "factory":Lorg/apache/commons/pool/KeyedPoolableObjectFactory;, "Lorg/apache/commons/pool/KeyedPoolableObjectFactory<TK;TV;>;"
    .restart local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Ljava/util/List<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TV;>;>;>;"
    .restart local v5    # "key":Ljava/lang/Object;, "TK;"
    .restart local v6    # "c":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TV;>;>;"
    .restart local v8    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;Ljava/util/List<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TV;>;>;>;>;"
    :catchall_87
    move-exception v0

    .line 1514
    move-object v9, v7

    .end local v7    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TV;>;>;"
    .local v9, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TV;>;>;"
    move-object v10, v4

    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Ljava/util/List<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TV;>;>;>;"
    .local v10, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Ljava/util/List<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TV;>;>;>;"
    move-object v11, v5

    .end local v5    # "key":Ljava/lang/Object;, "TK;"
    .local v11, "key":Ljava/lang/Object;, "TK;"
    move-object v12, v6

    .end local v6    # "c":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TV;>;>;"
    .local v12, "c":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TV;>;>;"
    move-object v13, v8

    .end local v8    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;Ljava/util/List<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TV;>;>;>;>;"
    .local v13, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;Ljava/util/List<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TV;>;>;>;>;"
    move-object v14, v1

    .end local v1    # "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>;"
    .local v14, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>;"
    move-object v15, v2

    .end local v2    # "m":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/List<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TV;>;>;>;"
    .local v15, "m":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/List<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TV;>;>;>;"
    move-object/from16 v16, v3

    .end local v3    # "factory":Lorg/apache/commons/pool/KeyedPoolableObjectFactory;, "Lorg/apache/commons/pool/KeyedPoolableObjectFactory<TK;TV;>;"
    .local v16, "factory":Lorg/apache/commons/pool/KeyedPoolableObjectFactory;, "Lorg/apache/commons/pool/KeyedPoolableObjectFactory<TK;TV;>;"
    monitor-enter v14

    .line 1500
    :try_start_92
    iget-object v1, v14, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_poolMap:Ljava/util/Map;

    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;

    .line 1502
    .local v1, "objectQueue":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>.ObjectQueue;"
    if-eqz v1, :cond_c0

    .line 1503
    invoke-virtual {v1}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->decrementInternalProcessingCount()V

    .line 1504
    invoke-static {v1}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->access$1100(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;)I

    move-result v2

    if-nez v2, :cond_c6

    invoke-static {v1}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->access$1000(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;)I

    move-result v2

    if-nez v2, :cond_c6

    invoke-static {v1}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->access$900(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;)Lorg/apache/commons/pool/impl/CursorableLinkedList;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c6

    .line 1507
    iget-object v2, v14, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_poolMap:Ljava/util/Map;

    invoke-interface {v2, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1508
    iget-object v2, v14, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_poolList:Lorg/apache/commons/pool/impl/CursorableLinkedList;

    invoke-virtual {v2, v11}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_c6

    .line 1511
    :cond_c0
    iget v2, v14, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_totalInternalProcessing:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v14, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_totalInternalProcessing:I

    .line 1513
    .end local v1    # "objectQueue":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>.ObjectQueue;"
    :cond_c6
    :goto_c6
    monitor-exit v14
    :try_end_c7
    .catchall {:try_start_92 .. :try_end_c7} :catchall_cb

    .line 1514
    invoke-direct {v14}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->allocate()V

    .line 1499
    throw v0

    .line 1513
    :catchall_cb
    move-exception v0

    :try_start_cc
    monitor-exit v14
    :try_end_cd
    .catchall {:try_start_cc .. :try_end_cd} :catchall_cb

    throw v0

    .line 1496
    .end local v9    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TV;>;>;"
    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Ljava/util/List<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TV;>;>;>;"
    .end local v11    # "key":Ljava/lang/Object;, "TK;"
    .end local v12    # "c":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TV;>;>;"
    .end local v13    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;Ljava/util/List<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TV;>;>;>;>;"
    .end local v14    # "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>;"
    .end local v15    # "m":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/List<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TV;>;>;>;"
    .end local v16    # "factory":Lorg/apache/commons/pool/KeyedPoolableObjectFactory;, "Lorg/apache/commons/pool/KeyedPoolableObjectFactory<TK;TV;>;"
    .local v1, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>;"
    .restart local v2    # "m":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/List<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TV;>;>;>;"
    .restart local v3    # "factory":Lorg/apache/commons/pool/KeyedPoolableObjectFactory;, "Lorg/apache/commons/pool/KeyedPoolableObjectFactory<TK;TV;>;"
    .restart local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Ljava/util/List<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TV;>;>;>;"
    .restart local v5    # "key":Ljava/lang/Object;, "TK;"
    .restart local v6    # "c":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TV;>;>;"
    .restart local v7    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TV;>;>;"
    .restart local v8    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;Ljava/util/List<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TV;>;>;>;>;"
    :catch_ce
    move-exception v0

    .line 1498
    nop

    .line 1514
    move-object v9, v8

    .end local v8    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;Ljava/util/List<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TV;>;>;>;>;"
    .local v9, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;Ljava/util/List<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TV;>;>;>;>;"
    move-object v10, v1

    .end local v1    # "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>;"
    .local v10, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>;"
    move-object v11, v2

    .end local v2    # "m":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/List<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TV;>;>;>;"
    .local v11, "m":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/List<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TV;>;>;>;"
    move-object v12, v3

    .end local v3    # "factory":Lorg/apache/commons/pool/KeyedPoolableObjectFactory;, "Lorg/apache/commons/pool/KeyedPoolableObjectFactory<TK;TV;>;"
    .local v12, "factory":Lorg/apache/commons/pool/KeyedPoolableObjectFactory;, "Lorg/apache/commons/pool/KeyedPoolableObjectFactory<TK;TV;>;"
    monitor-enter v10

    .line 1500
    :try_start_d5
    iget-object v0, v10, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_poolMap:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;

    .line 1502
    .restart local v0    # "objectQueue":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>.ObjectQueue;"
    if-eqz v0, :cond_103

    .line 1503
    invoke-virtual {v0}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->decrementInternalProcessingCount()V

    .line 1504
    invoke-static {v0}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->access$1100(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;)I

    move-result v1

    if-nez v1, :cond_109

    invoke-static {v0}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->access$1000(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;)I

    move-result v1

    if-nez v1, :cond_109

    invoke-static {v0}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->access$900(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;)Lorg/apache/commons/pool/impl/CursorableLinkedList;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_109

    .line 1507
    iget-object v1, v10, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_poolMap:Ljava/util/Map;

    invoke-interface {v1, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1508
    iget-object v1, v10, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_poolList:Lorg/apache/commons/pool/impl/CursorableLinkedList;

    invoke-virtual {v1, v5}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_109

    .line 1511
    :cond_103
    iget v1, v10, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_totalInternalProcessing:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v10, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_totalInternalProcessing:I

    .line 1513
    .end local v0    # "objectQueue":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>.ObjectQueue;"
    :cond_109
    :goto_109
    monitor-exit v10
    :try_end_10a
    .catchall {:try_start_d5 .. :try_end_10a} :catchall_114

    .line 1514
    invoke-direct {v10}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->allocate()V

    .line 1515
    nop

    .line 1492
    move-object v8, v9

    move-object v1, v10

    move-object v2, v11

    move-object v3, v12

    goto/16 :goto_29

    .line 1513
    :catchall_114
    move-exception v0

    :try_start_115
    monitor-exit v10
    :try_end_116
    .catchall {:try_start_115 .. :try_end_116} :catchall_114

    throw v0

    .line 1518
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Ljava/util/List<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TV;>;>;>;"
    .end local v5    # "key":Ljava/lang/Object;, "TK;"
    .end local v6    # "c":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TV;>;>;"
    .end local v7    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TV;>;>;"
    .end local v9    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;Ljava/util/List<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TV;>;>;>;>;"
    .end local v10    # "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>;"
    .end local v11    # "m":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/List<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TV;>;>;>;"
    .end local v12    # "factory":Lorg/apache/commons/pool/KeyedPoolableObjectFactory;, "Lorg/apache/commons/pool/KeyedPoolableObjectFactory<TK;TV;>;"
    .restart local v1    # "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>;"
    .restart local v2    # "m":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/List<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TV;>;>;>;"
    .restart local v3    # "factory":Lorg/apache/commons/pool/KeyedPoolableObjectFactory;, "Lorg/apache/commons/pool/KeyedPoolableObjectFactory<TK;TV;>;"
    .restart local v8    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;Ljava/util/List<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TV;>;>;>;>;"
    :cond_117
    nop

    .line 1488
    move-object v0, v8

    goto/16 :goto_e

    .line 1519
    .end local v8    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;Ljava/util/List<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TV;>;>;>;>;"
    :cond_11b
    return-void
.end method

.method private ensureMinIdle()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2080
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>;"
    iget v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_minIdle:I

    if-lez v0, :cond_21

    .line 2082
    monitor-enter p0

    .line 2084
    const/4 v0, 0x0

    :try_start_6
    iget-object v1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_poolMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .line 2085
    .local v0, "keysCopy":[Ljava/lang/Object;
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_1e

    .line 2090
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    array-length v2, v0

    if-ge v1, v2, :cond_21

    .line 2092
    aget-object v2, v0, v1

    invoke-direct {p0, v2}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->ensureMinIdle(Ljava/lang/Object;)V

    .line 2090
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 2085
    .end local v0    # "keysCopy":[Ljava/lang/Object;
    .end local v1    # "i":I
    :catchall_1e
    move-exception v1

    .restart local v0    # "keysCopy":[Ljava/lang/Object;
    :try_start_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v1

    .line 2095
    .end local v0    # "keysCopy":[Ljava/lang/Object;
    :cond_21
    return-void
.end method

.method private ensureMinIdle(Ljava/lang/Object;)V
    .registers 11
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

    .line 2111
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    monitor-enter p0

    .line 2112
    const/4 v0, 0x0

    :try_start_2
    iget-object v1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_poolMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;

    move-object v0, v1

    .line 2113
    .local v0, "pool":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>.ObjectQueue;"
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_4c

    .line 2114
    if-nez v0, :cond_f

    .line 2115
    return-void

    .line 2123
    :cond_f
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->calculateDeficit(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;Z)I

    move-result v2

    .line 2125
    .local v2, "objectDeficit":I
    move-object v3, p1

    move-object p1, p0

    .local v1, "i":I
    .local v3, "key":Ljava/lang/Object;, "TK;"
    .local p1, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>;"
    :goto_16
    if-ge v1, v2, :cond_4b

    const/4 v4, 0x1

    invoke-direct {p1, v0, v4}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->calculateDeficit(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;Z)I

    move-result v4

    if-lez v4, :cond_4b

    .line 2127
    :try_start_1f
    invoke-virtual {p1, v3}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->addObject(Ljava/lang/Object;)V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_3a

    .line 2128
    nop

    .line 2135
    move-object v4, p1

    .end local p1    # "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>;"
    .local v4, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>;"
    move-object v5, v3

    .end local v3    # "key":Ljava/lang/Object;, "TK;"
    .local v5, "key":Ljava/lang/Object;, "TK;"
    move-object v6, v0

    .end local v0    # "pool":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>.ObjectQueue;"
    .local v6, "pool":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>.ObjectQueue;"
    move v7, v2

    .end local v2    # "objectDeficit":I
    .local v7, "objectDeficit":I
    monitor-enter v4

    .line 2130
    :try_start_28
    invoke-virtual {v6}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->decrementInternalProcessingCount()V

    .line 2131
    monitor-exit v4
    :try_end_2c
    .catchall {:try_start_28 .. :try_end_2c} :catchall_37

    .line 2132
    invoke-direct {v4}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->allocate()V

    .line 2133
    nop

    .line 2125
    add-int/lit8 v1, v1, 0x1

    move-object p1, v4

    move-object v3, v5

    move-object v0, v6

    move v2, v7

    goto :goto_16

    .line 2131
    :catchall_37
    move-exception p1

    :try_start_38
    monitor-exit v4
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw p1

    .line 2129
    .end local v4    # "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>;"
    .end local v5    # "key":Ljava/lang/Object;, "TK;"
    .end local v6    # "pool":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>.ObjectQueue;"
    .end local v7    # "objectDeficit":I
    .restart local v0    # "pool":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>.ObjectQueue;"
    .restart local v2    # "objectDeficit":I
    .restart local v3    # "key":Ljava/lang/Object;, "TK;"
    .restart local p1    # "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>;"
    :catchall_3a
    move-exception v4

    .line 2132
    move-object v5, p1

    .end local p1    # "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>;"
    .local v5, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>;"
    move-object v6, v3

    .end local v3    # "key":Ljava/lang/Object;, "TK;"
    .local v6, "key":Ljava/lang/Object;, "TK;"
    move-object v7, v0

    .end local v0    # "pool":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>.ObjectQueue;"
    .local v7, "pool":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>.ObjectQueue;"
    move v8, v2

    .end local v2    # "objectDeficit":I
    .local v8, "objectDeficit":I
    monitor-enter v5

    .line 2130
    :try_start_40
    invoke-virtual {v7}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->decrementInternalProcessingCount()V

    .line 2131
    monitor-exit v5
    :try_end_44
    .catchall {:try_start_40 .. :try_end_44} :catchall_48

    .line 2132
    invoke-direct {v5}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->allocate()V

    .line 2129
    throw v4

    .line 2131
    :catchall_48
    move-exception p1

    :try_start_49
    monitor-exit v5
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw p1

    .line 2135
    .end local v1    # "i":I
    .end local v5    # "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>;"
    .end local v6    # "key":Ljava/lang/Object;, "TK;"
    .end local v7    # "pool":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>.ObjectQueue;"
    .end local v8    # "objectDeficit":I
    .restart local v0    # "pool":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>.ObjectQueue;"
    .restart local v2    # "objectDeficit":I
    .restart local v3    # "key":Ljava/lang/Object;, "TK;"
    .restart local p1    # "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>;"
    :cond_4b
    return-void

    .line 2113
    .end local v0    # "pool":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>.ObjectQueue;"
    .end local v2    # "objectDeficit":I
    .end local v3    # "key":Ljava/lang/Object;, "TK;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    :catchall_4c
    move-exception v1

    .restart local v0    # "pool":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>.ObjectQueue;"
    :try_start_4d
    monitor-exit p0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw v1
.end method

.method private declared-synchronized getNumTests()I
    .registers 5

    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>;"
    monitor-enter p0

    .line 2184
    :try_start_1
    iget v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_numTestsPerEvictionRun:I

    if-ltz v0, :cond_f

    .line 2185
    iget v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_numTestsPerEvictionRun:I

    iget v1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_totalIdle:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_24

    monitor-exit p0

    return v0

    .line 2187
    :cond_f
    :try_start_f
    iget v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_totalIdle:I

    int-to-double v0, v0

    iget v2, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_numTestsPerEvictionRun:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2
    :try_end_19
    .catchall {:try_start_f .. :try_end_19} :catchall_24

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    :try_start_1d
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0
    :try_end_21
    .catchall {:try_start_1d .. :try_end_21} :catchall_24

    double-to-int v0, v0

    monitor-exit p0

    return v0

    .line 2183
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private resetEvictionKeyCursor()V
    .registers 2

    .line 2041
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_evictionKeyCursor:Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;

    if-eqz v0, :cond_9

    .line 2042
    iget-object v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_evictionKeyCursor:Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;

    invoke-virtual {v0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;->close()V

    .line 2044
    :cond_9
    iget-object v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_poolList:Lorg/apache/commons/pool/impl/CursorableLinkedList;

    invoke-virtual {v0}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->cursor()Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_evictionKeyCursor:Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;

    .line 2045
    iget-object v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_evictionCursor:Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;

    if-eqz v0, :cond_1d

    .line 2046
    iget-object v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_evictionCursor:Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;

    invoke-virtual {v0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;->close()V

    .line 2047
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_evictionCursor:Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;

    .line 2049
    :cond_1d
    return-void
.end method

.method private resetEvictionObjectCursor(Ljava/lang/Object;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/Object;

    .line 2057
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_evictionCursor:Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;

    if-eqz v0, :cond_9

    .line 2058
    iget-object v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_evictionCursor:Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;

    invoke-virtual {v0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;->close()V

    .line 2060
    :cond_9
    iget-object v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_poolMap:Ljava/util/Map;

    if-nez v0, :cond_e

    .line 2061
    return-void

    .line 2063
    :cond_e
    iget-object v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_poolMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;

    .line 2064
    .local v0, "pool":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>.ObjectQueue;"
    if-eqz v0, :cond_2c

    .line 2065
    invoke-static {v0}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->access$900(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;)Lorg/apache/commons/pool/impl/CursorableLinkedList;

    move-result-object v1

    .line 2066
    .local v1, "queue":Lorg/apache/commons/pool/impl/CursorableLinkedList;, "Lorg/apache/commons/pool/impl/CursorableLinkedList<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TV;>;>;"
    iget-boolean v2, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_lifo:Z

    if-eqz v2, :cond_25

    invoke-virtual {v1}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->size()I

    move-result v2

    goto :goto_26

    :cond_25
    const/4 v2, 0x0

    :goto_26
    invoke-virtual {v1, v2}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->cursor(I)Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_evictionCursor:Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;

    .line 2068
    .end local v1    # "queue":Lorg/apache/commons/pool/impl/CursorableLinkedList;, "Lorg/apache/commons/pool/impl/CursorableLinkedList<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TV;>;>;"
    :cond_2c
    return-void
.end method


# virtual methods
.method public addObject(Ljava/lang/Object;)V
    .registers 5
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

    .line 1744
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->assertOpen()V

    .line 1745
    iget-object v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    if-eqz v0, :cond_1f

    .line 1748
    iget-object v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    invoke-interface {v0, p1}, Lorg/apache/commons/pool/KeyedPoolableObjectFactory;->makeObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1750
    .local v0, "obj":Ljava/lang/Object;, "TV;"
    :try_start_d
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->assertOpen()V

    .line 1751
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->addObjectToPool(Ljava/lang/Object;Ljava/lang/Object;Z)V
    :try_end_14
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_14} :catch_16

    .line 1759
    nop

    .line 1760
    return-void

    .line 1752
    :catch_16
    move-exception v1

    .line 1754
    .local v1, "ex":Ljava/lang/IllegalStateException;
    :try_start_17
    iget-object v2, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    invoke-interface {v2, p1, v0}, Lorg/apache/commons/pool/KeyedPoolableObjectFactory;->destroyObject(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1c} :catch_1d

    .line 1757
    goto :goto_1e

    .line 1755
    :catch_1d
    move-exception v2

    .line 1758
    :goto_1e
    throw v1

    .line 1746
    .end local v0    # "obj":Ljava/lang/Object;, "TV;"
    .end local v1    # "ex":Ljava/lang/IllegalStateException;
    :cond_1f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot add objects without a factory."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public borrowObject(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 16
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

    .line 1093
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1094
    .local v0, "starttime":J
    new-instance v2, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;-><init>(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;Ljava/lang/Object;Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$1;)V

    .line 1097
    .local v2, "latch":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>.Latch<TK;TV;>;"
    monitor-enter p0

    .line 1101
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    :try_start_e
    iget-byte v6, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_whenExhaustedAction:B
    :try_end_10
    .catchall {:try_start_e .. :try_end_10} :catchall_221

    .line 1102
    .local v6, "whenExhaustedAction":B
    :try_start_10
    iget-wide v7, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_maxWait:J
    :try_end_12
    .catchall {:try_start_10 .. :try_end_12} :catchall_21f

    .line 1105
    .local v7, "maxWait":J
    :try_start_12
    iget-object v9, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_allocationQueue:Ljava/util/LinkedList;

    invoke-virtual {v9, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1106
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_21c

    .line 1109
    invoke-direct {p0}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->allocate()V

    .line 1112
    :cond_1b
    :goto_1b
    monitor-enter p0

    .line 1113
    :try_start_1c
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->assertOpen()V

    .line 1114
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_219

    .line 1116
    invoke-static {v2}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;->access$100(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;)Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;

    move-result-object v9

    if-nez v9, :cond_151

    .line 1118
    invoke-static {v2}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;->access$200(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;)Z

    move-result v9

    if-eqz v9, :cond_2e

    goto/16 :goto_151

    .line 1122
    :cond_2e
    packed-switch v6, :pswitch_data_226

    .line 1211
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "whenExhaustedAction "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " not recognized."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1125
    :pswitch_4d
    monitor-enter p0

    .line 1128
    :try_start_4e
    invoke-static {v2}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;->access$100(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;)Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;

    move-result-object v9

    if-nez v9, :cond_66

    invoke-static {v2}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;->access$200(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;)Z

    move-result v9

    if-nez v9, :cond_66

    .line 1129
    iget-object v9, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_allocationQueue:Ljava/util/LinkedList;

    invoke-virtual {v9, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 1130
    invoke-static {v2}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;->access$300(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;)Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;

    move-result-object v9

    invoke-virtual {v9}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->incrementInternalProcessingCount()V

    .line 1132
    :cond_66
    monitor-exit p0

    .line 1133
    goto/16 :goto_151

    .line 1132
    :catchall_69
    move-exception v3

    monitor-exit p0
    :try_end_6b
    .catchall {:try_start_4e .. :try_end_6b} :catchall_69

    throw v3

    .line 1146
    :pswitch_6c
    :try_start_6c
    monitor-enter v2
    :try_end_6d
    .catch Ljava/lang/InterruptedException; {:try_start_6c .. :try_end_6d} :catch_d7

    .line 1149
    :try_start_6d
    invoke-static {v2}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;->access$100(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;)Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;

    move-result-object v9

    if-nez v9, :cond_d1

    invoke-static {v2}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;->access$200(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;)Z

    move-result v9

    if-nez v9, :cond_d1

    .line 1150
    cmp-long v9, v7, v4

    if-gtz v9, :cond_81

    .line 1151
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    goto :goto_91

    .line 1155
    :cond_81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const/4 v11, 0x0

    sub-long/2addr v9, v0

    .line 1156
    .local v9, "elapsed":J
    sub-long v11, v7, v9

    .line 1157
    .local v11, "waitTime":J
    cmp-long v13, v11, v4

    if-lez v13, :cond_90

    .line 1159
    invoke-virtual {v2, v11, v12}, Ljava/lang/Object;->wait(J)V

    .line 1161
    .end local v9    # "elapsed":J
    .end local v11    # "waitTime":J
    :cond_90
    nop

    .line 1165
    :goto_91
    monitor-exit v2
    :try_end_92
    .catchall {:try_start_6d .. :try_end_92} :catchall_d4

    .line 1167
    :try_start_92
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->isClosed()Z

    move-result v9
    :try_end_96
    .catch Ljava/lang/InterruptedException; {:try_start_92 .. :try_end_96} :catch_d7

    const/4 v10, 0x1

    if-eq v9, v10, :cond_c9

    .line 1195
    nop

    .line 1196
    cmp-long v9, v7, v4

    if-lez v9, :cond_1b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v0

    cmp-long v11, v9, v7

    if-ltz v11, :cond_1b

    .line 1197
    monitor-enter p0

    .line 1200
    :try_start_a8
    invoke-static {v2}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;->access$100(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;)Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;

    move-result-object v9

    if-nez v9, :cond_c3

    invoke-static {v2}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;->access$200(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;)Z

    move-result v9

    if-eqz v9, :cond_b5

    goto :goto_c3

    .line 1201
    :cond_b5
    iget-object v3, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_allocationQueue:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 1205
    monitor-exit p0
    :try_end_bb
    .catchall {:try_start_a8 .. :try_end_bb} :catchall_c6

    .line 1206
    new-instance v3, Ljava/util/NoSuchElementException;

    const-string v4, "Timeout waiting for idle object"

    invoke-direct {v3, v4}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1203
    :cond_c3
    :goto_c3
    :try_start_c3
    monitor-exit p0

    goto/16 :goto_151

    .line 1205
    :catchall_c6
    move-exception v3

    monitor-exit p0
    :try_end_c8
    .catchall {:try_start_c3 .. :try_end_c8} :catchall_c6

    throw v3

    .line 1168
    :cond_c9
    :try_start_c9
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Pool closed"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_d1
    .catch Ljava/lang/InterruptedException; {:try_start_c9 .. :try_end_d1} :catch_d7

    .line 1163
    :cond_d1
    :try_start_d1
    monitor-exit v2

    goto/16 :goto_151

    .line 1165
    :catchall_d4
    move-exception v3

    monitor-exit v2
    :try_end_d6
    .catchall {:try_start_d1 .. :try_end_d6} :catchall_d4

    :try_start_d6
    throw v3
    :try_end_d7
    .catch Ljava/lang/InterruptedException; {:try_start_d6 .. :try_end_d7} :catch_d7

    .line 1170
    :catch_d7
    move-exception v3

    move-object v9, v3

    .line 1171
    .local v9, "e":Ljava/lang/InterruptedException;
    const/4 v3, 0x0

    .line 1172
    .local v3, "doAllocate":Z
    monitor-enter p0

    .line 1174
    :try_start_db
    invoke-static {v2}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;->access$100(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;)Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;

    move-result-object v4

    if-nez v4, :cond_ed

    invoke-static {v2}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;->access$200(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;)Z

    move-result v4

    if-nez v4, :cond_ed

    .line 1177
    iget-object v4, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_allocationQueue:Ljava/util/LinkedList;

    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_11f

    .line 1178
    :cond_ed
    invoke-static {v2}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;->access$100(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;)Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;

    move-result-object v4

    if-nez v4, :cond_102

    invoke-static {v2}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;->access$200(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;)Z

    move-result v4

    if-eqz v4, :cond_102

    .line 1181
    invoke-static {v2}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;->access$300(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;)Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->decrementInternalProcessingCount()V

    .line 1182
    const/4 v3, 0x1

    goto :goto_11f

    .line 1185
    :cond_102
    invoke-static {v2}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;->access$300(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;)Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->decrementInternalProcessingCount()V

    .line 1186
    invoke-static {v2}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;->access$300(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;)Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->incrementActiveCount()V

    .line 1187
    invoke-static {v2}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;->access$400(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;->access$100(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;)Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->returnObject(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1189
    :goto_11f
    monitor-exit p0
    :try_end_120
    .catchall {:try_start_db .. :try_end_120} :catchall_12d

    .line 1190
    if-eqz v3, :cond_125

    .line 1191
    invoke-direct {p0}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->allocate()V

    .line 1193
    :cond_125
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 1194
    throw v9

    .line 1189
    :catchall_12d
    move-exception v4

    :try_start_12e
    monitor-exit p0
    :try_end_12f
    .catchall {:try_start_12e .. :try_end_12f} :catchall_12d

    throw v4

    .line 1135
    .end local v3    # "doAllocate":Z
    .end local v9    # "e":Ljava/lang/InterruptedException;
    :pswitch_130
    monitor-enter p0

    .line 1138
    :try_start_131
    invoke-static {v2}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;->access$100(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;)Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;

    move-result-object v9

    if-nez v9, :cond_14c

    invoke-static {v2}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;->access$200(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;)Z

    move-result v9

    if-eqz v9, :cond_13e

    goto :goto_14c

    .line 1141
    :cond_13e
    iget-object v3, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_allocationQueue:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 1142
    monitor-exit p0
    :try_end_144
    .catchall {:try_start_131 .. :try_end_144} :catchall_14e

    .line 1143
    new-instance v3, Ljava/util/NoSuchElementException;

    const-string v4, "Pool exhausted"

    invoke-direct {v3, v4}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1139
    :cond_14c
    :goto_14c
    :try_start_14c
    monitor-exit p0

    goto :goto_151

    .line 1142
    :catchall_14e
    move-exception v3

    monitor-exit p0
    :try_end_150
    .catchall {:try_start_14c .. :try_end_150} :catchall_14e

    throw v3

    .line 1217
    :cond_151
    :goto_151
    const/4 v9, 0x0

    .line 1218
    .local v9, "newlyCreated":Z
    invoke-static {v2}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;->access$100(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;)Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;

    move-result-object v10

    if-nez v10, :cond_18d

    .line 1220
    :try_start_158
    iget-object v10, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    invoke-interface {v10, p1}, Lorg/apache/commons/pool/KeyedPoolableObjectFactory;->makeObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 1221
    .local v10, "obj":Ljava/lang/Object;, "TV;"
    new-instance v11, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;

    invoke-direct {v11, v10}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;-><init>(Ljava/lang/Object;)V

    invoke-static {v2, v11}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;->access$500(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;)V
    :try_end_166
    .catchall {:try_start_158 .. :try_end_166} :catchall_179

    .line 1222
    const/4 v9, 0x1

    .line 1224
    .end local v10    # "obj":Ljava/lang/Object;, "TV;"
    if-nez v9, :cond_18d

    .line 1226
    monitor-enter p0

    .line 1227
    :try_start_16a
    invoke-static {v2}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;->access$300(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;)Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;

    move-result-object v10

    invoke-virtual {v10}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->decrementInternalProcessingCount()V

    .line 1229
    monitor-exit p0
    :try_end_172
    .catchall {:try_start_16a .. :try_end_172} :catchall_176

    .line 1230
    invoke-direct {p0}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->allocate()V

    goto :goto_18d

    .line 1229
    :catchall_176
    move-exception v3

    :try_start_177
    monitor-exit p0
    :try_end_178
    .catchall {:try_start_177 .. :try_end_178} :catchall_176

    throw v3

    .line 1224
    :catchall_179
    move-exception v3

    if-nez v9, :cond_18c

    .line 1226
    monitor-enter p0

    .line 1227
    :try_start_17d
    invoke-static {v2}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;->access$300(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;)Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->decrementInternalProcessingCount()V

    .line 1229
    monitor-exit p0
    :try_end_185
    .catchall {:try_start_17d .. :try_end_185} :catchall_189

    .line 1230
    invoke-direct {p0}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->allocate()V

    goto :goto_18c

    .line 1229
    :catchall_189
    move-exception v3

    :try_start_18a
    monitor-exit p0
    :try_end_18b
    .catchall {:try_start_18a .. :try_end_18b} :catchall_189

    throw v3

    .line 1230
    :cond_18c
    :goto_18c
    throw v3

    .line 1237
    :cond_18d
    :goto_18d
    :try_start_18d
    iget-object v10, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    invoke-static {v2}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;->access$100(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;)Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;

    move-result-object v11

    iget-object v11, v11, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;->value:Ljava/lang/Object;

    invoke-interface {v10, p1, v11}, Lorg/apache/commons/pool/KeyedPoolableObjectFactory;->activateObject(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1238
    iget-boolean v10, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_testOnBorrow:Z

    if-eqz v10, :cond_1b3

    iget-object v10, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    invoke-static {v2}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;->access$100(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;)Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;

    move-result-object v11

    iget-object v11, v11, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;->value:Ljava/lang/Object;

    invoke-interface {v10, p1, v11}, Lorg/apache/commons/pool/KeyedPoolableObjectFactory;->validateObject(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1ab

    goto :goto_1b3

    .line 1239
    :cond_1ab
    new-instance v10, Ljava/lang/Exception;

    const-string v11, "ValidateObject failed"

    invoke-direct {v10, v11}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1241
    :cond_1b3
    :goto_1b3
    monitor-enter p0
    :try_end_1b4
    .catch Ljava/lang/Throwable; {:try_start_18d .. :try_end_1b4} :catch_1cd

    .line 1242
    :try_start_1b4
    invoke-static {v2}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;->access$300(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;)Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;

    move-result-object v10

    invoke-virtual {v10}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->decrementInternalProcessingCount()V

    .line 1243
    invoke-static {v2}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;->access$300(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;)Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;

    move-result-object v10

    invoke-virtual {v10}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->incrementActiveCount()V

    .line 1244
    monitor-exit p0
    :try_end_1c3
    .catchall {:try_start_1b4 .. :try_end_1c3} :catchall_1ca

    .line 1245
    :try_start_1c3
    invoke-static {v2}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;->access$100(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;)Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;

    move-result-object v10

    iget-object v10, v10, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;->value:Ljava/lang/Object;
    :try_end_1c9
    .catch Ljava/lang/Throwable; {:try_start_1c3 .. :try_end_1c9} :catch_1cd

    return-object v10

    .line 1244
    :catchall_1ca
    move-exception v10

    :try_start_1cb
    monitor-exit p0
    :try_end_1cc
    .catchall {:try_start_1cb .. :try_end_1cc} :catchall_1ca

    :try_start_1cc
    throw v10
    :try_end_1cd
    .catch Ljava/lang/Throwable; {:try_start_1cc .. :try_end_1cd} :catch_1cd

    .line 1246
    :catch_1cd
    move-exception v10

    .line 1247
    .local v10, "e":Ljava/lang/Throwable;
    invoke-static {v10}, Lorg/apache/commons/pool/PoolUtils;->checkRethrow(Ljava/lang/Throwable;)V

    .line 1250
    :try_start_1d1
    iget-object v11, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    invoke-static {v2}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;->access$100(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;)Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;

    move-result-object v12

    iget-object v12, v12, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;->value:Ljava/lang/Object;

    invoke-interface {v11, p1, v12}, Lorg/apache/commons/pool/KeyedPoolableObjectFactory;->destroyObject(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1dc
    .catch Ljava/lang/Throwable; {:try_start_1d1 .. :try_end_1dc} :catch_1dd

    .line 1254
    goto :goto_1e1

    .line 1251
    :catch_1dd
    move-exception v11

    .line 1252
    .local v11, "e2":Ljava/lang/Throwable;
    invoke-static {v11}, Lorg/apache/commons/pool/PoolUtils;->checkRethrow(Ljava/lang/Throwable;)V

    .line 1255
    .end local v11    # "e2":Ljava/lang/Throwable;
    :goto_1e1
    monitor-enter p0

    .line 1256
    :try_start_1e2
    invoke-static {v2}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;->access$300(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;)Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;

    move-result-object v11

    invoke-virtual {v11}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->decrementInternalProcessingCount()V

    .line 1257
    if-nez v9, :cond_1f3

    .line 1258
    invoke-static {v2}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;->access$600(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;)V

    .line 1259
    iget-object v11, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_allocationQueue:Ljava/util/LinkedList;

    invoke-virtual {v11, v3, v2}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 1261
    :cond_1f3
    monitor-exit p0
    :try_end_1f4
    .catchall {:try_start_1e2 .. :try_end_1f4} :catchall_216

    .line 1262
    invoke-direct {p0}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->allocate()V

    .line 1263
    if-nez v9, :cond_1fb

    .line 1269
    goto/16 :goto_1b

    .line 1264
    :cond_1fb
    new-instance v3, Ljava/util/NoSuchElementException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not create a validated object, cause: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1261
    :catchall_216
    move-exception v3

    :try_start_217
    monitor-exit p0
    :try_end_218
    .catchall {:try_start_217 .. :try_end_218} :catchall_216

    throw v3

    .line 1114
    .end local v9    # "newlyCreated":Z
    .end local v10    # "e":Ljava/lang/Throwable;
    :catchall_219
    move-exception v3

    :try_start_21a
    monitor-exit p0
    :try_end_21b
    .catchall {:try_start_21a .. :try_end_21b} :catchall_219

    throw v3

    .line 1106
    :catchall_21c
    move-exception v3

    move-wide v4, v7

    goto :goto_224

    .end local v7    # "maxWait":J
    :catchall_21f
    move-exception v3

    goto :goto_224

    .end local v6    # "whenExhaustedAction":B
    :catchall_221
    move-exception v6

    move-object v3, v6

    const/4 v6, 0x0

    .local v4, "maxWait":J
    .restart local v6    # "whenExhaustedAction":B
    :goto_224
    :try_start_224
    monitor-exit p0
    :try_end_225
    .catchall {:try_start_224 .. :try_end_225} :catchall_21f

    throw v3

    :pswitch_data_226
    .packed-switch 0x0
        :pswitch_130
        :pswitch_6c
        :pswitch_4d
    .end packed-switch
.end method

.method public clear()V
    .registers 8

    .line 1373
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1374
    .local v0, "toDestroy":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/List<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TV;>;>;>;"
    monitor-enter p0

    .line 1375
    :try_start_6
    iget-object v1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_poolMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TK;>;"
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 1376
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1377
    .local v2, "key":Ljava/lang/Object;, "TK;"
    iget-object v3, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_poolMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;

    .line 1380
    .local v3, "pool":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>.ObjectQueue;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1381
    .local v4, "objects":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TV;>;>;"
    invoke-static {v3}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->access$900(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;)Lorg/apache/commons/pool/impl/CursorableLinkedList;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1382
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1383
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1384
    iget-object v5, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_poolList:Lorg/apache/commons/pool/impl/CursorableLinkedList;

    invoke-virtual {v5, v2}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->remove(Ljava/lang/Object;)Z

    .line 1385
    iget v5, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_totalIdle:I

    invoke-static {v3}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->access$900(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;)Lorg/apache/commons/pool/impl/CursorableLinkedList;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->size()I

    move-result v6

    sub-int/2addr v5, v6

    iput v5, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_totalIdle:I

    .line 1386
    iget v5, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_totalInternalProcessing:I

    invoke-static {v3}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->access$900(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;)Lorg/apache/commons/pool/impl/CursorableLinkedList;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->size()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_totalInternalProcessing:I

    .line 1388
    invoke-static {v3}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->access$900(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;)Lorg/apache/commons/pool/impl/CursorableLinkedList;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->clear()V

    .line 1389
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    .end local v3    # "pool":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>.ObjectQueue;"
    .end local v4    # "objects":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TV;>;>;"
    goto :goto_10

    .line 1390
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TK;>;"
    :cond_5b
    monitor-exit p0
    :try_end_5c
    .catchall {:try_start_6 .. :try_end_5c} :catchall_62

    .line 1391
    iget-object v1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->destroy(Ljava/util/Map;Lorg/apache/commons/pool/KeyedPoolableObjectFactory;)V

    .line 1392
    return-void

    .line 1390
    :catchall_62
    move-exception v1

    :try_start_63
    monitor-exit p0
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_62

    throw v1
.end method

.method public clear(Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .line 1457
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1460
    .local v0, "toDestroy":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/List<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TV;>;>;>;"
    monitor-enter p0

    .line 1461
    const/4 v1, 0x0

    :try_start_7
    iget-object v2, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_poolMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;

    move-object v1, v2

    .line 1462
    .local v1, "pool":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>.ObjectQueue;"
    if-nez v1, :cond_14

    .line 1463
    monitor-exit p0

    return-void

    .line 1465
    :cond_14
    iget-object v2, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_poolList:Lorg/apache/commons/pool/impl/CursorableLinkedList;

    invoke-virtual {v2, p1}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->remove(Ljava/lang/Object;)Z

    .line 1469
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1470
    .local v2, "objects":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TV;>;>;"
    invoke-static {v1}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->access$900(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;)Lorg/apache/commons/pool/impl/CursorableLinkedList;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1471
    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1472
    iget v3, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_totalIdle:I

    invoke-static {v1}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->access$900(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;)Lorg/apache/commons/pool/impl/CursorableLinkedList;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->size()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_totalIdle:I

    .line 1473
    iget v3, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_totalInternalProcessing:I

    invoke-static {v1}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->access$900(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;)Lorg/apache/commons/pool/impl/CursorableLinkedList;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->size()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_totalInternalProcessing:I

    .line 1475
    invoke-static {v1}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->access$900(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;)Lorg/apache/commons/pool/impl/CursorableLinkedList;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->clear()V

    .line 1476
    .end local v2    # "objects":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TV;>;>;"
    monitor-exit p0
    :try_end_4a
    .catchall {:try_start_7 .. :try_end_4a} :catchall_50

    .line 1477
    iget-object v2, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    invoke-direct {p0, v0, v2}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->destroy(Ljava/util/Map;Lorg/apache/commons/pool/KeyedPoolableObjectFactory;)V

    .line 1478
    return-void

    .line 1476
    .end local v1    # "pool":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>.ObjectQueue;"
    :catchall_50
    move-exception v2

    .restart local v1    # "pool":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>.ObjectQueue;"
    :try_start_51
    monitor-exit p0
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw v2
.end method

.method public clearOldest()V
    .registers 12

    .line 1402
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1405
    .local v0, "toDestroy":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/List<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TV;>;>;>;"
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 1406
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TV;>;TK;>;"
    monitor-enter p0

    .line 1407
    :try_start_b
    iget-object v2, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_poolMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "keyiter":Ljava/util/Iterator;, "Ljava/util/Iterator<TK;>;"
    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 1408
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1409
    .local v3, "key":Ljava/lang/Object;, "TK;"
    iget-object v4, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_poolMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;

    invoke-static {v4}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->access$900(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;)Lorg/apache/commons/pool/impl/CursorableLinkedList;

    move-result-object v4

    .line 1410
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TV;>;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TV;>;>;"
    :goto_2f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3d

    .line 1414
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2f

    .line 1416
    .end local v3    # "key":Ljava/lang/Object;, "TK;"
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TV;>;>;"
    .end local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TV;>;>;"
    :cond_3d
    goto :goto_15

    .line 1419
    .end local v2    # "keyiter":Ljava/util/Iterator;, "Ljava/util/Iterator<TK;>;"
    :cond_3e
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 1420
    .local v2, "setPairKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TV;>;TK;>;>;"
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3
    :try_end_46
    .catchall {:try_start_b .. :try_end_46} :catchall_ad

    int-to-double v3, v3

    const-wide v5, 0x3fc3333333333333L    # 0.15

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    double-to-int v3, v3

    add-int/lit8 v3, v3, 0x1

    .line 1422
    .local v3, "itemsToRemove":I
    :try_start_54
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1423
    .local v4, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TV;>;TK;>;>;"
    :goto_58
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a6

    if-lez v3, :cond_a6

    .line 1424
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1428
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TV;>;TK;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 1429
    .local v6, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;

    .line 1430
    .local v7, "pairTimeStamp":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TV;>;"
    iget-object v8, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_poolMap:Ljava/util/Map;

    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;

    .line 1431
    .local v8, "objectQueue":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>.ObjectQueue;"
    invoke-static {v8}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->access$900(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;)Lorg/apache/commons/pool/impl/CursorableLinkedList;

    move-result-object v9

    .line 1432
    .local v9, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TV;>;>;"
    invoke-interface {v9, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1434
    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8f

    .line 1435
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9a

    .line 1437
    :cond_8f
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1438
    .local v10, "listForKey":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TV;>;>;"
    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1439
    invoke-interface {v0, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1441
    .end local v10    # "listForKey":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TV;>;>;"
    :goto_9a
    invoke-virtual {v8}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->incrementInternalProcessingCount()V

    .line 1442
    iget v10, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_totalIdle:I

    add-int/lit8 v10, v10, -0x1

    iput v10, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_totalIdle:I

    .line 1443
    add-int/lit8 v3, v3, -0x1

    .line 1444
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TV;>;TK;>;"
    .end local v6    # "key":Ljava/lang/Object;, "TK;"
    .end local v7    # "pairTimeStamp":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TV;>;"
    .end local v8    # "objectQueue":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>.ObjectQueue;"
    .end local v9    # "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TV;>;>;"
    goto :goto_58

    .line 1446
    .end local v2    # "setPairKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TV;>;TK;>;>;"
    .end local v3    # "itemsToRemove":I
    .end local v4    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TV;>;TK;>;>;"
    :cond_a6
    monitor-exit p0
    :try_end_a7
    .catchall {:try_start_54 .. :try_end_a7} :catchall_ad

    .line 1447
    iget-object v2, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    invoke-direct {p0, v0, v2}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->destroy(Ljava/util/Map;Lorg/apache/commons/pool/KeyedPoolableObjectFactory;)V

    .line 1448
    return-void

    .line 1446
    :catchall_ad
    move-exception v2

    :try_start_ae
    monitor-exit p0
    :try_end_af
    .catchall {:try_start_ae .. :try_end_af} :catchall_ad

    throw v2
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1805
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>;"
    invoke-super {p0}, Lorg/apache/commons/pool/BaseKeyedObjectPool;->close()V

    .line 1806
    monitor-enter p0

    .line 1807
    :try_start_4
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->clear()V

    .line 1808
    iget-object v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_evictionCursor:Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 1809
    iget-object v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_evictionCursor:Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;

    invoke-virtual {v0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;->close()V

    .line 1810
    iput-object v1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_evictionCursor:Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;

    .line 1812
    :cond_13
    iget-object v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_evictionKeyCursor:Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;

    if-eqz v0, :cond_1e

    .line 1813
    iget-object v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_evictionKeyCursor:Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;

    invoke-virtual {v0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;->close()V

    .line 1814
    iput-object v1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_evictionKeyCursor:Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;

    .line 1816
    :cond_1e
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->startEvictor(J)V

    .line 1818
    :goto_23
    iget-object v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_allocationQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_3c

    .line 1819
    iget-object v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_allocationQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;

    .line 1821
    .local v0, "l":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>.Latch<TK;TV;>;"
    monitor-enter v0
    :try_end_34
    .catchall {:try_start_4 .. :try_end_34} :catchall_3e

    .line 1823
    :try_start_34
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1824
    monitor-exit v0

    .line 1825
    .end local v0    # "l":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>.Latch<TK;TV;>;"
    goto :goto_23

    .line 1824
    .restart local v0    # "l":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>.Latch<TK;TV;>;"
    :catchall_39
    move-exception v1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_34 .. :try_end_3b} :catchall_39

    :try_start_3b
    throw v1

    .line 1826
    .end local v0    # "l":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>.Latch<TK;TV;>;"
    :cond_3c
    monitor-exit p0

    .line 1827
    return-void

    .line 1826
    :catchall_3e
    move-exception v0

    monitor-exit p0
    :try_end_40
    .catchall {:try_start_3b .. :try_end_40} :catchall_3e

    throw v0
.end method

.method declared-synchronized debugInfo()Ljava/lang/String;
    .registers 5

    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>;"
    monitor-enter p0

    .line 2164
    :try_start_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2165
    .local v0, "buf":Ljava/lang/StringBuffer;
    const-string v1, "Active: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->getNumActive()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2166
    const-string v1, "Idle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->getNumIdle()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2167
    iget-object v1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_poolMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2168
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TK;>;"
    :goto_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_58

    .line 2169
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 2170
    .local v2, "key":Ljava/lang/Object;, "TK;"
    const-string v3, "\t"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_poolMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2171
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    goto :goto_32

    .line 2172
    :cond_58
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_5c
    .catchall {:try_start_1 .. :try_end_5c} :catchall_5e

    monitor-exit p0

    return-object v2

    .line 2163
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TK;>;"
    :catchall_5e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public evict()V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1888
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>;"
    const/4 v0, 0x0

    .line 1892
    .local v0, "key":Ljava/lang/Object;, "TK;"
    monitor-enter p0

    .line 1896
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    :try_start_5
    iget-boolean v4, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_testWhileIdle:Z
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_19f

    .line 1897
    .local v4, "testWhileIdle":Z
    :try_start_7
    iget-wide v5, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_minEvictableIdleTimeMillis:J
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_19d

    .line 1900
    .local v5, "minEvictableIdleTimeMillis":J
    :try_start_9
    iget-object v7, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_evictionKeyCursor:Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;

    if-eqz v7, :cond_1c

    iget-object v7, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_evictionKeyCursor:Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;

    iget-object v7, v7, Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;->_lastReturned:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    if-eqz v7, :cond_1c

    .line 1902
    iget-object v7, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_evictionKeyCursor:Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;

    iget-object v7, v7, Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;->_lastReturned:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v7}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    .line 1904
    :cond_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_9 .. :try_end_1d} :catchall_19a

    .line 1906
    const/4 v7, 0x0

    .local v7, "i":I
    invoke-direct {p0}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->getNumTests()I

    move-result v8

    const/4 v9, 0x0

    .local v8, "m":I
    .local v9, "pair":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TV;>;"
    :goto_23
    if-ge v7, v8, :cond_196

    .line 1908
    monitor-enter p0

    .line 1910
    :try_start_26
    iget-object v10, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_poolMap:Ljava/util/Map;

    if-eqz v10, :cond_18e

    iget-object v10, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_poolMap:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v10

    if-nez v10, :cond_34

    goto/16 :goto_18e

    .line 1915
    :cond_34
    iget-object v10, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_evictionKeyCursor:Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;

    if-nez v10, :cond_3c

    .line 1916
    invoke-direct {p0}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->resetEvictionKeyCursor()V

    .line 1917
    const/4 v0, 0x0

    .line 1921
    :cond_3c
    iget-object v10, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_evictionCursor:Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;

    if-nez v10, :cond_6c

    .line 1923
    iget-object v10, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_evictionKeyCursor:Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;

    invoke-virtual {v10}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_53

    .line 1924
    iget-object v10, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_evictionKeyCursor:Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;

    invoke-virtual {v10}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    .line 1925
    invoke-direct {p0, v0}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->resetEvictionObjectCursor(Ljava/lang/Object;)V

    goto :goto_6c

    .line 1928
    :cond_53
    invoke-direct {p0}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->resetEvictionKeyCursor()V

    .line 1929
    iget-object v10, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_evictionKeyCursor:Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;

    if-eqz v10, :cond_6c

    .line 1930
    iget-object v10, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_evictionKeyCursor:Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;

    invoke-virtual {v10}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6c

    .line 1931
    iget-object v10, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_evictionKeyCursor:Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;

    invoke-virtual {v10}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    .line 1932
    invoke-direct {p0, v0}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->resetEvictionObjectCursor(Ljava/lang/Object;)V

    .line 1938
    :cond_6c
    :goto_6c
    iget-object v10, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_evictionCursor:Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;

    if-nez v10, :cond_73

    .line 1939
    monitor-exit p0

    goto/16 :goto_18f

    .line 1944
    :cond_73
    iget-boolean v10, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_lifo:Z

    if-eqz v10, :cond_7f

    iget-object v10, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_evictionCursor:Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;

    invoke-virtual {v10}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;->hasPrevious()Z

    move-result v10

    if-eqz v10, :cond_8b

    :cond_7f
    iget-boolean v10, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_lifo:Z

    if-nez v10, :cond_bb

    iget-object v10, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_evictionCursor:Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;

    invoke-virtual {v10}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;->hasNext()Z

    move-result v10

    if-nez v10, :cond_bb

    .line 1946
    :cond_8b
    iget-object v10, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_evictionKeyCursor:Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;

    if-eqz v10, :cond_bb

    .line 1947
    iget-object v10, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_evictionKeyCursor:Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;

    invoke-virtual {v10}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a2

    .line 1948
    iget-object v10, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_evictionKeyCursor:Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;

    invoke-virtual {v10}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    .line 1949
    invoke-direct {p0, v0}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->resetEvictionObjectCursor(Ljava/lang/Object;)V

    goto :goto_bb

    .line 1951
    :cond_a2
    invoke-direct {p0}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->resetEvictionKeyCursor()V

    .line 1952
    iget-object v10, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_evictionKeyCursor:Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;

    if-eqz v10, :cond_bb

    .line 1953
    iget-object v10, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_evictionKeyCursor:Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;

    invoke-virtual {v10}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_bb

    .line 1954
    iget-object v10, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_evictionKeyCursor:Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;

    invoke-virtual {v10}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    .line 1955
    invoke-direct {p0, v0}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->resetEvictionObjectCursor(Ljava/lang/Object;)V

    .line 1962
    :cond_bb
    :goto_bb
    iget-boolean v10, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_lifo:Z

    if-eqz v10, :cond_c7

    iget-object v10, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_evictionCursor:Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;

    invoke-virtual {v10}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;->hasPrevious()Z

    move-result v10

    if-eqz v10, :cond_d3

    :cond_c7
    iget-boolean v10, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_lifo:Z

    if-nez v10, :cond_d6

    iget-object v10, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_evictionCursor:Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;

    invoke-virtual {v10}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;->hasNext()Z

    move-result v10

    if-nez v10, :cond_d6

    .line 1964
    :cond_d3
    monitor-exit p0

    goto/16 :goto_18f

    .line 1969
    :cond_d6
    iget-boolean v10, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_lifo:Z

    if-eqz v10, :cond_e3

    iget-object v10, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_evictionCursor:Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;

    invoke-virtual {v10}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;->previous()Ljava/lang/Object;

    move-result-object v10

    :goto_e0
    check-cast v10, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;

    goto :goto_ea

    :cond_e3
    iget-object v10, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_evictionCursor:Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;

    invoke-virtual {v10}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;->next()Ljava/lang/Object;

    move-result-object v10

    goto :goto_e0

    .end local v9    # "pair":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TV;>;"
    :goto_ea
    move-object v9, v10

    .line 1972
    .restart local v9    # "pair":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TV;>;"
    iget-object v10, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_evictionCursor:Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;

    invoke-virtual {v10}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;->remove()V

    .line 1973
    iget-object v10, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_poolMap:Ljava/util/Map;

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;

    .line 1974
    .local v10, "objectQueue":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>.ObjectQueue;"
    invoke-virtual {v10}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->incrementInternalProcessingCount()V

    .line 1975
    iget v11, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_totalIdle:I

    add-int/lit8 v11, v11, -0x1

    iput v11, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_totalIdle:I

    .line 1976
    .end local v10    # "objectQueue":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>.ObjectQueue;"
    monitor-exit p0
    :try_end_102
    .catchall {:try_start_26 .. :try_end_102} :catchall_193

    .line 1978
    const/4 v10, 0x0

    .line 1979
    .local v10, "removeObject":Z
    cmp-long v11, v5, v2

    if-lez v11, :cond_113

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iget-wide v13, v9, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;->tstamp:J

    sub-long/2addr v11, v13

    cmp-long v13, v11, v5

    if-lez v13, :cond_113

    .line 1982
    const/4 v10, 0x1

    .line 1984
    :cond_113
    if-eqz v4, :cond_13b

    if-nez v10, :cond_13b

    .line 1985
    move v11, v1

    .line 1987
    .local v11, "active":Z
    :try_start_118
    iget-object v12, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    iget-object v13, v9, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;->value:Ljava/lang/Object;

    invoke-interface {v12, v0, v13}, Lorg/apache/commons/pool/KeyedPoolableObjectFactory;->activateObject(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_11f
    .catch Ljava/lang/Exception; {:try_start_118 .. :try_end_11f} :catch_121

    .line 1988
    const/4 v11, 0x1

    .line 1991
    goto :goto_123

    .line 1989
    :catch_121
    move-exception v12

    .line 1990
    .local v12, "e":Ljava/lang/Exception;
    const/4 v10, 0x1

    .line 1992
    .end local v12    # "e":Ljava/lang/Exception;
    :goto_123
    if-eqz v11, :cond_13b

    .line 1993
    iget-object v12, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    iget-object v13, v9, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;->value:Ljava/lang/Object;

    invoke-interface {v12, v0, v13}, Lorg/apache/commons/pool/KeyedPoolableObjectFactory;->validateObject(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_131

    .line 1994
    const/4 v10, 0x1

    goto :goto_13b

    .line 1997
    :cond_131
    :try_start_131
    iget-object v12, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    iget-object v13, v9, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;->value:Ljava/lang/Object;

    invoke-interface {v12, v0, v13}, Lorg/apache/commons/pool/KeyedPoolableObjectFactory;->passivateObject(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_138
    .catch Ljava/lang/Exception; {:try_start_131 .. :try_end_138} :catch_139

    .line 2000
    goto :goto_13b

    .line 1998
    :catch_139
    move-exception v12

    .line 1999
    .restart local v12    # "e":Ljava/lang/Exception;
    const/4 v10, 0x1

    .line 2005
    .end local v11    # "active":Z
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_13b
    :goto_13b
    if-eqz v10, :cond_146

    .line 2007
    :try_start_13d
    iget-object v11, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    iget-object v12, v9, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;->value:Ljava/lang/Object;

    invoke-interface {v11, v0, v12}, Lorg/apache/commons/pool/KeyedPoolableObjectFactory;->destroyObject(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_144
    .catch Ljava/lang/Exception; {:try_start_13d .. :try_end_144} :catch_145

    .line 2010
    goto :goto_146

    .line 2008
    :catch_145
    move-exception v11

    .line 2012
    :cond_146
    :goto_146
    monitor-enter p0

    .line 2013
    :try_start_147
    iget-object v11, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_poolMap:Ljava/util/Map;

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;

    .line 2015
    .local v11, "objectQueue":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>.ObjectQueue;"
    invoke-virtual {v11}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->decrementInternalProcessingCount()V

    .line 2016
    if-eqz v10, :cond_175

    .line 2017
    invoke-static {v11}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->access$900(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;)Lorg/apache/commons/pool/impl/CursorableLinkedList;

    move-result-object v12

    invoke-virtual {v12}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_189

    invoke-static {v11}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->access$1000(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;)I

    move-result v12

    if-nez v12, :cond_189

    invoke-static {v11}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->access$1100(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;)I

    move-result v12

    if-nez v12, :cond_189

    .line 2020
    iget-object v12, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_poolMap:Ljava/util/Map;

    invoke-interface {v12, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2021
    iget-object v12, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_poolList:Lorg/apache/commons/pool/impl/CursorableLinkedList;

    invoke-virtual {v12, v0}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_189

    .line 2024
    :cond_175
    iget-object v12, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_evictionCursor:Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;

    invoke-virtual {v12, v9}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;->add(Ljava/lang/Object;)V

    .line 2025
    iget v12, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_totalIdle:I

    add-int/lit8 v12, v12, 0x1

    iput v12, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_totalIdle:I

    .line 2026
    iget-boolean v12, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_lifo:Z

    if-eqz v12, :cond_189

    .line 2028
    iget-object v12, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_evictionCursor:Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;

    invoke-virtual {v12}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;->previous()Ljava/lang/Object;

    .line 2031
    .end local v11    # "objectQueue":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>.ObjectQueue;"
    :cond_189
    :goto_189
    monitor-exit p0

    goto :goto_18f

    :catchall_18b
    move-exception v1

    monitor-exit p0
    :try_end_18d
    .catchall {:try_start_147 .. :try_end_18d} :catchall_18b

    throw v1

    .line 1911
    .end local v10    # "removeObject":Z
    :cond_18e
    :goto_18e
    :try_start_18e
    monitor-exit p0

    .line 1906
    :goto_18f
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_23

    .line 1976
    :catchall_193
    move-exception v1

    monitor-exit p0
    :try_end_195
    .catchall {:try_start_18e .. :try_end_195} :catchall_193

    throw v1

    .line 2033
    .end local v7    # "i":I
    .end local v8    # "m":I
    .end local v9    # "pair":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TV;>;"
    :cond_196
    invoke-direct {p0}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->allocate()V

    .line 2034
    return-void

    .line 1904
    :catchall_19a
    move-exception v1

    move-wide v2, v5

    goto :goto_1a2

    .end local v5    # "minEvictableIdleTimeMillis":J
    :catchall_19d
    move-exception v1

    goto :goto_1a2

    .end local v4    # "testWhileIdle":Z
    :catchall_19f
    move-exception v4

    move-object v1, v4

    const/4 v4, 0x0

    .local v2, "minEvictableIdleTimeMillis":J
    .restart local v4    # "testWhileIdle":Z
    :goto_1a2
    :try_start_1a2
    monitor-exit p0
    :try_end_1a3
    .catchall {:try_start_1a2 .. :try_end_1a3} :catchall_19d

    throw v1
.end method

.method public declared-synchronized getLifo()Z
    .registers 2

    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>;"
    monitor-enter p0

    .line 1041
    :try_start_1
    iget-boolean v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_lifo:Z
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

    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>;"
    monitor-enter p0

    .line 653
    :try_start_1
    iget v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_maxActive:I
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

    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>;"
    monitor-enter p0

    .line 786
    :try_start_1
    iget v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_maxIdle:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMaxTotal()I
    .registers 2

    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>;"
    monitor-enter p0

    .line 677
    :try_start_1
    iget v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_maxTotal:I
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

    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>;"
    monitor-enter p0

    .line 754
    :try_start_1
    iget-wide v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_maxWait:J
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

    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>;"
    monitor-enter p0

    .line 963
    :try_start_1
    iget-wide v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_minEvictableIdleTimeMillis:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMinIdle()I
    .registers 2

    .line 836
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>;"
    iget v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_minIdle:I

    return v0
.end method

.method public declared-synchronized getNumActive()I
    .registers 2

    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>;"
    monitor-enter p0

    .line 1528
    :try_start_1
    iget v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_totalActive:I
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
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;

    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>;"
    monitor-enter p0

    .line 1550
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_poolMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;

    .line 1551
    .local v0, "pool":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>.ObjectQueue;"
    if-eqz v0, :cond_10

    invoke-static {v0}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->access$1000(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;)I

    move-result v1
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_13

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    monitor-exit p0

    return v1

    .line 1549
    .end local v0    # "pool":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>.ObjectQueue;"
    .end local p1    # "key":Ljava/lang/Object;
    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getNumIdle()I
    .registers 2

    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>;"
    monitor-enter p0

    .line 1538
    :try_start_1
    iget v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_totalIdle:I
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
    .param p1, "key"    # Ljava/lang/Object;

    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>;"
    monitor-enter p0

    .line 1562
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_poolMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;

    .line 1563
    .local v0, "pool":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>.ObjectQueue;"
    if-eqz v0, :cond_14

    invoke-static {v0}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->access$900(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;)Lorg/apache/commons/pool/impl/CursorableLinkedList;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->size()I

    move-result v1
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_17

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    monitor-exit p0

    return v1

    .line 1561
    .end local v0    # "pool":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>.ObjectQueue;"
    .end local p1    # "key":Ljava/lang/Object;
    :catchall_17
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getNumTestsPerEvictionRun()I
    .registers 2

    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>;"
    monitor-enter p0

    .line 931
    :try_start_1
    iget v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_numTestsPerEvictionRun:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTestOnBorrow()Z
    .registers 2

    .line 851
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>;"
    iget-boolean v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_testOnBorrow:Z

    return v0
.end method

.method public getTestOnReturn()Z
    .registers 2

    .line 879
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>;"
    iget-boolean v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_testOnReturn:Z

    return v0
.end method

.method public declared-synchronized getTestWhileIdle()Z
    .registers 2

    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>;"
    monitor-enter p0

    .line 993
    :try_start_1
    iget-boolean v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_testWhileIdle:Z
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

    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>;"
    monitor-enter p0

    .line 905
    :try_start_1
    iget-wide v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_timeBetweenEvictionRunsMillis:J
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

    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>;"
    monitor-enter p0

    .line 709
    :try_start_1
    iget-byte v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_whenExhaustedAction:B
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public invalidateObject(Ljava/lang/Object;Ljava/lang/Object;)V
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

    .line 1717
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "obj":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    invoke-interface {v1, p1, p2}, Lorg/apache/commons/pool/KeyedPoolableObjectFactory;->destroyObject(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_2e

    .line 1718
    nop

    .line 1730
    monitor-enter p0

    .line 1720
    :try_start_8
    iget-object v1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_poolMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;

    .line 1721
    .local v1, "pool":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>.ObjectQueue;"
    if-nez v1, :cond_22

    .line 1722
    new-instance v2, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;

    invoke-direct {v2, p0, v0}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;-><init>(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$1;)V

    move-object v1, v2

    .line 1723
    iget-object v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_poolMap:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1724
    iget-object v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_poolList:Lorg/apache/commons/pool/impl/CursorableLinkedList;

    invoke-virtual {v0, p1}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->add(Ljava/lang/Object;)Z

    .line 1726
    :cond_22
    invoke-virtual {v1}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->decrementActiveCount()V

    .line 1727
    .end local v1    # "pool":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>.ObjectQueue;"
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2b

    .line 1728
    invoke-direct {p0}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->allocate()V

    .line 1729
    nop

    .line 1730
    return-void

    .line 1727
    :catchall_2b
    move-exception v0

    :try_start_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v0

    .line 1719
    :catchall_2e
    move-exception v1

    .line 1728
    monitor-enter p0

    .line 1720
    :try_start_30
    iget-object v2, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_poolMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;

    .line 1721
    .local v2, "pool":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>.ObjectQueue;"
    if-nez v2, :cond_4a

    .line 1722
    new-instance v3, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;

    invoke-direct {v3, p0, v0}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;-><init>(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$1;)V

    move-object v2, v3

    .line 1723
    iget-object v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_poolMap:Ljava/util/Map;

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1724
    iget-object v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_poolList:Lorg/apache/commons/pool/impl/CursorableLinkedList;

    invoke-virtual {v0, p1}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->add(Ljava/lang/Object;)Z

    .line 1726
    :cond_4a
    invoke-virtual {v2}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->decrementActiveCount()V

    .line 1727
    .end local v2    # "pool":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>.ObjectQueue;"
    monitor-exit p0
    :try_end_4e
    .catchall {:try_start_30 .. :try_end_4e} :catchall_52

    .line 1728
    invoke-direct {p0}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->allocate()V

    .line 1719
    throw v1

    .line 1727
    :catchall_52
    move-exception v0

    :try_start_53
    monitor-exit p0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw v0
.end method

.method public declared-synchronized preparePool(Ljava/lang/Object;Z)V
    .registers 6
    .param p2, "populateImmediately"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)V"
        }
    .end annotation

    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    monitor-enter p0

    .line 1775
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_poolMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;

    .line 1776
    .local v0, "pool":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>.ObjectQueue;"
    if-nez v0, :cond_1c

    .line 1777
    new-instance v1, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;-><init>(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$1;)V

    move-object v0, v1

    .line 1778
    iget-object v1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_poolMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1779
    iget-object v1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_poolList:Lorg/apache/commons/pool/impl/CursorableLinkedList;

    invoke-virtual {v1, p1}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->add(Ljava/lang/Object;)Z
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_25

    .line 1782
    :cond_1c
    if-eqz p2, :cond_23

    .line 1785
    :try_start_1e
    invoke-direct {p0, p1}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->ensureMinIdle(Ljava/lang/Object;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_21} :catch_22
    .catchall {:try_start_1e .. :try_end_21} :catchall_25

    .line 1789
    goto :goto_23

    .line 1787
    :catch_22
    move-exception v1

    .line 1791
    :cond_23
    :goto_23
    monitor-exit p0

    return-void

    .line 1774
    .end local v0    # "pool":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>.ObjectQueue;"
    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    .end local p2    # "populateImmediately":Z
    :catchall_25
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public returnObject(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
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

    .line 1587
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "obj":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x1

    :try_start_1
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->addObjectToPool(Ljava/lang/Object;Ljava/lang/Object;Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_5

    .line 1612
    goto :goto_47

    .line 1588
    :catch_5
    move-exception v0

    .line 1589
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    if-eqz v1, :cond_47

    .line 1591
    :try_start_a
    iget-object v1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    invoke-interface {v1, p1, p2}, Lorg/apache/commons/pool/KeyedPoolableObjectFactory;->destroyObject(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_10

    .line 1594
    goto :goto_11

    .line 1592
    :catch_10
    move-exception v1

    .line 1598
    :goto_11
    iget-object v1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_poolMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;

    .line 1599
    .local v1, "pool":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>.ObjectQueue;"
    if-eqz v1, :cond_47

    .line 1600
    monitor-enter p0

    .line 1601
    :try_start_1c
    invoke-virtual {v1}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->decrementActiveCount()V

    .line 1602
    invoke-static {v1}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->access$900(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;)Lorg/apache/commons/pool/impl/CursorableLinkedList;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-static {v1}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->access$1000(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;)I

    move-result v2

    if-nez v2, :cond_3f

    invoke-static {v1}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->access$1100(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;)I

    move-result v2

    if-nez v2, :cond_3f

    .line 1605
    iget-object v2, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_poolMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1606
    iget-object v2, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_poolList:Lorg/apache/commons/pool/impl/CursorableLinkedList;

    invoke-virtual {v2, p1}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->remove(Ljava/lang/Object;)Z

    .line 1608
    :cond_3f
    monitor-exit p0
    :try_end_40
    .catchall {:try_start_1c .. :try_end_40} :catchall_44

    .line 1609
    invoke-direct {p0}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->allocate()V

    goto :goto_47

    .line 1608
    :catchall_44
    move-exception v2

    :try_start_45
    monitor-exit p0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    throw v2

    .line 1613
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "pool":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>.ObjectQueue;"
    :cond_47
    :goto_47
    return-void
.end method

.method public declared-synchronized setConfig(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;)V
    .registers 4
    .param p1, "conf"    # Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;

    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>;"
    monitor-enter p0

    .line 1016
    :try_start_1
    iget v0, p1, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;->maxIdle:I

    invoke-virtual {p0, v0}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->setMaxIdle(I)V

    .line 1017
    iget v0, p1, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;->maxActive:I

    invoke-virtual {p0, v0}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->setMaxActive(I)V

    .line 1018
    iget v0, p1, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;->maxTotal:I

    invoke-virtual {p0, v0}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->setMaxTotal(I)V

    .line 1019
    iget v0, p1, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;->minIdle:I

    invoke-virtual {p0, v0}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->setMinIdle(I)V

    .line 1020
    iget-wide v0, p1, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;->maxWait:J

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->setMaxWait(J)V

    .line 1021
    iget-byte v0, p1, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;->whenExhaustedAction:B

    invoke-virtual {p0, v0}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->setWhenExhaustedAction(B)V

    .line 1022
    iget-boolean v0, p1, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;->testOnBorrow:Z

    invoke-virtual {p0, v0}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->setTestOnBorrow(Z)V

    .line 1023
    iget-boolean v0, p1, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;->testOnReturn:Z

    invoke-virtual {p0, v0}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->setTestOnReturn(Z)V

    .line 1024
    iget-boolean v0, p1, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;->testWhileIdle:Z

    invoke-virtual {p0, v0}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->setTestWhileIdle(Z)V

    .line 1025
    iget v0, p1, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;->numTestsPerEvictionRun:I

    invoke-virtual {p0, v0}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->setNumTestsPerEvictionRun(I)V

    .line 1026
    iget-wide v0, p1, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;->minEvictableIdleTimeMillis:J

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->setMinEvictableIdleTimeMillis(J)V

    .line 1027
    iget-wide v0, p1, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;->timeBetweenEvictionRunsMillis:J

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->setTimeBetweenEvictionRunsMillis(J)V
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_3f

    .line 1028
    monitor-exit p0

    return-void

    .line 1015
    .end local p1    # "conf":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;
    :catchall_3f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setFactory(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;)V
    .registers 10
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

    .line 1843
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>;"
    .local p1, "factory":Lorg/apache/commons/pool/KeyedPoolableObjectFactory;, "Lorg/apache/commons/pool/KeyedPoolableObjectFactory<TK;TV;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1844
    .local v0, "toDestroy":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/List<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TV;>;>;>;"
    iget-object v1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    .line 1845
    .local v1, "oldFactory":Lorg/apache/commons/pool/KeyedPoolableObjectFactory;, "Lorg/apache/commons/pool/KeyedPoolableObjectFactory<TK;TV;>;"
    monitor-enter p0

    .line 1846
    :try_start_8
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->assertOpen()V

    .line 1847
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->getNumActive()I

    move-result v2

    if-gtz v2, :cond_6f

    .line 1850
    iget-object v2, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_poolMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TK;>;"
    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_68

    .line 1851
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1852
    .local v3, "key":Ljava/lang/Object;, "TK;"
    iget-object v4, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_poolMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;

    .line 1853
    .local v4, "pool":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>.ObjectQueue;"
    if-eqz v4, :cond_67

    .line 1856
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1857
    .local v5, "objects":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TV;>;>;"
    invoke-static {v4}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->access$900(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;)Lorg/apache/commons/pool/impl/CursorableLinkedList;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1858
    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1859
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 1860
    iget-object v6, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_poolList:Lorg/apache/commons/pool/impl/CursorableLinkedList;

    invoke-virtual {v6, v3}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->remove(Ljava/lang/Object;)Z

    .line 1861
    iget v6, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_totalIdle:I

    invoke-static {v4}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->access$900(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;)Lorg/apache/commons/pool/impl/CursorableLinkedList;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->size()I

    move-result v7

    sub-int/2addr v6, v7

    iput v6, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_totalIdle:I

    .line 1862
    iget v6, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_totalInternalProcessing:I

    invoke-static {v4}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->access$900(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;)Lorg/apache/commons/pool/impl/CursorableLinkedList;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->size()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_totalInternalProcessing:I

    .line 1864
    invoke-static {v4}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->access$900(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;)Lorg/apache/commons/pool/impl/CursorableLinkedList;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->clear()V

    .line 1866
    .end local v3    # "key":Ljava/lang/Object;, "TK;"
    .end local v4    # "pool":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>.ObjectQueue;"
    .end local v5    # "objects":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TV;>;>;"
    :cond_67
    goto :goto_1b

    .line 1867
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TK;>;"
    :cond_68
    iput-object p1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    .line 1869
    monitor-exit p0
    :try_end_6b
    .catchall {:try_start_8 .. :try_end_6b} :catchall_77

    .line 1870
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->destroy(Ljava/util/Map;Lorg/apache/commons/pool/KeyedPoolableObjectFactory;)V

    .line 1871
    return-void

    .line 1848
    :cond_6f
    :try_start_6f
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Objects are already active"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1869
    :catchall_77
    move-exception v2

    monitor-exit p0
    :try_end_79
    .catchall {:try_start_6f .. :try_end_79} :catchall_77

    throw v2
.end method

.method public declared-synchronized setLifo(Z)V
    .registers 2
    .param p1, "lifo"    # Z

    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>;"
    monitor-enter p0

    .line 1055
    :try_start_1
    iput-boolean p1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_lifo:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 1056
    monitor-exit p0

    return-void

    .line 1054
    .end local p1    # "lifo":Z
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setMaxActive(I)V
    .registers 3
    .param p1, "maxActive"    # I

    .line 664
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>;"
    monitor-enter p0

    .line 665
    :try_start_1
    iput p1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_maxActive:I

    .line 666
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_8

    .line 667
    invoke-direct {p0}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->allocate()V

    .line 668
    return-void

    .line 666
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

    .line 804
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>;"
    monitor-enter p0

    .line 805
    :try_start_1
    iput p1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_maxIdle:I

    .line 806
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_8

    .line 807
    invoke-direct {p0}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->allocate()V

    .line 808
    return-void

    .line 806
    :catchall_8
    move-exception v0

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public setMaxTotal(I)V
    .registers 3
    .param p1, "maxTotal"    # I

    .line 693
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>;"
    monitor-enter p0

    .line 694
    :try_start_1
    iput p1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_maxTotal:I

    .line 695
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_8

    .line 696
    invoke-direct {p0}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->allocate()V

    .line 697
    return-void

    .line 695
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

    .line 773
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>;"
    monitor-enter p0

    .line 774
    :try_start_1
    iput-wide p1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_maxWait:J

    .line 775
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_8

    .line 776
    invoke-direct {p0}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->allocate()V

    .line 777
    return-void

    .line 775
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

    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>;"
    monitor-enter p0

    .line 979
    :try_start_1
    iput-wide p1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_minEvictableIdleTimeMillis:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 980
    monitor-exit p0

    return-void

    .line 978
    .end local p1    # "minEvictableIdleTimeMillis":J
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setMinIdle(I)V
    .registers 2
    .param p1, "poolSize"    # I

    .line 822
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>;"
    iput p1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_minIdle:I

    .line 823
    return-void
.end method

.method public declared-synchronized setNumTestsPerEvictionRun(I)V
    .registers 2
    .param p1, "numTestsPerEvictionRun"    # I

    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>;"
    monitor-enter p0

    .line 950
    :try_start_1
    iput p1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_numTestsPerEvictionRun:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 951
    monitor-exit p0

    return-void

    .line 949
    .end local p1    # "numTestsPerEvictionRun":I
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setTestOnBorrow(Z)V
    .registers 2
    .param p1, "testOnBorrow"    # Z

    .line 866
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>;"
    iput-boolean p1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_testOnBorrow:Z

    .line 867
    return-void
.end method

.method public setTestOnReturn(Z)V
    .registers 2
    .param p1, "testOnReturn"    # Z

    .line 892
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>;"
    iput-boolean p1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_testOnReturn:Z

    .line 893
    return-void
.end method

.method public declared-synchronized setTestWhileIdle(Z)V
    .registers 2
    .param p1, "testWhileIdle"    # Z

    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>;"
    monitor-enter p0

    .line 1007
    :try_start_1
    iput-boolean p1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_testWhileIdle:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 1008
    monitor-exit p0

    return-void

    .line 1006
    .end local p1    # "testWhileIdle":Z
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setTimeBetweenEvictionRunsMillis(J)V
    .registers 5
    .param p1, "timeBetweenEvictionRunsMillis"    # J

    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>;"
    monitor-enter p0

    .line 918
    :try_start_1
    iput-wide p1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_timeBetweenEvictionRunsMillis:J

    .line 919
    iget-wide v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_timeBetweenEvictionRunsMillis:J

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->startEvictor(J)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 920
    monitor-exit p0

    return-void

    .line 917
    .end local p1    # "timeBetweenEvictionRunsMillis":J
    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setWhenExhaustedAction(B)V
    .registers 5
    .param p1, "whenExhaustedAction"    # B

    .line 723
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>;"
    monitor-enter p0

    .line 724
    packed-switch p1, :pswitch_data_2c

    .line 731
    :try_start_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    goto :goto_f

    .line 728
    :pswitch_7
    iput-byte p1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_whenExhaustedAction:B

    .line 729
    nop

    .line 733
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_29

    .line 734
    invoke-direct {p0}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->allocate()V

    .line 735
    return-void

    .line 731
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

    .line 733
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

    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>;"
    monitor-enter p0

    .line 2147
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_evictor:Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Evictor;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 2148
    iget-object v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_evictor:Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Evictor;

    invoke-static {v0}, Lorg/apache/commons/pool/impl/EvictionTimer;->cancel(Ljava/util/TimerTask;)V

    .line 2149
    iput-object v1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_evictor:Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Evictor;

    .line 2151
    :cond_d
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-lez v0, :cond_1f

    .line 2152
    new-instance v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Evictor;

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Evictor;-><init>(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$1;)V

    iput-object v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_evictor:Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Evictor;

    .line 2153
    iget-object v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_evictor:Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Evictor;

    invoke-static {v0, p1, p2, p1, p2}, Lorg/apache/commons/pool/impl/EvictionTimer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_21

    .line 2155
    :cond_1f
    monitor-exit p0

    return-void

    .line 2146
    .end local p1    # "delay":J
    :catchall_21
    move-exception p1

    monitor-exit p0

    throw p1
.end method
