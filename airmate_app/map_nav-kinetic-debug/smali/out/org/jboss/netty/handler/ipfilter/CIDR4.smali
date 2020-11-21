.class public Lorg/jboss/netty/handler/ipfilter/CIDR4;
.super Lorg/jboss/netty/handler/ipfilter/CIDR;
.source "CIDR4.java"


# instance fields
.field private final addressEndInt:I

.field private addressInt:I


# direct methods
.method protected constructor <init>(Ljava/net/Inet4Address;I)V
    .registers 6
    .param p1, "newaddr"    # Ljava/net/Inet4Address;
    .param p2, "mask"    # I

    .line 36
    invoke-direct {p0}, Lorg/jboss/netty/handler/ipfilter/CIDR;-><init>()V

    .line 37
    iput p2, p0, Lorg/jboss/netty/handler/ipfilter/CIDR4;->cidrMask:I

    .line 38
    invoke-static {p1}, Lorg/jboss/netty/handler/ipfilter/CIDR4;->ipv4AddressToInt(Ljava/net/InetAddress;)I

    move-result v0

    iput v0, p0, Lorg/jboss/netty/handler/ipfilter/CIDR4;->addressInt:I

    .line 39
    invoke-static {p2}, Lorg/jboss/netty/handler/ipfilter/CIDR4;->ipv4PrefixLengthToMask(I)I

    move-result v0

    .line 40
    .local v0, "newmask":I
    iget v1, p0, Lorg/jboss/netty/handler/ipfilter/CIDR4;->addressInt:I

    and-int/2addr v1, v0

    iput v1, p0, Lorg/jboss/netty/handler/ipfilter/CIDR4;->addressInt:I

    .line 42
    :try_start_14
    iget v1, p0, Lorg/jboss/netty/handler/ipfilter/CIDR4;->addressInt:I

    invoke-static {v1}, Lorg/jboss/netty/handler/ipfilter/CIDR4;->intToIPv4Address(I)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Lorg/jboss/netty/handler/ipfilter/CIDR4;->baseAddress:Ljava/net/InetAddress;
    :try_end_1c
    .catch Ljava/net/UnknownHostException; {:try_start_14 .. :try_end_1c} :catch_1d

    .line 45
    goto :goto_1e

    .line 43
    :catch_1d
    move-exception v1

    .line 46
    :goto_1e
    iget v1, p0, Lorg/jboss/netty/handler/ipfilter/CIDR4;->addressInt:I

    iget v2, p0, Lorg/jboss/netty/handler/ipfilter/CIDR4;->cidrMask:I

    invoke-static {v2}, Lorg/jboss/netty/handler/ipfilter/CIDR4;->ipv4PrefixLengthToLength(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/jboss/netty/handler/ipfilter/CIDR4;->addressEndInt:I

    .line 47
    return-void
.end method

.method private static intToIPv4Address(I)Ljava/net/InetAddress;
    .registers 4
    .param p0, "addr"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 118
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 119
    .local v0, "a":[B
    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 120
    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 121
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    .line 122
    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    .line 123
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    return-object v1
.end method

.method private static ipv4AddressToInt(Ljava/net/InetAddress;)I
    .registers 3
    .param p0, "addr"    # Ljava/net/InetAddress;

    .line 134
    const/4 v0, 0x0

    .line 135
    .local v0, "address":[B
    instance-of v1, p0, Ljava/net/Inet6Address;

    if-eqz v1, :cond_d

    .line 136
    move-object v1, p0

    check-cast v1, Ljava/net/Inet6Address;

    invoke-static {v1}, Lorg/jboss/netty/handler/ipfilter/CIDR4;->getIpV4FromIpV6(Ljava/net/Inet6Address;)[B

    move-result-object v0

    goto :goto_11

    .line 138
    :cond_d
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 140
    :goto_11
    invoke-static {v0}, Lorg/jboss/netty/handler/ipfilter/CIDR4;->ipv4AddressToInt([B)I

    move-result v1

    return v1
.end method

.method private static ipv4AddressToInt([B)I
    .registers 7
    .param p0, "address"    # [B

    .line 151
    const/4 v0, 0x0

    .line 152
    .local v0, "net":I
    move-object v1, p0

    .local v1, "arr$":[B
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_4
    if-ge v3, v2, :cond_10

    aget-byte v4, v1, v3

    .line 153
    .local v4, "addres":B
    shl-int/lit8 v0, v0, 0x8

    .line 154
    and-int/lit16 v5, v4, 0xff

    or-int/2addr v0, v5

    .line 152
    .end local v4    # "addres":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 156
    .end local v1    # "arr$":[B
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_10
    return v0
.end method

.method private static ipv4PrefixLengthToLength(I)I
    .registers 3
    .param p0, "prefix_length"    # I

    .line 101
    rsub-int/lit8 v0, p0, 0x20

    const/4 v1, 0x1

    shl-int v0, v1, v0

    return v0
.end method

.method private static ipv4PrefixLengthToMask(I)I
    .registers 3
    .param p0, "prefix_length"    # I

    .line 109
    rsub-int/lit8 v0, p0, 0x20

    const/4 v1, 0x1

    shl-int v0, v1, v0

    sub-int/2addr v0, v1

    xor-int/lit8 v0, v0, -0x1

    return v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 25
    move-object v0, p1

    check-cast v0, Lorg/jboss/netty/handler/ipfilter/CIDR;

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/ipfilter/CIDR4;->compareTo(Lorg/jboss/netty/handler/ipfilter/CIDR;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/jboss/netty/handler/ipfilter/CIDR;)I
    .registers 9
    .param p1, "arg"    # Lorg/jboss/netty/handler/ipfilter/CIDR;

    .line 60
    instance-of v0, p1, Lorg/jboss/netty/handler/ipfilter/CIDR6;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eqz v0, :cond_30

    .line 61
    iget-object v0, p1, Lorg/jboss/netty/handler/ipfilter/CIDR;->baseAddress:Ljava/net/InetAddress;

    check-cast v0, Ljava/net/Inet6Address;

    invoke-static {v0}, Lorg/jboss/netty/handler/ipfilter/CIDR4;->getIpV4FromIpV6(Ljava/net/Inet6Address;)[B

    move-result-object v0

    .line 62
    .local v0, "address":[B
    invoke-static {v0}, Lorg/jboss/netty/handler/ipfilter/CIDR4;->ipv4AddressToInt([B)I

    move-result v4

    .line 63
    .local v4, "net":I
    iget v5, p0, Lorg/jboss/netty/handler/ipfilter/CIDR4;->addressInt:I

    if-ne v4, v5, :cond_1e

    iget v5, p1, Lorg/jboss/netty/handler/ipfilter/CIDR;->cidrMask:I

    iget v6, p0, Lorg/jboss/netty/handler/ipfilter/CIDR4;->cidrMask:I

    if-ne v5, v6, :cond_1e

    .line 64
    return v1

    .line 66
    :cond_1e
    iget v1, p0, Lorg/jboss/netty/handler/ipfilter/CIDR4;->addressInt:I

    if-ge v4, v1, :cond_23

    .line 67
    return v3

    .line 68
    :cond_23
    iget v1, p0, Lorg/jboss/netty/handler/ipfilter/CIDR4;->addressInt:I

    if-le v4, v1, :cond_28

    .line 69
    return v2

    .line 70
    :cond_28
    iget v1, p1, Lorg/jboss/netty/handler/ipfilter/CIDR;->cidrMask:I

    iget v5, p0, Lorg/jboss/netty/handler/ipfilter/CIDR4;->cidrMask:I

    if-ge v1, v5, :cond_2f

    .line 71
    return v2

    .line 73
    :cond_2f
    return v3

    .line 75
    .end local v0    # "address":[B
    .end local v4    # "net":I
    :cond_30
    move-object v0, p1

    check-cast v0, Lorg/jboss/netty/handler/ipfilter/CIDR4;

    .line 76
    .local v0, "o":Lorg/jboss/netty/handler/ipfilter/CIDR4;
    iget v4, v0, Lorg/jboss/netty/handler/ipfilter/CIDR4;->addressInt:I

    iget v5, p0, Lorg/jboss/netty/handler/ipfilter/CIDR4;->addressInt:I

    if-ne v4, v5, :cond_40

    iget v4, v0, Lorg/jboss/netty/handler/ipfilter/CIDR4;->cidrMask:I

    iget v5, p0, Lorg/jboss/netty/handler/ipfilter/CIDR4;->cidrMask:I

    if-ne v4, v5, :cond_40

    .line 77
    return v1

    .line 79
    :cond_40
    iget v1, v0, Lorg/jboss/netty/handler/ipfilter/CIDR4;->addressInt:I

    iget v4, p0, Lorg/jboss/netty/handler/ipfilter/CIDR4;->addressInt:I

    if-ge v1, v4, :cond_47

    .line 80
    return v3

    .line 81
    :cond_47
    iget v1, v0, Lorg/jboss/netty/handler/ipfilter/CIDR4;->addressInt:I

    iget v4, p0, Lorg/jboss/netty/handler/ipfilter/CIDR4;->addressInt:I

    if-le v1, v4, :cond_4e

    .line 82
    return v2

    .line 83
    :cond_4e
    iget v1, v0, Lorg/jboss/netty/handler/ipfilter/CIDR4;->cidrMask:I

    iget v4, p0, Lorg/jboss/netty/handler/ipfilter/CIDR4;->cidrMask:I

    if-ge v1, v4, :cond_55

    .line 85
    return v2

    .line 87
    :cond_55
    return v3
.end method

.method public contains(Ljava/net/InetAddress;)Z
    .registers 4
    .param p1, "inetAddress"    # Ljava/net/InetAddress;

    .line 92
    invoke-static {p1}, Lorg/jboss/netty/handler/ipfilter/CIDR4;->ipv4AddressToInt(Ljava/net/InetAddress;)I

    move-result v0

    .line 93
    .local v0, "search":I
    iget v1, p0, Lorg/jboss/netty/handler/ipfilter/CIDR4;->addressInt:I

    if-lt v0, v1, :cond_e

    iget v1, p0, Lorg/jboss/netty/handler/ipfilter/CIDR4;->addressEndInt:I

    if-gt v0, v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method public getEndAddress()Ljava/net/InetAddress;
    .registers 3

    .line 52
    :try_start_0
    iget v0, p0, Lorg/jboss/netty/handler/ipfilter/CIDR4;->addressEndInt:I

    invoke-static {v0}, Lorg/jboss/netty/handler/ipfilter/CIDR4;->intToIPv4Address(I)Ljava/net/InetAddress;

    move-result-object v0
    :try_end_6
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 53
    :catch_7
    move-exception v0

    .line 55
    .local v0, "e":Ljava/net/UnknownHostException;
    const/4 v1, 0x0

    return-object v1
.end method
