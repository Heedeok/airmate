.class public Lorg/jboss/netty/handler/stream/ChunkedNioFile;
.super Ljava/lang/Object;
.source "ChunkedNioFile.java"

# interfaces
.implements Lorg/jboss/netty/handler/stream/ChunkedInput;


# instance fields
.field private final chunkSize:I

.field private final endOffset:J

.field private final in:Ljava/nio/channels/FileChannel;

.field private offset:J

.field private startOffset:J


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 3
    .param p1, "in"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/stream/ChunkedNioFile;-><init>(Ljava/nio/channels/FileChannel;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .registers 4
    .param p1, "in"    # Ljava/io/File;
    .param p2, "chunkSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/jboss/netty/handler/stream/ChunkedNioFile;-><init>(Ljava/nio/channels/FileChannel;I)V

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/FileChannel;)V
    .registers 3
    .param p1, "in"    # Ljava/nio/channels/FileChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/stream/ChunkedNioFile;-><init>(Ljava/nio/channels/FileChannel;I)V

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/FileChannel;I)V
    .registers 10
    .param p1, "in"    # Ljava/nio/channels/FileChannel;
    .param p2, "chunkSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lorg/jboss/netty/handler/stream/ChunkedNioFile;-><init>(Ljava/nio/channels/FileChannel;JJI)V

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/FileChannel;JJI)V
    .registers 10
    .param p1, "in"    # Ljava/nio/channels/FileChannel;
    .param p2, "offset"    # J
    .param p4, "length"    # J
    .param p6, "chunkSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    if-eqz p1, :cond_79

    .line 91
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_5d

    .line 95
    cmp-long v2, p4, v0

    if-ltz v2, :cond_41

    .line 99
    if-lez p6, :cond_25

    .line 105
    cmp-long v2, p2, v0

    if-eqz v2, :cond_18

    .line 106
    invoke-virtual {p1, p2, p3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 108
    :cond_18
    iput-object p1, p0, Lorg/jboss/netty/handler/stream/ChunkedNioFile;->in:Ljava/nio/channels/FileChannel;

    .line 109
    iput p6, p0, Lorg/jboss/netty/handler/stream/ChunkedNioFile;->chunkSize:I

    .line 110
    iput-wide p2, p0, Lorg/jboss/netty/handler/stream/ChunkedNioFile;->startOffset:J

    iput-wide p2, p0, Lorg/jboss/netty/handler/stream/ChunkedNioFile;->offset:J

    .line 111
    add-long v0, p2, p4

    iput-wide v0, p0, Lorg/jboss/netty/handler/stream/ChunkedNioFile;->endOffset:J

    .line 112
    return-void

    .line 100
    :cond_25
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

    .line 96
    :cond_41
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

    .line 92
    :cond_5d
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

    .line 89
    :cond_79
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

    .line 144
    iget-object v0, p0, Lorg/jboss/netty/handler/stream/ChunkedNioFile;->in:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 145
    return-void
.end method

.method public getCurrentOffset()J
    .registers 3

    .line 132
    iget-wide v0, p0, Lorg/jboss/netty/handler/stream/ChunkedNioFile;->offset:J

    return-wide v0
.end method

.method public getEndOffset()J
    .registers 3

    .line 125
    iget-wide v0, p0, Lorg/jboss/netty/handler/stream/ChunkedNioFile;->endOffset:J

    return-wide v0
.end method

.method public getStartOffset()J
    .registers 3

    .line 118
    iget-wide v0, p0, Lorg/jboss/netty/handler/stream/ChunkedNioFile;->startOffset:J

    return-wide v0
.end method

.method public hasNextChunk()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 136
    iget-wide v0, p0, Lorg/jboss/netty/handler/stream/ChunkedNioFile;->offset:J

    iget-wide v2, p0, Lorg/jboss/netty/handler/stream/ChunkedNioFile;->endOffset:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_12

    iget-object v0, p0, Lorg/jboss/netty/handler/stream/ChunkedNioFile;->in:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public isEndOfInput()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 140
    invoke-virtual {p0}, Lorg/jboss/netty/handler/stream/ChunkedNioFile;->hasNextChunk()Z

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

    .line 148
    iget-wide v0, p0, Lorg/jboss/netty/handler/stream/ChunkedNioFile;->offset:J

    .line 149
    .local v0, "offset":J
    iget-wide v2, p0, Lorg/jboss/netty/handler/stream/ChunkedNioFile;->endOffset:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_a

    .line 150
    const/4 v2, 0x0

    return-object v2

    .line 153
    :cond_a
    iget v2, p0, Lorg/jboss/netty/handler/stream/ChunkedNioFile;->chunkSize:I

    int-to-long v2, v2

    iget-wide v4, p0, Lorg/jboss/netty/handler/stream/ChunkedNioFile;->endOffset:J

    sub-long/2addr v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    .line 154
    .local v2, "chunkSize":I
    new-array v3, v2, [B

    .line 155
    .local v3, "chunkArray":[B
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 156
    .local v4, "chunk":Ljava/nio/ByteBuffer;
    const/4 v5, 0x0

    .line 158
    .local v5, "readBytes":I
    :goto_1c
    iget-object v6, p0, Lorg/jboss/netty/handler/stream/ChunkedNioFile;->in:Ljava/nio/channels/FileChannel;

    invoke-virtual {v6, v4}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v6

    .line 159
    .local v6, "localReadBytes":I
    if-gez v6, :cond_25

    .line 160
    goto :goto_29

    .line 162
    :cond_25
    add-int/2addr v5, v6

    .line 163
    if-ne v5, v2, :cond_34

    .line 164
    nop

    .line 168
    .end local v6    # "localReadBytes":I
    :goto_29
    iget-wide v6, p0, Lorg/jboss/netty/handler/stream/ChunkedNioFile;->offset:J

    int-to-long v8, v5

    add-long/2addr v6, v8

    iput-wide v6, p0, Lorg/jboss/netty/handler/stream/ChunkedNioFile;->offset:J

    .line 169
    invoke-static {v3}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([B)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v6

    return-object v6

    .line 166
    :cond_34
    goto :goto_1c
.end method
