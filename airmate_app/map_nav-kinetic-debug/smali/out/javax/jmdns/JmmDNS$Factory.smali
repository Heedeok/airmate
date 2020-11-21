.class public final Ljavax/jmdns/JmmDNS$Factory;
.super Ljava/lang/Object;
.source "JmmDNS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/JmmDNS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/jmdns/JmmDNS$Factory$ClassDelegate;
    }
.end annotation


# static fields
.field private static final _databaseClassDelegate:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljavax/jmdns/JmmDNS$Factory$ClassDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile _instance:Ljavax/jmdns/JmmDNS;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Ljavax/jmdns/JmmDNS$Factory;->_databaseClassDelegate:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method public static classDelegate()Ljavax/jmdns/JmmDNS$Factory$ClassDelegate;
    .registers 1

    .line 77
    sget-object v0, Ljavax/jmdns/JmmDNS$Factory;->_databaseClassDelegate:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/JmmDNS$Factory$ClassDelegate;

    return-object v0
.end method

.method public static getInstance()Ljavax/jmdns/JmmDNS;
    .registers 2

    .line 103
    sget-object v0, Ljavax/jmdns/JmmDNS$Factory;->_instance:Ljavax/jmdns/JmmDNS;

    if-eqz v0, :cond_c

    sget-object v0, Ljavax/jmdns/JmmDNS$Factory;->_instance:Ljavax/jmdns/JmmDNS;

    invoke-interface {v0}, Ljavax/jmdns/JmmDNS;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 104
    :cond_c
    const-class v0, Ljavax/jmdns/JmmDNS$Factory;

    monitor-enter v0

    .line 105
    :try_start_f
    invoke-static {}, Ljavax/jmdns/JmmDNS$Factory;->newJmmDNS()Ljavax/jmdns/JmmDNS;

    move-result-object v1

    sput-object v1, Ljavax/jmdns/JmmDNS$Factory;->_instance:Ljavax/jmdns/JmmDNS;

    .line 106
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_19

    .line 108
    :cond_16
    sget-object v0, Ljavax/jmdns/JmmDNS$Factory;->_instance:Ljavax/jmdns/JmmDNS;

    return-object v0

    .line 106
    :catchall_19
    move-exception v1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v1
.end method

.method protected static newJmmDNS()Ljavax/jmdns/JmmDNS;
    .registers 3

    .line 86
    const/4 v0, 0x0

    .line 87
    .local v0, "dns":Ljavax/jmdns/JmmDNS;
    sget-object v1, Ljavax/jmdns/JmmDNS$Factory;->_databaseClassDelegate:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/jmdns/JmmDNS$Factory$ClassDelegate;

    .line 88
    .local v1, "delegate":Ljavax/jmdns/JmmDNS$Factory$ClassDelegate;
    if-eqz v1, :cond_f

    .line 89
    invoke-interface {v1}, Ljavax/jmdns/JmmDNS$Factory$ClassDelegate;->newJmmDNS()Ljavax/jmdns/JmmDNS;

    move-result-object v0

    .line 91
    :cond_f
    if-eqz v0, :cond_13

    move-object v2, v0

    goto :goto_18

    :cond_13
    new-instance v2, Ljavax/jmdns/impl/JmmDNSImpl;

    invoke-direct {v2}, Ljavax/jmdns/impl/JmmDNSImpl;-><init>()V

    :goto_18
    return-object v2
.end method

.method public static setClassDelegate(Ljavax/jmdns/JmmDNS$Factory$ClassDelegate;)V
    .registers 2
    .param p0, "delegate"    # Ljavax/jmdns/JmmDNS$Factory$ClassDelegate;

    .line 66
    sget-object v0, Ljavax/jmdns/JmmDNS$Factory;->_databaseClassDelegate:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 67
    return-void
.end method
