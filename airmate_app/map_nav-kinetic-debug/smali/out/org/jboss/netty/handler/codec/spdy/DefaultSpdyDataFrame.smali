.class public Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyDataFrame;
.super Ljava/lang/Object;
.source "DefaultSpdyDataFrame.java"

# interfaces
.implements Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;


# instance fields
.field private compressed:Z

.field private data:Lorg/jboss/netty/buffer/ChannelBuffer;

.field private last:Z

.field private streamId:I


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "streamId"    # I

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyDataFrame;->data:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 38
    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyDataFrame;->setStreamId(I)V

    .line 39
    return-void
.end method


# virtual methods
.method public getData()Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 2

    .line 78
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyDataFrame;->data:Lorg/jboss/netty/buffer/ChannelBuffer;

    return-object v0
.end method

.method public getStreamID()I
    .registers 2

    .line 42
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyDataFrame;->getStreamId()I

    move-result v0

    return v0
.end method

.method public getStreamId()I
    .registers 2

    .line 46
    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyDataFrame;->streamId:I

    return v0
.end method

.method public isCompressed()Z
    .registers 2

    .line 70
    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyDataFrame;->compressed:Z

    return v0
.end method

.method public isLast()Z
    .registers 2

    .line 62
    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyDataFrame;->last:Z

    return v0
.end method

.method public setCompressed(Z)V
    .registers 2
    .param p1, "compressed"    # Z

    .line 74
    iput-boolean p1, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyDataFrame;->compressed:Z

    .line 75
    return-void
.end method

.method public setData(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .registers 4
    .param p1, "data"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 82
    if-nez p1, :cond_4

    .line 83
    sget-object p1, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 85
    :cond_4
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    const v1, 0xffffff

    if-gt v0, v1, :cond_10

    .line 89
    iput-object p1, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyDataFrame;->data:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 90
    return-void

    .line 86
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data payload cannot exceed 16777215 bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setLast(Z)V
    .registers 2
    .param p1, "last"    # Z

    .line 66
    iput-boolean p1, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyDataFrame;->last:Z

    .line 67
    return-void
.end method

.method public setStreamID(I)V
    .registers 2
    .param p1, "streamId"    # I

    .line 50
    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyDataFrame;->setStreamId(I)V

    .line 51
    return-void
.end method

.method public setStreamId(I)V
    .registers 5
    .param p1, "streamId"    # I

    .line 54
    if-lez p1, :cond_5

    .line 58
    iput p1, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyDataFrame;->streamId:I

    .line 59
    return-void

    .line 55
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stream-ID must be positive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    const-string v1, "(last: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyDataFrame;->isLast()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 98
    const-string v1, "; compressed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyDataFrame;->isCompressed()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 100
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 101
    sget-object v1, Lorg/jboss/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    const-string v1, "--> Stream-ID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    iget v1, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyDataFrame;->streamId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    sget-object v1, Lorg/jboss/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    const-string v1, "--> Size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyDataFrame;->data:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
