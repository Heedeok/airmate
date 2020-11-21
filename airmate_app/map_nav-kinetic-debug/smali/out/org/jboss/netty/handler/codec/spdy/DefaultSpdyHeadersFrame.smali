.class public Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyHeadersFrame;
.super Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyHeaderBlock;
.source "DefaultSpdyHeadersFrame.java"

# interfaces
.implements Lorg/jboss/netty/handler/codec/spdy/SpdyHeadersFrame;


# instance fields
.field private last:Z

.field private streamId:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "streamId"    # I

    .line 36
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyHeaderBlock;-><init>()V

    .line 37
    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyHeadersFrame;->setStreamId(I)V

    .line 38
    return-void
.end method


# virtual methods
.method public getStreamID()I
    .registers 2

    .line 41
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyHeadersFrame;->getStreamId()I

    move-result v0

    return v0
.end method

.method public getStreamId()I
    .registers 2

    .line 45
    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyHeadersFrame;->streamId:I

    return v0
.end method

.method public isLast()Z
    .registers 2

    .line 61
    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyHeadersFrame;->last:Z

    return v0
.end method

.method public setLast(Z)V
    .registers 2
    .param p1, "last"    # Z

    .line 65
    iput-boolean p1, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyHeadersFrame;->last:Z

    .line 66
    return-void
.end method

.method public setStreamID(I)V
    .registers 2
    .param p1, "streamId"    # I

    .line 49
    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyHeadersFrame;->setStreamId(I)V

    .line 50
    return-void
.end method

.method public setStreamId(I)V
    .registers 5
    .param p1, "streamId"    # I

    .line 53
    if-lez p1, :cond_5

    .line 57
    iput p1, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyHeadersFrame;->streamId:I

    .line 58
    return-void

    .line 54
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
    .registers 4

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string v1, "(last: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyHeadersFrame;->isLast()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 74
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    sget-object v1, Lorg/jboss/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    const-string v1, "--> Stream-ID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget v1, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyHeadersFrame;->streamId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    sget-object v1, Lorg/jboss/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    const-string v1, "--> Headers:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    sget-object v1, Lorg/jboss/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyHeadersFrame;->appendHeaders(Ljava/lang/StringBuilder;)V

    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sget-object v2, Lorg/jboss/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
