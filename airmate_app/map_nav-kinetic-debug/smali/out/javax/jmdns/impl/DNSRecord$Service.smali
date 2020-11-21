.class public Ljavax/jmdns/impl/DNSRecord$Service;
.super Ljavax/jmdns/impl/DNSRecord;
.source "DNSRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/DNSRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Service"
.end annotation


# static fields
.field private static logger1:Ljava/util/logging/Logger;


# instance fields
.field private final _port:I

.field private final _priority:I

.field private final _server:Ljava/lang/String;

.field private final _weight:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 640
    const-class v0, Ljavax/jmdns/impl/DNSRecord$Service;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljavax/jmdns/impl/DNSRecord$Service;->logger1:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZIIIILjava/lang/String;)V
    .registers 15
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "recordClass"    # Ljavax/jmdns/impl/constants/DNSRecordClass;
    .param p3, "unique"    # Z
    .param p4, "ttl"    # I
    .param p5, "priority"    # I
    .param p6, "weight"    # I
    .param p7, "port"    # I
    .param p8, "server"    # Ljava/lang/String;

    .line 647
    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_SRV:Ljavax/jmdns/impl/constants/DNSRecordType;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Ljavax/jmdns/impl/DNSRecord;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;ZI)V

    .line 648
    iput p5, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_priority:I

    .line 649
    iput p6, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_weight:I

    .line 650
    iput p7, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_port:I

    .line 651
    iput-object p8, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_server:Ljava/lang/String;

    .line 652
    return-void
.end method


# virtual methods
.method addAnswer(Ljavax/jmdns/impl/JmDNSImpl;Ljavax/jmdns/impl/DNSIncoming;Ljava/net/InetAddress;ILjavax/jmdns/impl/DNSOutgoing;)Ljavax/jmdns/impl/DNSOutgoing;
    .registers 19
    .param p1, "dns"    # Ljavax/jmdns/impl/JmDNSImpl;
    .param p2, "in"    # Ljavax/jmdns/impl/DNSIncoming;
    .param p3, "addr"    # Ljava/net/InetAddress;
    .param p4, "port"    # I
    .param p5, "out"    # Ljavax/jmdns/impl/DNSOutgoing;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 795
    move-object v0, p0

    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getServices()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSRecord$Service;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/jmdns/impl/ServiceInfoImpl;

    .line 796
    .local v1, "info":Ljavax/jmdns/impl/ServiceInfoImpl;
    if-eqz v1, :cond_5d

    .line 797
    iget v2, v0, Ljavax/jmdns/impl/DNSRecord$Service;->_port:I

    invoke-virtual {v1}, Ljavax/jmdns/impl/ServiceInfoImpl;->getPort()I

    move-result v3

    if-ne v2, v3, :cond_1b

    const/4 v2, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v2, 0x0

    :goto_1c
    iget-object v3, v0, Ljavax/jmdns/impl/DNSRecord$Service;->_server:Ljava/lang/String;

    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getLocalHost()Ljavax/jmdns/impl/HostInfo;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/jmdns/impl/HostInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eq v2, v3, :cond_5d

    .line 798
    new-instance v2, Ljavax/jmdns/impl/DNSRecord$Service;

    invoke-virtual {v1}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    const/4 v7, 0x1

    const/16 v8, 0xe10

    invoke-virtual {v1}, Ljavax/jmdns/impl/ServiceInfoImpl;->getPriority()I

    move-result v9

    invoke-virtual {v1}, Ljavax/jmdns/impl/ServiceInfoImpl;->getWeight()I

    move-result v10

    invoke-virtual {v1}, Ljavax/jmdns/impl/ServiceInfoImpl;->getPort()I

    move-result v11

    .line 799
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getLocalHost()Ljavax/jmdns/impl/HostInfo;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/jmdns/impl/HostInfo;->getName()Ljava/lang/String;

    move-result-object v12

    move-object v4, v2

    invoke-direct/range {v4 .. v12}, Ljavax/jmdns/impl/DNSRecord$Service;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZIIIILjava/lang/String;)V

    .line 798
    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object v9, v2

    invoke-virtual/range {v4 .. v9}, Ljavax/jmdns/impl/JmDNSImpl;->addAnswer(Ljavax/jmdns/impl/DNSIncoming;Ljava/net/InetAddress;ILjavax/jmdns/impl/DNSOutgoing;Ljavax/jmdns/impl/DNSRecord;)Ljavax/jmdns/impl/DNSOutgoing;

    move-result-object v2

    return-object v2

    .line 802
    :cond_5d
    return-object p5
