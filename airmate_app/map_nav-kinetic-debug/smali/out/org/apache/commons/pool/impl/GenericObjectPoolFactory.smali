.class public Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;
.super Ljava/lang/Object;
.source "GenericObjectPoolFactory.java"

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

.field protected _softMinEvictableIdleTimeMillis:J
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
.method public constructor <init>(Lorg/apache/commons/pool/PoolableObjectFactory;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool/PoolableObjectFactory<",
            "TT;>;)V"
        }
    .end annotation

    .line 44
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;, "Lorg/apache/commons/pool/impl/GenericObjectPoolFactory<TT;>;"
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

    invoke-direct/range {v0 .. v15}, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;-><init>(Lorg/apache/commons/pool/PoolableObjectFactory;IBJIIZZJIJZ)V

    .line 45
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

    .line 67
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;, "Lorg/apache/commons/pool/impl/GenericObjectPoolFactory<TT;>;"
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

    invoke-direct/range {v0 .. v15}, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;-><init>(Lorg/apache/commons/pool/PoolableObjectFactory;IBJIIZZJIJZ)V

    .line 68
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

    .line 80
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;, "Lorg/apache/commons/pool/impl/GenericObjectPoolFactory<TT;>;"
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

    invoke-direct/range {v0 .. v15}, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;-><init>(Lorg/apache/commons/pool/PoolableObjectFactory;IBJIIZZJIJZ)V

    .line 81
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

    .line 109
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;, "Lorg/apache/commons/pool/impl/GenericObjectPoolFactory<TT;>;"
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

    invoke-direct/range {v0 .. v15}, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;-><init>(Lorg/apache/commons/pool/PoolableObjectFactory;IBJIIZZJIJZ)V

    .line 110
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

    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;, "Lorg/apache/commons/pool/impl/GenericObjectPoolFactory<TT;>;"
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

    .line 166
    const-wide/16 v16, -0x1

    invoke-direct/range {v0 .. v17}, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;-><init>(Lorg/apache/commons/pool/PoolableObjectFactory;IBJIIZZJIJZJ)V

    .line 167
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

    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;, "Lorg/apache/commons/pool/impl/GenericObjectPoolFactory<TT;>;"
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

    .line 189
    const/16 v18, 0x1

    invoke-direct/range {v0 .. v18}, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;-><init>(Lorg/apache/commons/pool/PoolableObjectFactory;IBJIIZZJIJZJZ)V

    .line 190
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

    .line 212
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;, "Lorg/apache/commons/pool/impl/GenericObjectPoolFactory<TT;>;"
    .local p1, "factory":Lorg/apache/commons/pool/PoolableObjectFactory;, "Lorg/apache/commons/pool/PoolableObjectFactory<TT;>;"
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 360
    const/16 v1, 0x8

    iput v1, v0, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;->_maxIdle:I

    .line 367
    const/4 v2, 0x0

    iput v2, v0, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;->_minIdle:I

    .line 374
    iput v1, v0, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;->_maxActive:I

    .line 381
    const-wide/16 v3, -0x1

    iput-wide v3, v0, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;->_maxWait:J

    .line 389
    const/4 v1, 0x1

    iput-byte v1, v0, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;->_whenExhaustedAction:B

    .line 396
    iput-boolean v2, v0, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;->_testOnBorrow:Z

    .line 403
    iput-boolean v2, v0, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;->_testOnReturn:Z

    .line 410
    iput-boolean v2, v0, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;->_testWhileIdle:Z

    .line 418
    iput-wide v3, v0, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;->_timeBetweenEvictionRunsMillis:J

    .line 426
    const/4 v2, 0x3

    iput v2, v0, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;->_numTestsPerEvictionRun:I

    .line 434
    const-wide/32 v2, 0x1b7740

    iput-wide v2, v0, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;->_minEvictableIdleTimeMillis:J

    .line 442
    iput-wide v2, v0, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;->_softMinEvictableIdleTimeMillis:J

    .line 449
    iput-boolean v1, v0, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;->_lifo:Z

    .line 456
    const/4 v1, 0x0

    iput-object v1, v0, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    .line 213
    move/from16 v1, p6

    iput v1, v0, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;->_maxIdle:I

    .line 214
    move/from16 v2, p7

    iput v2, v0, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;->_minIdle:I

    .line 215
    move/from16 v3, p2

    iput v3, v0, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;->_maxActive:I

    .line 216
    move-wide/from16 v4, p4

    iput-wide v4, v0, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;->_maxWait:J

    .line 217
    move/from16 v6, p3

    iput-byte v6, v0, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;->_whenExhaustedAction:B

    .line 218
    move/from16 v7, p8

    iput-boolean v7, v0, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;->_testOnBorrow:Z

    .line 219
    move/from16 v8, p9

    iput-boolean v8, v0, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;->_testOnReturn:Z

    .line 220
    move/from16 v9, p15

    iput-boolean v9, v0, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;->_testWhileIdle:Z

    .line 221
    move-wide/from16 v10, p10

    iput-wide v10, v0, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;->_timeBetweenEvictionRunsMillis:J

    .line 222
    move/from16 v12, p12

    iput v12, v0, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;->_numTestsPerEvictionRun:I

    .line 223
    move-wide/from16 v13, p13

    iput-wide v13, v0, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;->_minEvictableIdleTimeMillis:J

    .line 224
    move-wide/from16 v1, p16

    iput-wide v1, v0, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;->_softMinEvictableIdleTimeMillis:J

    .line 225
    move/from16 v15, p18

    iput-boolean v15, v0, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;->_lifo:Z

    .line 226
    move-object/from16 v1, p1

    iput-object v1, v0, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    .line 227
    return-void
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

    .line 125
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;, "Lorg/apache/commons/pool/impl/GenericObjectPoolFactory<TT;>;"
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

    invoke-direct/range {v0 .. v15}, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;-><init>(Lorg/apache/commons/pool/PoolableObjectFactory;IBJIIZZJIJZ)V

    .line 126
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool/PoolableObjectFactory;IBJIZZJIJZ)V
    .registers 33
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

    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;, "Lorg/apache/commons/pool/impl/GenericObjectPoolFactory<TT;>;"
    .local p1, "factory":Lorg/apache/commons/pool/PoolableObjectFactory;, "Lorg/apache/commons/pool/PoolableObjectFactory<TT;>;"
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

    .line 145
    const/4 v7, 0x0

    const-wide/16 v16, -0x1

    invoke-direct/range {v0 .. v17}, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;-><init>(Lorg/apache/commons/pool/PoolableObjectFactory;IBJIIZZJIJZJ)V

    .line 146
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

    .line 95
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;, "Lorg/apache/commons/pool/impl/GenericObjectPoolFactory<TT;>;"
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

    invoke-direct/range {v0 .. v15}, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;-><init>(Lorg/apache/commons/pool/PoolableObjectFactory;IBJIIZZJIJZ)V

    .line 96
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;, "Lorg/apache/commons/pool/impl/GenericObjectPoolFactory<TT;>;"
    .local p1, "factory":Lorg/apache/commons/pool/PoolableObjectFactory;, "Lorg/apache/commons/pool/PoolableObjectFactory<TT;>;"
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 56
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

    invoke-direct/range {v1 .. v19}, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;-><init>(Lorg/apache/commons/pool/PoolableObjectFactory;IBJIIZZJIJZJZ)V

    .line 57
    return-void
