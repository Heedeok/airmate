.class public final Lorg/apache/commons/lang/math/JVMRandom;
.super Ljava/util/Random;
.source "JVMRandom.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private constructed:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 48
    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/lang/math/JVMRandom;->constructed:Z

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/lang/math/JVMRandom;->constructed:Z

    .line 50
    return-void
.end method

.method public static nextLong(J)J
    .registers 6
    .param p0, "n"    # J

    .line 132
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-lez v2, :cond_12

    .line 138
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    long-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-long v0, v0

    return-wide v0

    .line 133
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Upper bound for nextInt must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public nextBoolean()Z
    .registers 6

    .line 148
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpl-double v4, v0, v2

    if-lez v4, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public nextBytes([B)V
    .registers 3
    .param p1, "byteArray"    # [B

    .line 81
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public nextDouble()D
    .registers 3

    .line 166
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    return-wide v0
.end method

.method public nextFloat()F
    .registers 3

    .line 158
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public declared-synchronized nextGaussian()D
    .registers 2

    monitor-enter p0

    .line 71
    :try_start_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public nextInt()I
    .registers 2

    .line 91
    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/math/JVMRandom;->nextInt(I)I

    move-result v0

    return v0
.end method

.method public nextInt(I)I
    .registers 6
    .param p1, "n"    # I

    .line 103
    if-lez p1, :cond_e

    .line 109
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    int-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-int v0, v0

    return v0

    .line 104
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Upper bound for nextInt must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextLong()J
    .registers 3

    .line 118
    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Lorg/apache/commons/lang/math/JVMRandom;->nextLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized setSeed(J)V
    .registers 4
    .param p1, "seed"    # J

    monitor-enter p0

    .line 59
    :try_start_1
    iget-boolean v0, p0, Lorg/apache/commons/lang/math/JVMRandom;->constructed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_d

    if-nez v0, :cond_7

    .line 62
    monitor-exit p0

    return-void

    .line 60
    :cond_7
    :try_start_7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_d

    .line 58
    .end local p1    # "seed":J
    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method
