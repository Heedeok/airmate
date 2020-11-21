.class public Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;
.super Ljava/lang/Object;
.source "GenericKeyedObjectPoolFactory.java"

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

.field protected _lifo:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected _maxActive:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected _maxIdle:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected _maxTotal:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected _maxWait:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected _minEvictableIdleTimeMillis:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected _minIdle:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected _numTestsPerEvictionRun:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected _testOnBorrow:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected _testOnReturn:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected _testWhileIdle:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected _timeBetweenEvictionRunsMillis:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected _whenExhaustedAction:B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;)V
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool/KeyedPoolableObjectFactory<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 46
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory<TK;TV;>;"
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

    invoke-direct/range {v0 .. v14}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;-><init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;IBJIZZJIJZ)V

    .line 47
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;I)V
    .registers 19
    .param p2, "maxActive"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool/KeyedPoolableObjectFactory<",
            "TK;TV;>;I)V"
        }
    .end annotation

    .line 69
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory<TK;TV;>;"
    .local p1, "factory":Lorg/apache/commons/pool/KeyedPoolableObjectFactory;, "Lorg/apache/commons/pool/KeyedPoolableObjectFactory<TK;TV;>;"
    const/4 v3, 0x1

    const-wide/16 v4, -0x1

    const/16 v6, 0x8

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, -0x1

    const/4 v12, 0x3

    const-wide/32 v13, 0x1b7740

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct/range {v0 .. v15}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;-><init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;IBJIIZZJIJZ)V

    .line 70
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;IBJ)V
    .registers 22
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

    .line 82
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory<TK;TV;>;"
    .local p1, "factory":Lorg/apache/commons/pool/KeyedPoolableObjectFactory;, "Lorg/apache/commons/pool/KeyedPoolableObjectFactory<TK;TV;>;"
    const/16 v6, 0x8

    const/4 v7, -0x1

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

    invoke-direct/range {v0 .. v15}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;-><init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;IBJIIZZJIJZ)V

    .line 83
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;IBJI)V
    .registers 23
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

    .line 111
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory<TK;TV;>;"
    .local p1, "factory":Lorg/apache/commons/pool/KeyedPoolableObjectFactory;, "Lorg/apache/commons/pool/KeyedPoolableObjectFactory<TK;TV;>;"
    const/4 v7, -0x1

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

    invoke-direct/range {v0 .. v15}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;-><init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;IBJIIZZJIJZ)V

    .line 112
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;IBJII)V
    .registers 24
    .param p2, "maxActive"    # I
    .param p3, "whenExhaustedAction"    # B
    .param p4, "maxWait"    # J
    .param p6, "maxIdle"    # I
    .param p7, "maxTotal"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool/KeyedPoolableObjectFactory<",
            "TK;TV;>;IBJII)V"
        }
    .end annotation

    .line 125
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory<TK;TV;>;"
    .local p1, "factory":Lorg/apache/commons/pool/KeyedPoolableObjectFactory;, "Lorg/apache/commons/pool/KeyedPoolableObjectFactory<TK;TV;>;"
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

    move/from16 v7, p7

    invoke-direct/range {v0 .. v15}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;-><init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;IBJIIZZJIJZ)V

    .line 126
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

    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory<TK;TV;>;"
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

    .line 205
    const/16 v17, 0x1

    invoke-direct/range {v0 .. v17}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;-><init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;IBJIIIZZJIJZZ)V

    .line 206
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

    .line 228
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory<TK;TV;>;"
    .local p1, "factory":Lorg/apache/commons/pool/KeyedPoolableObjectFactory;, "Lorg/apache/commons/pool/KeyedPoolableObjectFactory<TK;TV;>;"
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 376
    const/16 v1, 0x8

    iput v1, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;->_maxIdle:I

    .line 383
    iput v1, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;->_maxActive:I

    .line 390
    const/4 v1, -0x1

    iput v1, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;->_maxTotal:I

    .line 397
    const/4 v1, 0x0

    iput v1, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;->_minIdle:I

    .line 404
    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;->_maxWait:J

    .line 411
    const/4 v4, 0x1

    iput-byte v4, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;->_whenExhaustedAction:B

    .line 418
    iput-boolean v1, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;->_testOnBorrow:Z

    .line 425
    iput-boolean v1, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;->_testOnReturn:Z

    .line 432
    iput-boolean v1, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;->_testWhileIdle:Z

    .line 440
    iput-wide v2, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;->_timeBetweenEvictionRunsMillis:J

    .line 448
    const/4 v1, 0x3

    iput v1, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;->_numTestsPerEvictionRun:I

    .line 456
    const-wide/32 v1, 0x1b7740

    iput-wide v1, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;->_minEvictableIdleTimeMillis:J

    .line 463
    const/4 v1, 0x0

    iput-object v1, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    .line 470
    iput-boolean v4, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;->_lifo:Z

    .line 229
    move/from16 v1, p6

    iput v1, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;->_maxIdle:I

    .line 230
    move/from16 v2, p2

    iput v2, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;->_maxActive:I

    .line 231
    move/from16 v3, p7

    iput v3, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;->_maxTotal:I

    .line 232
    move/from16 v4, p8

    iput v4, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;->_minIdle:I

    .line 233
    move-wide/from16 v5, p4

    iput-wide v5, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;->_maxWait:J

    .line 234
    move/from16 v7, p3

    iput-byte v7, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;->_whenExhaustedAction:B

    .line 235
    move/from16 v8, p9

    iput-boolean v8, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;->_testOnBorrow:Z

    .line 236
    move/from16 v9, p10

    iput-boolean v9, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;->_testOnReturn:Z

    .line 237
    move/from16 v10, p16

    iput-boolean v10, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;->_testWhileIdle:Z

    .line 238
    move-wide/from16 v11, p11

    iput-wide v11, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;->_timeBetweenEvictionRunsMillis:J

    .line 239
    move/from16 v13, p13

    iput v13, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;->_numTestsPerEvictionRun:I

    .line 240
    move-wide/from16 v14, p14

    iput-wide v14, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;->_minEvictableIdleTimeMillis:J

    .line 241
    move-object/from16 v1, p1

    iput-object v1, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    .line 242
    move/from16 v1, p17

    iput-boolean v1, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;->_lifo:Z

    .line 243
    return-void
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

    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory<TK;TV;>;"
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

    .line 182
    const/4 v8, 0x0

    invoke-direct/range {v0 .. v16}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;-><init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;IBJIIIZZJIJZ)V

    .line 183
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;IBJIZZ)V
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
            "Lorg/apache/commons/pool/KeyedPoolableObjectFactory<",
            "TK;TV;>;IBJIZZ)V"
        }
    .end annotation

    .line 141
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory<TK;TV;>;"
    .local p1, "factory":Lorg/apache/commons/pool/KeyedPoolableObjectFactory;, "Lorg/apache/commons/pool/KeyedPoolableObjectFactory<TK;TV;>;"
    const/4 v7, -0x1

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

    invoke-direct/range {v0 .. v15}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;-><init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;IBJIIZZJIJZ)V

    .line 142
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

    .line 161
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory<TK;TV;>;"
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

    invoke-direct/range {v0 .. v15}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;-><init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;IBJIIZZJIJZ)V

    .line 162
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;IBJZZ)V
    .registers 24
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

    .line 97
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory<TK;TV;>;"
    .local p1, "factory":Lorg/apache/commons/pool/KeyedPoolableObjectFactory;, "Lorg/apache/commons/pool/KeyedPoolableObjectFactory<TK;TV;>;"
    const/16 v6, 0x8

    const/4 v7, -0x1

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

    invoke-direct/range {v0 .. v15}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;-><init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;IBJIIZZJIJZ)V

    .line 98
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory<TK;TV;>;"
    .local p1, "factory":Lorg/apache/commons/pool/KeyedPoolableObjectFactory;, "Lorg/apache/commons/pool/KeyedPoolableObjectFactory<TK;TV;>;"
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 58
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

    invoke-direct/range {v1 .. v18}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;-><init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;IBJIIIZZJIJZZ)V

    .line 59
    return-void
