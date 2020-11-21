.class public final Lorg/jboss/netty/util/internal/QueueFactory;
.super Ljava/lang/Object;
.source "QueueFactory.java"


# static fields
.field private static final LOGGER:Lorg/jboss/netty/logging/InternalLogger;

.field private static final useUnsafe:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 30
    invoke-static {}, Lorg/jboss/netty/util/internal/DetectionUtil;->hasUnsafe()Z

    move-result v0

    sput-boolean v0, Lorg/jboss/netty/util/internal/QueueFactory;->useUnsafe:Z

    .line 31
    const-class v0, Lorg/jboss/netty/util/internal/QueueFactory;

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/util/internal/QueueFactory;->LOGGER:Lorg/jboss/netty/logging/InternalLogger;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static createQueue(Ljava/lang/Class;)Ljava/util/concurrent/BlockingQueue;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/concurrent/BlockingQueue<",
            "TT;>;"
        }
    .end annotation

    .line 47
    .local p0, "itemClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Lorg/jboss/netty/util/internal/DetectionUtil;->javaVersion()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_d

    .line 48
    new-instance v0, Ljava/util/concurrent/LinkedTransferQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedTransferQueue;-><init>()V

    return-object v0

    .line 52
    :cond_d
    :try_start_d
    sget-boolean v0, Lorg/jboss/netty/util/internal/QueueFactory;->useUnsafe:Z

    if-eqz v0, :cond_17

    .line 53
    new-instance v0, Lorg/jboss/netty/util/internal/LinkedTransferQueue;

    invoke-direct {v0}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;-><init>()V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_16} :catch_18

    return-object v0

    .line 64
    :cond_17
    goto :goto_28

    .line 55
    :catch_18
    move-exception v0

    .line 61
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lorg/jboss/netty/util/internal/QueueFactory;->LOGGER:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v1}, Lorg/jboss/netty/logging/InternalLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 62
    sget-object v1, Lorg/jboss/netty/util/internal/QueueFactory;->LOGGER:Lorg/jboss/netty/logging/InternalLogger;

    const-string v2, "Unable to instance LinkedTransferQueue, fallback to LegacyLinkedTransferQueue"

    invoke-interface {v1, v2, v0}, Lorg/jboss/netty/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_28
    :goto_28
    new-instance v0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;

    invoke-direct {v0}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;-><init>()V

    return-object v0
.end method

.method public static createQueue(Ljava/util/Collection;Ljava/lang/Class;)Ljava/util/concurrent/BlockingQueue;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TT;>;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/concurrent/BlockingQueue<",
            "TT;>;"
        }
    .end annotation

    .line 80
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    .local p1, "itemClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Lorg/jboss/netty/util/internal/DetectionUtil;->javaVersion()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_d

    .line 81
    new-instance v0, Ljava/util/concurrent/LinkedTransferQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedTransferQueue;-><init>()V

    return-object v0

    .line 85
    :cond_d
    :try_start_d
    sget-boolean v0, Lorg/jboss/netty/util/internal/QueueFactory;->useUnsafe:Z

    if-eqz v0, :cond_17

    .line 86
    new-instance v0, Lorg/jboss/netty/util/internal/LinkedTransferQueue;

    invoke-direct {v0, p0}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;-><init>(Ljava/util/Collection;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_16} :catch_18

    return-object v0

    .line 97
    :cond_17
    goto :goto_28

    .line 88
    :catch_18
    move-exception v0

    .line 94
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lorg/jboss/netty/util/internal/QueueFactory;->LOGGER:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v1}, Lorg/jboss/netty/logging/InternalLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 95
    sget-object v1, Lorg/jboss/netty/util/internal/QueueFactory;->LOGGER:Lorg/jboss/netty/logging/InternalLogger;

    const-string v2, "Unable to instance LinkedTransferQueue, fallback to LegacyLinkedTransferQueue"

    invoke-interface {v1, v2, v0}, Lorg/jboss/netty/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_28
    :goto_28
    new-instance v0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;

    invoke-direct {v0, p0}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
