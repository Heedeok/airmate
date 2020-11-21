.class public Lorg/jboss/netty/handler/stream/ChunkedFile;
.super Ljava/lang/Object;
.source "ChunkedFile.java"

# interfaces
.implements Lorg/jboss/netty/handler/stream/ChunkedInput;


# instance fields
.field private final chunkSize:I

.field private final endOffset:J

.field private final file:Ljava/io/RandomAccessFile;

.field private offset:J

.field private final startOffset:J


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 3
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/stream/ChunkedFile;-><init>(Ljava/io/File;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .registers 5
    .param p1, "file"    # Ljava/io/File;
    .param p2, "chunkSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lorg/jboss/netty/handler/stream/ChunkedFile;-><init>(Ljava/io/RandomAccessFile;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/io/RandomAccessFile;)V
    .registers 3
    .param p1, "file"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/stream/ChunkedFile;-><init>(Ljava/io/RandomAccessFile;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/io/RandomAccessFile;I)V
    .registers 10
    .param p1, "file"    # Ljava/io/RandomAccessFile;
    .param p2, "chunkSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lorg/jboss/netty/handler/stream/ChunkedFile;-><init>(Ljava/io/RandomAccessFile;JJI)V

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/io/RandomAccessFile;JJI)V
    .registers 10
    .param p1, "file"    # Ljava/io/RandomAccessFile;
    .param p2, "offset"    # J
    .param p4, "length"    # J
    .param p6, "chunkSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    if-eqz p1, :cond_75

    .line 87
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_59

    .line 91
    cmp-long v2, p4, v0

    if-ltz v2, :cond_3d

    .line 95
    if-lez p6, :cond_21

    .line 101
    iput-object p1, p0, Lorg/jboss/netty/handler/stream/ChunkedFile;->file:Ljava/io/RandomAccessFile;

    .line 102
    iput-wide p2, p0, Lorg/jboss/netty/handler/stream/ChunkedFile;->startOffset:J

    iput-wide p2, p0, Lorg/jboss/netty/handler/stream/ChunkedFile;->offset:J

    .line 103
    add-long v0, p2, p4

    iput-wide v0, p0, Lorg/jboss/netty/handler/stream/ChunkedFile;->endOffset:J

    .line 104
    iput p6, p0, Lorg/jboss/netty/handler/stream/ChunkedFile;->chunkSize:I

    .line 106
    invoke-virtual {p1, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 107
    return-void

    .line 96
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chunkSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " (expected: a positive integer)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " (expected: 0 or greater)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "offset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " (expected: 0 or greater)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_75
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "file"

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

    .line 139
    iget-object v0, p0, Lorg/jboss/netty/handler/stream/ChunkedFile;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 140
    return-void
.end method

.method public getCurrentOffset()J
    .registers 3

    .line 127
    iget-wide v0, p0, Lorg/jboss/netty/handler/stream/ChunkedFile;->offset:J

    return-wide v0
.end method

.method public getEndOffset()J
    .registers 3

    .line 120
    iget-wide v0, p0, Lorg/jboss/netty/handler/stream/ChunkedFile;->endOffset:J

    return-wide v0
.end method

.method public getStartOffset()J
    .registers 3

    .line 113
    iget-wide v0, p0, Lorg/jboss/netty/handler/stream/ChunkedFile;->startOffset:J

    return-wide v0
.end method

.method public hasNextChunk()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 131
    iget-wide v0, p0, Lorg/jboss/netty/handler/stream/ChunkedFile;->offset:J

    iget-wide v2, p0, Lorg/jboss/netty/handler/stream/ChunkedFile;->endOffset:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_16

    iget-object v0, p0, Lorg/jboss/netty/handler/stream/ChunkedFile;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method public isEndOfInput()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 135
    invoke-virtual {p0}, Lorg/jboss/netty/handler/stream/ChunkedFile;->hasNextChunk()Z

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

    .line 143
    iget-wide v0, p0, Lorg/jboss/netty/handler/stream/ChunkedFile;->offset:J

    .line 144
    .local v0, "offset":J
    iget-wide v2, p0, Lorg/jboss/netty/handler/stream/ChunkedFile;->endOffset:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_a

    .line 145
    const/4 v2, 0x0

    return-object v2

    .line 148
    :cond_a
    iget v2, p0, Lorg/jboss/netty/handler/stream/ChunkedFile;->chunkSize:I

    int-to-long v2, v2

    iget-wide v4, p0, Lorg/jboss/netty/handler/stream/ChunkedFile;->endOffset:J

    sub-long/2addr v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    .line 149
    .local v2, "chunkSize":I
    new-array v3, v2, [B

    .line 150
    .local v3, "chunk":[B
    iget-object v4, p0, Lorg/jboss/netty/handler/stream/ChunkedFile;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v4, v3}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 151
    int-to-long v4, v2

    add-long/2addr v4, v0

    iput-wide v4, p0, Lorg/jboss/netty/handler/stream/ChunkedFile;->offset:J

    .line 152
    invoke-static {v3}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([B)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v4

    return-object v4
.end method
