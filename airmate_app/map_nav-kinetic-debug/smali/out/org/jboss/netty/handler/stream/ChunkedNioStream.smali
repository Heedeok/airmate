.class public Lorg/jboss/netty/handler/stream/ChunkedNioStream;
.super Ljava/lang/Object;
.source "ChunkedNioStream.java"

# interfaces
.implements Lorg/jboss/netty/handler/stream/ChunkedInput;


# instance fields
.field private final byteBuffer:Ljava/nio/ByteBuffer;

.field private final chunkSize:I

.field private final in:Ljava/nio/channels/ReadableByteChannel;

.field private offset:J


# direct methods
.method public constructor <init>(Ljava/nio/channels/ReadableByteChannel;)V
    .registers 3
    .param p1, "in"    # Ljava/nio/channels/ReadableByteChannel;

    .line 46
    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/stream/ChunkedNioStream;-><init>(Ljava/nio/channels/ReadableByteChannel;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/ReadableByteChannel;I)V
    .registers 6
    .param p1, "in"    # Ljava/nio/channels/ReadableByteChannel;
    .param p2, "chunkSize"    # I

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    if-eqz p1, :cond_32

    .line 59
    if-lez p2, :cond_16

    .line 63
    iput-object p1, p0, Lorg/jboss/netty/handler/stream/ChunkedNioStream;->in:Ljava/nio/channels/ReadableByteChannel;

    .line 64
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/jboss/netty/handler/stream/ChunkedNioStream;->offset:J

    .line 65
    iput p2, p0, Lorg/jboss/netty/handler/stream/ChunkedNioStream;->chunkSize:I

    .line 66
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/stream/ChunkedNioStream;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 67
    return-void

    .line 60
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chunkSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " (expected: a positive integer)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_32
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "in"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lorg/jboss/netty/handler/stream/ChunkedNioStream;->in:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/ReadableByteChannel;->close()V

    .line 100
    return-void
.end method

.method public getTransferredBytes()J
    .registers 3

    .line 73
    iget-wide v0, p0, Lorg/jboss/netty/handler/stream/ChunkedNioStream;->offset:J

    return-wide v0
.end method

.method public hasNextChunk()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lorg/jboss/netty/handler/stream/ChunkedNioStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_a

    .line 79
    return v1

    .line 81
    :cond_a
    iget-object v0, p0, Lorg/jboss/netty/handler/stream/ChunkedNioStream;->in:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/ReadableByteChannel;->isOpen()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_25

    .line 83
    iget-object v0, p0, Lorg/jboss/netty/handler/stream/ChunkedNioStream;->in:Ljava/nio/channels/ReadableByteChannel;

    iget-object v3, p0, Lorg/jboss/netty/handler/stream/ChunkedNioStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {v0, v3}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 84
    .local v0, "b":I
    if-gez v0, :cond_1e

    .line 85
    return v2

    .line 87
    :cond_1e
    iget-wide v2, p0, Lorg/jboss/netty/handler/stream/ChunkedNioStream;->offset:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/jboss/netty/handler/stream/ChunkedNioStream;->offset:J

    .line 88
    return v1

    .line 91
    .end local v0    # "b":I
    :cond_25
    return v2
.end method

.method public isEndOfInput()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 95
    invoke-virtual {p0}, Lorg/jboss/netty/handler/stream/ChunkedNioStream;->hasNextChunk()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public nextChunk()Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 103
    invoke-virtual {p0}, Lorg/jboss/netty/handler/stream/ChunkedNioStream;->hasNextChunk()Z

    move-result v0

    if-nez v0, :cond_8

    .line 104
    const/4 v0, 0x0

    return-object v0

    .line 107
    :cond_8
    iget-object v0, p0, Lorg/jboss/netty/handler/stream/ChunkedNioStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 109
    .local v0, "readBytes":I
    :goto_e
    iget-object v1, p0, Lorg/jboss/netty/handler/stream/ChunkedNioStream;->in:Ljava/nio/channels/ReadableByteChannel;

    iget-object v2, p0, Lorg/jboss/netty/handler/stream/ChunkedNioStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {v1, v2}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 110
    .local v1, "localReadBytes":I
    if-gez v1, :cond_19

    .line 111
    goto :goto_25

    .line 113
    :cond_19
    add-int/2addr v0, v1

    .line 114
    iget-wide v2, p0, Lorg/jboss/netty/handler/stream/ChunkedNioStream;->offset:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/jboss/netty/handler/stream/ChunkedNioStream;->offset:J

    .line 116
    iget v2, p0, Lorg/jboss/netty/handler/stream/ChunkedNioStream;->chunkSize:I

    if-ne v0, v2, :cond_36

    .line 117
    nop

    .line 120
    .end local v1    # "localReadBytes":I
    :goto_25
    iget-object v1, p0, Lorg/jboss/netty/handler/stream/ChunkedNioStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 122
    iget-object v1, p0, Lorg/jboss/netty/handler/stream/ChunkedNioStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v1}, Lorg/jboss/netty/buffer/ChannelBuffers;->copiedBuffer(Ljava/nio/ByteBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    .line 123
    .local v1, "buffer":Lorg/jboss/netty/buffer/ChannelBuffer;
    iget-object v2, p0, Lorg/jboss/netty/handler/stream/ChunkedNioStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 124
    return-object v1

    .line 119
    .end local v1    # "buffer":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_36
    goto :goto_e
.end method
