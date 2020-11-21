.class public Lorg/ros/address/InetAddressFactory;
.super Ljava/lang/Object;
.source "InetAddressFactory.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method private static filterInetAddresses(Ljava/util/Collection;)Ljava/net/InetAddress;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/net/InetAddress;",
            ">;)",
            "Ljava/net/InetAddress;"
        }
    .end annotation

    .line 68
    .local p0, "inetAddresses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 70
    .local v1, "address":Ljava/net/InetAddress;
    invoke-virtual {v1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v2

    if-nez v2, :cond_1d

    invoke-static {v1}, Lorg/ros/address/InetAddressFactory;->isIpv4(Ljava/net/InetAddress;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 71
    return-object v1

    .line 73
    .end local v1    # "address":Ljava/net/InetAddress;
    :cond_1d
    goto :goto_4

    .line 74
    :cond_1e
    new-instance v0, Lorg/ros/exception/RosRuntimeException;

    const-string v1, "No non-loopback interface found."

    invoke-direct {v0, v1}, Lorg/ros/exception/RosRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getAllInetAddresses()Ljava/util/Collection;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 50
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_8
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_8} :catch_39

    .line 53
    .local v0, "networkInterfaces":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    nop

    .line 52
    nop

    .line 54
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 55
    .local v1, "inetAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/NetworkInterface;

    .line 57
    .local v3, "networkInterface":Ljava/net/NetworkInterface;
    :try_start_1e
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 58
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_2f
    .catch Ljava/net/SocketException; {:try_start_1e .. :try_end_2f} :catch_31

    .line 62
    :cond_2f
    nop

    .line 63
    .end local v3    # "networkInterface":Ljava/net/NetworkInterface;
    goto :goto_12

    .line 60
    .restart local v3    # "networkInterface":Ljava/net/NetworkInterface;
    :catch_31
    move-exception v2

    .line 61
    .local v2, "e":Ljava/net/SocketException;
    new-instance v4, Lorg/ros/exception/RosRuntimeException;

    invoke-direct {v4, v2}, Lorg/ros/exception/RosRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 64
    .end local v2    # "e":Ljava/net/SocketException;
    .end local v3    # "networkInterface":Ljava/net/NetworkInterface;
    :cond_38
    return-object v1

    .line 51
    .end local v0    # "networkInterfaces":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    .end local v1    # "inetAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    :catch_39
    move-exception v0

    .line 52
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/ros/exception/RosRuntimeException;

    invoke-direct {v1, v0}, Lorg/ros/exception/RosRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static getAllInetAddressesByName(Ljava/lang/String;)Ljava/util/Collection;
    .registers 4
    .param p0, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 88
    :try_start_0
    invoke-static {p0}, Lorg/xbill/DNS/Address;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_4} :catch_5

    .line 95
    .local v0, "allAddressesByName":[Ljava/net/InetAddress;
    goto :goto_c

    .line 89
    .end local v0    # "allAddressesByName":[Ljava/net/InetAddress;
    :catch_5
    move-exception v0

    .line 91
    .local v0, "unused":Ljava/net/UnknownHostException;
    :try_start_6
    invoke-static {p0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v1
    :try_end_a
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_a} :catch_11

    .line 94
    .local v1, "allAddressesByName":[Ljava/net/InetAddress;
    nop

    .line 93
    move-object v0, v1

    .line 96
    .end local v1    # "allAddressesByName":[Ljava/net/InetAddress;
    .local v0, "allAddressesByName":[Ljava/net/InetAddress;
    :goto_c
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 92
    .local v0, "unused":Ljava/net/UnknownHostException;
    :catch_11
    move-exception v1

    .line 93
    .local v1, "e":Ljava/net/UnknownHostException;
    new-instance v2, Lorg/ros/exception/RosRuntimeException;

    invoke-direct {v2, v1}, Lorg/ros/exception/RosRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static isIpv4(Ljava/net/InetAddress;)Z
    .registers 3
    .param p0, "address"    # Ljava/net/InetAddress;

    .line 44
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static newFromHostString(Ljava/lang/String;)Ljava/net/InetAddress;
    .registers 5
    .param p0, "host"    # Ljava/lang/String;

    .line 119
    :try_start_0
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isInetAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 120
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->forString(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    invoke-static {p0, v0}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0

    .line 122
    :cond_13
    const-string v0, "localhost"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 123
    const-string v0, "localhost"

    const-string v1, "127.0.0.1"

    .line 124
    invoke-static {v1}, Lcom/google/common/net/InetAddresses;->forString(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    .line 123
    invoke-static {v0, v1}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    move-result-object v0
    :try_end_2b
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_2b} :catch_7e

    return-object v0

    .line 128
    :cond_2c
    nop

    .line 129
    invoke-static {p0}, Lorg/ros/address/InetAddressFactory;->getAllInetAddressesByName(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 131
    .local v0, "allAddressesByName":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_35
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 132
    .local v2, "address":Ljava/net/InetAddress;
    invoke-virtual {v2}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_4e

    invoke-static {v2}, Lorg/ros/address/InetAddressFactory;->isIpv4(Ljava/net/InetAddress;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 133
    return-object v2

    .line 135
    .end local v2    # "address":Ljava/net/InetAddress;
    :cond_4e
    goto :goto_35

    .line 137
    :cond_4f
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_53
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_67

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 138
    .restart local v2    # "address":Ljava/net/InetAddress;
    invoke-static {v2}, Lorg/ros/address/InetAddressFactory;->isIpv4(Ljava/net/InetAddress;)Z

    move-result v3

    if-eqz v3, :cond_66

    .line 139
    return-object v2

    .line 141
    .end local v2    # "address":Ljava/net/InetAddress;
    :cond_66
    goto :goto_53

    .line 142
    :cond_67
    new-instance v1, Lorg/ros/exception/RosRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to construct InetAddress for host: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/ros/exception/RosRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 126
    .end local v0    # "allAddressesByName":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    :catch_7e
    move-exception v0

    .line 127
    .local v0, "e":Ljava/net/UnknownHostException;
    new-instance v1, Lorg/ros/exception/RosRuntimeException;

    invoke-direct {v1, v0}, Lorg/ros/exception/RosRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static newLoopback()Ljava/net/InetAddress;
    .registers 1

    .line 146
    const-string v0, "127.0.0.1"

    invoke-static {v0}, Lorg/ros/address/InetAddressFactory;->newFromHostString(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public static newNonLoopback()Ljava/net/InetAddress;
    .registers 1

    .line 78
    invoke-static {}, Lorg/ros/address/InetAddressFactory;->getAllInetAddresses()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lorg/ros/address/InetAddressFactory;->filterInetAddresses(Ljava/util/Collection;)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public static newNonLoopbackForNetworkInterface(Ljava/net/NetworkInterface;)Ljava/net/InetAddress;
    .registers 2
    .param p0, "networkInterface"    # Ljava/net/NetworkInterface;

    .line 82
    invoke-virtual {p0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lorg/ros/address/InetAddressFactory;->filterInetAddresses(Ljava/util/Collection;)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method
