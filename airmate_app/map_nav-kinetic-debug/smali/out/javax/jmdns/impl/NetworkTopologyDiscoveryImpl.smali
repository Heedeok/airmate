.class public Ljavax/jmdns/impl/NetworkTopologyDiscoveryImpl;
.super Ljava/lang/Object;
.source "NetworkTopologyDiscoveryImpl.java"

# interfaces
.implements Ljavax/jmdns/NetworkTopologyDiscovery;


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final _isUp:Ljava/lang/reflect/Method;

.field private final _supportsMulticast:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 24
    const-class v0, Ljavax/jmdns/impl/NetworkTopologyDiscoveryImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljavax/jmdns/impl/NetworkTopologyDiscoveryImpl;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    :try_start_4
    const-class v1, Ljava/net/NetworkInterface;

    const-string v2, "isUp"

    move-object v3, v0

    check-cast v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_f} :catch_10

    .line 41
    .local v1, "isUp":Ljava/lang/reflect/Method;
    goto :goto_12

    .line 38
    .end local v1    # "isUp":Ljava/lang/reflect/Method;
    :catch_10
    move-exception v1

    .line 40
    .local v1, "exception":Ljava/lang/Exception;
    move-object v1, v0

    .line 42
    .local v1, "isUp":Ljava/lang/reflect/Method;
    :goto_12
    iput-object v1, p0, Ljavax/jmdns/impl/NetworkTopologyDiscoveryImpl;->_isUp:Ljava/lang/reflect/Method;

    .line 45
    :try_start_14
    const-class v2, Ljava/net/NetworkInterface;

    const-string v3, "supportsMulticast"

    move-object v4, v0

    check-cast v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1f} :catch_21

    move-object v0, v2

    .line 49
    .local v0, "supportsMulticast":Ljava/lang/reflect/Method;
    goto :goto_23

    .line 46
    .end local v0    # "supportsMulticast":Ljava/lang/reflect/Method;
    :catch_21
    move-exception v2

    .line 48
    .local v2, "exception":Ljava/lang/Exception;
    nop

    .line 50
    .end local v2    # "exception":Ljava/lang/Exception;
    .restart local v0    # "supportsMulticast":Ljava/lang/reflect/Method;
    :goto_23
    iput-object v0, p0, Ljavax/jmdns/impl/NetworkTopologyDiscoveryImpl;->_supportsMulticast:Ljava/lang/reflect/Method;

    .line 51
    return-void
.end method


# virtual methods
.method public getInetAddresses()[Ljava/net/InetAddress;
    .registers 9

    .line 59
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 62
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/InetAddress;>;"
    :try_start_5
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "nifs":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :goto_9
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_58

    .line 63
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    .line 64
    .local v2, "nif":Ljava/net/NetworkInterface;
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v3

    .local v3, "iaenum":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :goto_19
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_57

    .line 65
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    .line 66
    .local v4, "interfaceAddress":Ljava/net/InetAddress;
    sget-object v5, Ljavax/jmdns/impl/NetworkTopologyDiscoveryImpl;->logger:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 67
    sget-object v5, Ljavax/jmdns/impl/NetworkTopologyDiscoveryImpl;->logger:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found NetworkInterface/InetAddress: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " -- "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 69
    :cond_4d
    invoke-virtual {p0, v2, v4}, Ljavax/jmdns/impl/NetworkTopologyDiscoveryImpl;->useInetAddress(Ljava/net/NetworkInterface;Ljava/net/InetAddress;)Z

    move-result v5

    if-eqz v5, :cond_56

    .line 70
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_56
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_56} :catch_59

    .line 72
    .end local v4    # "interfaceAddress":Ljava/net/InetAddress;
    :cond_56
    goto :goto_19

    .line 73
    .end local v2    # "nif":Ljava/net/NetworkInterface;
    .end local v3    # "iaenum":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_57
    goto :goto_9

    .line 76
    .end local v1    # "nifs":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_58
    goto :goto_70

    .line 74
    :catch_59
    move-exception v1

    .line 75
    .local v1, "se":Ljava/net/SocketException;
    sget-object v2, Ljavax/jmdns/impl/NetworkTopologyDiscoveryImpl;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error while fetching network interfaces addresses: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 77
    .end local v1    # "se":Ljava/net/SocketException;
    :goto_70
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/net/InetAddress;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/net/InetAddress;

    return-object v1
.end method

.method public lockInetAddress(Ljava/net/InetAddress;)V
    .registers 2
    .param p1, "interfaceAddress"    # Ljava/net/InetAddress;

    .line 121
    return-void
.end method

.method public unlockInetAddress(Ljava/net/InetAddress;)V
    .registers 2
    .param p1, "interfaceAddress"    # Ljava/net/InetAddress;

    .line 130
    return-void
.end method

.method public useInetAddress(Ljava/net/NetworkInterface;Ljava/net/InetAddress;)Z
    .registers 7
    .param p1, "networkInterface"    # Ljava/net/NetworkInterface;
    .param p2, "interfaceAddress"    # Ljava/net/InetAddress;

    .line 87
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Ljavax/jmdns/impl/NetworkTopologyDiscoveryImpl;->_isUp:Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3} :catch_3a

    const/4 v2, 0x0

    if-eqz v1, :cond_1a

    .line 89
    :try_start_6
    iget-object v1, p0, Ljavax/jmdns/impl/NetworkTopologyDiscoveryImpl;->_isUp:Ljava/lang/reflect/Method;

    move-object v3, v2

    check-cast v3, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_15} :catch_19

    if-nez v1, :cond_18

    .line 90
    return v0

    .line 94
    :cond_18
    goto :goto_1a

    .line 92
    :catch_19
    move-exception v1

    .line 96
    :cond_1a
    :goto_1a
    :try_start_1a
    iget-object v1, p0, Ljavax/jmdns/impl/NetworkTopologyDiscoveryImpl;->_supportsMulticast:Ljava/lang/reflect/Method;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1c} :catch_3a

    if-eqz v1, :cond_31

    .line 98
    :try_start_1e
    iget-object v1, p0, Ljavax/jmdns/impl/NetworkTopologyDiscoveryImpl;->_supportsMulticast:Ljava/lang/reflect/Method;

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_2c} :catch_30

    if-nez v1, :cond_2f

    .line 99
    return v0

    .line 103
    :cond_2f
    goto :goto_31

    .line 101
    :catch_30
    move-exception v1

    .line 105
    :cond_31
    :goto_31
    :try_start_31
    invoke-virtual {p2}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v1
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_35} :catch_3a

    if-eqz v1, :cond_38

    .line 106
    return v0

    .line 108
    :cond_38
    const/4 v0, 0x1

    return v0

    .line 109
    :catch_3a
    move-exception v1

    .line 110
    .local v1, "exception":Ljava/lang/Exception;
    return v0
.end method