.end method

.method public getPort()I
    .registers 2

    .line 706
    iget v0, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_port:I

    return v0
.end method

.method public getPriority()I
    .registers 2

    .line 692
    iget v0, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_priority:I

    return v0
.end method

.method getServer()Ljava/lang/String;
    .registers 2

    .line 685
    iget-object v0, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_server:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceEvent(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/ServiceEvent;
    .registers 6
    .param p1, "dns"    # Ljavax/jmdns/impl/JmDNSImpl;

    .line 820
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/DNSRecord$Service;->getServiceInfo(Z)Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    .line 821
    .local v0, "info":Ljavax/jmdns/ServiceInfo;
    move-object v1, v0

    check-cast v1, Ljavax/jmdns/impl/ServiceInfoImpl;

    invoke-virtual {v1, p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->setDns(Ljavax/jmdns/impl/JmDNSImpl;)V

    .line 832
    new-instance v1, Ljavax/jmdns/impl/ServiceEventImpl;

    invoke-virtual {v0}, Ljavax/jmdns/ServiceInfo;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/jmdns/ServiceInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p1, v2, v3, v0}, Ljavax/jmdns/impl/ServiceEventImpl;-><init>(Ljavax/jmdns/impl/JmDNSImpl;Ljava/lang/String;Ljava/lang/String;Ljavax/jmdns/ServiceInfo;)V

    return-object v1
.end method

.method public getServiceInfo(Z)Ljavax/jmdns/ServiceInfo;
    .registers 10
    .param p1, "persistent"    # Z

    .line 811
    new-instance v7, Ljavax/jmdns/impl/ServiceInfoImpl;

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSRecord$Service;->getQualifiedNameMap()Ljava/util/Map;

    move-result-object v1

    iget v2, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_port:I

    iget v3, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_weight:I

    iget v4, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_priority:I

    iget-object v6, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_server:Ljava/lang/String;

    move-object v0, v7

    move v5, p1

    invoke-direct/range {v0 .. v6}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljava/util/Map;IIIZLjava/lang/String;)V

    return-object v7
.end method

.method public getWeight()I
    .registers 2

    .line 699
    iget v0, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_weight:I

    return v0
.end method

