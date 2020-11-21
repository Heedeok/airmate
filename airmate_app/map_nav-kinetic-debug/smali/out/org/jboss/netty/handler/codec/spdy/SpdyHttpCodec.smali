.class public Lorg/jboss/netty/handler/codec/spdy/SpdyHttpCodec;
.super Ljava/lang/Object;
.source "SpdyHttpCodec.java"

# interfaces
.implements Lorg/jboss/netty/channel/ChannelUpstreamHandler;
.implements Lorg/jboss/netty/channel/ChannelDownstreamHandler;


# instance fields
.field private final decoder:Lorg/jboss/netty/handler/codec/spdy/SpdyHttpDecoder;

.field private final encoder:Lorg/jboss/netty/handler/codec/spdy/SpdyHttpEncoder;


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "maxContentLength"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 38
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpCodec;-><init>(II)V

    .line 39
    return-void
.end method

.method public constructor <init>(II)V
    .registers 4
    .param p1, "version"    # I
    .param p2, "maxContentLength"    # I

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpDecoder;

    invoke-direct {v0, p1, p2}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpDecoder;-><init>(II)V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpCodec;->decoder:Lorg/jboss/netty/handler/codec/spdy/SpdyHttpDecoder;

    .line 46
    new-instance v0, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpEncoder;

    invoke-direct {v0, p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpEncoder;-><init>(I)V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpCodec;->encoder:Lorg/jboss/netty/handler/codec/spdy/SpdyHttpEncoder;

    .line 47
    return-void
.end method


# virtual methods
.method public handleDownstream(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V
    .registers 4
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/ChannelEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpCodec;->encoder:Lorg/jboss/netty/handler/codec/spdy/SpdyHttpEncoder;

    invoke-virtual {v0, p1, p2}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpEncoder;->handleDownstream(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 57
    return-void
.end method

.method public handleUpstream(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V
    .registers 4
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/ChannelEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpCodec;->decoder:Lorg/jboss/netty/handler/codec/spdy/SpdyHttpDecoder;

    invoke-virtual {v0, p1, p2}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpDecoder;->handleUpstream(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 52
    return-void
.end method
