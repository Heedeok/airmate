.class public Lorg/xbill/DNS/utils/base16;
.super Ljava/lang/Object;
.source "base16.java"


# static fields
.field private static final Base16:Ljava/lang/String; = "0123456789ABCDEF"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromString(Ljava/lang/String;)[B
    .registers 9
    .param p0, "str"    # Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 48
    .local v0, "bs":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 49
    .local v1, "raw":[B
    const/4 v2, 0x0

    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b
    array-length v4, v1

    if-ge v3, v4, :cond_1f

    .line 50
    aget-byte v4, v1, v3

    int-to-char v4, v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_1c

    .line 51
    aget-byte v4, v1, v3

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 49
    :cond_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 53
    .end local v3    # "i":I
    :cond_1f
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 54
    .local v3, "in":[B
    array-length v4, v3

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2a

    .line 55
    const/4 v2, 0x0

    return-object v2

    .line 58
    :cond_2a
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 59
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 61
    .local v4, "ds":Ljava/io/DataOutputStream;
    nop

    .local v2, "i":I
    :goto_33
    array-length v5, v3

    if-ge v2, v5, :cond_5f

    .line 62
    const-string v5, "0123456789ABCDEF"

    aget-byte v6, v3, v2

    int-to-char v6, v6

    invoke-static {v6}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    int-to-byte v5, v5

    .line 63
    .local v5, "high":B
    const-string v6, "0123456789ABCDEF"

    add-int/lit8 v7, v2, 0x1

    aget-byte v7, v3, v7

    int-to-char v7, v7

    invoke-static {v7}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    int-to-byte v6, v6

    .line 65
    .local v6, "low":B
    shl-int/lit8 v7, v5, 0x4

    add-int/2addr v7, v6

    :try_start_57
    invoke-virtual {v4, v7}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_5b

    .line 68
    goto :goto_5c

    .line 67
    :catch_5b
    move-exception v7

    .line 61
    .end local v5    # "high":B
    .end local v6    # "low":B
    :goto_5c
    add-int/lit8 v2, v2, 0x2

    goto :goto_33

    .line 70
    .end local v2    # "i":I
    :cond_5f
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method

.method public static toString([B)Ljava/lang/String;
    .registers 7
    .param p0, "b"    # [B

    .line 28
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 30
    .local v0, "os":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v2, p0

    if-ge v1, v2, :cond_29

    .line 31
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    int-to-short v2, v2

    .line 32
    .local v2, "value":S
    shr-int/lit8 v3, v2, 0x4

    int-to-byte v3, v3

    .line 33
    .local v3, "high":B
    and-int/lit8 v4, v2, 0xf

    int-to-byte v4, v4

    .line 34
    .local v4, "low":B
    const-string v5, "0123456789ABCDEF"

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 35
    const-string v5, "0123456789ABCDEF"

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 30
    .end local v2    # "value":S
    .end local v3    # "high":B
    .end local v4    # "low":B
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 37
    .end local v1    # "i":I
    :cond_29
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method
