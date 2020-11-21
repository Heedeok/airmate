.class final Lorg/jboss/netty/channel/local/LocalChannelRegistry;
.super Ljava/lang/Object;
.source "LocalChannelRegistry.java"


# static fields
.field private static final map:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Lorg/jboss/netty/channel/local/LocalAddress;",
            "Lorg/jboss/netty/channel/Channel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 27
    new-instance v0, Lorg/jboss/netty/util/internal/ConcurrentHashMap;

    invoke-direct {v0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/jboss/netty/channel/local/LocalChannelRegistry;->map:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method static getChannel(Lorg/jboss/netty/channel/local/LocalAddress;)Lorg/jboss/netty/channel/Channel;
    .registers 2
    .param p0, "address"    # Lorg/jboss/netty/channel/local/LocalAddress;

    .line 35
    sget-object v0, Lorg/jboss/netty/channel/local/LocalChannelRegistry;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/Channel;

    return-object v0
.end method

.method static isRegistered(Lorg/jboss/netty/channel/local/LocalAddress;)Z
    .registers 2
    .param p0, "address"    # Lorg/jboss/netty/channel/local/LocalAddress;

    .line 31
    sget-object v0, Lorg/jboss/netty/channel/local/LocalChannelRegistry;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static register(Lorg/jboss/netty/channel/local/LocalAddress;Lorg/jboss/netty/channel/Channel;)Z
    .registers 3
    .param p0, "address"    # Lorg/jboss/netty/channel/local/LocalAddress;
    .param p1, "channel"    # Lorg/jboss/netty/channel/Channel;

    .line 39
    sget-object v0, Lorg/jboss/netty/channel/local/LocalChannelRegistry;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0, p1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method static unregister(Lorg/jboss/netty/channel/local/LocalAddress;)Z
    .registers 2
    .param p0, "address"    # Lorg/jboss/netty/channel/local/LocalAddress;

    .line 43
    sget-object v0, Lorg/jboss/netty/channel/local/LocalChannelRegistry;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method
