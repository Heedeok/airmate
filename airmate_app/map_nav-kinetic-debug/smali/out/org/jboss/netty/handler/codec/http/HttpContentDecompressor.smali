.class public Lorg/jboss/netty/handler/codec/http/HttpContentDecompressor;
.super Lorg/jboss/netty/handler/codec/http/HttpContentDecoder;
.source "HttpContentDecompressor.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/HttpContentDecoder;-><init>()V

    return-void
.end method


# virtual methods
.method protected newContentDecoder(Ljava/lang/String;)Lorg/jboss/netty/handler/codec/embedder/DecoderEmbedder;
    .registers 7
    .param p1, "contentEncoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/jboss/netty/handler/codec/embedder/DecoderEmbedder<",
            "Lorg/jboss/netty/buffer/ChannelBuffer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 31
    const-string v0, "gzip"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_37

    const-string v0, "x-gzip"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_37

    .line 33
    :cond_13
    const-string v0, "deflate"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_26

    const-string v0, "x-deflate"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    goto :goto_26

    .line 39
    :cond_24
    const/4 v0, 0x0

    return-object v0

    .line 35
    :cond_26
    :goto_26
    new-instance v0, Lorg/jboss/netty/handler/codec/embedder/DecoderEmbedder;

    new-array v2, v2, [Lorg/jboss/netty/channel/ChannelUpstreamHandler;

    new-instance v3, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;

    sget-object v4, Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;->ZLIB_OR_NONE:Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;

    invoke-direct {v3, v4}, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;-><init>(Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;)V

    aput-object v3, v2, v1

    invoke-direct {v0, v2}, Lorg/jboss/netty/handler/codec/embedder/DecoderEmbedder;-><init>([Lorg/jboss/netty/channel/ChannelUpstreamHandler;)V

    return-object v0

    .line 32
    :cond_37
    :goto_37
    new-instance v0, Lorg/jboss/netty/handler/codec/embedder/DecoderEmbedder;

    new-array v2, v2, [Lorg/jboss/netty/channel/ChannelUpstreamHandler;

    new-instance v3, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;

    sget-object v4, Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;->GZIP:Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;

    invoke-direct {v3, v4}, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;-><init>(Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;)V

    aput-object v3, v2, v1

    invoke-direct {v0, v2}, Lorg/jboss/netty/handler/codec/embedder/DecoderEmbedder;-><init>([Lorg/jboss/netty/channel/ChannelUpstreamHandler;)V

    return-object v0
.end method
