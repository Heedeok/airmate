.class abstract Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockDecompressor;
.super Ljava/lang/Object;
.source "SpdyHeaderBlockDecompressor.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static newInstance(I)Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockDecompressor;
    .registers 2
    .param p0, "version"    # I

    .line 23
    new-instance v0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockZlibDecompressor;

    invoke-direct {v0, p0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockZlibDecompressor;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method abstract decode(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method abstract end()V
.end method

.method abstract setInput(Lorg/jboss/netty/buffer/ChannelBuffer;)V
.end method
