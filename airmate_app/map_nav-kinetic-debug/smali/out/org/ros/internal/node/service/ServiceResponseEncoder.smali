.class public final Lorg/ros/internal/node/service/ServiceResponseEncoder;
.super Lorg/jboss/netty/handler/codec/oneone/OneToOneEncoder;
.source "ServiceResponseEncoder.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/oneone/OneToOneEncoder;-><init>()V

    return-void
.end method


# virtual methods
.method protected encode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p3, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 32
    instance-of v0, p3, Lorg/ros/internal/node/service/ServiceServerResponse;

    if-eqz v0, :cond_21

    .line 33
    move-object v0, p3

    check-cast v0, Lorg/ros/internal/node/service/ServiceServerResponse;

    .line 34
    .local v0, "response":Lorg/ros/internal/node/service/ServiceServerResponse;
    invoke-static {}, Lorg/ros/internal/message/MessageBuffers;->dynamicBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    .line 35
    .local v1, "buffer":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-virtual {v0}, Lorg/ros/internal/node/service/ServiceServerResponse;->getErrorCode()I

    move-result v2

    invoke-interface {v1, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    .line 36
    invoke-virtual {v0}, Lorg/ros/internal/node/service/ServiceServerResponse;->getMessageLength()I

    move-result v2

    invoke-interface {v1, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeInt(I)V

    .line 37
    invoke-virtual {v0}, Lorg/ros/internal/node/service/ServiceServerResponse;->getMessage()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 38
    return-object v1

    .line 40
    .end local v0    # "response":Lorg/ros/internal/node/service/ServiceServerResponse;
    .end local v1    # "buffer":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_21
    return-object p3
.end method
