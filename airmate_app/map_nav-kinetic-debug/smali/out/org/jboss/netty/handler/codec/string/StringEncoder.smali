.class public Lorg/jboss/netty/handler/codec/string/StringEncoder;
.super Lorg/jboss/netty/handler/codec/oneone/OneToOneEncoder;
.source "StringEncoder.java"


# annotations
.annotation runtime Lorg/jboss/netty/channel/ChannelHandler$Sharable;
.end annotation


# instance fields
.field private final charset:Ljava/nio/charset/Charset;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 66
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/string/StringEncoder;-><init>(Ljava/nio/charset/Charset;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "charsetName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 84
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/string/StringEncoder;-><init>(Ljava/nio/charset/Charset;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .registers 4
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 72
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/oneone/OneToOneEncoder;-><init>()V

    .line 73
    if-eqz p1, :cond_8

    .line 76
    iput-object p1, p0, Lorg/jboss/netty/handler/codec/string/StringEncoder;->charset:Ljava/nio/charset/Charset;

    .line 77
    return-void

    .line 74
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "charset"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected encode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p3, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 90
    instance-of v0, p3, Ljava/lang/String;

    if-nez v0, :cond_5

    .line 91
    return-object p3

    .line 93
    :cond_5
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/Channel;->getConfig()Lorg/jboss/netty/channel/ChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelConfig;->getBufferFactory()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBufferFactory;->getDefaultOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    move-object v1, p3

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/string/StringEncoder;->charset:Ljava/nio/charset/Charset;

    invoke-static {v0, v1, v2}, Lorg/jboss/netty/buffer/ChannelBuffers;->copiedBuffer(Ljava/nio/ByteOrder;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method
