.class public Lorg/apache/commons/codec/binary/Hex;
.super Ljava/lang/Object;
.source "Hex.java"

# interfaces
.implements Lorg/apache/commons/codec/BinaryEncoder;
.implements Lorg/apache/commons/codec/BinaryDecoder;


# static fields
.field private static final DIGITS:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 36
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lorg/apache/commons/codec/binary/Hex;->DIGITS:[C

    return-void

    :array_a
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeHex([C)[B
    .registers 7
    .param p0, "data"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/DecoderException;
        }
    .end annotation

    .line 56
    array-length v0, p0

    .line 58
    .local v0, "len":I
    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_29

    .line 62
    shr-int/lit8 v1, v0, 0x1

    new-array v1, v1, [B

    .line 65
    .local v1, "out":[B
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_b
    if-ge v3, v0, :cond_28

    .line 66
    aget-char v4, p0, v3

    invoke-static {v4, v3}, Lorg/apache/commons/codec/binary/Hex;->toDigit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    .line 67
    .local v4, "f":I
    add-int/lit8 v3, v3, 0x1

    .line 68
    aget-char v5, p0, v3

    invoke-static {v5, v3}, Lorg/apache/commons/codec/binary/Hex;->toDigit(CI)I

    move-result v5

    or-int/2addr v4, v5

    .line 69
    add-int/lit8 v3, v3, 0x1

    .line 70
    and-int/lit16 v5, v4, 0xff

    int-to-byte v5, v5

    aput-byte v5, v1, v2

    .line 65
    .end local v4    # "f":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 73
    .end local v2    # "i":I
    .end local v3    # "j":I
    :cond_28
    return-object v1

    .line 59
    .end local v1    # "out":[B
    :cond_29
    new-instance v1, Lorg/apache/commons/codec/DecoderException;

    const-string v2, "Odd number of characters."

    invoke-direct {v1, v2}, Lorg/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static encodeHex([B)[C
    .registers 8
    .param p0, "data"    # [B

    .line 103
    array-length v0, p0

    .line 105
    .local v0, "l":I
    shl-int/lit8 v1, v0, 0x1

    new-array v1, v1, [C

    .line 108
    .local v1, "out":[C
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_7
    if-ge v2, v0, :cond_26

    .line 109
    add-int/lit8 v4, v3, 0x1

    .local v4, "j":I
    sget-object v5, Lorg/apache/commons/codec/binary/Hex;->DIGITS:[C

    aget-byte v6, p0, v2

    and-int/lit16 v6, v6, 0xf0

    ushr-int/lit8 v6, v6, 0x4

    aget-char v5, v5, v6

    aput-char v5, v1, v3

    .line 110
    .end local v3    # "j":I
    add-int/lit8 v3, v4, 0x1

    .restart local v3    # "j":I
    sget-object v5, Lorg/apache/commons/codec/binary/Hex;->DIGITS:[C

    aget-byte v6, p0, v2

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    aput-char v5, v1, v4

    .line 108
    .end local v4    # "j":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 113
    .end local v2    # "i":I
    .end local v3    # "j":I
    :cond_26
    return-object v1
.end method

.method protected static toDigit(CI)I
    .registers 6
    .param p0, "ch"    # C
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/DecoderException;
        }
    .end annotation

    .line 85
    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 86
    .local v0, "digit":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    .line 89
    return v0

    .line 87
    :cond_a
    new-instance v1, Lorg/apache/commons/codec/DecoderException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Illegal hexadecimal charcter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v3, " at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public decode(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/DecoderException;
        }
    .end annotation

    .line 150
    :try_start_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_c

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    goto :goto_f

    :cond_c
    move-object v0, p1

    check-cast v0, [C

    .line 151
    .local v0, "charArray":[C
    :goto_f
    invoke-static {v0}, Lorg/apache/commons/codec/binary/Hex;->decodeHex([C)[B

    move-result-object v1
    :try_end_13
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_13} :catch_14

    return-object v1

    .line 152
    .end local v0    # "charArray":[C
    :catch_14
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v1, Lorg/apache/commons/codec/DecoderException;

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public decode([B)[B
    .registers 3
    .param p1, "array"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/DecoderException;
        }
    .end annotation

    .line 131
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/binary/Hex;->decodeHex([C)[B

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    .line 184
    :try_start_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_c

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_f

    :cond_c
    move-object v0, p1

    check-cast v0, [B

    .line 185
    .local v0, "byteArray":[B
    :goto_f
    invoke-static {v0}, Lorg/apache/commons/codec/binary/Hex;->encodeHex([B)[C

    move-result-object v1
    :try_end_13
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_13} :catch_14

    return-object v1

    .line 186
    .end local v0    # "byteArray":[B
    :catch_14
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v1, Lorg/apache/commons/codec/EncoderException;

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public encode([B)[B
    .registers 4
    .param p1, "array"    # [B

    .line 168
    new-instance v0, Ljava/lang/String;

    invoke-static {p1}, Lorg/apache/commons/codec/binary/Hex;->encodeHex([B)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method
