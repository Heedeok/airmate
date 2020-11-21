.class public Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;
.super Ljava/lang/Object;
.source "GenericKeyedObjectPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation


# instance fields
.field public lifo:Z

.field public maxActive:I

.field public maxIdle:I

.field public maxTotal:I

.field public maxWait:J

.field public minEvictableIdleTimeMillis:J

.field public minIdle:I

.field public numTestsPerEvictionRun:I

.field public testOnBorrow:Z

.field public testOnReturn:Z

.field public testWhileIdle:Z

.field public timeBetweenEvictionRunsMillis:J

.field public whenExhaustedAction:B


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 2410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2415
    const/16 v0, 0x8

    iput v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;->maxIdle:I

    .line 2419
    iput v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;->maxActive:I

    .line 2423
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;->maxTotal:I

    .line 2427
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;->minIdle:I

    .line 2431
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;->maxWait:J

    .line 2435
    const/4 v3, 0x1

    iput-byte v3, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;->whenExhaustedAction:B

    .line 2439
    iput-boolean v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;->testOnBorrow:Z

    .line 2443
    iput-boolean v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;->testOnReturn:Z

    .line 2447
    iput-boolean v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;->testWhileIdle:Z

    .line 2451
    iput-wide v1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;->timeBetweenEvictionRunsMillis:J

    .line 2455
    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;->numTestsPerEvictionRun:I

    .line 2459
    const-wide/32 v0, 0x1b7740

    iput-wide v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;->minEvictableIdleTimeMillis:J

    .line 2463
    iput-boolean v3, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;->lifo:Z

    return-void
.end method
