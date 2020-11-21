.class public Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;
.super Lorg/jboss/netty/channel/SimpleChannelUpstreamHandler;
.source "SpdySessionHandler.java"

# interfaces
.implements Lorg/jboss/netty/channel/ChannelDownstreamHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler$ClosingChannelFutureListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_WINDOW_SIZE:I = 0x10000

.field private static final PROTOCOL_EXCEPTION:Lorg/jboss/netty/handler/codec/spdy/SpdyProtocolException;


# instance fields
.field private volatile closeSessionFuture:Lorg/jboss/netty/channel/ChannelFuture;

.field private final flowControl:Z

.field private final flowControlLock:Ljava/lang/Object;

.field private volatile initialReceiveWindowSize:I

.field private volatile initialSendWindowSize:I

.field private volatile lastGoodStreamID:I

.field private volatile localConcurrentStreams:I

.field private volatile maxConcurrentStreams:I

.field private final pings:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile receivedGoAwayFrame:Z

.field private volatile remoteConcurrentStreams:I

.field private volatile sentGoAwayFrame:Z

.field private final server:Z

.field private final spdySession:Lorg/jboss/netty/handler/codec/spdy/SpdySession;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 42
    new-instance v0, Lorg/jboss/netty/handler/codec/spdy/SpdyProtocolException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyProtocolException;-><init>()V

    sput-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->PROTOCOL_EXCEPTION:Lorg/jboss/netty/handler/codec/spdy/SpdyProtocolException;

    return-void
.end method

.method public constructor <init>(IZ)V
    .registers 6
    .param p1, "version"    # I
    .param p2, "server"    # Z

    .line 90
    invoke-direct {p0}, Lorg/jboss/netty/channel/SimpleChannelUpstreamHandler;-><init>()V

    .line 44
    new-instance v0, Lorg/jboss/netty/handler/codec/spdy/SpdySession;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdySession;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lorg/jboss/netty/handler/codec/spdy/SpdySession;

    .line 52
    const/high16 v0, 0x10000

    iput v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->initialSendWindowSize:I

    .line 53
    iput v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->initialReceiveWindowSize:I

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->flowControlLock:Ljava/lang/Object;

    .line 57
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->pings:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 91
    const/4 v0, 0x2

    if-lt p1, v0, :cond_2e

    const/4 v0, 0x3

    if-gt p1, v0, :cond_2e

    .line 95
    iput-boolean p2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->server:Z

    .line 96
    if-lt p1, v0, :cond_2a

    const/4 v0, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    :goto_2b
    iput-boolean v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->flowControl:Z

    .line 97
    return-void

    .line 92
    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Z)V
    .registers 3
    .param p1, "server"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 77
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;-><init>(IZ)V

    .line 78
    return-void
.end method

.method private declared-synchronized acceptStream(IBZZ)Z
    .registers 13
    .param p1, "streamID"    # I
    .param p2, "priority"    # B
    .param p3, "remoteSideClosed"    # Z
    .param p4, "localSideClosed"    # Z

    monitor-enter p0

    .line 732
    :try_start_1
    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->receivedGoAwayFrame:Z

    const/4 v1, 0x0

    if-nez v0, :cond_31

    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->sentGoAwayFrame:Z

    if-eqz v0, :cond_b

    goto :goto_31

    .line 736
    :cond_b
    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->maxConcurrentStreams:I

    .line 737
    .local v0, "maxConcurrentStreams":I
    if-eqz v0, :cond_19

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lorg/jboss/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v2}, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->numActiveStreams()I

    move-result v2
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_33

    if-lt v2, v0, :cond_19

    .line 739
    monitor-exit p0

    return v1

    .line 741
    :cond_19
    :try_start_19
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lorg/jboss/netty/handler/codec/spdy/SpdySession;

    iget v6, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->initialSendWindowSize:I

    iget v7, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->initialReceiveWindowSize:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v7}, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->acceptStream(IBZZII)V

    .line 744
    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->isRemoteInitiatedID(I)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 745
    iput p1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->lastGoodStreamID:I
    :try_end_2e
    .catchall {:try_start_19 .. :try_end_2e} :catchall_33

    .line 747
    :cond_2e
    const/4 v1, 0x1

    monitor-exit p0

    return v1

    .line 733
    .end local v0    # "maxConcurrentStreams":I
    :cond_31
    :goto_31
    monitor-exit p0

    return v1

    .line 731
    .end local p1    # "streamID":I
    .end local p2    # "priority":B
    .end local p3    # "remoteSideClosed":Z
    .end local p4    # "localSideClosed":Z
    :catchall_33
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic access$000(Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;ILorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;)V
    .registers 5
    .param p0, "x0"    # Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;
    .param p1, "x1"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "x2"    # Ljava/net/SocketAddress;
    .param p3, "x3"    # I
    .param p4, "x4"    # Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->issueStreamError(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;ILorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;)V

    return-void
.end method

.method private halfCloseStream(IZ)V
    .registers 4
    .param p1, "streamID"    # I
    .param p2, "remote"    # Z

    .line 751
    if-eqz p2, :cond_8

    .line 752
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lorg/jboss/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v0, p1}, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->closeRemoteSide(I)V

    goto :goto_d

    .line 754
    :cond_8
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lorg/jboss/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v0, p1}, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->closeLocalSide(I)V

    .line 756
    :goto_d
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->closeSessionFuture:Lorg/jboss/netty/channel/ChannelFuture;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lorg/jboss/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->noActiveStreams()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 757
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->closeSessionFuture:Lorg/jboss/netty/channel/ChannelFuture;

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    .line 759
    :cond_1e
    return-void
.end method

