.class public final Lcom/google/common/cache/CacheStats;
.super Ljava/lang/Object;
.source "CacheStats.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# instance fields
.field private final evictionCount:J

.field private final hitCount:J

.field private final loadExceptionCount:J

.field private final loadSuccessCount:J

.field private final missCount:J

.field private final totalLoadTime:J


# direct methods
.method public constructor <init>(JJJJJJ)V
    .registers 31
    .param p1, "hitCount"    # J
    .param p3, "missCount"    # J
    .param p5, "loadSuccessCount"    # J
    .param p7, "loadExceptionCount"    # J
    .param p9, "totalLoadTime"    # J
    .param p11, "evictionCount"    # J

    .line 71
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v13, 0x0

    const/4 v14, 0x1

    const-wide/16 v15, 0x0

    cmp-long v17, v1, v15

    if-ltz v17, :cond_1c

    const/16 v17, 0x1

    goto :goto_1e

    :cond_1c
    const/16 v17, 0x0

    :goto_1e
    invoke-static/range {v17 .. v17}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 73
    cmp-long v17, v3, v15

    if-ltz v17, :cond_28

    const/16 v17, 0x1

    goto :goto_2a

    :cond_28
    const/16 v17, 0x0

    :goto_2a
    invoke-static/range {v17 .. v17}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 74
    cmp-long v17, v5, v15

    if-ltz v17, :cond_34

    const/16 v17, 0x1

    goto :goto_36

    :cond_34
    const/16 v17, 0x0

    :goto_36
    invoke-static/range {v17 .. v17}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 75
    cmp-long v17, v7, v15

    if-ltz v17, :cond_40

    const/16 v17, 0x1

    goto :goto_42

    :cond_40
    const/16 v17, 0x0

    :goto_42
    invoke-static/range {v17 .. v17}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 76
    cmp-long v17, v9, v15

    if-ltz v17, :cond_4c

    const/16 v17, 0x1

    goto :goto_4e

    :cond_4c
    const/16 v17, 0x0

    :goto_4e
    invoke-static/range {v17 .. v17}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 77
    cmp-long v17, v11, v15

    if-ltz v17, :cond_57

    const/4 v13, 0x1

    nop

    :cond_57
    invoke-static {v13}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 79
    iput-wide v1, v0, Lcom/google/common/cache/CacheStats;->hitCount:J

    .line 80
    iput-wide v3, v0, Lcom/google/common/cache/CacheStats;->missCount:J

    .line 81
    iput-wide v5, v0, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    .line 82
    iput-wide v7, v0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    .line 83
    iput-wide v9, v0, Lcom/google/common/cache/CacheStats;->totalLoadTime:J

    .line 84
    iput-wide v11, v0, Lcom/google/common/cache/CacheStats;->evictionCount:J

    .line 85
    return-void
.end method


# virtual methods
.method public averageLoadPenalty()D
    .registers 7

    .line 193
    iget-wide v0, p0, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    add-long/2addr v0, v2

    .line 194
    .local v0, "totalLoadCount":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_e

    const-wide/16 v2, 0x0

    goto :goto_19

    :cond_e
    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->totalLoadTime:J

    long-to-double v2, v2

    long-to-double v4, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    :goto_19
    return-wide v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 246
    instance-of v0, p1, Lcom/google/common/cache/CacheStats;

    const/4 v1, 0x0

    if-eqz v0, :cond_3b

    .line 247
    move-object v0, p1

    check-cast v0, Lcom/google/common/cache/CacheStats;

    .line 248
    .local v0, "other":Lcom/google/common/cache/CacheStats;
    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->hitCount:J

    iget-wide v4, v0, Lcom/google/common/cache/CacheStats;->hitCount:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_3a

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->missCount:J

    iget-wide v4, v0, Lcom/google/common/cache/CacheStats;->missCount:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_3a

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    iget-wide v4, v0, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_3a

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    iget-wide v4, v0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_3a

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->totalLoadTime:J

    iget-wide v4, v0, Lcom/google/common/cache/CacheStats;->totalLoadTime:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_3a

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->evictionCount:J

    iget-wide v4, v0, Lcom/google/common/cache/CacheStats;->evictionCount:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_3a

    const/4 v1, 0x1

    nop

    :cond_3a
    return v1

    .line 255
    .end local v0    # "other":Lcom/google/common/cache/CacheStats;
    :cond_3b
    return v1
.end method

.method public evictionCount()J
    .registers 3

    .line 204
    iget-wide v0, p0, Lcom/google/common/cache/CacheStats;->evictionCount:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 4

    .line 240
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Lcom/google/common/cache/CacheStats;->hitCount:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/common/cache/CacheStats;->missCount:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/common/cache/CacheStats;->totalLoadTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/common/cache/CacheStats;->evictionCount:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public hitCount()J
    .registers 3

    .line 99
    iget-wide v0, p0, Lcom/google/common/cache/CacheStats;->hitCount:J

    return-wide v0
.end method

.method public hitRate()D
    .registers 7

    .line 108
    invoke-virtual {p0}, Lcom/google/common/cache/CacheStats;->requestCount()J

    move-result-wide v0

    .line 109
    .local v0, "requestCount":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_d

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    goto :goto_18

    :cond_d
    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->hitCount:J

    long-to-double v2, v2

    long-to-double v4, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    :goto_18
    return-wide v2
.end method

