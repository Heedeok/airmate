.class public Lorg/apache/commons/pool/impl/GenericObjectPool$Config;
.super Ljava/lang/Object;
.source "GenericObjectPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/pool/impl/GenericObjectPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation


# instance fields
.field public lifo:Z

.field public maxActive:I

.field public maxIdle:I

.field public maxWait:J

.field public minEvictableIdleTimeMillis:J

.field public minIdle:I

.field public numTestsPerEvictionRun:I

.field public softMinEvictableIdleTimeMillis:J

.field public testOnBorrow:Z

.field public testOnReturn:Z

.field public testWhileIdle:Z

.field public timeBetweenEvictionRunsMillis:J

.field public whenExhaustedAction:B


# direct methods
.method public constructor <init>()V
    .registers 7

    .line 1798
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1803
    const/16 v0, 0x8

    iput v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPool$Config;->maxIdle:I

    .line 1807
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/commons/pool/impl/GenericObjectPool$Config;->minIdle:I

    .line 1811
    iput v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPool$Config;->maxActive:I

    .line 1815
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lorg/apache/commons/pool/impl/GenericObjectPool$Config;->maxWait:J

    .line 1819
    const/4 v0, 0x1

    iput-byte v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPool$Config;->whenExhaustedAction:B

    .line 1823
    iput-boolean v1, p0, Lorg/apache/commons/pool/impl/GenericObjectPool$Config;->testOnBorrow:Z

    .line 1827
    iput-boolean v1, p0, Lorg/apache/commons/pool/impl/GenericObjectPool$Config;->testOnReturn:Z

    .line 1831
    iput-boolean v1, p0, Lorg/apache/commons/pool/impl/GenericObjectPool$Config;->testWhileIdle:Z

    .line 1835
    iput-wide v2, p0, Lorg/apache/commons/pool/impl/GenericObjectPool$Config;->timeBetweenEvictionRunsMillis:J

    .line 1839
    const/4 v1, 0x3

    iput v1, p0, Lorg/apache/commons/pool/impl/GenericObjectPool$Config;->numTestsPerEvictionRun:I

    .line 1843
    const-wide/32 v4, 0x1b7740

    iput-wide v4, p0, Lorg/apache/commons/pool/impl/GenericObjectPool$Config;->minEvictableIdleTimeMillis:J

    .line 1847
    iput-wide v2, p0, Lorg/apache/commons/pool/impl/GenericObjectPool$Config;->softMinEvictableIdleTimeMillis:J

    .line 1851
    iput-boolean v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPool$Config;->lifo:Z

    return-void
.end method
