.class public Ljavax/jmdns/impl/HostInfo;
.super Ljava/lang/Object;
.source "HostInfo.java"

# interfaces
.implements Ljavax/jmdns/impl/DNSStatefulObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/jmdns/impl/HostInfo$HostInfoState;
    }
.end annotation


# static fields
.field private static logger:Ljava/util/logging/Logger;


# instance fields
.field protected _address:Ljava/net/InetAddress;

.field protected _interfaze:Ljava/net/NetworkInterface;

.field protected _name:Ljava/lang/String;

.field private final _state:Ljavax/jmdns/impl/HostInfo$HostInfoState;

.field private hostNameCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 33
    const-class v0, Ljavax/jmdns/impl/HostInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljavax/jmdns/impl/HostInfo;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>(Ljava/net/InetAddress;Ljava/lang/String;Ljavax/jmdns/impl/JmDNSImpl;)V
    .registers 8
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "dns"    # Ljavax/jmdns/impl/JmDNSImpl;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v0, Ljavax/jmdns/impl/HostInfo$HostInfoState;

    invoke-direct {v0, p3}, Ljavax/jmdns/impl/HostInfo$HostInfoState;-><init>(Ljavax/jmdns/impl/JmDNSImpl;)V

    iput-object v0, p0, Ljavax/jmdns/impl/HostInfo;->_state:Ljavax/jmdns/impl/HostInfo$HostInfoState;

    .line 124
    iput-object p1, p0, Ljavax/jmdns/impl/HostInfo;->_address:Ljava/net/InetAddress;

    .line 125
    iput-object p2, p0, Ljavax/jmdns/impl/HostInfo;->_name:Ljava/lang/String;

    .line 126
    if-eqz p1, :cond_21

    .line 128
    :try_start_10
    invoke-static {p1}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/impl/HostInfo;->_interfaze:Ljava/net/NetworkInterface;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_16} :catch_17

    .line 131
    goto :goto_21

    .line 129
    :catch_17
    move-exception v0

    .line 130
    .local v0, "exception":Ljava/lang/Exception;
    sget-object v1, Ljavax/jmdns/impl/HostInfo;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "LocalHostInfo() exception "

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 133
    .end local v0    # "exception":Ljava/lang/Exception;
    :cond_21
    :goto_21
    return-void
.end method

.method private getDNS4AddressRecord(ZI)Ljavax/jmdns/impl/DNSRecord$Address;
    .registers 10
    .param p1, "unique"    # Z
    .param p2, "ttl"    # I

    .line 211
    invoke-virtual {p0}, Ljavax/jmdns/impl/HostInfo;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/Inet4Address;

    if-nez v0, :cond_1f

    invoke-virtual {p0}, Ljavax/jmdns/impl/HostInfo;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Ljavax/jmdns/impl/HostInfo;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet6Address;

    invoke-virtual {v0}, Ljava/net/Inet6Address;->isIPv4CompatibleAddress()Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_1f

    .line 214
    :cond_1d
    const/4 v0, 0x0

    return-object v0

    .line 212
    :cond_1f
    :goto_1f
    new-instance v0, Ljavax/jmdns/impl/DNSRecord$IPv4Address;

    invoke-virtual {p0}, Ljavax/jmdns/impl/HostInfo;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    invoke-virtual {p0}, Ljavax/jmdns/impl/HostInfo;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v6

    move-object v1, v0

    move v4, p1

    move v5, p2

    invoke-direct/range {v1 .. v6}, Ljavax/jmdns/impl/DNSRecord$IPv4Address;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZILjava/net/InetAddress;)V

    return-object v0
.end method

