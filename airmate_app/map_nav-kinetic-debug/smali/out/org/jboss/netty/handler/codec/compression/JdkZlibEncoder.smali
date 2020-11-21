.class public Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;
.super Lorg/jboss/netty/handler/codec/oneone/OneToOneEncoder;
.source "JdkZlibEncoder.java"

# interfaces
.implements Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;


# static fields
.field private static final gzipHeader:[B


# instance fields
.field private final crc:Ljava/util/zip/CRC32;

.field private volatile ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

.field private final deflater:Ljava/util/zip/Deflater;

.field private final finished:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final gzip:Z

.field private final out:[B

.field private writeHeader:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 52
    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;->gzipHeader:[B

    return-void

    :array_a
    .array-data 1
        0x1ft
        -0x75t
        0x8t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .line 62
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;-><init>(I)V

    .line 63
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "compressionLevel"    # I

    .line 77
    sget-object v0, Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;->ZLIB:Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;

    invoke-direct {p0, v0, p1}, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;-><init>(Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;I)V

    .line 78
    return-void
.end method

.method public constructor <init>(I[B)V
    .registers 6
    .param p1, "compressionLevel"    # I
    .param p2, "dictionary"    # [B

    .line 147
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/oneone/OneToOneEncoder;-><init>()V

    .line 42
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;->out:[B

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;->finished:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 51
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;->crc:Ljava/util/zip/CRC32;

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;->writeHeader:Z

    .line 148
    if-ltz p1, :cond_3a

    const/16 v0, 0x9

    if-gt p1, v0, :cond_3a

    .line 152
    if-eqz p2, :cond_32

    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;->gzip:Z

    .line 157
    new-instance v0, Ljava/util/zip/Deflater;

    invoke-direct {v0, p1}, Ljava/util/zip/Deflater;-><init>(I)V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;->deflater:Ljava/util/zip/Deflater;

    .line 158
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0, p2}, Ljava/util/zip/Deflater;->setDictionary([B)V

    .line 159
    return-void

    .line 153
    :cond_32
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dictionary"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_3a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "compressionLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " (expected: 0-9)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;)V
    .registers 3
    .param p1, "wrapper"    # Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;

    .line 87
    const/4 v0, 0x6

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;-><init>(Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;I)V

    .line 88
    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;I)V
    .registers 7
    .param p1, "wrapper"    # Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;
    .param p2, "compressionLevel"    # I

    .line 101
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/oneone/OneToOneEncoder;-><init>()V

    .line 42
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;->out:[B

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;->finished:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 51
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;->crc:Ljava/util/zip/CRC32;

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;->writeHeader:Z

    .line 102
    if-ltz p2, :cond_69

    const/16 v1, 0x9

    if-gt p2, v1, :cond_69

    .line 106
    if-eqz p1, :cond_61

    .line 109
    sget-object v1, Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;->ZLIB_OR_NONE:Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;

    if-eq p1, v1, :cond_3e

    .line 115
    sget-object v1, Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;->GZIP:Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;

    const/4 v2, 0x0

    if-ne p1, v1, :cond_2d

    const/4 v1, 0x1

    goto :goto_2e

    :cond_2d
    const/4 v1, 0x0

    :goto_2e
    iput-boolean v1, p0, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;->gzip:Z

    .line 116
    new-instance v1, Ljava/util/zip/Deflater;

    sget-object v3, Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;->ZLIB:Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;

    if-eq p1, v3, :cond_37

    goto :goto_38

    :cond_37
    const/4 v0, 0x0

    :goto_38
    invoke-direct {v1, p2, v0}, Ljava/util/zip/Deflater;-><init>(IZ)V

    iput-object v1, p0, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;->deflater:Ljava/util/zip/Deflater;

    .line 117
    return-void

    .line 110
    :cond_3e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wrapper \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;->ZLIB_OR_NONE:Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\' is not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "allowed for compression."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_61
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "wrapper"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "compressionLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " (expected: 0-9)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([B)V
    .registers 3
    .param p1, "dictionary"    # [B

    .line 130
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;-><init>(I[B)V

    .line 131
    return-void
.end method

.method private finishEncode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)Lorg/jboss/netty/channel/ChannelFuture;
    .registers 10
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "evt"    # Lorg/jboss/netty/channel/ChannelEvent;

    .line 225
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;->finished:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_18

    .line 226
    if-eqz p2, :cond_f

    .line 227
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 229
    :cond_f
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    invoke-static {v0}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0

    .line 232
    :cond_18
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 233
    .local v0, "footer":Lorg/jboss/netty/buffer/ChannelBuffer;
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;->deflater:Ljava/util/zip/Deflater;

    monitor-enter v2

    .line 234
    const/4 v3, 0x0

    .line 235
    .local v3, "numBytes":I
    :try_start_1e
    iget-object v4, p0, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v4}, Ljava/util/zip/Deflater;->finish()V

    .line 236
    iget-object v4, p0, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v4}, Ljava/util/zip/Deflater;->finished()Z

    move-result v4

    if-nez v4, :cond_37

    .line 237
    iget-object v4, p0, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;->deflater:Ljava/util/zip/Deflater;

    iget-object v5, p0, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;->out:[B

    iget-object v6, p0, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;->out:[B

    array-length v6, v6

    invoke-virtual {v4, v5, v1, v6}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v4

    move v3, v4

    .line 239
    :cond_37
    iget-boolean v4, p0, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;->gzip:Z

    if-eqz v4, :cond_3e

    add-int/lit8 v4, v3, 0x8

    goto :goto_3f

    :cond_3e
    move v4, v3

    .line 240
    .local v4, "footerSize":I
    :goto_3f
    if-lez v4, :cond_8c

    .line 241
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v5

    invoke-interface {v5}, Lorg/jboss/netty/channel/Channel;->getConfig()Lorg/jboss/netty/channel/ChannelConfig;

    move-result-object v5

    invoke-interface {v5}, Lorg/jboss/netty/channel/ChannelConfig;->getBufferFactory()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v5

    invoke-interface {v5, v4}, Lorg/jboss/netty/buffer/ChannelBufferFactory;->getBuffer(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v5

    move-object v0, v5

    .line 242
    iget-object v5, p0, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;->out:[B

    invoke-interface {v0, v5, v1, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes([BII)V

    .line 243
    iget-boolean v1, p0, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;->gzip:Z

    if-eqz v1, :cond_8c

    .line 244
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v5

    long-to-int v1, v5

    .line 245
    .local v1, "crcValue":I
    iget-object v5, p0, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v5}, Ljava/util/zip/Deflater;->getTotalIn()I

    move-result v5

    .line 246
    .local v5, "uncBytes":I
    invoke-interface {v0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    .line 247
    ushr-int/lit8 v6, v1, 0x8

    invoke-interface {v0, v6}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    .line 248
    ushr-int/lit8 v6, v1, 0x10

    invoke-interface {v0, v6}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    .line 249
    ushr-int/lit8 v6, v1, 0x18

    invoke-interface {v0, v6}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    .line 250
    invoke-interface {v0, v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    .line 251
    ushr-int/lit8 v6, v5, 0x8

    invoke-interface {v0, v6}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    .line 252
    ushr-int/lit8 v6, v5, 0x10

    invoke-interface {v0, v6}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    .line 253
    ushr-int/lit8 v6, v5, 0x18

    invoke-interface {v0, v6}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    .line 256
    .end local v1    # "crcValue":I
    .end local v5    # "uncBytes":I
    :cond_8c
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->end()V

    .line 257
    .end local v3    # "numBytes":I
    .end local v4    # "footerSize":I
    monitor-exit v2
    :try_end_92
    .catchall {:try_start_1e .. :try_end_92} :catchall_a8

    .line 259
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    invoke-static {v1}, Lorg/jboss/netty/channel/Channels;->future(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    .line 260
    .local v1, "future":Lorg/jboss/netty/channel/ChannelFuture;
    invoke-static {p1, v1, v0}, Lorg/jboss/netty/channel/Channels;->write(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;)V

    .line 262
    if-eqz p2, :cond_a7

    .line 263
    new-instance v2, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder$1;

    invoke-direct {v2, p0, p1, p2}, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder$1;-><init>(Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V

    invoke-interface {v1, v2}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    .line 270
    :cond_a7
    return-object v1

    .line 257
    .end local v1    # "future":Lorg/jboss/netty/channel/ChannelFuture;
    :catchall_a8
    move-exception v1

    :try_start_a9
    monitor-exit v2
    :try_end_aa
    .catchall {:try_start_a9 .. :try_end_aa} :catchall_a8

    throw v1
.end method


# virtual methods
.method public afterAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .registers 2
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 279
    return-void
.end method

.method public afterRemove(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .registers 2
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 287
    return-void
.end method

.method public beforeAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .registers 2
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 274
    iput-object p1, p0, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    .line 275
    return-void
.end method

.method public beforeRemove(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .registers 2
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 283
    return-void
.end method

.method public close()Lorg/jboss/netty/channel/ChannelFuture;
    .registers 4

    .line 162
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    .line 163
    .local v0, "ctx":Lorg/jboss/netty/channel/ChannelHandlerContext;
    if-eqz v0, :cond_a

    .line 166
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;->finishEncode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    return-object v1

    .line 164
    :cond_a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "not added to a pipeline"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected encode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 14
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p3, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 175
    instance-of v0, p3, Lorg/jboss/netty/buffer/ChannelBuffer;

    if-eqz v0, :cond_74

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;->finished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_74

    .line 179
    :cond_d
    move-object v0, p3

    check-cast v0, Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 180
    .local v0, "uncompressed":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v1

    new-array v1, v1, [B

    .line 181
    .local v1, "in":[B
    invoke-interface {v0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes([B)V

    .line 183
    array-length v2, v1

    int-to-double v2, v2

    const-wide v4, 0x3ff004189374bc6aL    # 1.001

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    add-int/lit8 v2, v2, 0xc

    .line 184
    .local v2, "sizeEstimate":I
    invoke-interface {p2}, Lorg/jboss/netty/channel/Channel;->getConfig()Lorg/jboss/netty/channel/ChannelConfig;

    move-result-object v3

    invoke-interface {v3}, Lorg/jboss/netty/channel/ChannelConfig;->getBufferFactory()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/jboss/netty/buffer/ChannelBuffers;->dynamicBuffer(ILorg/jboss/netty/buffer/ChannelBufferFactory;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v3

    .line 186
    .local v3, "compressed":Lorg/jboss/netty/buffer/ChannelBuffer;
    iget-object v4, p0, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;->deflater:Ljava/util/zip/Deflater;

    monitor-enter v4

    .line 187
    :try_start_3b
    iget-boolean v5, p0, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;->gzip:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_50

    .line 188
    iget-object v5, p0, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v5, v1}, Ljava/util/zip/CRC32;->update([B)V

    .line 189
    iget-boolean v5, p0, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;->writeHeader:Z

    if-eqz v5, :cond_50

    .line 190
    sget-object v5, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;->gzipHeader:[B

    invoke-interface {v3, v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes([B)V

    .line 191
    iput-boolean v6, p0, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;->writeHeader:Z

    .line 195
    :cond_50
    iget-object v5, p0, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v5, v1}, Ljava/util/zip/Deflater;->setInput([B)V

    .line 196
    :goto_55
    iget-object v5, p0, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v5}, Ljava/util/zip/Deflater;->needsInput()Z

    move-result v5

    if-nez v5, :cond_6f

    .line 197
    iget-object v5, p0, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;->deflater:Ljava/util/zip/Deflater;

    iget-object v7, p0, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;->out:[B

    iget-object v8, p0, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;->out:[B

    array-length v8, v8

    const/4 v9, 0x2

    invoke-virtual {v5, v7, v6, v8, v9}, Ljava/util/zip/Deflater;->deflate([BIII)I

    move-result v5

    .line 198
    .local v5, "numBytes":I
    iget-object v7, p0, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;->out:[B

    invoke-interface {v3, v7, v6, v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes([BII)V

    .line 199
    .end local v5    # "numBytes":I
    goto :goto_55

    .line 200
    :cond_6f
    monitor-exit v4

    .line 202
    return-object v3

    .line 200
    :catchall_71
    move-exception v5

    monitor-exit v4
    :try_end_73
    .catchall {:try_start_3b .. :try_end_73} :catchall_71

    throw v5

    .line 176
    .end local v0    # "uncompressed":Lorg/jboss/netty/buffer/ChannelBuffer;
    .end local v1    # "in":[B
    .end local v2    # "sizeEstimate":I
    .end local v3    # "compressed":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_74
    :goto_74
    return-object p3
.end method

.method public handleDownstream(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V
    .registers 6
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "evt"    # Lorg/jboss/netty/channel/ChannelEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 208
    instance-of v0, p2, Lorg/jboss/netty/channel/ChannelStateEvent;

    if-eqz v0, :cond_2d

    .line 209
    move-object v0, p2

    check-cast v0, Lorg/jboss/netty/channel/ChannelStateEvent;

    .line 210
    .local v0, "e":Lorg/jboss/netty/channel/ChannelStateEvent;
    sget-object v1, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder$2;->$SwitchMap$org$jboss$netty$channel$ChannelState:[I

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getState()Lorg/jboss/netty/channel/ChannelState;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jboss/netty/channel/ChannelState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_32

    .end local v0    # "e":Lorg/jboss/netty/channel/ChannelStateEvent;
    goto :goto_2d

    .line 214
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

    .line 215
    :cond_29
    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;->finishEncode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)Lorg/jboss/netty/channel/ChannelFuture;

    .line 216
    return-void

    .line 221
    .end local v0    # "e":Lorg/jboss/netty/channel/ChannelStateEvent;
    :cond_2d
    :goto_2d
    invoke-super {p0, p1, p2}, Lorg/jboss/netty/handler/codec/oneone/OneToOneEncoder;->handleDownstream(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 222
    return-void

    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_17
        :pswitch_17
        :pswitch_17
    .end packed-switch
.end method

.method public isClosed()Z
    .registers 2

    .line 170
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;->finished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method
