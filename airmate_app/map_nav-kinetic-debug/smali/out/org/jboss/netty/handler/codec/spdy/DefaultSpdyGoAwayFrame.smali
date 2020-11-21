.class public Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyGoAwayFrame;
.super Ljava/lang/Object;
.source "DefaultSpdyGoAwayFrame.java"

# interfaces
.implements Lorg/jboss/netty/handler/codec/spdy/SpdyGoAwayFrame;


# instance fields
.field private lastGoodStreamId:I

.field private status:Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "lastGoodStreamId"    # I

    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyGoAwayFrame;-><init>(II)V

    .line 35
    return-void
.end method

.method public constructor <init>(II)V
    .registers 4
    .param p1, "lastGoodStreamId"    # I
    .param p2, "statusCode"    # I

    .line 44
    invoke-static {p2}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;->valueOf(I)Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyGoAwayFrame;-><init>(ILorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;)V

    .line 45
    return-void
.end method

.method public constructor <init>(ILorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;)V
    .registers 3
    .param p1, "lastGoodStreamId"    # I
    .param p2, "status"    # Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyGoAwayFrame;->setLastGoodStreamId(I)V

    .line 55
    invoke-virtual {p0, p2}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyGoAwayFrame;->setStatus(Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;)V

    .line 56
    return-void
.end method


# virtual methods
.method public getLastGoodStreamID()I
    .registers 2

    .line 59
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyGoAwayFrame;->getLastGoodStreamId()I

    move-result v0

    return v0
.end method

.method public getLastGoodStreamId()I
    .registers 2

    .line 63
    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyGoAwayFrame;->lastGoodStreamId:I

    return v0
.end method

.method public getStatus()Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;
    .registers 2

    .line 79
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyGoAwayFrame;->status:Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;

    return-object v0
.end method

.method public setLastGoodStreamID(I)V
    .registers 2
    .param p1, "lastGoodStreamId"    # I

    .line 67
    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyGoAwayFrame;->setLastGoodStreamId(I)V

    .line 68
    return-void
.end method

.method public setLastGoodStreamId(I)V
    .registers 5
    .param p1, "lastGoodStreamId"    # I

    .line 71
    if-ltz p1, :cond_5

    .line 75
    iput p1, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyGoAwayFrame;->lastGoodStreamId:I

    .line 76
    return-void

    .line 72
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Last-good-stream-ID cannot be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setStatus(Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;)V
    .registers 2
    .param p1, "status"    # Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;

    .line 83
    iput-object p1, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyGoAwayFrame;->status:Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;

    .line 84
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    sget-object v1, Lorg/jboss/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    const-string v1, "--> Last-good-stream-ID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    iget v1, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyGoAwayFrame;->lastGoodStreamId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    sget-object v1, Lorg/jboss/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    const-string v1, "--> Status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyGoAwayFrame;->status:Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