.method handleQuery(Ljavax/jmdns/impl/JmDNSImpl;J)Z
    .registers 18
    .param p1, "dns"    # Ljavax/jmdns/impl/JmDNSImpl;
    .param p2, "expirationTime"    # J

    .line 725
    move-object v1, p0

    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getServices()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSRecord$Service;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljavax/jmdns/impl/ServiceInfoImpl;

    .line 726
    .local v2, "info":Ljavax/jmdns/impl/ServiceInfoImpl;
    const/4 v3, 0x0

    if-eqz v2, :cond_116

    invoke-virtual {v2}, Ljavax/jmdns/impl/ServiceInfoImpl;->isAnnouncing()Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-virtual {v2}, Ljavax/jmdns/impl/ServiceInfoImpl;->isAnnounced()Z

    move-result v0

    if-eqz v0, :cond_116

    :cond_1f
    iget v0, v1, Ljavax/jmdns/impl/DNSRecord$Service;->_port:I

    invoke-virtual {v2}, Ljavax/jmdns/impl/ServiceInfoImpl;->getPort()I

    move-result v4

    if-ne v0, v4, :cond_37

    iget-object v0, v1, Ljavax/jmdns/impl/DNSRecord$Service;->_server:Ljava/lang/String;

    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getLocalHost()Ljavax/jmdns/impl/HostInfo;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/jmdns/impl/HostInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_116

    .line 727
    :cond_37
    sget-object v0, Ljavax/jmdns/impl/DNSRecord$Service;->logger1:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleQuery() Conflicting probe detected from: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSRecord$Service;->getRecordSource()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 728
    new-instance v0, Ljavax/jmdns/impl/DNSRecord$Service;

    invoke-virtual {v2}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    const/4 v8, 0x1

    const/16 v9, 0xe10

    invoke-virtual {v2}, Ljavax/jmdns/impl/ServiceInfoImpl;->getPriority()I

    move-result v10

    invoke-virtual {v2}, Ljavax/jmdns/impl/ServiceInfoImpl;->getWeight()I

    move-result v11

    invoke-virtual {v2}, Ljavax/jmdns/impl/ServiceInfoImpl;->getPort()I

    move-result v12

    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getLocalHost()Ljavax/jmdns/impl/HostInfo;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/jmdns/impl/HostInfo;->getName()Ljava/lang/String;

    move-result-object v13

    move-object v5, v0

    invoke-direct/range {v5 .. v13}, Ljavax/jmdns/impl/DNSRecord$Service;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZIIIILjava/lang/String;)V

    move-object v4, v0

    .line 732
    .local v4, "localService":Ljavax/jmdns/impl/DNSRecord$Service;
    :try_start_75
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSRecord$Service;->getRecordSource()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a9

    .line 733
    sget-object v0, Ljavax/jmdns/impl/DNSRecord$Service;->logger1:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got conflicting probe from ourselves\nincoming: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSRecord$Service;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\nlocal   : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljavax/jmdns/impl/DNSRecord$Service;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V
    :try_end_a9
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_a9} :catch_aa

    .line 737
    :cond_a9
    goto :goto_b4

    .line 735
    :catch_aa
    move-exception v0

    .line 736
    .local v0, "e":Ljava/io/IOException;
    sget-object v5, Ljavax/jmdns/impl/DNSRecord$Service;->logger1:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v7, "IOException"

    invoke-virtual {v5, v6, v7, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 739
    .end local v0    # "e":Ljava/io/IOException;
    :goto_b4
    invoke-virtual {p0, v4}, Ljavax/jmdns/impl/DNSRecord$Service;->compareTo(Ljavax/jmdns/impl/DNSEntry;)I

    move-result v0

    .line 741
    .local v0, "comparison":I
    if-nez v0, :cond_c2

    .line 746
    sget-object v5, Ljavax/jmdns/impl/DNSRecord$Service;->logger1:Ljava/util/logging/Logger;

    const-string v6, "handleQuery() Ignoring a identical service query"

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 747
    return v3

    .line 751
    :cond_c2
    invoke-virtual {v2}, Ljavax/jmdns/impl/ServiceInfoImpl;->isProbing()Z

    move-result v5

    if-eqz v5, :cond_114

    if-lez v0, :cond_114

    .line 753
    invoke-virtual {v2}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 754
    .local v3, "oldName":Ljava/lang/String;
    invoke-virtual {v2}, Ljavax/jmdns/impl/ServiceInfoImpl;->getName()Ljava/lang/String;

    move-result-object v5

    move-object v6, p1

    invoke-virtual {p1, v5}, Ljavax/jmdns/impl/JmDNSImpl;->incrementName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljavax/jmdns/impl/ServiceInfoImpl;->setName(Ljava/lang/String;)V

    .line 755
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getServices()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 756
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getServices()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v2}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 757
    sget-object v5, Ljavax/jmdns/impl/DNSRecord$Service;->logger1:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleQuery() Lost tie break: new unique name chosen:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljavax/jmdns/impl/ServiceInfoImpl;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 760
    invoke-virtual {v2}, Ljavax/jmdns/impl/ServiceInfoImpl;->revertState()Z

    .line 761
    .end local v3    # "oldName":Ljava/lang/String;
    nop

    .line 767
    const/4 v3, 0x1

    return v3

    .line 764
    :cond_114
    move-object v6, p1

    return v3

    .line 770
    .end local v0    # "comparison":I
    .end local v4    # "localService":Ljavax/jmdns/impl/DNSRecord$Service;
    :cond_116
    move-object v6, p1

    return v3
.end method