.method private isRemoteInitiatedID(I)Z
    .registers 4
    .param p1, "ID"    # I

    .line 683
    invoke-static {p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyCodecUtil;->isServerId(I)Z

    move-result v0

    .line 684
    .local v0, "serverID":Z
    iget-boolean v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->server:Z

    if-eqz v1, :cond_a

    if-eqz v0, :cond_10

    :cond_a
    iget-boolean v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->server:Z

    if-nez v1, :cond_12

    if-eqz v0, :cond_12

    :cond_10
    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method

.method private issueSessionError(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;)V
    .registers 7
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p3, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p4, "status"    # Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;

    .line 650
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->sendGoAwayFrame(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    .line 651
    .local v0, "future":Lorg/jboss/netty/channel/ChannelFuture;
    sget-object v1, Lorg/jboss/netty/channel/ChannelFutureListener;->CLOSE:Lorg/jboss/netty/channel/ChannelFutureListener;

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    .line 652
    return-void
.end method

.method private issueStreamError(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;ILorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;)V
    .registers 8
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p3, "streamID"    # I
    .param p4, "status"    # Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    .line 668
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lorg/jboss/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v0, p3}, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->isRemoteSideClosed(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 669
    .local v0, "fireMessageReceived":Z
    invoke-direct {p0, p3}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->removeStream(I)V

    .line 671
    new-instance v1, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyRstStreamFrame;

    invoke-direct {v1, p3, p4}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyRstStreamFrame;-><init>(ILorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;)V

    .line 672
    .local v1, "spdyRstStreamFrame":Lorg/jboss/netty/handler/codec/spdy/SpdyRstStreamFrame;
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v2

    invoke-static {v2}, Lorg/jboss/netty/channel/Channels;->future(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v2

    invoke-static {p1, v2, v1, p2}, Lorg/jboss/netty/channel/Channels;->write(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    .line 673
    if-eqz v0, :cond_20

    .line 674
    invoke-static {p1, v1, p2}, Lorg/jboss/netty/channel/Channels;->fireMessageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    .line 676
    :cond_20
    return-void
.end method

.method private removeStream(I)V
    .registers 3
    .param p1, "streamID"    # I

    .line 762
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lorg/jboss/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v0, p1}, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->removeStream(I)V

    .line 763
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->closeSessionFuture:Lorg/jboss/netty/channel/ChannelFuture;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lorg/jboss/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->noActiveStreams()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 764
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->closeSessionFuture:Lorg/jboss/netty/channel/ChannelFuture;

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    .line 766
    :cond_16
    return-void
.end method

.method private declared-synchronized sendGoAwayFrame(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;)Lorg/jboss/netty/channel/ChannelFuture;
    .registers 7
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p3, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p4, "status"    # Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;

    monitor-enter p0

    .line 854
    :try_start_1
    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->sentGoAwayFrame:Z

    if-nez v0, :cond_18

    .line 855
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->sentGoAwayFrame:Z

    .line 856
    new-instance v0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyGoAwayFrame;

    iget v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->lastGoodStreamID:I

    invoke-direct {v0, v1, p4}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyGoAwayFrame;-><init>(ILorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;)V

    .line 857
    .local v0, "spdyGoAwayFrame":Lorg/jboss/netty/handler/codec/spdy/SpdyGoAwayFrame;
    invoke-static {p2}, Lorg/jboss/netty/channel/Channels;->future(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    .line 858
    .local v1, "future":Lorg/jboss/netty/channel/ChannelFuture;
    invoke-static {p1, v1, v0, p3}, Lorg/jboss/netty/channel/Channels;->write(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;Ljava/net/SocketAddress;)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_1e

    .line 859
    monitor-exit p0

    return-object v1

    .line 861
    .end local v0    # "spdyGoAwayFrame":Lorg/jboss/netty/handler/codec/spdy/SpdyGoAwayFrame;
    .end local v1    # "future":Lorg/jboss/netty/channel/ChannelFuture;
    :cond_18
    :try_start_18
    invoke-static {p2}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_1e

    monitor-exit p0

    return-object v0

    .line 853
    .end local p1    # "ctx":Lorg/jboss/netty/channel/ChannelHandlerContext;
    .end local p2    # "channel":Lorg/jboss/netty/channel/Channel;
    .end local p3    # "remoteAddress":Ljava/net/SocketAddress;
    .end local p4    # "status":Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;
    :catchall_1e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private sendGoAwayFrame(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V
    .registers 6
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/ChannelStateEvent;

    .line 838
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelStateEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/Channel;->isConnected()Z

    move-result v0

    if-nez v0, :cond_e

    .line 839
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 840
    return-void

    .line 843
    :cond_e
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelStateEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;->OK:Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->sendGoAwayFrame(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    .line 844
    .local v0, "future":Lorg/jboss/netty/channel/ChannelFuture;
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lorg/jboss/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->noActiveStreams()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 845
    new-instance v1, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler$ClosingChannelFutureListener;

    invoke-direct {v1, p1, p2}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler$ClosingChannelFutureListener;-><init>(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    goto :goto_3e

    .line 847
    :cond_2a
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelStateEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    invoke-static {v1}, Lorg/jboss/netty/channel/Channels;->future(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    iput-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->closeSessionFuture:Lorg/jboss/netty/channel/ChannelFuture;

    .line 848
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->closeSessionFuture:Lorg/jboss/netty/channel/ChannelFuture;

    new-instance v2, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler$ClosingChannelFutureListener;

    invoke-direct {v2, p1, p2}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler$ClosingChannelFutureListener;-><init>(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V

    invoke-interface {v1, v2}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    .line 850
    :goto_3e
    return-void
.end method

.method private updateConcurrentStreams(IZ)V
    .registers 5
    .param p1, "newConcurrentStreams"    # I
    .param p2, "remote"    # Z

    .line 688
    if-eqz p2, :cond_5

    .line 689
    iput p1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->remoteConcurrentStreams:I

    goto :goto_7

    .line 691
    :cond_5
    iput p1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->localConcurrentStreams:I

    .line 693
    :goto_7
    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->localConcurrentStreams:I

    iget v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->remoteConcurrentStreams:I

    if-ne v0, v1, :cond_12

    .line 694
    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->localConcurrentStreams:I

    iput v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->maxConcurrentStreams:I

    .line 695
    return-void

    .line 697
    :cond_12
    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->localConcurrentStreams:I

    if-nez v0, :cond_1b

    .line 698
    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->remoteConcurrentStreams:I

    iput v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->maxConcurrentStreams:I

    .line 699
    return-void

    .line 701
    :cond_1b
    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->remoteConcurrentStreams:I

    if-nez v0, :cond_24

    .line 702
    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->localConcurrentStreams:I

    iput v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->maxConcurrentStreams:I

    .line 703
    return-void

    .line 705
    :cond_24
    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->localConcurrentStreams:I

    iget v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->remoteConcurrentStreams:I

    if-le v0, v1, :cond_2f

    .line 706
    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->remoteConcurrentStreams:I

    iput v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->maxConcurrentStreams:I

    goto :goto_33

    .line 708
    :cond_2f
    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->localConcurrentStreams:I

    iput v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->maxConcurrentStreams:I

    .line 710
    :goto_33
    return-void
.end method

.method private declared-synchronized updateInitialReceiveWindowSize(I)V
    .registers 4
    .param p1, "newInitialWindowSize"    # I

    monitor-enter p0

    .line 723
    :try_start_1
    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->initialReceiveWindowSize:I

    sub-int v0, p1, v0

    .line 724
    .local v0, "deltaWindowSize":I
    iput p1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->initialReceiveWindowSize:I

    .line 725
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lorg/jboss/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v1, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->updateAllReceiveWindowSizes(I)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 726
    monitor-exit p0

    return-void

    .line 722
    .end local v0    # "deltaWindowSize":I
    .end local p1    # "newInitialWindowSize":I
    :catchall_e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized updateInitialSendWindowSize(I)V
    .registers 7
    .param p1, "newInitialWindowSize"    # I

    monitor-enter p0

    .line 714
    :try_start_1
    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->initialSendWindowSize:I

    sub-int v0, p1, v0

    .line 715
    .local v0, "deltaWindowSize":I
    iput p1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->initialSendWindowSize:I

    .line 716
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lorg/jboss/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->getActiveStreams()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 717
    .local v2, "StreamID":Ljava/lang/Integer;
    iget-object v3, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lorg/jboss/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->updateSendWindowSize(II)I
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_29

    .line 718
    .end local v2    # "StreamID":Ljava/lang/Integer;
    goto :goto_11

    .line 719
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_27
    monitor-exit p0

    return-void

    .line 713
    .end local v0    # "deltaWindowSize":I
    .end local p1    # "newInitialWindowSize":I
    :catchall_29
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private updateSendWindowSize(Lorg/jboss/netty/channel/ChannelHandlerContext;II)V
    .registers 15
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "streamID"    # I
    .param p3, "deltaWindowSize"    # I

    .line 769
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->flowControlLock:Ljava/lang/Object;

    monitor-enter v0

    .line 770
    :try_start_3
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lorg/jboss/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v1, p2, p3}, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->updateSendWindowSize(II)I

    move-result v1

    .line 772
    .local v1, "newWindowSize":I
    :goto_9
    if-lez v1, :cond_90

    .line 774
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lorg/jboss/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v2, p2}, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->getPendingWrite(I)Lorg/jboss/netty/channel/MessageEvent;

    move-result-object v2

    .line 775
    .local v2, "e":Lorg/jboss/netty/channel/MessageEvent;
    if-nez v2, :cond_15

    .line 776
    goto/16 :goto_90

    .line 779
    :cond_15
    invoke-interface {v2}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;

    .line 780
    .local v3, "spdyDataFrame":Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;
    invoke-interface {v3}, Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;->getData()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v4

    invoke-interface {v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v4

    .line 782
    .local v4, "dataFrameSize":I
    if-lt v1, v4, :cond_5a

    .line 784
    iget-object v5, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lorg/jboss/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v5, p2}, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->removePendingWrite(I)Lorg/jboss/netty/channel/MessageEvent;

    .line 785
    iget-object v5, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lorg/jboss/netty/handler/codec/spdy/SpdySession;

    mul-int/lit8 v6, v4, -0x1

    invoke-virtual {v5, p2, v6}, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->updateSendWindowSize(II)I

    move-result v5

    move v1, v5

    .line 789
    invoke-interface {v2}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v5

    .line 790
    .local v5, "remoteAddress":Ljava/net/SocketAddress;
    move-object v6, p1

    .line 791
    .local v6, "context":Lorg/jboss/netty/channel/ChannelHandlerContext;
    invoke-interface {v2}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v7

    new-instance v8, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler$3;

    invoke-direct {v8, p0, v6, v5, p2}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler$3;-><init>(Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;I)V

    invoke-interface {v7, v8}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    .line 800
    invoke-interface {v3}, Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;->isLast()Z

    move-result v7

    if-eqz v7, :cond_4e

    .line 801
    const/4 v7, 0x0

    invoke-direct {p0, p2, v7}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->halfCloseStream(IZ)V

    .line 804
    :cond_4e
    invoke-interface {v2}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v7

    invoke-interface {v2}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v8

    invoke-static {p1, v7, v3, v8}, Lorg/jboss/netty/channel/Channels;->write(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    .line 806
    .end local v5    # "remoteAddress":Ljava/net/SocketAddress;
    .end local v6    # "context":Lorg/jboss/netty/channel/ChannelHandlerContext;
    goto :goto_8e

    .line 808
    :cond_5a
    iget-object v5, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lorg/jboss/netty/handler/codec/spdy/SpdySession;

    mul-int/lit8 v6, v1, -0x1

    invoke-virtual {v5, p2, v6}, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->updateSendWindowSize(II)I

    .line 811
    new-instance v5, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyDataFrame;

    invoke-direct {v5, p2}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyDataFrame;-><init>(I)V

    .line 812
    .local v5, "partialDataFrame":Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;
    invoke-interface {v3}, Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;->getData()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v6

    invoke-interface {v6, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readSlice(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;->setData(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 814
    invoke-interface {v2}, Lorg/jboss/netty/channel/MessageEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v6

    invoke-static {v6}, Lorg/jboss/netty/channel/Channels;->future(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v6

    .line 818
    .local v6, "writeFuture":Lorg/jboss/netty/channel/ChannelFuture;
    invoke-interface {v2}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v7

    .line 819
    .local v7, "remoteAddress":Ljava/net/SocketAddress;
    move-object v8, p1

    .line 820
    .local v8, "context":Lorg/jboss/netty/channel/ChannelHandlerContext;
    invoke-interface {v2}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v9

    new-instance v10, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler$4;

    invoke-direct {v10, p0, v8, v7, p2}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler$4;-><init>(Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;I)V

    invoke-interface {v9, v10}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    .line 828
    invoke-static {p1, v6, v5, v7}, Lorg/jboss/netty/channel/Channels;->write(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    .line 830
    const/4 v1, 0x0

    .line 832
    .end local v2    # "e":Lorg/jboss/netty/channel/MessageEvent;
    .end local v3    # "spdyDataFrame":Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;
    .end local v4    # "dataFrameSize":I
    .end local v5    # "partialDataFrame":Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;
    .end local v6    # "writeFuture":Lorg/jboss/netty/channel/ChannelFuture;
    .end local v7    # "remoteAddress":Ljava/net/SocketAddress;
    .end local v8    # "context":Lorg/jboss/netty/channel/ChannelHandlerContext;
    :goto_8e
    goto/16 :goto_9

    .line 833
    .end local v1    # "newWindowSize":I
    :cond_90
    :goto_90
    monitor-exit v0

    .line 834
    return-void

    .line 833
    :catchall_92
    move-exception v1

    monitor-exit v0
    :try_end_94
    .catchall {:try_start_3 .. :try_end_94} :catchall_92

    throw v1
.end method


# virtual methods
.method public exceptionCaught(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ExceptionEvent;)V
    .registers 7
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/ExceptionEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 405
    invoke-interface {p2}, Lorg/jboss/netty/channel/ExceptionEvent;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 406
    .local v0, "cause":Ljava/lang/Throwable;
    instance-of v1, v0, Lorg/jboss/netty/handler/codec/spdy/SpdyProtocolException;

    if-eqz v1, :cond_12

    .line 407
    invoke-interface {p2}, Lorg/jboss/netty/channel/ExceptionEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;->PROTOCOL_ERROR:Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;

    invoke-direct {p0, p1, v1, v2, v3}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->issueSessionError(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;)V

    .line 410
    :cond_12
    invoke-super {p0, p1, p2}, Lorg/jboss/netty/channel/SimpleChannelUpstreamHandler;->exceptionCaught(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ExceptionEvent;)V

    .line 411
    return-void
.end method

.method public handleDownstream(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V
    .registers 16
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "evt"    # Lorg/jboss/netty/channel/ChannelEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 415
    instance-of v0, p2, Lorg/jboss/netty/channel/ChannelStateEvent;

    if-eqz v0, :cond_2d

    .line 416
    move-object v0, p2

    check-cast v0, Lorg/jboss/netty/channel/ChannelStateEvent;

    .line 417
    .local v0, "e":Lorg/jboss/netty/channel/ChannelStateEvent;
    sget-object v1, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler$5;->$SwitchMap$org$jboss$netty$channel$ChannelState:[I

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getState()Lorg/jboss/netty/channel/ChannelState;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jboss/netty/channel/ChannelState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_202

    .end local v0    # "e":Lorg/jboss/netty/channel/ChannelStateEvent;
    goto :goto_2d

    .line 428
    .restart local v0    # "e":Lorg/jboss/netty/channel/ChannelStateEvent;
    :pswitch_17
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2d

    .line 429
    :cond_29
    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->sendGoAwayFrame(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V

    .line 430
    return-void

    .line 434
    .end local v0    # "e":Lorg/jboss/netty/channel/ChannelStateEvent;
    :cond_2d
    :goto_2d
    instance-of v0, p2, Lorg/jboss/netty/channel/MessageEvent;

    if-nez v0, :cond_35

    .line 435
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 436
    return-void

    .line 439
    :cond_35
    move-object v0, p2

    check-cast v0, Lorg/jboss/netty/channel/MessageEvent;

    .line 440
    .local v0, "e":Lorg/jboss/netty/channel/MessageEvent;
    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v1

    .line 442
    .local v1, "msg":Ljava/lang/Object;
    instance-of v2, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;

    const/4 v3, 0x0

    if-eqz v2, :cond_dd

    .line 444
    move-object v2, v1

    check-cast v2, Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;

    .line 445
    .local v2, "spdyDataFrame":Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;
    invoke-interface {v2}, Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;->getStreamId()I

    move-result v4

    .line 448
    .local v4, "streamID":I
    iget-object v5, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lorg/jboss/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v5, v4}, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->isLocalSideClosed(I)Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 449
    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v3

    sget-object v5, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->PROTOCOL_EXCEPTION:Lorg/jboss/netty/handler/codec/spdy/SpdyProtocolException;

    invoke-interface {v3, v5}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 450
    return-void

    .line 466
    :cond_5a
    iget-boolean v5, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->flowControl:Z

    if-eqz v5, :cond_d2

    .line 467
    iget-object v5, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->flowControlLock:Ljava/lang/Object;

    monitor-enter v5

    .line 468
    :try_start_61
    invoke-interface {v2}, Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;->getData()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v6

    invoke-interface {v6}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v6

    .line 469
    .local v6, "dataLength":I
    iget-object v7, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lorg/jboss/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v7, v4}, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->getSendWindowSize(I)I

    move-result v7

    .line 471
    .local v7, "sendWindowSize":I
    if-lt v7, v6, :cond_8c

    .line 473
    iget-object v8, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lorg/jboss/netty/handler/codec/spdy/SpdySession;

    mul-int/lit8 v9, v6, -0x1

    invoke-virtual {v8, v4, v9}, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->updateSendWindowSize(II)I

    .line 477
    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v8

    .line 478
    .local v8, "remoteAddress":Ljava/net/SocketAddress;
    move-object v9, p1

    .line 479
    .local v9, "context":Lorg/jboss/netty/channel/ChannelHandlerContext;
    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v10

    new-instance v11, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler$1;

    invoke-direct {v11, p0, v9, v8, v4}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler$1;-><init>(Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;I)V

    invoke-interface {v10, v11}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    .line 488
    .end local v8    # "remoteAddress":Ljava/net/SocketAddress;
    .end local v9    # "context":Lorg/jboss/netty/channel/ChannelHandlerContext;
    nop

    .line 522
    .end local v6    # "dataLength":I
    .end local v7    # "sendWindowSize":I
    monitor-exit v5

    goto :goto_d2

    .line 488
    .restart local v6    # "dataLength":I
    .restart local v7    # "sendWindowSize":I
    :cond_8c
    if-lez v7, :cond_c8

    .line 490
    iget-object v3, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lorg/jboss/netty/handler/codec/spdy/SpdySession;

    mul-int/lit8 v8, v7, -0x1

    invoke-virtual {v3, v4, v8}, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->updateSendWindowSize(II)I

    .line 493
    new-instance v3, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyDataFrame;

    invoke-direct {v3, v4}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyDataFrame;-><init>(I)V

    .line 494
    .local v3, "partialDataFrame":Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;
    invoke-interface {v2}, Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;->getData()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v8

    invoke-interface {v8, v7}, Lorg/jboss/netty/buffer/ChannelBuffer;->readSlice(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v8

    invoke-interface {v3, v8}, Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;->setData(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 497
    iget-object v8, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lorg/jboss/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v8, v4, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->putPendingWrite(ILorg/jboss/netty/channel/MessageEvent;)Z

    .line 499
    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v8

    invoke-static {v8}, Lorg/jboss/netty/channel/Channels;->future(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v8

    .line 503
    .local v8, "writeFuture":Lorg/jboss/netty/channel/ChannelFuture;
    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v9

    .line 504
    .local v9, "remoteAddress":Ljava/net/SocketAddress;
    move-object v10, p1

    .line 505
    .local v10, "context":Lorg/jboss/netty/channel/ChannelHandlerContext;
    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v11

    new-instance v12, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler$2;

    invoke-direct {v12, p0, v10, v9, v4}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler$2;-><init>(Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;I)V

    invoke-interface {v11, v12}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    .line 514
    invoke-static {p1, v8, v3, v9}, Lorg/jboss/netty/channel/Channels;->write(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    .line 515
    monitor-exit v5

    return-void

    .line 519
    .end local v3    # "partialDataFrame":Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;
    .end local v8    # "writeFuture":Lorg/jboss/netty/channel/ChannelFuture;
    .end local v9    # "remoteAddress":Ljava/net/SocketAddress;
    .end local v10    # "context":Lorg/jboss/netty/channel/ChannelHandlerContext;
    :cond_c8
    iget-object v3, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lorg/jboss/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v3, v4, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->putPendingWrite(ILorg/jboss/netty/channel/MessageEvent;)Z

    .line 520
    monitor-exit v5

    return-void

    .line 522
    .end local v6    # "dataLength":I
    .end local v7    # "sendWindowSize":I
    :catchall_cf
    move-exception v3

    monitor-exit v5
    :try_end_d1
    .catchall {:try_start_61 .. :try_end_d1} :catchall_cf

    throw v3

    .line 526
    :cond_d2
    :goto_d2
    invoke-interface {v2}, Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;->isLast()Z

    move-result v5

    if-eqz v5, :cond_db

    .line 527
    invoke-direct {p0, v4, v3}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->halfCloseStream(IZ)V

    .line 530
    .end local v2    # "spdyDataFrame":Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;
    .end local v4    # "streamID":I
    :cond_db
    goto/16 :goto_1fe

    :cond_dd
    instance-of v2, v1, Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;

    if-eqz v2, :cond_116

    .line 532
    move-object v2, v1

    check-cast v2, Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;

    .line 533
    .local v2, "spdySynStreamFrame":Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;
    invoke-interface {v2}, Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;->getStreamId()I

    move-result v3

    .line 535
    .local v3, "streamID":I
    invoke-direct {p0, v3}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->isRemoteInitiatedID(I)Z

    move-result v4

    if-eqz v4, :cond_f8

    .line 536
    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v4

    sget-object v5, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->PROTOCOL_EXCEPTION:Lorg/jboss/netty/handler/codec/spdy/SpdyProtocolException;

    invoke-interface {v4, v5}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 537
    return-void

    .line 540
    :cond_f8
    invoke-interface {v2}, Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;->getPriority()B

    move-result v4

    .line 541
    .local v4, "priority":B
    invoke-interface {v2}, Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;->isUnidirectional()Z

    move-result v5

    .line 542
    .local v5, "remoteSideClosed":Z
    invoke-interface {v2}, Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;->isLast()Z

    move-result v6

    .line 543
    .local v6, "localSideClosed":Z
    invoke-direct {p0, v3, v4, v5, v6}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->acceptStream(IBZZ)Z

    move-result v7

    if-nez v7, :cond_114

    .line 544
    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v7

    sget-object v8, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->PROTOCOL_EXCEPTION:Lorg/jboss/netty/handler/codec/spdy/SpdyProtocolException;

    invoke-interface {v7, v8}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 545
    return-void

    .line 548
    .end local v2    # "spdySynStreamFrame":Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;
    .end local v3    # "streamID":I
    .end local v4    # "priority":B
    .end local v5    # "remoteSideClosed":Z
    .end local v6    # "localSideClosed":Z
    :cond_114
    goto/16 :goto_1fe

    :cond_116
    instance-of v2, v1, Lorg/jboss/netty/handler/codec/spdy/SpdySynReplyFrame;

    if-eqz v2, :cond_145

    .line 550
    move-object v2, v1

    check-cast v2, Lorg/jboss/netty/handler/codec/spdy/SpdySynReplyFrame;

    .line 551
    .local v2, "spdySynReplyFrame":Lorg/jboss/netty/handler/codec/spdy/SpdySynReplyFrame;
    invoke-interface {v2}, Lorg/jboss/netty/handler/codec/spdy/SpdySynReplyFrame;->getStreamId()I

    move-result v4

    .line 554
    .local v4, "streamID":I
    invoke-direct {p0, v4}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->isRemoteInitiatedID(I)Z

    move-result v5

    if-eqz v5, :cond_13b

    iget-object v5, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lorg/jboss/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v5, v4}, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->isLocalSideClosed(I)Z

    move-result v5

    if-eqz v5, :cond_130

    goto :goto_13b

    .line 560
    :cond_130
    invoke-interface {v2}, Lorg/jboss/netty/handler/codec/spdy/SpdySynReplyFrame;->isLast()Z

    move-result v5

    if-eqz v5, :cond_139

    .line 561
    invoke-direct {p0, v4, v3}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->halfCloseStream(IZ)V

    .line 564
    .end local v2    # "spdySynReplyFrame":Lorg/jboss/netty/handler/codec/spdy/SpdySynReplyFrame;
    .end local v4    # "streamID":I
    :cond_139
    goto/16 :goto_1fe

    .line 555
    .restart local v2    # "spdySynReplyFrame":Lorg/jboss/netty/handler/codec/spdy/SpdySynReplyFrame;
    .restart local v4    # "streamID":I
    :cond_13b
    :goto_13b
    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v3

    sget-object v5, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->PROTOCOL_EXCEPTION:Lorg/jboss/netty/handler/codec/spdy/SpdyProtocolException;

    invoke-interface {v3, v5}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 556
    return-void

    .line 564
    .end local v2    # "spdySynReplyFrame":Lorg/jboss/netty/handler/codec/spdy/SpdySynReplyFrame;
    .end local v4    # "streamID":I
    :cond_145
    instance-of v2, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyRstStreamFrame;

    if-eqz v2, :cond_155

    .line 566
    move-object v2, v1

    check-cast v2, Lorg/jboss/netty/handler/codec/spdy/SpdyRstStreamFrame;

    .line 567
    .local v2, "spdyRstStreamFrame":Lorg/jboss/netty/handler/codec/spdy/SpdyRstStreamFrame;
    invoke-interface {v2}, Lorg/jboss/netty/handler/codec/spdy/SpdyRstStreamFrame;->getStreamId()I

    move-result v3

    invoke-direct {p0, v3}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->removeStream(I)V

    .line 569
    .end local v2    # "spdyRstStreamFrame":Lorg/jboss/netty/handler/codec/spdy/SpdyRstStreamFrame;
    goto/16 :goto_1fe

    :cond_155
    instance-of v2, v1, Lorg/jboss/netty/handler/codec/spdy/SpdySettingsFrame;

    if-eqz v2, :cond_182

    .line 571
    move-object v2, v1

    check-cast v2, Lorg/jboss/netty/handler/codec/spdy/SpdySettingsFrame;

    .line 573
    .local v2, "spdySettingsFrame":Lorg/jboss/netty/handler/codec/spdy/SpdySettingsFrame;
    const/4 v4, 0x4

    invoke-interface {v2, v4}, Lorg/jboss/netty/handler/codec/spdy/SpdySettingsFrame;->getValue(I)I

    move-result v4

    .line 575
    .local v4, "newConcurrentStreams":I
    if-ltz v4, :cond_166

    .line 576
    invoke-direct {p0, v4, v3}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->updateConcurrentStreams(IZ)V

    .line 582
    :cond_166
    const/4 v5, 0x7

    invoke-interface {v2, v5}, Lorg/jboss/netty/handler/codec/spdy/SpdySettingsFrame;->isPersisted(I)Z

    move-result v6

    if-eqz v6, :cond_170

    .line 583
    invoke-interface {v2, v5}, Lorg/jboss/netty/handler/codec/spdy/SpdySettingsFrame;->removeValue(I)V

    .line 585
    :cond_170
    invoke-interface {v2, v5, v3}, Lorg/jboss/netty/handler/codec/spdy/SpdySettingsFrame;->setPersistValue(IZ)V

    .line 587
    iget-boolean v3, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->flowControl:Z

    if-eqz v3, :cond_180

    .line 588
    invoke-interface {v2, v5}, Lorg/jboss/netty/handler/codec/spdy/SpdySettingsFrame;->getValue(I)I

    move-result v3

    .line 590
    .local v3, "newInitialWindowSize":I
    if-ltz v3, :cond_180

    .line 591
    invoke-direct {p0, v3}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->updateInitialReceiveWindowSize(I)V

    .line 595
    .end local v2    # "spdySettingsFrame":Lorg/jboss/netty/handler/codec/spdy/SpdySettingsFrame;
    .end local v3    # "newInitialWindowSize":I
    .end local v4    # "newConcurrentStreams":I
    :cond_180
    goto/16 :goto_1fe

    :cond_182
    instance-of v2, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyPingFrame;

    if-eqz v2, :cond_1bb

    .line 597
    move-object v2, v1

    check-cast v2, Lorg/jboss/netty/handler/codec/spdy/SpdyPingFrame;

    .line 598
    .local v2, "spdyPingFrame":Lorg/jboss/netty/handler/codec/spdy/SpdyPingFrame;
    invoke-interface {v2}, Lorg/jboss/netty/handler/codec/spdy/SpdyPingFrame;->getId()I

    move-result v3

    invoke-direct {p0, v3}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->isRemoteInitiatedID(I)Z

    move-result v3

    if-eqz v3, :cond_1b5

    .line 599
    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v3

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid PING ID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lorg/jboss/netty/handler/codec/spdy/SpdyPingFrame;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 601
    return-void

    .line 603
    :cond_1b5
    iget-object v3, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->pings:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 605
    .end local v2    # "spdyPingFrame":Lorg/jboss/netty/handler/codec/spdy/SpdyPingFrame;
    goto :goto_1fe

    :cond_1bb
    instance-of v2, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyGoAwayFrame;

    if-eqz v2, :cond_1c9

    .line 609
    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v2

    sget-object v3, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->PROTOCOL_EXCEPTION:Lorg/jboss/netty/handler/codec/spdy/SpdyProtocolException;

    invoke-interface {v2, v3}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 610
    return-void

    .line 612
    :cond_1c9
    instance-of v2, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyHeadersFrame;

    if-eqz v2, :cond_1f0

    .line 614
    move-object v2, v1

    check-cast v2, Lorg/jboss/netty/handler/codec/spdy/SpdyHeadersFrame;

    .line 615
    .local v2, "spdyHeadersFrame":Lorg/jboss/netty/handler/codec/spdy/SpdyHeadersFrame;
    invoke-interface {v2}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeadersFrame;->getStreamId()I

    move-result v4

    .line 618
    .local v4, "streamID":I
    iget-object v5, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lorg/jboss/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v5, v4}, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->isLocalSideClosed(I)Z

    move-result v5

    if-eqz v5, :cond_1e6

    .line 619
    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v3

    sget-object v5, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->PROTOCOL_EXCEPTION:Lorg/jboss/netty/handler/codec/spdy/SpdyProtocolException;

    invoke-interface {v3, v5}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 620
    return-void

    .line 624
    :cond_1e6
    invoke-interface {v2}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeadersFrame;->isLast()Z

    move-result v5

    if-eqz v5, :cond_1ef

    .line 625
    invoke-direct {p0, v4, v3}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->halfCloseStream(IZ)V

    .line 628
    .end local v2    # "spdyHeadersFrame":Lorg/jboss/netty/handler/codec/spdy/SpdyHeadersFrame;
    .end local v4    # "streamID":I
    :cond_1ef
    goto :goto_1fe

    :cond_1f0
    instance-of v2, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyWindowUpdateFrame;

    if-eqz v2, :cond_1fe

    .line 631
    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v2

    sget-object v3, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->PROTOCOL_EXCEPTION:Lorg/jboss/netty/handler/codec/spdy/SpdyProtocolException;

    invoke-interface {v2, v3}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 632
    return-void

    .line 635
    :cond_1fe
    :goto_1fe
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 636
    return-void

    :pswitch_data_202
    .packed-switch 0x1
        :pswitch_17
        :pswitch_17
        :pswitch_17
    .end packed-switch
.end method

.method public messageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;)V
    .registers 12
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/MessageEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 103
    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v0

    .line 104
    .local v0, "msg":Ljava/lang/Object;
    instance-of v1, v0, Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;

    const/4 v2, 0x1

    if-eqz v1, :cond_df

    .line 129
    move-object v1, v0

    check-cast v1, Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;

    .line 130
    .local v1, "spdyDataFrame":Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;
    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;->getStreamId()I

    move-result v3

    .line 133
    .local v3, "streamID":I
    iget-object v4, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lorg/jboss/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v4, v3}, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->isActiveStream(I)Z

    move-result v4

    if-nez v4, :cond_34

    .line 134
    iget v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->lastGoodStreamID:I

    if-gt v3, v2, :cond_26

    .line 135
    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v2

    sget-object v4, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->PROTOCOL_ERROR:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    invoke-direct {p0, p1, v2, v3, v4}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->issueStreamError(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;ILorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;)V

    goto :goto_33

    .line 136
    :cond_26
    iget-boolean v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->sentGoAwayFrame:Z

    if-nez v2, :cond_33

    .line 137
    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v2

    sget-object v4, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->INVALID_STREAM:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    invoke-direct {p0, p1, v2, v3, v4}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->issueStreamError(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;ILorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;)V

    .line 139
    :cond_33
    :goto_33
    return-void

    .line 143
    :cond_34
    iget-object v4, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lorg/jboss/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v4, v3}, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->isRemoteSideClosed(I)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 144
    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v2

    sget-object v4, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->STREAM_ALREADY_CLOSED:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    invoke-direct {p0, p1, v2, v3, v4}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->issueStreamError(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;ILorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;)V

    .line 145
    return-void

    .line 149
    :cond_46
    invoke-direct {p0, v3}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->isRemoteInitiatedID(I)Z

    move-result v4

    if-nez v4, :cond_5e

    iget-object v4, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lorg/jboss/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v4, v3}, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->hasReceivedReply(I)Z

    move-result v4

    if-nez v4, :cond_5e

    .line 150
    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v2

    sget-object v4, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->PROTOCOL_ERROR:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    invoke-direct {p0, p1, v2, v3, v4}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->issueStreamError(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;ILorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;)V

    .line 151
    return-void

    .line 160
    :cond_5e
    iget-boolean v4, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->flowControl:Z

    if-eqz v4, :cond_d4

    .line 162
    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;->getData()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v4

    invoke-interface {v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v4

    mul-int/lit8 v4, v4, -0x1

    .line 163
    .local v4, "deltaWindowSize":I
    iget-object v5, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lorg/jboss/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v5, v3, v4}, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->updateReceiveWindowSize(II)I

    move-result v5

    .line 170
    .local v5, "newWindowSize":I
    iget-object v6, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lorg/jboss/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v6, v3}, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->getReceiveWindowSizeLowerBound(I)I

    move-result v6

    if-ge v5, v6, :cond_84

    .line 171
    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v2

    sget-object v6, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->FLOW_CONTROL_ERROR:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    invoke-direct {p0, p1, v2, v3, v6}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->issueStreamError(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;ILorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;)V

    .line 172
    return-void

    .line 177
    :cond_84
    if-gez v5, :cond_ac

    .line 178
    :goto_86
    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;->getData()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v6

    invoke-interface {v6}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v6

    iget v7, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->initialReceiveWindowSize:I

    if-le v6, v7, :cond_ac

    .line 179
    new-instance v6, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyDataFrame;

    invoke-direct {v6, v3}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyDataFrame;-><init>(I)V

    .line 180
    .local v6, "partialDataFrame":Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;
    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;->getData()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v7

    iget v8, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->initialReceiveWindowSize:I

    invoke-interface {v7, v8}, Lorg/jboss/netty/buffer/ChannelBuffer;->readSlice(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;->setData(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 181
    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v7

    invoke-static {p1, v6, v7}, Lorg/jboss/netty/channel/Channels;->fireMessageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    .line 182
    .end local v6    # "partialDataFrame":Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;
    goto :goto_86

    .line 186
    :cond_ac
    iget v6, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->initialReceiveWindowSize:I

    div-int/lit8 v6, v6, 0x2

    if-gt v5, v6, :cond_d4

    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;->isLast()Z

    move-result v6

    if-nez v6, :cond_d4

    .line 187
    iget v6, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->initialReceiveWindowSize:I

    sub-int/2addr v6, v5

    .line 188
    .end local v4    # "deltaWindowSize":I
    .local v6, "deltaWindowSize":I
    iget-object v4, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lorg/jboss/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v4, v3, v6}, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->updateReceiveWindowSize(II)I

    .line 189
    new-instance v4, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyWindowUpdateFrame;

    invoke-direct {v4, v3, v6}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyWindowUpdateFrame;-><init>(II)V

    .line 191
    .local v4, "spdyWindowUpdateFrame":Lorg/jboss/netty/handler/codec/spdy/SpdyWindowUpdateFrame;
    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v7

    invoke-static {v7}, Lorg/jboss/netty/channel/Channels;->future(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v7

    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v8

    invoke-static {p1, v7, v4, v8}, Lorg/jboss/netty/channel/Channels;->write(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    .line 197
    .end local v4    # "spdyWindowUpdateFrame":Lorg/jboss/netty/handler/codec/spdy/SpdyWindowUpdateFrame;
    .end local v5    # "newWindowSize":I
    .end local v6    # "deltaWindowSize":I
    :cond_d4
    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;->isLast()Z

    move-result v4

    if-eqz v4, :cond_dd

    .line 198
    invoke-direct {p0, v3, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->halfCloseStream(IZ)V

    .line 201
    .end local v1    # "spdyDataFrame":Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;
    .end local v3    # "streamID":I
    :cond_dd
    goto/16 :goto_268

    :cond_df
    instance-of v1, v0, Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;

    if-eqz v1, :cond_139

    .line 217
    move-object v1, v0

    check-cast v1, Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;

    .line 218
    .local v1, "spdySynStreamFrame":Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;
    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;->getStreamId()I

    move-result v2

    .line 221
    .local v2, "streamID":I
    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;->isInvalid()Z

    move-result v3

    if-nez v3, :cond_12f

    invoke-direct {p0, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->isRemoteInitiatedID(I)Z

    move-result v3

    if-eqz v3, :cond_12f

    iget-object v3, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lorg/jboss/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v3, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->isActiveStream(I)Z

    move-result v3

    if-eqz v3, :cond_ff

    goto :goto_12f

    .line 229
    :cond_ff
    iget v3, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->lastGoodStreamID:I

    if-gt v2, v3, :cond_111

    .line 230
    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v3

    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v4

    sget-object v5, Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;->PROTOCOL_ERROR:Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;

    invoke-direct {p0, p1, v3, v4, v5}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->issueSessionError(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;)V

    .line 231
    return-void

    .line 235
    :cond_111
    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;->getPriority()B

    move-result v3

    .line 236
    .local v3, "priority":B
    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;->isLast()Z

    move-result v4

    .line 237
    .local v4, "remoteSideClosed":Z
    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;->isUnidirectional()Z

    move-result v5

    .line 238
    .local v5, "localSideClosed":Z
    invoke-direct {p0, v2, v3, v4, v5}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->acceptStream(IBZZ)Z

    move-result v6

    if-nez v6, :cond_12d

    .line 239
    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v6

    sget-object v7, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->REFUSED_STREAM:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    invoke-direct {p0, p1, v6, v2, v7}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->issueStreamError(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;ILorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;)V

    .line 240
    return-void

    .line 243
    .end local v1    # "spdySynStreamFrame":Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;
    .end local v2    # "streamID":I
    .end local v3    # "priority":B
    .end local v4    # "remoteSideClosed":Z
    .end local v5    # "localSideClosed":Z
    :cond_12d
    goto/16 :goto_268

    .line 224
    .restart local v1    # "spdySynStreamFrame":Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;
    .restart local v2    # "streamID":I
    :cond_12f
    :goto_12f
    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v3

    sget-object v4, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->PROTOCOL_ERROR:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    invoke-direct {p0, p1, v3, v2, v4}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->issueStreamError(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;ILorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;)V

    .line 225
    return-void

    .line 243
    .end local v1    # "spdySynStreamFrame":Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;
    .end local v2    # "streamID":I
    :cond_139
    instance-of v1, v0, Lorg/jboss/netty/handler/codec/spdy/SpdySynReplyFrame;

    if-eqz v1, :cond_185

    .line 252
    move-object v1, v0

    check-cast v1, Lorg/jboss/netty/handler/codec/spdy/SpdySynReplyFrame;

    .line 253
    .local v1, "spdySynReplyFrame":Lorg/jboss/netty/handler/codec/spdy/SpdySynReplyFrame;
    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdySynReplyFrame;->getStreamId()I

    move-result v3

    .line 256
    .local v3, "streamID":I
    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdySynReplyFrame;->isInvalid()Z

    move-result v4

    if-nez v4, :cond_17b

    invoke-direct {p0, v3}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->isRemoteInitiatedID(I)Z

    move-result v4

    if-nez v4, :cond_17b

    iget-object v4, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lorg/jboss/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v4, v3}, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->isRemoteSideClosed(I)Z

    move-result v4

    if-eqz v4, :cond_159

    goto :goto_17b

    .line 264
    :cond_159
    iget-object v4, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lorg/jboss/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v4, v3}, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->hasReceivedReply(I)Z

    move-result v4

    if-eqz v4, :cond_16b

    .line 265
    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v2

    sget-object v4, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->STREAM_IN_USE:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    invoke-direct {p0, p1, v2, v3, v4}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->issueStreamError(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;ILorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;)V

    .line 266
    return-void

    .line 269
    :cond_16b
    iget-object v4, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lorg/jboss/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v4, v3}, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->receivedReply(I)V

    .line 272
    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdySynReplyFrame;->isLast()Z

    move-result v4

    if-eqz v4, :cond_179

    .line 273
    invoke-direct {p0, v3, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->halfCloseStream(IZ)V

    .line 276
    .end local v1    # "spdySynReplyFrame":Lorg/jboss/netty/handler/codec/spdy/SpdySynReplyFrame;
    .end local v3    # "streamID":I
    :cond_179
    goto/16 :goto_268

    .line 259
    .restart local v1    # "spdySynReplyFrame":Lorg/jboss/netty/handler/codec/spdy/SpdySynReplyFrame;
    .restart local v3    # "streamID":I
    :cond_17b
    :goto_17b
    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v2

    sget-object v4, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->INVALID_STREAM:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    invoke-direct {p0, p1, v2, v3, v4}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->issueStreamError(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;ILorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;)V

    .line 260
    return-void

    .line 276
    .end local v1    # "spdySynReplyFrame":Lorg/jboss/netty/handler/codec/spdy/SpdySynReplyFrame;
    .end local v3    # "streamID":I
    :cond_185
    instance-of v1, v0, Lorg/jboss/netty/handler/codec/spdy/SpdyRstStreamFrame;

    if-eqz v1, :cond_195

    .line 287
    move-object v1, v0

    check-cast v1, Lorg/jboss/netty/handler/codec/spdy/SpdyRstStreamFrame;

    .line 288
    .local v1, "spdyRstStreamFrame":Lorg/jboss/netty/handler/codec/spdy/SpdyRstStreamFrame;
    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyRstStreamFrame;->getStreamId()I

    move-result v2

    invoke-direct {p0, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->removeStream(I)V

    .line 290
    .end local v1    # "spdyRstStreamFrame":Lorg/jboss/netty/handler/codec/spdy/SpdyRstStreamFrame;
    goto/16 :goto_268

    :cond_195
    instance-of v1, v0, Lorg/jboss/netty/handler/codec/spdy/SpdySettingsFrame;

    if-eqz v1, :cond_1c3

    .line 292
    move-object v1, v0

    check-cast v1, Lorg/jboss/netty/handler/codec/spdy/SpdySettingsFrame;

    .line 294
    .local v1, "spdySettingsFrame":Lorg/jboss/netty/handler/codec/spdy/SpdySettingsFrame;
    const/4 v3, 0x4

    invoke-interface {v1, v3}, Lorg/jboss/netty/handler/codec/spdy/SpdySettingsFrame;->getValue(I)I

    move-result v3

    .line 296
    .local v3, "newConcurrentStreams":I
    if-ltz v3, :cond_1a6

    .line 297
    invoke-direct {p0, v3, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->updateConcurrentStreams(IZ)V

    .line 303
    :cond_1a6
    const/4 v2, 0x7

    invoke-interface {v1, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdySettingsFrame;->isPersisted(I)Z

    move-result v4

    if-eqz v4, :cond_1b0

    .line 304
    invoke-interface {v1, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdySettingsFrame;->removeValue(I)V

    .line 306
    :cond_1b0
    const/4 v4, 0x0

    invoke-interface {v1, v2, v4}, Lorg/jboss/netty/handler/codec/spdy/SpdySettingsFrame;->setPersistValue(IZ)V

    .line 308
    iget-boolean v4, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->flowControl:Z

    if-eqz v4, :cond_1c1

    .line 309
    invoke-interface {v1, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdySettingsFrame;->getValue(I)I

    move-result v2

    .line 311
    .local v2, "newInitialWindowSize":I
    if-ltz v2, :cond_1c1

    .line 312
    invoke-direct {p0, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->updateInitialSendWindowSize(I)V

    .line 316
    .end local v1    # "spdySettingsFrame":Lorg/jboss/netty/handler/codec/spdy/SpdySettingsFrame;
    .end local v2    # "newInitialWindowSize":I
    .end local v3    # "newConcurrentStreams":I
    :cond_1c1
    goto/16 :goto_268

    :cond_1c3
    instance-of v1, v0, Lorg/jboss/netty/handler/codec/spdy/SpdyPingFrame;

    if-eqz v1, :cond_1f4

    .line 327
    move-object v1, v0

    check-cast v1, Lorg/jboss/netty/handler/codec/spdy/SpdyPingFrame;

    .line 329
    .local v1, "spdyPingFrame":Lorg/jboss/netty/handler/codec/spdy/SpdyPingFrame;
    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyPingFrame;->getId()I

    move-result v2

    invoke-direct {p0, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->isRemoteInitiatedID(I)Z

    move-result v2

    if-eqz v2, :cond_1e4

    .line 330
    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v2

    invoke-static {v2}, Lorg/jboss/netty/channel/Channels;->future(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v2

    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v3

    invoke-static {p1, v2, v1, v3}, Lorg/jboss/netty/channel/Channels;->write(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    .line 331
    return-void

    .line 335
    :cond_1e4
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->pings:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-nez v2, :cond_1ed

    .line 336
    return-void

    .line 338
    :cond_1ed
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->pings:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    .line 340
    .end local v1    # "spdyPingFrame":Lorg/jboss/netty/handler/codec/spdy/SpdyPingFrame;
    goto/16 :goto_268

    :cond_1f4
    instance-of v1, v0, Lorg/jboss/netty/handler/codec/spdy/SpdyGoAwayFrame;

    if-eqz v1, :cond_1fb

    .line 342
    iput-boolean v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->receivedGoAwayFrame:Z

    goto :goto_268

    .line 344
    :cond_1fb
    instance-of v1, v0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeadersFrame;

    if-eqz v1, :cond_232

    .line 346
    move-object v1, v0

    check-cast v1, Lorg/jboss/netty/handler/codec/spdy/SpdyHeadersFrame;

    .line 347
    .local v1, "spdyHeadersFrame":Lorg/jboss/netty/handler/codec/spdy/SpdyHeadersFrame;
    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeadersFrame;->getStreamId()I

    move-result v3

    .line 350
    .local v3, "streamID":I
    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeadersFrame;->isInvalid()Z

    move-result v4

    if-eqz v4, :cond_216

    .line 351
    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v2

    sget-object v4, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->PROTOCOL_ERROR:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    invoke-direct {p0, p1, v2, v3, v4}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->issueStreamError(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;ILorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;)V

    .line 352
    return-void

    .line 355
    :cond_216
    iget-object v4, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lorg/jboss/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v4, v3}, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->isRemoteSideClosed(I)Z

    move-result v4

    if-eqz v4, :cond_228

    .line 356
    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v2

    sget-object v4, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->INVALID_STREAM:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    invoke-direct {p0, p1, v2, v3, v4}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->issueStreamError(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;ILorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;)V

    .line 357
    return-void

    .line 361
    :cond_228
    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeadersFrame;->isLast()Z

    move-result v4

    if-eqz v4, :cond_231

    .line 362
    invoke-direct {p0, v3, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->halfCloseStream(IZ)V

    .line 365
    .end local v1    # "spdyHeadersFrame":Lorg/jboss/netty/handler/codec/spdy/SpdyHeadersFrame;
    .end local v3    # "streamID":I
    :cond_231
    goto :goto_268

    :cond_232
    instance-of v1, v0, Lorg/jboss/netty/handler/codec/spdy/SpdyWindowUpdateFrame;

    if-eqz v1, :cond_268

    .line 377
    iget-boolean v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->flowControl:Z

    if-eqz v1, :cond_267

    .line 378
    move-object v1, v0

    check-cast v1, Lorg/jboss/netty/handler/codec/spdy/SpdyWindowUpdateFrame;

    .line 379
    .local v1, "spdyWindowUpdateFrame":Lorg/jboss/netty/handler/codec/spdy/SpdyWindowUpdateFrame;
    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyWindowUpdateFrame;->getStreamId()I

    move-result v2

    .line 380
    .local v2, "streamID":I
    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyWindowUpdateFrame;->getDeltaWindowSize()I

    move-result v3

    .line 383
    .local v3, "deltaWindowSize":I
    iget-object v4, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lorg/jboss/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v4, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->isLocalSideClosed(I)Z

    move-result v4

    if-eqz v4, :cond_24e

    .line 384
    return-void

    .line 388
    :cond_24e
    iget-object v4, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lorg/jboss/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v4, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->getSendWindowSize(I)I

    move-result v4

    const v5, 0x7fffffff

    sub-int/2addr v5, v3

    if-le v4, v5, :cond_264

    .line 389
    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v4

    sget-object v5, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->FLOW_CONTROL_ERROR:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    invoke-direct {p0, p1, v4, v2, v5}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->issueStreamError(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;ILorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;)V

    .line 390
    return-void

    .line 393
    :cond_264
    invoke-direct {p0, p1, v2, v3}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->updateSendWindowSize(Lorg/jboss/netty/channel/ChannelHandlerContext;II)V

    .line 395
    .end local v1    # "spdyWindowUpdateFrame":Lorg/jboss/netty/handler/codec/spdy/SpdyWindowUpdateFrame;
    .end local v2    # "streamID":I
    .end local v3    # "deltaWindowSize":I
    :cond_267
    return-void

    .line 398
    :cond_268
    :goto_268
    invoke-super {p0, p1, p2}, Lorg/jboss/netty/channel/SimpleChannelUpstreamHandler;->messageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;)V

    .line 399
    return-void
.end method
