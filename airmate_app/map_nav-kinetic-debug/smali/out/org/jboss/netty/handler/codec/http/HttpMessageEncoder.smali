.class public abstract Lorg/jboss/netty/handler/codec/http/HttpMessageEncoder;
.super Lorg/jboss/netty/handler/codec/oneone/OneToOneEncoder;
.source "HttpMessageEncoder.java"


# static fields
.field private static final CRLF:[B

.field private static final LAST_CHUNK:Lorg/jboss/netty/buffer/ChannelBuffer;


# instance fields
.field private volatile chunked:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 49
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_14

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpMessageEncoder;->CRLF:[B

    .line 50
    const-string v0, "0\r\n\r\n"

    sget-object v1, Lorg/jboss/netty/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Lorg/jboss/netty/buffer/ChannelBuffers;->copiedBuffer(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpMessageEncoder;->LAST_CHUNK:Lorg/jboss/netty/buffer/ChannelBuffer;

    return-void

    nop

    :array_14
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method protected constructor <init>()V
    .registers 1

    .line 59
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/oneone/OneToOneEncoder;-><init>()V

    .line 60
    return-void
.end method

.method private static encodeHeader(Lorg/jboss/netty/buffer/ChannelBuffer;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "buf"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 162
    const-string v0, "ASCII"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes([B)V

    .line 163
    const/16 v0, 0x3a

    invoke-interface {p0, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    .line 164
    const/16 v0, 0x20

    invoke-interface {p0, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    .line 165
    const-string v0, "ASCII"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes([B)V

    .line 166
    const/16 v0, 0xd

    invoke-interface {p0, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    .line 167
    const/16 v0, 0xa

    invoke-interface {p0, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    .line 168
    return-void
.end method

.method private static encodeHeaders(Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/http/HttpMessage;)V
    .registers 6
    .param p0, "buf"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p1, "message"    # Lorg/jboss/netty/handler/codec/http/HttpMessage;

    .line 142
    :try_start_0
    invoke-interface {p1}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->getHeaders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 143
    .local v1, "h":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {p0, v2, v3}, Lorg/jboss/netty/handler/codec/http/HttpMessageEncoder;->encodeHeader(Lorg/jboss/netty/buffer/ChannelBuffer;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_23} :catch_26

    .line 144
    .end local v1    # "h":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_8

    .line 147
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_24
    nop

    .line 148
    return-void

    .line 145
    :catch_26
    move-exception v0

    .line 146
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1}, Ljava/lang/Error;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/Error;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/lang/Error;

    throw v1
.end method

.method private static encodeTrailingHeaders(Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/http/HttpChunkTrailer;)V
    .registers 6
    .param p0, "buf"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p1, "trailer"    # Lorg/jboss/netty/handler/codec/http/HttpChunkTrailer;

    .line 152
    :try_start_0
    invoke-interface {p1}, Lorg/jboss/netty/handler/codec/http/HttpChunkTrailer;->getHeaders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 153
    .local v1, "h":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {p0, v2, v3}, Lorg/jboss/netty/handler/codec/http/HttpMessageEncoder;->encodeHeader(Lorg/jboss/netty/buffer/ChannelBuffer;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_23} :catch_26

    .line 154
    .end local v1    # "h":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_8

    .line 157
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_24
    nop

    .line 158
    return-void

    .line 155
    :catch_26
    move-exception v0

    .line 156
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1}, Ljava/lang/Error;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/Error;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/lang/Error;

    throw v1
.end method


# virtual methods
.method protected encode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p3, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 64
    instance-of v0, p3, Lorg/jboss/netty/handler/codec/http/HttpMessage;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/16 v3, 0xa

    const/16 v4, 0xd

    const/4 v5, 0x1

    if-eqz v0, :cond_63

    .line 65
    move-object v0, p3

    check-cast v0, Lorg/jboss/netty/handler/codec/http/HttpMessage;

    .line 67
    .local v0, "m":Lorg/jboss/netty/handler/codec/http/HttpMessage;
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->isChunked()Z

    move-result v6

    if-eqz v6, :cond_25

    .line 70
    invoke-static {v0}, Lorg/jboss/netty/handler/codec/http/HttpCodecUtil;->isTransferEncodingChunked(Lorg/jboss/netty/handler/codec/http/HttpMessage;)Z

    move-result v6

    if-nez v6, :cond_21

    .line 71
    const-string v6, "Transfer-Encoding"

    const-string v7, "chunked"

    invoke-interface {v0, v6, v7}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    :cond_21
    iput-boolean v5, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageEncoder;->chunked:Z

    move v6, v5

    goto :goto_2b

    .line 75
    :cond_25
    invoke-static {v0}, Lorg/jboss/netty/handler/codec/http/HttpCodecUtil;->isTransferEncodingChunked(Lorg/jboss/netty/handler/codec/http/HttpMessage;)Z

    move-result v6

    iput-boolean v6, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageEncoder;->chunked:Z

    .line 77
    .local v6, "chunked":Z
    :goto_2b
    invoke-interface {p2}, Lorg/jboss/netty/channel/Channel;->getConfig()Lorg/jboss/netty/channel/ChannelConfig;

    move-result-object v7

    invoke-interface {v7}, Lorg/jboss/netty/channel/ChannelConfig;->getBufferFactory()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v7

    invoke-static {v7}, Lorg/jboss/netty/buffer/ChannelBuffers;->dynamicBuffer(Lorg/jboss/netty/buffer/ChannelBufferFactory;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v7

    .line 79
    .local v7, "header":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-virtual {p0, v7, v0}, Lorg/jboss/netty/handler/codec/http/HttpMessageEncoder;->encodeInitialLine(Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/http/HttpMessage;)V

    .line 80
    invoke-static {v7, v0}, Lorg/jboss/netty/handler/codec/http/HttpMessageEncoder;->encodeHeaders(Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/http/HttpMessage;)V

    .line 81
    invoke-interface {v7, v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    .line 82
    invoke-interface {v7, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    .line 84
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->getContent()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v3

    .line 85
    .local v3, "content":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-interface {v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v4

    if-nez v4, :cond_4e

    .line 86
    return-object v7

    .line 87
    :cond_4e
    if-nez v6, :cond_5b

    .line 92
    new-array v1, v1, [Lorg/jboss/netty/buffer/ChannelBuffer;

    aput-object v7, v1, v2

    aput-object v3, v1, v5

    invoke-static {v1}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    return-object v1

    .line 88
    :cond_5b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "HttpMessage.content must be empty if Transfer-Encoding is chunked."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 96
    .end local v0    # "m":Lorg/jboss/netty/handler/codec/http/HttpMessage;
    .end local v3    # "content":Lorg/jboss/netty/buffer/ChannelBuffer;
    .end local v6    # "chunked":Z
    .end local v7    # "header":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_63
    instance-of v0, p3, Lorg/jboss/netty/handler/codec/http/HttpChunk;

    if-eqz v0, :cond_e9

    .line 97
    move-object v0, p3

    check-cast v0, Lorg/jboss/netty/handler/codec/http/HttpChunk;

    .line 98
    .local v0, "chunk":Lorg/jboss/netty/handler/codec/http/HttpChunk;
    iget-boolean v6, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageEncoder;->chunked:Z

    if-eqz v6, :cond_dc

    .line 99
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/HttpChunk;->isLast()Z

    move-result v6

    if-eqz v6, :cond_a5

    .line 100
    iput-boolean v2, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageEncoder;->chunked:Z

    .line 101
    instance-of v1, v0, Lorg/jboss/netty/handler/codec/http/HttpChunkTrailer;

    if-eqz v1, :cond_9e

    .line 102
    invoke-interface {p2}, Lorg/jboss/netty/channel/Channel;->getConfig()Lorg/jboss/netty/channel/ChannelConfig;

    move-result-object v1

    invoke-interface {v1}, Lorg/jboss/netty/channel/ChannelConfig;->getBufferFactory()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v1

    invoke-static {v1}, Lorg/jboss/netty/buffer/ChannelBuffers;->dynamicBuffer(Lorg/jboss/netty/buffer/ChannelBufferFactory;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    .line 104
    .local v1, "trailer":Lorg/jboss/netty/buffer/ChannelBuffer;
    const/16 v2, 0x30

    invoke-interface {v1, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    .line 105
    invoke-interface {v1, v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    .line 106
    invoke-interface {v1, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    .line 107
    move-object v2, v0

    check-cast v2, Lorg/jboss/netty/handler/codec/http/HttpChunkTrailer;

    invoke-static {v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpMessageEncoder;->encodeTrailingHeaders(Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/http/HttpChunkTrailer;)V

    .line 108
    invoke-interface {v1, v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    .line 109
    invoke-interface {v1, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    .line 110
    return-object v1

    .line 112
    .end local v1    # "trailer":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_9e
    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpMessageEncoder;->LAST_CHUNK:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->duplicate()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    return-object v1

    .line 115
    :cond_a5
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/HttpChunk;->getContent()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v3

    .line 116
    .restart local v3    # "content":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-interface {v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v4

    .line 118
    .local v4, "contentLength":I
    const/4 v6, 0x4

    new-array v6, v6, [Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lorg/jboss/netty/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-static {v7, v8}, Lorg/jboss/netty/buffer/ChannelBuffers;->copiedBuffer(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v7

    aput-object v7, v6, v2

    sget-object v2, Lorg/jboss/netty/handler/codec/http/HttpMessageEncoder;->CRLF:[B

    invoke-static {v2}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([B)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    aput-object v2, v6, v5

    invoke-interface {v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v2

    invoke-interface {v3, v2, v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    aput-object v2, v6, v1

    const/4 v1, 0x3

    sget-object v2, Lorg/jboss/netty/handler/codec/http/HttpMessageEncoder;->CRLF:[B

    invoke-static {v2}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([B)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    aput-object v2, v6, v1

    invoke-static {v6}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    return-object v1

    .line 127
    .end local v3    # "content":Lorg/jboss/netty/buffer/ChannelBuffer;
    .end local v4    # "contentLength":I
    :cond_dc
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/HttpChunk;->isLast()Z

    move-result v1

    if-eqz v1, :cond_e4

    .line 128
    const/4 v1, 0x0

    return-object v1

    .line 130
    :cond_e4
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/HttpChunk;->getContent()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    return-object v1

    .line 137
    .end local v0    # "chunk":Lorg/jboss/netty/handler/codec/http/HttpChunk;
    :cond_e9
    return-object p3
.end method

.method protected abstract encodeInitialLine(Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/http/HttpMessage;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
