.class public Ljavax/jmdns/impl/DNSRecord$HostInformation;
.super Ljavax/jmdns/impl/DNSRecord;
.source "DNSRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/DNSRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HostInformation"
.end annotation


# instance fields
.field _cpu:Ljava/lang/String;

.field _os:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZILjava/lang/String;Ljava/lang/String;)V
    .registers 13
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "recordClass"    # Ljavax/jmdns/impl/constants/DNSRecordClass;
    .param p3, "unique"    # Z
    .param p4, "ttl"    # I
    .param p5, "cpu"    # Ljava/lang/String;
    .param p6, "os"    # Ljava/lang/String;

    .line 861
    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_HINFO:Ljavax/jmdns/impl/constants/DNSRecordType;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Ljavax/jmdns/impl/DNSRecord;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;ZI)V

    .line 862
    iput-object p5, p0, Ljavax/jmdns/impl/DNSRecord$HostInformation;->_cpu:Ljava/lang/String;

    .line 863
    iput-object p6, p0, Ljavax/jmdns/impl/DNSRecord$HostInformation;->_os:Ljava/lang/String;

    .line 864
    return-void
.end method


# virtual methods
.method addAnswer(Ljavax/jmdns/impl/JmDNSImpl;Ljavax/jmdns/impl/DNSIncoming;Ljava/net/InetAddress;ILjavax/jmdns/impl/DNSOutgoing;)Ljavax/jmdns/impl/DNSOutgoing;
    .registers 6
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

    .line 872
    return-object p5
.end method

.method public getServiceEvent(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/ServiceEvent;
    .registers 6
    .param p1, "dns"    # Ljavax/jmdns/impl/JmDNSImpl;

    .line 949
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/DNSRecord$HostInformation;->getServiceInfo(Z)Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    .line 950
    .local v0, "info":Ljavax/jmdns/ServiceInfo;
    move-object v1, v0

    check-cast v1, Ljavax/jmdns/impl/ServiceInfoImpl;

    invoke-virtual {v1, p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->setDns(Ljavax/jmdns/impl/JmDNSImpl;)V

    .line 951
    new-instance v1, Ljavax/jmdns/impl/ServiceEventImpl;

    invoke-virtual {v0}, Ljavax/jmdns/ServiceInfo;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/jmdns/ServiceInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p1, v2, v3, v0}, Ljavax/jmdns/impl/ServiceEventImpl;-><init>(Ljavax/jmdns/impl/JmDNSImpl;Ljava/lang/String;Ljava/lang/String;Ljavax/jmdns/ServiceInfo;)V

    return-object v1
.end method

.method public getServiceInfo(Z)Ljavax/jmdns/ServiceInfo;
    .registers 11
    .param p1, "persistent"    # Z

    .line 937
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 938
    .local v0, "hinfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "cpu"

    iget-object v2, p0, Ljavax/jmdns/impl/DNSRecord$HostInformation;->_cpu:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 939
    const-string v1, "os"

    iget-object v2, p0, Ljavax/jmdns/impl/DNSRecord$HostInformation;->_os:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 940
    new-instance v1, Ljavax/jmdns/impl/ServiceInfoImpl;

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSRecord$HostInformation;->getQualifiedNameMap()Ljava/util/Map;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v1

    move v7, p1

    move-object v8, v0

    invoke-direct/range {v2 .. v8}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljava/util/Map;IIIZLjava/util/Map;)V

    return-object v1
.end method

.method handleQuery(Ljavax/jmdns/impl/JmDNSImpl;J)Z
    .registers 5
    .param p1, "dns"    # Ljavax/jmdns/impl/JmDNSImpl;
    .param p2, "expirationTime"    # J

    .line 881
    const/4 v0, 0x0

    return v0
.end method

.method handleResponse(Ljavax/jmdns/impl/JmDNSImpl;)Z
    .registers 3
    .param p1, "dns"    # Ljavax/jmdns/impl/JmDNSImpl;

    .line 890
    const/4 v0, 0x0

    return v0
.end method

.method public isSingleValued()Z
    .registers 2

    .line 918
    const/4 v0, 0x1

    return v0
.end method

.method sameValue(Ljavax/jmdns/impl/DNSRecord;)Z
    .registers 6
    .param p1, "other"    # Ljavax/jmdns/impl/DNSRecord;

    .line 899
    instance-of v0, p1, Ljavax/jmdns/impl/DNSRecord$HostInformation;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 900
    return v1

    .line 902
    :cond_6
    move-object v0, p1

    check-cast v0, Ljavax/jmdns/impl/DNSRecord$HostInformation;

    .line 903
    .local v0, "hinfo":Ljavax/jmdns/impl/DNSRecord$HostInformation;
    iget-object v2, p0, Ljavax/jmdns/impl/DNSRecord$HostInformation;->_cpu:Ljava/lang/String;

    if-nez v2, :cond_12

    iget-object v2, v0, Ljavax/jmdns/impl/DNSRecord$HostInformation;->_cpu:Ljava/lang/String;

    if-eqz v2, :cond_12

    .line 904
    return v1

    .line 906
    :cond_12
    iget-object v2, p0, Ljavax/jmdns/impl/DNSRecord$HostInformation;->_os:Ljava/lang/String;

    if-nez v2, :cond_1b

    iget-object v2, v0, Ljavax/jmdns/impl/DNSRecord$HostInformation;->_os:Ljava/lang/String;

    if-eqz v2, :cond_1b

    .line 907
    return v1

    .line 909
    :cond_1b
    iget-object v2, p0, Ljavax/jmdns/impl/DNSRecord$HostInformation;->_cpu:Ljava/lang/String;

    iget-object v3, v0, Ljavax/jmdns/impl/DNSRecord$HostInformation;->_cpu:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    iget-object v2, p0, Ljavax/jmdns/impl/DNSRecord$HostInformation;->_os:Ljava/lang/String;

    iget-object v3, v0, Ljavax/jmdns/impl/DNSRecord$HostInformation;->_os:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    const/4 v1, 0x1

    nop

    :cond_31
    return v1
.end method

.method protected toString(Ljava/lang/StringBuilder;)V
    .registers 4
    .param p1, "aLog"    # Ljava/lang/StringBuilder;

    .line 960
    invoke-super {p0, p1}, Ljavax/jmdns/impl/DNSRecord;->toString(Ljava/lang/StringBuilder;)V

    .line 961
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " cpu: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljavax/jmdns/impl/DNSRecord$HostInformation;->_cpu:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' os: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljavax/jmdns/impl/DNSRecord$HostInformation;->_os:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 962
    return-void
.end method

.method write(Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;)V
    .registers 5
    .param p1, "out"    # Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

    .line 927
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljavax/jmdns/impl/DNSRecord$HostInformation;->_cpu:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljavax/jmdns/impl/DNSRecord$HostInformation;->_os:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 928
    .local v0, "hostInfo":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeUTF(Ljava/lang/String;II)V

    .line 929
    return-void
.end method