.end method


# virtual methods
.method public createPool()Lorg/apache/commons/pool/ObjectPool;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/pool/ObjectPool<",
            "TT;>;"
        }
    .end annotation

    .line 233
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;, "Lorg/apache/commons/pool/impl/GenericObjectPoolFactory<TT;>;"
    move-object/from16 v0, p0

    new-instance v20, Lorg/apache/commons/pool/impl/GenericObjectPool;

    move-object/from16 v1, v20

    iget-object v2, v0, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    iget v3, v0, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;->_maxActive:I

    iget-byte v4, v0, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;->_whenExhaustedAction:B

    iget-wide v5, v0, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;->_maxWait:J

    iget v7, v0, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;->_maxIdle:I

    iget v8, v0, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;->_minIdle:I

    iget-boolean v9, v0, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;->_testOnBorrow:Z

    iget-boolean v10, v0, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;->_testOnReturn:Z

    iget-wide v11, v0, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;->_timeBetweenEvictionRunsMillis:J

    iget v13, v0, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;->_numTestsPerEvictionRun:I

    iget-wide v14, v0, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;->_minEvictableIdleTimeMillis:J

    move-object/from16 v21, v1

    iget-boolean v1, v0, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;->_testWhileIdle:Z

    move/from16 v16, v1

    move-object/from16 v22, v2

    iget-wide v1, v0, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;->_softMinEvictableIdleTimeMillis:J

    move-wide/from16 v17, v1

    iget-boolean v1, v0, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;->_lifo:Z

    move/from16 v19, v1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct/range {v1 .. v19}, Lorg/apache/commons/pool/impl/GenericObjectPool;-><init>(Lorg/apache/commons/pool/PoolableObjectFactory;IBJIIZZJIJZJZ)V

    return-object v20
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

    .line 353
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;, "Lorg/apache/commons/pool/impl/GenericObjectPoolFactory<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    return-object v0
.end method

