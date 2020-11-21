.class public Lorg/jboss/netty/handler/codec/http/websocketx/ContinuationWebSocketFrame;
.super Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrame;
.source "ContinuationWebSocketFrame.java"


# instance fields
.field private aggregatedText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrame;-><init>()V

    .line 34
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/codec/http/websocketx/ContinuationWebSocketFrame;->setBinaryData(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .registers 2
    .param p1, "binaryData"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 44
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrame;-><init>()V

    .line 45
    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/codec/http/websocketx/ContinuationWebSocketFrame;->setBinaryData(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 46
    return-void
.end method

.method public constructor <init>(ZILjava/lang/String;)V
    .registers 4
    .param p1, "finalFragment"    # Z
    .param p2, "rsv"    # I
    .param p3, "text"    # Ljava/lang/String;

    .line 94
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrame;-><init>()V

    .line 95
    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/codec/http/websocketx/ContinuationWebSocketFrame;->setFinalFragment(Z)V

    .line 96
    invoke-virtual {p0, p2}, Lorg/jboss/netty/handler/codec/http/websocketx/ContinuationWebSocketFrame;->setRsv(I)V

    .line 97
    invoke-virtual {p0, p3}, Lorg/jboss/netty/handler/codec/http/websocketx/ContinuationWebSocketFrame;->setText(Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public constructor <init>(ZILorg/jboss/netty/buffer/ChannelBuffer;)V
    .registers 4
    .param p1, "finalFragment"    # Z
    .param p2, "rsv"    # I
    .param p3, "binaryData"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 58
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrame;-><init>()V

    .line 59
    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/codec/http/websocketx/ContinuationWebSocketFrame;->setFinalFragment(Z)V

    .line 60
    invoke-virtual {p0, p2}, Lorg/jboss/netty/handler/codec/http/websocketx/ContinuationWebSocketFrame;->setRsv(I)V

    .line 61
    invoke-virtual {p0, p3}, Lorg/jboss/netty/handler/codec/http/websocketx/ContinuationWebSocketFrame;->setBinaryData(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 62
    return-void
.end method

.method public constructor <init>(ZILorg/jboss/netty/buffer/ChannelBuffer;Ljava/lang/String;)V
    .registers 5
    .param p1, "finalFragment"    # Z
    .param p2, "rsv"    # I
    .param p3, "binaryData"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p4, "aggregatedText"    # Ljava/lang/String;

    .line 77
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrame;-><init>()V

    .line 78
    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/codec/http/websocketx/ContinuationWebSocketFrame;->setFinalFragment(Z)V

    .line 79
    invoke-virtual {p0, p2}, Lorg/jboss/netty/handler/codec/http/websocketx/ContinuationWebSocketFrame;->setRsv(I)V

    .line 80
    invoke-virtual {p0, p3}, Lorg/jboss/netty/handler/codec/http/websocketx/ContinuationWebSocketFrame;->setBinaryData(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 81
    iput-object p4, p0, Lorg/jboss/netty/handler/codec/http/websocketx/ContinuationWebSocketFrame;->aggregatedText:Ljava/lang/String;

    .line 82
    return-void
.end method


# virtual methods
.method public getAggregatedText()Ljava/lang/String;
    .registers 2

    .line 133
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/ContinuationWebSocketFrame;->aggregatedText:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 3

    .line 104
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/websocketx/ContinuationWebSocketFrame;->getBinaryData()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    if-nez v0, :cond_8

    .line 105
    const/4 v0, 0x0

    return-object v0

    .line 107
    :cond_8
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/websocketx/ContinuationWebSocketFrame;->getBinaryData()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    sget-object v1, Lorg/jboss/netty/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-interface {v0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->toString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAggregatedText(Ljava/lang/String;)V
    .registers 2
    .param p1, "aggregatedText"    # Ljava/lang/String;

    .line 137
    iput-object p1, p0, Lorg/jboss/netty/handler/codec/http/websocketx/ContinuationWebSocketFrame;->aggregatedText:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/String;

    .line 117
    if-eqz p1, :cond_13

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_13

    .line 120
    :cond_9
    sget-object v0, Lorg/jboss/netty/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p1, v0}, Lorg/jboss/netty/buffer/ChannelBuffers;->copiedBuffer(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/codec/http/websocketx/ContinuationWebSocketFrame;->setBinaryData(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    goto :goto_18

    .line 118
    :cond_13
    :goto_13
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/codec/http/websocketx/ContinuationWebSocketFrame;->setBinaryData(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 122
    :goto_18
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/websocketx/ContinuationWebSocketFrame;->getBinaryData()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
