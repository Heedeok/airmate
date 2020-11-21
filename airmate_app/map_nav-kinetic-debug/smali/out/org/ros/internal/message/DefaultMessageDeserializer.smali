.class public Lorg/ros/internal/message/DefaultMessageDeserializer;
.super Ljava/lang/Object;
.source "DefaultMessageDeserializer.java"

# interfaces
.implements Lorg/ros/message/MessageDeserializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/ros/message/MessageDeserializer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final messageFactory:Lorg/ros/message/MessageFactory;

.field private final messageIdentifier:Lorg/ros/message/MessageIdentifier;


# direct methods
.method public constructor <init>(Lorg/ros/message/MessageIdentifier;Lorg/ros/message/MessageFactory;)V
    .registers 3
    .param p1, "messageIdentifier"    # Lorg/ros/message/MessageIdentifier;
    .param p2, "messageFactory"    # Lorg/ros/message/MessageFactory;

    .line 34
    .local p0, "this":Lorg/ros/internal/message/DefaultMessageDeserializer;, "Lorg/ros/internal/message/DefaultMessageDeserializer<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/ros/internal/message/DefaultMessageDeserializer;->messageIdentifier:Lorg/ros/message/MessageIdentifier;

    .line 36
    iput-object p2, p0, Lorg/ros/internal/message/DefaultMessageDeserializer;->messageFactory:Lorg/ros/message/MessageFactory;

    .line 37
    return-void
.end method


# virtual methods
.method public deserialize(Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/Object;
    .registers 6
    .param p1, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/buffer/ChannelBuffer;",
            ")TT;"
        }
    .end annotation

    .line 42
    .local p0, "this":Lorg/ros/internal/message/DefaultMessageDeserializer;, "Lorg/ros/internal/message/DefaultMessageDeserializer<TT;>;"
    iget-object v0, p0, Lorg/ros/internal/message/DefaultMessageDeserializer;->messageFactory:Lorg/ros/message/MessageFactory;

    iget-object v1, p0, Lorg/ros/internal/message/DefaultMessageDeserializer;->messageIdentifier:Lorg/ros/message/MessageIdentifier;

    invoke-virtual {v1}, Lorg/ros/message/MessageIdentifier;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/ros/message/MessageFactory;->newFromType(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ros/internal/message/Message;

    .line 43
    .local v0, "message":Lorg/ros/internal/message/Message;
    invoke-interface {v0}, Lorg/ros/internal/message/Message;->toRawMessage()Lorg/ros/internal/message/RawMessage;

    move-result-object v1

    invoke-interface {v1}, Lorg/ros/internal/message/RawMessage;->getFields()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ros/internal/message/field/Field;

    .line 44
    .local v2, "field":Lorg/ros/internal/message/field/Field;
    invoke-virtual {v2}, Lorg/ros/internal/message/field/Field;->isConstant()Z

    move-result v3

    if-nez v3, :cond_2f

    .line 45
    invoke-virtual {v2, p1}, Lorg/ros/internal/message/field/Field;->deserialize(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 47
    .end local v2    # "field":Lorg/ros/internal/message/field/Field;
    :cond_2f
    goto :goto_1a

    .line 48
    :cond_30
    return-object v0
.end method
