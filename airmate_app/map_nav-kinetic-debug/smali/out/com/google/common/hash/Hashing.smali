.class public final Lcom/google/common/hash/Hashing;
.super Ljava/lang/Object;
.source "Hashing.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;
    }
.end annotation


# static fields
.field private static final GOOD_FAST_HASH_SEED:I

.field private static final MD5:Lcom/google/common/hash/HashFunction;

.field private static final MURMUR3_128:Lcom/google/common/hash/Murmur3_128HashFunction;

.field private static final MURMUR3_32:Lcom/google/common/hash/Murmur3_32HashFunction;

.field private static final SHA_1:Lcom/google/common/hash/HashFunction;

.field private static final SHA_256:Lcom/google/common/hash/HashFunction;

.field private static final SHA_512:Lcom/google/common/hash/HashFunction;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/google/common/hash/Hashing;->GOOD_FAST_HASH_SEED:I

    .line 94
    new-instance v0, Lcom/google/common/hash/Murmur3_32HashFunction;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/hash/Murmur3_32HashFunction;-><init>(I)V

    sput-object v0, Lcom/google/common/hash/Hashing;->MURMUR3_32:Lcom/google/common/hash/Murmur3_32HashFunction;

    .line 116
    new-instance v0, Lcom/google/common/hash/Murmur3_128HashFunction;

    invoke-direct {v0, v1}, Lcom/google/common/hash/Murmur3_128HashFunction;-><init>(I)V

    sput-object v0, Lcom/google/common/hash/Hashing;->MURMUR3_128:Lcom/google/common/hash/Murmur3_128HashFunction;

    .line 126
    new-instance v0, Lcom/google/common/hash/MessageDigestHashFunction;

    const-string v1, "MD5"

    invoke-direct {v0, v1}, Lcom/google/common/hash/MessageDigestHashFunction;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/hash/Hashing;->MD5:Lcom/google/common/hash/HashFunction;

    .line 136
    new-instance v0, Lcom/google/common/hash/MessageDigestHashFunction;

    const-string v1, "SHA-1"

    invoke-direct {v0, v1}, Lcom/google/common/hash/MessageDigestHashFunction;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/hash/Hashing;->SHA_1:Lcom/google/common/hash/HashFunction;

    .line 146
    new-instance v0, Lcom/google/common/hash/MessageDigestHashFunction;

    const-string v1, "SHA-256"

    invoke-direct {v0, v1}, Lcom/google/common/hash/MessageDigestHashFunction;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/hash/Hashing;->SHA_256:Lcom/google/common/hash/HashFunction;

    .line 156
    new-instance v0, Lcom/google/common/hash/MessageDigestHashFunction;

    const-string v1, "SHA-512"

    invoke-direct {v0, v1}, Lcom/google/common/hash/MessageDigestHashFunction;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/hash/Hashing;->SHA_512:Lcom/google/common/hash/HashFunction;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkPositiveAndMakeMultipleOf32(I)I
    .registers 3
    .param p0, "bits"    # I

    .line 274
    if-lez p0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    const-string v1, "Number of bits must be positive"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 275
    add-int/lit8 v0, p0, 0x1f

    and-int/lit8 v0, v0, -0x20

    return v0
.end method

