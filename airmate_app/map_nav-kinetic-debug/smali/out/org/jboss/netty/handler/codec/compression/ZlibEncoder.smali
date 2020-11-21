.class public Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;
.super Lorg/jboss/netty/handler/codec/oneone/OneToOneEncoder;
.source "ZlibEncoder.java"

# interfaces
.implements Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;


# static fields
.field private static final EMPTY_ARRAY:[B


# instance fields
.field private volatile ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

.field private final finished:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final z:Lorg/jboss/netty/util/internal/jzlib/ZStream;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 42
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->EMPTY_ARRAY:[B

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 56
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;-><init>(I)V

    .line 57
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "compressionLevel"    # I

    .line 72
    sget-object v0, Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;->ZLIB:Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;

    invoke-direct {p0, v0, p1}, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;-><init>(Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;I)V

    .line 73
    return-void
.end method

.method public constructor <init>(III[B)V
    .registers 9
    .param p1, "compressionLevel"    # I
    .param p2, "windowBits"    # I
    .param p3, "memLevel"    # I
    .param p4, "dictionary"    # [B

    .line 214
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/oneone/OneToOneEncoder;-><init>()V

    .line 44
    new-instance v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;

    invoke-direct {v0}, Lorg/jboss/netty/util/internal/jzlib/ZStream;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->finished:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 215
    if-ltz p1, :cond_8f

    const/16 v0, 0x9

    if-gt p1, v0, :cond_8f

    .line 219
    if-lt p2, v0, :cond_73

    const/16 v1, 0xf

    if-gt p2, v1, :cond_73

    .line 223
    const/4 v1, 0x1

    if-lt p3, v1, :cond_57

    if-gt p3, v0, :cond_57

    .line 227
    if-eqz p4, :cond_4f

    .line 231
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    monitor-enter v0

    .line 233
    :try_start_27
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    sget-object v2, Lorg/jboss/netty/util/internal/jzlib/JZlib;->W_ZLIB:Ljava/lang/Enum;

    invoke-virtual {v1, p1, p2, p3, v2}, Lorg/jboss/netty/util/internal/jzlib/ZStream;->deflateInit(IIILjava/lang/Enum;)I

    move-result v1

    .line 235
    .local v1, "resultCode":I
    if-eqz v1, :cond_39

    .line 236
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    const-string v3, "initialization failure"

    invoke-static {v2, v3, v1}, Lorg/jboss/netty/handler/codec/compression/ZlibUtil;->fail(Lorg/jboss/netty/util/internal/jzlib/ZStream;Ljava/lang/String;I)V

    goto :goto_4a

    .line 238
    :cond_39
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    array-length v3, p4

    invoke-virtual {v2, p4, v3}, Lorg/jboss/netty/util/internal/jzlib/ZStream;->deflateSetDictionary([BI)I

    move-result v2

    move v1, v2

    .line 239
    if-eqz v1, :cond_4a

    .line 240
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    const-string v3, "failed to set the dictionary"

    invoke-static {v2, v3, v1}, Lorg/jboss/netty/handler/codec/compression/ZlibUtil;->fail(Lorg/jboss/netty/util/internal/jzlib/ZStream;Ljava/lang/String;I)V

    .line 243
    .end local v1    # "resultCode":I
    :cond_4a
    :goto_4a
    monitor-exit v0

    .line 244
    return-void

    .line 243
    :catchall_4c
    move-exception v1

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_27 .. :try_end_4e} :catchall_4c

    throw v1

    .line 228
    :cond_4f
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dictionary"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "memLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " (expected: 1-9)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "windowBits: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " (expected: 9-15)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_8f
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

.method public constructor <init>(I[B)V
    .registers 5
    .param p1, "compressionLevel"    # I
    .param p2, "dictionary"    # [B

    .line 186
    const/16 v0, 0xf

    const/16 v1, 0x8

    invoke-direct {p0, p1, v0, v1, p2}, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;-><init>(III[B)V

    .line 187
    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;)V
    .registers 3
    .param p1, "wrapper"    # Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;

    .line 83
    const/4 v0, 0x6

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;-><init>(Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;I)V

    .line 84
    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;I)V
    .registers 5
    .param p1, "wrapper"    # Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;
    .param p2, "compressionLevel"    # I

    .line 99
    const/16 v0, 0xf

    const/16 v1, 0x8

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;-><init>(Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;III)V

    .line 100
    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;III)V
    .registers 9
    .param p1, "wrapper"    # Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;
    .param p2, "compressionLevel"    # I
    .param p3, "windowBits"    # I
    .param p4, "memLevel"    # I

    .line 124
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/oneone/OneToOneEncoder;-><init>()V

    .line 44
    new-instance v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;

    invoke-direct {v0}, Lorg/jboss/netty/util/internal/jzlib/ZStream;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->finished:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 125
    if-ltz p2, :cond_a6

    const/16 v0, 0x9

    if-gt p2, v0, :cond_a6

    .line 129
    if-lt p3, v0, :cond_8a

    const/16 v1, 0xf

    if-gt p3, v1, :cond_8a

    .line 133
    const/4 v1, 0x1

    if-lt p4, v1, :cond_6e

    if-gt p4, v0, :cond_6e

    .line 137
    if-eqz p1, :cond_66

    .line 140
    sget-object v0, Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;->ZLIB_OR_NONE:Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;

    if-eq p1, v0, :cond_43

    .line 146
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    monitor-enter v0

    .line 147
    :try_start_2b
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    invoke-static {p1}, Lorg/jboss/netty/handler/codec/compression/ZlibUtil;->convertWrapperType(Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;)Ljava/lang/Enum;

    move-result-object v2

    invoke-virtual {v1, p2, p3, p4, v2}, Lorg/jboss/netty/util/internal/jzlib/ZStream;->deflateInit(IIILjava/lang/Enum;)I

    move-result v1

    .line 149
    .local v1, "resultCode":I
    if-eqz v1, :cond_3e

    .line 150
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    const-string v3, "initialization failure"

    invoke-static {v2, v3, v1}, Lorg/jboss/netty/handler/codec/compression/ZlibUtil;->fail(Lorg/jboss/netty/util/internal/jzlib/ZStream;Ljava/lang/String;I)V

    .line 152
    .end local v1    # "resultCode":I
    :cond_3e
    monitor-exit v0

    .line 153
    return-void

    .line 152
    :catchall_40
    move-exception v1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_2b .. :try_end_42} :catchall_40

    throw v1

    .line 141
    :cond_43
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

    .line 138
    :cond_66
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "wrapper"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_6e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "memLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " (expected: 1-9)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_8a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "windowBits: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " (expected: 9-15)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_a6
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

    .line 167
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;-><init>(I[B)V

    .line 168
    return-void
.end method

.method private finishEncode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)Lorg/jboss/netty/channel/ChannelFuture;
    .registers 12
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "evt"    # Lorg/jboss/netty/channel/ChannelEvent;

    .line 326
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->finished:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_18

    .line 327
    if-eqz p2, :cond_f

    .line 328
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 330
    :cond_f
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    invoke-static {v0}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0

    .line 335
    :cond_18
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    monitor-enter v0

    .line 338
    const/4 v3, 0x0

    :try_start_1c
    iget-object v4, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    sget-object v5, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->EMPTY_ARRAY:[B

    iput-object v5, v4, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    .line 339
    iget-object v4, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iput v2, v4, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 340
    iget-object v4, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iput v2, v4, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 343
    const/16 v4, 0x20

    new-array v4, v4, [B

    .line 344
    .local v4, "out":[B
    iget-object v5, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iput-object v4, v5, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out:[B

    .line 345
    iget-object v5, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iput v2, v5, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out_index:I

    .line 346
    iget-object v5, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    array-length v6, v4

    iput v6, v5, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_out:I

    .line 349
    iget-object v5, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lorg/jboss/netty/util/internal/jzlib/ZStream;->deflate(I)I

    move-result v5

    .line 350
    .local v5, "resultCode":I
    if-eqz v5, :cond_58

    if-eq v5, v1, :cond_58

    .line 351
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    const-string v6, "compression failure"

    invoke-static {v2, v6, v5}, Lorg/jboss/netty/handler/codec/compression/ZlibUtil;->exception(Lorg/jboss/netty/util/internal/jzlib/ZStream;Ljava/lang/String;I)Lorg/jboss/netty/handler/codec/compression/CompressionException;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/jboss/netty/channel/Channels;->failedFuture(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    .line 354
    .local v1, "future":Lorg/jboss/netty/channel/ChannelFuture;
    const/4 v2, 0x0

    goto :goto_8a

    .line 355
    .end local v1    # "future":Lorg/jboss/netty/channel/ChannelFuture;
    :cond_58
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iget v1, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out_index:I

    if-eqz v1, :cond_80

    .line 356
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    invoke-static {v1}, Lorg/jboss/netty/channel/Channels;->future(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1
    :try_end_66
    .catchall {:try_start_1c .. :try_end_66} :catchall_af

    .line 357
    .restart local v1    # "future":Lorg/jboss/netty/channel/ChannelFuture;
    :try_start_66
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v6

    invoke-interface {v6}, Lorg/jboss/netty/channel/Channel;->getConfig()Lorg/jboss/netty/channel/ChannelConfig;

    move-result-object v6

    invoke-interface {v6}, Lorg/jboss/netty/channel/ChannelConfig;->getBufferFactory()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v6

    iget-object v7, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iget v7, v7, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out_index:I

    invoke-interface {v6, v4, v2, v7}, Lorg/jboss/netty/buffer/ChannelBufferFactory;->getBuffer([BII)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2
    :try_end_7a
    .catchall {:try_start_66 .. :try_end_7a} :catchall_7b

    goto :goto_8a

    .line 368
    .end local v4    # "out":[B
    .end local v5    # "resultCode":I
    :catchall_7b
    move-exception v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto :goto_b1

    .line 364
    .end local v1    # "future":Lorg/jboss/netty/channel/ChannelFuture;
    .restart local v4    # "out":[B
    .restart local v5    # "resultCode":I
    :cond_80
    :try_start_80
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    invoke-static {v1}, Lorg/jboss/netty/channel/Channels;->future(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1
    :try_end_88
    .catchall {:try_start_80 .. :try_end_88} :catchall_af

    .line 365
    .restart local v1    # "future":Lorg/jboss/netty/channel/ChannelFuture;
    :try_start_88
    sget-object v2, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;
    :try_end_8a
    .catchall {:try_start_88 .. :try_end_8a} :catchall_7b

    .line 368
    .end local v4    # "out":[B
    .end local v5    # "resultCode":I
    .local v2, "footer":Lorg/jboss/netty/buffer/ChannelBuffer;
    :goto_8a
    :try_start_8a
    iget-object v4, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    invoke-virtual {v4}, Lorg/jboss/netty/util/internal/jzlib/ZStream;->deflateEnd()I

    .line 374
    iget-object v4, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iput-object v3, v4, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    .line 375
    iget-object v4, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iput-object v3, v4, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out:[B

    .line 376
    nop

    .line 377
    monitor-exit v0
    :try_end_99
    .catchall {:try_start_8a .. :try_end_99} :catchall_a9

    .line 379
    if-eqz v2, :cond_9e

    .line 380
    invoke-static {p1, v1, v2}, Lorg/jboss/netty/channel/Channels;->write(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;)V

    .line 383
    :cond_9e
    if-eqz p2, :cond_a8

    .line 384
    new-instance v0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder$1;

    invoke-direct {v0, p0, p1, p2}, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder$1;-><init>(Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V

    invoke-interface {v1, v0}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    .line 391
    :cond_a8
    return-object v1

    .line 377
    :catchall_a9
    move-exception v3

    move-object v8, v2

    move-object v2, v1

    move-object v1, v3

    move-object v3, v8

    goto :goto_c0

    .line 368
    .end local v1    # "future":Lorg/jboss/netty/channel/ChannelFuture;
    .end local v2    # "footer":Lorg/jboss/netty/buffer/ChannelBuffer;
    :catchall_af
    move-exception v1

    move-object v2, v3

    .local v2, "future":Lorg/jboss/netty/channel/ChannelFuture;
    :goto_b1
    :try_start_b1
    iget-object v4, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    invoke-virtual {v4}, Lorg/jboss/netty/util/internal/jzlib/ZStream;->deflateEnd()I

    .line 374
    iget-object v4, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iput-object v3, v4, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    .line 375
    iget-object v4, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iput-object v3, v4, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out:[B

    throw v1

    .line 377
    :catchall_bf
    move-exception v1

    .local v3, "footer":Lorg/jboss/netty/buffer/ChannelBuffer;
    :goto_c0
    monitor-exit v0
    :try_end_c1
    .catchall {:try_start_b1 .. :try_end_c1} :catchall_bf

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

    .line 400
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

    .line 408
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

    .line 395
    iput-object p1, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    .line 396
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

    .line 404
    return-void
.end method

.method public close()Lorg/jboss/netty/channel/ChannelFuture;
    .registers 4

    .line 247
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    .line 248
    .local v0, "ctx":Lorg/jboss/netty/channel/ChannelHandlerContext;
    if-eqz v0, :cond_a

    .line 251
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->finishEncode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    return-object v1

    .line 249
    :cond_a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "not added to a pipeline"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected encode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 15
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p3, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 260
    instance-of v0, p3, Lorg/jboss/netty/buffer/ChannelBuffer;

    if-eqz v0, :cond_9d

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->finished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_9d

    .line 265
    :cond_e
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    monitor-enter v0

    .line 268
    const/4 v1, 0x0

    :try_start_12
    move-object v2, p3

    check-cast v2, Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 269
    .local v2, "uncompressed":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v3

    new-array v3, v3, [B

    .line 270
    .local v3, "in":[B
    invoke-interface {v2, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes([B)V

    .line 271
    iget-object v4, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iput-object v3, v4, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    .line 272
    iget-object v4, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    const/4 v5, 0x0

    iput v5, v4, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 273
    iget-object v4, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    array-length v6, v3

    iput v6, v4, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 276
    array-length v4, v3
    :try_end_2d
    .catchall {:try_start_12 .. :try_end_2d} :catchall_8b

    int-to-double v6, v4

    const-wide v8, 0x3ff004189374bc6aL    # 1.001

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v8

    :try_start_38
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v4, v6

    add-int/lit8 v4, v4, 0xc

    new-array v4, v4, [B

    .line 277
    .local v4, "out":[B
    iget-object v6, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iput-object v4, v6, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out:[B

    .line 278
    iget-object v6, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iput v5, v6, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out_index:I

    .line 279
    iget-object v6, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    array-length v7, v4

    iput v7, v6, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_out:I

    .line 282
    iget-object v6, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lorg/jboss/netty/util/internal/jzlib/ZStream;->deflate(I)I

    move-result v6

    .line 283
    .local v6, "resultCode":I
    if-eqz v6, :cond_5e

    .line 284
    iget-object v7, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    const-string v8, "compression failure"

    invoke-static {v7, v8, v6}, Lorg/jboss/netty/handler/codec/compression/ZlibUtil;->fail(Lorg/jboss/netty/util/internal/jzlib/ZStream;Ljava/lang/String;I)V

    .line 287
    :cond_5e
    iget-object v7, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iget v7, v7, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out_index:I

    if-eqz v7, :cond_7d

    .line 288
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v7

    invoke-interface {v7}, Lorg/jboss/netty/channel/Channel;->getConfig()Lorg/jboss/netty/channel/ChannelConfig;

    move-result-object v7

    invoke-interface {v7}, Lorg/jboss/netty/channel/ChannelConfig;->getBufferFactory()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v7

    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v8

    iget-object v9, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iget v9, v9, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out_index:I

    invoke-interface {v7, v8, v4, v5, v9}, Lorg/jboss/netty/buffer/ChannelBufferFactory;->getBuffer(Ljava/nio/ByteOrder;[BII)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v5

    goto :goto_7f

    .line 291
    :cond_7d
    sget-object v5, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;
    :try_end_7f
    .catchall {:try_start_38 .. :try_end_7f} :catchall_8b

    .end local v2    # "uncompressed":Lorg/jboss/netty/buffer/ChannelBuffer;
    .end local v3    # "in":[B
    .end local v4    # "out":[B
    .end local v6    # "resultCode":I
    .local v5, "result":Lorg/jboss/netty/buffer/ChannelBuffer;
    :goto_7f
    move-object v2, v5

    .line 298
    .end local v5    # "result":Lorg/jboss/netty/buffer/ChannelBuffer;
    .local v2, "result":Lorg/jboss/netty/buffer/ChannelBuffer;
    :try_start_80
    iget-object v3, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iput-object v1, v3, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    .line 299
    iget-object v3, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iput-object v1, v3, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out:[B

    .line 300
    nop

    .line 301
    monitor-exit v0
    :try_end_8a
    .catchall {:try_start_80 .. :try_end_8a} :catchall_9b

    .line 303
    return-object v2

    .line 298
    .end local v2    # "result":Lorg/jboss/netty/buffer/ChannelBuffer;
    :catchall_8b
    move-exception v2

    :try_start_8c
    iget-object v3, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iput-object v1, v3, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    .line 299
    iget-object v3, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iput-object v1, v3, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out:[B

    throw v2
    :try_end_95
    .catchall {:try_start_8c .. :try_end_95} :catchall_95

    .line 301
    :catchall_95
    move-exception v2

    move-object v10, v2

    move-object v2, v1

    move-object v1, v10

    .restart local v2    # "result":Lorg/jboss/netty/buffer/ChannelBuffer;
    :goto_99
    :try_start_99
    monitor-exit v0
    :try_end_9a
    .catchall {:try_start_99 .. :try_end_9a} :catchall_9b

    throw v1

    :catchall_9b
    move-exception v1

    goto :goto_99

    .line 261
    .end local v2    # "result":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_9d
    :goto_9d
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

    .line 309
    instance-of v0, p2, Lorg/jboss/netty/channel/ChannelStateEvent;

    if-eqz v0, :cond_2d

    .line 310
    move-object v0, p2

    check-cast v0, Lorg/jboss/netty/channel/ChannelStateEvent;

    .line 311
    .local v0, "e":Lorg/jboss/netty/channel/ChannelStateEvent;
    sget-object v1, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder$2;->$SwitchMap$org$jboss$netty$channel$ChannelState:[I

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getState()Lorg/jboss/netty/channel/ChannelState;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jboss/netty/channel/ChannelState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_32

    .end local v0    # "e":Lorg/jboss/netty/channel/ChannelStateEvent;
    goto :goto_2d

    .line 315
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

    .line 316
    :cond_29
    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->finishEncode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)Lorg/jboss/netty/channel/ChannelFuture;

    .line 317
    return-void

    .line 322
    .end local v0    # "e":Lorg/jboss/netty/channel/ChannelStateEvent;
    :cond_2d
    :goto_2d
    invoke-super {p0, p1, p2}, Lorg/jboss/netty/handler/codec/oneone/OneToOneEncoder;->handleDownstream(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 323
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

    .line 255
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->finished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method
