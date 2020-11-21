.class Lorg/ros/internal/node/service/ServiceServerResponse;
.super Ljava/lang/Object;
.source "ServiceServerResponse.java"


# instance fields
.field private errorCode:I

.field private message:Lorg/jboss/netty/buffer/ChannelBuffer;

.field private messageLength:I


# direct methods
.method constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .registers 2

    .line 35
    iget v0, p0, Lorg/ros/internal/node/service/ServiceServerResponse;->errorCode:I

    return v0
.end method

.method public getMessage()Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 2

    .line 43
    iget-object v0, p0, Lorg/ros/internal/node/service/ServiceServerResponse;->message:Lorg/jboss/netty/buffer/ChannelBuffer;

    return-object v0
.end method

.method public getMessageLength()I
    .registers 2

    .line 51
    iget v0, p0, Lorg/ros/internal/node/service/ServiceServerResponse;->messageLength:I

    return v0
.end method

.method public setErrorCode(I)V
    .registers 2
    .param p1, "errorCode"    # I

    .line 31
    iput p1, p0, Lorg/ros/internal/node/service/ServiceServerResponse;->errorCode:I

    .line 32
    return-void
.end method

.method public setMessage(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .registers 2
    .param p1, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 39
    iput-object p1, p0, Lorg/ros/internal/node/service/ServiceServerResponse;->message:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 40
    return-void
.end method

.method public setMessageLength(I)V
    .registers 2
    .param p1, "messageLength"    # I

    .line 47
    iput p1, p0, Lorg/ros/internal/node/service/ServiceServerResponse;->messageLength:I

    .line 48
    return-void
.end method
