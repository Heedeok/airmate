.class public Lorg/jboss/netty/handler/codec/http/websocket/DefaultWebSocketFrame;
.super Ljava/lang/Object;
.source "DefaultWebSocketFrame.java"

# interfaces
.implements Lorg/jboss/netty/handler/codec/http/websocket/WebSocketFrame;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private binaryData:Lorg/jboss/netty/buffer/ChannelBuffer;

.field private type:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 37
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lorg/jboss/netty/handler/codec/http/websocket/DefaultWebSocketFrame;-><init>(ILorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 38
    return-void
.end method

.method public constructor <init>(ILorg/jboss/netty/buffer/ChannelBuffer;)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "binaryData"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-virtual {p0, p1, p2}, Lorg/jboss/netty/handler/codec/http/websocket/DefaultWebSocketFrame;->setData(ILorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "textData"    # Ljava/lang/String;

    .line 44
    sget-object v0, Lorg/jboss/netty/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p1, v0}, Lorg/jboss/netty/buffer/ChannelBuffers;->copiedBuffer(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lorg/jboss/netty/handler/codec/http/websocket/DefaultWebSocketFrame;-><init>(ILorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 45
    return-void
.end method


# virtual methods
.method public getBinaryData()Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 2

    .line 77
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/websocket/DefaultWebSocketFrame;->binaryData:Lorg/jboss/netty/buffer/ChannelBuffer;

    return-object v0
.end method

.method public getTextData()Ljava/lang/String;
    .registers 3

    .line 81
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/websocket/DefaultWebSocketFrame;->getBinaryData()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    sget-object v1, Lorg/jboss/netty/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-interface {v0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->toString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .registers 2

    .line 65
    iget v0, p0, Lorg/jboss/netty/handler/codec/http/websocket/DefaultWebSocketFrame;->type:I

    return v0
.end method

.method public isBinary()Z
    .registers 2

    .line 73
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/websocket/DefaultWebSocketFrame;->isText()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isText()Z
    .registers 2

    .line 69
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/websocket/DefaultWebSocketFrame;->getType()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public setData(ILorg/jboss/netty/buffer/ChannelBuffer;)V
    .registers 6
    .param p1, "type"    # I
    .param p2, "binaryData"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 85
    if-eqz p2, :cond_25

    .line 89
    and-int/lit16 v0, p1, 0x80

    if-nez v0, :cond_1e

    .line 91
    invoke-interface {p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    invoke-interface {p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex()I

    move-result v1

    const/4 v2, -0x1

    invoke-interface {p2, v0, v1, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->indexOf(IIB)I

    move-result v0

    .line 93
    .local v0, "delimPos":I
    if-gez v0, :cond_16

    .end local v0    # "delimPos":I
    goto :goto_1e

    .line 94
    .restart local v0    # "delimPos":I
    :cond_16
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "a text frame should not contain 0xFF."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 99
    .end local v0    # "delimPos":I
    :cond_1e
    :goto_1e
    and-int/lit16 v0, p1, 0xff

    iput v0, p0, Lorg/jboss/netty/handler/codec/http/websocket/DefaultWebSocketFrame;->type:I

    .line 100
    iput-object p2, p0, Lorg/jboss/netty/handler/codec/http/websocket/DefaultWebSocketFrame;->binaryData:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 101
    return-void

    .line 86
    :cond_25
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "binaryData"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/websocket/DefaultWebSocketFrame;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/websocket/DefaultWebSocketFrame;->getBinaryData()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
