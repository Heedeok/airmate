.class Lcom/google/common/hash/BloomFilterStrategies$BitArray;
.super Ljava/lang/Object;
.source "BloomFilterStrategies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/BloomFilterStrategies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BitArray"
.end annotation


# instance fields
.field final data:[J


# direct methods
.method constructor <init>(I)V
    .registers 4
    .param p1, "bits"    # I

    .line 82
    sget-object v0, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    const/16 v1, 0x40

    invoke-static {p1, v1, v0}, Lcom/google/common/math/IntMath;->divide(IILjava/math/RoundingMode;)I

    move-result v0

    new-array v0, v0, [J

    invoke-direct {p0, v0}, Lcom/google/common/hash/BloomFilterStrategies$BitArray;-><init>([J)V

    .line 83
    return-void
.end method

.method constructor <init>([J)V
    .registers 4
    .param p1, "data"    # [J

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    array-length v0, p1

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    const-string v1, "data length is zero!"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 88
    iput-object p1, p0, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->data:[J

    .line 89
    return-void
.end method


# virtual methods
.method copy()Lcom/google/common/hash/BloomFilterStrategies$BitArray;
    .registers 3

    .line 108
    new-instance v0, Lcom/google/common/hash/BloomFilterStrategies$BitArray;

    iget-object v1, p0, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->data:[J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    invoke-direct {v0, v1}, Lcom/google/common/hash/BloomFilterStrategies$BitArray;-><init>([J)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 112
    instance-of v0, p1, Lcom/google/common/hash/BloomFilterStrategies$BitArray;

    if-eqz v0, :cond_10

    .line 113
    move-object v0, p1

    check-cast v0, Lcom/google/common/hash/BloomFilterStrategies$BitArray;

    .line 114
    .local v0, "bitArray":Lcom/google/common/hash/BloomFilterStrategies$BitArray;
    iget-object v1, p0, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->data:[J

    iget-object v2, v0, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->data:[J

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v1

    return v1

    .line 117
    .end local v0    # "bitArray":Lcom/google/common/hash/BloomFilterStrategies$BitArray;
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method get(I)Z
    .registers 7
    .param p1, "index"    # I

    .line 99
    iget-object v0, p0, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->data:[J

    shr-int/lit8 v1, p1, 0x6

    aget-wide v1, v0, v1

    const-wide/16 v3, 0x1

    shl-long/2addr v3, p1

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 121
    iget-object v0, p0, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->data:[J

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([J)I

    move-result v0

    return v0
.end method

.method set(I)Z
    .registers 9
    .param p1, "index"    # I

    .line 93
    invoke-virtual {p0, p1}, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->get(I)Z

    move-result v0

    .line 94
    .local v0, "wasSet":Z
    iget-object v1, p0, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->data:[J

    shr-int/lit8 v2, p1, 0x6

    aget-wide v3, v1, v2

    const-wide/16 v5, 0x1

    shl-long/2addr v5, p1

    or-long/2addr v3, v5

    aput-wide v3, v1, v2

    .line 95
    xor-int/lit8 v1, v0, 0x1

    return v1
.end method

.method size()I
    .registers 2

    .line 104
    iget-object v0, p0, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->data:[J

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x40

    return v0
.end method
