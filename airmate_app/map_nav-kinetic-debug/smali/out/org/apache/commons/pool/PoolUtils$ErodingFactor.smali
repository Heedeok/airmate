.class Lorg/apache/commons/pool/PoolUtils$ErodingFactor;
.super Ljava/lang/Object;
.source "PoolUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/pool/PoolUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ErodingFactor"
.end annotation


# instance fields
.field private final factor:F

.field private volatile transient idleHighWaterMark:I

.field private volatile transient nextShrink:J


# direct methods
.method public constructor <init>(F)V
    .registers 6
    .param p1, "factor"    # F

    .line 2031
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2032
    iput p1, p0, Lorg/apache/commons/pool/PoolUtils$ErodingFactor;->factor:F

    .line 2033
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const v2, 0x495bba00    # 900000.0f

    mul-float v2, v2, p1

    float-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/pool/PoolUtils$ErodingFactor;->nextShrink:J

    .line 2034
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/commons/pool/PoolUtils$ErodingFactor;->idleHighWaterMark:I

    .line 2035
    return-void
.end method


# virtual methods
.method public getNextShrink()J
    .registers 3

    .line 2066
    iget-wide v0, p0, Lorg/apache/commons/pool/PoolUtils$ErodingFactor;->nextShrink:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 2074
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ErodingFactor{factor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/commons/pool/PoolUtils$ErodingFactor;->factor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", idleHighWaterMark="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/commons/pool/PoolUtils$ErodingFactor;->idleHighWaterMark:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(I)V
    .registers 4
    .param p1, "numIdle"    # I

    .line 2043
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/commons/pool/PoolUtils$ErodingFactor;->update(JI)V

    .line 2044
    return-void
.end method

.method public update(JI)V
    .registers 10
    .param p1, "now"    # J
    .param p3, "numIdle"    # I

    .line 2053
    const/4 v0, 0x0

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2054
    .local v0, "idle":I
    iget v1, p0, Lorg/apache/commons/pool/PoolUtils$ErodingFactor;->idleHighWaterMark:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lorg/apache/commons/pool/PoolUtils$ErodingFactor;->idleHighWaterMark:I

    .line 2055
    const/high16 v1, 0x41700000    # 15.0f

    .line 2056
    .local v1, "maxInterval":F
    iget v2, p0, Lorg/apache/commons/pool/PoolUtils$ErodingFactor;->idleHighWaterMark:I

    int-to-float v2, v2

    const/high16 v3, -0x3ea00000    # -14.0f

    div-float/2addr v3, v2

    int-to-float v2, v0

    mul-float v3, v3, v2

    const/high16 v2, 0x41700000    # 15.0f

    add-float/2addr v3, v2

    .line 2057
    .local v3, "minutes":F
    const v2, 0x476a6000    # 60000.0f

    mul-float v2, v2, v3

    iget v4, p0, Lorg/apache/commons/pool/PoolUtils$ErodingFactor;->factor:F

    mul-float v2, v2, v4

    float-to-long v4, v2

    add-long/2addr v4, p1

    iput-wide v4, p0, Lorg/apache/commons/pool/PoolUtils$ErodingFactor;->nextShrink:J

    .line 2058
    return-void
.end method
