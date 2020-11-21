.class Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$GatheringSendBuffer;
.super Ljava/lang/Object;
.source "SocketSendBufferPool.java"

# interfaces
.implements Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GatheringSendBuffer"
.end annotation


# instance fields
.field private final buffers:[Ljava/nio/ByteBuffer;

.field private final last:I

.field final synthetic this$0:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;

.field private final total:I

.field private written:J


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;[Ljava/nio/ByteBuffer;)V
    .registers 8
    .param p2, "buffers"    # [Ljava/nio/ByteBuffer;

    .line 267
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$GatheringSendBuffer;->this$0:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    iput-object p2, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$GatheringSendBuffer;->buffers:[Ljava/nio/ByteBuffer;

    .line 269
    array-length p1, p2

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$GatheringSendBuffer;->last:I

    .line 270
    const/4 p1, 0x0

    .line 271
    .local p1, "total":I
    move-object v0, p2

    .local v0, "arr$":[Ljava/nio/ByteBuffer;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_10
    if-ge v2, v1, :cond_1c

    aget-object v3, v0, v2

    .line 272
    .local v3, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    add-int/2addr p1, v4

    .line 271
    .end local v3    # "buf":Ljava/nio/ByteBuffer;
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 274
    .end local v0    # "arr$":[Ljava/nio/ByteBuffer;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_1c
    iput p1, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$GatheringSendBuffer;->total:I

    .line 275
    return-void
.end method


# virtual methods
.method public finished()Z
    .registers 3

    .line 278
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$GatheringSendBuffer;->buffers:[Ljava/nio/ByteBuffer;

    iget v1, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$GatheringSendBuffer;->last:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public release()V
    .registers 1

    .line 330
    return-void
.end method

.method public totalBytes()J
    .registers 3

    .line 286
    iget v0, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$GatheringSendBuffer;->total:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public transferTo(Ljava/nio/channels/DatagramChannel;Ljava/net/SocketAddress;)J
    .registers 9
    .param p1, "ch"    # Ljava/nio/channels/DatagramChannel;
    .param p2, "raddr"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 312
    const/4 v0, 0x0

    .line 313
    .local v0, "send":I
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$GatheringSendBuffer;->buffers:[Ljava/nio/ByteBuffer;

    .local v1, "arr$":[Ljava/nio/ByteBuffer;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_5
    if-ge v3, v2, :cond_1a

    aget-object v4, v1, v3

    .line 314
    .local v4, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_17

    .line 315
    invoke-virtual {p1, v4, p2}, Ljava/nio/channels/DatagramChannel;->send(Ljava/nio/ByteBuffer;Ljava/net/SocketAddress;)I

    move-result v5

    .line 316
    .local v5, "w":I
    if-nez v5, :cond_16

    .line 317
    goto :goto_1a

    .line 319
    :cond_16
    add-int/2addr v0, v5

    .line 313
    .end local v4    # "buf":Ljava/nio/ByteBuffer;
    .end local v5    # "w":I
    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 323
    .end local v1    # "arr$":[Ljava/nio/ByteBuffer;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_1a
    :goto_1a
    iget-wide v1, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$GatheringSendBuffer;->written:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$GatheringSendBuffer;->written:J

    .line 325
    int-to-long v1, v0

    return-wide v1
.end method

.method public transferTo(Ljava/nio/channels/WritableByteChannel;)J
    .registers 8
    .param p1, "ch"    # Ljava/nio/channels/WritableByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 290
    instance-of v0, p1, Ljava/nio/channels/GatheringByteChannel;

    if-eqz v0, :cond_13

    .line 291
    move-object v0, p1

    check-cast v0, Ljava/nio/channels/GatheringByteChannel;

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$GatheringSendBuffer;->buffers:[Ljava/nio/ByteBuffer;

    invoke-interface {v0, v1}, Ljava/nio/channels/GatheringByteChannel;->write([Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    .line 292
    .local v0, "w":J
    iget-wide v2, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$GatheringSendBuffer;->written:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$GatheringSendBuffer;->written:J

    .line 293
    return-wide v0

    .line 295
    .end local v0    # "w":J
    :cond_13
    const/4 v0, 0x0

    .line 296
    .local v0, "send":I
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$GatheringSendBuffer;->buffers:[Ljava/nio/ByteBuffer;

    .local v1, "arr$":[Ljava/nio/ByteBuffer;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_18
    if-ge v3, v2, :cond_2d

    aget-object v4, v1, v3

    .line 297
    .local v4, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 298
    invoke-interface {p1, v4}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v5

    .line 299
    .local v5, "w":I
    if-nez v5, :cond_29

    .line 300
    goto :goto_2d

    .line 302
    :cond_29
    add-int/2addr v0, v5

    .line 296
    .end local v4    # "buf":Ljava/nio/ByteBuffer;
    .end local v5    # "w":I
    :cond_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 306
    .end local v1    # "arr$":[Ljava/nio/ByteBuffer;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_2d
    :goto_2d
    iget-wide v1, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$GatheringSendBuffer;->written:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$GatheringSendBuffer;->written:J

    .line 307
    int-to-long v1, v0

    return-wide v1
.end method

.method public writtenBytes()J
    .registers 3

    .line 282
    iget-wide v0, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$GatheringSendBuffer;->written:J

    return-wide v0
.end method