.method public loadCount()J
    .registers 5

    .line 142
    iget-wide v0, p0, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public loadExceptionCount()J
    .registers 3

    .line 164
    iget-wide v0, p0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    return-wide v0
.end method

.method public loadExceptionRate()D
    .registers 7

    .line 173
    iget-wide v0, p0, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    add-long/2addr v0, v2

    .line 174
    .local v0, "totalLoadCount":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_e

    const-wide/16 v2, 0x0

    goto :goto_19

    :cond_e
    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    long-to-double v2, v2

    long-to-double v4, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    :goto_19
    return-wide v2
.end method

.method public loadSuccessCount()J
    .registers 3

    .line 153
    iget-wide v0, p0, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    return-wide v0
.end method

.method public minus(Lcom/google/common/cache/CacheStats;)Lcom/google/common/cache/CacheStats;
    .registers 22
    .param p1, "other"    # Lcom/google/common/cache/CacheStats;

    .line 213
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v15, Lcom/google/common/cache/CacheStats;

    iget-wide v2, v0, Lcom/google/common/cache/CacheStats;->hitCount:J

    iget-wide v4, v1, Lcom/google/common/cache/CacheStats;->hitCount:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iget-wide v2, v0, Lcom/google/common/cache/CacheStats;->missCount:J

    iget-wide v8, v1, Lcom/google/common/cache/CacheStats;->missCount:J

    sub-long/2addr v2, v8

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    iget-wide v2, v0, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    iget-wide v10, v1, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    sub-long/2addr v2, v10

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    iget-wide v2, v0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    iget-wide v12, v1, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    sub-long/2addr v2, v12

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    iget-wide v2, v0, Lcom/google/common/cache/CacheStats;->totalLoadTime:J

    move-wide/from16 v16, v12

    iget-wide v12, v1, Lcom/google/common/cache/CacheStats;->totalLoadTime:J

    sub-long/2addr v2, v12

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    iget-wide v2, v0, Lcom/google/common/cache/CacheStats;->evictionCount:J

    move-wide/from16 v18, v12

    iget-wide v12, v1, Lcom/google/common/cache/CacheStats;->evictionCount:J

    sub-long/2addr v2, v12

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    move-object v2, v15

    move-wide v3, v6

    move-wide v5, v8

    move-wide v7, v10

    move-wide/from16 v9, v16

    move-wide/from16 v11, v18

    invoke-direct/range {v2 .. v14}, Lcom/google/common/cache/CacheStats;-><init>(JJJJJJ)V

    return-object v15
.end method

.method public missCount()J
    .registers 3

    .line 119
    iget-wide v0, p0, Lcom/google/common/cache/CacheStats;->missCount:J

    return-wide v0
.end method

.method public missRate()D
    .registers 7

    .line 132
    invoke-virtual {p0}, Lcom/google/common/cache/CacheStats;->requestCount()J

    move-result-wide v0

    .line 133
    .local v0, "requestCount":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_d

    const-wide/16 v2, 0x0

    goto :goto_18

    :cond_d
    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->missCount:J

    long-to-double v2, v2

    long-to-double v4, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    :goto_18
    return-wide v2
.end method

.method public plus(Lcom/google/common/cache/CacheStats;)Lcom/google/common/cache/CacheStats;
    .registers 22
    .param p1, "other"    # Lcom/google/common/cache/CacheStats;

    .line 229
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v15, Lcom/google/common/cache/CacheStats;

    iget-wide v2, v0, Lcom/google/common/cache/CacheStats;->hitCount:J

    iget-wide v4, v1, Lcom/google/common/cache/CacheStats;->hitCount:J

    add-long/2addr v4, v2

    iget-wide v2, v0, Lcom/google/common/cache/CacheStats;->missCount:J

    iget-wide v6, v1, Lcom/google/common/cache/CacheStats;->missCount:J

    add-long/2addr v6, v2

    iget-wide v2, v0, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    iget-wide v8, v1, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    add-long/2addr v8, v2

    iget-wide v2, v0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    iget-wide v10, v1, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    add-long/2addr v10, v2

    iget-wide v2, v0, Lcom/google/common/cache/CacheStats;->totalLoadTime:J

    iget-wide v12, v1, Lcom/google/common/cache/CacheStats;->totalLoadTime:J

    add-long/2addr v12, v2

    iget-wide v2, v0, Lcom/google/common/cache/CacheStats;->evictionCount:J

    move-wide/from16 v16, v12

    iget-wide v12, v1, Lcom/google/common/cache/CacheStats;->evictionCount:J

    add-long v18, v2, v12

    move-object v2, v15

    move-wide v3, v4

    move-wide v5, v6

    move-wide v7, v8

    move-wide v9, v10

    move-wide/from16 v11, v16

    move-wide/from16 v13, v18

    invoke-direct/range {v2 .. v14}, Lcom/google/common/cache/CacheStats;-><init>(JJJJJJ)V

    return-object v15
.end method

.method public requestCount()J
    .registers 5

    .line 92
    iget-wide v0, p0, Lcom/google/common/cache/CacheStats;->hitCount:J

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->missCount:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 260
    invoke-static {p0}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "hitCount"

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->hitCount:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "missCount"

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->missCount:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "loadSuccessCount"

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "loadExceptionCount"

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "totalLoadTime"

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->totalLoadTime:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "evictionCount"

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->evictionCount:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public totalLoadTime()J
    .registers 3

    .line 185
    iget-wide v0, p0, Lcom/google/common/cache/CacheStats;->totalLoadTime:J

    return-wide v0
.end method
