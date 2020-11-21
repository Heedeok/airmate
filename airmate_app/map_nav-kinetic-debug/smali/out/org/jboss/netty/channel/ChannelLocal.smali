.class public Lorg/jboss/netty/channel/ChannelLocal;
.super Ljava/lang/Object;
.source "ChannelLocal.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/util/Map$Entry<",
        "Lorg/jboss/netty/channel/Channel;",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final map:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Lorg/jboss/netty/channel/Channel;",
            "TT;>;"
        }
    .end annotation
.end field

.field private final removeOnClose:Z

.field private final remover:Lorg/jboss/netty/channel/ChannelFutureListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 55
    .local p0, "this":Lorg/jboss/netty/channel/ChannelLocal;, "Lorg/jboss/netty/channel/ChannelLocal<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jboss/netty/channel/ChannelLocal;-><init>(Z)V

    .line 56
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3
    .param p1, "removeOnClose"    # Z

    .line 64
    .local p0, "this":Lorg/jboss/netty/channel/ChannelLocal;, "Lorg/jboss/netty/channel/ChannelLocal<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;

    invoke-direct {v0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/ChannelLocal;->map:Ljava/util/concurrent/ConcurrentMap;

    .line 42
    new-instance v0, Lorg/jboss/netty/channel/ChannelLocal$1;

    invoke-direct {v0, p0}, Lorg/jboss/netty/channel/ChannelLocal$1;-><init>(Lorg/jboss/netty/channel/ChannelLocal;)V

    iput-object v0, p0, Lorg/jboss/netty/channel/ChannelLocal;->remover:Lorg/jboss/netty/channel/ChannelFutureListener;

    .line 65
    iput-boolean p1, p0, Lorg/jboss/netty/channel/ChannelLocal;->removeOnClose:Z

    .line 66
    return-void
.end method


# virtual methods
.method public get(Lorg/jboss/netty/channel/Channel;)Ljava/lang/Object;
    .registers 4
    .param p1, "channel"    # Lorg/jboss/netty/channel/Channel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/channel/Channel;",
            ")TT;"
        }
    .end annotation

    .line 81
    .local p0, "this":Lorg/jboss/netty/channel/ChannelLocal;, "Lorg/jboss/netty/channel/ChannelLocal<TT;>;"
    if-eqz p1, :cond_18

    .line 85
    iget-object v0, p0, Lorg/jboss/netty/channel/ChannelLocal;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 86
    .local v0, "value":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_17

    .line 87
    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/ChannelLocal;->initialValue(Lorg/jboss/netty/channel/Channel;)Ljava/lang/Object;

    move-result-object v0

    .line 88
    if-eqz v0, :cond_17

    .line 89
    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/channel/ChannelLocal;->setIfAbsent(Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 90
    .local v1, "oldValue":Ljava/lang/Object;, "TT;"
    if-eqz v1, :cond_17

    .line 91
    move-object v0, v1

    .line 95
    .end local v1    # "oldValue":Ljava/lang/Object;, "TT;"
    :cond_17
    return-object v0

    .line 82
    .end local v0    # "value":Ljava/lang/Object;, "TT;"
    :cond_18
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "channel"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected initialValue(Lorg/jboss/netty/channel/Channel;)Ljava/lang/Object;
    .registers 3
    .param p1, "channel"    # Lorg/jboss/netty/channel/Channel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/channel/Channel;",
            ")TT;"
        }
    .end annotation

    .line 74
    .local p0, "this":Lorg/jboss/netty/channel/ChannelLocal;, "Lorg/jboss/netty/channel/ChannelLocal<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Lorg/jboss/netty/channel/Channel;",
            "TT;>;>;"
        }
    .end annotation

    .line 168
    .local p0, "this":Lorg/jboss/netty/channel/ChannelLocal;, "Lorg/jboss/netty/channel/ChannelLocal<TT;>;"
    iget-object v0, p0, Lorg/jboss/netty/channel/ChannelLocal;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Lorg/jboss/netty/channel/Channel;)Ljava/lang/Object;
    .registers 5
    .param p1, "channel"    # Lorg/jboss/netty/channel/Channel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/channel/Channel;",
            ")TT;"
        }
    .end annotation

    .line 150
    .local p0, "this":Lorg/jboss/netty/channel/ChannelLocal;, "Lorg/jboss/netty/channel/ChannelLocal<TT;>;"
    if-eqz p1, :cond_1d

    .line 153
    iget-object v0, p0, Lorg/jboss/netty/channel/ChannelLocal;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 154
    .local v0, "removed":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_f

    .line 155
    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/ChannelLocal;->initialValue(Lorg/jboss/netty/channel/Channel;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 157
    :cond_f
    iget-boolean v1, p0, Lorg/jboss/netty/channel/ChannelLocal;->removeOnClose:Z

    if-eqz v1, :cond_1c

    .line 158
    invoke-interface {p1}, Lorg/jboss/netty/channel/Channel;->getCloseFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    iget-object v2, p0, Lorg/jboss/netty/channel/ChannelLocal;->remover:Lorg/jboss/netty/channel/ChannelFutureListener;

    invoke-interface {v1, v2}, Lorg/jboss/netty/channel/ChannelFuture;->removeListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    .line 160
    :cond_1c
    return-object v0

    .line 151
    .end local v0    # "removed":Ljava/lang/Object;, "TT;"
    :cond_1d
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "channel"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "channel"    # Lorg/jboss/netty/channel/Channel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/channel/Channel;",
            "TT;)TT;"
        }
    .end annotation

    .line 104
    .local p0, "this":Lorg/jboss/netty/channel/ChannelLocal;, "Lorg/jboss/netty/channel/ChannelLocal<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    if-nez p2, :cond_7

    .line 105
    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/ChannelLocal;->remove(Lorg/jboss/netty/channel/Channel;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 107
    :cond_7
    if-eqz p1, :cond_1d

    .line 110
    iget-object v0, p0, Lorg/jboss/netty/channel/ChannelLocal;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 111
    .local v0, "old":Ljava/lang/Object;, "TT;"
    iget-boolean v1, p0, Lorg/jboss/netty/channel/ChannelLocal;->removeOnClose:Z

    if-eqz v1, :cond_1c

    .line 112
    invoke-interface {p1}, Lorg/jboss/netty/channel/Channel;->getCloseFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    iget-object v2, p0, Lorg/jboss/netty/channel/ChannelLocal;->remover:Lorg/jboss/netty/channel/ChannelFutureListener;

    invoke-interface {v1, v2}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    .line 114
    :cond_1c
    return-object v0

    .line 108
    .end local v0    # "old":Ljava/lang/Object;, "TT;"
    :cond_1d
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "channel"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setIfAbsent(Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "channel"    # Lorg/jboss/netty/channel/Channel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/channel/Channel;",
            "TT;)TT;"
        }
    .end annotation

    .line 125
    .local p0, "this":Lorg/jboss/netty/channel/ChannelLocal;, "Lorg/jboss/netty/channel/ChannelLocal<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    if-nez p2, :cond_7

    .line 126
    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/ChannelLocal;->get(Lorg/jboss/netty/channel/Channel;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 128
    :cond_7
    if-eqz p1, :cond_1f

    .line 131
    iget-object v0, p0, Lorg/jboss/netty/channel/ChannelLocal;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 133
    .local v0, "mapping":Ljava/lang/Object;, "TT;"
    iget-boolean v1, p0, Lorg/jboss/netty/channel/ChannelLocal;->removeOnClose:Z

    if-eqz v1, :cond_1e

    if-nez v0, :cond_1e

    .line 134
    invoke-interface {p1}, Lorg/jboss/netty/channel/Channel;->getCloseFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    iget-object v2, p0, Lorg/jboss/netty/channel/ChannelLocal;->remover:Lorg/jboss/netty/channel/ChannelFutureListener;

    invoke-interface {v1, v2}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    .line 136
    :cond_1e
    return-object v0

    .line 129
    .end local v0    # "mapping":Ljava/lang/Object;, "TT;"
    :cond_1f
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "channel"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
