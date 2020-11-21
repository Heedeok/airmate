.class public Lorg/apache/commons/codec/binary/BinaryCodec;
.super Ljava/lang/Object;
.source "BinaryCodec.java"

# interfaces
.implements Lorg/apache/commons/codec/BinaryDecoder;
.implements Lorg/apache/commons/codec/BinaryEncoder;


# static fields
.field private static final BITS:[I

.field private static final BIT_0:I = 0x1

.field private static final BIT_1:I = 0x2

.field private static final BIT_2:I = 0x4

.field private static final BIT_3:I = 0x8

.field private static final BIT_4:I = 0x10

.field private static final BIT_5:I = 0x20

.field private static final BIT_6:I = 0x40

.field private static final BIT_7:I = 0x80

.field private static final EMPTY_BYTE_ARRAY:[B

.field private static final EMPTY_CHAR_ARRAY:[C


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 41
    const/4 v0, 0x0

    new-array v1, v0, [C

    sput-object v1, Lorg/apache/commons/codec/binary/BinaryCodec;->EMPTY_CHAR_ARRAY:[C

    .line 44
    new-array v0, v0, [B

    sput-object v0, Lorg/apache/commons/codec/binary/BinaryCodec;->EMPTY_BYTE_ARRAY:[B

    .line 70
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_14

    sput-object v0, Lorg/apache/commons/codec/binary/BinaryCodec;->BITS:[I

    return-void

    nop

    :array_14
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromAscii([B)[B
    .registers 7
    .param p0, "ascii"    # [B

    .line 194
    if-eqz p0, :cond_33

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_33

    .line 198
    :cond_6
    array-length v0, p0

    shr-int/lit8 v0, v0, 0x3

    new-array v0, v0, [B

    .line 203
    .local v0, "l_raw":[B
    const/4 v1, 0x0

    .local v1, "ii":I
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    .local v2, "jj":I
    :goto_f
    array-length v3, v0

    if-ge v1, v3, :cond_32

    .line 204
    const/4 v3, 0x0

    .local v3, "bits":I
    :goto_13
    sget-object v4, Lorg/apache/commons/codec/binary/BinaryCodec;->BITS:[I

    array-length v4, v4

    if-ge v3, v4, :cond_2d

    .line 205
    sub-int v4, v2, v3

    aget-byte v4, p0, v4

    const/16 v5, 0x31

    if-ne v4, v5, :cond_2a

    .line 206
    aget-byte v4, v0, v1

    sget-object v5, Lorg/apache/commons/codec/binary/BinaryCodec;->BITS:[I

    aget v5, v5, v3

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 204
    :cond_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 203
    .end local v3    # "bits":I
    :cond_2d
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, -0x8

    goto :goto_f

    .line 210
    .end local v1    # "ii":I
    .end local v2    # "jj":I
    :cond_32
    return-object v0

    .line 195
    .end local v0    # "l_raw":[B
    :cond_33
    :goto_33
    sget-object v0, Lorg/apache/commons/codec/binary/BinaryCodec;->EMPTY_BYTE_ARRAY:[B

    return-object v0
.end method

.method public static fromAscii([C)[B
    .registers 7
    .param p0, "ascii"    # [C

    .line 167
    if-eqz p0, :cond_33

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_33

    .line 171
    :cond_6
    array-length v0, p0

    shr-int/lit8 v0, v0, 0x3

    new-array v0, v0, [B

    .line 176
    .local v0, "l_raw":[B
    const/4 v1, 0x0

    .local v1, "ii":I
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    .local v2, "jj":I
    :goto_f
    array-length v3, v0

    if-ge v1, v3, :cond_32

    .line 177
    const/4 v3, 0x0

    .local v3, "bits":I
    :goto_13
    sget-object v4, Lorg/apache/commons/codec/binary/BinaryCodec;->BITS:[I

    array-length v4, v4

    if-ge v3, v4, :cond_2d

    .line 178
    sub-int v4, v2, v3

    aget-char v4, p0, v4

    const/16 v5, 0x31

    if-ne v4, v5, :cond_2a

    .line 179
    aget-byte v4, v0, v1

    sget-object v5, Lorg/apache/commons/codec/binary/BinaryCodec;->BITS:[I

    aget v5, v5, v3

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 177
    :cond_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 176
    .end local v3    # "bits":I
    :cond_2d
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, -0x8

    goto :goto_f

    .line 183
    .end local v1    # "ii":I
    .end local v2    # "jj":I
    :cond_32
    return-object v0

    .line 168
    .end local v0    # "l_raw":[B
    :cond_33
    :goto_33
    sget-object v0, Lorg/apache/commons/codec/binary/BinaryCodec;->EMPTY_BYTE_ARRAY:[B

    return-object v0
.end method

.method public static toAsciiBytes([B)[B
    .registers 7
    .param p0, "raw"    # [B

    .line 223
    if-eqz p0, :cond_37

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_37

    .line 227
    :cond_6
    array-length v0, p0

    shl-int/lit8 v0, v0, 0x3

    new-array v0, v0, [B

    .line 232
    .local v0, "l_ascii":[B
    const/4 v1, 0x0

    .local v1, "ii":I
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    .local v2, "jj":I
    :goto_f
    array-length v3, p0

    if-ge v1, v3, :cond_36

    .line 233
    const/4 v3, 0x0

    .local v3, "bits":I
    :goto_13
    sget-object v4, Lorg/apache/commons/codec/binary/BinaryCodec;->BITS:[I

    array-length v4, v4

    if-ge v3, v4, :cond_31

    .line 234
    aget-byte v4, p0, v1

    sget-object v5, Lorg/apache/commons/codec/binary/BinaryCodec;->BITS:[I

    aget v5, v5, v3

    and-int/2addr v4, v5

    if-nez v4, :cond_28

    .line 235
    sub-int v4, v2, v3

    const/16 v5, 0x30

    aput-byte v5, v0, v4

    goto :goto_2e

    .line 237
    :cond_28
    sub-int v4, v2, v3

    const/16 v5, 0x31

    aput-byte v5, v0, v4

    .line 233
    :goto_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 232
    .end local v3    # "bits":I
    :cond_31
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, -0x8

    goto :goto_f

    .line 241
    .end local v1    # "ii":I
    .end local v2    # "jj":I
    :cond_36
    return-object v0

    .line 224
    .end local v0    # "l_ascii":[B
    :cond_37
    :goto_37
    sget-object v0, Lorg/apache/commons/codec/binary/BinaryCodec;->EMPTY_BYTE_ARRAY:[B

    return-object v0
.end method

.method public static toAsciiChars([B)[C
    .registers 7
    .param p0, "raw"    # [B

    .line 253
    if-eqz p0, :cond_37

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_37

    .line 257
    :cond_6
    array-length v0, p0

    shl-int/lit8 v0, v0, 0x3

    new-array v0, v0, [C

    .line 262
    .local v0, "l_ascii":[C
    const/4 v1, 0x0

    .local v1, "ii":I
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    .local v2, "jj":I
    :goto_f
    array-length v3, p0

    if-ge v1, v3, :cond_36

    .line 263
    const/4 v3, 0x0

    .local v3, "bits":I
    :goto_13
    sget-object v4, Lorg/apache/commons/codec/binary/BinaryCodec;->BITS:[I

    array-length v4, v4

    if-ge v3, v4, :cond_31

    .line 264
    aget-byte v4, p0, v1

    sget-object v5, Lorg/apache/commons/codec/binary/BinaryCodec;->BITS:[I

    aget v5, v5, v3

    and-int/2addr v4, v5

    if-nez v4, :cond_28

    .line 265
    sub-int v4, v2, v3

    const/16 v5, 0x30

    aput-char v5, v0, v4

    goto :goto_2e

    .line 267
    :cond_28
    sub-int v4, v2, v3

    const/16 v5, 0x31

    aput-char v5, v0, v4

    .line 263
    :goto_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 262
    .end local v3    # "bits":I
    :cond_31
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, -0x8

    goto :goto_f

    .line 271
    .end local v1    # "ii":I
    .end local v2    # "jj":I
    :cond_36
    return-object v0

    .line 254
    .end local v0    # "l_ascii":[C
    :cond_37
    :goto_37
    sget-object v0, Lorg/apache/commons/codec/binary/BinaryCodec;->EMPTY_CHAR_ARRAY:[C

    return-object v0
.end method

.method public static toAsciiString([B)Ljava/lang/String;
    .registers 3
    .param p0, "raw"    # [B

    .line 283
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lorg/apache/commons/codec/binary/BinaryCodec;->toAsciiChars([B)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method


# virtual methods
.method public decode(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "ascii"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/DecoderException;
        }
    .end annotation

    .line 112
    if-nez p1, :cond_5

    .line 113
    sget-object v0, Lorg/apache/commons/codec/binary/BinaryCodec;->EMPTY_BYTE_ARRAY:[B

    return-object v0

    .line 115
    :cond_5
    instance-of v0, p1, [B

    if-eqz v0, :cond_11

    .line 116
    move-object v0, p1

    check-cast v0, [B

    invoke-static {v0}, Lorg/apache/commons/codec/binary/BinaryCodec;->fromAscii([B)[B

    move-result-object v0

    return-object v0

    .line 118
    :cond_11
    instance-of v0, p1, [C

    if-eqz v0, :cond_1d

    .line 119
    move-object v0, p1

    check-cast v0, [C

    invoke-static {v0}, Lorg/apache/commons/codec/binary/BinaryCodec;->fromAscii([C)[B

    move-result-object v0

    return-object v0

    .line 121
    :cond_1d
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2d

    .line 122
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/binary/BinaryCodec;->fromAscii([C)[B

    move-result-object v0

    return-object v0

    .line 124
    :cond_2d
    new-instance v0, Lorg/apache/commons/codec/DecoderException;

    const-string v1, "argument not a byte array"

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public decode([B)[B
    .registers 3
    .param p1, "ascii"    # [B

    .line 136
    invoke-static {p1}, Lorg/apache/commons/codec/binary/BinaryCodec;->fromAscii([B)[B

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "raw"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    .line 95
    instance-of v0, p1, [B

    if-eqz v0, :cond_c

    .line 98
    move-object v0, p1

    check-cast v0, [B

    invoke-static {v0}, Lorg/apache/commons/codec/binary/BinaryCodec;->toAsciiChars([B)[C

    move-result-object v0

    return-object v0

    .line 96
    :cond_c
    new-instance v0, Lorg/apache/commons/codec/EncoderException;

    const-string v1, "argument not a byte array"

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encode([B)[B
    .registers 3
    .param p1, "raw"    # [B

    .line 81
    invoke-static {p1}, Lorg/apache/commons/codec/binary/BinaryCodec;->toAsciiBytes([B)[B

    move-result-object v0

    return-object v0
.end method

.method public toByteArray(Ljava/lang/String;)[B
    .registers 3
    .param p1, "ascii"    # Ljava/lang/String;

    .line 148
    if-nez p1, :cond_5

    .line 149
    sget-object v0, Lorg/apache/commons/codec/binary/BinaryCodec;->EMPTY_BYTE_ARRAY:[B

    return-object v0

    .line 151
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/binary/BinaryCodec;->fromAscii([C)[B

    move-result-object v0

    return-object v0
.end method
