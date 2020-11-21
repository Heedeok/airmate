.class final Lorg/jboss/netty/handler/codec/spdy/SpdySession;
.super Ljava/lang/Object;
.source "SpdySession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/handler/codec/spdy/SpdySession$PriorityComparator;,
        Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;
    }
.end annotation


# static fields
.field private static final STREAM_CLOSED:Lorg/jboss/netty/handler/codec/spdy/SpdyProtocolException;


# instance fields
.field private final activeStreams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 30
    new-instance v0, Lorg/jboss/netty/handler/codec/spdy/SpdyProtocolException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyProtocolException;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->STREAM_CLOSED:Lorg/jboss/netty/handler/codec/spdy/SpdyProtocolException;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->activeStreams:Ljava/util/Map;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lorg/jboss/netty/handler/codec/spdy/SpdySession;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lorg/jboss/netty/handler/codec/spdy/SpdySession;

    .line 28
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->activeStreams:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method acceptStream(IBZZII)V
    .registers 16
    .param p1, "streamID"    # I
    .param p2, "priority"    # B
    .param p3, "remoteSideClosed"    # Z
    .param p4, "localSideClosed"    # Z
    .param p5, "sendWindowSize"    # I
    .param p6, "receiveWindowSize"    # I

    .line 60
    if-eqz p3, :cond_4

    if-nez p4, :cond_19

    .line 61
    :cond_4
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->activeStreams:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;

    move-object v2, v8

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v2 .. v7}, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;-><init>(BZZII)V

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :cond_19
    return-void
.end method

.method closeLocalSide(I)V
    .registers 5
    .param p1, "streamID"    # I

    .line 102
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 103
    .local v0, "StreamID":Ljava/lang/Integer;
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->activeStreams:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;

    .line 104
    .local v1, "state":Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;
    if-eqz v1, :cond_1d

    .line 105
    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;->closeLocalSide()V

    .line 106
    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;->isRemoteSideClosed()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 107
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->activeStreams:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :cond_1d
    return-void
.end method

.method closeRemoteSide(I)V
    .registers 5
    .param p1, "streamID"    # I

    .line 86
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 87
    .local v0, "StreamID":Ljava/lang/Integer;
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->activeStreams:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;

    .line 88
    .local v1, "state":Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;
    if-eqz v1, :cond_1d

    .line 89
    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;->closeRemoteSide()V

    .line 90
    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;->isLocalSideClosed()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 91
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->activeStreams:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :cond_1d
    return-void
.end method

.method getActiveStreams()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 52
    new-instance v0, Ljava/util/TreeSet;

    new-instance v1, Lorg/jboss/netty/handler/codec/spdy/SpdySession$PriorityComparator;

    invoke-direct {v1, p0}, Lorg/jboss/netty/handler/codec/spdy/SpdySession$PriorityComparator;-><init>(Lorg/jboss/netty/handler/codec/spdy/SpdySession;)V

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 53
    .local v0, "StreamIDs":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->activeStreams:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 54
    return-object v0
.end method

.method getPendingWrite(I)Lorg/jboss/netty/channel/MessageEvent;
    .registers 4
    .param p1, "streamID"    # I

    .line 167
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->activeStreams:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;

    .line 168
    .local v0, "state":Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;->getPendingWrite()Lorg/jboss/netty/channel/MessageEvent;

    move-result-object v1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    return-object v1
.end method

.method getReceiveWindowSizeLowerBound(I)I
    .registers 4
    .param p1, "streamID"    # I

    .line 148
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->activeStreams:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;

    .line 149
    .local v0, "state":Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;->getReceiveWindowSizeLowerBound()I

    move-result v1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    return v1
.end method

.method getSendWindowSize(I)I
    .registers 4
    .param p1, "streamID"    # I

    .line 130
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->activeStreams:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;

    .line 131
    .local v0, "state":Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;->getSendWindowSize()I

    move-result v1

    goto :goto_15

    :cond_14
    const/4 v1, -0x1

    :goto_15
    return v1
.end method

.method hasReceivedReply(I)Z
    .registers 4
    .param p1, "streamID"    # I

    .line 118
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->activeStreams:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;

    .line 119
    .local v0, "state":Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;->hasReceivedReply()Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v1, 0x1

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    return v1
.end method

.method isActiveStream(I)Z
    .registers 4
    .param p1, "streamID"    # I

    .line 47
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->activeStreams:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isLocalSideClosed(I)Z
    .registers 4
    .param p1, "streamID"    # I

    .line 97
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->activeStreams:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;

    .line 98
    .local v0, "state":Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;->isLocalSideClosed()Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_18

    :cond_16
    const/4 v1, 0x0

    goto :goto_19

    :cond_18
    :goto_18
    const/4 v1, 0x1

    :goto_19
    return v1
