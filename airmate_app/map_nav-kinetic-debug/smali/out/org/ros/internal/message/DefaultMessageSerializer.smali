.class public Lorg/ros/internal/message/DefaultMessageSerializer;
.super Ljava/lang/Object;
.source "DefaultMessageSerializer.java"

# interfaces
.implements Lorg/ros/message/MessageSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ros/message/MessageSerializer<",
        "Lorg/ros/internal/message/Message;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic serialize(Ljava/lang/Object;Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .registers 3

    .line 26
    check-cast p1, Lorg/ros/internal/message/Message;

    invoke-virtual {p0, p1, p2}, Lorg/ros/internal/message/DefaultMessageSerializer;->serialize(Lorg/ros/internal/message/Message;Lorg/jboss/netty/buffer/ChannelBuffer;)V

    return-void
.end method

.method public serialize(Lorg/ros/internal/message/Message;Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .registers 6
    .param p1, "message"    # Lorg/ros/internal/message/Message;
    .param p2, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 30
    invoke-interface {p1}, Lorg/ros/internal/message/Message;->toRawMessage()Lorg/ros/internal/message/RawMessage;

    move-result-object v0

    invoke-interface {v0}, Lorg/ros/internal/message/RawMessage;->getFields()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ros/internal/message/field/Field;

    .line 31
    .local v1, "field":Lorg/ros/internal/message/field/Field;
    invoke-virtual {v1}, Lorg/ros/internal/message/field/Field;->isConstant()Z

    move-result v2

    if-nez v2, :cond_21

    .line 32
    invoke-virtual {v1, p2}, Lorg/ros/internal/message/field/Field;->serialize(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 34
    .end local v1    # "field":Lorg/ros/internal/message/field/Field;
    :cond_21
    goto :goto_c

    .line 35
    :cond_22
    return-void
.end method
