.class public Lorg/ros/internal/message/field/MessageFieldType;
.super Ljava/lang/Object;
.source "MessageFieldType.java"

# interfaces
.implements Lorg/ros/internal/message/field/FieldType;


# instance fields
.field private final deserializer:Lorg/ros/message/MessageDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ros/message/MessageDeserializer<",
            "Lorg/ros/internal/message/Message;",
            ">;"
        }
    .end annotation
.end field

.field private final messageFactory:Lorg/ros/message/MessageFactory;

.field private final messageIdentifier:Lorg/ros/message/MessageIdentifier;

.field private final serializer:Lorg/ros/message/MessageSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ros/message/MessageSerializer<",
            "Lorg/ros/internal/message/Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/ros/message/MessageIdentifier;Lorg/ros/message/MessageFactory;)V
    .registers 4
    .param p1, "messageIdentifier"    # Lorg/ros/message/MessageIdentifier;
    .param p2, "messageFactory"    # Lorg/ros/message/MessageFactory;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/ros/internal/message/field/MessageFieldType;->messageIdentifier:Lorg/ros/message/MessageIdentifier;

    .line 41
    iput-object p2, p0, Lorg/ros/internal/message/field/MessageFieldType;->messageFactory:Lorg/ros/message/MessageFactory;

    .line 42
    new-instance v0, Lorg/ros/internal/message/DefaultMessageSerializer;

    invoke-direct {v0}, Lorg/ros/internal/message/DefaultMessageSerializer;-><init>()V

    iput-object v0, p0, Lorg/ros/internal/message/field/MessageFieldType;->serializer:Lorg/ros/message/MessageSerializer;

    .line 43
    new-instance v0, Lorg/ros/internal/message/DefaultMessageDeserializer;

    invoke-direct {v0, p1, p2}, Lorg/ros/internal/message/DefaultMessageDeserializer;-><init>(Lorg/ros/message/MessageIdentifier;Lorg/ros/message/MessageFactory;)V

    iput-object v0, p0, Lorg/ros/internal/message/field/MessageFieldType;->deserializer:Lorg/ros/message/MessageDeserializer;

    .line 44
    return-void
.end method