.end method

.method isRemoteSideClosed(I)Z
    .registers 4
    .param p1, "streamID"    # I

    .line 81
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->activeStreams:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;

    .line 82
    .local v0, "state":Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;->isRemoteSideClosed()Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_18

    :cond_16
    const/4 v1, 0x0

    goto :goto_19

    :cond_18
    :goto_18
    const/4 v1, 0x1

    :goto_19
    return v1
.end method

.method noActiveStreams()Z
    .registers 2

    .line 43
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->activeStreams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method numActiveStreams()I
    .registers 2

    .line 39
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->activeStreams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method putPendingWrite(ILorg/jboss/netty/channel/MessageEvent;)Z
    .registers 5
    .param p1, "streamID"    # I
    .param p2, "evt"    # Lorg/jboss/netty/channel/MessageEvent;

    .line 162
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->activeStreams:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;

    .line 163
    .local v0, "state":Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;
    if-eqz v0, :cond_17

    invoke-virtual {v0, p2}, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;->putPendingWrite(Lorg/jboss/netty/channel/MessageEvent;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v1, 0x1

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    return v1
.end method

.method receivedReply(I)V
    .registers 4
    .param p1, "streamID"    # I

    .line 123
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->activeStreams:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;

    .line 124
    .local v0, "state":Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;
    if-eqz v0, :cond_12

    .line 125
    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;->receivedReply()V

    .line 127
    :cond_12
    return-void
.end method

.method removePendingWrite(I)Lorg/jboss/netty/channel/MessageEvent;
    .registers 4
    .param p1, "streamID"    # I

    .line 172
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->activeStreams:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;

    .line 173
    .local v0, "state":Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;->removePendingWrite()Lorg/jboss/netty/channel/MessageEvent;

    move-result-object v1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    return-object v1
.end method

.method removeStream(I)V
    .registers 7
    .param p1, "streamID"    # I

    .line 68
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 69
    .local v0, "StreamID":Ljava/lang/Integer;
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->activeStreams:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;

    .line 70
    .local v1, "state":Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->activeStreams:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    if-eqz v1, :cond_28

    .line 72
    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;->removePendingWrite()Lorg/jboss/netty/channel/MessageEvent;

    move-result-object v2

    .line 73
    .local v2, "e":Lorg/jboss/netty/channel/MessageEvent;
    :goto_18
    if-eqz v2, :cond_28

    .line 74
    invoke-interface {v2}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v3

    sget-object v4, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->STREAM_CLOSED:Lorg/jboss/netty/handler/codec/spdy/SpdyProtocolException;

    invoke-interface {v3, v4}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 75
    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;->removePendingWrite()Lorg/jboss/netty/channel/MessageEvent;

    move-result-object v2

    goto :goto_18

    .line 78
    .end local v2    # "e":Lorg/jboss/netty/channel/MessageEvent;
    :cond_28
    return-void
.end method

.method updateAllReceiveWindowSizes(I)V
    .registers 4
    .param p1, "deltaWindowSize"    # I

    .line 153
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->activeStreams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;

    .line 154
    .local v1, "state":Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;
    invoke-virtual {v1, p1}, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;->updateReceiveWindowSize(I)I

    .line 155
    if-gez p1, :cond_1e

    .line 156
    invoke-virtual {v1, p1}, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;->setReceiveWindowSizeLowerBound(I)V

    .line 158
    .end local v1    # "state":Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;
    :cond_1e
    goto :goto_a

    .line 159
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1f
    return-void
.end method

.method updateReceiveWindowSize(II)I
    .registers 5
    .param p1, "streamID"    # I
    .param p2, "deltaWindowSize"    # I

    .line 140
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->activeStreams:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;

    .line 141
    .local v0, "state":Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;
    if-lez p2, :cond_13

    .line 142
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;->setReceiveWindowSizeLowerBound(I)V

    .line 144
    :cond_13
    if-eqz v0, :cond_1a

    invoke-virtual {v0, p2}, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;->updateReceiveWindowSize(I)I

    move-result v1

    goto :goto_1b

    :cond_1a
    const/4 v1, -0x1

    :goto_1b
    return v1
.end method

.method updateSendWindowSize(II)I
    .registers 5
    .param p1, "streamID"    # I
    .param p2, "deltaWindowSize"    # I

    .line 135
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->activeStreams:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;

    .line 136
    .local v0, "state":Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;
    if-eqz v0, :cond_14

    invoke-virtual {v0, p2}, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;->updateSendWindowSize(I)I

    move-result v1

    goto :goto_15

    :cond_14
    const/4 v1, -0x1

    :goto_15
    return v1
.end method
