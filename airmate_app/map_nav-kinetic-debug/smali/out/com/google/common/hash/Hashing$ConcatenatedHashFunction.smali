.class final Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;
.super Lcom/google/common/hash/AbstractCompositeHashFunction;
.source "Hashing.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/Hashing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ConcatenatedHashFunction"
.end annotation


# instance fields
.field private final bits:I


# direct methods
.method varargs constructor <init>([Lcom/google/common/hash/HashFunction;)V
    .registers 8
    .param p1, "functions"    # [Lcom/google/common/hash/HashFunction;

    .line 284
    invoke-direct {p0, p1}, Lcom/google/common/hash/AbstractCompositeHashFunction;-><init>([Lcom/google/common/hash/HashFunction;)V

    .line 285
    const/4 v0, 0x0

    .line 286
    .local v0, "bitSum":I
    move-object v1, p1

    .local v1, "arr$":[Lcom/google/common/hash/HashFunction;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_7
    if-ge v3, v2, :cond_13

    aget-object v4, v1, v3

    .line 287
    .local v4, "function":Lcom/google/common/hash/HashFunction;
    invoke-interface {v4}, Lcom/google/common/hash/HashFunction;->bits()I

    move-result v5

    add-int/2addr v0, v5

    .line 286
    .end local v4    # "function":Lcom/google/common/hash/HashFunction;
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 289
    .end local v1    # "arr$":[Lcom/google/common/hash/HashFunction;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_13
    iput v0, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->bits:I

    .line 290
    return-void
.end method


# virtual methods
.method public bits()I
    .registers 2

    .line 305
    iget v0, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->bits:I

    return v0
.end method

.method makeHash([Lcom/google/common/hash/Hasher;)Lcom/google/common/hash/HashCode;
    .registers 9
    .param p1, "hashers"    # [Lcom/google/common/hash/Hasher;

    .line 295
    iget v0, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->bits:I

    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    .line 296
    .local v0, "bytes":[B
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 297
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    move-object v2, p1

    .local v2, "arr$":[Lcom/google/common/hash/Hasher;
    array-length v3, v2

    .local v3, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_d
    if-ge v4, v3, :cond_1f

    aget-object v5, v2, v4

    .line 298
    .local v5, "hasher":Lcom/google/common/hash/Hasher;
    invoke-interface {v5}, Lcom/google/common/hash/Hasher;->hash()Lcom/google/common/hash/HashCode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/common/hash/HashCode;->asBytes()[B

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 297
    .end local v5    # "hasher":Lcom/google/common/hash/Hasher;
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 300
    .end local v2    # "arr$":[Lcom/google/common/hash/Hasher;
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    :cond_1f
    invoke-static {v0}, Lcom/google/common/hash/HashCodes;->fromBytesNoCopy([B)Lcom/google/common/hash/HashCode;

    move-result-object v2

    return-object v2
.end method
