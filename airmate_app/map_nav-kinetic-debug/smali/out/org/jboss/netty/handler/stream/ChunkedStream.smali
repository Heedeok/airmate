.class public Lorg/jboss/netty/handler/stream/ChunkedStream;
.super Ljava/lang/Object;
.source "ChunkedStream.java"

# interfaces
.implements Lorg/jboss/netty/handler/stream/ChunkedInput;


# static fields
.field static final DEFAULT_CHUNK_SIZE:I = 0x2000


# instance fields
.field private final chunkSize:I

.field private final in:Ljava/io/PushbackInputStream;

.field private offset:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "in"    # Ljava/io/InputStream;

    .line 45
    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/stream/ChunkedStream;-><init>(Ljava/io/InputStream;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 6
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "chunkSize"    # I

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    if-eqz p1, :cond_37

    .line 58
    if-lez p2, :cond_1b

    .line 64
    instance-of v0, p1, Ljava/io/PushbackInputStream;

    if-eqz v0, :cond_11

    .line 65
    move-object v0, p1

    check-cast v0, Ljava/io/PushbackInputStream;

    iput-object v0, p0, Lorg/jboss/netty/handler/stream/ChunkedStream;->in:Ljava/io/PushbackInputStream;

    goto :goto_18

    .line 67
    :cond_11
    new-instance v0, Ljava/io/PushbackInputStream;

    invoke-direct {v0, p1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/jboss/netty/handler/stream/ChunkedStream;->in:Ljava/io/PushbackInputStream;

    .line 69
    :goto_18
    iput p2, p0, Lorg/jboss/netty/handler/stream/ChunkedStream;->chunkSize:I

    .line 70
    return-void

    .line 59
    :cond_1b
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

    .line 56
    :cond_37
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

    .line 94
    iget-object v0, p0, Lorg/jboss/netty/handler/stream/ChunkedStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->close()V

    .line 95
    return-void
.end method

.method public getTransferredBytes()J
    .registers 3

    .line 76
    iget-wide v0, p0, Lorg/jboss/netty/handler/stream/ChunkedStream;->offset:J

    return-wide v0
.end method

.method public hasNextChunk()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lorg/jboss/netty/handler/stream/ChunkedStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    .line 81
    .local v0, "b":I
    if-gez v0, :cond_a

    .line 82
    const/4 v1, 0x0

    return v1

    .line 84
    :cond_a
    iget-object v1, p0, Lorg/jboss/netty/handler/stream/ChunkedStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v1, v0}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 85
    const/4 v1, 0x1

    return v1
.end method

.method public isEndOfInput()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 90
    invoke-virtual {p0}, Lorg/jboss/netty/handler/stream/ChunkedStream;->hasNextChunk()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public nextChunk()Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 98
    invoke-virtual {p0}, Lorg/jboss/netty/handler/stream/ChunkedStream;->hasNextChunk()Z

    move-result v0

    if-nez v0, :cond_8

    .line 99
    const/4 v0, 0x0

    return-object v0

    .line 102
    :cond_8
    iget-object v0, p0, Lorg/jboss/netty/handler/stream/ChunkedStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->available()I

    move-result v0

    .line 104
    .local v0, "availableBytes":I
    if-gtz v0, :cond_13

    .line 105
    iget v1, p0, Lorg/jboss/netty/handler/stream/ChunkedStream;->chunkSize:I

    goto :goto_1f

    .line 107
    :cond_13
    iget v1, p0, Lorg/jboss/netty/handler/stream/ChunkedStream;->chunkSize:I

    iget-object v2, p0, Lorg/jboss/netty/handler/stream/ChunkedStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v2}, Ljava/io/PushbackInputStream;->available()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 109
    .local v1, "chunkSize":I
    :goto_1f
    new-array v2, v1, [B

    .line 110
    .local v2, "chunk":[B
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 112
    .local v4, "readBytes":I
    :goto_23
    iget-object v5, p0, Lorg/jboss/netty/handler/stream/ChunkedStream;->in:Ljava/io/PushbackInputStream;

    sub-int v6, v1, v4

    invoke-virtual {v5, v2, v4, v6}, Ljava/io/PushbackInputStream;->read([BII)I

    move-result v5

    .line 113
    .local v5, "localReadBytes":I
    if-gez v5, :cond_2e

    .line 114
    goto :goto_38

    .line 116
    :cond_2e
    add-int/2addr v4, v5

    .line 117
    iget-wide v6, p0, Lorg/jboss/netty/handler/stream/ChunkedStream;->offset:J

    int-to-long v8, v5

    add-long/2addr v6, v8

    iput-wide v6, p0, Lorg/jboss/netty/handler/stream/ChunkedStream;->offset:J

    .line 119
    if-ne v4, v1, :cond_3d

    .line 120
    nop

    .line 124
    .end local v5    # "localReadBytes":I
    :goto_38
    invoke-static {v2, v3, v4}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([BII)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v3

    return-object v3

    .line 122
    :cond_3d
    goto :goto_23
.end method
