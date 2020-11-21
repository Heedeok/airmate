.class public final Lcom/google/common/net/InetAddresses;
.super Ljava/lang/Object;
.source "InetAddresses.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/net/InetAddresses$TeredoInfo;
    }
.end annotation


# static fields
.field private static final ANY4:Ljava/net/Inet4Address;

.field private static final IPV4_PART_COUNT:I = 0x4

.field private static final IPV6_PART_COUNT:I = 0x8

.field private static final LOOPBACK4:Ljava/net/Inet4Address;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 123
    const-string v0, "127.0.0.1"

    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->forString(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    sput-object v0, Lcom/google/common/net/InetAddresses;->LOOPBACK4:Ljava/net/Inet4Address;

    .line 124
    const-string v0, "0.0.0.0"

    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->forString(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    sput-object v0, Lcom/google/common/net/InetAddresses;->ANY4:Ljava/net/Inet4Address;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/net/Inet4Address;
    .registers 1

    .line 120
    sget-object v0, Lcom/google/common/net/InetAddresses;->ANY4:Ljava/net/Inet4Address;

    return-object v0
.end method

.method private static bytesToInetAddress([B)Ljava/net/InetAddress;
    .registers 3
    .param p0, "addr"    # [B

    .line 337
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 338
    :catch_5
    move-exception v0

    .line 339
    .local v0, "e":Ljava/net/UnknownHostException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static coerceToInteger(Ljava/net/InetAddress;)I
    .registers 2
    .param p0, "ip"    # Ljava/net/InetAddress;

    .line 944
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->getCoercedIPv4Address(Ljava/net/InetAddress;)Ljava/net/Inet4Address;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/io/ByteStreams;->newDataInput([B)Lcom/google/common/io/ByteArrayDataInput;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/io/ByteArrayDataInput;->readInt()I

    move-result v0

    return v0
.end method

.method private static compressLongestRunOfZeroes([I)V
    .registers 6
    .param p0, "hextets"    # [I

    .line 387
    const/4 v0, -0x1

    .line 388
    .local v0, "bestRunStart":I
    const/4 v1, -0x1

    .line 389
    .local v1, "bestRunLength":I
    const/4 v2, -0x1

    .line 390
    .local v2, "runStart":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    array-length v4, p0

    add-int/lit8 v4, v4, 0x1

    if-ge v3, v4, :cond_20

    .line 391
    array-length v4, p0

    if-ge v3, v4, :cond_14

    aget v4, p0, v3

    if-nez v4, :cond_14

    .line 392
    if-gez v2, :cond_1d

    .line 393
    move v2, v3

    goto :goto_1d

    .line 395
    :cond_14
    if-ltz v2, :cond_1d

    .line 396
    sub-int v4, v3, v2

    .line 397
    .local v4, "runLength":I
    if-le v4, v1, :cond_1c

    .line 398
    move v0, v2

    .line 399
    move v1, v4

    .line 401
    :cond_1c
    const/4 v2, -0x1

    .line 390
    .end local v4    # "runLength":I
    :cond_1d
    :goto_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 404
    .end local v3    # "i":I
    :cond_20
    const/4 v3, 0x2

    if-lt v1, v3, :cond_29

    .line 405
    add-int v3, v0, v1

    const/4 v4, -0x1

    invoke-static {p0, v0, v3, v4}, Ljava/util/Arrays;->fill([IIII)V

    .line 407
    :cond_29
    return-void
.end method

.method private static convertDottedQuadToHex(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "ipString"    # Ljava/lang/String;

    .line 292
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 293
    .local v0, "lastColon":I
    add-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 294
    .local v1, "initialPart":Ljava/lang/String;
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 295
    .local v3, "dottedQuad":Ljava/lang/String;
    invoke-static {v3}, Lcom/google/common/net/InetAddresses;->textToNumericFormatV4(Ljava/lang/String;)[B

    move-result-object v4

    .line 296
    .local v4, "quad":[B
    if-nez v4, :cond_1b

    .line 297
    const/4 v2, 0x0

    return-object v2

    .line 299
    :cond_1b
    aget-byte v2, v4, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    const/4 v5, 0x1

    aget-byte v5, v4, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 300
    .local v2, "penultimate":Ljava/lang/String;
    const/4 v5, 0x2

    aget-byte v5, v4, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    const/4 v6, 0x3

    aget-byte v6, v4, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 301
    .local v5, "ultimate":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static forString(Ljava/lang/String;)Ljava/net/InetAddress;
    .registers 5
    .param p0, "ipString"    # Ljava/lang/String;

    .line 155
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->ipStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 158
    .local v0, "addr":[B
    if-eqz v0, :cond_b

    .line 163
    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->bytesToInetAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    return-object v1

    .line 159
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const-string v3, "\'%s\' is not an IP string literal."

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static forUriString(Ljava/lang/String;)Ljava/net/InetAddress;
    .registers 7
    .param p0, "hostAddr"    # Ljava/lang/String;

    .line 491
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_20

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 497
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 498
    .local v0, "ipString":Ljava/lang/String;
    const/16 v2, 0x10

    goto :goto_22

    .line 500
    .end local v0    # "ipString":Ljava/lang/String;
    :cond_20
    move-object v0, p0

    .line 501
    .restart local v0    # "ipString":Ljava/lang/String;
    const/4 v2, 0x4

    .line 505
    .local v2, "expectBytes":I
    :goto_22
    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->ipStringToBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 506
    .local v3, "addr":[B
    if-eqz v3, :cond_30

    array-length v4, v3

    if-ne v4, v2, :cond_30

    .line 511
    invoke-static {v3}, Lcom/google/common/net/InetAddresses;->bytesToInetAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    return-object v1

    .line 507
    :cond_30
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v1, v5

    const-string v5, "Not a valid URI IP literal: \'%s\'"

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static fromInteger(I)Ljava/net/Inet4Address;
    .registers 2
    .param p0, "address"    # I

    .line 955
    invoke-static {p0}, Lcom/google/common/primitives/Ints;->toByteArray(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object v0

    return-object v0
.end method

.method public static fromLittleEndianByteArray([B)Ljava/net/InetAddress;
    .registers 4
    .param p0, "addr"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 970
    array-length v0, p0

    new-array v0, v0, [B

    .line 971
    .local v0, "reversed":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_12

    .line 972
    array-length v2, p0

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, p0, v2

    aput-byte v2, v0, v1

    .line 971
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 974
    .end local v1    # "i":I
    :cond_12
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    return-object v1
.end method

.method public static get6to4IPv4Address(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;
    .registers 6
    .param p0, "ip"    # Ljava/net/Inet6Address;

    .line 609
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->is6to4Address(Ljava/net/Inet6Address;)Z

    move-result v0

    const-string v1, "Address \'%s\' is not a 6to4 address."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 612
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object v0

    return-object v0
.end method

.method public static getCoercedIPv4Address(Ljava/net/InetAddress;)Ljava/net/Inet4Address;
    .registers 9
    .param p0, "ip"    # Ljava/net/InetAddress;

    .line 878
    instance-of v0, p0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_8

    .line 879
    move-object v0, p0

    check-cast v0, Ljava/net/Inet4Address;

    return-object v0

    .line 883
    :cond_8
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 884
    .local v0, "bytes":[B
    const/4 v1, 0x1

    .line 885
    .local v1, "leadingBytesOfZero":Z
    const/4 v2, 0x0

    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    const/16 v4, 0xf

    if-ge v3, v4, :cond_1c

    .line 886
    aget-byte v5, v0, v3

    if-eqz v5, :cond_19

    .line 887
    const/4 v1, 0x0

    .line 888
    goto :goto_1c

    .line 885
    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 891
    .end local v3    # "i":I
    :cond_1c
    :goto_1c
    if-eqz v1, :cond_26

    aget-byte v3, v0, v4

    const/4 v5, 0x1

    if-ne v3, v5, :cond_26

    .line 892
    sget-object v2, Lcom/google/common/net/InetAddresses;->LOOPBACK4:Ljava/net/Inet4Address;

    return-object v2

    .line 893
    :cond_26
    if-eqz v1, :cond_2f

    aget-byte v3, v0, v4

    if-nez v3, :cond_2f

    .line 894
    sget-object v2, Lcom/google/common/net/InetAddresses;->ANY4:Ljava/net/Inet4Address;

    return-object v2

    .line 897
    :cond_2f
    move-object v3, p0

    check-cast v3, Ljava/net/Inet6Address;

    .line 898
    .local v3, "ip6":Ljava/net/Inet6Address;
    const-wide/16 v4, 0x0

    .line 899
    .local v4, "addressAsLong":J
    invoke-static {v3}, Lcom/google/common/net/InetAddresses;->hasEmbeddedIPv4ClientAddress(Ljava/net/Inet6Address;)Z

    move-result v6

    if-eqz v6, :cond_44

    .line 900
    invoke-static {v3}, Lcom/google/common/net/InetAddresses;->getEmbeddedIPv4ClientAddress(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Inet4Address;->hashCode()I

    move-result v2

    int-to-long v4, v2

    goto :goto_52

    .line 904
    :cond_44
    invoke-virtual {v3}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v6

    const/16 v7, 0x8

    invoke-static {v6, v2, v7}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    .line 908
    :goto_52
    invoke-static {}, Lcom/google/common/hash/Hashing;->murmur3_32()Lcom/google/common/hash/HashFunction;

    move-result-object v2

    invoke-interface {v2, v4, v5}, Lcom/google/common/hash/HashFunction;->hashLong(J)Lcom/google/common/hash/HashCode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/hash/HashCode;->asInt()I

    move-result v2

    .line 911
    .local v2, "coercedHash":I
    const/high16 v6, -0x20000000

    or-int/2addr v2, v6

    .line 915
    const/4 v6, -0x1

    if-ne v2, v6, :cond_65

    .line 916
    const/4 v2, -0x2

    .line 919
    :cond_65
    invoke-static {v2}, Lcom/google/common/primitives/Ints;->toByteArray(I)[B

    move-result-object v6

    invoke-static {v6}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object v6

    return-object v6
.end method

.method public static getCompatIPv4Address(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;
    .registers 6
    .param p0, "ip"    # Ljava/net/Inet6Address;

    .line 576
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isCompatIPv4Address(Ljava/net/Inet6Address;)Z

    move-result v0

    const-string v1, "Address \'%s\' is not IPv4-compatible."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 579
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    const/16 v1, 0xc

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object v0

    return-object v0
.end method

.method public static getEmbeddedIPv4ClientAddress(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;
    .registers 5
    .param p0, "ip"    # Ljava/net/Inet6Address;

    .line 801
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isCompatIPv4Address(Ljava/net/Inet6Address;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 802
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->getCompatIPv4Address(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;

    move-result-object v0

    return-object v0

    .line 805
    :cond_b
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->is6to4Address(Ljava/net/Inet6Address;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 806
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->get6to4IPv4Address(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;

    move-result-object v0

    return-object v0

    .line 809
    :cond_16
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isTeredoAddress(Ljava/net/Inet6Address;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 810
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->getTeredoInfo(Ljava/net/Inet6Address;)Lcom/google/common/net/InetAddresses$TeredoInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/net/InetAddresses$TeredoInfo;->getClient()Ljava/net/Inet4Address;

    move-result-object v0

    return-object v0

    .line 813
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "\'%s\' has no embedded IPv4 address."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getInet4Address([B)Ljava/net/Inet4Address;
    .registers 6
    .param p0, "bytes"    # [B

    .line 136
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-ne v0, v3, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    const-string v3, "Byte array has invalid length for an IPv4 address: %s != 4."

    new-array v2, v2, [Ljava/lang/Object;

    array-length v4, p0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-static {v0, v3, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 141
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->bytesToInetAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    return-object v0
.end method

.method public static getIsatapIPv4Address(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;
    .registers 6
    .param p0, "ip"    # Ljava/net/Inet6Address;

    .line 765
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isIsatapAddress(Ljava/net/Inet6Address;)Z

    move-result v0

    const-string v1, "Address \'%s\' is not an ISATAP address."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 768
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    const/16 v1, 0xc

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object v0

    return-object v0
.end method

.method public static getTeredoInfo(Ljava/net/Inet6Address;)Lcom/google/common/net/InetAddresses$TeredoInfo;
    .registers 8
    .param p0, "ip"    # Ljava/net/Inet6Address;

    .line 700
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isTeredoAddress(Ljava/net/Inet6Address;)Z

    move-result v0

    const-string v1, "Address \'%s\' is not a Teredo address."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 703
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    .line 704
    .local v0, "bytes":[B
    const/16 v1, 0x8

    const/4 v2, 0x4

    invoke-static {v0, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object v2

    .line 706
    .local v2, "server":Ljava/net/Inet4Address;
    invoke-static {v0, v1}, Lcom/google/common/io/ByteStreams;->newDataInput([BI)Lcom/google/common/io/ByteArrayDataInput;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/io/ByteArrayDataInput;->readShort()S

    move-result v1

    const v3, 0xffff

    and-int/2addr v1, v3

    .line 709
    .local v1, "flags":I
    const/16 v5, 0xa

    invoke-static {v0, v5}, Lcom/google/common/io/ByteStreams;->newDataInput([BI)Lcom/google/common/io/ByteArrayDataInput;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/common/io/ByteArrayDataInput;->readShort()S

    move-result v5

    xor-int/lit8 v5, v5, -0x1

    and-int/2addr v3, v5

    .line 711
    .local v3, "port":I
    const/16 v5, 0xc

    const/16 v6, 0x10

    invoke-static {v0, v5, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    .line 712
    .local v5, "clientBytes":[B
    nop

    .local v4, "i":I
    :goto_44
    array-length v6, v5

    if-ge v4, v6, :cond_51

    .line 714
    aget-byte v6, v5, v4

    xor-int/lit8 v6, v6, -0x1

    int-to-byte v6, v6

    aput-byte v6, v5, v4

    .line 712
    add-int/lit8 v4, v4, 0x1

    goto :goto_44

    .line 716
    .end local v4    # "i":I
    :cond_51
    invoke-static {v5}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object v4

    .line 718
    .local v4, "client":Ljava/net/Inet4Address;
    new-instance v6, Lcom/google/common/net/InetAddresses$TeredoInfo;

    invoke-direct {v6, v2, v4, v3, v1}, Lcom/google/common/net/InetAddresses$TeredoInfo;-><init>(Ljava/net/Inet4Address;Ljava/net/Inet4Address;II)V

    return-object v6
.end method

.method public static hasEmbeddedIPv4ClientAddress(Ljava/net/Inet6Address;)Z
    .registers 2
    .param p0, "ip"    # Ljava/net/Inet6Address;

    .line 784
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isCompatIPv4Address(Ljava/net/Inet6Address;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->is6to4Address(Ljava/net/Inet6Address;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isTeredoAddress(Ljava/net/Inet6Address;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method

.method private static hextetsToIPv6String([I)Ljava/lang/String;
    .registers 7
    .param p0, "hextets"    # [I

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 425
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 426
    .local v1, "lastWasNumber":Z
    const/4 v2, 0x0

    move v3, v1

    const/4 v1, 0x0

    .local v1, "i":I
    .local v3, "lastWasNumber":Z
    :goto_b
    array-length v4, p0

    if-ge v1, v4, :cond_35

    .line 427
    aget v4, p0, v1

    if-ltz v4, :cond_14

    const/4 v4, 0x1

    goto :goto_15

    :cond_14
    const/4 v4, 0x0

    .line 428
    .local v4, "thisIsNumber":Z
    :goto_15
    if-eqz v4, :cond_28

    .line 429
    if-eqz v3, :cond_1e

    .line 430
    const/16 v5, 0x3a

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 432
    :cond_1e
    aget v5, p0, v1

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_31

    .line 434
    :cond_28
    if-eqz v1, :cond_2c

    if-eqz v3, :cond_31

    .line 435
    :cond_2c
    const-string v5, "::"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    :cond_31
    :goto_31
    move v3, v4

    .line 426
    .end local v4    # "thisIsNumber":Z
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 440
    .end local v1    # "i":I
    :cond_35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static increment(Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .registers 8
    .param p0, "address"    # Ljava/net/InetAddress;

    .line 987
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 988
    .local v0, "addr":[B
    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 989
    .local v1, "i":I
    :goto_7
    const/4 v3, 0x0

    if-ltz v1, :cond_14

    aget-byte v4, v0, v1

    const/4 v5, -0x1

    if-ne v4, v5, :cond_14

    .line 990
    aput-byte v3, v0, v1

    .line 991
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 994
    :cond_14
    if-ltz v1, :cond_18

    const/4 v4, 0x1

    goto :goto_19

    :cond_18
    const/4 v4, 0x0

    :goto_19
    const-string v5, "Incrementing %s would wrap."

    new-array v6, v2, [Ljava/lang/Object;

    aput-object p0, v6, v3

    invoke-static {v4, v5, v6}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 996
    aget-byte v3, v0, v1

    add-int/2addr v3, v2

    int-to-byte v2, v3

    aput-byte v2, v0, v1

    .line 997
    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->bytesToInetAddress([B)Ljava/net/InetAddress;

    move-result-object v2

    return-object v2
.end method

.method private static ipStringToBytes(Ljava/lang/String;)[B
    .registers 8
    .param p0, "ipString"    # Ljava/lang/String;

    .line 179
    const/4 v0, 0x0

    .line 180
    .local v0, "hasColon":Z
    const/4 v1, 0x0

    .line 181
    .local v1, "hasDot":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    if-ge v2, v3, :cond_2a

    .line 182
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 183
    .local v3, "c":C
    const/16 v5, 0x2e

    if-ne v3, v5, :cond_14

    .line 184
    const/4 v1, 0x1

    goto :goto_27

    .line 185
    :cond_14
    const/16 v5, 0x3a

    if-ne v3, v5, :cond_1d

    .line 186
    if-eqz v1, :cond_1b

    .line 187
    return-object v4

    .line 189
    :cond_1b
    const/4 v0, 0x1

    goto :goto_27

    .line 190
    :cond_1d
    const/16 v5, 0x10

    invoke-static {v3, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_27

    .line 191
    return-object v4

    .line 181
    .end local v3    # "c":C
    :cond_27
    :goto_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 196
    .end local v2    # "i":I
    :cond_2a
    if-eqz v0, :cond_3a

    .line 197
    if-eqz v1, :cond_35

    .line 198
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->convertDottedQuadToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 199
    if-nez p0, :cond_35

    .line 200
    return-object v4

    .line 203
    :cond_35
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->textToNumericFormatV6(Ljava/lang/String;)[B

    move-result-object v2

    return-object v2

    .line 204
    :cond_3a
    if-eqz v1, :cond_41

    .line 205
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->textToNumericFormatV4(Ljava/lang/String;)[B

    move-result-object v2

    return-object v2

    .line 207
    :cond_41
    return-object v4
.end method

.method public static is6to4Address(Ljava/net/Inet6Address;)Z
    .registers 6
    .param p0, "ip"    # Ljava/net/Inet6Address;

    .line 597
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    .line 598
    .local v0, "bytes":[B
    const/4 v1, 0x0

    aget-byte v2, v0, v1

    const/4 v3, 0x1

    const/16 v4, 0x20

    if-ne v2, v4, :cond_13

    aget-byte v2, v0, v3

    const/4 v4, 0x2

    if-ne v2, v4, :cond_13

    const/4 v1, 0x1

    nop

    :cond_13
    return v1
.end method

.method public static isCompatIPv4Address(Ljava/net/Inet6Address;)Z
    .registers 6
    .param p0, "ip"    # Ljava/net/Inet6Address;

    .line 555
    invoke-virtual {p0}, Ljava/net/Inet6Address;->isIPv4CompatibleAddress()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 556
    return v1

    .line 559
    :cond_8
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    .line 560
    .local v0, "bytes":[B
    const/16 v2, 0xc

    aget-byte v2, v0, v2

    const/4 v3, 0x1

    if-nez v2, :cond_2a

    const/16 v2, 0xd

    aget-byte v2, v0, v2

    if-nez v2, :cond_2a

    const/16 v2, 0xe

    aget-byte v2, v0, v2

    if-nez v2, :cond_2a

    const/16 v2, 0xf

    aget-byte v4, v0, v2

    if-eqz v4, :cond_29

    aget-byte v2, v0, v2

    if-ne v2, v3, :cond_2a

    .line 562
    :cond_29
    return v1

    .line 565
    :cond_2a
    return v3
.end method

.method public static isInetAddress(Ljava/lang/String;)Z
    .registers 2
    .param p0, "ipString"    # Ljava/lang/String;

    .line 174
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->ipStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static isIsatapAddress(Ljava/net/Inet6Address;)Z
    .registers 5
    .param p0, "ip"    # Ljava/net/Inet6Address;

    .line 740
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isTeredoAddress(Ljava/net/Inet6Address;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 741
    return v1

    .line 744
    :cond_8
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    .line 746
    .local v0, "bytes":[B
    const/16 v2, 0x8

    aget-byte v2, v0, v2

    const/4 v3, 0x3

    or-int/2addr v2, v3

    if-eq v2, v3, :cond_15

    .line 750
    return v1

    .line 753
    :cond_15
    const/16 v2, 0x9

    aget-byte v2, v0, v2

    if-nez v2, :cond_2c

    const/16 v2, 0xa

    aget-byte v2, v0, v2

    const/16 v3, 0x5e

    if-ne v2, v3, :cond_2c

    const/16 v2, 0xb

    aget-byte v2, v0, v2

    const/4 v3, -0x2

    if-ne v2, v3, :cond_2c

    const/4 v1, 0x1

    nop

    :cond_2c
    return v1
.end method

.method public static isMappedIPv4Address(Ljava/lang/String;)Z
    .registers 6
    .param p0, "ipString"    # Ljava/lang/String;

    .line 840
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->ipStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 841
    .local v0, "bytes":[B
    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    array-length v2, v0

    const/16 v3, 0x10

    if-ne v2, v3, :cond_2a

    .line 842
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    const/16 v3, 0xa

    if-ge v2, v3, :cond_19

    .line 843
    aget-byte v3, v0, v2

    if-eqz v3, :cond_16

    .line 844
    return v1

    .line 842
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 847
    .end local v2    # "i":I
    :cond_19
    nop

    .local v3, "i":I
    :goto_1a
    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    const/16 v3, 0xc

    if-ge v2, v3, :cond_28

    .line 848
    aget-byte v3, v0, v2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_25

    .line 849
    return v1

    .line 847
    :cond_25
    add-int/lit8 v3, v2, 0x1

    goto :goto_1a

    .line 852
    .end local v2    # "i":I
    :cond_28
    const/4 v1, 0x1

    return v1

    .line 854
    :cond_2a
    return v1
.end method

.method public static isMaximum(Ljava/net/InetAddress;)Z
    .registers 6
    .param p0, "address"    # Ljava/net/InetAddress;

    .line 1009
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 1010
    .local v0, "addr":[B
    const/4 v1, 0x0

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    array-length v3, v0

    if-ge v2, v3, :cond_12

    .line 1011
    aget-byte v3, v0, v2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_f

    .line 1012
    return v1

    .line 1010
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1015
    .end local v2    # "i":I
    :cond_12
    const/4 v1, 0x1

    return v1
.end method

.method public static isTeredoAddress(Ljava/net/Inet6Address;)Z
    .registers 6
    .param p0, "ip"    # Ljava/net/Inet6Address;

    .line 687
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    .line 688
    .local v0, "bytes":[B
    const/4 v1, 0x0

    aget-byte v2, v0, v1

    const/4 v3, 0x1

    const/16 v4, 0x20

    if-ne v2, v4, :cond_1c

    aget-byte v2, v0, v3

    if-ne v2, v3, :cond_1c

    const/4 v2, 0x2

    aget-byte v2, v0, v2

    if-nez v2, :cond_1c

    const/4 v2, 0x3

    aget-byte v2, v0, v2

    if-nez v2, :cond_1c

    const/4 v1, 0x1

    nop

    :cond_1c
    return v1
.end method

.method public static isUriInetAddress(Ljava/lang/String;)Z
    .registers 3
    .param p0, "ipString"    # Ljava/lang/String;

    .line 523
    :try_start_0
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->forUriString(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_5

    .line 524
    const/4 v0, 0x1

    return v0

    .line 525
    :catch_5
    move-exception v0

    .line 526
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    return v1
.end method

.method private static parseHextet(Ljava/lang/String;)S
    .registers 3
    .param p0, "ipPart"    # Ljava/lang/String;

    .line 317
    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 318
    .local v0, "hextet":I
    const v1, 0xffff

    if-gt v0, v1, :cond_d

    .line 321
    int-to-short v1, v0

    return v1

    .line 319
    :cond_d
    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-direct {v1}, Ljava/lang/NumberFormatException;-><init>()V

    throw v1
.end method

.method private static parseOctet(Ljava/lang/String;)B
    .registers 4
    .param p0, "ipPart"    # Ljava/lang/String;

    .line 306
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 309
    .local v0, "octet":I
    const/16 v1, 0xff

    if-gt v0, v1, :cond_19

    const-string v1, "0"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_19

    .line 312
    :cond_17
    int-to-byte v1, v0

    return v1

    .line 310
    :cond_19
    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-direct {v1}, Ljava/lang/NumberFormatException;-><init>()V

    throw v1
.end method

.method private static textToNumericFormatV4(Ljava/lang/String;)[B
    .registers 6
    .param p0, "ipString"    # Ljava/lang/String;

    .line 211
    const-string v0, "\\."

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, "address":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-eq v1, v3, :cond_d

    .line 213
    return-object v2

    .line 216
    :cond_d
    new-array v1, v3, [B

    .line 218
    .local v1, "bytes":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_10
    :try_start_10
    array-length v4, v1

    if-ge v3, v4, :cond_1e

    .line 219
    aget-object v4, v0, v3

    invoke-static {v4}, Lcom/google/common/net/InetAddresses;->parseOctet(Ljava/lang/String;)B

    move-result v4

    aput-byte v4, v1, v3
    :try_end_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_1b} :catch_20

    .line 218
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 223
    .end local v3    # "i":I
    :cond_1e
    nop

    .line 225
    return-object v1

    .line 221
    :catch_20
    move-exception v3

    .line 222
    .local v3, "ex":Ljava/lang/NumberFormatException;
    return-object v2
.end method

.method private static textToNumericFormatV6(Ljava/lang/String;)[B
    .registers 11
    .param p0, "ipString"    # Ljava/lang/String;

    .line 230
    const-string v0, ":"

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, "parts":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-lt v1, v3, :cond_95

    array-length v1, v0

    const/16 v3, 0x9

    if-le v1, v3, :cond_14

    goto/16 :goto_95

    .line 237
    :cond_14
    const/4 v1, -0x1

    .line 238
    .local v1, "skipIndex":I
    const/4 v3, 0x1

    move v4, v1

    const/4 v1, 0x1

    .local v1, "i":I
    .local v4, "skipIndex":I
    :goto_18
    array-length v5, v0

    sub-int/2addr v5, v3

    if-ge v1, v5, :cond_2b

    .line 239
    aget-object v5, v0, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_28

    .line 240
    if-ltz v4, :cond_27

    .line 241
    return-object v2

    .line 243
    :cond_27
    move v4, v1

    .line 238
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 249
    .end local v1    # "i":I
    :cond_2b
    const/4 v1, 0x0

    if-ltz v4, :cond_4e

    .line 251
    move v5, v4

    .line 252
    .local v5, "partsHi":I
    array-length v6, v0

    sub-int/2addr v6, v4

    sub-int/2addr v6, v3

    .line 253
    .local v6, "partsLo":I
    aget-object v7, v0, v1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_3f

    add-int/lit8 v5, v5, -0x1

    if-eqz v5, :cond_3f

    .line 254
    return-object v2

    .line 256
    :cond_3f
    array-length v7, v0

    sub-int/2addr v7, v3

    aget-object v7, v0, v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_50

    add-int/lit8 v6, v6, -0x1

    if-eqz v6, :cond_50

    .line 257
    return-object v2

    .line 262
    .end local v5    # "partsHi":I
    .end local v6    # "partsLo":I
    :cond_4e
    array-length v5, v0

    .line 263
    .restart local v5    # "partsHi":I
    const/4 v6, 0x0

    .line 268
    .restart local v6    # "partsLo":I
    :cond_50
    add-int v7, v5, v6

    rsub-int/lit8 v7, v7, 0x8

    .line 269
    .local v7, "partsSkipped":I
    if-ltz v4, :cond_59

    if-lt v7, v3, :cond_5b

    goto :goto_5c

    :cond_59
    if-eqz v7, :cond_5c

    .line 270
    :cond_5b
    return-object v2

    .line 274
    :cond_5c
    :goto_5c
    const/16 v3, 0x10

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 276
    .local v3, "rawBytes":Ljava/nio/ByteBuffer;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_63
    if-ge v8, v5, :cond_73

    .line 277
    :try_start_65
    aget-object v9, v0, v8

    invoke-static {v9}, Lcom/google/common/net/InetAddresses;->parseHextet(Ljava/lang/String;)S

    move-result v9

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 276
    add-int/lit8 v8, v8, 0x1

    goto :goto_63

    .line 285
    .end local v8    # "i":I
    :catch_71
    move-exception v1

    goto :goto_8d

    .line 279
    :cond_73
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_74
    if-ge v8, v7, :cond_7c

    .line 280
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 279
    add-int/lit8 v8, v8, 0x1

    goto :goto_74

    .line 282
    .end local v8    # "i":I
    :cond_7c
    move v1, v6

    .restart local v1    # "i":I
    :goto_7d
    if-lez v1, :cond_8f

    .line 283
    array-length v8, v0

    sub-int/2addr v8, v1

    aget-object v8, v0, v8

    invoke-static {v8}, Lcom/google/common/net/InetAddresses;->parseHextet(Ljava/lang/String;)S

    move-result v8

    invoke-virtual {v3, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;
    :try_end_8a
    .catch Ljava/lang/NumberFormatException; {:try_start_65 .. :try_end_8a} :catch_71

    .line 282
    add-int/lit8 v1, v1, -0x1

    goto :goto_7d

    .line 285
    .end local v1    # "i":I
    :goto_8d
    nop

    .line 286
    .local v1, "ex":Ljava/lang/NumberFormatException;
    return-object v2

    .line 287
    .end local v1    # "ex":Ljava/lang/NumberFormatException;
    :cond_8f
    nop

    .line 288
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1

    .line 232
    .end local v3    # "rawBytes":Ljava/nio/ByteBuffer;
    .end local v4    # "skipIndex":I
    .end local v5    # "partsHi":I
    .end local v6    # "partsLo":I
    .end local v7    # "partsSkipped":I
    :cond_95
    :goto_95
    return-object v2
.end method

.method public static toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;
    .registers 7
    .param p0, "ip"    # Ljava/net/InetAddress;

    .line 361
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    instance-of v0, p0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_c

    .line 364
    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 366
    :cond_c
    instance-of v0, p0, Ljava/net/Inet6Address;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 367
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 368
    .local v0, "bytes":[B
    const/16 v1, 0x8

    new-array v1, v1, [I

    .line 369
    .local v1, "hextets":[I
    const/4 v2, 0x0

    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1b
    array-length v4, v1

    if-ge v3, v4, :cond_31

    .line 370
    mul-int/lit8 v4, v3, 0x2

    aget-byte v4, v0, v4

    mul-int/lit8 v5, v3, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, v0, v5

    invoke-static {v2, v2, v4, v5}, Lcom/google/common/primitives/Ints;->fromBytes(BBBB)I

    move-result v4

    aput v4, v1, v3

    .line 369
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 373
    .end local v3    # "i":I
    :cond_31
    invoke-static {v1}, Lcom/google/common/net/InetAddresses;->compressLongestRunOfZeroes([I)V

    .line 374
    invoke-static {v1}, Lcom/google/common/net/InetAddresses;->hextetsToIPv6String([I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static toUriString(Ljava/net/InetAddress;)Ljava/lang/String;
    .registers 3
    .param p0, "ip"    # Ljava/net/InetAddress;

    .line 469
    instance-of v0, p0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_1f

    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 472
    :cond_1f
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
