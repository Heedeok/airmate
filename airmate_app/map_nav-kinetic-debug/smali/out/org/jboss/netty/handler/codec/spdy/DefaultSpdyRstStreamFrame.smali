.class public Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyRstStreamFrame;
.super Ljava/lang/Object;
.source "DefaultSpdyRstStreamFrame.java"

# interfaces
.implements Lorg/jboss/netty/handler/codec/spdy/SpdyRstStreamFrame;


# instance fields
.field private status:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

.field private streamId:I


# direct methods
.method public constructor <init>(II)V
    .registers 4
    .param p1, "streamId"    # I
    .param p2, "statusCode"    # I

    .line 35
    invoke-static {p2}, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->valueOf(I)Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyRstStreamFrame;-><init>(ILorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;)V

    .line 36
    return-void
.end method

.method public constructor <init>(ILorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;)V
    .registers 3
    .param p1, "streamId"    # I
    .param p2, "status"    # Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyRstStreamFrame;->setStreamId(I)V

    .line 46
    invoke-virtual {p0, p2}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyRstStreamFrame;->setStatus(Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;)V

    .line 47
    return-void
.end method


# virtual methods
.method public getStatus()Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;
    .registers 2

    .line 70
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyRstStreamFrame;->status:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    return-object v0
.end method

.method public getStreamID()I
    .registers 2

    .line 50
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyRstStreamFrame;->getStreamId()I

    move-result v0

    return v0
.end method

.method public getStreamId()I
    .registers 2

    .line 54
    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyRstStreamFrame;->streamId:I

    return v0
.end method

.method public setStatus(Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;)V
    .registers 2
    .param p1, "status"    # Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    .line 74
    iput-object p1, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyRstStreamFrame;->status:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    .line 75
    return-void
.end method

.method public setStreamID(I)V
    .registers 2
    .param p1, "streamId"    # I

    .line 58
    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyRstStreamFrame;->setStreamId(I)V

    .line 59
    return-void
.end method

.method public setStreamId(I)V
    .registers 5
    .param p1, "streamId"    # I

    .line 62
    if-lez p1, :cond_5

    .line 66
    iput p1, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyRstStreamFrame;->streamId:I

    .line 67
    return-void

    .line 63
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

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    sget-object v1, Lorg/jboss/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    const-string v1, "--> Stream-ID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    iget v1, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyRstStreamFrame;->streamId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    sget-object v1, Lorg/jboss/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    const-string v1, "--> Status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyRstStreamFrame;->status:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