.method private getDNS4ReverseAddressRecord(ZI)Ljavax/jmdns/impl/DNSRecord$Pointer;
    .registers 12
    .param p1, "unique"    # Z
    .param p2, "ttl"    # I

    .line 237
    invoke-virtual {p0}, Ljavax/jmdns/impl/HostInfo;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_30

    .line 238
    new-instance v0, Ljavax/jmdns/impl/DNSRecord$Pointer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/HostInfo;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".in-addr.arpa."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    invoke-virtual {p0}, Ljavax/jmdns/impl/HostInfo;->getName()Ljava/lang/String;

    move-result-object v6

    move-object v1, v0

    move v4, p1

    move v5, p2

    invoke-direct/range {v1 .. v6}, Ljavax/jmdns/impl/DNSRecord$Pointer;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZILjava/lang/String;)V

    return-object v0

    .line 240
    :cond_30
    invoke-virtual {p0}, Ljavax/jmdns/impl/HostInfo;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_a8

    invoke-virtual {p0}, Ljavax/jmdns/impl/HostInfo;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet6Address;

    invoke-virtual {v0}, Ljava/net/Inet6Address;->isIPv4CompatibleAddress()Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 241
    invoke-virtual {p0}, Ljavax/jmdns/impl/HostInfo;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 242
    .local v0, "rawAddress":[B
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xc

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xd

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xe

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xf

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 243
    .local v1, "address":Ljava/lang/String;
    new-instance v8, Ljavax/jmdns/impl/DNSRecord$Pointer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".in-addr.arpa."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    invoke-virtual {p0}, Ljavax/jmdns/impl/HostInfo;->getName()Ljava/lang/String;

    move-result-object v7

    move-object v2, v8

    move v5, p1

    move v6, p2

    invoke-direct/range {v2 .. v7}, Ljavax/jmdns/impl/DNSRecord$Pointer;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZILjava/lang/String;)V

    return-object v8

    .line 245
    .end local v0    # "rawAddress":[B
    .end local v1    # "address":Ljava/lang/String;
    :cond_a8
    const/4 v0, 0x0

    return-object v0
.end method

.method private getDNS6AddressRecord(ZI)Ljavax/jmdns/impl/DNSRecord$Address;
    .registers 10
    .param p1, "unique"    # Z
    .param p2, "ttl"    # I

    .line 218
    invoke-virtual {p0}, Ljavax/jmdns/impl/HostInfo;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_1b

    .line 219
    new-instance v0, Ljavax/jmdns/impl/DNSRecord$IPv6Address;

    invoke-virtual {p0}, Ljavax/jmdns/impl/HostInfo;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    invoke-virtual {p0}, Ljavax/jmdns/impl/HostInfo;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v6

    move-object v1, v0

    move v4, p1

    move v5, p2

    invoke-direct/range {v1 .. v6}, Ljavax/jmdns/impl/DNSRecord$IPv6Address;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZILjava/net/InetAddress;)V

    return-object v0

    .line 221
    :cond_1b
    const/4 v0, 0x0

    return-object v0
.end method

.method private getDNS6ReverseAddressRecord(ZI)Ljavax/jmdns/impl/DNSRecord$Pointer;
    .registers 10
    .param p1, "unique"    # Z
    .param p2, "ttl"    # I

    .line 249
    invoke-virtual {p0}, Ljavax/jmdns/impl/HostInfo;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_30

    .line 250
    new-instance v0, Ljavax/jmdns/impl/DNSRecord$Pointer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/HostInfo;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".ip6.arpa."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    invoke-virtual {p0}, Ljavax/jmdns/impl/HostInfo;->getName()Ljava/lang/String;

    move-result-object v6

    move-object v1, v0

    move v4, p1

    move v5, p2

    invoke-direct/range {v1 .. v6}, Ljavax/jmdns/impl/DNSRecord$Pointer;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZILjava/lang/String;)V

    return-object v0

    .line 252
    :cond_30
    const/4 v0, 0x0

    return-object v0
.end method

.method private static loopbackAddress()Ljava/net/InetAddress;
    .registers 2

    .line 110
    const/4 v0, 0x0

    :try_start_1
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1
    :try_end_5
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_5} :catch_6

    return-object v1

    .line 111
    :catch_6
    move-exception v1

    .line 112
    .local v1, "exception":Ljava/net/UnknownHostException;
    return-object v0
.end method