.method public getLifo()Z
    .registers 2

    .line 346
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;, "Lorg/apache/commons/pool/impl/GenericObjectPoolFactory<TT;>;"
    iget-boolean v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;->_lifo:Z

    return v0
.end method

.method public getMaxActive()I
    .registers 2

    .line 258
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;, "Lorg/apache/commons/pool/impl/GenericObjectPoolFactory<TT;>;"
    iget v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;->_maxActive:I

    return v0
.end method

.method public getMaxIdle()I
    .registers 2

    .line 242
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;, "Lorg/apache/commons/pool/impl/GenericObjectPoolFactory<TT;>;"
    iget v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;->_maxIdle:I

    return v0
.end method

.method public getMaxWait()J
    .registers 3

    .line 266
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;, "Lorg/apache/commons/pool/impl/GenericObjectPoolFactory<TT;>;"
    iget-wide v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;->_maxWait:J

    return-wide v0
.end method

.method public getMinEvictableIdleTimeMillis()J
    .registers 3

    .line 329
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;, "Lorg/apache/commons/pool/impl/GenericObjectPoolFactory<TT;>;"
    iget-wide v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;->_minEvictableIdleTimeMillis:J

    return-wide v0
.end method

.method public getMinIdle()I
    .registers 2

    .line 250
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;, "Lorg/apache/commons/pool/impl/GenericObjectPoolFactory<TT;>;"
    iget v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;->_minIdle:I

    return v0
.end method

.method public getNumTestsPerEvictionRun()I
    .registers 2

    .line 320
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;, "Lorg/apache/commons/pool/impl/GenericObjectPoolFactory<TT;>;"
    iget v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;->_numTestsPerEvictionRun:I

    return v0
.end method

.method public getSoftMinEvictableIdleTimeMillis()J
    .registers 3

    .line 338
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;, "Lorg/apache/commons/pool/impl/GenericObjectPoolFactory<TT;>;"
    iget-wide v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;->_softMinEvictableIdleTimeMillis:J

    return-wide v0
.end method

.method public getTestOnBorrow()Z
    .registers 2

    .line 284
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;, "Lorg/apache/commons/pool/impl/GenericObjectPoolFactory<TT;>;"
    iget-boolean v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;->_testOnBorrow:Z

    return v0
.end method

.method public getTestOnReturn()Z
    .registers 2

    .line 293
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;, "Lorg/apache/commons/pool/impl/GenericObjectPoolFactory<TT;>;"
    iget-boolean v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;->_testOnReturn:Z

    return v0
.end method

.method public getTestWhileIdle()Z
    .registers 2

    .line 302
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;, "Lorg/apache/commons/pool/impl/GenericObjectPoolFactory<TT;>;"
    iget-boolean v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;->_testWhileIdle:Z

    return v0
.end method

.method public getTimeBetweenEvictionRunsMillis()J
    .registers 3

    .line 311
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;, "Lorg/apache/commons/pool/impl/GenericObjectPoolFactory<TT;>;"
    iget-wide v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;->_timeBetweenEvictionRunsMillis:J

    return-wide v0
.end method

.method public getWhenExhaustedAction()B
    .registers 2

    .line 275
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;, "Lorg/apache/commons/pool/impl/GenericObjectPoolFactory<TT;>;"
    iget-byte v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;->_whenExhaustedAction:B

    return v0
.end method