.end method


# virtual methods
.method public createPool()Lorg/apache/commons/pool/KeyedObjectPool;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/pool/KeyedObjectPool<",
            "TK;TV;>;"
        }
    .end annotation

    .line 252
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory<TK;TV;>;"
    move-object/from16 v0, p0

    new-instance v19, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;

    move-object/from16 v1, v19

    iget-object v2, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    iget v3, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;->_maxActive:I

    iget-byte v4, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;->_whenExhaustedAction:B

    iget-wide v5, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;->_maxWait:J

    iget v7, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;->_maxIdle:I

    iget v8, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;->_maxTotal:I

    iget v9, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;->_minIdle:I

    iget-boolean v10, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;->_testOnBorrow:Z

    iget-boolean v11, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;->_testOnReturn:Z

    iget-wide v12, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;->_timeBetweenEvictionRunsMillis:J

    iget v14, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;->_numTestsPerEvictionRun:I

    move-object/from16 v20, v1

    move-object/from16 v21, v2

    iget-wide v1, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;->_minEvictableIdleTimeMillis:J

    move-wide v15, v1

    iget-boolean v1, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;->_testWhileIdle:Z

    move/from16 v17, v1

    iget-boolean v1, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;->_lifo:Z

    move/from16 v18, v1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct/range {v1 .. v18}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;-><init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;IBJIIIZZJIJZZ)V

    return-object v19
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

    .line 359
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    return-object v0
.end method

