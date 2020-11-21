.class final Lcom/google/common/hash/HashCodes$BytesHashCode;
.super Lcom/google/common/hash/HashCode;
.source "HashCodes.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/HashCodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BytesHashCode"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final bytes:[B


# direct methods
.method constructor <init>([B)V
    .registers 2
    .param p1, "bytes"    # [B

    .line 135
    invoke-direct {p0}, Lcom/google/common/hash/HashCode;-><init>()V

    .line 136
    iput-object p1, p0, Lcom/google/common/hash/HashCodes$BytesHashCode;->bytes:[B

    .line 137
    return-void
.end method


# virtual methods
.method public asBytes()[B
    .registers 2

    .line 144
    iget-object v0, p0, Lcom/google/common/hash/HashCodes$BytesHashCode;->bytes:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public asInt()I
    .registers 4

    .line 148
    iget-object v0, p0, Lcom/google/common/hash/HashCodes$BytesHashCode;->bytes:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lcom/google/common/hash/HashCodes$BytesHashCode;->bytes:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/common/hash/HashCodes$BytesHashCode;->bytes:[B

    const/4 v2, 0x2

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/common/hash/HashCodes$BytesHashCode;->bytes:[B

    const/4 v2, 0x3

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public asLong()J
    .registers 9

    .line 155
    iget-object v0, p0, Lcom/google/common/hash/HashCodes$BytesHashCode;->bytes:[B

    array-length v0, v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_5d

    .line 159
    iget-object v0, p0, Lcom/google/common/hash/HashCodes$BytesHashCode;->bytes:[B

    const/4 v2, 0x0

    aget-byte v0, v0, v2

    int-to-long v2, v0

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    iget-object v0, p0, Lcom/google/common/hash/HashCodes$BytesHashCode;->bytes:[B

    const/4 v6, 0x1

    aget-byte v0, v0, v6

    int-to-long v6, v0

    and-long/2addr v6, v4

    shl-long v0, v6, v1

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/common/hash/HashCodes$BytesHashCode;->bytes:[B

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v4

    const/16 v6, 0x10

    shl-long/2addr v2, v6

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/common/hash/HashCodes$BytesHashCode;->bytes:[B

    const/4 v3, 0x3

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v4

    const/16 v6, 0x18

    shl-long/2addr v2, v6

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/common/hash/HashCodes$BytesHashCode;->bytes:[B

    const/4 v3, 0x4

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v4

    const/16 v6, 0x20

    shl-long/2addr v2, v6

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/common/hash/HashCodes$BytesHashCode;->bytes:[B

    const/4 v3, 0x5

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v4

    const/16 v6, 0x28

    shl-long/2addr v2, v6

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/common/hash/HashCodes$BytesHashCode;->bytes:[B

    const/4 v3, 0x6

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v4

    const/16 v6, 0x30

    shl-long/2addr v2, v6

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/common/hash/HashCodes$BytesHashCode;->bytes:[B

    const/4 v3, 0x7

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v4

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0

    .line 157
    :cond_5d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not enough bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bits()I
    .registers 2

    .line 140
    iget-object v0, p0, Lcom/google/common/hash/HashCodes$BytesHashCode;->bytes:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x8

    return v0
.end method
