.class public Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;
.super Lorg/jboss/netty/handler/codec/oneone/OneToOneDecoder;
.source "ZlibDecoder.java"


# instance fields
.field private dictionary:[B

.field private volatile finished:Z

.field private final z:Lorg/jboss/netty/util/internal/jzlib/ZStream;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 44
    sget-object v0, Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;->ZLIB:Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;-><init>(Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;)V
    .registers 6
    .param p1, "wrapper"    # Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;

    .line 52
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/oneone/OneToOneDecoder;-><init>()V

    .line 34
    new-instance v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;

    invoke-direct {v0}, Lorg/jboss/netty/util/internal/jzlib/ZStream;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    .line 53
    if-eqz p1, :cond_27

    .line 57
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    monitor-enter v0

    .line 58
    :try_start_f
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    invoke-static {p1}, Lorg/jboss/netty/handler/codec/compression/ZlibUtil;->convertWrapperType(Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;)Ljava/lang/Enum;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jboss/netty/util/internal/jzlib/ZStream;->inflateInit(Ljava/lang/Enum;)I

    move-result v1

    .line 59
    .local v1, "resultCode":I
    if-eqz v1, :cond_22

    .line 60
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    const-string v3, "initialization failure"

    invoke-static {v2, v3, v1}, Lorg/jboss/netty/handler/codec/compression/ZlibUtil;->fail(Lorg/jboss/netty/util/internal/jzlib/ZStream;Ljava/lang/String;I)V

    .line 62
    .end local v1    # "resultCode":I
    :cond_22
    monitor-exit v0

    .line 63
    return-void

    .line 62
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_f .. :try_end_26} :catchall_24

    throw v1

    .line 54
    :cond_27
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "wrapper"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([B)V
    .registers 6
    .param p1, "dictionary"    # [B

    .line 72
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/oneone/OneToOneDecoder;-><init>()V

    .line 34
    new-instance v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;

    invoke-direct {v0}, Lorg/jboss/netty/util/internal/jzlib/ZStream;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    .line 73
    if-eqz p1, :cond_27

    .line 76
    iput-object p1, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->dictionary:[B

    .line 78
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    monitor-enter v0

    .line 80
    :try_start_11
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    sget-object v2, Lorg/jboss/netty/util/internal/jzlib/JZlib;->W_ZLIB:Ljava/lang/Enum;

    invoke-virtual {v1, v2}, Lorg/jboss/netty/util/internal/jzlib/ZStream;->inflateInit(Ljava/lang/Enum;)I

    move-result v1

    .line 81
    .local v1, "resultCode":I
    if-eqz v1, :cond_22

    .line 82
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    const-string v3, "initialization failure"

    invoke-static {v2, v3, v1}, Lorg/jboss/netty/handler/codec/compression/ZlibUtil;->fail(Lorg/jboss/netty/util/internal/jzlib/ZStream;Ljava/lang/String;I)V

    .line 84
    .end local v1    # "resultCode":I
    :cond_22
    monitor-exit v0

    .line 85
    return-void

    .line 84
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_11 .. :try_end_26} :catchall_24

    throw v1

    .line 74
    :cond_27
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dictionary"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 16
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p3, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 97
    instance-of v0, p3, Lorg/jboss/netty/buffer/ChannelBuffer;

    if-eqz v0, :cond_d9

    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->finished:Z

    if-eqz v0, :cond_a

    goto/16 :goto_d9

    .line 101
    :cond_a
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    monitor-enter v0

    .line 104
    const/4 v1, 0x0

    :try_start_e
    move-object v2, p3

    check-cast v2, Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 105
    .local v2, "compressed":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v3

    new-array v3, v3, [B

    .line 106
    .local v3, "in":[B
    invoke-interface {v2, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes([B)V

    .line 107
    iget-object v4, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iput-object v3, v4, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    .line 108
    iget-object v4, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    const/4 v5, 0x0

    iput v5, v4, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 109
    iget-object v4, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    array-length v6, v3

    iput v6, v4, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 112
    array-length v4, v3

    const/4 v6, 0x1

    shl-int/2addr v4, v6

    new-array v4, v4, [B

    .line 113
    .local v4, "out":[B
    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v7

    array-length v8, v4

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v9

    invoke-interface {v9}, Lorg/jboss/netty/channel/Channel;->getConfig()Lorg/jboss/netty/channel/ChannelConfig;

    move-result-object v9

    invoke-interface {v9}, Lorg/jboss/netty/channel/ChannelConfig;->getBufferFactory()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lorg/jboss/netty/buffer/ChannelBuffers;->dynamicBuffer(Ljava/nio/ByteOrder;ILorg/jboss/netty/buffer/ChannelBufferFactory;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v7

    .line 116
    .local v7, "decompressed":Lorg/jboss/netty/buffer/ChannelBuffer;
    iget-object v8, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iput-object v4, v8, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out:[B

    .line 117
    iget-object v8, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iput v5, v8, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out_index:I

    .line 118
    iget-object v8, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    array-length v9, v4

    iput v9, v8, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_out:I

    .line 123
    :goto_4f
    iget-object v8, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lorg/jboss/netty/util/internal/jzlib/ZStream;->inflate(I)I

    move-result v8

    .line 124
    .local v8, "resultCode":I
    iget-object v9, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iget v9, v9, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out_index:I

    if-lez v9, :cond_68

    .line 125
    iget-object v9, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iget v9, v9, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out_index:I

    invoke-interface {v7, v4, v5, v9}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes([BII)V

    .line 126
    iget-object v9, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    array-length v10, v4

    iput v10, v9, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_out:I

    .line 128
    :cond_68
    iget-object v9, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iput v5, v9, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out_index:I

    .line 130
    const/4 v9, -0x5

    if-eq v8, v9, :cond_a5

    packed-switch v8, :pswitch_data_da

    .line 153
    iget-object v9, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    const-string v10, "decompression failure"

    invoke-static {v9, v10, v8}, Lorg/jboss/netty/handler/codec/compression/ZlibUtil;->fail(Lorg/jboss/netty/util/internal/jzlib/ZStream;Ljava/lang/String;I)V

    goto :goto_ca

    .line 132
    :pswitch_7a
    iget-object v9, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->dictionary:[B

    if-nez v9, :cond_86

    .line 133
    iget-object v9, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    const-string v10, "decompression failure"

    invoke-static {v9, v10, v8}, Lorg/jboss/netty/handler/codec/compression/ZlibUtil;->fail(Lorg/jboss/netty/util/internal/jzlib/ZStream;Ljava/lang/String;I)V

    goto :goto_ca

    .line 135
    :cond_86
    iget-object v9, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iget-object v10, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->dictionary:[B

    iget-object v11, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->dictionary:[B

    array-length v11, v11

    invoke-virtual {v9, v10, v11}, Lorg/jboss/netty/util/internal/jzlib/ZStream;->inflateSetDictionary([BI)I

    move-result v9

    move v8, v9

    .line 136
    if-eqz v8, :cond_ca

    .line 137
    iget-object v9, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    const-string v10, "failed to set the dictionary"

    invoke-static {v9, v10, v8}, Lorg/jboss/netty/handler/codec/compression/ZlibUtil;->fail(Lorg/jboss/netty/util/internal/jzlib/ZStream;Ljava/lang/String;I)V

    goto :goto_ca

    .line 142
    :pswitch_9c
    iput-boolean v6, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->finished:Z

    .line 143
    iget-object v5, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    invoke-virtual {v5}, Lorg/jboss/netty/util/internal/jzlib/ZStream;->inflateEnd()I

    .line 144
    goto :goto_ac

    .line 146
    :pswitch_a4
    goto :goto_ca

    .line 148
    :cond_a5
    iget-object v9, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iget v9, v9, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    if-gtz v9, :cond_ca

    .line 149
    nop

    .line 157
    .end local v8    # "resultCode":I
    :goto_ac
    invoke-interface {v7}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex()I

    move-result v5
    :try_end_b0
    .catchall {:try_start_e .. :try_end_b0} :catchall_cb

    if-eqz v5, :cond_be

    .line 158
    nop

    .line 170
    move-object v5, p0

    .local v5, "this":Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;
    :try_start_b4
    iget-object v6, v5, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iput-object v1, v6, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    .line 168
    iget-object v6, v5, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iput-object v1, v6, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out:[B

    .line 158
    monitor-exit v0

    return-object v7

    .line 160
    .end local v5    # "this":Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;
    :cond_be
    nop

    .line 168
    move-object v5, p0

    .restart local v5    # "this":Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;
    iget-object v6, v5, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iput-object v1, v6, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    iget-object v6, v5, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iput-object v1, v6, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out:[B

    .line 160
    monitor-exit v0

    return-object v1

    .line 155
    .end local v5    # "this":Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;
    :cond_ca
    :goto_ca
    goto :goto_4f

    .line 167
    .end local v2    # "compressed":Lorg/jboss/netty/buffer/ChannelBuffer;
    .end local v3    # "in":[B
    .end local v4    # "out":[B
    .end local v7    # "decompressed":Lorg/jboss/netty/buffer/ChannelBuffer;
    :catchall_cb
    move-exception v2

    .line 168
    move-object v5, p0

    .restart local v5    # "this":Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;
    iget-object v3, v5, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iput-object v1, v3, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    iget-object v3, v5, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iput-object v1, v3, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out:[B

    .line 167
    throw v2

    .line 170
    :catchall_d6
    move-exception v1

    monitor-exit v0
    :try_end_d8
    .catchall {:try_start_b4 .. :try_end_d8} :catchall_d6

    throw v1

    .line 98
    .end local v5    # "this":Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;
    :cond_d9
    :goto_d9
    return-object p3

    :pswitch_data_da
    .packed-switch 0x0
        :pswitch_a4
        :pswitch_9c
        :pswitch_7a
    .end packed-switch
.end method

.method public isClosed()Z
    .registers 2

    .line 92
    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->finished:Z

    return v0
.end method
