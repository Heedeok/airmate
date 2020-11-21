.class public abstract Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrame;
.super Ljava/lang/Object;
.source "WebSocketFrame.java"


# instance fields
.field private binaryData:Lorg/jboss/netty/buffer/ChannelBuffer;

.field private finalFragment:Z

.field private rsv:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrame;->finalFragment:Z

    return-void
.end method


# virtual methods
.method public getBinaryData()Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 2

    .line 45
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrame;->binaryData:Lorg/jboss/netty/buffer/ChannelBuffer;

    return-object v0
.end method

.method public getRsv()I
    .registers 2

    .line 71
    iget v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrame;->rsv:I

    return v0
.end method

.method public isFinalFragment()Z
    .registers 2

    .line 60
    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrame;->finalFragment:Z

    return v0
.end method

.method public setBinaryData(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .registers 2
    .param p1, "binaryData"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 52
    iput-object p1, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrame;->binaryData:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 53
    return-void
.end method

.method public setFinalFragment(Z)V
    .registers 2
    .param p1, "finalFragment"    # Z

    .line 64
    iput-boolean p1, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrame;->finalFragment:Z

    .line 65
    return-void
.end method

.method public setRsv(I)V
    .registers 2
    .param p1, "rsv"    # I

    .line 75
    iput p1, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrame;->rsv:I

    .line 76
    return-void
.end method
