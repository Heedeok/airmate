.class public Lorg/jboss/netty/handler/codec/http/websocketx/CloseWebSocketFrame;
.super Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrame;
.source "CloseWebSocketFrame.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrame;-><init>()V

    .line 32
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/codec/http/websocketx/CloseWebSocketFrame;->setBinaryData(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 33
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 5
    .param p1, "statusCode"    # I
    .param p2, "reasonText"    # Ljava/lang/String;

    .line 45
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/jboss/netty/handler/codec/http/websocketx/CloseWebSocketFrame;-><init>(ZIILjava/lang/String;)V

    .line 46
    return-void
.end method

.method public constructor <init>(ZI)V
    .registers 4
    .param p1, "finalFragment"    # Z
    .param p2, "rsv"    # I

    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jboss/netty/handler/codec/http/websocketx/CloseWebSocketFrame;-><init>(ZILorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 58
    return-void
.end method

.method public constructor <init>(ZIILjava/lang/String;)V
    .registers 9
    .param p1, "finalFragment"    # Z
    .param p2, "rsv"    # I
    .param p3, "statusCode"    # I
    .param p4, "reasonText"    # Ljava/lang/String;

    .line 73
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrame;-><init>()V

    .line 74
    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/codec/http/websocketx/CloseWebSocketFrame;->setFinalFragment(Z)V

    .line 75
    invoke-virtual {p0, p2}, Lorg/jboss/netty/handler/codec/http/websocketx/CloseWebSocketFrame;->setRsv(I)V

    .line 77
    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 78
    .local v1, "reasonBytes":[B
    if-eqz p4, :cond_1b

    .line 80
    :try_start_e
    const-string v2, "UTF-8"

    invoke-virtual {p4, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2
    :try_end_14
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_e .. :try_end_14} :catch_16

    move-object v1, v2

    .line 84
    goto :goto_1b

    .line 81
    :catch_16
    move-exception v2

    .line 83
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 87
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_1b
    :goto_1b
    array-length v2, v1

    add-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Lorg/jboss/netty/buffer/ChannelBuffers;->buffer(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    .line 88
    .local v2, "binaryData":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-interface {v2, p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeShort(I)V

    .line 89
    array-length v3, v1

    if-lez v3, :cond_2b

    .line 90
    invoke-interface {v2, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes([B)V

    .line 93
    :cond_2b
    invoke-interface {v2, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    .line 94
    invoke-virtual {p0, v2}, Lorg/jboss/netty/handler/codec/http/websocketx/CloseWebSocketFrame;->setBinaryData(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 95
    return-void
.end method

.method public constructor <init>(ZILorg/jboss/netty/buffer/ChannelBuffer;)V
    .registers 5
    .param p1, "finalFragment"    # Z
    .param p2, "rsv"    # I
    .param p3, "binaryData"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 107
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrame;-><init>()V

    .line 108
    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/codec/http/websocketx/CloseWebSocketFrame;->setFinalFragment(Z)V

    .line 109
    invoke-virtual {p0, p2}, Lorg/jboss/netty/handler/codec/http/websocketx/CloseWebSocketFrame;->setRsv(I)V

    .line 110
    if-nez p3, :cond_11

    .line 111
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/codec/http/websocketx/CloseWebSocketFrame;->setBinaryData(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    goto :goto_14

    .line 113
    :cond_11
    invoke-virtual {p0, p3}, Lorg/jboss/netty/handler/codec/http/websocketx/CloseWebSocketFrame;->setBinaryData(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 115
    :goto_14
    return-void
.end method


# virtual methods
.method public getReasonText()Ljava/lang/String;
    .registers 4

    .line 139
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/websocketx/CloseWebSocketFrame;->getBinaryData()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    .line 140
    .local v0, "binaryData":Lorg/jboss/netty/buffer/ChannelBuffer;
    if-eqz v0, :cond_1c

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v1

    const/4 v2, 0x2

    if-gt v1, v2, :cond_e

    goto :goto_1c

    .line 144
    :cond_e
    invoke-interface {v0, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    .line 145
    sget-object v1, Lorg/jboss/netty/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-interface {v0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->toString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "reasonText":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    .line 148
    return-object v1

    .line 141
    .end local v1    # "reasonText":Ljava/lang/String;
    :cond_1c
    :goto_1c
    const-string v1, ""

    return-object v1
.end method

.method public getStatusCode()I
    .registers 4

    .line 122
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/websocketx/CloseWebSocketFrame;->getBinaryData()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    .line 123
    .local v0, "binaryData":Lorg/jboss/netty/buffer/ChannelBuffer;
    if-eqz v0, :cond_19

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v1

    if-nez v1, :cond_d

    goto :goto_19

    .line 127
    :cond_d
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    .line 128
    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readShort()S

    move-result v2

    .line 129
    .local v2, "statusCode":I
    invoke-interface {v0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    .line 131
    return v2

    .line 124
    .end local v2    # "statusCode":I
    :cond_19
    :goto_19
    const/4 v1, -0x1

    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 153
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
