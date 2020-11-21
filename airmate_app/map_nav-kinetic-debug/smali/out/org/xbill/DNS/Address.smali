.class public final Lorg/xbill/DNS/Address;
.super Ljava/lang/Object;
.source "Address.java"


# static fields
.field public static final IPv4:I = 0x1

.field public static final IPv6:I = 0x2


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addrFromRecord(Ljava/lang/String;Lorg/xbill/DNS/Record;)Ljava/net/InetAddress;
    .registers 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "r"    # Lorg/xbill/DNS/Record;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 249
    move-object v0, p1

    check-cast v0, Lorg/xbill/DNS/ARecord;

    .line 250
    .local v0, "a":Lorg/xbill/DNS/ARecord;
    invoke-virtual {v0}, Lorg/xbill/DNS/ARecord;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    invoke-static {p0, v1}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    move-result-object v1

    return-object v1
.end method

.method public static addressLength(I)I
    .registers 3
    .param p0, "family"    # I

    .line 365
    const/4 v0, 0x1

    if-ne p0, v0, :cond_5

    .line 366
    const/4 v0, 0x4

    return v0

    .line 367
    :cond_5
    const/4 v0, 0x2

    if-ne p0, v0, :cond_b

    .line 368
    const/16 v0, 0x10

    return v0

    .line 369
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown address family"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static familyOf(Ljava/net/InetAddress;)I
    .registers 3
    .param p0, "address"    # Ljava/net/InetAddress;

    .line 351
    instance-of v0, p0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_6

    .line 352
    const/4 v0, 0x1

    return v0

    .line 353
    :cond_6
    instance-of v0, p0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_c

    .line 354
    const/4 v0, 0x2

    return v0

    .line 355
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown address family"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    .registers 6
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 278
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lorg/xbill/DNS/Address;->getByAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 279
    .local v1, "addr":Ljava/net/InetAddress;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/net/InetAddress;

    aput-object v1, v2, v0
    :try_end_a
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_a} :catch_b

    return-object v2

    .line 280
    .end local v1    # "addr":Ljava/net/InetAddress;
    :catch_b
    move-exception v1

    .line 281
    .local v1, "e":Ljava/net/UnknownHostException;
    invoke-static {p0}, Lorg/xbill/DNS/Address;->lookupHostName(Ljava/lang/String;)[Lorg/xbill/DNS/Record;

    move-result-object v2

    .line 282
    .local v2, "records":[Lorg/xbill/DNS/Record;
    array-length v3, v2

    new-array v3, v3, [Ljava/net/InetAddress;

    .line 283
    .local v3, "addrs":[Ljava/net/InetAddress;
    nop

    .local v0, "i":I
    :goto_14
    array-length v4, v2

    if-ge v0, v4, :cond_22

    .line 284
    aget-object v4, v2, v0

    invoke-static {p0, v4}, Lorg/xbill/DNS/Address;->addrFromRecord(Ljava/lang/String;Lorg/xbill/DNS/Record;)Ljava/net/InetAddress;

    move-result-object v4

    aput-object v4, v3, v0

    .line 283
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 285
    .end local v0    # "i":I
    :cond_22
    return-object v3
.end method

.method public static getByAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    .registers 5
    .param p0, "addr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 299
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v0

    .line 300
    .local v0, "bytes":[B
    if-eqz v0, :cond_c

    .line 301
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    return-object v1

    .line 302
    :cond_c
    const/4 v1, 0x2

    invoke-static {p0, v1}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v0

    .line 303
    if-eqz v0, :cond_18

    .line 304
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    return-object v1

    .line 305
    :cond_18
    new-instance v1, Ljava/net/UnknownHostException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Invalid address: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getByAddress(Ljava/lang/String;I)Ljava/net/InetAddress;
    .registers 6
    .param p0, "addr"    # Ljava/lang/String;
    .param p1, "family"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 319
    const/4 v0, 0x1

    if-eq p1, v0, :cond_f

    const/4 v0, 0x2

    if-ne p1, v0, :cond_7

    goto :goto_f

    .line 320
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown address family"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 322
    :cond_f
    :goto_f
    invoke-static {p0, p1}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v0

    .line 323
    .local v0, "bytes":[B
    if-eqz v0, :cond_1a

    .line 324
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    return-object v1

    .line 325
    :cond_1a
    new-instance v1, Ljava/net/UnknownHostException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Invalid address: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    .registers 4
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 262
    :try_start_0
    invoke-static {p0}, Lorg/xbill/DNS/Address;->getByAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 263
    :catch_5
    move-exception v0

    .line 264
    .local v0, "e":Ljava/net/UnknownHostException;
    invoke-static {p0}, Lorg/xbill/DNS/Address;->lookupHostName(Ljava/lang/String;)[Lorg/xbill/DNS/Record;

    move-result-object v1

    .line 265
    .local v1, "records":[Lorg/xbill/DNS/Record;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {p0, v2}, Lorg/xbill/DNS/Address;->addrFromRecord(Ljava/lang/String;Lorg/xbill/DNS/Record;)Ljava/net/InetAddress;

    move-result-object v2

    return-object v2
.end method

.method public static getHostName(Ljava/net/InetAddress;)Ljava/lang/String;
    .registers 5
    .param p0, "addr"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 336
    invoke-static {p0}, Lorg/xbill/DNS/ReverseMap;->fromAddress(Ljava/net/InetAddress;)Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 337
    .local v0, "name":Lorg/xbill/DNS/Name;
    new-instance v1, Lorg/xbill/DNS/Lookup;

    const/16 v2, 0xc

    invoke-direct {v1, v0, v2}, Lorg/xbill/DNS/Lookup;-><init>(Lorg/xbill/DNS/Name;I)V

    invoke-virtual {v1}, Lorg/xbill/DNS/Lookup;->run()[Lorg/xbill/DNS/Record;

    move-result-object v1

    .line 338
    .local v1, "records":[Lorg/xbill/DNS/Record;
    if-eqz v1, :cond_1f

    .line 340
    const/4 v2, 0x0

    aget-object v2, v1, v2

    check-cast v2, Lorg/xbill/DNS/PTRRecord;

    .line 341
    .local v2, "ptr":Lorg/xbill/DNS/PTRRecord;
    invoke-virtual {v2}, Lorg/xbill/DNS/PTRRecord;->getTarget()Lorg/xbill/DNS/Name;

    move-result-object v3

    invoke-virtual {v3}, Lorg/xbill/DNS/Name;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 339
    .end local v2    # "ptr":Lorg/xbill/DNS/PTRRecord;
    :cond_1f
    new-instance v2, Ljava/net/UnknownHostException;

    const-string v3, "unknown address"

    invoke-direct {v2, v3}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static isDottedQuad(Ljava/lang/String;)Z
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .line 209
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v1

    .line 210
    .local v1, "address":[B
    if-eqz v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private static lookupHostName(Ljava/lang/String;)[Lorg/xbill/DNS/Record;
    .registers 4
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 237
    :try_start_0
    new-instance v0, Lorg/xbill/DNS/Lookup;

    invoke-direct {v0, p0}, Lorg/xbill/DNS/Lookup;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/xbill/DNS/Lookup;->run()[Lorg/xbill/DNS/Record;

    move-result-object v0

    .line 238
    .local v0, "records":[Lorg/xbill/DNS/Record;
    if-eqz v0, :cond_c

    .line 240
    return-object v0

    .line 239
    :cond_c
    new-instance v1, Ljava/net/UnknownHostException;

    const-string v2, "unknown host"

    invoke-direct {v1, v2}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_14
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_0 .. :try_end_14} :catch_14

    .line 242
    .end local v0    # "records":[Lorg/xbill/DNS/Record;
    :catch_14
    move-exception v0

    .line 243
    .local v0, "e":Lorg/xbill/DNS/TextParseException;
    new-instance v1, Ljava/net/UnknownHostException;

    const-string v2, "invalid name"

    invoke-direct {v1, v2}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static parseV4(Ljava/lang/String;)[B
    .registers 11
    .param p0, "s"    # Ljava/lang/String;

    .line 27
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 29
    .local v0, "values":[B
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 31
    .local v1, "length":I
    const/4 v2, 0x0

    .line 32
    .local v2, "currentOctet":I
    const/4 v3, 0x0

    .line 33
    .local v3, "currentValue":I
    const/4 v4, 0x0

    .line 34
    .local v4, "numDigits":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_b
    const/4 v6, 0x3

    const/4 v7, 0x0

    if-ge v5, v1, :cond_47

    .line 35
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 36
    .local v8, "c":C
    const/16 v9, 0x30

    if-lt v8, v9, :cond_2f

    const/16 v9, 0x39

    if-gt v8, v9, :cond_2f

    .line 38
    if-ne v4, v6, :cond_1e

    .line 39
    return-object v7

    .line 41
    :cond_1e
    if-lez v4, :cond_23

    if-nez v3, :cond_23

    .line 42
    return-object v7

    .line 43
    :cond_23
    add-int/lit8 v4, v4, 0x1

    .line 44
    mul-int/lit8 v3, v3, 0xa

    .line 45
    add-int/lit8 v6, v8, -0x30

    add-int/2addr v3, v6

    .line 47
    const/16 v6, 0xff

    if-le v3, v6, :cond_43

    .line 48
    return-object v7

    .line 49
    :cond_2f
    const/16 v9, 0x2e

    if-ne v8, v9, :cond_46

    .line 51
    if-ne v2, v6, :cond_36

    .line 52
    return-object v7

    .line 54
    :cond_36
    if-nez v4, :cond_39

    .line 55
    return-object v7

    .line 56
    :cond_39
    add-int/lit8 v6, v2, 0x1

    .local v6, "currentOctet":I
    int-to-byte v7, v3

    aput-byte v7, v0, v2

    .line 57
    .end local v2    # "currentOctet":I
    const/4 v2, 0x0

    .line 58
    .end local v3    # "currentValue":I
    .local v2, "currentValue":I
    const/4 v3, 0x0

    .line 34
    move v4, v3

    move v3, v2

    move v2, v6

    .end local v6    # "currentOctet":I
    .end local v8    # "c":C
    .local v2, "currentOctet":I
    .restart local v3    # "currentValue":I
    :cond_43
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    .line 60
    .restart local v8    # "c":C
    :cond_46
    return-object v7

    .line 63
    .end local v5    # "i":I
    .end local v8    # "c":C
    :cond_47
    if-eq v2, v6, :cond_4a

    .line 64
    return-object v7

    .line 66
    :cond_4a
    if-nez v4, :cond_4d

    .line 67
    return-object v7

    .line 68
    :cond_4d
    int-to-byte v5, v3

    aput-byte v5, v0, v2

    .line 69
    return-object v0
.end method

.method private static parseV6(Ljava/lang/String;)[B
    .registers 15
    .param p0, "s"    # Ljava/lang/String;

    .line 74
    const/4 v0, -0x1

    .line 75
    .local v0, "range":I
    const/16 v1, 0x10

    new-array v2, v1, [B

    .line 77
    .local v2, "data":[B
    const-string v3, ":"

    const/4 v4, -0x1

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 79
    .local v3, "tokens":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 80
    .local v4, "first":I
    array-length v5, v3

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    .line 82
    .local v5, "last":I
    const/4 v7, 0x0

    aget-object v8, v3, v7

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x0

    if-nez v8, :cond_2a

    .line 86
    sub-int v8, v5, v4

    if-lez v8, :cond_29

    aget-object v8, v3, v6

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_29

    .line 87
    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    .line 89
    :cond_29
    return-object v9

    .line 92
    :cond_2a
    :goto_2a
    aget-object v8, v3, v5

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_44

    .line 96
    sub-int v8, v5, v4

    if-lez v8, :cond_43

    add-int/lit8 v8, v5, -0x1

    aget-object v8, v3, v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_43

    .line 97
    add-int/lit8 v5, v5, -0x1

    goto :goto_44

    .line 99
    :cond_43
    return-object v9

    .line 102
    :cond_44
    :goto_44
    sub-int v8, v5, v4

    add-int/2addr v8, v6

    const/16 v10, 0x8

    if-le v8, v10, :cond_4c

    .line 103
    return-object v9

    .line 106
    :cond_4c
    move v8, v4

    move v10, v0

    const/4 v0, 0x0

    .local v0, "j":I
    .local v8, "i":I
    .local v10, "range":I
    :goto_4f
    if-gt v8, v5, :cond_c9

    .line 107
    aget-object v11, v3, v8

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_5e

    .line 108
    if-ltz v10, :cond_5c

    .line 109
    return-object v9

    .line 110
    :cond_5c
    move v10, v0

    .line 111
    goto :goto_c0

    .line 114
    :cond_5e
    aget-object v11, v3, v8

    const/16 v12, 0x2e

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-ltz v11, :cond_8a

    .line 116
    if-ge v8, v5, :cond_6b

    .line 117
    return-object v9

    .line 119
    :cond_6b
    const/4 v11, 0x6

    if-le v8, v11, :cond_6f

    .line 120
    return-object v9

    .line 121
    :cond_6f
    aget-object v11, v3, v8

    invoke-static {v11, v6}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v6

    .line 122
    .local v6, "v4addr":[B
    if-nez v6, :cond_78

    .line 123
    return-object v9

    .line 124
    :cond_78
    move v11, v0

    const/4 v0, 0x0

    .local v0, "k":I
    .local v11, "j":I
    :goto_7a
    const/4 v12, 0x4

    if-ge v0, v12, :cond_87

    .line 125
    add-int/lit8 v12, v11, 0x1

    .local v12, "j":I
    aget-byte v13, v6, v0

    aput-byte v13, v2, v11

    .line 124
    .end local v11    # "j":I
    add-int/lit8 v0, v0, 0x1

    move v11, v12

    goto :goto_7a

    .line 126
    .end local v0    # "k":I
    .end local v12    # "j":I
    .restart local v11    # "j":I
    :cond_87
    nop

    .line 146
    move v0, v11

    goto :goto_c9

    .line 130
    .end local v6    # "v4addr":[B
    .end local v11    # "j":I
    .local v0, "j":I
    :cond_8a
    const/4 v11, 0x0

    .local v11, "k":I
    :goto_8b
    :try_start_8b
    aget-object v12, v3, v8

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v11, v12, :cond_a3

    .line 131
    aget-object v12, v3, v8

    invoke-virtual {v12, v11}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .line 132
    .local v12, "c":C
    invoke-static {v12, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v13

    if-gez v13, :cond_a0

    .line 133
    return-object v9

    .line 130
    .end local v12    # "c":C
    :cond_a0
    add-int/lit8 v11, v11, 0x1

    goto :goto_8b

    .line 135
    .end local v11    # "k":I
    :cond_a3
    aget-object v11, v3, v8

    invoke-static {v11, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v11
    :try_end_a9
    .catch Ljava/lang/NumberFormatException; {:try_start_8b .. :try_end_a9} :catch_c7

    .line 136
    .local v11, "x":I
    const v12, 0xffff

    if-gt v11, v12, :cond_c6

    if-gez v11, :cond_b1

    goto :goto_c6

    .line 138
    :cond_b1
    add-int/lit8 v12, v0, 0x1

    .local v12, "j":I
    ushr-int/lit8 v13, v11, 0x8

    int-to-byte v13, v13

    :try_start_b6
    aput-byte v13, v2, v0
    :try_end_b8
    .catch Ljava/lang/NumberFormatException; {:try_start_b6 .. :try_end_b8} :catch_c3

    .line 139
    .end local v0    # "j":I
    add-int/lit8 v0, v12, 0x1

    .restart local v0    # "j":I
    and-int/lit16 v13, v11, 0xff

    int-to-byte v13, v13

    :try_start_bd
    aput-byte v13, v2, v12
    :try_end_bf
    .catch Ljava/lang/NumberFormatException; {:try_start_bd .. :try_end_bf} :catch_c7

    .line 143
    .end local v11    # "x":I
    .end local v12    # "j":I
    nop

    .line 106
    :goto_c0
    add-int/lit8 v8, v8, 0x1

    goto :goto_4f

    .line 141
    .end local v0    # "j":I
    .restart local v12    # "j":I
    :catch_c3
    move-exception v1

    move v0, v12

    goto :goto_c8

    .line 137
    .end local v12    # "j":I
    .restart local v0    # "j":I
    .restart local v11    # "x":I
    :cond_c6
    :goto_c6
    return-object v9

    .line 141
    .end local v11    # "x":I
    :catch_c7
    move-exception v1

    .line 142
    .local v1, "e":Ljava/lang/NumberFormatException;
    :goto_c8
    return-object v9

    .line 146
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_c9
    :goto_c9
    if-ge v0, v1, :cond_ce

    if-gez v10, :cond_ce

    .line 147
    return-object v9

    .line 149
    :cond_ce
    if-ltz v10, :cond_e3

    .line 150
    sub-int/2addr v1, v0

    .line 151
    .local v1, "empty":I
    add-int v6, v10, v1

    sub-int v9, v0, v10

    invoke-static {v2, v10, v2, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    move v6, v10

    move v8, v6

    :goto_da
    add-int v6, v10, v1

    if-ge v8, v6, :cond_e3

    .line 153
    aput-byte v7, v2, v8

    .line 152
    add-int/lit8 v8, v8, 0x1

    goto :goto_da

    .line 156
    .end local v1    # "empty":I
    :cond_e3
    return-object v2
.end method

.method public static toArray(Ljava/lang/String;)[I
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 183
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/xbill/DNS/Address;->toArray(Ljava/lang/String;I)[I

    move-result-object v0

    return-object v0
.end method

.method public static toArray(Ljava/lang/String;I)[I
    .registers 6
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "family"    # I

    .line 167
    invoke-static {p0, p1}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v0

    .line 168
    .local v0, "byteArray":[B
    if-nez v0, :cond_8

    .line 169
    const/4 v1, 0x0

    return-object v1

    .line 170
    :cond_8
    array-length v1, v0

    new-array v1, v1, [I

    .line 171
    .local v1, "intArray":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    array-length v3, v0

    if-ge v2, v3, :cond_18

    .line 172
    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    aput v3, v1, v2

    .line 171
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 173
    .end local v2    # "i":I
    :cond_18
    return-object v1
.end method

.method public static toByteArray(Ljava/lang/String;I)[B
    .registers 4
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "family"    # I

    .line 194
    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    .line 195
    invoke-static {p0}, Lorg/xbill/DNS/Address;->parseV4(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    .line 196
    :cond_8
    const/4 v0, 0x2

    if-ne p1, v0, :cond_10

    .line 197
    invoke-static {p0}, Lorg/xbill/DNS/Address;->parseV6(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    .line 199
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown address family"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toDottedQuad([B)Ljava/lang/String;
    .registers 3
    .param p0, "addr"    # [B

    .line 220
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toDottedQuad([I)Ljava/lang/String;
    .registers 3
    .param p0, "addr"    # [I

    .line 231
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    aget v1, p0, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x1

    aget v1, p0, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x2

    aget v1, p0, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x3

    aget v1, p0, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
