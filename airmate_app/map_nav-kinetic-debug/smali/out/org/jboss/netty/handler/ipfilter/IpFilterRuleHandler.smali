.class public Lorg/jboss/netty/handler/ipfilter/IpFilterRuleHandler;
.super Lorg/jboss/netty/handler/ipfilter/IpFilteringHandlerImpl;
.source "IpFilterRuleHandler.java"


# annotations
.annotation runtime Lorg/jboss/netty/channel/ChannelHandler$Sharable;
.end annotation


# instance fields
.field private final ipFilterRuleList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lorg/jboss/netty/handler/ipfilter/IpFilterRule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 74
    invoke-direct {p0}, Lorg/jboss/netty/handler/ipfilter/IpFilteringHandlerImpl;-><init>()V

    .line 61
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/ipfilter/IpFilterRuleHandler;->ipFilterRuleList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jboss/netty/handler/ipfilter/IpFilterRule;",
            ">;)V"
        }
    .end annotation

    .line 64
    .local p1, "newList":Ljava/util/List;, "Ljava/util/List<Lorg/jboss/netty/handler/ipfilter/IpFilterRule;>;"
    invoke-direct {p0}, Lorg/jboss/netty/handler/ipfilter/IpFilteringHandlerImpl;-><init>()V

    .line 61
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/ipfilter/IpFilterRuleHandler;->ipFilterRuleList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 65
    if-eqz p1, :cond_11

    .line 66
    iget-object v0, p0, Lorg/jboss/netty/handler/ipfilter/IpFilterRuleHandler;->ipFilterRuleList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 68
    :cond_11
    return-void
.end method


# virtual methods
.method protected accept(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;Ljava/net/InetSocketAddress;)Z
    .registers 9
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/ChannelEvent;
    .param p3, "inetSocketAddress"    # Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lorg/jboss/netty/handler/ipfilter/IpFilterRuleHandler;->ipFilterRuleList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 244
    return v1

    .line 246
    :cond_a
    invoke-virtual {p3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 247
    .local v0, "inetAddress":Ljava/net/InetAddress;
    iget-object v2, p0, Lorg/jboss/netty/handler/ipfilter/IpFilterRuleHandler;->ipFilterRuleList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 248
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jboss/netty/handler/ipfilter/IpFilterRule;>;"
    const/4 v3, 0x0

    .line 249
    .local v3, "ipFilterRule":Lorg/jboss/netty/handler/ipfilter/IpFilterRule;
    :cond_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 250
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Lorg/jboss/netty/handler/ipfilter/IpFilterRule;

    .line 251
    invoke-interface {v3, v0}, Lorg/jboss/netty/handler/ipfilter/IpFilterRule;->contains(Ljava/net/InetAddress;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 253
    invoke-interface {v3}, Lorg/jboss/netty/handler/ipfilter/IpFilterRule;->isAllowRule()Z

    move-result v1

    return v1

    .line 257
    :cond_2d
    return v1
.end method

.method public add(ILorg/jboss/netty/handler/ipfilter/IpFilterRule;)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "ipFilterRule"    # Lorg/jboss/netty/handler/ipfilter/IpFilterRule;

    .line 89
    if-eqz p2, :cond_8

    .line 92
    iget-object v0, p0, Lorg/jboss/netty/handler/ipfilter/IpFilterRuleHandler;->ipFilterRuleList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    .line 93
    return-void

    .line 90
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "IpFilterRule can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public add(Lorg/jboss/netty/handler/ipfilter/IpFilterRule;)V
    .registers 4
    .param p1, "ipFilterRule"    # Lorg/jboss/netty/handler/ipfilter/IpFilterRule;

    .line 81
    if-eqz p1, :cond_8

    .line 84
    iget-object v0, p0, Lorg/jboss/netty/handler/ipfilter/IpFilterRuleHandler;->ipFilterRuleList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    return-void

    .line 82
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "IpFilterRule can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addAll(ILjava/util/Collection;)V
    .registers 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Lorg/jboss/netty/handler/ipfilter/IpFilterRule;",
            ">;)V"
        }
    .end annotation

    .line 108
    .local p2, "c":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jboss/netty/handler/ipfilter/IpFilterRule;>;"
    if-eqz p2, :cond_8

    .line 111
    iget-object v0, p0, Lorg/jboss/netty/handler/ipfilter/IpFilterRuleHandler;->ipFilterRuleList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(ILjava/util/Collection;)Z

    .line 112
    return-void

    .line 109
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Collection can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/jboss/netty/handler/ipfilter/IpFilterRule;",
            ">;)V"
        }
    .end annotation

    .line 100
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jboss/netty/handler/ipfilter/IpFilterRule;>;"
    if-eqz p1, :cond_8

    .line 103
    iget-object v0, p0, Lorg/jboss/netty/handler/ipfilter/IpFilterRuleHandler;->ipFilterRuleList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 104
    return-void

    .line 101
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Collection can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addAllAbsent(Ljava/util/Collection;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/jboss/netty/handler/ipfilter/IpFilterRule;",
            ">;)I"
        }
    .end annotation

    .line 120
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jboss/netty/handler/ipfilter/IpFilterRule;>;"
    if-eqz p1, :cond_9

    .line 123
    iget-object v0, p0, Lorg/jboss/netty/handler/ipfilter/IpFilterRuleHandler;->ipFilterRuleList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAllAbsent(Ljava/util/Collection;)I

    move-result v0

    return v0

    .line 121
    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Collection can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addIfAbsent(Lorg/jboss/netty/handler/ipfilter/IpFilterRule;)Z
    .registers 4
    .param p1, "ipFilterRule"    # Lorg/jboss/netty/handler/ipfilter/IpFilterRule;

    .line 132
    if-eqz p1, :cond_9

    .line 135
    iget-object v0, p0, Lorg/jboss/netty/handler/ipfilter/IpFilterRuleHandler;->ipFilterRuleList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 133
    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "IpFilterRule can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clear()V
    .registers 2

    .line 140
    iget-object v0, p0, Lorg/jboss/netty/handler/ipfilter/IpFilterRuleHandler;->ipFilterRuleList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 141
    return-void
