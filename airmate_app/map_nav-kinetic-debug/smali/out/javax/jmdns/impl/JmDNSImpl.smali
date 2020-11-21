.class public Ljavax/jmdns/impl/JmDNSImpl;
.super Ljavax/jmdns/JmDNS;
.source "JmDNSImpl.java"

# interfaces
.implements Ljavax/jmdns/impl/DNSStatefulObject;
.implements Ljavax/jmdns/impl/DNSTaskStarter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;,
        Ljavax/jmdns/impl/JmDNSImpl$Shutdown;,
        Ljavax/jmdns/impl/JmDNSImpl$ServiceTypeEntry;,
        Ljavax/jmdns/impl/JmDNSImpl$Operation;
    }
.end annotation


# static fields
.field private static final _random:Ljava/util/Random;

.field private static logger:Ljava/util/logging/Logger;


# instance fields
.field private final _cache:Ljavax/jmdns/impl/DNSCache;

.field private volatile _delegate:Ljavax/jmdns/JmDNS$Delegate;

.field private final _executor:Ljava/util/concurrent/ExecutorService;

.field private volatile _group:Ljava/net/InetAddress;

.field private _incomingListener:Ljava/lang/Thread;

.field private final _ioLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private _lastThrottleIncrement:J

.field private final _listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavax/jmdns/impl/DNSListener;",
            ">;"
        }
    .end annotation
.end field

.field private _localHost:Ljavax/jmdns/impl/HostInfo;

.field private final _name:Ljava/lang/String;

.field private _plannedAnswer:Ljavax/jmdns/impl/DNSIncoming;

.field private final _recoverLock:Ljava/lang/Object;

.field private final _serviceCollectors:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;",
            ">;"
        }
    .end annotation
.end field

.field private final _serviceListeners:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;",
            ">;>;"
        }
    .end annotation
.end field

.field private final _serviceTypes:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljavax/jmdns/impl/JmDNSImpl$ServiceTypeEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final _services:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljavax/jmdns/ServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected _shutdown:Ljava/lang/Thread;

.field private volatile _socket:Ljava/net/MulticastSocket;

.field private _throttle:I

.field private final _typeListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljavax/jmdns/impl/ListenerStatus$ServiceTypeListenerStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 58
    const-class v0, Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    .line 335
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Ljavax/jmdns/impl/JmDNSImpl;->_random:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;Ljava/lang/String;)V
    .registers 5
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 394
    invoke-direct {p0}, Ljavax/jmdns/JmDNS;-><init>()V

    .line 318
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_executor:Ljava/util/concurrent/ExecutorService;

    .line 340
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_ioLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1709
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_recoverLock:Ljava/lang/Object;

    .line 395
    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 396
    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    const-string v1, "JmDNS instance created"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 398
    :cond_28
    new-instance v0, Ljavax/jmdns/impl/DNSCache;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljavax/jmdns/impl/DNSCache;-><init>(I)V

    iput-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_cache:Ljavax/jmdns/impl/DNSCache;

    .line 400
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_listeners:Ljava/util/List;

    .line 401
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceListeners:Ljava/util/concurrent/ConcurrentMap;

    .line 402
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_typeListeners:Ljava/util/Set;

    .line 403
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceCollectors:Ljava/util/concurrent/ConcurrentMap;

    .line 405
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_services:Ljava/util/concurrent/ConcurrentMap;

    .line 406
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceTypes:Ljava/util/concurrent/ConcurrentMap;

    .line 408
    invoke-static {p1, p0, p2}, Ljavax/jmdns/impl/HostInfo;->newHostInfo(Ljava/net/InetAddress;Ljavax/jmdns/impl/JmDNSImpl;Ljava/lang/String;)Ljavax/jmdns/impl/HostInfo;

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    .line 409
    if-eqz p2, :cond_6f

    move-object v0, p2

    goto :goto_75

    :cond_6f
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    invoke-virtual {v0}, Ljavax/jmdns/impl/HostInfo;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_75
    iput-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_name:Ljava/lang/String;

    .line 421
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getLocalHost()Ljavax/jmdns/impl/HostInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/jmdns/impl/JmDNSImpl;->openMulticastSocket(Ljavax/jmdns/impl/HostInfo;)V

    .line 422
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getServices()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/jmdns/impl/JmDNSImpl;->start(Ljava/util/Collection;)V

    .line 424
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->startReaper()V

    .line 425
    return-void
.end method

.method private addServiceListener(Ljava/lang/String;Ljavax/jmdns/ServiceListener;Z)V
    .registers 16
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "listener"    # Ljavax/jmdns/ServiceListener;
    .param p3, "synch"    # Z

    .line 924
    new-instance v0, Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;

    invoke-direct {v0, p2, p3}, Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;-><init>(Ljavax/jmdns/ServiceListener;Z)V

    .line 925
    .local v0, "status":Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 926
    .local v1, "loType":Ljava/lang/String;
    iget-object v2, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 927
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;>;"
    if-nez v2, :cond_42

    .line 928
    iget-object v3, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceListeners:Ljava/util/concurrent/ConcurrentMap;

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v3, v1, v4}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_39

    .line 929
    iget-object v3, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceCollectors:Ljava/util/concurrent/ConcurrentMap;

    new-instance v4, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;

    invoke-direct {v4, p1}, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v1, v4}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_39

    .line 931
    iget-object v3, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceCollectors:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/jmdns/ServiceListener;

    const/4 v4, 0x1

    invoke-direct {p0, v1, v3, v4}, Ljavax/jmdns/impl/JmDNSImpl;->addServiceListener(Ljava/lang/String;Ljavax/jmdns/ServiceListener;Z)V

    .line 934
    :cond_39
    iget-object v3, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Ljava/util/List;

    .line 936
    :cond_42
    if-eqz v2, :cond_53

    .line 937
    monitor-enter v2

    .line 938
    :try_start_45
    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4e

    .line 939
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 941
    :cond_4e
    monitor-exit v2

    goto :goto_53

    :catchall_50
    move-exception v3

    monitor-exit v2
    :try_end_52
    .catchall {:try_start_45 .. :try_end_52} :catchall_50

    throw v3

    .line 944
    :cond_53
    :goto_53
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 945
    .local v3, "serviceEvents":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/ServiceEvent;>;"
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getCache()Ljavax/jmdns/impl/DNSCache;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/jmdns/impl/DNSCache;->allValues()Ljava/util/Collection;

    move-result-object v4

    .line 946
    .local v4, "dnsEntryLits":Ljava/util/Collection;, "Ljava/util/Collection<Ljavax/jmdns/impl/DNSEntry;>;"
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_64
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/jmdns/impl/DNSEntry;

    .line 947
    .local v6, "entry":Ljavax/jmdns/impl/DNSEntry;
    move-object v7, v6

    check-cast v7, Ljavax/jmdns/impl/DNSRecord;

    .line 948
    .local v7, "record":Ljavax/jmdns/impl/DNSRecord;
    invoke-virtual {v7}, Ljavax/jmdns/impl/DNSRecord;->getRecordType()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v8

    sget-object v9, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_SRV:Ljavax/jmdns/impl/constants/DNSRecordType;

    if-ne v8, v9, :cond_a1

    .line 949
    invoke-virtual {v7}, Ljavax/jmdns/impl/DNSRecord;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a1

    .line 952
    new-instance v8, Ljavax/jmdns/impl/ServiceEventImpl;

    invoke-virtual {v7}, Ljavax/jmdns/impl/DNSRecord;->getType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Ljavax/jmdns/impl/DNSRecord;->getType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7}, Ljavax/jmdns/impl/DNSRecord;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Ljavax/jmdns/impl/JmDNSImpl;->toUnqualifiedName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7}, Ljavax/jmdns/impl/DNSRecord;->getServiceInfo()Ljavax/jmdns/ServiceInfo;

    move-result-object v11

    invoke-direct {v8, p0, v9, v10, v11}, Ljavax/jmdns/impl/ServiceEventImpl;-><init>(Ljavax/jmdns/impl/JmDNSImpl;Ljava/lang/String;Ljava/lang/String;Ljavax/jmdns/ServiceInfo;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 955
    .end local v6    # "entry":Ljavax/jmdns/impl/DNSEntry;
    .end local v7    # "record":Ljavax/jmdns/impl/DNSRecord;
    :cond_a1
    goto :goto_64

    .line 957
    :cond_a2
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_a6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/jmdns/ServiceEvent;

    .line 958
    .local v6, "serviceEvent":Ljavax/jmdns/ServiceEvent;
    invoke-virtual {v0, v6}, Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;->serviceAdded(Ljavax/jmdns/ServiceEvent;)V

    .line 959
    .end local v6    # "serviceEvent":Ljavax/jmdns/ServiceEvent;
    goto :goto_a6

    .line 961
    :cond_b6
    invoke-virtual {p0, p1}, Ljavax/jmdns/impl/JmDNSImpl;->startServiceResolver(Ljava/lang/String;)V

    .line 962
    return-void
.end method

.method private closeMulticastSocket()V
    .registers 6

    .line 470
    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 471
    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    const-string v1, "closeMulticastSocket()"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 473
    :cond_11
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_socket:Ljava/net/MulticastSocket;

    if-eqz v0, :cond_6c

    .line 477
    const/4 v0, 0x0

    :try_start_16
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_socket:Ljava/net/MulticastSocket;

    iget-object v2, p0, Ljavax/jmdns/impl/JmDNSImpl;->_group:Ljava/net/InetAddress;

    invoke-virtual {v1, v2}, Ljava/net/MulticastSocket;->leaveGroup(Ljava/net/InetAddress;)V
    :try_end_1d
    .catch Ljava/net/SocketException; {:try_start_16 .. :try_end_1d} :catch_20
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1d} :catch_1e

    .line 480
    goto :goto_21

    .line 504
    :catch_1e
    move-exception v1

    goto :goto_60

    .line 478
    :catch_20
    move-exception v1

    .line 481
    :goto_21
    :try_start_21
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_socket:Ljava/net/MulticastSocket;

    invoke-virtual {v1}, Ljava/net/MulticastSocket;->close()V

    .line 488
    :goto_26
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_incomingListener:Ljava/lang/Thread;

    if-eqz v1, :cond_5d

    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_incomingListener:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 489
    monitor-enter p0
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_33} :catch_1e

    .line 491
    :try_start_33
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_incomingListener:Ljava/lang/Thread;

    if-eqz v1, :cond_55

    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_incomingListener:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_55

    .line 493
    sget-object v1, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 494
    sget-object v1, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    const-string v2, "closeMulticastSocket(): waiting for jmDNS monitor"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 496
    :cond_50
    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_55
    .catch Ljava/lang/InterruptedException; {:try_start_33 .. :try_end_55} :catch_58
    .catchall {:try_start_33 .. :try_end_55} :catchall_56

    .line 500
    :cond_55
    goto :goto_59

    .line 501
    :catchall_56
    move-exception v1

    goto :goto_5b

    .line 498
    :catch_58
    move-exception v1

    .line 501
    :goto_59
    :try_start_59
    monitor-exit p0

    goto :goto_26

    :goto_5b
    monitor-exit p0
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_56

    :try_start_5c
    throw v1

    .line 503
    :cond_5d
    iput-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_incomingListener:Ljava/lang/Thread;
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_5f} :catch_1e

    .line 506
    goto :goto_6a

    .line 504
    :goto_60
    nop

    .line 505
    .local v1, "exception":Ljava/lang/Exception;
    sget-object v2, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "closeMulticastSocket() Close socket exception "

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 507
    .end local v1    # "exception":Ljava/lang/Exception;
    :goto_6a
    iput-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_socket:Ljava/net/MulticastSocket;

    .line 509
    :cond_6c
    return-void
.end method

.method private disposeServiceCollectors()V
    .registers 5

    .line 2023
    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2024
    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    const-string v1, "disposeServiceCollectors()"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 2026
    :cond_11
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceCollectors:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2027
    .local v1, "type":Ljava/lang/String;
    iget-object v2, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceCollectors:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;

    .line 2028
    .local v2, "collector":Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;
    if-eqz v2, :cond_39

    .line 2029
    invoke-virtual {p0, v1, v2}, Ljavax/jmdns/impl/JmDNSImpl;->removeServiceListener(Ljava/lang/String;Ljavax/jmdns/ServiceListener;)V

    .line 2030
    iget-object v3, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceCollectors:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2032
    .end local v1    # "type":Ljava/lang/String;
    .end local v2    # "collector":Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;
    :cond_39
    goto :goto_1b

    .line 2033
    :cond_3a
    return-void
.end method

.method public static getRandom()Ljava/util/Random;
    .registers 1

    .line 2215
    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl;->_random:Ljava/util/Random;

    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .registers 5
    .param p0, "argv"    # [Ljava/lang/String;

    .line 366
    const/4 v0, 0x0

    .line 368
    .local v0, "version":Ljava/lang/String;
    :try_start_1
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 369
    .local v1, "pomProperties":Ljava/util/Properties;
    const-class v2, Ljavax/jmdns/impl/JmDNSImpl;

    const-string v3, "/META-INF/maven/javax.jmdns/jmdns/pom.properties"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 370
    const-string v2, "version"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_17} :catch_19

    move-object v0, v2

    .line 373
    .end local v1    # "pomProperties":Ljava/util/Properties;
    goto :goto_1c

    .line 371
    :catch_19
    move-exception v1

    .line 372
    .local v1, "e":Ljava/lang/Exception;
    const-string v0, "RUNNING.IN.IDE.FULL"

    .line 374
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1c
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JmDNS version \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 375
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 377
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Running on java version \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "java.version"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" (build "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "java.runtime.version"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "java.vendor"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 379
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Operating environment \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "os.name"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "os.version"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "os.arch"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 381
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "For more information on JmDNS please visit https://sourceforge.net/projects/jmdns/"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 382
    return-void
.end method

