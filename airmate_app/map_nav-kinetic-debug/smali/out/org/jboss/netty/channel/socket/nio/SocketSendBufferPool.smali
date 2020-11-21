.class final Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;
.super Ljava/lang/Object;
.source "SocketSendBufferPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$EmptySendBuffer;,
        Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$FileSendBuffer;,
        Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$GatheringSendBuffer;,
        Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PooledSendBuffer;,
        Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$UnpooledSendBuffer;,
        Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;,
        Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PreallocationRef;,
        Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;
    }
.end annotation


# static fields
.field private static final ALIGN_MASK:I = 0xf

.field private static final ALIGN_SHIFT:I = 0x4

.field private static final DEFAULT_PREALLOCATION_SIZE:I = 0x10000

.field private static final EMPTY_BUFFER:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;


# instance fields
.field current:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;

.field poolHead:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PreallocationRef;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 33
    new-instance v0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$EmptySendBuffer;

    invoke-direct {v0}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$EmptySendBuffer;-><init>()V

    sput-object v0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->EMPTY_BUFFER:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;

    const/high16 v1, 0x10000

    invoke-direct {v0, p0, v1}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;-><init>(Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;I)V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->current:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;

    .line 44
    return-void
.end method

.method private acquire(Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;
    .registers 9
    .param p1, "src"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 65
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    .line 66
    .local v0, "size":I
    if-nez v0, :cond_9

    .line 67
    sget-object v1, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->EMPTY_BUFFER:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;

    return-object v1

    .line 71
    :cond_9
    instance-of v1, p1, Lorg/jboss/netty/buffer/CompositeChannelBuffer;

    if-eqz v1, :cond_20

    move-object v1, p1

    check-cast v1, Lorg/jboss/netty/buffer/CompositeChannelBuffer;

    invoke-virtual {v1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->useGathering()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 72
    new-instance v1, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$GatheringSendBuffer;

    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->toByteBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$GatheringSendBuffer;-><init>(Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;[Ljava/nio/ByteBuffer;)V

    return-object v1

    .line 75
    :cond_20
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 76
    new-instance v1, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$UnpooledSendBuffer;

    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->toByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$UnpooledSendBuffer;-><init>(Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;Ljava/nio/ByteBuffer;)V

    return-object v1

    .line 78
    :cond_30
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v1

    const/high16 v2, 0x10000

    if-le v1, v2, :cond_42

    .line 79
    new-instance v1, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$UnpooledSendBuffer;

    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->toByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$UnpooledSendBuffer;-><init>(Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;Ljava/nio/ByteBuffer;)V

    return-object v1

    .line 82
    :cond_42
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->current:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;

    .line 83
    .local v1, "current":Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;
    iget-object v2, v1, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;->buffer:Ljava/nio/ByteBuffer;

    .line 84
    .local v2, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 87
    .local v3, "remaining":I
    if-ge v0, v3, :cond_6c

    .line 88
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v4, v0

    .line 89
    .local v4, "nextPos":I
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 90
    .local v5, "slice":Ljava/nio/ByteBuffer;
    invoke-static {v4}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->align(I)I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 91
    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 92
    iget v6, v1, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;->refCnt:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v1, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;->refCnt:I

    .line 93
    new-instance v6, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PooledSendBuffer;

    invoke-direct {v6, p0, v1, v5}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PooledSendBuffer;-><init>(Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;Ljava/nio/ByteBuffer;)V

    move-object v4, v6

    .line 94
    .end local v5    # "slice":Ljava/nio/ByteBuffer;
    .local v4, "dst":Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PooledSendBuffer;
    goto :goto_a5

    .end local v4    # "dst":Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PooledSendBuffer;
    :cond_6c
    if-le v0, v3, :cond_92

    .line 95
    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->getPreallocation()Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;

    move-result-object v4

    move-object v1, v4

    iput-object v4, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->current:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;

    .line 96
    iget-object v2, v1, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;->buffer:Ljava/nio/ByteBuffer;

    .line 97
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 98
    .local v4, "slice":Ljava/nio/ByteBuffer;
    invoke-static {v0}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->align(I)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 99
    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 100
    iget v5, v1, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;->refCnt:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v1, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;->refCnt:I

    .line 101
    new-instance v5, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PooledSendBuffer;

    invoke-direct {v5, p0, v1, v4}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PooledSendBuffer;-><init>(Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;Ljava/nio/ByteBuffer;)V

    move-object v4, v5

    .line 102
    .local v4, "dst":Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PooledSendBuffer;
    goto :goto_a5

    .line 103
    .end local v4    # "dst":Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PooledSendBuffer;
    :cond_92
    iget v4, v1, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;->refCnt:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v1, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;->refCnt:I

    .line 104
    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->getPreallocation0()Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;

    move-result-object v4

    iput-object v4, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->current:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;

    .line 105
    new-instance v4, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PooledSendBuffer;

    iget-object v5, v1, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;->buffer:Ljava/nio/ByteBuffer;

    invoke-direct {v4, p0, v1, v5}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PooledSendBuffer;-><init>(Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;Ljava/nio/ByteBuffer;)V

    .line 108
    .restart local v4    # "dst":Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PooledSendBuffer;
    :goto_a5
    iget-object v5, v4, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PooledSendBuffer;->buffer:Ljava/nio/ByteBuffer;

    .line 109
    .local v5, "dstbuf":Ljava/nio/ByteBuffer;
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 110
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v6

    invoke-interface {p1, v6, v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->getBytes(ILjava/nio/ByteBuffer;)V

    .line 111
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 112
    return-object v4
.end method

.method private acquire(Lorg/jboss/netty/channel/FileRegion;)Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;
    .registers 7
    .param p1, "src"    # Lorg/jboss/netty/channel/FileRegion;

    .line 58
    invoke-interface {p1}, Lorg/jboss/netty/channel/FileRegion;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_d

    .line 59
    sget-object v0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->EMPTY_BUFFER:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;

    return-object v0

    .line 61
    :cond_d
    new-instance v0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$FileSendBuffer;

    invoke-direct {v0, p0, p1}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$FileSendBuffer;-><init>(Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;Lorg/jboss/netty/channel/FileRegion;)V

    return-object v0
.end method

.method private static align(I)I
    .registers 4
    .param p0, "pos"    # I

    .line 145
    ushr-int/lit8 v0, p0, 0x4

    .line 146
    .local v0, "q":I
    and-int/lit8 v1, p0, 0xf

    .line 147
    .local v1, "r":I
    if-eqz v1, :cond_8

    .line 148
    add-int/lit8 v0, v0, 0x1

    .line 150
    :cond_8
    shl-int/lit8 v2, v0, 0x4

    return v2
.end method

.method private getPreallocation()Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;
    .registers 3

    .line 116
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->current:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;

    .line 117
    .local v0, "current":Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;
    iget v1, v0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;->refCnt:I

    if-nez v1, :cond_c

    .line 118
    iget-object v1, v0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 119
    return-object v0

    .line 122
    :cond_c
    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->getPreallocation0()Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;

    move-result-object v1

    return-object v1
.end method

.method private getPreallocation0()Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;
    .registers 4

    .line 126
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->poolHead:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PreallocationRef;

    .line 127
    .local v0, "ref":Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PreallocationRef;
    if-eqz v0, :cond_15

    .line 129
    :cond_4
    invoke-virtual {v0}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PreallocationRef;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;

    .line 130
    .local v1, "p":Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;
    iget-object v0, v0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PreallocationRef;->next:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PreallocationRef;

    .line 132
    if-eqz v1, :cond_11

    .line 133
    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->poolHead:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PreallocationRef;

    .line 134
    return-object v1

    .line 136
    .end local v1    # "p":Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;
    :cond_11
    if-nez v0, :cond_4

    .line 138
    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->poolHead:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PreallocationRef;

    .line 141
    :cond_15
    new-instance v1, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;

    const/high16 v2, 0x10000

    invoke-direct {v1, p0, v2}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;-><init>(Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;I)V

    return-object v1
.end method


# virtual methods
.method acquire(Ljava/lang/Object;)Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;
    .registers 5
    .param p1, "message"    # Ljava/lang/Object;

    .line 47
    instance-of v0, p1, Lorg/jboss/netty/buffer/ChannelBuffer;

    if-eqz v0, :cond_c

    .line 48
    move-object v0, p1

    check-cast v0, Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-direct {p0, v0}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->acquire(Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;

    move-result-object v0

    return-object v0

    .line 49
    :cond_c
    instance-of v0, p1, Lorg/jboss/netty/channel/FileRegion;

    if-eqz v0, :cond_18

    .line 50
    move-object v0, p1

    check-cast v0, Lorg/jboss/netty/channel/FileRegion;

    invoke-direct {p0, v0}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->acquire(Lorg/jboss/netty/channel/FileRegion;)Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;

    move-result-object v0

    return-object v0

    .line 53
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
