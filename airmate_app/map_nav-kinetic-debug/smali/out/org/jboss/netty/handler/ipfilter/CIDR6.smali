.class public Lorg/jboss/netty/handler/ipfilter/CIDR6;
.super Lorg/jboss/netty/handler/ipfilter/CIDR;
.source "CIDR6.java"


# static fields
.field private static final logger:Lorg/jboss/netty/logging/InternalLogger;


# instance fields
.field private addressBigInt:Ljava/math/BigInteger;

.field private final addressEndBigInt:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    const-class v0, Lorg/jboss/netty/handler/ipfilter/CIDR6;

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/handler/ipfilter/CIDR6;->logger:Lorg/jboss/netty/logging/InternalLogger;

    return-void
.end method

.method protected constructor <init>(Ljava/net/Inet6Address;I)V
    .registers 6
    .param p1, "newaddress"    # Ljava/net/Inet6Address;
    .param p2, "newmask"    # I

    .line 43
    invoke-direct {p0}, Lorg/jboss/netty/handler/ipfilter/CIDR;-><init>()V

    .line 44
    iput p2, p0, Lorg/jboss/netty/handler/ipfilter/CIDR6;->cidrMask:I

    .line 45
    invoke-static {p1}, Lorg/jboss/netty/handler/ipfilter/CIDR6;->ipv6AddressToBigInteger(Ljava/net/InetAddress;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/ipfilter/CIDR6;->addressBigInt:Ljava/math/BigInteger;

    .line 46
    invoke-static {p2}, Lorg/jboss/netty/handler/ipfilter/CIDR6;->ipv6CidrMaskToMask(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 48
    .local v0, "mask":Ljava/math/BigInteger;
    :try_start_f
    iget-object v1, p0, Lorg/jboss/netty/handler/ipfilter/CIDR6;->addressBigInt:Ljava/math/BigInteger;

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, p0, Lorg/jboss/netty/handler/ipfilter/CIDR6;->addressBigInt:Ljava/math/BigInteger;

    .line 49
    iget-object v1, p0, Lorg/jboss/netty/handler/ipfilter/CIDR6;->addressBigInt:Ljava/math/BigInteger;

    invoke-static {v1}, Lorg/jboss/netty/handler/ipfilter/CIDR6;->bigIntToIPv6Address(Ljava/math/BigInteger;)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Lorg/jboss/netty/handler/ipfilter/CIDR6;->baseAddress:Ljava/net/InetAddress;
    :try_end_1f
    .catch Ljava/net/UnknownHostException; {:try_start_f .. :try_end_1f} :catch_20

    .line 52
    goto :goto_21

    .line 50
    :catch_20
    move-exception v1

    .line 53
    :goto_21
    iget-object v1, p0, Lorg/jboss/netty/handler/ipfilter/CIDR6;->addressBigInt:Ljava/math/BigInteger;

    iget v2, p0, Lorg/jboss/netty/handler/ipfilter/CIDR6;->cidrMask:I

    invoke-static {v2}, Lorg/jboss/netty/handler/ipfilter/CIDR6;->ipv6CidrMaskToBaseAddress(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, p0, Lorg/jboss/netty/handler/ipfilter/CIDR6;->addressEndBigInt:Ljava/math/BigInteger;

    .line 54
    return-void
.end method

.method private static bigIntToIPv6Address(Ljava/math/BigInteger;)Ljava/net/InetAddress;
    .registers 7
    .param p0, "addr"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 144
    const/16 v0, 0x10

    new-array v1, v0, [B

    .line 145
    .local v1, "a":[B
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    .line 146
    .local v2, "b":[B
    array-length v3, v2

    const/16 v4, 0x11

    const/4 v5, 0x0

    if-le v3, v0, :cond_1e

    array-length v3, v2

    if-ne v3, v4, :cond_16

    aget-byte v3, v2, v5

    if-nez v3, :cond_16

    goto :goto_1e

    .line 147
    :cond_16
    new-instance v0, Ljava/net/UnknownHostException;

    const-string v3, "invalid IPv6 address (too big)"

    invoke-direct {v0, v3}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_1e
    :goto_1e
    array-length v3, v2

    if-ne v3, v0, :cond_26

    .line 150
    invoke-static {v2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0

    .line 153
    :cond_26
    array-length v3, v2

    if-ne v3, v4, :cond_2e

    .line 154
    const/4 v3, 0x1

    invoke-static {v2, v3, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3e

    .line 157
    :cond_2e
    array-length v3, v2

    sub-int/2addr v0, v3

    .line 158
    .local v0, "p":I
    nop

    .local v5, "i":I
    :goto_31
    move v3, v5

    .end local v5    # "i":I
    .local v3, "i":I
    array-length v4, v2

    if-ge v3, v4, :cond_3e

    .line 159
    add-int v4, v0, v3

    aget-byte v5, v2, v3

    aput-byte v5, v1, v4

    .line 158
    add-int/lit8 v5, v3, 0x1

    goto :goto_31

    .line 162
    .end local v0    # "p":I
    .end local v3    # "i":I
    :cond_3e
    :goto_3e
    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method private static ipv6AddressToBigInteger(Ljava/net/InetAddress;)Ljava/math/BigInteger;
    .registers 4
    .param p0, "addr"    # Ljava/net/InetAddress;

    .line 125
    instance-of v0, p0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_c

    .line 126
    move-object v0, p0

    check-cast v0, Ljava/net/Inet4Address;

    invoke-static {v0}, Lorg/jboss/netty/handler/ipfilter/CIDR6;->getIpV6FromIpV4(Ljava/net/Inet4Address;)[B

    move-result-object v0

    goto :goto_10

    .line 128
    :cond_c
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 130
    .local v0, "ipv6":[B
    :goto_10
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1d

    .line 131
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v1

    .line 133
    :cond_1d
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>([B)V

    return-object v1
.end method

.method private static ipv6CidrMaskToBaseAddress(I)Ljava/math/BigInteger;
    .registers 3
    .param p0, "cidrMask"    # I

    .line 109
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    rsub-int v1, p0, 0x80

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method private static ipv6CidrMaskToMask(I)Ljava/math/BigInteger;
    .registers 3
    .param p0, "cidrMask"    # I

    .line 113
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    rsub-int v1, p0, 0x80

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->not()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 29
    move-object v0, p1

    check-cast v0, Lorg/jboss/netty/handler/ipfilter/CIDR;

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/ipfilter/CIDR6;->compareTo(Lorg/jboss/netty/handler/ipfilter/CIDR;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/jboss/netty/handler/ipfilter/CIDR;)I
    .registers 9
    .param p1, "arg"    # Lorg/jboss/netty/handler/ipfilter/CIDR;

    .line 70
    instance-of v0, p1, Lorg/jboss/netty/handler/ipfilter/CIDR4;

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_25

    .line 71
    iget-object v0, p1, Lorg/jboss/netty/handler/ipfilter/CIDR;->baseAddress:Ljava/net/InetAddress;

    invoke-static {v0}, Lorg/jboss/netty/handler/ipfilter/CIDR6;->ipv6AddressToBigInteger(Ljava/net/InetAddress;)Ljava/math/BigInteger;

    move-result-object v0

    .line 72
    .local v0, "net":Ljava/math/BigInteger;
    iget-object v4, p0, Lorg/jboss/netty/handler/ipfilter/CIDR6;->addressBigInt:Ljava/math/BigInteger;

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    .line 73
    .local v4, "res":I
    if-nez v4, :cond_24

    .line 74
    iget v5, p1, Lorg/jboss/netty/handler/ipfilter/CIDR;->cidrMask:I

    iget v6, p0, Lorg/jboss/netty/handler/ipfilter/CIDR6;->cidrMask:I

    if-ne v5, v6, :cond_1c

    .line 75
    return v3

    .line 76
    :cond_1c
    iget v3, p1, Lorg/jboss/netty/handler/ipfilter/CIDR;->cidrMask:I

    iget v5, p0, Lorg/jboss/netty/handler/ipfilter/CIDR6;->cidrMask:I

    if-ge v3, v5, :cond_23

    .line 77
    return v2

    .line 79
    :cond_23
    return v1

    .line 81
    :cond_24
    return v4

    .line 83
    .end local v0    # "net":Ljava/math/BigInteger;
    .end local v4    # "res":I
    :cond_25
    move-object v0, p1

    check-cast v0, Lorg/jboss/netty/handler/ipfilter/CIDR6;

    .line 84
    .local v0, "o":Lorg/jboss/netty/handler/ipfilter/CIDR6;
    iget-object v4, v0, Lorg/jboss/netty/handler/ipfilter/CIDR6;->addressBigInt:Ljava/math/BigInteger;

    iget-object v5, p0, Lorg/jboss/netty/handler/ipfilter/CIDR6;->addressBigInt:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    iget v4, v0, Lorg/jboss/netty/handler/ipfilter/CIDR6;->cidrMask:I

    iget v5, p0, Lorg/jboss/netty/handler/ipfilter/CIDR6;->cidrMask:I

    if-ne v4, v5, :cond_39

    .line 85
    return v3

    .line 87
    :cond_39
    iget-object v3, v0, Lorg/jboss/netty/handler/ipfilter/CIDR6;->addressBigInt:Ljava/math/BigInteger;

    iget-object v4, p0, Lorg/jboss/netty/handler/ipfilter/CIDR6;->addressBigInt:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    .line 88
    .local v3, "res":I
    if-nez v3, :cond_4b

    .line 89
    iget v4, v0, Lorg/jboss/netty/handler/ipfilter/CIDR6;->cidrMask:I

    iget v5, p0, Lorg/jboss/netty/handler/ipfilter/CIDR6;->cidrMask:I

    if-ge v4, v5, :cond_4a

    .line 91
    return v2

    .line 93
    :cond_4a
    return v1

    .line 95
    :cond_4b
    return v3
.end method

.method public contains(Ljava/net/InetAddress;)Z
    .registers 4
    .param p1, "inetAddress"    # Ljava/net/InetAddress;

    .line 100
    invoke-static {p1}, Lorg/jboss/netty/handler/ipfilter/CIDR6;->ipv6AddressToBigInteger(Ljava/net/InetAddress;)Ljava/math/BigInteger;

    move-result-object v0

    .line 101
    .local v0, "search":Ljava/math/BigInteger;
    iget-object v1, p0, Lorg/jboss/netty/handler/ipfilter/CIDR6;->addressBigInt:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-ltz v1, :cond_16

    iget-object v1, p0, Lorg/jboss/netty/handler/ipfilter/CIDR6;->addressEndBigInt:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gtz v1, :cond_16

    const/4 v1, 0x1

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    return v1
.end method

.method public getEndAddress()Ljava/net/InetAddress;
    .registers 4

    .line 59
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/handler/ipfilter/CIDR6;->addressEndBigInt:Ljava/math/BigInteger;

    invoke-static {v0}, Lorg/jboss/netty/handler/ipfilter/CIDR6;->bigIntToIPv6Address(Ljava/math/BigInteger;)Ljava/net/InetAddress;

    move-result-object v0
    :try_end_6
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 60
    :catch_7
    move-exception v0

    .line 61
    .local v0, "e":Ljava/net/UnknownHostException;
    sget-object v1, Lorg/jboss/netty/handler/ipfilter/CIDR6;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v1}, Lorg/jboss/netty/logging/InternalLogger;->isErrorEnabled()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 62
    sget-object v1, Lorg/jboss/netty/handler/ipfilter/CIDR6;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v2, "invalid ip address calculated as an end address"

    invoke-interface {v1, v2}, Lorg/jboss/netty/logging/InternalLogger;->error(Ljava/lang/String;)V

    .line 64
    :cond_17
    const/4 v1, 0x0

    return-object v1
.end method