.method public static newHostInfo(Ljava/net/InetAddress;Ljavax/jmdns/impl/JmDNSImpl;Ljava/lang/String;)Ljavax/jmdns/impl/HostInfo;
    .registers 11
    .param p0, "address"    # Ljava/net/InetAddress;
    .param p1, "dns"    # Ljavax/jmdns/impl/JmDNSImpl;
    .param p2, "jmdnsName"    # Ljava/lang/String;

    .line 67
    const/4 v0, 0x0

    .line 68
    .local v0, "localhost":Ljavax/jmdns/impl/HostInfo;
    const-string v1, ""

    .line 69
    .local v1, "aName":Ljava/lang/String;
    move-object v2, p0

    .line 71
    .local v2, "addr":Ljava/net/InetAddress;
    if-nez v2, :cond_43

    .line 72
    :try_start_6
    const-string v3, "net.mdns.interface"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 73
    .local v3, "ip":Ljava/lang/String;
    if-eqz v3, :cond_14

    .line 74
    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    move-object v2, v4

    goto :goto_2e

    .line 76
    :cond_14
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v4

    move-object v2, v4

    .line 77
    invoke-virtual {v2}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 79
    invoke-static {}, Ljavax/jmdns/NetworkTopologyDiscovery$Factory;->getInstance()Ljavax/jmdns/NetworkTopologyDiscovery;

    move-result-object v4

    invoke-interface {v4}, Ljavax/jmdns/NetworkTopologyDiscovery;->getInetAddresses()[Ljava/net/InetAddress;

    move-result-object v4

    .line 80
    .local v4, "addresses":[Ljava/net/InetAddress;
    array-length v5, v4

    if-lez v5, :cond_2e

    .line 81
    const/4 v5, 0x0

    aget-object v5, v4, v5

    move-object v2, v5

    .line 85
    .end local v4    # "addresses":[Ljava/net/InetAddress;
    :cond_2e
    :goto_2e
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 86
    invoke-virtual {v2}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v4

    if-eqz v4, :cond_40

    .line 87
    sget-object v4, Ljavax/jmdns/impl/HostInfo;->logger:Ljava/util/logging/Logger;

    const-string v5, "Could not find any address beside the loopback."

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 89
    .end local v3    # "ip":Ljava/lang/String;
    :cond_40
    goto :goto_48

    .line 95
    :catch_41
    move-exception v3

    goto :goto_6a

    .line 90
    :cond_43
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 92
    :goto_48
    const-string v3, "in-addr.arpa"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5a

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_69

    .line 93
    :cond_5a
    if-eqz p2, :cond_64

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_64

    move-object v3, p2

    goto :goto_68

    :cond_64
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_68} :catch_41

    :goto_68
    move-object v1, v3

    .line 100
    :cond_69
    goto :goto_a0

    .line 95
    :goto_6a
    nop

    .line 96
    .local v3, "e":Ljava/io/IOException;
    sget-object v4, Ljavax/jmdns/impl/HostInfo;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not intialize the host network interface on "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "because of an error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    invoke-static {}, Ljavax/jmdns/impl/HostInfo;->loopbackAddress()Ljava/net/InetAddress;

    move-result-object v2

    .line 99
    if-eqz p2, :cond_9d

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_9d

    move-object v4, p2

    goto :goto_9f

    :cond_9d
    const-string v4, "computer"

    :goto_9f
    move-object v1, v4

    .line 102
    .end local v3    # "e":Ljava/io/IOException;
    :goto_a0
    const/16 v3, 0x2e

    const/16 v4, 0x2d

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 103
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".local."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 104
    new-instance v3, Ljavax/jmdns/impl/HostInfo;

    invoke-direct {v3, v2, v1, p1}, Ljavax/jmdns/impl/HostInfo;-><init>(Ljava/net/InetAddress;Ljava/lang/String;Ljavax/jmdns/impl/JmDNSImpl;)V

    move-object v0, v3

    .line 105
    return-object v0
.end method


# virtual methods
.method public advanceState(Ljavax/jmdns/impl/tasks/DNSTask;)Z
    .registers 3
    .param p1, "task"    # Ljavax/jmdns/impl/tasks/DNSTask;

    .line 296
    iget-object v0, p0, Ljavax/jmdns/impl/HostInfo;->_state:Ljavax/jmdns/impl/HostInfo$HostInfoState;

    invoke-virtual {v0, p1}, Ljavax/jmdns/impl/HostInfo$HostInfoState;->advanceState(Ljavax/jmdns/impl/tasks/DNSTask;)Z

    move-result v0

    return v0
.end method

.method public answers(ZI)Ljava/util/Collection;
    .registers 5
    .param p1, "unique"    # Z
    .param p2, "ttl"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Ljava/util/Collection<",
            "Ljavax/jmdns/impl/DNSRecord;",
            ">;"
        }
    .end annotation

    .line 271
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 272
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/DNSRecord;>;"
    invoke-direct {p0, p1, p2}, Ljavax/jmdns/impl/HostInfo;->getDNS4AddressRecord(ZI)Ljavax/jmdns/impl/DNSRecord$Address;

    move-result-object v1

    .line 273
    .local v1, "answer":Ljavax/jmdns/impl/DNSRecord;
    if-eqz v1, :cond_e

    .line 274
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    :cond_e
    invoke-direct {p0, p1, p2}, Ljavax/jmdns/impl/HostInfo;->getDNS6AddressRecord(ZI)Ljavax/jmdns/impl/DNSRecord$Address;

    move-result-object v1

    .line 277
    if-eqz v1, :cond_17

    .line 278
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    :cond_17
    return-object v0
