.class Ljavax/jmdns/impl/JmmDNSImpl$NetworkChecker;
.super Ljava/util/TimerTask;
.source "JmmDNSImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/JmmDNSImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NetworkChecker"
.end annotation


# static fields
.field private static logger1:Ljava/util/logging/Logger;


# instance fields
.field private _knownAddresses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final _mmDNS:Ljavax/jmdns/NetworkTopologyListener;

.field private final _topology:Ljavax/jmdns/NetworkTopologyDiscovery;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 599
    const-class v0, Ljavax/jmdns/impl/JmmDNSImpl$NetworkChecker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljavax/jmdns/impl/JmmDNSImpl$NetworkChecker;->logger1:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljavax/jmdns/NetworkTopologyListener;Ljavax/jmdns/NetworkTopologyDiscovery;)V
    .registers 4
    .param p1, "mmDNS"    # Ljavax/jmdns/NetworkTopologyListener;
    .param p2, "topology"    # Ljavax/jmdns/NetworkTopologyDiscovery;

    .line 608
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 609
    iput-object p1, p0, Ljavax/jmdns/impl/JmmDNSImpl$NetworkChecker;->_mmDNS:Ljavax/jmdns/NetworkTopologyListener;

    .line 610
    iput-object p2, p0, Ljavax/jmdns/impl/JmmDNSImpl$NetworkChecker;->_topology:Ljavax/jmdns/NetworkTopologyDiscovery;

    .line 611
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/impl/JmmDNSImpl$NetworkChecker;->_knownAddresses:Ljava/util/Set;

    .line 612
    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 624
    :try_start_0
    iget-object v0, p0, Ljavax/jmdns/impl/JmmDNSImpl$NetworkChecker;->_topology:Ljavax/jmdns/NetworkTopologyDiscovery;

    invoke-interface {v0}, Ljavax/jmdns/NetworkTopologyDiscovery;->getInetAddresses()[Ljava/net/InetAddress;

    move-result-object v0

    .line 625
    .local v0, "curentAddresses":[Ljava/net/InetAddress;
    new-instance v1, Ljava/util/HashSet;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 626
    .local v1, "current":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/InetAddress;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v2, :cond_2c

    aget-object v4, v0, v3

    .line 627
    .local v4, "address":Ljava/net/InetAddress;
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 628
    iget-object v5, p0, Ljavax/jmdns/impl/JmmDNSImpl$NetworkChecker;->_knownAddresses:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_29

    .line 629
    new-instance v5, Ljavax/jmdns/impl/NetworkTopologyEventImpl;

    iget-object v6, p0, Ljavax/jmdns/impl/JmmDNSImpl$NetworkChecker;->_mmDNS:Ljavax/jmdns/NetworkTopologyListener;

    invoke-direct {v5, v6, v4}, Ljavax/jmdns/impl/NetworkTopologyEventImpl;-><init>(Ljavax/jmdns/NetworkTopologyListener;Ljava/net/InetAddress;)V

    .line 630
    .local v5, "event":Ljavax/jmdns/NetworkTopologyEvent;
    iget-object v6, p0, Ljavax/jmdns/impl/JmmDNSImpl$NetworkChecker;->_mmDNS:Ljavax/jmdns/NetworkTopologyListener;

    invoke-interface {v6, v5}, Ljavax/jmdns/NetworkTopologyListener;->inetAddressAdded(Ljavax/jmdns/NetworkTopologyEvent;)V

    .line 626
    .end local v4    # "address":Ljava/net/InetAddress;
    .end local v5    # "event":Ljavax/jmdns/NetworkTopologyEvent;
    :cond_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 633
    :cond_2c
    iget-object v2, p0, Ljavax/jmdns/impl/JmmDNSImpl$NetworkChecker;->_knownAddresses:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_32
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_51

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 634
    .local v3, "address":Ljava/net/InetAddress;
    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_50

    .line 635
    new-instance v4, Ljavax/jmdns/impl/NetworkTopologyEventImpl;

    iget-object v5, p0, Ljavax/jmdns/impl/JmmDNSImpl$NetworkChecker;->_mmDNS:Ljavax/jmdns/NetworkTopologyListener;

    invoke-direct {v4, v5, v3}, Ljavax/jmdns/impl/NetworkTopologyEventImpl;-><init>(Ljavax/jmdns/NetworkTopologyListener;Ljava/net/InetAddress;)V

    .line 636
    .local v4, "event":Ljavax/jmdns/NetworkTopologyEvent;
    iget-object v5, p0, Ljavax/jmdns/impl/JmmDNSImpl$NetworkChecker;->_mmDNS:Ljavax/jmdns/NetworkTopologyListener;

    invoke-interface {v5, v4}, Ljavax/jmdns/NetworkTopologyListener;->inetAddressRemoved(Ljavax/jmdns/NetworkTopologyEvent;)V

    .line 638
    .end local v3    # "address":Ljava/net/InetAddress;
    .end local v4    # "event":Ljavax/jmdns/NetworkTopologyEvent;
    :cond_50
    goto :goto_32

    .line 639
    :cond_51
    iput-object v1, p0, Ljavax/jmdns/impl/JmmDNSImpl$NetworkChecker;->_knownAddresses:Ljava/util/Set;
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_53} :catch_54

    .line 642
    .end local v0    # "curentAddresses":[Ljava/net/InetAddress;
    .end local v1    # "current":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/InetAddress;>;"
    goto :goto_6b

    .line 640
    :catch_54
    move-exception v0

    .line 641
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Ljavax/jmdns/impl/JmmDNSImpl$NetworkChecker;->logger1:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected unhandled exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 643
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_6b
    return-void
.end method

.method public start(Ljava/util/Timer;)V
    .registers 8
    .param p1, "timer"    # Ljava/util/Timer;

    .line 615
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x2710

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 616
    return-void
.end method
