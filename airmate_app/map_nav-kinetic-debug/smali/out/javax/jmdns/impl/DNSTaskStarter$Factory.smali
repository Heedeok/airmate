.class public final Ljavax/jmdns/impl/DNSTaskStarter$Factory;
.super Ljava/lang/Object;
.source "DNSTaskStarter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/DNSTaskStarter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/jmdns/impl/DNSTaskStarter$Factory$ClassDelegate;
    }
.end annotation


# static fields
.field private static final _databaseClassDelegate:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljavax/jmdns/impl/DNSTaskStarter$Factory$ClassDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile _instance:Ljavax/jmdns/impl/DNSTaskStarter$Factory;


# instance fields
.field private final _instances:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljavax/jmdns/impl/JmDNSImpl;",
            "Ljavax/jmdns/impl/DNSTaskStarter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 58
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->_databaseClassDelegate:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->_instances:Ljava/util/concurrent/ConcurrentMap;

    .line 63
    return-void
.end method

.method public static classDelegate()Ljavax/jmdns/impl/DNSTaskStarter$Factory$ClassDelegate;
    .registers 1

    .line 85
    sget-object v0, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->_databaseClassDelegate:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/impl/DNSTaskStarter$Factory$ClassDelegate;

    return-object v0
.end method

.method public static getInstance()Ljavax/jmdns/impl/DNSTaskStarter$Factory;
    .registers 2

    .line 110
    sget-object v0, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->_instance:Ljavax/jmdns/impl/DNSTaskStarter$Factory;

    if-nez v0, :cond_17

    .line 111
    const-class v0, Ljavax/jmdns/impl/DNSTaskStarter$Factory;

    monitor-enter v0

    .line 112
    :try_start_7
    sget-object v1, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->_instance:Ljavax/jmdns/impl/DNSTaskStarter$Factory;

    if-nez v1, :cond_12

    .line 113
    new-instance v1, Ljavax/jmdns/impl/DNSTaskStarter$Factory;

    invoke-direct {v1}, Ljavax/jmdns/impl/DNSTaskStarter$Factory;-><init>()V

    sput-object v1, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->_instance:Ljavax/jmdns/impl/DNSTaskStarter$Factory;

    .line 115
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 117
    :cond_17
    :goto_17
    sget-object v0, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->_instance:Ljavax/jmdns/impl/DNSTaskStarter$Factory;

    return-object v0
.end method

.method protected static newDNSTaskStarter(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/impl/DNSTaskStarter;
    .registers 4
    .param p0, "jmDNSImpl"    # Ljavax/jmdns/impl/JmDNSImpl;

    .line 96
    const/4 v0, 0x0

    .line 97
    .local v0, "instance":Ljavax/jmdns/impl/DNSTaskStarter;
    sget-object v1, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->_databaseClassDelegate:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/jmdns/impl/DNSTaskStarter$Factory$ClassDelegate;

    .line 98
    .local v1, "delegate":Ljavax/jmdns/impl/DNSTaskStarter$Factory$ClassDelegate;
    if-eqz v1, :cond_f

    .line 99
    invoke-interface {v1, p0}, Ljavax/jmdns/impl/DNSTaskStarter$Factory$ClassDelegate;->newDNSTaskStarter(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/impl/DNSTaskStarter;

    move-result-object v0

    .line 101
    :cond_f
    if-eqz v0, :cond_13

    move-object v2, v0

    goto :goto_18

    :cond_13
    new-instance v2, Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl;

    invoke-direct {v2, p0}, Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl;-><init>(Ljavax/jmdns/impl/JmDNSImpl;)V

    :goto_18
    return-object v2
.end method

.method public static setClassDelegate(Ljavax/jmdns/impl/DNSTaskStarter$Factory$ClassDelegate;)V
    .registers 2
    .param p0, "delegate"    # Ljavax/jmdns/impl/DNSTaskStarter$Factory$ClassDelegate;

    .line 74
    sget-object v0, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->_databaseClassDelegate:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 75
    return-void
.end method


# virtual methods
.method public getStarter(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/impl/DNSTaskStarter;
    .registers 5
    .param p1, "jmDNSImpl"    # Ljavax/jmdns/impl/JmDNSImpl;

    .line 128
    iget-object v0, p0, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->_instances:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/impl/DNSTaskStarter;

    .line 129
    .local v0, "starter":Ljavax/jmdns/impl/DNSTaskStarter;
    if-nez v0, :cond_1c

    .line 130
    iget-object v1, p0, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->_instances:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->newDNSTaskStarter(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/impl/DNSTaskStarter;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v1, p0, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->_instances:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljavax/jmdns/impl/DNSTaskStarter;

    .line 133
    :cond_1c
    return-object v0
.end method