.end method

.method public associateWithTask(Ljavax/jmdns/impl/tasks/DNSTask;Ljavax/jmdns/impl/constants/DNSState;)V
    .registers 4
    .param p1, "task"    # Ljavax/jmdns/impl/tasks/DNSTask;
    .param p2, "state"    # Ljavax/jmdns/impl/constants/DNSState;

    .line 320
    iget-object v0, p0, Ljavax/jmdns/impl/HostInfo;->_state:Ljavax/jmdns/impl/HostInfo$HostInfoState;

    invoke-virtual {v0, p1, p2}, Ljavax/jmdns/impl/HostInfo$HostInfoState;->associateWithTask(Ljavax/jmdns/impl/tasks/DNSTask;Ljavax/jmdns/impl/constants/DNSState;)V

    .line 321
    return-void
.end method

.method public cancelState()Z
    .registers 2

    .line 336
    iget-object v0, p0, Ljavax/jmdns/impl/HostInfo;->_state:Ljavax/jmdns/impl/HostInfo$HostInfoState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/HostInfo$HostInfoState;->cancelState()Z

    move-result v0

    return v0
.end method

.method public closeState()Z
    .registers 2

    .line 344
    iget-object v0, p0, Ljavax/jmdns/impl/HostInfo;->_state:Ljavax/jmdns/impl/HostInfo$HostInfoState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/HostInfo$HostInfoState;->closeState()Z

    move-result v0

    return v0
.end method

.method public conflictWithRecord(Ljavax/jmdns/impl/DNSRecord$Address;)Z
    .registers 5
    .param p1, "record"    # Ljavax/jmdns/impl/DNSRecord$Address;

    .line 162
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSRecord$Address;->getRecordType()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v0

    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSRecord$Address;->isUnique()Z

    move-result v1

    const/16 v2, 0xe10

    invoke-virtual {p0, v0, v1, v2}, Ljavax/jmdns/impl/HostInfo;->getDNSAddressRecord(Ljavax/jmdns/impl/constants/DNSRecordType;ZI)Ljavax/jmdns/impl/DNSRecord$Address;

    move-result-object v0

    .line 163
    .local v0, "hostAddress":Ljavax/jmdns/impl/DNSRecord$Address;
    const/4 v1, 0x0

    if-eqz v0, :cond_26

    .line 164
    invoke-virtual {v0, p1}, Ljavax/jmdns/impl/DNSRecord$Address;->sameType(Ljavax/jmdns/impl/DNSRecord;)Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-virtual {v0, p1}, Ljavax/jmdns/impl/DNSRecord$Address;->sameName(Ljavax/jmdns/impl/DNSRecord;)Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-virtual {v0, p1}, Ljavax/jmdns/impl/DNSRecord$Address;->sameValue(Ljavax/jmdns/impl/DNSRecord;)Z

    move-result v2

    if-nez v2, :cond_25

    const/4 v1, 0x1

    nop

    :cond_25
    return v1

    .line 166
    :cond_26
    return v1
.end method

