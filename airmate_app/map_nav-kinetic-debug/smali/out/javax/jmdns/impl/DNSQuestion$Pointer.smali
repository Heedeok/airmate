.class Ljavax/jmdns/impl/DNSQuestion$Pointer;
.super Ljavax/jmdns/impl/DNSQuestion;
.source "DNSQuestion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/DNSQuestion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Pointer"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;Z)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljavax/jmdns/impl/constants/DNSRecordType;
    .param p3, "recordClass"    # Ljavax/jmdns/impl/constants/DNSRecordClass;
    .param p4, "unique"    # Z

    .line 89
    invoke-direct {p0, p1, p2, p3, p4}, Ljavax/jmdns/impl/DNSQuestion;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;Z)V

    .line 90
    return-void
.end method


# virtual methods
.method public addAnswers(Ljavax/jmdns/impl/JmDNSImpl;Ljava/util/Set;)V
    .registers 13
    .param p1, "jmDNSImpl"    # Ljavax/jmdns/impl/JmDNSImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/jmdns/impl/JmDNSImpl;",
            "Ljava/util/Set<",
            "Ljavax/jmdns/impl/DNSRecord;",
            ">;)V"
        }
    .end annotation

    .line 95
    .local p2, "answers":Ljava/util/Set;, "Ljava/util/Set<Ljavax/jmdns/impl/DNSRecord;>;"
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getServices()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/jmdns/ServiceInfo;

    .line 96
    .local v1, "serviceInfo":Ljavax/jmdns/ServiceInfo;
    move-object v2, v1

    check-cast v2, Ljavax/jmdns/impl/ServiceInfoImpl;

    invoke-virtual {p0, p1, p2, v2}, Ljavax/jmdns/impl/DNSQuestion$Pointer;->addAnswersForServiceInfo(Ljavax/jmdns/impl/JmDNSImpl;Ljava/util/Set;Ljavax/jmdns/impl/ServiceInfoImpl;)V

    .line 97
    .end local v1    # "serviceInfo":Ljavax/jmdns/ServiceInfo;
    goto :goto_c

    .line 98
    :cond_1f
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSQuestion$Pointer;->isServicesDiscoveryMetaQuery()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 99
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getServiceTypes()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_31
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ba

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 100
    .local v1, "serviceType":Ljava/lang/String;
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getServiceTypes()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/jmdns/impl/JmDNSImpl$ServiceTypeEntry;

    .line 101
    .local v2, "typeEntry":Ljavax/jmdns/impl/JmDNSImpl$ServiceTypeEntry;
    new-instance v9, Ljavax/jmdns/impl/DNSRecord$Pointer;

    const-string v4, "_services._dns-sd._udp.local."

    sget-object v5, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    const/4 v6, 0x0

    const/16 v7, 0xe10

    invoke-virtual {v2}, Ljavax/jmdns/impl/JmDNSImpl$ServiceTypeEntry;->getType()Ljava/lang/String;

    move-result-object v8

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Ljavax/jmdns/impl/DNSRecord$Pointer;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZILjava/lang/String;)V

    invoke-interface {p2, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 102
    .end local v1    # "serviceType":Ljava/lang/String;
    .end local v2    # "typeEntry":Ljavax/jmdns/impl/JmDNSImpl$ServiceTypeEntry;
    goto :goto_31

    .line 103
    :cond_5c
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSQuestion$Pointer;->isReverseLookup()Z

    move-result v0

    if-eqz v0, :cond_b7

    .line 104
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSQuestion$Pointer;->getQualifiedNameMap()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Instance:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 105
    .local v0, "ipValue":Ljava/lang/String;
    if-eqz v0, :cond_b6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_b6

    .line 106
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getLocalHost()Ljavax/jmdns/impl/HostInfo;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/jmdns/impl/HostInfo;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 107
    .local v1, "address":Ljava/net/InetAddress;
    if-eqz v1, :cond_85

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    goto :goto_87

    :cond_85
    const-string v2, ""

    .line 108
    .local v2, "hostIPAddress":Ljava/lang/String;
    :goto_87
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b6

    .line 109
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSQuestion$Pointer;->isV4ReverseLookup()Z

    move-result v3

    const/16 v4, 0xe10

    const/4 v5, 0x0

    if-eqz v3, :cond_a3

    .line 110
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getLocalHost()Ljavax/jmdns/impl/HostInfo;

    move-result-object v3

    sget-object v6, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_A:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual {v3, v6, v5, v4}, Ljavax/jmdns/impl/HostInfo;->getDNSReverseAddressRecord(Ljavax/jmdns/impl/constants/DNSRecordType;ZI)Ljavax/jmdns/impl/DNSRecord$Pointer;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_a3
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSQuestion$Pointer;->isV6ReverseLookup()Z

    move-result v3

    if-eqz v3, :cond_b6

    .line 113
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getLocalHost()Ljavax/jmdns/impl/HostInfo;

    move-result-object v3

    sget-object v6, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_AAAA:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual {v3, v6, v5, v4}, Ljavax/jmdns/impl/HostInfo;->getDNSReverseAddressRecord(Ljavax/jmdns/impl/constants/DNSRecordType;ZI)Ljavax/jmdns/impl/DNSRecord$Pointer;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 117
    .end local v0    # "ipValue":Ljava/lang/String;
    .end local v1    # "address":Ljava/net/InetAddress;
    .end local v2    # "hostIPAddress":Ljava/lang/String;
    :cond_b6
    goto :goto_ba

    :cond_b7
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSQuestion$Pointer;->isDomainDiscoveryQuery()Z

    .line 120
    :cond_ba
    :goto_ba
    return-void
.end method
