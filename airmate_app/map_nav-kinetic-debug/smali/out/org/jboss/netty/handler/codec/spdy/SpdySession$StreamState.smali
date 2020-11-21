.class final Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;
.super Ljava/lang/Object;
.source "SpdySession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/handler/codec/spdy/SpdySession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StreamState"
.end annotation


# instance fields
.field private volatile localSideClosed:Z

.field private final pendingWriteQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lorg/jboss/netty/channel/MessageEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final priority:B

.field private final receiveWindowSize:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile receiveWindowSizeLowerBound:I

.field private receivedReply:Z

.field private volatile remoteSideClosed:Z

.field private final sendWindowSize:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(BZZII)V
    .registers 7
    .param p1, "priority"    # B
    .param p2, "remoteSideClosed"    # Z
    .param p3, "localSideClosed"    # Z
    .param p4, "sendWindowSize"    # I
    .param p5, "receiveWindowSize"    # I

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;->pendingWriteQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 191
    iput-byte p1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;->priority:B

    .line 192
    iput-boolean p2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;->remoteSideClosed:Z

    .line 193
    iput-boolean p3, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;->localSideClosed:Z

    .line 194
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, p4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;->sendWindowSize:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 195
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, p5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;->receiveWindowSize:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 196
    return-void
.end method


# virtual methods
.method closeLocalSide()V
    .registers 2

    .line 215
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;->localSideClosed:Z

    .line 216
    return-void
.end method

.method closeRemoteSide()V
    .registers 2

    .line 207
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;->remoteSideClosed:Z

    .line 208
    return-void
.end method

.method getPendingWrite()Lorg/jboss/netty/channel/MessageEvent;
    .registers 2

    .line 251
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;->pendingWriteQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/MessageEvent;

    return-object v0
.end method

.method getPriority()B
    .registers 2

    .line 199
    iget-byte v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;->priority:B

    return v0
.end method

.method getReceiveWindowSizeLowerBound()I
    .registers 2

    .line 239
    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;->receiveWindowSizeLowerBound:I

    return v0
.end method

.method getSendWindowSize()I
    .registers 2

    .line 227
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;->sendWindowSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method hasReceivedReply()Z
    .registers 2

    .line 219
    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;->receivedReply:Z

    return v0
.end method

.method isLocalSideClosed()Z
    .registers 2

    .line 211
    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;->localSideClosed:Z

    return v0
.end method

.method isRemoteSideClosed()Z
    .registers 2

    .line 203
    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;->remoteSideClosed:Z

    return v0
.end method

.method putPendingWrite(Lorg/jboss/netty/channel/MessageEvent;)Z
    .registers 3
    .param p1, "evt"    # Lorg/jboss/netty/channel/MessageEvent;

    .line 247
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;->pendingWriteQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method receivedReply()V
    .registers 2

    .line 223
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;->receivedReply:Z

    .line 224
    return-void
.end method

.method removePendingWrite()Lorg/jboss/netty/channel/MessageEvent;
    .registers 2

    .line 255
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;->pendingWriteQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/MessageEvent;

    return-object v0
.end method

.method setReceiveWindowSizeLowerBound(I)V
    .registers 2
    .param p1, "receiveWindowSizeLowerBound"    # I

    .line 243
    iput p1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;->receiveWindowSizeLowerBound:I

    .line 244
    return-void
.end method

.method updateReceiveWindowSize(I)I
    .registers 3
    .param p1, "deltaWindowSize"    # I

    .line 235
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;->receiveWindowSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    return v0
.end method

.method updateSendWindowSize(I)I
    .registers 3
    .param p1, "deltaWindowSize"    # I

    .line 231
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;->sendWindowSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    return v0
.end method
