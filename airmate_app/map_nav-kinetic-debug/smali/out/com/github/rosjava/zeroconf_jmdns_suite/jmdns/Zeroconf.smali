.class public Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;
.super Ljava/lang/Object;
.source "Zeroconf.java"

# interfaces
.implements Ljavax/jmdns/ServiceListener;
.implements Ljavax/jmdns/ServiceTypeListener;
.implements Ljavax/jmdns/NetworkTopologyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf$DefaultLogger;
    }
.end annotation


# instance fields
.field default_listener_callback:Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/ZeroconfDiscoveryHandler;

.field jmmdns:Ljavax/jmdns/JmmDNS;

.field listener_callbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/ZeroconfDiscoveryHandler;",
            ">;"
        }
    .end annotation
.end field

.field listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field logger:Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/ZeroconfLogger;

.field services:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljavax/jmdns/ServiceInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-static {}, Ljavax/jmdns/JmmDNS$Factory;->getInstance()Ljavax/jmdns/JmmDNS;

    move-result-object v0

    iput-object v0, p0, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;->jmmdns:Ljavax/jmdns/JmmDNS;

    .line 75
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;->listeners:Ljava/util/Set;

    .line 76
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;->services:Ljava/util/Set;

    .line 77
    new-instance v0, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf$DefaultLogger;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf$DefaultLogger;-><init>(Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf$1;)V

    iput-object v0, p0, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;->logger:Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/ZeroconfLogger;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;->listener_callbacks:Ljava/util/Map;

    .line 79
    iput-object v1, p0, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;->default_listener_callback:Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/ZeroconfDiscoveryHandler;

    .line 85
    iget-object v0, p0, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;->jmmdns:Ljavax/jmdns/JmmDNS;

    invoke-interface {v0, p0}, Ljavax/jmdns/JmmDNS;->addNetworkTopologyListener(Ljavax/jmdns/NetworkTopologyListener;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/ZeroconfLogger;)V
    .registers 3
    .param p1, "logger"    # Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/ZeroconfLogger;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-static {}, Ljavax/jmdns/JmmDNS$Factory;->getInstance()Ljavax/jmdns/JmmDNS;

    move-result-object v0

    iput-object v0, p0, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;->jmmdns:Ljavax/jmdns/JmmDNS;

    .line 93
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;->listeners:Ljava/util/Set;

    .line 94
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;->services:Ljava/util/Set;

    .line 95
    iput-object p1, p0, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;->logger:Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/ZeroconfLogger;

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;->listener_callbacks:Ljava/util/Map;

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;->default_listener_callback:Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/ZeroconfDiscoveryHandler;

    .line 103
    iget-object v0, p0, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;->jmmdns:Ljavax/jmdns/JmmDNS;

    invoke-interface {v0, p0}, Ljavax/jmdns/JmmDNS;->addNetworkTopologyListener(Ljavax/jmdns/NetworkTopologyListener;)V

    .line 104
    return-void
.end method