# virtual methods
.method public bridge synthetic deserialize(Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/Object;
    .registers 2

    .line 32
    invoke-virtual {p0, p1}, Lorg/ros/internal/message/field/MessageFieldType;->deserialize(Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/ros/internal/message/Message;

    move-result-object p1

    return-object p1
.end method

.method public deserialize(Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/ros/internal/message/Message;
    .registers 3
    .param p1, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 98
    iget-object v0, p0, Lorg/ros/internal/message/field/MessageFieldType;->deserializer:Lorg/ros/message/MessageDeserializer;

    invoke-interface {v0, p1}, Lorg/ros/message/MessageDeserializer;->deserialize(Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ros/internal/message/Message;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 122
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 123
    return v0

    .line 124
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 125
    return v1

    .line 126
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 127
    return v1

    .line 128
    :cond_13
    move-object v2, p1

    check-cast v2, Lorg/ros/internal/message/field/MessageFieldType;

    .line 129
    .local v2, "other":Lorg/ros/internal/message/field/MessageFieldType;
    iget-object v3, p0, Lorg/ros/internal/message/field/MessageFieldType;->messageIdentifier:Lorg/ros/message/MessageIdentifier;

    if-nez v3, :cond_1f

    .line 130
    iget-object v3, v2, Lorg/ros/internal/message/field/MessageFieldType;->messageIdentifier:Lorg/ros/message/MessageIdentifier;

    if-eqz v3, :cond_2a

    .line 131
    return v1

    .line 132
    :cond_1f
    iget-object v3, p0, Lorg/ros/internal/message/field/MessageFieldType;->messageIdentifier:Lorg/ros/message/MessageIdentifier;

    iget-object v4, v2, Lorg/ros/internal/message/field/MessageFieldType;->messageIdentifier:Lorg/ros/message/MessageIdentifier;

    invoke-virtual {v3, v4}, Lorg/ros/message/MessageIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 133
    return v1

    .line 134
    :cond_2a
    return v0
.end method

.method public getDefaultValue()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .line 67
    invoke-virtual {p0}, Lorg/ros/internal/message/field/MessageFieldType;->getMessageFactory()Lorg/ros/message/MessageFactory;

    move-result-object v0

    iget-object v1, p0, Lorg/ros/internal/message/field/MessageFieldType;->messageIdentifier:Lorg/ros/message/MessageIdentifier;

    invoke-virtual {v1}, Lorg/ros/message/MessageIdentifier;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/ros/message/MessageFactory;->newFromType(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getJavaTypeName()Ljava/lang/String;
    .registers 5

    .line 77
    const-string v0, "%s.%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/ros/internal/message/field/MessageFieldType;->messageIdentifier:Lorg/ros/message/MessageIdentifier;

    invoke-virtual {v2}, Lorg/ros/message/MessageIdentifier;->getPackage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/ros/internal/message/field/MessageFieldType;->messageIdentifier:Lorg/ros/message/MessageIdentifier;

    invoke-virtual {v2}, Lorg/ros/message/MessageIdentifier;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMd5String()Ljava/lang/String;
    .registers 2

    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMessageFactory()Lorg/ros/message/MessageFactory;
    .registers 2

    .line 47
    iget-object v0, p0, Lorg/ros/internal/message/field/MessageFieldType;->messageFactory:Lorg/ros/message/MessageFactory;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 87
    iget-object v0, p0, Lorg/ros/internal/message/field/MessageFieldType;->messageIdentifier:Lorg/ros/message/MessageIdentifier;

    invoke-virtual {v0}, Lorg/ros/message/MessageIdentifier;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 2

    .line 82
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public hashCode()I
    .registers 5

    .line 114
    const/16 v0, 0x1f

    .line 115
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 116
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/ros/internal/message/field/MessageFieldType;->messageIdentifier:Lorg/ros/message/MessageIdentifier;

    if-nez v3, :cond_b

    const/4 v3, 0x0

    goto :goto_11

    :cond_b
    iget-object v3, p0, Lorg/ros/internal/message/field/MessageFieldType;->messageIdentifier:Lorg/ros/message/MessageIdentifier;

    invoke-virtual {v3}, Lorg/ros/message/MessageIdentifier;->hashCode()I

    move-result v3

    :goto_11
    add-int/2addr v2, v3

    .line 117
    .end local v1    # "result":I
    .local v2, "result":I
    return v2
.end method

.method public newConstantValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/ros/internal/message/field/Field;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)",
            "Lorg/ros/internal/message/field/Field;"
        }
    .end annotation

    .line 57
    .local p2, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public newVariableList(Ljava/lang/String;I)Lorg/ros/internal/message/field/Field;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "size"    # I

    .line 62
    invoke-static {p0, p1}, Lorg/ros/internal/message/field/ListField;->newVariable(Lorg/ros/internal/message/field/FieldType;Ljava/lang/String;)Lorg/ros/internal/message/field/ListField;

    move-result-object v0

    return-object v0
.end method

.method public newVariableValue(Ljava/lang/String;)Lorg/ros/internal/message/field/Field;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 52
    invoke-static {p0, p1}, Lorg/ros/internal/message/field/ValueField;->newVariable(Lorg/ros/internal/message/field/FieldType;Ljava/lang/String;)Lorg/ros/internal/message/field/ValueField;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic parseFromString(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 32
    invoke-virtual {p0, p1}, Lorg/ros/internal/message/field/MessageFieldType;->parseFromString(Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public parseFromString(Ljava/lang/String;)Ljava/lang/Void;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 104
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public serialize(Ljava/lang/Object;Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .registers 5
    .param p2, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lorg/jboss/netty/buffer/ChannelBuffer;",
            ")V"
        }
    .end annotation

    .line 92
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/ros/internal/message/field/MessageFieldType;->serializer:Lorg/ros/message/MessageSerializer;

    move-object v1, p1

    check-cast v1, Lorg/ros/internal/message/Message;

    invoke-interface {v0, v1, p2}, Lorg/ros/message/MessageSerializer;->serialize(Ljava/lang/Object;Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 93
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MessageField<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ros/internal/message/field/MessageFieldType;->messageIdentifier:Lorg/ros/message/MessageIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
