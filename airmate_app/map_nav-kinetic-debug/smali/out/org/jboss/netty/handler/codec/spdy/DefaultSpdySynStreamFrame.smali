.class public Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySynStreamFrame;
.super Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyHeaderBlock;
.source "DefaultSpdySynStreamFrame.java"

# interfaces
.implements Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;


# instance fields
.field private associatedToStreamId:I

.field private last:Z

.field private priority:B

.field private streamId:I

.field private unidirectional:Z


# direct methods
.method public constructor <init>(IIB)V
    .registers 4
    .param p1, "streamID"    # I
    .param p2, "associatedToStreamId"    # I
    .param p3, "priority"    # B

    .line 40
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyHeaderBlock;-><init>()V

    .line 41
    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySynStreamFrame;->setStreamId(I)V

    .line 42
    invoke-virtual {p0, p2}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySynStreamFrame;->setAssociatedToStreamId(I)V

    .line 43
    invoke-virtual {p0, p3}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySynStreamFrame;->setPriority(B)V

    .line 44
    return-void
.end method


# virtual methods
.method public getAssociatedToStreamID()I
    .registers 2

    .line 67
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySynStreamFrame;->getAssociatedToStreamId()I

    move-result v0

    return v0
.end method

.method public getAssociatedToStreamId()I
    .registers 2

    .line 71
    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySynStreamFrame;->associatedToStreamId:I

    return v0
.end method

.method public getPriority()B
    .registers 2

    .line 88
    iget-byte v0, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySynStreamFrame;->priority:B

    return v0
.end method

.method public getStreamID()I
    .registers 2

    .line 47
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySynStreamFrame;->getStreamId()I

    move-result v0

    return v0
.end method

.method public getStreamId()I
    .registers 2

    .line 51
    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySynStreamFrame;->streamId:I

    return v0
.end method

.method public isLast()Z
    .registers 2

    .line 100
    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySynStreamFrame;->last:Z

    return v0
.end method

.method public isUnidirectional()Z
    .registers 2

    .line 108
    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySynStreamFrame;->unidirectional:Z

    return v0
.end method

.method public setAssociatedToStreamID(I)V
    .registers 2
    .param p1, "associatedToStreamId"    # I

    .line 75
    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySynStreamFrame;->setAssociatedToStreamId(I)V

    .line 76
    return-void
.end method

.method public setAssociatedToStreamId(I)V
    .registers 5
    .param p1, "associatedToStreamId"    # I

    .line 79
    if-ltz p1, :cond_5

    .line 84
    iput p1, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySynStreamFrame;->associatedToStreamId:I

    .line 85
    return-void

    .line 80
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Associated-To-Stream-ID cannot be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setLast(Z)V
    .registers 2
    .param p1, "last"    # Z

    .line 104
    iput-boolean p1, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySynStreamFrame;->last:Z

    .line 105
    return-void
.end method

.method public setPriority(B)V
    .registers 5
    .param p1, "priority"    # B

    .line 92
    if-ltz p1, :cond_8

    const/4 v0, 0x7

    if-gt p1, v0, :cond_8

    .line 96
    iput-byte p1, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySynStreamFrame;->priority:B

    .line 97
    return-void

    .line 93
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Priority must be between 0 and 7 inclusive: "

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

    .line 55
    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySynStreamFrame;->setStreamId(I)V

    .line 56
    return-void
.end method

.method public setStreamId(I)V
    .registers 5
    .param p1, "streamId"    # I

    .line 59
    if-lez p1, :cond_5

    .line 63
    iput p1, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySynStreamFrame;->streamId:I

    .line 64
    return-void

    .line 60
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

.method public setUnidirectional(Z)V
    .registers 2
    .param p1, "unidirectional"    # Z

    .line 112
    iput-boolean p1, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySynStreamFrame;->unidirectional:Z

    .line 113
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    const-string v1, "(last: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySynStreamFrame;->isLast()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 121
    const-string v1, "; unidirectional: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySynStreamFrame;->isUnidirectional()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 123
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 124
    sget-object v1, Lorg/jboss/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    const-string v1, "--> Stream-ID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    iget v1, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySynStreamFrame;->streamId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    sget-object v1, Lorg/jboss/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    iget v1, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySynStreamFrame;->associatedToStreamId:I

    if-eqz v1, :cond_54

    .line 129
    const-string v1, "--> Associated-To-Stream-ID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    iget v1, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySynStreamFrame;->associatedToStreamId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    sget-object v1, Lorg/jboss/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    :cond_54
    const-string v1, "--> Priority = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    iget-byte v1, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySynStreamFrame;->priority:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    sget-object v1, Lorg/jboss/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    const-string v1, "--> Headers:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    sget-object v1, Lorg/jboss/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySynStreamFrame;->appendHeaders(Ljava/lang/StringBuilder;)V

    .line 141
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sget-object v2, Lorg/jboss/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 142
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