.method public getLifo()Z
    .registers 2

    .line 367
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory<TK;TV;>;"
    iget-boolean v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;->_lifo:Z

    return v0
.end method

.method public getMaxActive()I
    .registers 2

    .line 268
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory<TK;TV;>;"
    iget v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;->_maxActive:I

    return v0
.end method

.method public getMaxIdle()I
    .registers 2

    .line 260
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory<TK;TV;>;"
    iget v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;->_maxIdle:I

    return v0
.end method

.method public getMaxTotal()I
    .registers 2

    .line 276
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory<TK;TV;>;"
    iget v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;->_maxTotal:I

    return v0
.end method

.method public getMaxWait()J
    .registers 3

    .line 292
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory<TK;TV;>;"
    iget-wide v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;->_maxWait:J

    return-wide v0
.end method

.method public getMinEvictableIdleTimeMillis()J
    .registers 3

    .line 351
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory<TK;TV;>;"
    iget-wide v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;->_minEvictableIdleTimeMillis:J

    return-wide v0
.end method

.method public getMinIdle()I
    .registers 2

    .line 284
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory<TK;TV;>;"
    iget v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;->_minIdle:I

    return v0
.end method

.method public getNumTestsPerEvictionRun()I
    .registers 2

    .line 342
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory<TK;TV;>;"
    iget v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;->_numTestsPerEvictionRun:I

    return v0
.end method

.method public getTestOnBorrow()Z
    .registers 2

    .line 308
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory<TK;TV;>;"
    iget-boolean v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;->_testOnBorrow:Z

    return v0
.end method

.method public getTestOnReturn()Z
    .registers 2

    .line 316
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory<TK;TV;>;"
    iget-boolean v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;->_testOnReturn:Z

    return v0
.end method

.method public getTestWhileIdle()Z
    .registers 2

    .line 324
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory<TK;TV;>;"
    iget-boolean v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;->_testWhileIdle:Z

    return v0
.end method

.method public getTimeBetweenEvictionRunsMillis()J
    .registers 3

    .line 333
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory<TK;TV;>;"
    iget-wide v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;->_timeBetweenEvictionRunsMillis:J

    return-wide v0
.end method

.method public getWhenExhaustedAction()B
    .registers 2

    .line 300
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory<TK;TV;>;"
    iget-byte v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;->_whenExhaustedAction:B

    return v0
.end method
