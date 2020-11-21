.class public Lorg/jboss/netty/handler/ipfilter/IpSubnet;
.super Ljava/lang/Object;
.source "IpSubnet.java"

# interfaces
.implements Lorg/jboss/netty/handler/ipfilter/IpSet;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/jboss/netty/handler/ipfilter/IpSet;",
        "Ljava/lang/Comparable<",
        "Lorg/jboss/netty/handler/ipfilter/IpSubnet;",
        ">;"
    }
.end annotation


# static fields
.field private static final logger:Lorg/jboss/netty/logging/InternalLogger;


# instance fields
.field private final cidr:Lorg/jboss/netty/handler/ipfilter/CIDR;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 59
    const-class v0, Lorg/jboss/netty/handler/ipfilter/IpSubnet;

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/handler/ipfilter/IpSubnet;->logger:Lorg/jboss/netty/logging/InternalLogger;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jboss/netty/handler/ipfilter/IpSubnet;->cidr:Lorg/jboss/netty/handler/ipfilter/CIDR;

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "netAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-static {p1}, Lorg/jboss/netty/handler/ipfilter/CIDR;->newCIDR(Ljava/lang/String;)Lorg/jboss/netty/handler/ipfilter/CIDR;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/ipfilter/IpSubnet;->cidr:Lorg/jboss/netty/handler/ipfilter/CIDR;

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;I)V
    .registers 4
    .param p1, "inetAddress"    # Ljava/net/InetAddress;
    .param p2, "cidrNetMask"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-static {p1, p2}, Lorg/jboss/netty/handler/ipfilter/CIDR;->newCIDR(Ljava/net/InetAddress;I)Lorg/jboss/netty/handler/ipfilter/CIDR;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/ipfilter/IpSubnet;->cidr:Lorg/jboss/netty/handler/ipfilter/CIDR;

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;Ljava/lang/String;)V
    .registers 4
    .param p1, "inetAddress"    # Ljava/net/InetAddress;
    .param p2, "netMask"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    invoke-static {p1, p2}, Lorg/jboss/netty/handler/ipfilter/CIDR;->newCIDR(Ljava/net/InetAddress;Ljava/lang/String;)Lorg/jboss/netty/handler/ipfilter/CIDR;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/ipfilter/IpSubnet;->cidr:Lorg/jboss/netty/handler/ipfilter/CIDR;

    .line 92
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 57
    move-object v0, p1

    check-cast v0, Lorg/jboss/netty/handler/ipfilter/IpSubnet;

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/ipfilter/IpSubnet;->compareTo(Lorg/jboss/netty/handler/ipfilter/IpSubnet;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/jboss/netty/handler/ipfilter/IpSubnet;)I
    .registers 4
    .param p1, "o"    # Lorg/jboss/netty/handler/ipfilter/IpSubnet;

    .line 143
    iget-object v0, p0, Lorg/jboss/netty/handler/ipfilter/IpSubnet;->cidr:Lorg/jboss/netty/handler/ipfilter/CIDR;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/ipfilter/CIDR;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lorg/jboss/netty/handler/ipfilter/IpSubnet;->cidr:Lorg/jboss/netty/handler/ipfilter/CIDR;

    invoke-virtual {v1}, Lorg/jboss/netty/handler/ipfilter/CIDR;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public contains(Ljava/lang/String;)Z
    .registers 4
    .param p1, "ipAddr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 103
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 104
    .local v0, "inetAddress1":Ljava/net/InetAddress;
    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/ipfilter/IpSubnet;->contains(Ljava/net/InetAddress;)Z

    move-result v1

    return v1
.end method

.method public contains(Ljava/net/InetAddress;)Z
    .registers 3
    .param p1, "inetAddress"    # Ljava/net/InetAddress;

    .line 115
    iget-object v0, p0, Lorg/jboss/netty/handler/ipfilter/IpSubnet;->cidr:Lorg/jboss/netty/handler/ipfilter/CIDR;

    if-nez v0, :cond_6

    .line 117
    const/4 v0, 0x1

    return v0

    .line 119
    :cond_6
    iget-object v0, p0, Lorg/jboss/netty/handler/ipfilter/IpSubnet;->cidr:Lorg/jboss/netty/handler/ipfilter/CIDR;

    invoke-virtual {v0, p1}, Lorg/jboss/netty/handler/ipfilter/CIDR;->contains(Ljava/net/InetAddress;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 129
    instance-of v0, p1, Lorg/jboss/netty/handler/ipfilter/IpSubnet;

    if-nez v0, :cond_6

    .line 130
    const/4 v0, 0x0

    return v0

    .line 132
    :cond_6
    move-object v0, p1

    check-cast v0, Lorg/jboss/netty/handler/ipfilter/IpSubnet;

    .line 133
    .local v0, "ipSubnet":Lorg/jboss/netty/handler/ipfilter/IpSubnet;
    iget-object v1, v0, Lorg/jboss/netty/handler/ipfilter/IpSubnet;->cidr:Lorg/jboss/netty/handler/ipfilter/CIDR;

    iget-object v2, p0, Lorg/jboss/netty/handler/ipfilter/IpSubnet;->cidr:Lorg/jboss/netty/handler/ipfilter/CIDR;

    invoke-virtual {v1, v2}, Lorg/jboss/netty/handler/ipfilter/CIDR;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public hashCode()I
    .registers 2

    .line 138
    iget-object v0, p0, Lorg/jboss/netty/handler/ipfilter/IpSubnet;->cidr:Lorg/jboss/netty/handler/ipfilter/CIDR;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/ipfilter/CIDR;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 124
    iget-object v0, p0, Lorg/jboss/netty/handler/ipfilter/IpSubnet;->cidr:Lorg/jboss/netty/handler/ipfilter/CIDR;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/ipfilter/CIDR;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
