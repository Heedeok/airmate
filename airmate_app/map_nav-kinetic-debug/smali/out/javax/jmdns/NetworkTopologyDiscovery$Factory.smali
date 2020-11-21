.class public final Ljavax/jmdns/NetworkTopologyDiscovery$Factory;
.super Ljava/lang/Object;
.source "NetworkTopologyDiscovery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/NetworkTopologyDiscovery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/jmdns/NetworkTopologyDiscovery$Factory$ClassDelegate;
    }
.end annotation


# static fields
.field private static final _databaseClassDelegate:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljavax/jmdns/NetworkTopologyDiscovery$Factory$ClassDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile _instance:Ljavax/jmdns/NetworkTopologyDiscovery;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 74
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Ljavax/jmdns/NetworkTopologyDiscovery$Factory;->_databaseClassDelegate:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    return-void
.end method

.method public static classDelegate()Ljavax/jmdns/NetworkTopologyDiscovery$Factory$ClassDelegate;
    .registers 1

    .line 100
    sget-object v0, Ljavax/jmdns/NetworkTopologyDiscovery$Factory;->_databaseClassDelegate:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/NetworkTopologyDiscovery$Factory$ClassDelegate;

    return-object v0
.end method

.method public static getInstance()Ljavax/jmdns/NetworkTopologyDiscovery;
    .registers 2

    .line 123
    sget-object v0, Ljavax/jmdns/NetworkTopologyDiscovery$Factory;->_instance:Ljavax/jmdns/NetworkTopologyDiscovery;

    if-nez v0, :cond_16

    .line 124
    const-class v0, Ljavax/jmdns/NetworkTopologyDiscovery$Factory;

    monitor-enter v0

    .line 125
    :try_start_7
    sget-object v1, Ljavax/jmdns/NetworkTopologyDiscovery$Factory;->_instance:Ljavax/jmdns/NetworkTopologyDiscovery;

    if-nez v1, :cond_11

    .line 126
    invoke-static {}, Ljavax/jmdns/NetworkTopologyDiscovery$Factory;->newNetworkTopologyDiscovery()Ljavax/jmdns/NetworkTopologyDiscovery;

    move-result-object v1

    sput-object v1, Ljavax/jmdns/NetworkTopologyDiscovery$Factory;->_instance:Ljavax/jmdns/NetworkTopologyDiscovery;

    .line 128
    :cond_11
    monitor-exit v0

    goto :goto_16

    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_13

    throw v1

    .line 130
    :cond_16
    :goto_16
    sget-object v0, Ljavax/jmdns/NetworkTopologyDiscovery$Factory;->_instance:Ljavax/jmdns/NetworkTopologyDiscovery;

    return-object v0
.end method

.method protected static newNetworkTopologyDiscovery()Ljavax/jmdns/NetworkTopologyDiscovery;
    .registers 3

    .line 109
    const/4 v0, 0x0

    .line 110
    .local v0, "instance":Ljavax/jmdns/NetworkTopologyDiscovery;
    sget-object v1, Ljavax/jmdns/NetworkTopologyDiscovery$Factory;->_databaseClassDelegate:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/jmdns/NetworkTopologyDiscovery$Factory$ClassDelegate;

    .line 111
    .local v1, "delegate":Ljavax/jmdns/NetworkTopologyDiscovery$Factory$ClassDelegate;
    if-eqz v1, :cond_f

    .line 112
    invoke-interface {v1}, Ljavax/jmdns/NetworkTopologyDiscovery$Factory$ClassDelegate;->newNetworkTopologyDiscovery()Ljavax/jmdns/NetworkTopologyDiscovery;

    move-result-object v0

    .line 114
    :cond_f
    if-eqz v0, :cond_13

    move-object v2, v0

    goto :goto_18

    :cond_13
    new-instance v2, Ljavax/jmdns/impl/NetworkTopologyDiscoveryImpl;

    invoke-direct {v2}, Ljavax/jmdns/impl/NetworkTopologyDiscoveryImpl;-><init>()V

    :goto_18
    return-object v2
.end method

.method public static setClassDelegate(Ljavax/jmdns/NetworkTopologyDiscovery$Factory$ClassDelegate;)V
    .registers 2
    .param p0, "delegate"    # Ljavax/jmdns/NetworkTopologyDiscovery$Factory$ClassDelegate;

    .line 89
    sget-object v0, Ljavax/jmdns/NetworkTopologyDiscovery$Factory;->_databaseClassDelegate:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 90
    return-void
.end method