.method private makeServiceNameUnique(Ljavax/jmdns/impl/ServiceInfoImpl;)Z
    .registers 12
    .param p1, "info"    # Ljavax/jmdns/impl/ServiceInfoImpl;

    .line 1163
    invoke-virtual {p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 1164
    .local v0, "originalQualifiedName":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1168
    .local v1, "now":J
    :cond_8
    const/4 v3, 0x0

    .line 1171
    .local v3, "collision":Z
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getCache()Ljavax/jmdns/impl/DNSCache;

    move-result-object v4

    invoke-virtual {p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavax/jmdns/impl/DNSCache;->getDNSEntryList(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_19
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/jmdns/impl/DNSEntry;

    .line 1172
    .local v5, "dnsEntry":Ljavax/jmdns/impl/DNSEntry;
    sget-object v6, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_SRV:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual {v5}, Ljavax/jmdns/impl/DNSEntry;->getRecordType()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljavax/jmdns/impl/constants/DNSRecordType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b1

    invoke-virtual {v5, v1, v2}, Ljavax/jmdns/impl/DNSEntry;->isExpired(J)Z

    move-result v6

    if-nez v6, :cond_b1

    .line 1173
    move-object v6, v5

    check-cast v6, Ljavax/jmdns/impl/DNSRecord$Service;

    .line 1174
    .local v6, "s":Ljavax/jmdns/impl/DNSRecord$Service;
    invoke-virtual {v6}, Ljavax/jmdns/impl/DNSRecord$Service;->getPort()I

    move-result v7

    invoke-virtual {p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->getPort()I

    move-result v8

    if-ne v7, v8, :cond_54

    invoke-virtual {v6}, Ljavax/jmdns/impl/DNSRecord$Service;->getServer()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    invoke-virtual {v8}, Ljavax/jmdns/impl/HostInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b1

    .line 1175
    :cond_54
    sget-object v4, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v4, v7}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_a4

    .line 1176
    sget-object v4, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "makeServiceNameUnique() JmDNS.makeServiceNameUnique srv collision:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " s.server="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljavax/jmdns/impl/DNSRecord$Service;->getServer()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    invoke-virtual {v8}, Ljavax/jmdns/impl/HostInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " equals:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljavax/jmdns/impl/DNSRecord$Service;->getServer()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    invoke-virtual {v9}, Ljavax/jmdns/impl/HostInfo;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 1178
    :cond_a4
    invoke-virtual {p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljavax/jmdns/impl/JmDNSImpl;->incrementName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljavax/jmdns/impl/ServiceInfoImpl;->setName(Ljava/lang/String;)V

    .line 1179
    const/4 v3, 0x1

    .line 1180
    goto :goto_b3

    .line 1183
    .end local v5    # "dnsEntry":Ljavax/jmdns/impl/DNSEntry;
    .end local v6    # "s":Ljavax/jmdns/impl/DNSRecord$Service;
    :cond_b1
    goto/16 :goto_19

    .line 1186
    :cond_b3
    :goto_b3
    iget-object v4, p0, Ljavax/jmdns/impl/JmDNSImpl;->_services:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/jmdns/ServiceInfo;

    .line 1187
    .local v4, "selfService":Ljavax/jmdns/ServiceInfo;
    if-eqz v4, :cond_cf

    if-eq v4, p1, :cond_cf

    .line 1188
    invoke-virtual {p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljavax/jmdns/impl/JmDNSImpl;->incrementName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljavax/jmdns/impl/ServiceInfoImpl;->setName(Ljava/lang/String;)V

    .line 1189
    const/4 v3, 0x1

    .line 1192
    .end local v4    # "selfService":Ljavax/jmdns/ServiceInfo;
    :cond_cf
    if-nez v3, :cond_8

    .line 1194
    invoke-virtual {p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    return v4
.end method

.method private openMulticastSocket(Ljavax/jmdns/impl/HostInfo;)V
    .registers 6
    .param p1, "hostInfo"    # Ljavax/jmdns/impl/HostInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 443
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_group:Ljava/net/InetAddress;

    if-nez v0, :cond_1d

    .line 444
    invoke-virtual {p1}, Ljavax/jmdns/impl/HostInfo;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_15

    .line 445
    const-string v0, "FF02::FB"

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_group:Ljava/net/InetAddress;

    goto :goto_1d

    .line 447
    :cond_15
    const-string v0, "224.0.0.251"

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_group:Ljava/net/InetAddress;

    .line 450
    :cond_1d
    :goto_1d
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_socket:Ljava/net/MulticastSocket;

    if-eqz v0, :cond_24

    .line 451
    invoke-direct {p0}, Ljavax/jmdns/impl/JmDNSImpl;->closeMulticastSocket()V

    .line 453
    :cond_24
    new-instance v0, Ljava/net/MulticastSocket;

    sget v1, Ljavax/jmdns/impl/constants/DNSConstants;->MDNS_PORT:I

    invoke-direct {v0, v1}, Ljava/net/MulticastSocket;-><init>(I)V

    iput-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_socket:Ljava/net/MulticastSocket;

    .line 454
    if-eqz p1, :cond_64

    invoke-virtual {p1}, Ljavax/jmdns/impl/HostInfo;->getInterface()Ljava/net/NetworkInterface;

    move-result-object v0

    if-eqz v0, :cond_64

    .line 456
    :try_start_35
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_socket:Ljava/net/MulticastSocket;

    invoke-virtual {p1}, Ljavax/jmdns/impl/HostInfo;->getInterface()Ljava/net/NetworkInterface;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/MulticastSocket;->setNetworkInterface(Ljava/net/NetworkInterface;)V
    :try_end_3e
    .catch Ljava/net/SocketException; {:try_start_35 .. :try_end_3e} :catch_3f

    .line 461
    goto :goto_64

    .line 457
    :catch_3f
    move-exception v0

    .line 458
    .local v0, "e":Ljava/net/SocketException;
    sget-object v1, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 459
    sget-object v1, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openMulticastSocket() Set network interface exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 463
    .end local v0    # "e":Ljava/net/SocketException;
    :cond_64
    :goto_64
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_socket:Ljava/net/MulticastSocket;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Ljava/net/MulticastSocket;->setTimeToLive(I)V

    .line 464
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_socket:Ljava/net/MulticastSocket;

    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_group:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/net/MulticastSocket;->joinGroup(Ljava/net/InetAddress;)V

    .line 465
    return-void
.end method

.method private start(Ljava/util/Collection;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljavax/jmdns/ServiceInfo;",
            ">;)V"
        }
    .end annotation

    .line 428
    .local p1, "serviceInfos":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/jmdns/ServiceInfo;>;"
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_incomingListener:Ljava/lang/Thread;

    if-nez v0, :cond_10

    .line 429
    new-instance v0, Ljavax/jmdns/impl/SocketListener;

    invoke-direct {v0, p0}, Ljavax/jmdns/impl/SocketListener;-><init>(Ljavax/jmdns/impl/JmDNSImpl;)V

    iput-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_incomingListener:Ljava/lang/Thread;

    .line 430
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_incomingListener:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 432
    :cond_10
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->startProber()V

    .line 433
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/jmdns/ServiceInfo;

    .line 435
    .local v1, "info":Ljavax/jmdns/ServiceInfo;
    :try_start_23
    new-instance v2, Ljavax/jmdns/impl/ServiceInfoImpl;

    invoke-direct {v2, v1}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljavax/jmdns/ServiceInfo;)V

    invoke-virtual {p0, v2}, Ljavax/jmdns/impl/JmDNSImpl;->registerService(Ljavax/jmdns/ServiceInfo;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_2b} :catch_2c

    .line 438
    goto :goto_36

    .line 436
    :catch_2c
    move-exception v2

    .line 437
    .local v2, "exception":Ljava/lang/Exception;
    sget-object v3, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v5, "start() Registration exception "

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 439
    .end local v1    # "info":Ljavax/jmdns/ServiceInfo;
    .end local v2    # "exception":Ljava/lang/Exception;
    :goto_36
    goto :goto_17

    .line 440
    :cond_37
    return-void
.end method

.method static toUnqualifiedName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "qualifiedName"    # Ljava/lang/String;

    .line 2186
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 2187
    .local v0, "loType":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 2188
    .local v1, "loQualifiedName":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 2189
    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2191
    :cond_25
    return-object p1
.end method

.method private waitForInfoData(Ljavax/jmdns/ServiceInfo;J)V
    .registers 12
    .param p1, "info"    # Ljavax/jmdns/ServiceInfo;
    .param p2, "timeout"    # J

    .line 817
    monitor-enter p1

    .line 818
    const-wide/16 v0, 0xc8

    :try_start_3
    div-long v2, p2, v0

    .line 819
    .local v2, "loops":J
    const-wide/16 v4, 0x1

    cmp-long v6, v2, v4

    if-gez v6, :cond_d

    .line 820
    const-wide/16 v2, 0x1

    .line 822
    :cond_d
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_e
    int-to-long v5, v4

    cmp-long v7, v5, v2

    if-gez v7, :cond_22

    .line 823
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->hasData()Z

    move-result v5
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_24

    if-eqz v5, :cond_1a

    .line 824
    goto :goto_22

    .line 827
    :cond_1a
    :try_start_1a
    invoke-virtual {p1, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1d
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_1d} :catch_1e
    .catchall {:try_start_1a .. :try_end_1d} :catchall_24

    .line 830
    goto :goto_1f

    .line 828
    :catch_1e
    move-exception v5

    .line 822
    :goto_1f
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 832
    .end local v2    # "loops":J
    .end local v4    # "i":I
    :cond_22
    :goto_22
    :try_start_22
    monitor-exit p1

    .line 833
    return-void

    .line 832
    :catchall_24
    move-exception v0

    monitor-exit p1
    :try_end_26
    .catchall {:try_start_22 .. :try_end_26} :catchall_24

    throw v0
.end method


# virtual methods
.method __recover()V
    .registers 7

    .line 1746
    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1747
    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "recover() Cleanning up"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 1750
    :cond_24
    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    const-string v1, "RECOVERING"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 1752
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->purgeTimer()V

    .line 1755
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getServices()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1758
    .local v0, "oldServiceInfos":Ljava/util/Collection;, "Ljava/util/Collection<Ljavax/jmdns/ServiceInfo;>;"
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->unregisterAllServices()V

    .line 1759
    invoke-direct {p0}, Ljavax/jmdns/impl/JmDNSImpl;->disposeServiceCollectors()V

    .line 1761
    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v1, v2}, Ljavax/jmdns/impl/JmDNSImpl;->waitForCanceled(J)Z

    .line 1764
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->purgeStateTimer()V

    .line 1768
    invoke-direct {p0}, Ljavax/jmdns/impl/JmDNSImpl;->closeMulticastSocket()V

    .line 1771
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getCache()Ljavax/jmdns/impl/DNSCache;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/jmdns/impl/DNSCache;->clear()V

    .line 1772
    sget-object v1, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_77

    .line 1773
    sget-object v1, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "recover() All is clean"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 1776
    :cond_77
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_dc

    .line 1780
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_81
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_94

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/jmdns/ServiceInfo;

    .line 1781
    .local v2, "info":Ljavax/jmdns/ServiceInfo;
    move-object v3, v2

    check-cast v3, Ljavax/jmdns/impl/ServiceInfoImpl;

    invoke-virtual {v3}, Ljavax/jmdns/impl/ServiceInfoImpl;->recoverState()Z

    .line 1782
    .end local v2    # "info":Ljavax/jmdns/ServiceInfo;
    goto :goto_81

    .line 1783
    :cond_94
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->recoverState()Z

    .line 1786
    :try_start_97
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getLocalHost()Ljavax/jmdns/impl/HostInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Ljavax/jmdns/impl/JmDNSImpl;->openMulticastSocket(Ljavax/jmdns/impl/HostInfo;)V

    .line 1787
    invoke-direct {p0, v0}, Ljavax/jmdns/impl/JmDNSImpl;->start(Ljava/util/Collection;)V
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_a1} :catch_a2

    .line 1790
    goto :goto_bf

    .line 1788
    :catch_a2
    move-exception v1

    .line 1789
    .local v1, "exception":Ljava/lang/Exception;
    sget-object v2, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "recover() Start services exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1791
    .end local v1    # "exception":Ljava/lang/Exception;
    :goto_bf
    sget-object v1, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "recover() We are back!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_109

    .line 1794
    :cond_dc
    sget-object v1, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "recover() Could not recover we are Down!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1795
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getDelegate()Ljavax/jmdns/JmDNS$Delegate;

    move-result-object v1

    if-eqz v1, :cond_109

    .line 1796
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getDelegate()Ljavax/jmdns/JmDNS$Delegate;

    move-result-object v1

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljavax/jmdns/JmDNS$Delegate;->cannotRecoverFromIOError(Ljavax/jmdns/JmDNS;Ljava/util/Collection;)V

    .line 1800
    :cond_109
    :goto_109
    return-void
.end method

.method public addAnswer(Ljavax/jmdns/impl/DNSIncoming;Ljava/net/InetAddress;ILjavax/jmdns/impl/DNSOutgoing;Ljavax/jmdns/impl/DNSRecord;)Ljavax/jmdns/impl/DNSOutgoing;
    .registers 12
    .param p1, "in"    # Ljavax/jmdns/impl/DNSIncoming;
    .param p2, "addr"    # Ljava/net/InetAddress;
    .param p3, "port"    # I
    .param p4, "out"    # Ljavax/jmdns/impl/DNSOutgoing;
    .param p5, "rec"    # Ljavax/jmdns/impl/DNSRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1530
    move-object v0, p4

    .line 1531
    .local v0, "newOut":Ljavax/jmdns/impl/DNSOutgoing;
    const/4 v1, 0x0

    const v2, 0x8400

    if-nez v0, :cond_11

    .line 1532
    new-instance v3, Ljavax/jmdns/impl/DNSOutgoing;

    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSIncoming;->getSenderUDPPayload()I

    move-result v4

    invoke-direct {v3, v2, v1, v4}, Ljavax/jmdns/impl/DNSOutgoing;-><init>(IZI)V

    move-object v0, v3

    .line 1535
    :cond_11
    :try_start_11
    invoke-virtual {v0, p1, p5}, Ljavax/jmdns/impl/DNSOutgoing;->addAnswer(Ljavax/jmdns/impl/DNSIncoming;Ljavax/jmdns/impl/DNSRecord;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_15

    .line 1543
    goto :goto_36

    .line 1536
    :catch_15
    move-exception v3

    .line 1537
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljavax/jmdns/impl/DNSOutgoing;->getFlags()I

    move-result v4

    or-int/lit16 v4, v4, 0x200

    invoke-virtual {v0, v4}, Ljavax/jmdns/impl/DNSOutgoing;->setFlags(I)V

    .line 1538
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSIncoming;->getId()I

    move-result v4

    invoke-virtual {v0, v4}, Ljavax/jmdns/impl/DNSOutgoing;->setId(I)V

    .line 1539
    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/JmDNSImpl;->send(Ljavax/jmdns/impl/DNSOutgoing;)V

    .line 1541
    new-instance v4, Ljavax/jmdns/impl/DNSOutgoing;

    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSIncoming;->getSenderUDPPayload()I

    move-result v5

    invoke-direct {v4, v2, v1, v5}, Ljavax/jmdns/impl/DNSOutgoing;-><init>(IZI)V

    move-object v0, v4

    .line 1542
    invoke-virtual {v0, p1, p5}, Ljavax/jmdns/impl/DNSOutgoing;->addAnswer(Ljavax/jmdns/impl/DNSIncoming;Ljavax/jmdns/impl/DNSRecord;)V

    .line 1544
    .end local v3    # "e":Ljava/io/IOException;
    :goto_36
    return-object v0
.end method

.method public addListener(Ljavax/jmdns/impl/DNSListener;Ljavax/jmdns/impl/DNSQuestion;)V
    .registers 8
    .param p1, "listener"    # Ljavax/jmdns/impl/DNSListener;
    .param p2, "question"    # Ljavax/jmdns/impl/DNSQuestion;

    .line 1222
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1225
    .local v0, "now":J
    iget-object v2, p0, Ljavax/jmdns/impl/JmDNSImpl;->_listeners:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1229
    if-eqz p2, :cond_3f

    .line 1230
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getCache()Ljavax/jmdns/impl/DNSCache;

    move-result-object v2

    invoke-virtual {p2}, Ljavax/jmdns/impl/DNSQuestion;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/jmdns/impl/DNSCache;->getDNSEntryList(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/jmdns/impl/DNSEntry;

    .line 1231
    .local v3, "dnsEntry":Ljavax/jmdns/impl/DNSEntry;
    invoke-virtual {p2, v3}, Ljavax/jmdns/impl/DNSQuestion;->answeredBy(Ljavax/jmdns/impl/DNSEntry;)Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-virtual {v3, v0, v1}, Ljavax/jmdns/impl/DNSEntry;->isExpired(J)Z

    move-result v4

    if-nez v4, :cond_3e

    .line 1232
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getCache()Ljavax/jmdns/impl/DNSCache;

    move-result-object v4

    invoke-interface {p1, v4, v0, v1, v3}, Ljavax/jmdns/impl/DNSListener;->updateRecord(Ljavax/jmdns/impl/DNSCache;JLjavax/jmdns/impl/DNSEntry;)V

    .line 1234
    .end local v3    # "dnsEntry":Ljavax/jmdns/impl/DNSEntry;
    :cond_3e
    goto :goto_1f

    .line 1236
    :cond_3f
    return-void
.end method

.method public addServiceListener(Ljava/lang/String;Ljavax/jmdns/ServiceListener;)V
    .registers 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "listener"    # Ljavax/jmdns/ServiceListener;

    .line 920
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljavax/jmdns/impl/JmDNSImpl;->addServiceListener(Ljava/lang/String;Ljavax/jmdns/ServiceListener;Z)V

    .line 921
    return-void
.end method

.method public addServiceTypeListener(Ljavax/jmdns/ServiceTypeListener;)V
    .registers 8
    .param p1, "listener"    # Ljavax/jmdns/ServiceTypeListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 895
    new-instance v0, Ljavax/jmdns/impl/ListenerStatus$ServiceTypeListenerStatus;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljavax/jmdns/impl/ListenerStatus$ServiceTypeListenerStatus;-><init>(Ljavax/jmdns/ServiceTypeListener;Z)V

    .line 896
    .local v0, "status":Ljavax/jmdns/impl/ListenerStatus$ServiceTypeListenerStatus;
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_typeListeners:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 899
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceTypes:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 900
    .local v2, "type":Ljava/lang/String;
    new-instance v3, Ljavax/jmdns/impl/ServiceEventImpl;

    const-string v4, ""

    const/4 v5, 0x0

    invoke-direct {v3, p0, v2, v4, v5}, Ljavax/jmdns/impl/ServiceEventImpl;-><init>(Ljavax/jmdns/impl/JmDNSImpl;Ljava/lang/String;Ljava/lang/String;Ljavax/jmdns/ServiceInfo;)V

    invoke-virtual {v0, v3}, Ljavax/jmdns/impl/ListenerStatus$ServiceTypeListenerStatus;->serviceTypeAdded(Ljavax/jmdns/ServiceEvent;)V

    .line 901
    .end local v2    # "type":Ljava/lang/String;
    goto :goto_15

    .line 903
    :cond_2d
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->startTypeResolver()V

    .line 904
    return-void
.end method

.method public advanceState(Ljavax/jmdns/impl/tasks/DNSTask;)Z
    .registers 3
    .param p1, "task"    # Ljavax/jmdns/impl/tasks/DNSTask;

    .line 517
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    invoke-virtual {v0, p1}, Ljavax/jmdns/impl/HostInfo;->advanceState(Ljavax/jmdns/impl/tasks/DNSTask;)Z

    move-result v0

    return v0
.end method

.method public associateWithTask(Ljavax/jmdns/impl/tasks/DNSTask;Ljavax/jmdns/impl/constants/DNSState;)V
    .registers 4
    .param p1, "task"    # Ljavax/jmdns/impl/tasks/DNSTask;
    .param p2, "state"    # Ljavax/jmdns/impl/constants/DNSState;

    .line 565
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    invoke-virtual {v0, p1, p2}, Ljavax/jmdns/impl/HostInfo;->associateWithTask(Ljavax/jmdns/impl/tasks/DNSTask;Ljavax/jmdns/impl/constants/DNSState;)V

    .line 566
    return-void
.end method

.method public cancelState()Z
    .registers 2

    .line 533
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    invoke-virtual {v0}, Ljavax/jmdns/impl/HostInfo;->cancelState()Z

    move-result v0

    return v0
.end method

.method public cancelStateTimer()V
    .registers 3

    .line 1608
    invoke-static {}, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->getInstance()Ljavax/jmdns/impl/DNSTaskStarter$Factory;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->getStarter(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/impl/DNSTaskStarter;

    move-result-object v0

    invoke-interface {v0}, Ljavax/jmdns/impl/DNSTaskStarter;->cancelStateTimer()V

    .line 1609
    return-void
.end method

.method public cancelTimer()V
    .registers 3

    .line 1599
    invoke-static {}, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->getInstance()Ljavax/jmdns/impl/DNSTaskStarter$Factory;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->getStarter(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/impl/DNSTaskStarter;

    move-result-object v0

    invoke-interface {v0}, Ljavax/jmdns/impl/DNSTaskStarter;->cancelTimer()V

    .line 1600
    return-void
.end method

.method public cleanCache()V
    .registers 10

    .line 1803
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1804
    .local v0, "now":J
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getCache()Ljavax/jmdns/impl/DNSCache;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/jmdns/impl/DNSCache;->allValues()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_66

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/jmdns/impl/DNSEntry;

    .line 1806
    .local v3, "entry":Ljavax/jmdns/impl/DNSEntry;
    :try_start_1c
    move-object v4, v3

    check-cast v4, Ljavax/jmdns/impl/DNSRecord;

    .line 1807
    .local v4, "record":Ljavax/jmdns/impl/DNSRecord;
    invoke-virtual {v4, v0, v1}, Ljavax/jmdns/impl/DNSRecord;->isExpired(J)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 1808
    sget-object v5, Ljavax/jmdns/impl/JmDNSImpl$Operation;->Remove:Ljavax/jmdns/impl/JmDNSImpl$Operation;

    invoke-virtual {p0, v0, v1, v4, v5}, Ljavax/jmdns/impl/JmDNSImpl;->updateRecord(JLjavax/jmdns/impl/DNSRecord;Ljavax/jmdns/impl/JmDNSImpl$Operation;)V

    .line 1809
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getCache()Ljavax/jmdns/impl/DNSCache;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljavax/jmdns/impl/DNSCache;->removeDNSEntry(Ljavax/jmdns/impl/DNSEntry;)Z

    goto :goto_3b

    .line 1810
    :cond_32
    invoke-virtual {v4, v0, v1}, Ljavax/jmdns/impl/DNSRecord;->isStale(J)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 1812
    invoke-virtual {p0, v4}, Ljavax/jmdns/impl/JmDNSImpl;->renewServiceCollector(Ljavax/jmdns/impl/DNSRecord;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_3b} :catch_3c

    .line 1817
    .end local v4    # "record":Ljavax/jmdns/impl/DNSRecord;
    :cond_3b
    :goto_3b
    goto :goto_65

    .line 1814
    :catch_3c
    move-exception v4

    .line 1815
    .local v4, "exception":Ljava/lang/Exception;
    sget-object v5, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".Error while reaping records: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1816
    sget-object v5, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 1818
    .end local v3    # "entry":Ljavax/jmdns/impl/DNSEntry;
    .end local v4    # "exception":Ljava/lang/Exception;
    :goto_65
    goto :goto_10

    .line 1819
    :cond_66
    return-void
.end method

.method public close()V
    .registers 4

    .line 1826
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->isClosing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1827
    return-void

    .line 1830
    :cond_7
    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1831
    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cancelling JmDNS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 1835
    :cond_27
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->closeState()Z

    move-result v0

    if-eqz v0, :cond_92

    .line 1839
    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    const-string v1, "Canceling the timer"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 1840
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->cancelTimer()V

    .line 1843
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->unregisterAllServices()V

    .line 1844
    invoke-direct {p0}, Ljavax/jmdns/impl/JmDNSImpl;->disposeServiceCollectors()V

    .line 1846
    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 1847
    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wait for JmDNS cancel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 1849
    :cond_5d
    const-wide/16 v0, 0x1388

    invoke-virtual {p0, v0, v1}, Ljavax/jmdns/impl/JmDNSImpl;->waitForCanceled(J)Z

    .line 1852
    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    const-string v1, "Canceling the state timer"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 1853
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->cancelStateTimer()V

    .line 1856
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 1859
    invoke-direct {p0}, Ljavax/jmdns/impl/JmDNSImpl;->closeMulticastSocket()V

    .line 1862
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_shutdown:Ljava/lang/Thread;

    if-eqz v0, :cond_81

    .line 1863
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_shutdown:Ljava/lang/Thread;

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->removeShutdownHook(Ljava/lang/Thread;)Z

    .line 1866
    :cond_81
    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_92

    .line 1867
    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    const-string v1, "JmDNS closed."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 1870
    :cond_92
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/JmDNSImpl;->advanceState(Ljavax/jmdns/impl/tasks/DNSTask;)Z

    .line 1871
    return-void
.end method

.method public closeState()Z
    .registers 2

    .line 541
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    invoke-virtual {v0}, Ljavax/jmdns/impl/HostInfo;->closeState()Z

    move-result v0

    return v0
.end method

.method public getCache()Ljavax/jmdns/impl/DNSCache;
    .registers 2

    .line 662
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_cache:Ljavax/jmdns/impl/DNSCache;

    return-object v0
.end method

.method public getDelegate()Ljavax/jmdns/JmDNS$Delegate;
    .registers 2

    .line 2252
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_delegate:Ljavax/jmdns/JmDNS$Delegate;

    return-object v0
.end method

.method public getDns()Ljavax/jmdns/impl/JmDNSImpl;
    .registers 1

    .line 557
    return-object p0
.end method

.method public getGroup()Ljava/net/InetAddress;
    .registers 2

    .line 2247
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_group:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getHostName()Ljava/lang/String;
    .registers 2

    .line 678
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    invoke-virtual {v0}, Ljavax/jmdns/impl/HostInfo;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 695
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    invoke-virtual {v0}, Ljavax/jmdns/impl/HostInfo;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getInterface()Ljava/net/InetAddress;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 704
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_socket:Ljava/net/MulticastSocket;

    invoke-virtual {v0}, Ljava/net/MulticastSocket;->getInterface()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getLastThrottleIncrement()J
    .registers 3

    .line 2203
    iget-wide v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_lastThrottleIncrement:J

    return-wide v0
.end method

.method public getLocalHost()Ljavax/jmdns/impl/HostInfo;
    .registers 2

    .line 687
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 670
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getPlannedAnswer()Ljavax/jmdns/impl/DNSIncoming;
    .registers 2

    .line 2231
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_plannedAnswer:Ljavax/jmdns/impl/DNSIncoming;

    return-object v0
.end method

.method public getServiceInfo(Ljava/lang/String;Ljava/lang/String;)Ljavax/jmdns/ServiceInfo;
    .registers 9
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 712
    const/4 v3, 0x0

    const-wide/16 v4, 0x1770

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Ljavax/jmdns/impl/JmDNSImpl;->getServiceInfo(Ljava/lang/String;Ljava/lang/String;ZJ)Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getServiceInfo(Ljava/lang/String;Ljava/lang/String;J)Ljavax/jmdns/ServiceInfo;
    .registers 11
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "timeout"    # J

    .line 720
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Ljavax/jmdns/impl/JmDNSImpl;->getServiceInfo(Ljava/lang/String;Ljava/lang/String;ZJ)Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getServiceInfo(Ljava/lang/String;Ljava/lang/String;Z)Ljavax/jmdns/ServiceInfo;
    .registers 10
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "persistent"    # Z

    .line 728
    const-wide/16 v4, 0x1770

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Ljavax/jmdns/impl/JmDNSImpl;->getServiceInfo(Ljava/lang/String;Ljava/lang/String;ZJ)Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getServiceInfo(Ljava/lang/String;Ljava/lang/String;ZJ)Ljavax/jmdns/ServiceInfo;
    .registers 8
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "persistent"    # Z
    .param p4, "timeout"    # J

    .line 736
    const-string v0, ""

    invoke-virtual {p0, p1, p2, v0, p3}, Ljavax/jmdns/impl/JmDNSImpl;->resolveServiceInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljavax/jmdns/impl/ServiceInfoImpl;

    move-result-object v0

    .line 737
    .local v0, "info":Ljavax/jmdns/impl/ServiceInfoImpl;
    invoke-direct {p0, v0, p4, p5}, Ljavax/jmdns/impl/JmDNSImpl;->waitForInfoData(Ljavax/jmdns/ServiceInfo;J)V

    .line 738
    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->hasData()Z

    move-result v1

    if-eqz v1, :cond_11

    move-object v1, v0

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return-object v1
.end method

.method getServiceInfoFromCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljavax/jmdns/impl/ServiceInfoImpl;
    .registers 23
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "subtype"    # Ljava/lang/String;
    .param p4, "persistent"    # Z

    .line 759
    move/from16 v9, p4

    new-instance v10, Ljavax/jmdns/impl/ServiceInfoImpl;

    const/4 v0, 0x0

    move-object v11, v0

    check-cast v11, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v10

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v7, p4

    move-object v8, v11

    invoke-direct/range {v0 .. v8}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ[B)V

    move-object v7, v10

    .line 760
    .local v7, "info":Ljavax/jmdns/impl/ServiceInfoImpl;
    invoke-virtual/range {p0 .. p0}, Ljavax/jmdns/impl/JmDNSImpl;->getCache()Ljavax/jmdns/impl/DNSCache;

    move-result-object v0

    new-instance v8, Ljavax/jmdns/impl/DNSRecord$Pointer;

    sget-object v3, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_ANY:Ljavax/jmdns/impl/constants/DNSRecordClass;

    invoke-virtual {v7}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v6

    move-object v1, v8

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Ljavax/jmdns/impl/DNSRecord$Pointer;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZILjava/lang/String;)V

    invoke-virtual {v0, v8}, Ljavax/jmdns/impl/DNSCache;->getDNSEntry(Ljavax/jmdns/impl/DNSEntry;)Ljavax/jmdns/impl/DNSEntry;

    move-result-object v8

    .line 761
    .local v8, "pointerEntry":Ljavax/jmdns/impl/DNSEntry;
    instance-of v0, v8, Ljavax/jmdns/impl/DNSRecord;

    if-eqz v0, :cond_119

    .line 762
    move-object v0, v8

    check-cast v0, Ljavax/jmdns/impl/DNSRecord;

    invoke-virtual {v0, v9}, Ljavax/jmdns/impl/DNSRecord;->getServiceInfo(Z)Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljavax/jmdns/impl/ServiceInfoImpl;

    .line 763
    .local v10, "cachedInfo":Ljavax/jmdns/impl/ServiceInfoImpl;
    if-eqz v10, :cond_119

    .line 766
    invoke-virtual {v10}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedNameMap()Ljava/util/Map;

    move-result-object v12

    .line 767
    .local v12, "map":Ljava/util/Map;, "Ljava/util/Map<Ljavax/jmdns/ServiceInfo$Fields;Ljava/lang/String;>;"
    const/4 v13, 0x0

    .line 768
    .local v13, "srvBytes":[B
    const-string v14, ""

    .line 769
    .local v14, "server":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Ljavax/jmdns/impl/JmDNSImpl;->getCache()Ljavax/jmdns/impl/DNSCache;

    move-result-object v0

    invoke-virtual {v7}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_SRV:Ljavax/jmdns/impl/constants/DNSRecordType;

    sget-object v3, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_ANY:Ljavax/jmdns/impl/constants/DNSRecordClass;

    invoke-virtual {v0, v1, v2, v3}, Ljavax/jmdns/impl/DNSCache;->getDNSEntry(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;)Ljavax/jmdns/impl/DNSEntry;

    move-result-object v15

    .line 770
    .local v15, "serviceEntry":Ljavax/jmdns/impl/DNSEntry;
    instance-of v0, v15, Ljavax/jmdns/impl/DNSRecord;

    if-eqz v0, :cond_84

    .line 771
    move-object v0, v15

    check-cast v0, Ljavax/jmdns/impl/DNSRecord;

    invoke-virtual {v0, v9}, Ljavax/jmdns/impl/DNSRecord;->getServiceInfo(Z)Ljavax/jmdns/ServiceInfo;

    move-result-object v16

    .line 772
    .local v16, "cachedServiceEntryInfo":Ljavax/jmdns/ServiceInfo;
    if-eqz v16, :cond_84

    .line 773
    new-instance v17, Ljavax/jmdns/impl/ServiceInfoImpl;

    invoke-virtual/range {v16 .. v16}, Ljavax/jmdns/ServiceInfo;->getPort()I

    move-result v2

    invoke-virtual/range {v16 .. v16}, Ljavax/jmdns/ServiceInfo;->getWeight()I

    move-result v3

    invoke-virtual/range {v16 .. v16}, Ljavax/jmdns/ServiceInfo;->getPriority()I

    move-result v4

    move-object/from16 v0, v17

    move-object v1, v12

    move/from16 v5, p4

    move-object v6, v11

    invoke-direct/range {v0 .. v6}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljava/util/Map;IIIZ[B)V

    move-object/from16 v10, v17

    .line 774
    invoke-virtual/range {v16 .. v16}, Ljavax/jmdns/ServiceInfo;->getTextBytes()[B

    move-result-object v13

    .line 775
    invoke-virtual/range {v16 .. v16}, Ljavax/jmdns/ServiceInfo;->getServer()Ljava/lang/String;

    move-result-object v14

    .line 778
    .end local v16    # "cachedServiceEntryInfo":Ljavax/jmdns/ServiceInfo;
    :cond_84
    invoke-virtual/range {p0 .. p0}, Ljavax/jmdns/impl/JmDNSImpl;->getCache()Ljavax/jmdns/impl/DNSCache;

    move-result-object v0

    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_A:Ljavax/jmdns/impl/constants/DNSRecordType;

    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_ANY:Ljavax/jmdns/impl/constants/DNSRecordClass;

    invoke-virtual {v0, v14, v1, v2}, Ljavax/jmdns/impl/DNSCache;->getDNSEntry(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;)Ljavax/jmdns/impl/DNSEntry;

    move-result-object v0

    .line 779
    .local v0, "addressEntry":Ljavax/jmdns/impl/DNSEntry;
    instance-of v1, v0, Ljavax/jmdns/impl/DNSRecord;

    const/4 v2, 0x0

    if-eqz v1, :cond_b5

    .line 780
    move-object v1, v0

    check-cast v1, Ljavax/jmdns/impl/DNSRecord;

    invoke-virtual {v1, v9}, Ljavax/jmdns/impl/DNSRecord;->getServiceInfo(Z)Ljavax/jmdns/ServiceInfo;

    move-result-object v1

    .line 781
    .local v1, "cachedAddressInfo":Ljavax/jmdns/ServiceInfo;
    if-eqz v1, :cond_b5

    .line 782
    invoke-virtual {v1}, Ljavax/jmdns/ServiceInfo;->getInet4Addresses()[Ljava/net/Inet4Address;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_a4
    if-ge v5, v4, :cond_ae

    aget-object v6, v3, v5

    .line 783
    .local v6, "address":Ljava/net/Inet4Address;
    invoke-virtual {v10, v6}, Ljavax/jmdns/impl/ServiceInfoImpl;->addAddress(Ljava/net/Inet4Address;)V

    .line 782
    .end local v6    # "address":Ljava/net/Inet4Address;
    add-int/lit8 v5, v5, 0x1

    goto :goto_a4

    .line 785
    :cond_ae
    invoke-virtual {v1}, Ljavax/jmdns/ServiceInfo;->getTextBytes()[B

    move-result-object v3

    invoke-virtual {v10, v3}, Ljavax/jmdns/impl/ServiceInfoImpl;->_setText([B)V

    .line 788
    .end local v1    # "cachedAddressInfo":Ljavax/jmdns/ServiceInfo;
    :cond_b5
    invoke-virtual/range {p0 .. p0}, Ljavax/jmdns/impl/JmDNSImpl;->getCache()Ljavax/jmdns/impl/DNSCache;

    move-result-object v1

    sget-object v3, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_AAAA:Ljavax/jmdns/impl/constants/DNSRecordType;

    sget-object v4, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_ANY:Ljavax/jmdns/impl/constants/DNSRecordClass;

    invoke-virtual {v1, v14, v3, v4}, Ljavax/jmdns/impl/DNSCache;->getDNSEntry(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;)Ljavax/jmdns/impl/DNSEntry;

    move-result-object v0

    .line 789
    instance-of v1, v0, Ljavax/jmdns/impl/DNSRecord;

    if-eqz v1, :cond_e4

    .line 790
    move-object v1, v0

    check-cast v1, Ljavax/jmdns/impl/DNSRecord;

    invoke-virtual {v1, v9}, Ljavax/jmdns/impl/DNSRecord;->getServiceInfo(Z)Ljavax/jmdns/ServiceInfo;

    move-result-object v1

    .line 791
    .restart local v1    # "cachedAddressInfo":Ljavax/jmdns/ServiceInfo;
    if-eqz v1, :cond_e4

    .line 792
    invoke-virtual {v1}, Ljavax/jmdns/ServiceInfo;->getInet6Addresses()[Ljava/net/Inet6Address;

    move-result-object v3

    array-length v4, v3

    :goto_d3
    if-ge v2, v4, :cond_dd

    aget-object v5, v3, v2

    .line 793
    .local v5, "address":Ljava/net/Inet6Address;
    invoke-virtual {v10, v5}, Ljavax/jmdns/impl/ServiceInfoImpl;->addAddress(Ljava/net/Inet6Address;)V

    .line 792
    .end local v5    # "address":Ljava/net/Inet6Address;
    add-int/lit8 v2, v2, 0x1

    goto :goto_d3

    .line 795
    :cond_dd
    invoke-virtual {v1}, Ljavax/jmdns/ServiceInfo;->getTextBytes()[B

    move-result-object v2

    invoke-virtual {v10, v2}, Ljavax/jmdns/impl/ServiceInfoImpl;->_setText([B)V

    .line 798
    .end local v1    # "cachedAddressInfo":Ljavax/jmdns/ServiceInfo;
    :cond_e4
    invoke-virtual/range {p0 .. p0}, Ljavax/jmdns/impl/JmDNSImpl;->getCache()Ljavax/jmdns/impl/DNSCache;

    move-result-object v1

    invoke-virtual {v10}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_TXT:Ljavax/jmdns/impl/constants/DNSRecordType;

    sget-object v4, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_ANY:Ljavax/jmdns/impl/constants/DNSRecordClass;

    invoke-virtual {v1, v2, v3, v4}, Ljavax/jmdns/impl/DNSCache;->getDNSEntry(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;)Ljavax/jmdns/impl/DNSEntry;

    move-result-object v1

    .line 799
    .local v1, "textEntry":Ljavax/jmdns/impl/DNSEntry;
    instance-of v2, v1, Ljavax/jmdns/impl/DNSRecord;

    if-eqz v2, :cond_108

    .line 800
    move-object v2, v1

    check-cast v2, Ljavax/jmdns/impl/DNSRecord;

    invoke-virtual {v2, v9}, Ljavax/jmdns/impl/DNSRecord;->getServiceInfo(Z)Ljavax/jmdns/ServiceInfo;

    move-result-object v2

    .line 801
    .local v2, "cachedTextInfo":Ljavax/jmdns/ServiceInfo;
    if-eqz v2, :cond_108

    .line 802
    invoke-virtual {v2}, Ljavax/jmdns/ServiceInfo;->getTextBytes()[B

    move-result-object v3

    invoke-virtual {v10, v3}, Ljavax/jmdns/impl/ServiceInfoImpl;->_setText([B)V

    .line 805
    .end local v2    # "cachedTextInfo":Ljavax/jmdns/ServiceInfo;
    :cond_108
    invoke-virtual {v10}, Ljavax/jmdns/impl/ServiceInfoImpl;->getTextBytes()[B

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_112

    .line 806
    invoke-virtual {v10, v13}, Ljavax/jmdns/impl/ServiceInfoImpl;->_setText([B)V

    .line 808
    :cond_112
    invoke-virtual {v10}, Ljavax/jmdns/impl/ServiceInfoImpl;->hasData()Z

    move-result v2

    if-eqz v2, :cond_119

    .line 809
    move-object v7, v10

    .line 813
    .end local v0    # "addressEntry":Ljavax/jmdns/impl/DNSEntry;
    .end local v1    # "textEntry":Ljavax/jmdns/impl/DNSEntry;
    .end local v10    # "cachedInfo":Ljavax/jmdns/impl/ServiceInfoImpl;
    .end local v12    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljavax/jmdns/ServiceInfo$Fields;Ljava/lang/String;>;"
    .end local v13    # "srvBytes":[B
    .end local v14    # "server":Ljava/lang/String;
    .end local v15    # "serviceEntry":Ljavax/jmdns/impl/DNSEntry;
    :cond_119
    return-object v7
.end method

.method public getServiceTypes()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljavax/jmdns/impl/JmDNSImpl$ServiceTypeEntry;",
            ">;"
        }
    .end annotation

    .line 2239
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceTypes:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method public getServices()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljavax/jmdns/ServiceInfo;",
            ">;"
        }
    .end annotation

    .line 2195
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_services:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method public getSocket()Ljava/net/MulticastSocket;
    .registers 2

    .line 2243
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_socket:Ljava/net/MulticastSocket;

    return-object v0
.end method

.method public getThrottle()I
    .registers 2

    .line 2211
    iget v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_throttle:I

    return v0
.end method

.method handleQuery(Ljavax/jmdns/impl/DNSIncoming;Ljava/net/InetAddress;I)V
    .registers 11
    .param p1, "in"    # Ljavax/jmdns/impl/DNSIncoming;
    .param p2, "addr"    # Ljava/net/InetAddress;
    .param p3, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1470
    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1471
    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".handle query: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 1474
    :cond_27
    const/4 v0, 0x0

    .line 1475
    .local v0, "conflictDetected":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x78

    add-long/2addr v1, v3

    .line 1476
    .local v1, "expirationTime":J
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSIncoming;->getAllAnswers()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_37
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_49

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/jmdns/impl/DNSRecord;

    .line 1477
    .local v4, "answer":Ljavax/jmdns/impl/DNSRecord;
    invoke-virtual {v4, p0, v1, v2}, Ljavax/jmdns/impl/DNSRecord;->handleQuery(Ljavax/jmdns/impl/JmDNSImpl;J)Z

    move-result v5

    or-int/2addr v0, v5

    .line 1478
    .end local v4    # "answer":Ljavax/jmdns/impl/DNSRecord;
    goto :goto_37

    .line 1480
    :cond_49
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->ioLock()V

    .line 1483
    :try_start_4c
    iget-object v3, p0, Ljavax/jmdns/impl/JmDNSImpl;->_plannedAnswer:Ljavax/jmdns/impl/DNSIncoming;

    if-eqz v3, :cond_56

    .line 1484
    iget-object v3, p0, Ljavax/jmdns/impl/JmDNSImpl;->_plannedAnswer:Ljavax/jmdns/impl/DNSIncoming;

    invoke-virtual {v3, p1}, Ljavax/jmdns/impl/DNSIncoming;->append(Ljavax/jmdns/impl/DNSIncoming;)V

    goto :goto_65

    .line 1486
    :cond_56
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSIncoming;->clone()Ljavax/jmdns/impl/DNSIncoming;

    move-result-object v3

    .line 1487
    .local v3, "plannedAnswer":Ljavax/jmdns/impl/DNSIncoming;
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSIncoming;->isTruncated()Z

    move-result v4

    if-eqz v4, :cond_62

    .line 1488
    iput-object v3, p0, Ljavax/jmdns/impl/JmDNSImpl;->_plannedAnswer:Ljavax/jmdns/impl/DNSIncoming;

    .line 1490
    :cond_62
    invoke-virtual {p0, v3, p3}, Ljavax/jmdns/impl/JmDNSImpl;->startResponder(Ljavax/jmdns/impl/DNSIncoming;I)V
    :try_end_65
    .catchall {:try_start_4c .. :try_end_65} :catchall_8b

    .line 1494
    .end local v3    # "plannedAnswer":Ljavax/jmdns/impl/DNSIncoming;
    :goto_65
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->ioUnlock()V

    .line 1495
    nop

    .line 1497
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1498
    .local v3, "now":J
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSIncoming;->getAnswers()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_75
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_85

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/jmdns/impl/DNSRecord;

    .line 1499
    .local v6, "answer":Ljavax/jmdns/impl/DNSRecord;
    invoke-virtual {p0, v6, v3, v4}, Ljavax/jmdns/impl/JmDNSImpl;->handleRecord(Ljavax/jmdns/impl/DNSRecord;J)V

    .line 1500
    .end local v6    # "answer":Ljavax/jmdns/impl/DNSRecord;
    goto :goto_75

    .line 1502
    :cond_85
    if-eqz v0, :cond_8a

    .line 1503
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->startProber()V

    .line 1505
    :cond_8a
    return-void

    .line 1494
    .end local v3    # "now":J
    :catchall_8b
    move-exception v3

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->ioUnlock()V

    throw v3
.end method

.method handleRecord(Ljavax/jmdns/impl/DNSRecord;J)V
    .registers 13
    .param p1, "record"    # Ljavax/jmdns/impl/DNSRecord;
    .param p2, "now"    # J

    .line 1351
    move-object v0, p1

    .line 1353
    .local v0, "newRecord":Ljavax/jmdns/impl/DNSRecord;
    sget-object v1, Ljavax/jmdns/impl/JmDNSImpl$Operation;->Noop:Ljavax/jmdns/impl/JmDNSImpl$Operation;

    .line 1354
    .local v1, "cacheOperation":Ljavax/jmdns/impl/JmDNSImpl$Operation;
    invoke-virtual {v0, p2, p3}, Ljavax/jmdns/impl/DNSRecord;->isExpired(J)Z

    move-result v2

    .line 1355
    .local v2, "expired":Z
    sget-object v3, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 1356
    sget-object v3, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " handle response: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 1360
    :cond_2e
    invoke-virtual {v0}, Ljavax/jmdns/impl/DNSRecord;->isServicesDiscoveryMetaQuery()Z

    move-result v3

    if-nez v3, :cond_10d

    invoke-virtual {v0}, Ljavax/jmdns/impl/DNSRecord;->isDomainDiscoveryQuery()Z

    move-result v3

    if-nez v3, :cond_10d

    .line 1361
    invoke-virtual {v0}, Ljavax/jmdns/impl/DNSRecord;->isUnique()Z

    move-result v3

    .line 1362
    .local v3, "unique":Z
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getCache()Ljavax/jmdns/impl/DNSCache;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljavax/jmdns/impl/DNSCache;->getDNSEntry(Ljavax/jmdns/impl/DNSEntry;)Ljavax/jmdns/impl/DNSEntry;

    move-result-object v4

    check-cast v4, Ljavax/jmdns/impl/DNSRecord;

    .line 1363
    .local v4, "cachedRecord":Ljavax/jmdns/impl/DNSRecord;
    sget-object v5, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_6f

    .line 1364
    sget-object v5, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " handle response cached record: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 1366
    :cond_6f
    if-eqz v3, :cond_b2

    .line 1367
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getCache()Ljavax/jmdns/impl/DNSCache;

    move-result-object v5

    invoke-virtual {v0}, Ljavax/jmdns/impl/DNSRecord;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavax/jmdns/impl/DNSCache;->getDNSEntryList(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_81
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/jmdns/impl/DNSEntry;

    .line 1368
    .local v6, "entry":Ljavax/jmdns/impl/DNSEntry;
    invoke-virtual {v0}, Ljavax/jmdns/impl/DNSRecord;->getRecordType()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v7

    invoke-virtual {v6}, Ljavax/jmdns/impl/DNSEntry;->getRecordType()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljavax/jmdns/impl/constants/DNSRecordType;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b1

    invoke-virtual {v0}, Ljavax/jmdns/impl/DNSRecord;->getRecordClass()Ljavax/jmdns/impl/constants/DNSRecordClass;

    move-result-object v7

    invoke-virtual {v6}, Ljavax/jmdns/impl/DNSEntry;->getRecordClass()Ljavax/jmdns/impl/constants/DNSRecordClass;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljavax/jmdns/impl/constants/DNSRecordClass;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b1

    if-eq v6, v4, :cond_b1

    .line 1369
    move-object v7, v6

    check-cast v7, Ljavax/jmdns/impl/DNSRecord;

    invoke-virtual {v7, p2, p3}, Ljavax/jmdns/impl/DNSRecord;->setWillExpireSoon(J)V

    .line 1371
    .end local v6    # "entry":Ljavax/jmdns/impl/DNSEntry;
    :cond_b1
    goto :goto_81

    .line 1373
    :cond_b2
    if-eqz v4, :cond_102

    .line 1374
    if-eqz v2, :cond_cc

    .line 1376
    invoke-virtual {v0}, Ljavax/jmdns/impl/DNSRecord;->getTTL()I

    move-result v5

    if-nez v5, :cond_c2

    .line 1377
    sget-object v1, Ljavax/jmdns/impl/JmDNSImpl$Operation;->Noop:Ljavax/jmdns/impl/JmDNSImpl$Operation;

    .line 1378
    invoke-virtual {v4, p2, p3}, Ljavax/jmdns/impl/DNSRecord;->setWillExpireSoon(J)V

    goto :goto_10d

    .line 1381
    :cond_c2
    sget-object v1, Ljavax/jmdns/impl/JmDNSImpl$Operation;->Remove:Ljavax/jmdns/impl/JmDNSImpl$Operation;

    .line 1382
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getCache()Ljavax/jmdns/impl/DNSCache;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljavax/jmdns/impl/DNSCache;->removeDNSEntry(Ljavax/jmdns/impl/DNSEntry;)Z

    goto :goto_10d

    .line 1386
    :cond_cc
    invoke-virtual {v0, v4}, Ljavax/jmdns/impl/DNSRecord;->sameValue(Ljavax/jmdns/impl/DNSRecord;)Z

    move-result v5

    if-eqz v5, :cond_e8

    invoke-virtual {v0, v4}, Ljavax/jmdns/impl/DNSRecord;->sameSubtype(Ljavax/jmdns/impl/DNSEntry;)Z

    move-result v5

    if-nez v5, :cond_e3

    invoke-virtual {v0}, Ljavax/jmdns/impl/DNSRecord;->getSubtype()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_e3

    goto :goto_e8

    .line 1396
    :cond_e3
    invoke-virtual {v4, v0}, Ljavax/jmdns/impl/DNSRecord;->resetTTL(Ljavax/jmdns/impl/DNSRecord;)V

    .line 1397
    move-object v0, v4

    goto :goto_10d

    .line 1387
    :cond_e8
    :goto_e8
    invoke-virtual {v0}, Ljavax/jmdns/impl/DNSRecord;->isSingleValued()Z

    move-result v5

    if-eqz v5, :cond_f8

    .line 1388
    sget-object v1, Ljavax/jmdns/impl/JmDNSImpl$Operation;->Update:Ljavax/jmdns/impl/JmDNSImpl$Operation;

    .line 1389
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getCache()Ljavax/jmdns/impl/DNSCache;

    move-result-object v5

    invoke-virtual {v5, v0, v4}, Ljavax/jmdns/impl/DNSCache;->replaceDNSEntry(Ljavax/jmdns/impl/DNSEntry;Ljavax/jmdns/impl/DNSEntry;)Z

    goto :goto_10d

    .line 1392
    :cond_f8
    sget-object v1, Ljavax/jmdns/impl/JmDNSImpl$Operation;->Add:Ljavax/jmdns/impl/JmDNSImpl$Operation;

    .line 1393
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getCache()Ljavax/jmdns/impl/DNSCache;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljavax/jmdns/impl/DNSCache;->addDNSEntry(Ljavax/jmdns/impl/DNSEntry;)Z

    goto :goto_10d

    .line 1401
    :cond_102
    if-nez v2, :cond_10d

    .line 1402
    sget-object v1, Ljavax/jmdns/impl/JmDNSImpl$Operation;->Add:Ljavax/jmdns/impl/JmDNSImpl$Operation;

    .line 1403
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getCache()Ljavax/jmdns/impl/DNSCache;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljavax/jmdns/impl/DNSCache;->addDNSEntry(Ljavax/jmdns/impl/DNSEntry;)Z

    .line 1409
    .end local v3    # "unique":Z
    .end local v4    # "cachedRecord":Ljavax/jmdns/impl/DNSRecord;
    :cond_10d
    :goto_10d
    invoke-virtual {v0}, Ljavax/jmdns/impl/DNSRecord;->getRecordType()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v3

    sget-object v4, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_PTR:Ljavax/jmdns/impl/constants/DNSRecordType;

    if-ne v3, v4, :cond_13b

    .line 1411
    const/4 v3, 0x0

    .line 1412
    .local v3, "typeAdded":Z
    invoke-virtual {v0}, Ljavax/jmdns/impl/DNSRecord;->isServicesDiscoveryMetaQuery()Z

    move-result v4

    if-eqz v4, :cond_12a

    .line 1414
    if-nez v2, :cond_129

    .line 1415
    move-object v4, v0

    check-cast v4, Ljavax/jmdns/impl/DNSRecord$Pointer;

    invoke-virtual {v4}, Ljavax/jmdns/impl/DNSRecord$Pointer;->getAlias()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljavax/jmdns/impl/JmDNSImpl;->registerServiceType(Ljava/lang/String;)Z

    move-result v3

    .line 1417
    :cond_129
    return-void

    .line 1419
    :cond_12a
    invoke-virtual {v0}, Ljavax/jmdns/impl/DNSRecord;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljavax/jmdns/impl/JmDNSImpl;->registerServiceType(Ljava/lang/String;)Z

    move-result v4

    or-int/2addr v3, v4

    .line 1420
    if-eqz v3, :cond_13b

    sget-object v4, Ljavax/jmdns/impl/JmDNSImpl$Operation;->Noop:Ljavax/jmdns/impl/JmDNSImpl$Operation;

    if-ne v1, v4, :cond_13b

    .line 1421
    sget-object v1, Ljavax/jmdns/impl/JmDNSImpl$Operation;->RegisterServiceType:Ljavax/jmdns/impl/JmDNSImpl$Operation;

    .line 1426
    .end local v3    # "typeAdded":Z
    :cond_13b
    sget-object v3, Ljavax/jmdns/impl/JmDNSImpl$Operation;->Noop:Ljavax/jmdns/impl/JmDNSImpl$Operation;

    if-eq v1, v3, :cond_142

    .line 1427
    invoke-virtual {p0, p2, p3, v0, v1}, Ljavax/jmdns/impl/JmDNSImpl;->updateRecord(JLjavax/jmdns/impl/DNSRecord;Ljavax/jmdns/impl/JmDNSImpl$Operation;)V

    .line 1430
    :cond_142
    return-void
.end method

.method handleResponse(Ljavax/jmdns/impl/DNSIncoming;)V
    .registers 12
    .param p1, "msg"    # Ljavax/jmdns/impl/DNSIncoming;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1438
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1440
    .local v0, "now":J
    const/4 v2, 0x0

    .line 1441
    .local v2, "hostConflictDetected":Z
    const/4 v3, 0x0

    .line 1442
    .local v3, "serviceConflictDetected":Z
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getLocalHost()Ljavax/jmdns/impl/HostInfo;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/jmdns/impl/HostInfo;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    .line 1443
    .local v4, "addr":Ljava/lang/String;
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSIncoming;->getAllAnswers()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_52

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/jmdns/impl/DNSRecord;

    .line 1444
    .local v6, "newRecord":Ljavax/jmdns/impl/DNSRecord;
    invoke-virtual {v6}, Ljavax/jmdns/impl/DNSRecord;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1448
    .local v7, "new_record":Ljava/lang/String;
    invoke-virtual {p0, v6, v0, v1}, Ljavax/jmdns/impl/JmDNSImpl;->handleRecord(Ljavax/jmdns/impl/DNSRecord;J)V

    .line 1450
    sget-object v8, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_A:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual {v6}, Ljavax/jmdns/impl/DNSRecord;->getRecordType()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljavax/jmdns/impl/constants/DNSRecordType;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4c

    sget-object v8, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_AAAA:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual {v6}, Ljavax/jmdns/impl/DNSRecord;->getRecordType()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljavax/jmdns/impl/constants/DNSRecordType;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_46

    goto :goto_4c

    .line 1453
    :cond_46
    invoke-virtual {v6, p0}, Ljavax/jmdns/impl/DNSRecord;->handleResponse(Ljavax/jmdns/impl/JmDNSImpl;)Z

    move-result v8

    or-int/2addr v3, v8

    goto :goto_51

    .line 1451
    :cond_4c
    :goto_4c
    invoke-virtual {v6, p0}, Ljavax/jmdns/impl/DNSRecord;->handleResponse(Ljavax/jmdns/impl/JmDNSImpl;)Z

    move-result v8

    or-int/2addr v2, v8

    .line 1455
    .end local v6    # "newRecord":Ljavax/jmdns/impl/DNSRecord;
    .end local v7    # "new_record":Ljava/lang/String;
    :goto_51
    goto :goto_1a

    .line 1456
    :cond_52
    if-nez v2, :cond_56

    if-eqz v3, :cond_59

    .line 1457
    :cond_56
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->startProber()V

    .line 1459
    :cond_59
    return-void
.end method

.method handleServiceResolved(Ljavax/jmdns/ServiceEvent;)V
    .registers 9
    .param p1, "event"    # Ljavax/jmdns/ServiceEvent;

    .line 869
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 871
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;>;"
    if-eqz v0, :cond_4e

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4e

    .line 872
    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getInfo()Ljavax/jmdns/ServiceInfo;

    move-result-object v1

    if-eqz v1, :cond_4e

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getInfo()Ljavax/jmdns/ServiceInfo;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/jmdns/ServiceInfo;->hasData()Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 873
    move-object v1, p1

    .line 874
    .local v1, "localEvent":Ljavax/jmdns/ServiceEvent;
    monitor-enter v0

    .line 875
    :try_start_2a
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 876
    .local v2, "listCopy":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;>;"
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2a .. :try_end_30} :catchall_4b

    .line 877
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_34
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;

    .line 878
    .local v4, "listener":Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;
    iget-object v5, p0, Ljavax/jmdns/impl/JmDNSImpl;->_executor:Ljava/util/concurrent/ExecutorService;

    new-instance v6, Ljavax/jmdns/impl/JmDNSImpl$1;

    invoke-direct {v6, p0, v4, v1}, Ljavax/jmdns/impl/JmDNSImpl$1;-><init>(Ljavax/jmdns/impl/JmDNSImpl;Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;Ljavax/jmdns/ServiceEvent;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 885
    .end local v4    # "listener":Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;
    goto :goto_34

    .line 876
    .end local v2    # "listCopy":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;>;"
    :catchall_4b
    move-exception v2

    :try_start_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw v2

    .line 888
    .end local v1    # "localEvent":Ljavax/jmdns/ServiceEvent;
    :cond_4e
    return-void
.end method

.method incrementName(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;

    .line 1198
    move-object v0, p1

    .line 1200
    .local v0, "aName":Ljava/lang/String;
    const/16 v1, 0x28

    :try_start_3
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 1201
    .local v1, "l":I
    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 1202
    .local v2, "r":I
    if-ltz v1, :cond_3d

    if-ge v1, v2, :cond_3d

    .line 1203
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_4f

    .line 1205
    :cond_3d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " (2)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_4e
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_4e} :catch_50

    move-object v0, v3

    .line 1209
    .end local v1    # "l":I
    .end local v2    # "r":I
    :goto_4f
    goto :goto_62

    .line 1207
    :catch_50
    move-exception v1

    .line 1208
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (2)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1210
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :goto_62
    return-object v0
.end method

.method public ioLock()V
    .registers 2

    .line 2219
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_ioLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2220
    return-void
.end method

.method public ioUnlock()V
    .registers 2

    .line 2223
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_ioLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2224
    return-void
.end method

.method public isAnnounced()Z
    .registers 2

    .line 605
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    invoke-virtual {v0}, Ljavax/jmdns/impl/HostInfo;->isAnnounced()Z

    move-result v0

    return v0
.end method

.method public isAnnouncing()Z
    .registers 2

    .line 597
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    invoke-virtual {v0}, Ljavax/jmdns/impl/HostInfo;->isAnnouncing()Z

    move-result v0

    return v0
.end method

.method public isAssociatedWithTask(Ljavax/jmdns/impl/tasks/DNSTask;Ljavax/jmdns/impl/constants/DNSState;)Z
    .registers 4
    .param p1, "task"    # Ljavax/jmdns/impl/tasks/DNSTask;
    .param p2, "state"    # Ljavax/jmdns/impl/constants/DNSState;

    .line 581
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    invoke-virtual {v0, p1, p2}, Ljavax/jmdns/impl/HostInfo;->isAssociatedWithTask(Ljavax/jmdns/impl/tasks/DNSTask;Ljavax/jmdns/impl/constants/DNSState;)Z

    move-result v0

    return v0
.end method

.method public isCanceled()Z
    .registers 2

    .line 621
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    invoke-virtual {v0}, Ljavax/jmdns/impl/HostInfo;->isCanceled()Z

    move-result v0

    return v0
.end method

.method public isCanceling()Z
    .registers 2

    .line 613
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    invoke-virtual {v0}, Ljavax/jmdns/impl/HostInfo;->isCanceling()Z

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .registers 2

    .line 637
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    invoke-virtual {v0}, Ljavax/jmdns/impl/HostInfo;->isClosed()Z

    move-result v0

    return v0
.end method

.method public isClosing()Z
    .registers 2

    .line 629
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    invoke-virtual {v0}, Ljavax/jmdns/impl/HostInfo;->isClosing()Z

    move-result v0

    return v0
.end method

.method public isProbing()Z
    .registers 2

    .line 589
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    invoke-virtual {v0}, Ljavax/jmdns/impl/HostInfo;->isProbing()Z

    move-result v0

    return v0
.end method

.method public list(Ljava/lang/String;)[Ljavax/jmdns/ServiceInfo;
    .registers 4
    .param p1, "type"    # Ljava/lang/String;

    .line 1933
    const-wide/16 v0, 0x1770

    invoke-virtual {p0, p1, v0, v1}, Ljavax/jmdns/impl/JmDNSImpl;->list(Ljava/lang/String;J)[Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method public list(Ljava/lang/String;J)[Ljavax/jmdns/ServiceInfo;
    .registers 11
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "timeout"    # J

    .line 1941
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->cleanCache()V

    .line 1950
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1952
    .local v0, "loType":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1953
    .local v1, "newCollectorCreated":Z
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceling()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_71

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceled()Z

    move-result v2

    if-eqz v2, :cond_16

    goto :goto_71

    .line 1957
    :cond_16
    iget-object v2, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceCollectors:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;

    .line 1958
    .local v2, "collector":Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;
    if-nez v2, :cond_40

    .line 1959
    iget-object v4, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceCollectors:Ljava/util/concurrent/ConcurrentMap;

    new-instance v5, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;

    invoke-direct {v5, p1}, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v0, v5}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x1

    if-nez v4, :cond_30

    const/4 v4, 0x1

    goto :goto_31

    :cond_30
    const/4 v4, 0x0

    :goto_31
    move v1, v4

    .line 1960
    iget-object v4, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceCollectors:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    check-cast v2, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;

    .line 1961
    if-eqz v1, :cond_40

    .line 1962
    invoke-direct {p0, p1, v2, v5}, Ljavax/jmdns/impl/JmDNSImpl;->addServiceListener(Ljava/lang/String;Ljavax/jmdns/ServiceListener;Z)V

    .line 1965
    :cond_40
    sget-object v4, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_67

    .line 1966
    sget-object v4, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".collector: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 1982
    :cond_67
    if-eqz v2, :cond_6e

    invoke-virtual {v2, p2, p3}, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;->list(J)[Ljavax/jmdns/ServiceInfo;

    move-result-object v3

    goto :goto_70

    :cond_6e
    new-array v3, v3, [Ljavax/jmdns/ServiceInfo;

    :goto_70
    return-object v3

    .line 1954
    .end local v2    # "collector":Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;
    :cond_71
    :goto_71
    new-array v2, v3, [Ljavax/jmdns/ServiceInfo;

    return-object v2
.end method

.method public listBySubtype(Ljava/lang/String;)Ljava/util/Map;
    .registers 4
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljavax/jmdns/ServiceInfo;",
            ">;"
        }
    .end annotation

    .line 1990
    const-wide/16 v0, 0x1770

    invoke-virtual {p0, p1, v0, v1}, Ljavax/jmdns/impl/JmDNSImpl;->listBySubtype(Ljava/lang/String;J)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public listBySubtype(Ljava/lang/String;J)Ljava/util/Map;
    .registers 12
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljavax/jmdns/ServiceInfo;",
            ">;"
        }
    .end annotation

    .line 1998
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 1999
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljavax/jmdns/ServiceInfo;>;>;"
    invoke-virtual {p0, p1, p2, p3}, Ljavax/jmdns/impl/JmDNSImpl;->list(Ljava/lang/String;J)[Ljavax/jmdns/ServiceInfo;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_34

    aget-object v4, v1, v3

    .line 2000
    .local v4, "info":Ljavax/jmdns/ServiceInfo;
    invoke-virtual {v4}, Ljavax/jmdns/ServiceInfo;->getSubtype()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 2001
    .local v5, "subtype":Ljava/lang/String;
    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_28

    .line 2002
    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2004
    :cond_28
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1999
    .end local v4    # "info":Ljavax/jmdns/ServiceInfo;
    .end local v5    # "subtype":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 2007
    :cond_34
    new-instance v1, Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 2008
    .local v1, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljavax/jmdns/ServiceInfo;>;"
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_45
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_65

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2009
    .local v3, "subtype":Ljava/lang/String;
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2010
    .local v4, "infoForSubType":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/ServiceInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljavax/jmdns/ServiceInfo;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2011
    .end local v3    # "subtype":Ljava/lang/String;
    .end local v4    # "infoForSubType":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/ServiceInfo;>;"
    goto :goto_45

    .line 2013
    :cond_65
    return-object v1
.end method

.method public printServices()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1879
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1880
    return-void
.end method

.method public purgeStateTimer()V
    .registers 3

    .line 1590
    invoke-static {}, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->getInstance()Ljavax/jmdns/impl/DNSTaskStarter$Factory;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->getStarter(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/impl/DNSTaskStarter;

    move-result-object v0

    invoke-interface {v0}, Ljavax/jmdns/impl/DNSTaskStarter;->purgeStateTimer()V

    .line 1591
    return-void
.end method

.method public purgeTimer()V
    .registers 3

    .line 1581
    invoke-static {}, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->getInstance()Ljavax/jmdns/impl/DNSTaskStarter$Factory;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->getStarter(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/impl/DNSTaskStarter;

    move-result-object v0

    invoke-interface {v0}, Ljavax/jmdns/impl/DNSTaskStarter;->purgeTimer()V

    .line 1582
    return-void
.end method

.method public recover()V
    .registers 5

    .line 1715
    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "recover()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 1718
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->isClosing()Z

    move-result v0

    if-nez v0, :cond_83

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_83

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceling()Z

    move-result v0

    if-nez v0, :cond_83

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_33

    goto :goto_83

    .line 1724
    :cond_33
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_recoverLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1727
    :try_start_36
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->cancelState()Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 1728
    sget-object v1, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "recover() thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 1729
    new-instance v1, Ljavax/jmdns/impl/JmDNSImpl$7;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".recover()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljavax/jmdns/impl/JmDNSImpl$7;-><init>(Ljavax/jmdns/impl/JmDNSImpl;Ljava/lang/String;)V

    .line 1738
    .local v1, "recover":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1740
    .end local v1    # "recover":Ljava/lang/Thread;
    :cond_7e
    monitor-exit v0

    .line 1741
    return-void

    .line 1740
    :catchall_80
    move-exception v1

    monitor-exit v0
    :try_end_82
    .catchall {:try_start_36 .. :try_end_82} :catchall_80

    throw v1

    .line 1719
    :cond_83
    :goto_83
    return-void
.end method

.method public recoverState()Z
    .registers 2

    .line 549
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    invoke-virtual {v0}, Ljavax/jmdns/impl/HostInfo;->recoverState()Z

    move-result v0

    return v0
.end method

.method public registerService(Ljavax/jmdns/ServiceInfo;)V
    .registers 7
    .param p1, "infoAbstract"    # Ljavax/jmdns/ServiceInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1008
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->isClosing()Z

    move-result v0

    if-nez v0, :cond_9f

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_9f

    .line 1011
    move-object v0, p1

    check-cast v0, Ljavax/jmdns/impl/ServiceInfoImpl;

    .line 1013
    .local v0, "info":Ljavax/jmdns/impl/ServiceInfoImpl;
    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    if-eqz v1, :cond_38

    .line 1014
    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    if-ne v1, p0, :cond_30

    .line 1016
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_services:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_28

    goto :goto_38

    .line 1017
    :cond_28
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "A service information can only be registered once."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1015
    :cond_30
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "A service information can only be registered with a single instamce of JmDNS."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1020
    :cond_38
    :goto_38
    invoke-virtual {v0, p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->setDns(Ljavax/jmdns/impl/JmDNSImpl;)V

    .line 1022
    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getTypeWithSubtype()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljavax/jmdns/impl/JmDNSImpl;->registerServiceType(Ljava/lang/String;)Z

    .line 1025
    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->recoverState()Z

    .line 1026
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    invoke-virtual {v1}, Ljavax/jmdns/impl/HostInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/ServiceInfoImpl;->setServer(Ljava/lang/String;)V

    .line 1027
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    invoke-virtual {v1}, Ljavax/jmdns/impl/HostInfo;->getInet4Address()Ljava/net/Inet4Address;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/ServiceInfoImpl;->addAddress(Ljava/net/Inet4Address;)V

    .line 1028
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    invoke-virtual {v1}, Ljavax/jmdns/impl/HostInfo;->getInet6Address()Ljava/net/Inet6Address;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/ServiceInfoImpl;->addAddress(Ljava/net/Inet6Address;)V

    .line 1030
    const-wide/16 v1, 0x1770

    invoke-virtual {p0, v1, v2}, Ljavax/jmdns/impl/JmDNSImpl;->waitForAnnounced(J)Z

    .line 1032
    invoke-direct {p0, v0}, Ljavax/jmdns/impl/JmDNSImpl;->makeServiceNameUnique(Ljavax/jmdns/impl/ServiceInfoImpl;)Z

    .line 1033
    :goto_68
    iget-object v3, p0, Ljavax/jmdns/impl/JmDNSImpl;->_services:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_78

    .line 1034
    invoke-direct {p0, v0}, Ljavax/jmdns/impl/JmDNSImpl;->makeServiceNameUnique(Ljavax/jmdns/impl/ServiceInfoImpl;)Z

    goto :goto_68

    .line 1037
    :cond_78
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->startProber()V

    .line 1038
    invoke-virtual {v0, v1, v2}, Ljavax/jmdns/impl/ServiceInfoImpl;->waitForAnnounced(J)Z

    .line 1040
    sget-object v1, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_9e

    .line 1041
    sget-object v1, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerService() JmDNS registered service as "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 1043
    :cond_9e
    return-void

    .line 1009
    .end local v0    # "info":Ljavax/jmdns/impl/ServiceInfoImpl;
    :cond_9f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This DNS is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerServiceType(Ljava/lang/String;)Z
    .registers 20
    .param p1, "type"    # Ljava/lang/String;

    .line 1104
    move-object/from16 v1, p0

    const/4 v0, 0x0

    .line 1105
    .local v0, "typeAdded":Z
    invoke-static/range {p1 .. p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->decodeQualifiedNameMapForType(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 1106
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljavax/jmdns/ServiceInfo$Fields;Ljava/lang/String;>;"
    sget-object v3, Ljavax/jmdns/ServiceInfo$Fields;->Domain:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1107
    .local v3, "domain":Ljava/lang/String;
    sget-object v4, Ljavax/jmdns/ServiceInfo$Fields;->Protocol:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1108
    .local v4, "protocol":Ljava/lang/String;
    sget-object v5, Ljavax/jmdns/ServiceInfo$Fields;->Application:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1109
    .local v5, "application":Ljava/lang/String;
    sget-object v6, Ljavax/jmdns/ServiceInfo$Fields;->Subtype:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1111
    .local v6, "subtype":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_49

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_4b

    :cond_49
    const-string v8, ""

    :goto_4b
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_6b

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_6d

    :cond_6b
    const-string v8, ""

    :goto_6d
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1112
    .local v7, "name":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 1113
    .local v8, "loname":Ljava/lang/String;
    sget-object v9, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    sget-object v10, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v9, v10}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v9

    if-eqz v9, :cond_cf

    .line 1114
    sget-object v9, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljavax/jmdns/impl/JmDNSImpl;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ".registering service type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " as: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_c2

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " subtype: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_c4

    :cond_c2
    const-string v12, ""

    :goto_c4
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_d1

    .line 1116
    :cond_cf
    move-object/from16 v11, p1

    :goto_d1
    iget-object v9, v1, Ljavax/jmdns/impl/JmDNSImpl;->_serviceTypes:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v9, v8}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x0

    if-nez v9, :cond_143

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v13, "dns-sd"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_143

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v13, "in-addr.arpa"

    invoke-virtual {v9, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_143

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v13, "ip6.arpa"

    invoke-virtual {v9, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_143

    .line 1117
    iget-object v9, v1, Ljavax/jmdns/impl/JmDNSImpl;->_serviceTypes:Ljava/util/concurrent/ConcurrentMap;

    new-instance v13, Ljavax/jmdns/impl/JmDNSImpl$ServiceTypeEntry;

    invoke-direct {v13, v7}, Ljavax/jmdns/impl/JmDNSImpl$ServiceTypeEntry;-><init>(Ljava/lang/String;)V

    invoke-interface {v9, v8, v13}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_10d

    const/4 v9, 0x1

    goto :goto_10e

    :cond_10d
    const/4 v9, 0x0

    :goto_10e
    move v0, v9

    .line 1118
    if-eqz v0, :cond_140

    .line 1119
    iget-object v9, v1, Ljavax/jmdns/impl/JmDNSImpl;->_typeListeners:Ljava/util/Set;

    iget-object v13, v1, Ljavax/jmdns/impl/JmDNSImpl;->_typeListeners:Ljava/util/Set;

    invoke-interface {v13}, Ljava/util/Set;->size()I

    move-result v13

    new-array v13, v13, [Ljavax/jmdns/impl/ListenerStatus$ServiceTypeListenerStatus;

    invoke-interface {v9, v13}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljavax/jmdns/impl/ListenerStatus$ServiceTypeListenerStatus;

    .line 1120
    .local v9, "list":[Ljavax/jmdns/impl/ListenerStatus$ServiceTypeListenerStatus;
    new-instance v13, Ljavax/jmdns/impl/ServiceEventImpl;

    const-string v14, ""

    invoke-direct {v13, v1, v7, v14, v10}, Ljavax/jmdns/impl/ServiceEventImpl;-><init>(Ljavax/jmdns/impl/JmDNSImpl;Ljava/lang/String;Ljava/lang/String;Ljavax/jmdns/ServiceInfo;)V

    .line 1121
    .local v13, "event":Ljavax/jmdns/ServiceEvent;
    array-length v14, v9

    const/4 v15, 0x0

    :goto_12a
    if-ge v15, v14, :cond_140

    aget-object v12, v9, v15

    .line 1122
    .local v12, "status":Ljavax/jmdns/impl/ListenerStatus$ServiceTypeListenerStatus;
    iget-object v10, v1, Ljavax/jmdns/impl/JmDNSImpl;->_executor:Ljava/util/concurrent/ExecutorService;

    move/from16 v16, v0

    .end local v0    # "typeAdded":Z
    .local v16, "typeAdded":Z
    new-instance v0, Ljavax/jmdns/impl/JmDNSImpl$3;

    invoke-direct {v0, v1, v12, v13}, Ljavax/jmdns/impl/JmDNSImpl$3;-><init>(Ljavax/jmdns/impl/JmDNSImpl;Ljavax/jmdns/impl/ListenerStatus$ServiceTypeListenerStatus;Ljavax/jmdns/ServiceEvent;)V

    invoke-interface {v10, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 1121
    .end local v12    # "status":Ljavax/jmdns/impl/ListenerStatus$ServiceTypeListenerStatus;
    add-int/lit8 v15, v15, 0x1

    move/from16 v0, v16

    const/4 v10, 0x0

    goto :goto_12a

    .line 1132
    .end local v9    # "list":[Ljavax/jmdns/impl/ListenerStatus$ServiceTypeListenerStatus;
    .end local v13    # "event":Ljavax/jmdns/ServiceEvent;
    .end local v16    # "typeAdded":Z
    .restart local v0    # "typeAdded":Z
    :cond_140
    move/from16 v16, v0

    .end local v0    # "typeAdded":Z
    .restart local v16    # "typeAdded":Z
    goto :goto_145

    .end local v16    # "typeAdded":Z
    .restart local v0    # "typeAdded":Z
    :cond_143
    move/from16 v16, v0

    .end local v0    # "typeAdded":Z
    .restart local v16    # "typeAdded":Z
    :goto_145
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1b5

    .line 1133
    iget-object v0, v1, Ljavax/jmdns/impl/JmDNSImpl;->_serviceTypes:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, v8}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljavax/jmdns/impl/JmDNSImpl$ServiceTypeEntry;

    .line 1134
    .local v9, "subtypes":Ljavax/jmdns/impl/JmDNSImpl$ServiceTypeEntry;
    if-eqz v9, :cond_1b5

    invoke-virtual {v9, v6}, Ljavax/jmdns/impl/JmDNSImpl$ServiceTypeEntry;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b5

    .line 1135
    monitor-enter v9

    .line 1136
    :try_start_15d
    invoke-virtual {v9, v6}, Ljavax/jmdns/impl/JmDNSImpl$ServiceTypeEntry;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b0

    .line 1137
    const/16 v16, 0x1

    .line 1138
    invoke-virtual {v9, v6}, Ljavax/jmdns/impl/JmDNSImpl$ServiceTypeEntry;->add(Ljava/lang/String;)Z

    .line 1139
    iget-object v0, v1, Ljavax/jmdns/impl/JmDNSImpl;->_typeListeners:Ljava/util/Set;

    iget-object v10, v1, Ljavax/jmdns/impl/JmDNSImpl;->_typeListeners:Ljava/util/Set;

    invoke-interface {v10}, Ljava/util/Set;->size()I

    move-result v10

    new-array v10, v10, [Ljavax/jmdns/impl/ListenerStatus$ServiceTypeListenerStatus;

    invoke-interface {v0, v10}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/jmdns/impl/ListenerStatus$ServiceTypeListenerStatus;

    .line 1140
    .local v0, "list":[Ljavax/jmdns/impl/ListenerStatus$ServiceTypeListenerStatus;
    new-instance v10, Ljavax/jmdns/impl/ServiceEventImpl;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "._sub."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    const/4 v14, 0x0

    invoke-direct {v10, v1, v12, v13, v14}, Ljavax/jmdns/impl/ServiceEventImpl;-><init>(Ljavax/jmdns/impl/JmDNSImpl;Ljava/lang/String;Ljava/lang/String;Ljavax/jmdns/ServiceInfo;)V

    .line 1141
    .local v10, "event":Ljavax/jmdns/ServiceEvent;
    array-length v12, v0

    const/4 v13, 0x0

    :goto_19b
    if-ge v13, v12, :cond_1b0

    aget-object v14, v0, v13

    .line 1142
    .local v14, "status":Ljavax/jmdns/impl/ListenerStatus$ServiceTypeListenerStatus;
    iget-object v15, v1, Ljavax/jmdns/impl/JmDNSImpl;->_executor:Ljava/util/concurrent/ExecutorService;

    move-object/from16 v17, v0

    .end local v0    # "list":[Ljavax/jmdns/impl/ListenerStatus$ServiceTypeListenerStatus;
    .local v17, "list":[Ljavax/jmdns/impl/ListenerStatus$ServiceTypeListenerStatus;
    new-instance v0, Ljavax/jmdns/impl/JmDNSImpl$4;

    invoke-direct {v0, v1, v14, v10}, Ljavax/jmdns/impl/JmDNSImpl$4;-><init>(Ljavax/jmdns/impl/JmDNSImpl;Ljavax/jmdns/impl/ListenerStatus$ServiceTypeListenerStatus;Ljavax/jmdns/ServiceEvent;)V

    invoke-interface {v15, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 1141
    .end local v14    # "status":Ljavax/jmdns/impl/ListenerStatus$ServiceTypeListenerStatus;
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, v17

    goto :goto_19b

    .line 1151
    .end local v10    # "event":Ljavax/jmdns/ServiceEvent;
    .end local v17    # "list":[Ljavax/jmdns/impl/ListenerStatus$ServiceTypeListenerStatus;
    :cond_1b0
    monitor-exit v9

    goto :goto_1b5

    :catchall_1b2
    move-exception v0

    monitor-exit v9
    :try_end_1b4
    .catchall {:try_start_15d .. :try_end_1b4} :catchall_1b2

    throw v0

    .line 1154
    .end local v9    # "subtypes":Ljavax/jmdns/impl/JmDNSImpl$ServiceTypeEntry;
    :cond_1b5
    :goto_1b5
    return v16
.end method

.method public removeAssociationWithTask(Ljavax/jmdns/impl/tasks/DNSTask;)V
    .registers 3
    .param p1, "task"    # Ljavax/jmdns/impl/tasks/DNSTask;

    .line 573
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    invoke-virtual {v0, p1}, Ljavax/jmdns/impl/HostInfo;->removeAssociationWithTask(Ljavax/jmdns/impl/tasks/DNSTask;)V

    .line 574
    return-void
.end method

.method public removeListener(Ljavax/jmdns/impl/DNSListener;)V
    .registers 3
    .param p1, "listener"    # Ljavax/jmdns/impl/DNSListener;

    .line 1245
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1246
    return-void
.end method

.method public removeServiceListener(Ljava/lang/String;Ljavax/jmdns/ServiceListener;)V
    .registers 14
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "listener"    # Ljavax/jmdns/ServiceListener;

    .line 969
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 970
    .local v0, "loType":Ljava/lang/String;
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 972
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;>;"
    iget-object v2, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceCollectors:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;

    .line 973
    .local v2, "collector":Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;
    const-wide/16 v3, -0x1

    invoke-virtual {v2, v3, v4}, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;->list(J)[Ljavax/jmdns/ServiceInfo;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_69

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/jmdns/ServiceInfo;

    .line 974
    .local v4, "info":Ljavax/jmdns/ServiceInfo;
    new-instance v5, Ljavax/jmdns/impl/ServiceEventImpl;

    invoke-virtual {v4}, Ljavax/jmdns/ServiceInfo;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ljavax/jmdns/ServiceInfo;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, p0, v6, v7, v4}, Ljavax/jmdns/impl/ServiceEventImpl;-><init>(Ljavax/jmdns/impl/JmDNSImpl;Ljava/lang/String;Ljava/lang/String;Ljavax/jmdns/ServiceInfo;)V

    .line 976
    .local v5, "event":Ljavax/jmdns/ServiceEvent;
    if-eqz v1, :cond_68

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_68

    .line 977
    monitor-enter v1

    .line 978
    :try_start_44
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 979
    .local v6, "listCopy":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;>;"
    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_44 .. :try_end_4a} :catchall_65

    .line 980
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_68

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;

    .line 981
    .local v8, "listener_status":Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;
    iget-object v9, p0, Ljavax/jmdns/impl/JmDNSImpl;->_executor:Ljava/util/concurrent/ExecutorService;

    new-instance v10, Ljavax/jmdns/impl/JmDNSImpl$2;

    invoke-direct {v10, p0, v8, v5}, Ljavax/jmdns/impl/JmDNSImpl$2;-><init>(Ljavax/jmdns/impl/JmDNSImpl;Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;Ljavax/jmdns/ServiceEvent;)V

    invoke-interface {v9, v10}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 988
    .end local v8    # "listener_status":Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;
    goto :goto_4e

    .line 979
    .end local v6    # "listCopy":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;>;"
    :catchall_65
    move-exception v3

    :try_start_66
    monitor-exit v1
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_65

    throw v3

    .line 990
    .end local v4    # "info":Ljavax/jmdns/ServiceInfo;
    .end local v5    # "event":Ljavax/jmdns/ServiceEvent;
    :cond_68
    goto :goto_22

    .line 992
    :cond_69
    if-eqz v1, :cond_85

    .line 993
    monitor-enter v1

    .line 994
    :try_start_6c
    new-instance v3, Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;

    const/4 v4, 0x0

    invoke-direct {v3, p2, v4}, Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;-><init>(Ljavax/jmdns/ServiceListener;Z)V

    .line 995
    .local v3, "status":Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;
    invoke-interface {v1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 996
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_80

    .line 997
    iget-object v4, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 999
    .end local v3    # "status":Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;
    :cond_80
    monitor-exit v1

    goto :goto_85

    :catchall_82
    move-exception v3

    monitor-exit v1
    :try_end_84
    .catchall {:try_start_6c .. :try_end_84} :catchall_82

    throw v3

    .line 1001
    :cond_85
    :goto_85
    return-void
.end method

.method public removeServiceTypeListener(Ljavax/jmdns/ServiceTypeListener;)V
    .registers 4
    .param p1, "listener"    # Ljavax/jmdns/ServiceTypeListener;

    .line 911
    new-instance v0, Ljavax/jmdns/impl/ListenerStatus$ServiceTypeListenerStatus;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljavax/jmdns/impl/ListenerStatus$ServiceTypeListenerStatus;-><init>(Ljavax/jmdns/ServiceTypeListener;Z)V

    .line 912
    .local v0, "status":Ljavax/jmdns/impl/ListenerStatus$ServiceTypeListenerStatus;
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_typeListeners:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 913
    return-void
.end method

.method public renewServiceCollector(Ljavax/jmdns/impl/DNSRecord;)V
    .registers 5
    .param p1, "record"    # Ljavax/jmdns/impl/DNSRecord;

    .line 1255
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSRecord;->getServiceInfo()Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    .line 1256
    .local v0, "info":Ljavax/jmdns/ServiceInfo;
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceCollectors:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0}, Ljavax/jmdns/ServiceInfo;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1258
    invoke-virtual {v0}, Ljavax/jmdns/ServiceInfo;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljavax/jmdns/impl/JmDNSImpl;->startServiceResolver(Ljava/lang/String;)V

    .line 1260
    :cond_1b
    return-void
.end method

.method public requestServiceInfo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 840
    const/4 v3, 0x0

    const-wide/16 v4, 0x1770

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Ljavax/jmdns/impl/JmDNSImpl;->requestServiceInfo(Ljava/lang/String;Ljava/lang/String;ZJ)V

    .line 841
    return-void
.end method

.method public requestServiceInfo(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 11
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "timeout"    # J

    .line 856
    const/4 v3, 0x0

    const-wide/16 v4, 0x1770

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Ljavax/jmdns/impl/JmDNSImpl;->requestServiceInfo(Ljava/lang/String;Ljava/lang/String;ZJ)V

    .line 857
    return-void
.end method

.method public requestServiceInfo(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 10
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "persistent"    # Z

    .line 848
    const-wide/16 v4, 0x1770

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Ljavax/jmdns/impl/JmDNSImpl;->requestServiceInfo(Ljava/lang/String;Ljava/lang/String;ZJ)V

    .line 849
    return-void
.end method

.method public requestServiceInfo(Ljava/lang/String;Ljava/lang/String;ZJ)V
    .registers 7
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "persistent"    # Z
    .param p4, "timeout"    # J

    .line 864
    const-string v0, ""

    invoke-virtual {p0, p1, p2, v0, p3}, Ljavax/jmdns/impl/JmDNSImpl;->resolveServiceInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljavax/jmdns/impl/ServiceInfoImpl;

    move-result-object v0

    .line 865
    .local v0, "info":Ljavax/jmdns/impl/ServiceInfoImpl;
    invoke-direct {p0, v0, p4, p5}, Ljavax/jmdns/impl/JmDNSImpl;->waitForInfoData(Ljavax/jmdns/ServiceInfo;J)V

    .line 866
    return-void
.end method

.method resolveServiceInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljavax/jmdns/impl/ServiceInfoImpl;
    .registers 8
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "subtype"    # Ljava/lang/String;
    .param p4, "persistent"    # Z

    .line 742
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->cleanCache()V

    .line 743
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 744
    .local v0, "loType":Ljava/lang/String;
    invoke-virtual {p0, p1}, Ljavax/jmdns/impl/JmDNSImpl;->registerServiceType(Ljava/lang/String;)Z

    .line 745
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceCollectors:Ljava/util/concurrent/ConcurrentMap;

    new-instance v2, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;

    invoke-direct {v2, p1}, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v0, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_23

    .line 746
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceCollectors:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/jmdns/ServiceListener;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Ljavax/jmdns/impl/JmDNSImpl;->addServiceListener(Ljava/lang/String;Ljavax/jmdns/ServiceListener;Z)V

    .line 750
    :cond_23
    invoke-virtual {p0, p1, p2, p3, p4}, Ljavax/jmdns/impl/JmDNSImpl;->getServiceInfoFromCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljavax/jmdns/impl/ServiceInfoImpl;

    move-result-object v1

    .line 752
    .local v1, "info":Ljavax/jmdns/impl/ServiceInfoImpl;
    invoke-virtual {p0, v1}, Ljavax/jmdns/impl/JmDNSImpl;->startServiceInfoResolver(Ljavax/jmdns/impl/ServiceInfoImpl;)V

    .line 754
    return-object v1
.end method

.method public respondToQuery(Ljavax/jmdns/impl/DNSIncoming;)V
    .registers 3
    .param p1, "in"    # Ljavax/jmdns/impl/DNSIncoming;

    .line 1508
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->ioLock()V

    .line 1510
    :try_start_3
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_plannedAnswer:Ljavax/jmdns/impl/DNSIncoming;

    if-ne v0, p1, :cond_a

    .line 1511
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_plannedAnswer:Ljavax/jmdns/impl/DNSIncoming;
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_f

    .line 1514
    :cond_a
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->ioUnlock()V

    .line 1515
    nop

    .line 1516
    return-void

    .line 1514
    :catchall_f
    move-exception v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->ioUnlock()V

    throw v0
.end method

.method public revertState()Z
    .registers 2

    .line 525
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    invoke-virtual {v0}, Ljavax/jmdns/impl/HostInfo;->revertState()Z

    move-result v0

    return v0
.end method

.method public send(Ljavax/jmdns/impl/DNSOutgoing;)V
    .registers 9
    .param p1, "out"    # Ljavax/jmdns/impl/DNSOutgoing;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1554
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSOutgoing;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8a

    .line 1555
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSOutgoing;->data()[B

    move-result-object v0

    .line 1556
    .local v0, "message":[B
    new-instance v1, Ljava/net/DatagramPacket;

    array-length v2, v0

    iget-object v3, p0, Ljavax/jmdns/impl/JmDNSImpl;->_group:Ljava/net/InetAddress;

    sget v4, Ljavax/jmdns/impl/constants/DNSConstants;->MDNS_PORT:I

    invoke-direct {v1, v0, v2, v3, v4}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 1558
    .local v1, "packet":Ljava/net/DatagramPacket;
    sget-object v2, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 1560
    :try_start_1e
    new-instance v2, Ljavax/jmdns/impl/DNSIncoming;

    invoke-direct {v2, v1}, Ljavax/jmdns/impl/DNSIncoming;-><init>(Ljava/net/DatagramPacket;)V

    .line 1561
    .local v2, "msg":Ljavax/jmdns/impl/DNSIncoming;
    sget-object v3, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_54

    .line 1562
    sget-object v3, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "send("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") JmDNS out:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljavax/jmdns/impl/DNSIncoming;->print(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_54} :catch_55

    .line 1566
    .end local v2    # "msg":Ljavax/jmdns/impl/DNSIncoming;
    :cond_54
    goto :goto_7d

    .line 1564
    :catch_55
    move-exception v2

    .line 1565
    .local v2, "e":Ljava/io/IOException;
    sget-object v3, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "send("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ") - JmDNS can not parse what it sends!!!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/logging/Logger;->throwing(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1568
    .end local v2    # "e":Ljava/io/IOException;
    :cond_7d
    :goto_7d
    iget-object v2, p0, Ljavax/jmdns/impl/JmDNSImpl;->_socket:Ljava/net/MulticastSocket;

    .line 1569
    .local v2, "ms":Ljava/net/MulticastSocket;
    if-eqz v2, :cond_8a

    invoke-virtual {v2}, Ljava/net/MulticastSocket;->isClosed()Z

    move-result v3

    if-nez v3, :cond_8a

    .line 1570
    invoke-virtual {v2, v1}, Ljava/net/MulticastSocket;->send(Ljava/net/DatagramPacket;)V

    .line 1573
    .end local v0    # "message":[B
    .end local v1    # "packet":Ljava/net/DatagramPacket;
    .end local v2    # "ms":Ljava/net/MulticastSocket;
    :cond_8a
    return-void
.end method

.method public setDelegate(Ljavax/jmdns/JmDNS$Delegate;)Ljavax/jmdns/JmDNS$Delegate;
    .registers 3
    .param p1, "delegate"    # Ljavax/jmdns/JmDNS$Delegate;

    .line 2257
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_delegate:Ljavax/jmdns/JmDNS$Delegate;

    .line 2258
    .local v0, "previous":Ljavax/jmdns/JmDNS$Delegate;
    iput-object p1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_delegate:Ljavax/jmdns/JmDNS$Delegate;

    .line 2259
    return-object v0
.end method

.method public setLastThrottleIncrement(J)V
    .registers 3
    .param p1, "lastThrottleIncrement"    # J

    .line 2199
    iput-wide p1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_lastThrottleIncrement:J

    .line 2200
    return-void
.end method

.method setLocalHost(Ljavax/jmdns/impl/HostInfo;)V
    .registers 2
    .param p1, "localHost"    # Ljavax/jmdns/impl/HostInfo;

    .line 2235
    iput-object p1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    .line 2236
    return-void
.end method

.method public setPlannedAnswer(Ljavax/jmdns/impl/DNSIncoming;)V
    .registers 2
    .param p1, "plannedAnswer"    # Ljavax/jmdns/impl/DNSIncoming;

    .line 2227
    iput-object p1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_plannedAnswer:Ljavax/jmdns/impl/DNSIncoming;

    .line 2228
    return-void
.end method

.method public setThrottle(I)V
    .registers 2
    .param p1, "throttle"    # I

    .line 2207
    iput p1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_throttle:I

    .line 2208
    return-void
.end method

.method public startAnnouncer()V
    .registers 3

    .line 1626
    invoke-static {}, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->getInstance()Ljavax/jmdns/impl/DNSTaskStarter$Factory;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->getStarter(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/impl/DNSTaskStarter;

    move-result-object v0

    invoke-interface {v0}, Ljavax/jmdns/impl/DNSTaskStarter;->startAnnouncer()V

    .line 1627
    return-void
.end method

.method public startCanceler()V
    .registers 3

    .line 1644
    invoke-static {}, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->getInstance()Ljavax/jmdns/impl/DNSTaskStarter$Factory;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->getStarter(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/impl/DNSTaskStarter;

    move-result-object v0

    invoke-interface {v0}, Ljavax/jmdns/impl/DNSTaskStarter;->startCanceler()V

    .line 1645
    return-void
.end method

.method public startProber()V
    .registers 3

    .line 1617
    invoke-static {}, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->getInstance()Ljavax/jmdns/impl/DNSTaskStarter$Factory;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->getStarter(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/impl/DNSTaskStarter;

    move-result-object v0

    invoke-interface {v0}, Ljavax/jmdns/impl/DNSTaskStarter;->startProber()V

    .line 1618
    return-void
.end method

.method public startReaper()V
    .registers 3

    .line 1653
    invoke-static {}, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->getInstance()Ljavax/jmdns/impl/DNSTaskStarter$Factory;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->getStarter(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/impl/DNSTaskStarter;

    move-result-object v0

    invoke-interface {v0}, Ljavax/jmdns/impl/DNSTaskStarter;->startReaper()V

    .line 1654
    return-void
.end method

.method public startRenewer()V
    .registers 3

    .line 1635
    invoke-static {}, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->getInstance()Ljavax/jmdns/impl/DNSTaskStarter$Factory;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->getStarter(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/impl/DNSTaskStarter;

    move-result-object v0

    invoke-interface {v0}, Ljavax/jmdns/impl/DNSTaskStarter;->startRenewer()V

    .line 1636
    return-void
.end method

.method public startResponder(Ljavax/jmdns/impl/DNSIncoming;I)V
    .registers 5
    .param p1, "in"    # Ljavax/jmdns/impl/DNSIncoming;
    .param p2, "port"    # I

    .line 1689
    invoke-static {}, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->getInstance()Ljavax/jmdns/impl/DNSTaskStarter$Factory;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->getStarter(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/impl/DNSTaskStarter;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljavax/jmdns/impl/DNSTaskStarter;->startResponder(Ljavax/jmdns/impl/DNSIncoming;I)V

    .line 1690
    return-void
.end method

.method public startServiceInfoResolver(Ljavax/jmdns/impl/ServiceInfoImpl;)V
    .registers 4
    .param p1, "info"    # Ljavax/jmdns/impl/ServiceInfoImpl;

    .line 1662
    invoke-static {}, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->getInstance()Ljavax/jmdns/impl/DNSTaskStarter$Factory;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->getStarter(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/impl/DNSTaskStarter;

    move-result-object v0

    invoke-interface {v0, p1}, Ljavax/jmdns/impl/DNSTaskStarter;->startServiceInfoResolver(Ljavax/jmdns/impl/ServiceInfoImpl;)V

    .line 1663
    return-void
.end method

.method public startServiceResolver(Ljava/lang/String;)V
    .registers 4
    .param p1, "type"    # Ljava/lang/String;

    .line 1680
    invoke-static {}, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->getInstance()Ljavax/jmdns/impl/DNSTaskStarter$Factory;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->getStarter(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/impl/DNSTaskStarter;

    move-result-object v0

    invoke-interface {v0, p1}, Ljavax/jmdns/impl/DNSTaskStarter;->startServiceResolver(Ljava/lang/String;)V

    .line 1681
    return-void
.end method

.method public startTypeResolver()V
    .registers 3

    .line 1671
    invoke-static {}, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->getInstance()Ljavax/jmdns/impl/DNSTaskStarter$Factory;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->getStarter(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/impl/DNSTaskStarter;

    move-result-object v0

    invoke-interface {v0}, Ljavax/jmdns/impl/DNSTaskStarter;->startTypeResolver()V

    .line 1672
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 1887
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x800

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1888
    .local v0, "aLog":Ljava/lang/StringBuilder;
    const-string v1, "\t---- Local Host -----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1889
    const-string v1, "\n\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1890
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1891
    const-string v1, "\n\t---- Services -----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1892
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_services:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1893
    .local v2, "key":Ljava/lang/String;
    const-string v3, "\n\t\tService: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1894
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1895
    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1896
    iget-object v3, p0, Ljavax/jmdns/impl/JmDNSImpl;->_services:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1897
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_25

    .line 1898
    :cond_48
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1899
    const-string v1, "\t---- Types ----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1900
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceTypes:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1901
    .restart local v2    # "key":Ljava/lang/String;
    iget-object v3, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceTypes:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/jmdns/impl/JmDNSImpl$ServiceTypeEntry;

    .line 1902
    .local v3, "subtypes":Ljavax/jmdns/impl/JmDNSImpl$ServiceTypeEntry;
    const-string v4, "\n\t\tType: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1903
    invoke-virtual {v3}, Ljavax/jmdns/impl/JmDNSImpl$ServiceTypeEntry;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1904
    const-string v4, ": "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1905
    invoke-virtual {v3}, Ljavax/jmdns/impl/JmDNSImpl$ServiceTypeEntry;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8a

    const-string v4, "no subtypes"

    goto :goto_8b

    :cond_8a
    move-object v4, v3

    :goto_8b
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1906
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "subtypes":Ljavax/jmdns/impl/JmDNSImpl$ServiceTypeEntry;
    goto :goto_5c

    .line 1907
    :cond_8f
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1908
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_cache:Ljavax/jmdns/impl/DNSCache;

    invoke-virtual {v1}, Ljavax/jmdns/impl/DNSCache;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1909
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1910
    const-string v1, "\t---- Service Collectors ----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1911
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceCollectors:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1912
    .restart local v2    # "key":Ljava/lang/String;
    const-string v3, "\n\t\tService Collector: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1913
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1914
    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1915
    iget-object v3, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceCollectors:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1916
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_b1

    .line 1917
    :cond_d4
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1918
    const-string v1, "\t---- Service Listeners ----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1919
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1920
    .restart local v2    # "key":Ljava/lang/String;
    const-string v3, "\n\t\tService Listener: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1921
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1922
    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1923
    iget-object v3, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1924
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_e8

    .line 1925
    :cond_10b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public unregisterAllServices()V
    .registers 7

    .line 1071
    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1072
    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    const-string v1, "unregisterAllServices()"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 1075
    :cond_11
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_services:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_55

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1076
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p0, Ljavax/jmdns/impl/JmDNSImpl;->_services:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/jmdns/impl/ServiceInfoImpl;

    .line 1077
    .local v2, "info":Ljavax/jmdns/impl/ServiceInfoImpl;
    if-eqz v2, :cond_54

    .line 1078
    sget-object v3, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 1079
    sget-object v3, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cancelling service info: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 1081
    :cond_51
    invoke-virtual {v2}, Ljavax/jmdns/impl/ServiceInfoImpl;->cancelState()Z

    .line 1083
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "info":Ljavax/jmdns/impl/ServiceInfoImpl;
    :cond_54
    goto :goto_1b

    .line 1084
    :cond_55
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->startCanceler()V

    .line 1086
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_services:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_62
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1087
    .restart local v1    # "name":Ljava/lang/String;
    iget-object v2, p0, Ljavax/jmdns/impl/JmDNSImpl;->_services:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/jmdns/impl/ServiceInfoImpl;

    .line 1088
    .restart local v2    # "info":Ljavax/jmdns/impl/ServiceInfoImpl;
    if-eqz v2, :cond_a2

    .line 1089
    sget-object v3, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_98

    .line 1090
    sget-object v3, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wait for service info cancel: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 1092
    :cond_98
    const-wide/16 v3, 0x1388

    invoke-virtual {v2, v3, v4}, Ljavax/jmdns/impl/ServiceInfoImpl;->waitForCanceled(J)Z

    .line 1093
    iget-object v3, p0, Ljavax/jmdns/impl/JmDNSImpl;->_services:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1095
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "info":Ljavax/jmdns/impl/ServiceInfoImpl;
    :cond_a2
    goto :goto_62

    .line 1097
    :cond_a3
    return-void
.end method

.method public unregisterService(Ljavax/jmdns/ServiceInfo;)V
    .registers 6
    .param p1, "infoAbstract"    # Ljavax/jmdns/ServiceInfo;

    .line 1050
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_services:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/impl/ServiceInfoImpl;

    .line 1052
    .local v0, "info":Ljavax/jmdns/impl/ServiceInfoImpl;
    if-eqz v0, :cond_43

    .line 1053
    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->cancelState()Z

    .line 1054
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->startCanceler()V

    .line 1055
    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Ljavax/jmdns/impl/ServiceInfoImpl;->waitForCanceled(J)Z

    .line 1057
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_services:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1058
    sget-object v1, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 1059
    sget-object v1, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterService() JmDNS unregistered service as "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_5d

    .line 1062
    :cond_43
    sget-object v1, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing unregistered service info: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 1064
    :cond_5d
    :goto_5d
    return-void
.end method

.method public updateRecord(JLjavax/jmdns/impl/DNSRecord;Ljavax/jmdns/impl/JmDNSImpl$Operation;)V
    .registers 13
    .param p1, "now"    # J
    .param p3, "rec"    # Ljavax/jmdns/impl/DNSRecord;
    .param p4, "operation"    # Ljavax/jmdns/impl/JmDNSImpl$Operation;

    .line 1276
    const/4 v0, 0x0

    .line 1277
    .local v0, "listenerList":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/DNSListener;>;"
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_listeners:Ljava/util/List;

    monitor-enter v1

    .line 1278
    :try_start_4
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Ljavax/jmdns/impl/JmDNSImpl;->_listeners:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v2

    .line 1279
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_120

    .line 1280
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/jmdns/impl/DNSListener;

    .line 1281
    .local v2, "listener":Ljavax/jmdns/impl/DNSListener;
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getCache()Ljavax/jmdns/impl/DNSCache;

    move-result-object v3

    invoke-interface {v2, v3, p1, p2, p3}, Ljavax/jmdns/impl/DNSListener;->updateRecord(Ljavax/jmdns/impl/DNSCache;JLjavax/jmdns/impl/DNSEntry;)V

    .line 1282
    .end local v2    # "listener":Ljavax/jmdns/impl/DNSListener;
    goto :goto_11

    .line 1284
    .end local v0    # "listenerList":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/DNSListener;>;"
    :cond_25
    sget-object v0, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_PTR:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual {p3}, Ljavax/jmdns/impl/DNSRecord;->getRecordType()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11f

    .line 1287
    invoke-virtual {p3, p0}, Ljavax/jmdns/impl/DNSRecord;->getServiceEvent(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/ServiceEvent;

    move-result-object v0

    .line 1288
    .local v0, "event":Ljavax/jmdns/ServiceEvent;
    invoke-virtual {v0}, Ljavax/jmdns/ServiceEvent;->getInfo()Ljavax/jmdns/ServiceInfo;

    move-result-object v1

    if-eqz v1, :cond_45

    invoke-virtual {v0}, Ljavax/jmdns/ServiceEvent;->getInfo()Ljavax/jmdns/ServiceInfo;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/jmdns/ServiceInfo;->hasData()Z

    move-result v1

    if-nez v1, :cond_68

    .line 1290
    :cond_45
    invoke-virtual {v0}, Ljavax/jmdns/ServiceEvent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljavax/jmdns/ServiceEvent;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Ljavax/jmdns/impl/JmDNSImpl;->getServiceInfoFromCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljavax/jmdns/impl/ServiceInfoImpl;

    move-result-object v1

    .line 1291
    .local v1, "info":Ljavax/jmdns/ServiceInfo;
    invoke-virtual {v1}, Ljavax/jmdns/ServiceInfo;->hasData()Z

    move-result v2

    if-eqz v2, :cond_68

    .line 1292
    new-instance v2, Ljavax/jmdns/impl/ServiceEventImpl;

    invoke-virtual {v0}, Ljavax/jmdns/ServiceEvent;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljavax/jmdns/ServiceEvent;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4, v1}, Ljavax/jmdns/impl/ServiceEventImpl;-><init>(Ljavax/jmdns/impl/JmDNSImpl;Ljava/lang/String;Ljava/lang/String;Ljavax/jmdns/ServiceInfo;)V

    move-object v0, v2

    .line 1296
    .end local v1    # "info":Ljavax/jmdns/ServiceInfo;
    :cond_68
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0}, Ljavax/jmdns/ServiceEvent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1298
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;>;"
    if-eqz v1, :cond_85

    .line 1299
    monitor-enter v1

    .line 1300
    :try_start_7b
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1301
    .local v2, "serviceListenerList":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;>;"
    monitor-exit v1

    goto :goto_89

    .end local v2    # "serviceListenerList":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;>;"
    :catchall_82
    move-exception v2

    monitor-exit v1
    :try_end_84
    .catchall {:try_start_7b .. :try_end_84} :catchall_82

    throw v2

    .line 1303
    :cond_85
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 1305
    .restart local v2    # "serviceListenerList":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;>;"
    :goto_89
    sget-object v3, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_c0

    .line 1306
    sget-object v3, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".updating record for event: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " list "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " operation: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 1309
    :cond_c0
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_11f

    .line 1310
    move-object v3, v0

    .line 1312
    .local v3, "localEvent":Ljavax/jmdns/ServiceEvent;
    sget-object v4, Ljavax/jmdns/impl/JmDNSImpl$8;->$SwitchMap$javax$jmdns$impl$JmDNSImpl$Operation:[I

    invoke-virtual {p4}, Ljavax/jmdns/impl/JmDNSImpl$Operation;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_124

    .end local v0    # "event":Ljavax/jmdns/ServiceEvent;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;>;"
    .end local v2    # "serviceListenerList":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;>;"
    .end local v3    # "localEvent":Ljavax/jmdns/ServiceEvent;
    goto :goto_11f

    .line 1329
    .restart local v0    # "event":Ljavax/jmdns/ServiceEvent;
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;>;"
    .restart local v2    # "serviceListenerList":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;>;"
    .restart local v3    # "localEvent":Ljavax/jmdns/ServiceEvent;
    :pswitch_d3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_d7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;

    .line 1330
    .local v5, "listener":Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;
    invoke-virtual {v5}, Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;->isSynchronous()Z

    move-result v6

    if-eqz v6, :cond_ed

    .line 1331
    invoke-virtual {v5, v3}, Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;->serviceRemoved(Ljavax/jmdns/ServiceEvent;)V

    goto :goto_f7

    .line 1333
    :cond_ed
    iget-object v6, p0, Ljavax/jmdns/impl/JmDNSImpl;->_executor:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Ljavax/jmdns/impl/JmDNSImpl$6;

    invoke-direct {v7, p0, v5, v3}, Ljavax/jmdns/impl/JmDNSImpl$6;-><init>(Ljavax/jmdns/impl/JmDNSImpl;Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;Ljavax/jmdns/ServiceEvent;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 1341
    .end local v5    # "listener":Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;
    :goto_f7
    goto :goto_d7

    .line 1342
    :cond_f8
    goto :goto_11f

    .line 1314
    :pswitch_f9
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_fd
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;

    .line 1315
    .restart local v5    # "listener":Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;
    invoke-virtual {v5}, Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;->isSynchronous()Z

    move-result v6

    if-eqz v6, :cond_113

    .line 1316
    invoke-virtual {v5, v3}, Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;->serviceAdded(Ljavax/jmdns/ServiceEvent;)V

    goto :goto_11d

    .line 1318
    :cond_113
    iget-object v6, p0, Ljavax/jmdns/impl/JmDNSImpl;->_executor:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Ljavax/jmdns/impl/JmDNSImpl$5;

    invoke-direct {v7, p0, v5, v3}, Ljavax/jmdns/impl/JmDNSImpl$5;-><init>(Ljavax/jmdns/impl/JmDNSImpl;Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;Ljavax/jmdns/ServiceEvent;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 1326
    .end local v5    # "listener":Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;
    :goto_11d
    goto :goto_fd

    .line 1327
    :cond_11e
    nop

    .line 1348
    .end local v0    # "event":Ljavax/jmdns/ServiceEvent;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;>;"
    .end local v2    # "serviceListenerList":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;>;"
    .end local v3    # "localEvent":Ljavax/jmdns/ServiceEvent;
    :cond_11f
    :goto_11f
    return-void

    .line 1279
    .local v0, "listenerList":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/DNSListener;>;"
    :catchall_120
    move-exception v2

    :try_start_121
    monitor-exit v1
    :try_end_122
    .catchall {:try_start_121 .. :try_end_122} :catchall_120

    throw v2

    nop

    :pswitch_data_124
    .packed-switch 0x1
        :pswitch_f9
        :pswitch_d3
    .end packed-switch
.end method

.method public waitForAnnounced(J)Z
    .registers 4
    .param p1, "timeout"    # J

    .line 645
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    invoke-virtual {v0, p1, p2}, Ljavax/jmdns/impl/HostInfo;->waitForAnnounced(J)Z

    move-result v0

    return v0
.end method

.method public waitForCanceled(J)Z
    .registers 4
    .param p1, "timeout"    # J

    .line 653
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    invoke-virtual {v0, p1, p2}, Ljavax/jmdns/impl/HostInfo;->waitForCanceled(J)Z

    move-result v0

    return v0
.end method