.end method

.method public contains(Lorg/jboss/netty/handler/ipfilter/IpFilterRule;)Z
    .registers 4
    .param p1, "ipFilterRule"    # Lorg/jboss/netty/handler/ipfilter/IpFilterRule;

    .line 149
    if-eqz p1, :cond_9

    .line 152
    iget-object v0, p0, Lorg/jboss/netty/handler/ipfilter/IpFilterRuleHandler;->ipFilterRuleList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 150
    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "IpFilterRule can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/jboss/netty/handler/ipfilter/IpFilterRule;",
            ">;)Z"
        }
    .end annotation

    .line 161
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jboss/netty/handler/ipfilter/IpFilterRule;>;"
    if-eqz p1, :cond_9

    .line 164
    iget-object v0, p0, Lorg/jboss/netty/handler/ipfilter/IpFilterRuleHandler;->ipFilterRuleList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0

    .line 162
    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Collection can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(I)Lorg/jboss/netty/handler/ipfilter/IpFilterRule;
    .registers 3
    .param p1, "index"    # I

    .line 173
    iget-object v0, p0, Lorg/jboss/netty/handler/ipfilter/IpFilterRuleHandler;->ipFilterRuleList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/ipfilter/IpFilterRule;

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 182
    iget-object v0, p0, Lorg/jboss/netty/handler/ipfilter/IpFilterRuleHandler;->ipFilterRuleList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public remove(I)Lorg/jboss/netty/handler/ipfilter/IpFilterRule;
    .registers 3
    .param p1, "index"    # I

    .line 199
    iget-object v0, p0, Lorg/jboss/netty/handler/ipfilter/IpFilterRuleHandler;->ipFilterRuleList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/ipfilter/IpFilterRule;

    return-object v0
.end method

.method public remove(Lorg/jboss/netty/handler/ipfilter/IpFilterRule;)V
    .registers 4
    .param p1, "ipFilterRule"    # Lorg/jboss/netty/handler/ipfilter/IpFilterRule;

    .line 187
    if-eqz p1, :cond_8

    .line 190
    iget-object v0, p0, Lorg/jboss/netty/handler/ipfilter/IpFilterRuleHandler;->ipFilterRuleList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 191
    return-void

    .line 188
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "IpFilterRule can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeAll(Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/jboss/netty/handler/ipfilter/IpFilterRule;",
            ">;)V"
        }
    .end annotation

    .line 204
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jboss/netty/handler/ipfilter/IpFilterRule;>;"
    if-eqz p1, :cond_8

    .line 207
    iget-object v0, p0, Lorg/jboss/netty/handler/ipfilter/IpFilterRuleHandler;->ipFilterRuleList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 208
    return-void

    .line 205
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Collection can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public retainAll(Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/jboss/netty/handler/ipfilter/IpFilterRule;",
            ">;)V"
        }
    .end annotation

    .line 212
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jboss/netty/handler/ipfilter/IpFilterRule;>;"
    if-eqz p1, :cond_8

    .line 215
    iget-object v0, p0, Lorg/jboss/netty/handler/ipfilter/IpFilterRuleHandler;->ipFilterRuleList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->retainAll(Ljava/util/Collection;)Z

    .line 216
    return-void

    .line 213
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Collection can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(ILorg/jboss/netty/handler/ipfilter/IpFilterRule;)Lorg/jboss/netty/handler/ipfilter/IpFilterRule;
    .registers 5
    .param p1, "index"    # I
    .param p2, "ipFilterRule"    # Lorg/jboss/netty/handler/ipfilter/IpFilterRule;

    .line 224
    if-eqz p2, :cond_b

    .line 227
    iget-object v0, p0, Lorg/jboss/netty/handler/ipfilter/IpFilterRuleHandler;->ipFilterRuleList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/ipfilter/IpFilterRule;

    return-object v0

    .line 225
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "IpFilterRule can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .registers 2

    .line 236
    iget-object v0, p0, Lorg/jboss/netty/handler/ipfilter/IpFilterRuleHandler;->ipFilterRuleList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    return v0
.end method
