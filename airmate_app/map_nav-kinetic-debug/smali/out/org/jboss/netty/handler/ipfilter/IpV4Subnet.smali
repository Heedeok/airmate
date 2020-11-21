.class public Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;
.super Ljava/lang/Object;
.source "IpV4Subnet.java"

# interfaces
.implements Lorg/jboss/netty/handler/ipfilter/IpSet;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/jboss/netty/handler/ipfilter/IpSet;",
        "Ljava/lang/Comparable<",
        "Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;",
        ">;"
    }
.end annotation


# static fields
.field private static final BYTE_ADDRESS_MASK:I = 0xff

.field private static final SUBNET_MASK:I = -0x80000000

.field private static final logger:Lorg/jboss/netty/logging/InternalLogger;


# instance fields
.field private cidrMask:I

.field private inetAddress:Ljava/net/InetAddress;

.field private mask:I

.field private subnet:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 47
    const-class v0, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->logger:Lorg/jboss/netty/logging/InternalLogger;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->mask:I

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->inetAddress:Ljava/net/InetAddress;

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->subnet:I

    .line 69
    iput v0, p0, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->cidrMask:I

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "netAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->setNetAddress(Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;I)V
    .registers 3
    .param p1, "inetAddress"    # Ljava/net/InetAddress;
    .param p2, "cidrNetMask"    # I

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->setNetAddress(Ljava/net/InetAddress;I)V

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;Ljava/lang/String;)V
    .registers 3
    .param p1, "inetAddress"    # Ljava/net/InetAddress;
    .param p2, "netMask"    # Ljava/lang/String;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->setNetAddress(Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method private setCidrNetMask(I)V
    .registers 4
    .param p1, "cidrNetMask"    # I

    .line 189
    iput p1, p0, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->cidrMask:I

    .line 190
    iget v0, p0, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->cidrMask:I

    add-int/lit8 v0, v0, -0x1

    const/high16 v1, -0x80000000

    shr-int v0, v1, v0

    iput v0, p0, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->mask:I

    .line 191
    return-void
.end method