.method private toDiscoveredService(Ljavax/jmdns/ServiceInfo;)Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;
    .registers 10
    .param p1, "service_info"    # Ljavax/jmdns/ServiceInfo;

    .line 430
    new-instance v0, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;

    invoke-direct {v0}, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;-><init>()V

    .line 431
    .local v0, "discovered_service":Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;->name:Ljava/lang/String;

    .line 432
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\."

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 433
    .local v1, "type_domain_str":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    aget-object v4, v1, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;->type:Ljava/lang/String;

    .line 434
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->getDomain()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;->domain:Ljava/lang/String;

    .line 435
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->getServer()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;->hostname:Ljava/lang/String;

    .line 436
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->getPort()I

    move-result v2

    iput v2, v0, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;->port:I

    .line 437
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->getInetAddresses()[Ljava/net/InetAddress;

    move-result-object v2

    array-length v4, v2

    :goto_48
    if-ge v3, v4, :cond_66

    aget-object v5, v2, v3

    .line 438
    .local v5, "inet_address":Ljava/net/InetAddress;
    instance-of v6, v5, Ljava/net/Inet4Address;

    if-eqz v6, :cond_5a

    .line 439
    iget-object v6, v0, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;->ipv4_addresses:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_63

    .line 441
    :cond_5a
    iget-object v6, v0, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;->ipv6_addresses:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    .end local v5    # "inet_address":Ljava/net/InetAddress;
    :goto_63
    add-int/lit8 v3, v3, 0x1

    goto :goto_48

    .line 444
    :cond_66
    return-object v0
.end method


# virtual methods
.method public addListener(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "service_type"    # Ljava/lang/String;
    .param p2, "domain"    # Ljava/lang/String;

    .line 113
    iget-object v0, p0, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;->default_listener_callback:Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/ZeroconfDiscoveryHandler;

    invoke-virtual {p0, p1, p2, v0}, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;->addListener(Ljava/lang/String;Ljava/lang/String;Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/ZeroconfDiscoveryHandler;)V

    .line 114
    return-void
.end method

.method public addListener(Ljava/lang/String;Ljava/lang/String;Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/ZeroconfDiscoveryHandler;)V
    .registers 8
    .param p1, "service_type"    # Ljava/lang/String;
    .param p2, "domain"    # Ljava/lang/String;
    .param p3, "listener_callback"    # Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/ZeroconfDiscoveryHandler;

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "service":Ljava/lang/String;
    iget-object v1, p0, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;->logger:Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/ZeroconfLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activating listener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/ZeroconfLogger;->println(Ljava/lang/String;)V

    .line 124
    iget-object v1, p0, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;->listeners:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 125
    if-eqz p3, :cond_3b

    .line 126
    iget-object v1, p0, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;->listener_callbacks:Ljava/util/Map;

    invoke-interface {v1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    :cond_3b
    iget-object v1, p0, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;->jmmdns:Ljavax/jmdns/JmmDNS;

    invoke-interface {v1, v0, p0}, Ljavax/jmdns/JmmDNS;->addServiceListener(Ljava/lang/String;Ljavax/jmdns/ServiceListener;)V

    .line 130
    return-void
.end method

.method public addService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 16
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "domain"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "description"    # Ljava/lang/String;

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "full_service_type":Ljava/lang/String;
    iget-object v1, p0, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;->logger:Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/ZeroconfLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Registering service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/ZeroconfLogger;->println(Ljava/lang/String;)V

    .line 164
    const-string v1, "description"

    .line 165
    .local v1, "service_key":Ljava/lang/String;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object v9, v2

    .line 166
    .local v9, "properties":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[B>;"
    invoke-virtual {p5}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, v0

    move-object v3, p1

    move v4, p4

    move-object v8, v9

    invoke-static/range {v2 .. v8}, Ljavax/jmdns/ServiceInfo;->create(Ljava/lang/String;Ljava/lang/String;IIIZLjava/util/Map;)Ljavax/jmdns/ServiceInfo;

    move-result-object v2

    .line 169
    .local v2, "service_info":Ljavax/jmdns/ServiceInfo;
    iget-object v3, p0, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;->services:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 171
    :try_start_51
    iget-object v3, p0, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;->jmmdns:Ljavax/jmdns/JmmDNS;

    invoke-interface {v3, v2}, Ljavax/jmdns/JmmDNS;->registerService(Ljavax/jmdns/ServiceInfo;)V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_56} :catch_57

    .line 174
    goto :goto_5b

    .line 172
    :catch_57
    move-exception v3

    .line 173
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 180
    .end local v3    # "e":Ljava/io/IOException;
    :cond_5b
    :goto_5b
    return-void
.end method

.method public display(Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;)V
    .registers 7
    .param p1, "discovered_service"    # Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;

    .line 376
    iget-object v0, p0, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;->logger:Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/ZeroconfLogger;

    const-string v1, "Discovered Service:"

    invoke-interface {v0, v1}, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/ZeroconfLogger;->println(Ljava/lang/String;)V

    .line 377
    iget-object v0, p0, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;->logger:Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/ZeroconfLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Name   : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/ZeroconfLogger;->println(Ljava/lang/String;)V

    .line 378
    iget-object v0, p0, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;->logger:Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/ZeroconfLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Type   : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/ZeroconfLogger;->println(Ljava/lang/String;)V

    .line 379
    iget-object v0, p0, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;->logger:Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/ZeroconfLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Port   : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;->port:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/ZeroconfLogger;->println(Ljava/lang/String;)V

    .line 380
    iget-object v0, p1, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;->ipv4_addresses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_55
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_78

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 381
    .local v1, "address":Ljava/lang/String;
    iget-object v2, p0, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;->logger:Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/ZeroconfLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Address: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/ZeroconfLogger;->println(Ljava/lang/String;)V

    .line 382
    .end local v1    # "address":Ljava/lang/String;
    goto :goto_55

    .line 383
    :cond_78
    iget-object v0, p1, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;->ipv6_addresses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 384
    .restart local v1    # "address":Ljava/lang/String;
    iget-object v2, p0, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;->logger:Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/ZeroconfLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Address: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/ZeroconfLogger;->println(Ljava/lang/String;)V

    .line 385
    .end local v1    # "address":Ljava/lang/String;
    goto :goto_7e

    .line 386
    :cond_a1
    return-void
.end method

.method public inetAddressAdded(Ljavax/jmdns/NetworkTopologyEvent;)V
    .registers 7
    .param p1, "event"    # Ljavax/jmdns/NetworkTopologyEvent;

    .line 324
    :try_start_0
    iget-object v0, p0, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;->logger:Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/ZeroconfLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[+] NetworkInterface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljavax/jmdns/NetworkTopologyEvent;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljavax/jmdns/NetworkTopologyEvent;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-static {v2}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/ZeroconfLogger;->println(Ljava/lang/String;)V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_37} :catch_38

    .line 327
    goto :goto_3c

    .line 325
    :catch_38
    move-exception v0

    .line 326
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 329
    .end local v0    # "e":Ljava/io/IOException;
    :goto_3c
    :try_start_3c
    invoke-virtual {p1}, Ljavax/jmdns/NetworkTopologyEvent;->getDNS()Ljavax/jmdns/JmDNS;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljavax/jmdns/JmDNS;->addServiceTypeListener(Ljavax/jmdns/ServiceTypeListener;)V

    .line 330
    iget-object v0, p0, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_49
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_78

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 331
    .local v1, "listener":Ljava/lang/String;
    iget-object v2, p0, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;->logger:Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/ZeroconfLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "      Adding service listener \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/ZeroconfLogger;->println(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p1}, Ljavax/jmdns/NetworkTopologyEvent;->getDNS()Ljavax/jmdns/JmDNS;

    move-result-object v2

    invoke-virtual {v2, v1, p0}, Ljavax/jmdns/JmDNS;->addServiceListener(Ljava/lang/String;Ljavax/jmdns/ServiceListener;)V

    .line 333
    .end local v1    # "listener":Ljava/lang/String;
    goto :goto_49

    .line 334
    :cond_78
    iget-object v0, p0, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;->services:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_103

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/jmdns/ServiceInfo;

    .line 335
    .local v1, "service":Ljavax/jmdns/ServiceInfo;
    iget-object v2, p0, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;->logger:Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/ZeroconfLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Publishing Service on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljavax/jmdns/NetworkTopologyEvent;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/ZeroconfLogger;->println(Ljava/lang/String;)V

    .line 336
    iget-object v2, p0, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;->logger:Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/ZeroconfLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Name   : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljavax/jmdns/ServiceInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/ZeroconfLogger;->println(Ljava/lang/String;)V

    .line 337
    iget-object v2, p0, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;->logger:Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/ZeroconfLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Type   : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljavax/jmdns/ServiceInfo;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/ZeroconfLogger;->println(Ljava/lang/String;)V

    .line 338
    iget-object v2, p0, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;->logger:Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/ZeroconfLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Port   : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljavax/jmdns/ServiceInfo;->getPort()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/ZeroconfLogger;->println(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p1}, Ljavax/jmdns/NetworkTopologyEvent;->getDNS()Ljavax/jmdns/JmDNS;

    move-result-object v2

    invoke-virtual {v1}, Ljavax/jmdns/ServiceInfo;->clone()Ljavax/jmdns/ServiceInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/jmdns/JmDNS;->registerService(Ljavax/jmdns/ServiceInfo;)V
    :try_end_101
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_101} :catch_104

    .line 340
    .end local v1    # "service":Ljavax/jmdns/ServiceInfo;
    goto/16 :goto_7e

    .line 343
    :cond_103
    goto :goto_108

    .line 341
    :catch_104
    move-exception v0

    .line 342
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 344
    .end local v0    # "e":Ljava/io/IOException;
    :goto_108
    return-void
.end method

.method public inetAddressRemoved(Ljavax/jmdns/NetworkTopologyEvent;)V
    .registers 8
    .param p1, "event"    # Ljavax/jmdns/NetworkTopologyEvent;

    .line 348
    invoke-virtual {p1}, Ljavax/jmdns/NetworkTopologyEvent;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 352
    .local v0, "event_address_str":Ljava/lang/String;
    iget-object v1, p0, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;->logger:Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/ZeroconfLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[-] NetworkInterface: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/ZeroconfLogger;->println(Ljava/lang/String;)V

    .line 358
    invoke-virtual {p1}, Ljavax/jmdns/NetworkTopologyEvent;->getDNS()Ljavax/jmdns/JmDNS;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljavax/jmdns/JmDNS;->removeServiceTypeListener(Ljavax/jmdns/ServiceTypeListener;)V

    .line 359
    iget-object v1, p0, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;->listeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 360
    .local v2, "listener":Ljava/lang/String;
    iget-object v3, p0, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;->logger:Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/ZeroconfLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "      Removing service listener \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/ZeroconfLogger;->println(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p1}, Ljavax/jmdns/NetworkTopologyEvent;->getDNS()Ljavax/jmdns/JmDNS;

    move-result-object v3

    invoke-virtual {v3, v2, p0}, Ljavax/jmdns/JmDNS;->removeServiceListener(Ljava/lang/String;Ljavax/jmdns/ServiceListener;)V

    .line 362
    .end local v2    # "listener":Ljava/lang/String;
    goto :goto_2b

    .line 363
    :cond_5a
    iget-object v1, p0, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;->services:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_60
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/jmdns/ServiceInfo;

    .line 364
    .local v2, "service":Ljavax/jmdns/ServiceInfo;
    iget-object v3, p0, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;->logger:Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/ZeroconfLogger;

    const-string v4, "Unpublishing Service:"

    invoke-interface {v3, v4}, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/ZeroconfLogger;->println(Ljava/lang/String;)V

    .line 365
    iget-object v3, p0, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;->logger:Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/ZeroconfLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Name   : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljavax/jmdns/ServiceInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/ZeroconfLogger;->println(Ljava/lang/String;)V

    .line 366
    iget-object v3, p0, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;->logger:Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/ZeroconfLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Type   : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljavax/jmdns/ServiceInfo;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/ZeroconfLogger;->println(Ljava/lang/String;)V

    .line 367
    iget-object v3, p0, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;->logger:Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/ZeroconfLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Port   : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljavax/jmdns/ServiceInfo;->getPort()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/ZeroconfLogger;->println(Ljava/lang/String;)V

    .line 368
    invoke-virtual {p1}, Ljavax/jmdns/NetworkTopologyEvent;->getDNS()Ljavax/jmdns/JmDNS;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljavax/jmdns/JmDNS;->unregisterService(Ljavax/jmdns/ServiceInfo;)V

    .line 369
    .end local v2    # "service":Ljavax/jmdns/ServiceInfo;
    goto :goto_60

    .line 370
    :cond_c9
    return-void
.end method

.method public listDiscoveredServices()Ljava/util/List;
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;",
            ">;"
        }
    .end annotation

    .line 189
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 190
    .local v1, "service_infos":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/ServiceInfo;>;"
    iget-object v2, v0, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;->listeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 191
    .local v3, "service":Ljava/lang/String;
    iget-object v4, v0, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;->jmmdns:Ljavax/jmdns/JmmDNS;

    invoke-interface {v4, v3}, Ljavax/jmdns/JmmDNS;->list(Ljava/lang/String;)[Ljavax/jmdns/ServiceInfo;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 192
    .end local v3    # "service":Ljava/lang/String;
    goto :goto_d

    .line 197
    :cond_27
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .local v2, "discovered_services":Ljava/util/List;, "Ljava/util/List<Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_30
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/jmdns/ServiceInfo;

    .line 199
    .local v4, "service_info":Ljavax/jmdns/ServiceInfo;
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 200
    .local v6, "service_found":Ljava/lang/Boolean;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_45
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_10e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;

    .line 201
    .local v8, "discovered_service":Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;
    invoke-virtual {v4}, Ljavax/jmdns/ServiceInfo;->getQualifiedName()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v8, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v8, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;->type:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v8, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;->domain:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10a

    .line 202
    invoke-virtual {v4}, Ljavax/jmdns/ServiceInfo;->getInetAddresses()[Ljava/net/InetAddress;

    move-result-object v7

    array-length v9, v7

    const/4 v10, 0x0

    :goto_88
    const/4 v11, 0x1

    if-ge v10, v9, :cond_105

    aget-object v12, v7, v10

    .line 203
    .local v12, "inet_address":Ljava/net/InetAddress;
    instance-of v13, v12, Ljava/net/Inet4Address;

    if-eqz v13, :cond_c9

    .line 204
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 205
    .local v13, "address_found":Ljava/lang/Boolean;
    iget-object v14, v8, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;->ipv4_addresses:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_9b
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_b9

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 206
    .local v15, "unique_address":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b6

    .line 207
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 208
    goto :goto_b9

    .line 210
    .end local v15    # "unique_address":Ljava/lang/String;
    :cond_b6
    nop

    .line 205
    const/4 v5, 0x0

    goto :goto_9b

    .line 211
    :cond_b9
    :goto_b9
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_c8

    .line 212
    iget-object v5, v8, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;->ipv4_addresses:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    .end local v13    # "address_found":Ljava/lang/Boolean;
    :cond_c8
    goto :goto_101

    .line 215
    :cond_c9
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 216
    .restart local v13    # "address_found":Ljava/lang/Boolean;
    iget-object v14, v8, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;->ipv6_addresses:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_d4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_f2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 217
    .restart local v15    # "unique_address":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ef

    .line 218
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 219
    goto :goto_f2

    .line 221
    .end local v15    # "unique_address":Ljava/lang/String;
    :cond_ef
    nop

    .line 216
    const/4 v5, 0x0

    goto :goto_d4

    .line 222
    :cond_f2
    :goto_f2
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_101

    .line 223
    iget-object v5, v8, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;->ipv6_addresses:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    .end local v12    # "inet_address":Ljava/net/InetAddress;
    .end local v13    # "address_found":Ljava/lang/Boolean;
    :cond_101
    :goto_101
    add-int/lit8 v10, v10, 0x1

    const/4 v5, 0x0

    goto :goto_88

    .line 227
    :cond_105
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 228
    goto :goto_10e

    .line 230
    .end local v8    # "discovered_service":Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;
    :cond_10a
    nop

    .line 200
    const/4 v5, 0x0

    goto/16 :goto_45

    .line 231
    :cond_10e
    :goto_10e
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_11b

    .line 232
    invoke-direct {v0, v4}, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;->toDiscoveredService(Ljavax/jmdns/ServiceInfo;)Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    .end local v4    # "service_info":Ljavax/jmdns/ServiceInfo;
    .end local v6    # "service_found":Ljava/lang/Boolean;
    :cond_11b
    goto/16 :goto_30

    .line 236
    :cond_11d
    return-object v2
.end method

.method public removeAllServices()V
    .registers 3

    .line 244
    iget-object v0, p0, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;->logger:Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/ZeroconfLogger;

    const-string v1, "Removing all services"

    invoke-interface {v0, v1}, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/ZeroconfLogger;->println(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;->jmmdns:Ljavax/jmdns/JmmDNS;

    invoke-interface {v0}, Ljavax/jmdns/JmmDNS;->unregisterAllServices()V

    .line 246
    iget-object v0, p0, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;->services:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 247
    return-void
.end method

.method public removeListener(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "service_type"    # Ljava/lang/String;
    .param p2, "domain"    # Ljava/lang/String;

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "listener_to_remove":Ljava/lang/String;
    iget-object v1, p0, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;->listeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_55

    .line 138
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, "this_listener":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54

    .line 140
    iget-object v3, p0, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;->logger:Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/ZeroconfLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deactivating listener: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/ZeroconfLogger;->println(Ljava/lang/String;)V

    .line 141
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 143
    iget-object v3, p0, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;->jmmdns:Ljavax/jmdns/JmmDNS;

    invoke-interface {v3, v0, p0}, Ljavax/jmdns/JmmDNS;->removeServiceListener(Ljava/lang/String;Ljavax/jmdns/ServiceListener;)V

    .line 144
    goto :goto_55

    .line 146
    .end local v2    # "this_listener":Ljava/lang/String;
    :cond_54
    goto :goto_1f

    .line 147
    .end local v1    # "listener":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_55
    :goto_55
    iget-object v1, p0, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;->listener_callbacks:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    return-void
.end method

.method public serviceAdded(Ljavax/jmdns/ServiceEvent;)V
    .registers 7
    .param p1, "event"    # Ljavax/jmdns/ServiceEvent;

    .line 260
    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getInfo()Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    .line 263
    .local v0, "service_info":Ljavax/jmdns/ServiceInfo;
    iget-object v1, p0, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;->jmmdns:Ljavax/jmdns/JmmDNS;

    invoke-virtual {v0}, Ljavax/jmdns/ServiceInfo;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/jmdns/ServiceInfo;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v1, v2, v3, v4}, Ljavax/jmdns/JmmDNS;->getServiceInfos(Ljava/lang/String;Ljava/lang/String;Z)[Ljavax/jmdns/ServiceInfo;

    .line 264
    iget-object v1, p0, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;->listener_callbacks:Ljava/util/Map;

    invoke-virtual {v0}, Ljavax/jmdns/ServiceInfo;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/ZeroconfDiscoveryHandler;

    .line 265
    .local v1, "callback":Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/ZeroconfDiscoveryHandler;
    if-eqz v1, :cond_28

    .line 266
    invoke-direct {p0, v0}, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;->toDiscoveredService(Ljavax/jmdns/ServiceInfo;)Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/ZeroconfDiscoveryHandler;->serviceAdded(Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;)V

    goto :goto_42

    .line 268
    :cond_28
    iget-object v2, p0, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;->logger:Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/ZeroconfLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[+] Service         : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljavax/jmdns/ServiceInfo;->getQualifiedName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/ZeroconfLogger;->println(Ljava/lang/String;)V

    .line 270
    :goto_42
    return-void
.end method

.method public serviceRemoved(Ljavax/jmdns/ServiceEvent;)V
    .registers 8
    .param p1, "event"    # Ljavax/jmdns/ServiceEvent;

    .line 274
    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getName()Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getInfo()Ljavax/jmdns/ServiceInfo;

    move-result-object v1

    .line 276
    .local v1, "service_info":Ljavax/jmdns/ServiceInfo;
    iget-object v2, p0, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;->listener_callbacks:Ljava/util/Map;

    invoke-virtual {v1}, Ljavax/jmdns/ServiceInfo;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/ZeroconfDiscoveryHandler;

    .line 277
    .local v2, "callback":Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/ZeroconfDiscoveryHandler;
    if-eqz v2, :cond_1e

    .line 278
    invoke-direct {p0, v1}, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;->toDiscoveredService(Ljavax/jmdns/ServiceInfo;)Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/ZeroconfDiscoveryHandler;->serviceRemoved(Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;)V

    goto :goto_34

    .line 280
    :cond_1e
    iget-object v3, p0, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;->logger:Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/ZeroconfLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[-] Service         : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/ZeroconfLogger;->println(Ljava/lang/String;)V

    .line 282
    :goto_34
    return-void
.end method

.method public serviceResolved(Ljavax/jmdns/ServiceEvent;)V
    .registers 8
    .param p1, "event"    # Ljavax/jmdns/ServiceEvent;

    .line 294
    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getInfo()Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    .line 295
    .local v0, "service_info":Ljavax/jmdns/ServiceInfo;
    iget-object v1, p0, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;->listener_callbacks:Ljava/util/Map;

    invoke-virtual {v0}, Ljavax/jmdns/ServiceInfo;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/ZeroconfDiscoveryHandler;

    .line 296
    .local v1, "callback":Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/ZeroconfDiscoveryHandler;
    if-eqz v1, :cond_1a

    .line 297
    invoke-direct {p0, v0}, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;->toDiscoveredService(Ljavax/jmdns/ServiceInfo;)Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/ZeroconfDiscoveryHandler;->serviceResolved(Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;)V

    goto :goto_79

    .line 299
    :cond_1a
    iget-object v2, p0, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;->logger:Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/ZeroconfLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[=] Resolved        : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljavax/jmdns/ServiceInfo;->getQualifiedName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/ZeroconfLogger;->println(Ljava/lang/String;)V

    .line 300
    iget-object v2, p0, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;->logger:Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/ZeroconfLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "      Port          : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljavax/jmdns/ServiceInfo;->getPort()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/ZeroconfLogger;->println(Ljava/lang/String;)V

    .line 301
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4f
    invoke-virtual {v0}, Ljavax/jmdns/ServiceInfo;->getInetAddresses()[Ljava/net/InetAddress;

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_79

    .line 302
    iget-object v3, p0, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;->logger:Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/ZeroconfLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "      Address       : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljavax/jmdns/ServiceInfo;->getInetAddresses()[Ljava/net/InetAddress;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/ZeroconfLogger;->println(Ljava/lang/String;)V

    .line 301
    add-int/lit8 v2, v2, 0x1

    goto :goto_4f

    .line 305
    .end local v2    # "i":I
    :cond_79
    :goto_79
    return-void
.end method

.method public serviceTypeAdded(Ljavax/jmdns/ServiceEvent;)V
    .registers 2
    .param p1, "event"    # Ljavax/jmdns/ServiceEvent;

    .line 311
    return-void
.end method

.method public setDefaultDiscoveryCallback(Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/ZeroconfDiscoveryHandler;)V
    .registers 2
    .param p1, "listener_callback"    # Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/ZeroconfDiscoveryHandler;

    .line 110
    iput-object p1, p0, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;->default_listener_callback:Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/ZeroconfDiscoveryHandler;

    .line 111
    return-void
.end method

.method public shutdown()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    invoke-virtual {p0}, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;->removeAllServices()V

    .line 251
    iget-object v0, p0, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;->logger:Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/ZeroconfLogger;

    const-string v1, "Shutdown"

    invoke-interface {v0, v1}, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/ZeroconfLogger;->println(Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;->jmmdns:Ljavax/jmdns/JmmDNS;

    invoke-interface {v0}, Ljavax/jmdns/JmmDNS;->close()V

    .line 253
    return-void
.end method

.method public subTypeForServiceTypeAdded(Ljavax/jmdns/ServiceEvent;)V
    .registers 2
    .param p1, "event"    # Ljavax/jmdns/ServiceEvent;

    .line 316
    return-void
.end method

.method public toString(Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;)Ljava/lang/String;
    .registers 7
    .param p1, "discovered_service"    # Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;

    .line 389
    const-string v0, "Service Info:\n"

    .line 390
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  Name   : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 391
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  Type   : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 392
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  Port   : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;->port:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 393
    iget-object v1, p1, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;->ipv4_addresses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_59
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 394
    .local v2, "address":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  Address: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 395
    .end local v2    # "address":Ljava/lang/String;
    goto :goto_59

    .line 396
    :cond_7f
    iget-object v1, p1, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;->ipv6_addresses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_85
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ab

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 397
    .restart local v2    # "address":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  Address: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 398
    .end local v2    # "address":Ljava/lang/String;
    goto :goto_85

    .line 399
    :cond_ab
    return-object v0
.end method