.method public static combineOrdered(Ljava/lang/Iterable;)Lcom/google/common/hash/HashCode;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/common/hash/HashCode;",
            ">;)",
            "Lcom/google/common/hash/HashCode;"
        }
    .end annotation

    .line 230
    .local p0, "hashCodes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/common/hash/HashCode;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 231
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/common/hash/HashCode;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "Must be at least 1 hash code to combine."

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 232
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/hash/HashCode;

    invoke-virtual {v1}, Lcom/google/common/hash/HashCode;->bits()I

    move-result v1

    .line 233
    .local v1, "bits":I
    div-int/lit8 v2, v1, 0x8

    new-array v2, v2, [B

    .line 234
    .local v2, "resultBytes":[B
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/common/hash/HashCode;

    .line 235
    .local v4, "hashCode":Lcom/google/common/hash/HashCode;
    invoke-virtual {v4}, Lcom/google/common/hash/HashCode;->asBytes()[B

    move-result-object v5

    .line 236
    .local v5, "nextBytes":[B
    array-length v6, v5

    array-length v7, v2

    const/4 v8, 0x0

    if-ne v6, v7, :cond_36

    const/4 v6, 0x1

    goto :goto_37

    :cond_36
    const/4 v6, 0x0

    :goto_37
    const-string v7, "All hashcodes must have the same bit length."

    invoke-static {v6, v7}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 238
    nop

    .local v8, "i":I
    :goto_3d
    move v6, v8

    .end local v8    # "i":I
    .local v6, "i":I
    array-length v7, v5

    if-ge v6, v7, :cond_4e

    .line 239
    aget-byte v7, v2, v6

    mul-int/lit8 v7, v7, 0x25

    aget-byte v8, v5, v6

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v2, v6

    .line 238
    add-int/lit8 v8, v6, 0x1

    goto :goto_3d

    .line 241
    .end local v4    # "hashCode":Lcom/google/common/hash/HashCode;
    .end local v5    # "nextBytes":[B
    .end local v6    # "i":I
    :cond_4e
    goto :goto_1f

    .line 242
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_4f
    invoke-static {v2}, Lcom/google/common/hash/HashCodes;->fromBytesNoCopy([B)Lcom/google/common/hash/HashCode;

    move-result-object v3

    return-object v3
.end method

.method public static combineUnordered(Ljava/lang/Iterable;)Lcom/google/common/hash/HashCode;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/common/hash/HashCode;",
            ">;)",
            "Lcom/google/common/hash/HashCode;"
        }
    .end annotation

    .line 256
    .local p0, "hashCodes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/common/hash/HashCode;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 257
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/common/hash/HashCode;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "Must be at least 1 hash code to combine."

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 258
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/hash/HashCode;

    invoke-virtual {v1}, Lcom/google/common/hash/HashCode;->bits()I

    move-result v1

    div-int/lit8 v1, v1, 0x8

    new-array v1, v1, [B

    .line 259
    .local v1, "resultBytes":[B
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/hash/HashCode;

    .line 260
    .local v3, "hashCode":Lcom/google/common/hash/HashCode;
    invoke-virtual {v3}, Lcom/google/common/hash/HashCode;->asBytes()[B

    move-result-object v4

    .line 261
    .local v4, "nextBytes":[B
    array-length v5, v4

    array-length v6, v1

    const/4 v7, 0x0

    if-ne v5, v6, :cond_36

    const/4 v5, 0x1

    goto :goto_37

    :cond_36
    const/4 v5, 0x0

    :goto_37
    const-string v6, "All hashcodes must have the same bit length."

    invoke-static {v5, v6}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 263
    nop

    .local v7, "i":I
    :goto_3d
    move v5, v7

    .end local v7    # "i":I
    .local v5, "i":I
    array-length v6, v4

    if-ge v5, v6, :cond_4c

    .line 264
    aget-byte v6, v1, v5

    aget-byte v7, v4, v5

    add-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 263
    add-int/lit8 v7, v5, 0x1

    goto :goto_3d

    .line 266
    .end local v3    # "hashCode":Lcom/google/common/hash/HashCode;
    .end local v4    # "nextBytes":[B
    .end local v5    # "i":I
    :cond_4c
    goto :goto_1f

    .line 267
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_4d
    invoke-static {v1}, Lcom/google/common/hash/HashCodes;->fromBytesNoCopy([B)Lcom/google/common/hash/HashCode;

    move-result-object v2

    return-object v2
.end method

.method public static consistentHash(JI)I
    .registers 11
    .param p0, "input"    # J
    .param p2, "buckets"    # I

    .line 198
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p2, :cond_6

    const/4 v2, 0x1

    goto :goto_7

    :cond_6
    const/4 v2, 0x0

    :goto_7
    const-string v3, "buckets must be positive: %s"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v2, v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 199
    move-wide v2, p0

    .line 200
    .local v2, "h":J
    nop

    .line 207
    .local v0, "candidate":I
    :goto_16
    const-wide v4, 0x27bb2ee687b0b0fdL    # 2.694898184339827E-117

    mul-long v4, v4, v2

    const-wide/16 v6, 0x1

    add-long v2, v4, v6

    .line 208
    const-wide/high16 v4, 0x41e0000000000000L    # 2.147483648E9

    const/16 v6, 0x21

    ushr-long v6, v2, v6

    long-to-int v6, v6

    add-int/2addr v6, v1

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v6

    .line 209
    .local v4, "inv":D
    add-int/lit8 v6, v0, 0x1

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v4

    double-to-int v6, v6

    .line 211
    .local v6, "next":I
    if-ltz v6, :cond_3d

    if-ge v6, p2, :cond_3d

    .line 212
    move v0, v6

    .line 216
    .end local v4    # "inv":D
    goto :goto_16

    .line 214
    .restart local v4    # "inv":D
    :cond_3d
    return v0
.end method

.method public static consistentHash(Lcom/google/common/hash/HashCode;I)I
    .registers 4
    .param p0, "hashCode"    # Lcom/google/common/hash/HashCode;
    .param p1, "buckets"    # I

    .line 181
    invoke-static {p0}, Lcom/google/common/hash/Hashing;->padToLong(Lcom/google/common/hash/HashCode;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/common/hash/Hashing;->consistentHash(JI)I

    move-result v0

    return v0
.end method

.method public static goodFastHash(I)Lcom/google/common/hash/HashFunction;
    .registers 7
    .param p0, "minimumBits"    # I

    .line 57
    invoke-static {p0}, Lcom/google/common/hash/Hashing;->checkPositiveAndMakeMultipleOf32(I)I

    move-result v0

    .line 59
    .local v0, "bits":I
    const/16 v1, 0x20

    if-ne v0, v1, :cond_f

    .line 60
    sget v1, Lcom/google/common/hash/Hashing;->GOOD_FAST_HASH_SEED:I

    invoke-static {v1}, Lcom/google/common/hash/Hashing;->murmur3_32(I)Lcom/google/common/hash/HashFunction;

    move-result-object v1

    return-object v1

    .line 61
    :cond_f
    const/16 v1, 0x80

    if-gt v0, v1, :cond_1a

    .line 62
    sget v1, Lcom/google/common/hash/Hashing;->GOOD_FAST_HASH_SEED:I

    invoke-static {v1}, Lcom/google/common/hash/Hashing;->murmur3_128(I)Lcom/google/common/hash/HashFunction;

    move-result-object v1

    return-object v1

    .line 65
    :cond_1a
    add-int/lit8 v2, v0, 0x7f

    div-int/2addr v2, v1

    .line 66
    .local v2, "hashFunctionsNeeded":I
    new-array v1, v2, [Lcom/google/common/hash/HashFunction;

    .line 67
    .local v1, "hashFunctions":[Lcom/google/common/hash/HashFunction;
    sget v3, Lcom/google/common/hash/Hashing;->GOOD_FAST_HASH_SEED:I

    .line 68
    .local v3, "seed":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_22
    if-ge v4, v2, :cond_31

    .line 69
    invoke-static {v3}, Lcom/google/common/hash/Hashing;->murmur3_128(I)Lcom/google/common/hash/HashFunction;

    move-result-object v5

    aput-object v5, v1, v4

    .line 70
    const v5, 0x596f0ddf

    add-int/2addr v3, v5

    .line 68
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    .line 72
    .end local v4    # "i":I
    :cond_31
    new-instance v4, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;

    invoke-direct {v4, v1}, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;-><init>([Lcom/google/common/hash/HashFunction;)V

    return-object v4
.end method

.method public static md5()Lcom/google/common/hash/HashFunction;
    .registers 1

    .line 123
    sget-object v0, Lcom/google/common/hash/Hashing;->MD5:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static murmur3_128()Lcom/google/common/hash/HashFunction;
    .registers 1

    .line 113
    sget-object v0, Lcom/google/common/hash/Hashing;->MURMUR3_128:Lcom/google/common/hash/Murmur3_128HashFunction;

    return-object v0
.end method

.method public static murmur3_128(I)Lcom/google/common/hash/HashFunction;
    .registers 2
    .param p0, "seed"    # I

    .line 103
    new-instance v0, Lcom/google/common/hash/Murmur3_128HashFunction;

    invoke-direct {v0, p0}, Lcom/google/common/hash/Murmur3_128HashFunction;-><init>(I)V

    return-object v0
.end method

.method public static murmur3_32()Lcom/google/common/hash/HashFunction;
    .registers 1

    .line 91
    sget-object v0, Lcom/google/common/hash/Hashing;->MURMUR3_32:Lcom/google/common/hash/Murmur3_32HashFunction;

    return-object v0
.end method

.method public static murmur3_32(I)Lcom/google/common/hash/HashFunction;
    .registers 2
    .param p0, "seed"    # I

    .line 82
    new-instance v0, Lcom/google/common/hash/Murmur3_32HashFunction;

    invoke-direct {v0, p0}, Lcom/google/common/hash/Murmur3_32HashFunction;-><init>(I)V

    return-object v0
.end method

.method public static padToLong(Lcom/google/common/hash/HashCode;)J
    .registers 3
    .param p0, "hashCode"    # Lcom/google/common/hash/HashCode;

    .line 164
    invoke-virtual {p0}, Lcom/google/common/hash/HashCode;->bits()I

    move-result v0

    const/16 v1, 0x40

    if-ge v0, v1, :cond_11

    invoke-virtual {p0}, Lcom/google/common/hash/HashCode;->asInt()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedInts;->toLong(I)J

    move-result-wide v0

    goto :goto_15

    :cond_11
    invoke-virtual {p0}, Lcom/google/common/hash/HashCode;->asLong()J

    move-result-wide v0

    :goto_15
    return-wide v0
.end method

.method public static sha1()Lcom/google/common/hash/HashFunction;
    .registers 1

    .line 133
    sget-object v0, Lcom/google/common/hash/Hashing;->SHA_1:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static sha256()Lcom/google/common/hash/HashFunction;
    .registers 1

    .line 143
    sget-object v0, Lcom/google/common/hash/Hashing;->SHA_256:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static sha512()Lcom/google/common/hash/HashFunction;
    .registers 1

    .line 153
    sget-object v0, Lcom/google/common/hash/Hashing;->SHA_512:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method
