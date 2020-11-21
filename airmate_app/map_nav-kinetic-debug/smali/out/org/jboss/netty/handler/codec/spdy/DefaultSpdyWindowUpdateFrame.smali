.class public Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyWindowUpdateFrame;
.super Ljava/lang/Object;
.source "DefaultSpdyWindowUpdateFrame.java"

# interfaces
.implements Lorg/jboss/netty/handler/codec/spdy/SpdyWindowUpdateFrame;


# instance fields
.field private deltaWindowSize:I

.field private streamId:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .param p1, "streamId"    # I
    .param p2, "deltaWindowSize"    # I

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyWindowUpdateFrame;->setStreamId(I)V

    .line 36
    invoke-virtual {p0, p2}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyWindowUpdateFrame;->setDeltaWindowSize(I)V

    .line 37
    return-void
.end method


# virtual methods
.method public getDeltaWindowSize()I
    .registers 2

    .line 60
    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyWindowUpdateFrame;->deltaWindowSize:I

    return v0
.end method

.method public getStreamID()I
    .registers 2

    .line 40
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyWindowUpdateFrame;->getStreamId()I

    move-result v0

    return v0
.end method

.method public getStreamId()I
    .registers 2

    .line 44
    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyWindowUpdateFrame;->streamId:I

    return v0
.end method

.method public setDeltaWindowSize(I)V
    .registers 5
    .param p1, "deltaWindowSize"    # I

    .line 64
    if-lez p1, :cond_5

    .line 69
    iput p1, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyWindowUpdateFrame;->deltaWindowSize:I

    .line 70
    return-void

    .line 65
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Delta-Window-Size must be positive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setStreamID(I)V
    .registers 2
    .param p1, "streamId"    # I

    .line 48
    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyWindowUpdateFrame;->setStreamId(I)V

    .line 49
    return-void
.end method

.method public setStreamId(I)V
    .registers 5
    .param p1, "streamId"    # I

    .line 52
    if-lez p1, :cond_5

    .line 56
    iput p1, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyWindowUpdateFrame;->streamId:I

    .line 57
    return-void

    .line 53
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

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    sget-object v1, Lorg/jboss/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    const-string v1, "--> Stream-ID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    iget v1, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyWindowUpdateFrame;->streamId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    sget-object v1, Lorg/jboss/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    const-string v1, "--> Delta-Window-Size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget v1, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyWindowUpdateFrame;->deltaWindowSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