.method getDNSAddressRecord(Ljavax/jmdns/impl/constants/DNSRecordType;ZI)Ljavax/jmdns/impl/DNSRecord$Address;
    .registers 6
    .param p1, "type"    # Ljavax/jmdns/impl/constants/DNSRecordType;
    .param p2, "unique"    # Z
    .param p3, "ttl"    # I

    .line 199
    sget-object v0, Ljavax/jmdns/impl/HostInfo$1;->$SwitchMap$javax$jmdns$impl$constants$DNSRecordType:[I

    invoke-virtual {p1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_18

    .line 207
    const/4 v0, 0x0

    return-object v0

    .line 204
    :pswitch_d
    invoke-direct {p0, p2, p3}, Ljavax/jmdns/impl/HostInfo;->getDNS6AddressRecord(ZI)Ljavax/jmdns/impl/DNSRecord$Address;

    move-result-object v0

    return-object v0

    .line 201
    :pswitch_12
    invoke-direct {p0, p2, p3}, Ljavax/jmdns/impl/HostInfo;->getDNS4AddressRecord(ZI)Ljavax/jmdns/impl/DNSRecord$Address;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_12
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method

.method getDNSReverseAddressRecord(Ljavax/jmdns/impl/constants/DNSRecordType;ZI)Ljavax/jmdns/impl/DNSRecord$Pointer;
    .registers 6
    .param p1, "type"    # Ljavax/jmdns/impl/constants/DNSRecordType;
    .param p2, "unique"    # Z
    .param p3, "ttl"    # I

    .line 225
    sget-object v0, Ljavax/jmdns/impl/HostInfo$1;->$SwitchMap$javax$jmdns$impl$constants$DNSRecordType:[I

    invoke-virtual {p1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_18

    .line 233
    const/4 v0, 0x0

    return-object v0

    .line 230
    :pswitch_d
    invoke-direct {p0, p2, p3}, Ljavax/jmdns/impl/HostInfo;->getDNS6ReverseAddressRecord(ZI)Ljavax/jmdns/impl/DNSRecord$Pointer;

    move-result-object v0

    return-object v0

    .line 227
    :pswitch_12
    invoke-direct {p0, p2, p3}, Ljavax/jmdns/impl/HostInfo;->getDNS4ReverseAddressRecord(ZI)Ljavax/jmdns/impl/DNSRecord$Pointer;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_12
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method

.method public getDns()Ljavax/jmdns/impl/JmDNSImpl;
    .registers 2

    .line 288
    iget-object v0, p0, Ljavax/jmdns/impl/HostInfo;->_state:Ljavax/jmdns/impl/HostInfo$HostInfoState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/HostInfo$HostInfoState;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    return-object v0
.end method

.method getInet4Address()Ljava/net/Inet4Address;
    .registers 2

    .line 144
    invoke-virtual {p0}, Ljavax/jmdns/impl/HostInfo;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_d

    .line 145
    iget-object v0, p0, Ljavax/jmdns/impl/HostInfo;->_address:Ljava/net/InetAddress;

    check-cast v0, Ljava/net/Inet4Address;

    return-object v0

    .line 147
    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method getInet6Address()Ljava/net/Inet6Address;
    .registers 2

    .line 151
    invoke-virtual {p0}, Ljavax/jmdns/impl/HostInfo;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_d

    .line 152
    iget-object v0, p0, Ljavax/jmdns/impl/HostInfo;->_address:Ljava/net/InetAddress;

    check-cast v0, Ljava/net/Inet6Address;

    return-object v0

    .line 154
    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .registers 2

    .line 140
    iget-object v0, p0, Ljavax/jmdns/impl/HostInfo;->_address:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getInterface()Ljava/net/NetworkInterface;
    .registers 2

    .line 158
    iget-object v0, p0, Ljavax/jmdns/impl/HostInfo;->_interfaze:Ljava/net/NetworkInterface;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 136
    iget-object v0, p0, Ljavax/jmdns/impl/HostInfo;->_name:Ljava/lang/String;

    return-object v0
.end method

.method declared-synchronized incrementHostName()Ljava/lang/String;
    .registers 7

    monitor-enter p0

    .line 170
    :try_start_1
    iget v0, p0, Ljavax/jmdns/impl/HostInfo;->hostNameCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljavax/jmdns/impl/HostInfo;->hostNameCount:I

    .line 171
    iget-object v0, p0, Ljavax/jmdns/impl/HostInfo;->_name:Ljava/lang/String;

    const-string v1, ".local."

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 172
    .local v0, "plocal":I
    iget-object v1, p0, Ljavax/jmdns/impl/HostInfo;->_name:Ljava/lang/String;

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 173
    .local v1, "punder":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ljavax/jmdns/impl/HostInfo;->_name:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-ne v1, v5, :cond_24

    move v5, v0

    goto :goto_25

    :cond_24
    move v5, v1

    :goto_25
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Ljavax/jmdns/impl/HostInfo;->hostNameCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ".local."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljavax/jmdns/impl/HostInfo;->_name:Ljava/lang/String;

    .line 174
    iget-object v2, p0, Ljavax/jmdns/impl/HostInfo;->_name:Ljava/lang/String;
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_45

    monitor-exit p0

    return-object v2

    .line 169
    .end local v0    # "plocal":I
    .end local v1    # "punder":I
    :catchall_45
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isAnnounced()Z
    .registers 2

    .line 376
    iget-object v0, p0, Ljavax/jmdns/impl/HostInfo;->_state:Ljavax/jmdns/impl/HostInfo$HostInfoState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/HostInfo$HostInfoState;->isAnnounced()Z

    move-result v0

    return v0
.end method

.method public isAnnouncing()Z
    .registers 2

    .line 368
    iget-object v0, p0, Ljavax/jmdns/impl/HostInfo;->_state:Ljavax/jmdns/impl/HostInfo$HostInfoState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/HostInfo$HostInfoState;->isAnnouncing()Z

    move-result v0

    return v0
.end method

.method public isAssociatedWithTask(Ljavax/jmdns/impl/tasks/DNSTask;Ljavax/jmdns/impl/constants/DNSState;)Z
    .registers 4
    .param p1, "task"    # Ljavax/jmdns/impl/tasks/DNSTask;
    .param p2, "state"    # Ljavax/jmdns/impl/constants/DNSState;

    .line 328
    iget-object v0, p0, Ljavax/jmdns/impl/HostInfo;->_state:Ljavax/jmdns/impl/HostInfo$HostInfoState;

    invoke-virtual {v0, p1, p2}, Ljavax/jmdns/impl/HostInfo$HostInfoState;->isAssociatedWithTask(Ljavax/jmdns/impl/tasks/DNSTask;Ljavax/jmdns/impl/constants/DNSState;)Z

    move-result v0

    return v0
.end method

.method public isCanceled()Z
    .registers 2

    .line 392
    iget-object v0, p0, Ljavax/jmdns/impl/HostInfo;->_state:Ljavax/jmdns/impl/HostInfo$HostInfoState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/HostInfo$HostInfoState;->isCanceled()Z

    move-result v0

    return v0
.end method

.method public isCanceling()Z
    .registers 2

    .line 384
    iget-object v0, p0, Ljavax/jmdns/impl/HostInfo;->_state:Ljavax/jmdns/impl/HostInfo$HostInfoState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/HostInfo$HostInfoState;->isCanceling()Z

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .registers 2

    .line 408
    iget-object v0, p0, Ljavax/jmdns/impl/HostInfo;->_state:Ljavax/jmdns/impl/HostInfo$HostInfoState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/HostInfo$HostInfoState;->isClosed()Z

    move-result v0

    return v0
.end method

.method public isClosing()Z
    .registers 2

    .line 400
    iget-object v0, p0, Ljavax/jmdns/impl/HostInfo;->_state:Ljavax/jmdns/impl/HostInfo$HostInfoState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/HostInfo$HostInfoState;->isClosing()Z

    move-result v0

    return v0
.end method

.method public isProbing()Z
    .registers 2

    .line 360
    iget-object v0, p0, Ljavax/jmdns/impl/HostInfo;->_state:Ljavax/jmdns/impl/HostInfo$HostInfoState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/HostInfo$HostInfoState;->isProbing()Z

    move-result v0

    return v0
.end method

.method public recoverState()Z
    .registers 2

    .line 352
    iget-object v0, p0, Ljavax/jmdns/impl/HostInfo;->_state:Ljavax/jmdns/impl/HostInfo$HostInfoState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/HostInfo$HostInfoState;->recoverState()Z

    move-result v0

    return v0
.end method

.method public removeAssociationWithTask(Ljavax/jmdns/impl/tasks/DNSTask;)V
    .registers 3
    .param p1, "task"    # Ljavax/jmdns/impl/tasks/DNSTask;

    .line 304
    iget-object v0, p0, Ljavax/jmdns/impl/HostInfo;->_state:Ljavax/jmdns/impl/HostInfo$HostInfoState;

    invoke-virtual {v0, p1}, Ljavax/jmdns/impl/HostInfo$HostInfoState;->removeAssociationWithTask(Ljavax/jmdns/impl/tasks/DNSTask;)V

    .line 305
    return-void
.end method

.method public revertState()Z
    .registers 2

    .line 312
    iget-object v0, p0, Ljavax/jmdns/impl/HostInfo;->_state:Ljavax/jmdns/impl/HostInfo$HostInfoState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/HostInfo$HostInfoState;->revertState()Z

    move-result v0

    return v0
.end method

.method shouldIgnorePacket(Ljava/net/DatagramPacket;)Z
    .registers 5
    .param p1, "packet"    # Ljava/net/DatagramPacket;

    .line 178
    const/4 v0, 0x0

    .line 179
    .local v0, "result":Z
    invoke-virtual {p0}, Ljavax/jmdns/impl/HostInfo;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    if-eqz v1, :cond_2f

    .line 180
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 181
    .local v1, "from":Ljava/net/InetAddress;
    if-eqz v1, :cond_2f

    .line 182
    invoke-virtual {v1}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-virtual {p0}, Ljavax/jmdns/impl/HostInfo;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v2

    if-nez v2, :cond_1e

    .line 187
    const/4 v0, 0x1

    .line 189
    :cond_1e
    invoke-virtual {v1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-virtual {p0}, Ljavax/jmdns/impl/HostInfo;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v2

    if-nez v2, :cond_2f

    .line 191
    const/4 v0, 0x1

    .line 195
    .end local v1    # "from":Ljava/net/InetAddress;
    :cond_2f
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 258
    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string v1, "local host info["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {p0}, Ljavax/jmdns/impl/HostInfo;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-virtual {p0}, Ljavax/jmdns/impl/HostInfo;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_19

    :cond_17
    const-string v1, "no name"

    :goto_19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {p0}, Ljavax/jmdns/impl/HostInfo;->getInterface()Ljava/net/NetworkInterface;

    move-result-object v1

    if-eqz v1, :cond_30

    invoke-virtual {p0}, Ljavax/jmdns/impl/HostInfo;->getInterface()Ljava/net/NetworkInterface;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    goto :goto_32

    :cond_30
    const-string v1, "???"

    :goto_32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    invoke-virtual {p0}, Ljavax/jmdns/impl/HostInfo;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    if-eqz v1, :cond_49

    invoke-virtual {p0}, Ljavax/jmdns/impl/HostInfo;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_4b

    :cond_49
    const-string v1, "no address"

    :goto_4b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    iget-object v1, p0, Ljavax/jmdns/impl/HostInfo;->_state:Ljavax/jmdns/impl/HostInfo$HostInfoState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 266
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public waitForAnnounced(J)Z
    .registers 4
    .param p1, "timeout"    # J

    .line 416
    iget-object v0, p0, Ljavax/jmdns/impl/HostInfo;->_state:Ljavax/jmdns/impl/HostInfo$HostInfoState;

    invoke-virtual {v0, p1, p2}, Ljavax/jmdns/impl/HostInfo$HostInfoState;->waitForAnnounced(J)Z

    move-result v0

    return v0
.end method

.method public waitForCanceled(J)Z
    .registers 4
    .param p1, "timeout"    # J

    .line 424
    iget-object v0, p0, Ljavax/jmdns/impl/HostInfo;->_address:Ljava/net/InetAddress;

    if-nez v0, :cond_6

    .line 426
    const/4 v0, 0x1

    return v0

    .line 428
    :cond_6
    iget-object v0, p0, Ljavax/jmdns/impl/HostInfo;->_state:Ljavax/jmdns/impl/HostInfo$HostInfoState;

    invoke-virtual {v0, p1, p2}, Ljavax/jmdns/impl/HostInfo$HostInfoState;->waitForCanceled(J)Z

    move-result v0

    return v0
.end method