.method handleResponse(Ljavax/jmdns/impl/JmDNSImpl;)Z
    .registers 7
    .param p1, "dns"    # Ljavax/jmdns/impl/JmDNSImpl;

    .line 775
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getServices()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSRecord$Service;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/impl/ServiceInfoImpl;

    .line 776
    .local v0, "info":Ljavax/jmdns/impl/ServiceInfoImpl;
    if-eqz v0, :cond_7d

    iget v1, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_port:I

    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getPort()I

    move-result v2

    if-ne v1, v2, :cond_28

    iget-object v1, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_server:Ljava/lang/String;

    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getLocalHost()Ljavax/jmdns/impl/HostInfo;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/jmdns/impl/HostInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7d

    .line 777
    :cond_28
    sget-object v1, Ljavax/jmdns/impl/DNSRecord$Service;->logger1:Ljava/util/logging/Logger;

    const-string v2, "handleResponse() Denial detected"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 779
    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->isProbing()Z

    move-result v1

    if-eqz v1, :cond_78

    .line 780
    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 781
    .local v1, "oldName":Ljava/lang/String;
    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljavax/jmdns/impl/JmDNSImpl;->incrementName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/jmdns/impl/ServiceInfoImpl;->setName(Ljava/lang/String;)V

    .line 782
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getServices()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getServices()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    sget-object v2, Ljavax/jmdns/impl/DNSRecord$Service;->logger1:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleResponse() New unique name chose:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 787
    .end local v1    # "oldName":Ljava/lang/String;
    :cond_78
    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->revertState()Z

    .line 788
    const/4 v1, 0x1

    return v1

    .line 790
    :cond_7d
    const/4 v1, 0x0

    return v1
.end method

.method public isSingleValued()Z
    .registers 2

    .line 720
    const/4 v0, 0x1

    return v0
.end method

.method sameValue(Ljavax/jmdns/impl/DNSRecord;)Z
    .registers 6
    .param p1, "other"    # Ljavax/jmdns/impl/DNSRecord;

    .line 711
    instance-of v0, p1, Ljavax/jmdns/impl/DNSRecord$Service;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 712
    return v1

    .line 714
    :cond_6
    move-object v0, p1

    check-cast v0, Ljavax/jmdns/impl/DNSRecord$Service;

    .line 715
    .local v0, "s":Ljavax/jmdns/impl/DNSRecord$Service;
    iget v2, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_priority:I

    iget v3, v0, Ljavax/jmdns/impl/DNSRecord$Service;->_priority:I

    if-ne v2, v3, :cond_27

    iget v2, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_weight:I

    iget v3, v0, Ljavax/jmdns/impl/DNSRecord$Service;->_weight:I

    if-ne v2, v3, :cond_27

    iget v2, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_port:I

    iget v3, v0, Ljavax/jmdns/impl/DNSRecord$Service;->_port:I

    if-ne v2, v3, :cond_27

    iget-object v2, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_server:Ljava/lang/String;

    iget-object v3, v0, Ljavax/jmdns/impl/DNSRecord$Service;->_server:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    const/4 v1, 0x1

    nop

    :cond_27
    return v1
.end method

.method protected toByteArray(Ljava/io/DataOutputStream;)V
    .registers 4
    .param p1, "dout"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 673
    invoke-super {p0, p1}, Ljavax/jmdns/impl/DNSRecord;->toByteArray(Ljava/io/DataOutputStream;)V

    .line 674
    iget v0, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_priority:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 675
    iget v0, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_weight:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 676
    iget v0, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_port:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 678
    :try_start_12
    iget-object v0, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_server:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_1d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_12 .. :try_end_1d} :catch_1e

    .line 681
    goto :goto_1f

    .line 679
    :catch_1e
    move-exception v0

    .line 682
    :goto_1f
    return-void
.end method

.method protected toString(Ljava/lang/StringBuilder;)V
    .registers 4
    .param p1, "aLog"    # Ljava/lang/StringBuilder;

    .line 842
    invoke-super {p0, p1}, Ljavax/jmdns/impl/DNSRecord;->toString(Ljava/lang/StringBuilder;)V

    .line 843
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " server: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_server:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    return-void
.end method

.method write(Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;)V
    .registers 5
    .param p1, "out"    # Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

    .line 656
    iget v0, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_priority:I

    invoke-virtual {p1, v0}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeShort(I)V

    .line 657
    iget v0, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_weight:I

    invoke-virtual {p1, v0}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeShort(I)V

    .line 658
    iget v0, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_port:I

    invoke-virtual {p1, v0}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeShort(I)V

    .line 659
    sget-boolean v0, Ljavax/jmdns/impl/DNSIncoming;->USE_DOMAIN_NAME_FORMAT_FOR_SRV_TARGET:Z

    if-eqz v0, :cond_19

    .line 660
    iget-object v0, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_server:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeName(Ljava/lang/String;)V

    goto :goto_28

    .line 663
    :cond_19
    iget-object v0, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_server:Ljava/lang/String;

    iget-object v1, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_server:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeUTF(Ljava/lang/String;II)V

    .line 667
    invoke-virtual {p1, v2}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeByte(I)V

    .line 669
    :goto_28
    return-void
.end method