.method private setNetAddress(Ljava/lang/String;)V
    .registers 8
    .param p1, "netAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 102
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 103
    .local v0, "vec":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Object;>;"
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, "/"

    invoke-direct {v1, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .local v1, "st":Ljava/util/StringTokenizer;
    :goto_c
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 105
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 108
    :cond_1a
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-ge v3, v4, :cond_46

    .line 109
    invoke-virtual {v0, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->setNetId(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->setCidrNetMask(I)V

    goto :goto_5c

    .line 112
    :cond_46
    invoke-virtual {v0, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->setNetId(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->setNetMask(Ljava/lang/String;)V

    .line 115
    :goto_5c
    return-void
.end method

.method private setNetAddress(Ljava/net/InetAddress;I)V
    .registers 3
    .param p1, "inetAddress"    # Ljava/net/InetAddress;
    .param p2, "cidrNetMask"    # I

    .line 119
    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->setNetId(Ljava/net/InetAddress;)V

    .line 120
    invoke-direct {p0, p2}, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->setCidrNetMask(I)V

    .line 121
    return-void
.end method

.method private setNetAddress(Ljava/net/InetAddress;Ljava/lang/String;)V
    .registers 3
    .param p1, "inetAddress"    # Ljava/net/InetAddress;
    .param p2, "netMask"    # Ljava/lang/String;

    .line 125
    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->setNetId(Ljava/net/InetAddress;)V

    .line 126
    invoke-direct {p0, p2}, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->setNetMask(Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method private setNetId(Ljava/lang/String;)V
    .registers 3
    .param p1, "netId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 136
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 137
    .local v0, "inetAddress1":Ljava/net/InetAddress;
    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->setNetId(Ljava/net/InetAddress;)V

    .line 138
    return-void
.end method

.method private setNetId(Ljava/net/InetAddress;)V
    .registers 3
    .param p1, "inetAddress"    # Ljava/net/InetAddress;

    .line 157
    iput-object p1, p0, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->inetAddress:Ljava/net/InetAddress;

    .line 158
    invoke-static {p1}, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->toInt(Ljava/net/InetAddress;)I

    move-result v0

    iput v0, p0, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->subnet:I

    .line 159
    return-void
.end method

.method private setNetMask(Ljava/lang/String;)V
    .registers 8
    .param p1, "netMask"    # Ljava/lang/String;

    .line 168
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "."

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .local v0, "nm":Ljava/util/StringTokenizer;
    const/4 v1, 0x0

    .line 170
    .local v1, "i":I
    const/4 v2, 0x4

    new-array v3, v2, [I

    .line 171
    .local v3, "netmask":[I
    :goto_b
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 172
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v1

    .line 173
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 175
    :cond_1e
    const/4 v4, 0x0

    .line 176
    .local v4, "mask1":I
    const/4 v1, 0x0

    :goto_20
    if-ge v1, v2, :cond_2c

    .line 177
    aget v5, v3, v1

    invoke-static {v5}, Ljava/lang/Integer;->bitCount(I)I

    move-result v5

    add-int/2addr v4, v5

    .line 176
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 179
    :cond_2c
    invoke-direct {p0, v4}, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->setCidrNetMask(I)V

    .line 180
    return-void
.end method

.method private static toInt(Ljava/net/InetAddress;)I
    .registers 8
    .param p0, "inetAddress1"    # Ljava/net/InetAddress;

    .line 146
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 147
    .local v0, "address":[B
    const/4 v1, 0x0

    .line 148
    .local v1, "net":I
    move-object v2, v0

    .local v2, "arr$":[B
    array-length v3, v2

    .local v3, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_8
    if-ge v4, v3, :cond_14

    aget-byte v5, v2, v4

    .line 149
    .local v5, "addres":B
    shl-int/lit8 v1, v1, 0x8

    .line 150
    and-int/lit16 v6, v5, 0xff

    or-int/2addr v1, v6

    .line 148
    .end local v5    # "addres":B
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 152
    .end local v2    # "arr$":[B
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    :cond_14
    return v1
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 45
    move-object v0, p1

    check-cast v0, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->compareTo(Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;)I
    .registers 6
    .param p1, "o"    # Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;

    .line 242
    iget v0, p1, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->subnet:I

    iget v1, p0, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->subnet:I

    if-ne v0, v1, :cond_e

    iget v0, p1, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->cidrMask:I

    iget v1, p0, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->cidrMask:I

    if-ne v0, v1, :cond_e

    .line 243
    const/4 v0, 0x0

    return v0

    .line 245
    :cond_e
    iget v0, p1, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->subnet:I

    iget v1, p0, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->subnet:I

    const/4 v2, 0x1

    if-ge v0, v1, :cond_16

    .line 246
    return v2

    .line 247
    :cond_16
    iget v0, p1, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->subnet:I

    iget v1, p0, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->subnet:I

    const/4 v3, -0x1

    if-le v0, v1, :cond_1e

    .line 248
    return v3

    .line 249
    :cond_1e
    iget v0, p1, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->cidrMask:I

    iget v1, p0, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->cidrMask:I

    if-ge v0, v1, :cond_25

    .line 251
    return v3

    .line 253
    :cond_25
    return v2
.end method

.method public contains(Ljava/lang/String;)Z
    .registers 4
    .param p1, "ipAddr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 202
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 203
    .local v0, "inetAddress1":Ljava/net/InetAddress;
    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->contains(Ljava/net/InetAddress;)Z

    move-result v1

    return v1
.end method

.method public contains(Ljava/net/InetAddress;)Z
    .registers 5
    .param p1, "inetAddress1"    # Ljava/net/InetAddress;

    .line 214
    iget v0, p0, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->mask:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_7

    .line 216
    return v1

    .line 218
    :cond_7
    invoke-static {p1}, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->toInt(Ljava/net/InetAddress;)I

    move-result v0

    iget v2, p0, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->mask:I

    and-int/2addr v0, v2

    iget v2, p0, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->subnet:I

    if-ne v0, v2, :cond_13

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 228
    instance-of v0, p1, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 229
    return v1

    .line 231
    :cond_6
    move-object v0, p1

    check-cast v0, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;

    .line 232
    .local v0, "ipV4Subnet":Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;
    iget v2, v0, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->subnet:I

    iget v3, p0, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->subnet:I

    if-ne v2, v3, :cond_17

    iget v2, v0, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->cidrMask:I

    iget v3, p0, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->cidrMask:I

    if-ne v2, v3, :cond_17

    const/4 v1, 0x1

    nop

    :cond_17
    return v1
.end method

.method public hashCode()I
    .registers 2

    .line 237
    iget v0, p0, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->subnet:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->inetAddress:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->cidrMask:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
