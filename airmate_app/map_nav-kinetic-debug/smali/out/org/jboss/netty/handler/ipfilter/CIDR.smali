.class public abstract Lorg/jboss/netty/handler/ipfilter/CIDR;
.super Ljava/lang/Object;
.source "CIDR.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/jboss/netty/handler/ipfilter/CIDR;",
        ">;"
    }
.end annotation


# instance fields
.field protected baseAddress:Ljava/net/InetAddress;

.field protected cidrMask:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addressStringToInet(Ljava/lang/String;)Ljava/net/InetAddress;
    .registers 2
    .param p0, "addr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 159
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public static getIpV4FromIpV6(Ljava/net/Inet6Address;)[B
    .registers 6
    .param p0, "address"    # Ljava/net/Inet6Address;

    .line 210
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    .line 211
    .local v0, "baddr":[B
    const/4 v1, 0x0

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    const/16 v3, 0x9

    if-ge v2, v3, :cond_19

    .line 212
    aget-byte v3, v0, v2

    if-nez v3, :cond_11

    .line 211
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 213
    :cond_11
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "This IPv6 address cannot be used in IPv4 context"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 216
    .end local v2    # "i":I
    :cond_19
    const/16 v2, 0xa

    aget-byte v3, v0, v2

    const/16 v4, 0xff

    if-eqz v3, :cond_25

    aget-byte v2, v0, v2

    if-ne v2, v4, :cond_30

    :cond_25
    const/16 v2, 0xb

    aget-byte v3, v0, v2

    if-eqz v3, :cond_38

    aget-byte v2, v0, v2

    if-ne v2, v4, :cond_30

    goto :goto_38

    .line 217
    :cond_30
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "This IPv6 address cannot be used in IPv4 context"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 219
    :cond_38
    :goto_38
    const/4 v2, 0x4

    new-array v2, v2, [B

    const/16 v3, 0xc

    aget-byte v3, v0, v3

    aput-byte v3, v2, v1

    const/16 v1, 0xd

    aget-byte v1, v0, v1

    const/4 v3, 0x1

    aput-byte v1, v2, v3

    const/4 v1, 0x2

    const/16 v3, 0xe

    aget-byte v3, v0, v3

    aput-byte v3, v2, v1

    const/4 v1, 0x3

    const/16 v3, 0xf

    aget-byte v3, v0, v3

    aput-byte v3, v2, v1

    return-object v2
.end method

.method public static getIpV6FromIpV4(Ljava/net/Inet4Address;)[B
    .registers 8
    .param p0, "address"    # Ljava/net/Inet4Address;

    .line 230
    invoke-virtual {p0}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v0

    .line 231
    .local v0, "baddr":[B
    const/16 v1, 0x10

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte v2, v1, v2

    const/4 v3, 0x1

    aput-byte v2, v1, v3

    const/4 v4, 0x2

    aput-byte v2, v1, v4

    const/4 v5, 0x3

    aput-byte v2, v1, v5

    const/4 v6, 0x4

    aput-byte v2, v1, v6

    const/4 v6, 0x5

    aput-byte v2, v1, v6

    const/4 v6, 0x6

    aput-byte v2, v1, v6

    const/4 v6, 0x7

    aput-byte v2, v1, v6

    const/16 v6, 0x8

    aput-byte v2, v1, v6

    const/16 v6, 0x9

    aput-byte v2, v1, v6

    const/16 v6, 0xa

    aput-byte v2, v1, v6

    const/16 v6, 0xb

    aput-byte v2, v1, v6

    aget-byte v2, v0, v2

    const/16 v6, 0xc

    aput-byte v2, v1, v6

    aget-byte v2, v0, v3

    const/16 v3, 0xd

    aput-byte v2, v1, v3

    aget-byte v2, v0, v4

    const/16 v3, 0xe

    aput-byte v2, v1, v3

    aget-byte v2, v0, v5

    const/16 v3, 0xf

    aput-byte v2, v1, v3

    return-object v1
.end method

.method private static getNetMask(Ljava/lang/String;)I
    .registers 7
    .param p0, "netMask"    # Ljava/lang/String;

    .line 170
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "."

    invoke-direct {v0, p0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .local v0, "nm":Ljava/util/StringTokenizer;
    const/4 v1, 0x0

    .line 172
    .local v1, "i":I
    const/4 v2, 0x4

    new-array v3, v2, [I

    .line 173
    .local v3, "netmask":[I
    :goto_b
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 174
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v1

    .line 175
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 177
    :cond_1e
    const/4 v4, 0x0

    .line 178
    .local v4, "mask1":I
    const/4 v1, 0x0

    :goto_20
    if-ge v1, v2, :cond_2c

    .line 179
    aget v5, v3, v1

    invoke-static {v5}, Ljava/lang/Integer;->bitCount(I)I

    move-result v5

    add-int/2addr v4, v5

    .line 178
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 181
    :cond_2c
    return v4
.end method

.method public static newCIDR(Ljava/lang/String;)Lorg/jboss/netty/handler/ipfilter/CIDR;
    .registers 9
    .param p0, "cidr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 89
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 90
    .local v0, "p":I
    if-ltz v0, :cond_4e

    .line 93
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, "addrString":Ljava/lang/String;
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, "maskString":Ljava/lang/String;
    invoke-static {v1}, Lorg/jboss/netty/handler/ipfilter/CIDR;->addressStringToInet(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    .line 96
    .local v3, "addr":Ljava/net/InetAddress;
    const/4 v4, 0x0

    .line 97
    .local v4, "mask":I
    const-string v5, "."

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_26

    .line 98
    const/4 v5, -0x1

    invoke-static {v2, v5}, Lorg/jboss/netty/handler/ipfilter/CIDR;->parseInt(Ljava/lang/String;I)I

    move-result v4

    goto :goto_30

    .line 100
    :cond_26
    invoke-static {v2}, Lorg/jboss/netty/handler/ipfilter/CIDR;->getNetMask(Ljava/lang/String;)I

    move-result v4

    .line 101
    instance-of v5, v3, Ljava/net/Inet6Address;

    if-eqz v5, :cond_30

    .line 102
    add-int/lit8 v4, v4, 0x60

    .line 105
    :cond_30
    :goto_30
    if-ltz v4, :cond_37

    .line 108
    invoke-static {v3, v4}, Lorg/jboss/netty/handler/ipfilter/CIDR;->newCIDR(Ljava/net/InetAddress;I)Lorg/jboss/netty/handler/ipfilter/CIDR;

    move-result-object v5

    return-object v5

    .line 106
    :cond_37
    new-instance v5, Ljava/net/UnknownHostException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid mask length used: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 91
    .end local v1    # "addrString":Ljava/lang/String;
    .end local v2    # "maskString":Ljava/lang/String;
    .end local v3    # "addr":Ljava/net/InetAddress;
    .end local v4    # "mask":I
    :cond_4e
    new-instance v1, Ljava/net/UnknownHostException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid CIDR notation used: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static newCIDR(Ljava/net/InetAddress;I)Lorg/jboss/netty/handler/ipfilter/CIDR;
    .registers 5
    .param p0, "baseAddress"    # Ljava/net/InetAddress;
    .param p1, "cidrMask"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 39
    if-ltz p1, :cond_4e

    .line 42
    instance-of v0, p0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_2a

    .line 43
    const/16 v0, 0x20

    if-gt p1, v0, :cond_13

    .line 46
    new-instance v0, Lorg/jboss/netty/handler/ipfilter/CIDR4;

    move-object v1, p0

    check-cast v1, Ljava/net/Inet4Address;

    invoke-direct {v0, v1, p1}, Lorg/jboss/netty/handler/ipfilter/CIDR4;-><init>(Ljava/net/Inet4Address;I)V

    return-object v0

    .line 44
    :cond_13
    new-instance v0, Ljava/net/UnknownHostException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid mask length used: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_2a
    const/16 v0, 0x80

    if-gt p1, v0, :cond_37

    .line 52
    new-instance v0, Lorg/jboss/netty/handler/ipfilter/CIDR6;

    move-object v1, p0

    check-cast v1, Ljava/net/Inet6Address;

    invoke-direct {v0, v1, p1}, Lorg/jboss/netty/handler/ipfilter/CIDR6;-><init>(Ljava/net/Inet6Address;I)V

    return-object v0

    .line 50
    :cond_37
    new-instance v0, Ljava/net/UnknownHostException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid mask length used: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_4e
    new-instance v0, Ljava/net/UnknownHostException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid mask length used: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static newCIDR(Ljava/net/InetAddress;Ljava/lang/String;)Lorg/jboss/netty/handler/ipfilter/CIDR;
    .registers 6
    .param p0, "baseAddress"    # Ljava/net/InetAddress;
    .param p1, "scidrMask"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 61
    invoke-static {p1}, Lorg/jboss/netty/handler/ipfilter/CIDR;->getNetMask(Ljava/lang/String;)I

    move-result v0

    .line 62
    .local v0, "cidrMask":I
    if-ltz v0, :cond_54

    .line 65
    instance-of v1, p0, Ljava/net/Inet4Address;

    if-eqz v1, :cond_2e

    .line 66
    const/16 v1, 0x20

    if-gt v0, v1, :cond_17

    .line 69
    new-instance v1, Lorg/jboss/netty/handler/ipfilter/CIDR4;

    move-object v2, p0

    check-cast v2, Ljava/net/Inet4Address;

    invoke-direct {v1, v2, v0}, Lorg/jboss/netty/handler/ipfilter/CIDR4;-><init>(Ljava/net/Inet4Address;I)V

    return-object v1

    .line 67
    :cond_17
    new-instance v1, Ljava/net/UnknownHostException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid mask length used: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 71
    :cond_2e
    add-int/lit8 v0, v0, 0x60

    .line 73
    const/16 v1, 0x80

    if-gt v0, v1, :cond_3d

    .line 76
    new-instance v1, Lorg/jboss/netty/handler/ipfilter/CIDR6;

    move-object v2, p0

    check-cast v2, Ljava/net/Inet6Address;

    invoke-direct {v1, v2, v0}, Lorg/jboss/netty/handler/ipfilter/CIDR6;-><init>(Ljava/net/Inet6Address;I)V

    return-object v1

    .line 74
    :cond_3d
    new-instance v1, Ljava/net/UnknownHostException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid mask length used: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 63
    :cond_54
    new-instance v1, Ljava/net/UnknownHostException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid mask length used: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static parseInt(Ljava/lang/String;I)I
    .registers 4
    .param p0, "intstr"    # Ljava/lang/String;
    .param p1, "def"    # I

    .line 192
    if-nez p0, :cond_3

    .line 193
    return p1

    .line 196
    :cond_3
    :try_start_3
    invoke-static {p0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_7} :catch_8

    .line 199
    .local v0, "res":Ljava/lang/Integer;
    goto :goto_f

    .line 197
    .end local v0    # "res":Ljava/lang/Integer;
    :catch_8
    move-exception v0

    .line 198
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v0, v1

    .line 200
    .local v0, "res":Ljava/lang/Integer;
    :goto_f
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method


# virtual methods
.method public abstract contains(Ljava/net/InetAddress;)Z
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "arg0"    # Ljava/lang/Object;

    .line 141
    instance-of v0, p1, Lorg/jboss/netty/handler/ipfilter/CIDR;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 142
    return v1

    .line 144
    :cond_6
    move-object v0, p1

    check-cast v0, Lorg/jboss/netty/handler/ipfilter/CIDR;

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/ipfilter/CIDR;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_11

    const/4 v1, 0x1

    nop

    :cond_11
    return v1
.end method

.method public getBaseAddress()Ljava/net/InetAddress;
    .registers 2

    .line 113
    iget-object v0, p0, Lorg/jboss/netty/handler/ipfilter/CIDR;->baseAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public abstract getEndAddress()Ljava/net/InetAddress;
.end method

.method public getMask()I
    .registers 2

    .line 118
    iget v0, p0, Lorg/jboss/netty/handler/ipfilter/CIDR;->cidrMask:I

    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 149
    iget-object v0, p0, Lorg/jboss/netty/handler/ipfilter/CIDR;->baseAddress:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/jboss/netty/handler/ipfilter/CIDR;->baseAddress:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/jboss/netty/handler/ipfilter/CIDR;->cidrMask:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
