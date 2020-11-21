.class public Lorg/jboss/netty/handler/ipfilter/IpSubnetFilterRule;
.super Lorg/jboss/netty/handler/ipfilter/IpSubnet;
.source "IpSubnetFilterRule.java"

# interfaces
.implements Lorg/jboss/netty/handler/ipfilter/IpFilterRule;


# instance fields
.field private isAllowRule:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 3
    .param p1, "allow"    # Z

    .line 36
    invoke-direct {p0}, Lorg/jboss/netty/handler/ipfilter/IpSubnet;-><init>()V

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jboss/netty/handler/ipfilter/IpSubnetFilterRule;->isAllowRule:Z

    .line 37
    iput-boolean p1, p0, Lorg/jboss/netty/handler/ipfilter/IpSubnetFilterRule;->isAllowRule:Z

    .line 38
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .registers 4
    .param p1, "allow"    # Z
    .param p2, "netAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 54
    invoke-direct {p0, p2}, Lorg/jboss/netty/handler/ipfilter/IpSubnet;-><init>(Ljava/lang/String;)V

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jboss/netty/handler/ipfilter/IpSubnetFilterRule;->isAllowRule:Z

    .line 55
    iput-boolean p1, p0, Lorg/jboss/netty/handler/ipfilter/IpSubnetFilterRule;->isAllowRule:Z

    .line 56
    return-void
.end method

.method public constructor <init>(ZLjava/net/InetAddress;I)V
    .registers 5
    .param p1, "allow"    # Z
    .param p2, "inetAddress"    # Ljava/net/InetAddress;
    .param p3, "cidrNetMask"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 42
    invoke-direct {p0, p2, p3}, Lorg/jboss/netty/handler/ipfilter/IpSubnet;-><init>(Ljava/net/InetAddress;I)V

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jboss/netty/handler/ipfilter/IpSubnetFilterRule;->isAllowRule:Z

    .line 43
    iput-boolean p1, p0, Lorg/jboss/netty/handler/ipfilter/IpSubnetFilterRule;->isAllowRule:Z

    .line 44
    return-void
.end method

.method public constructor <init>(ZLjava/net/InetAddress;Ljava/lang/String;)V
    .registers 5
    .param p1, "allow"    # Z
    .param p2, "inetAddress"    # Ljava/net/InetAddress;
    .param p3, "netMask"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 48
    invoke-direct {p0, p2, p3}, Lorg/jboss/netty/handler/ipfilter/IpSubnet;-><init>(Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jboss/netty/handler/ipfilter/IpSubnetFilterRule;->isAllowRule:Z

    .line 49
    iput-boolean p1, p0, Lorg/jboss/netty/handler/ipfilter/IpSubnetFilterRule;->isAllowRule:Z

    .line 50
    return-void
.end method


# virtual methods
.method public isAllowRule()Z
    .registers 2

    .line 59
    iget-boolean v0, p0, Lorg/jboss/netty/handler/ipfilter/IpSubnetFilterRule;->isAllowRule:Z

    return v0
.end method

.method public isDenyRule()Z
    .registers 2

    .line 63
    iget-boolean v0, p0, Lorg/jboss/netty/handler/ipfilter/IpSubnetFilterRule;->isAllowRule:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
