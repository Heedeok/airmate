.class Lorg/ros/internal/message/MessageImpl;
.super Ljava/lang/Object;
.source "MessageImpl.java"

# interfaces
.implements Lorg/ros/internal/message/RawMessage;
.implements Lorg/ros/internal/message/GetInstance;


# instance fields
.field private final messageContext:Lorg/ros/internal/message/context/MessageContext;

.field private final messageFields:Lorg/ros/internal/message/field/MessageFields;


# direct methods
.method public constructor <init>(Lorg/ros/internal/message/context/MessageContext;)V
    .registers 3
    .param p1, "messageContext"    # Lorg/ros/internal/message/context/MessageContext;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/ros/internal/message/MessageImpl;->messageContext:Lorg/ros/internal/message/context/MessageContext;

    .line 41
    new-instance v0, Lorg/ros/internal/message/field/MessageFields;

    invoke-direct {v0, p1}, Lorg/ros/internal/message/field/MessageFields;-><init>(Lorg/ros/internal/message/context/MessageContext;)V

    iput-object v0, p0, Lorg/ros/internal/message/MessageImpl;->messageFields:Lorg/ros/internal/message/field/MessageFields;

    .line 42
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 469
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 470
    return v0

    .line 471
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 472
    return v1

    .line 473
    :cond_8
    instance-of v2, p1, Lorg/ros/internal/message/GetInstance;

    if-nez v2, :cond_d

    .line 474
    return v1

    .line 475
    :cond_d
    move-object v2, p1

    check-cast v2, Lorg/ros/internal/message/GetInstance;

    invoke-interface {v2}, Lorg/ros/internal/message/GetInstance;->getInstance()Ljava/lang/Object;

    move-result-object p1

    .line 476
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1f

    .line 477
    return v1

    .line 478
    :cond_1f
    move-object v2, p1

    check-cast v2, Lorg/ros/internal/message/MessageImpl;

    .line 479
    .local v2, "other":Lorg/ros/internal/message/MessageImpl;
    iget-object v3, p0, Lorg/ros/internal/message/MessageImpl;->messageContext:Lorg/ros/internal/message/context/MessageContext;

    if-nez v3, :cond_2b

    .line 480
    iget-object v3, v2, Lorg/ros/internal/message/MessageImpl;->messageContext:Lorg/ros/internal/message/context/MessageContext;

    if-eqz v3, :cond_36

    .line 481
    return v1

    .line 482
    :cond_2b
    iget-object v3, p0, Lorg/ros/internal/message/MessageImpl;->messageContext:Lorg/ros/internal/message/context/MessageContext;

    iget-object v4, v2, Lorg/ros/internal/message/MessageImpl;->messageContext:Lorg/ros/internal/message/context/MessageContext;

    invoke-virtual {v3, v4}, Lorg/ros/internal/message/context/MessageContext;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_36

    .line 483
    return v1

    .line 484
    :cond_36
    iget-object v3, p0, Lorg/ros/internal/message/MessageImpl;->messageFields:Lorg/ros/internal/message/field/MessageFields;

    if-nez v3, :cond_3f

    .line 485
    iget-object v3, v2, Lorg/ros/internal/message/MessageImpl;->messageFields:Lorg/ros/internal/message/field/MessageFields;

    if-eqz v3, :cond_4a

    .line 486
    return v1

    .line 487
    :cond_3f
    iget-object v3, p0, Lorg/ros/internal/message/MessageImpl;->messageFields:Lorg/ros/internal/message/field/MessageFields;

    iget-object v4, v2, Lorg/ros/internal/message/MessageImpl;->messageFields:Lorg/ros/internal/message/field/MessageFields;

    invoke-virtual {v3, v4}, Lorg/ros/internal/message/field/MessageFields;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4a

    .line 488
    return v1

    .line 489
    :cond_4a
    return v0
.end method

.method public getBool(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 89
    iget-object v0, p0, Lorg/ros/internal/message/MessageImpl;->messageFields:Lorg/ros/internal/message/field/MessageFields;

    invoke-virtual {v0, p1}, Lorg/ros/internal/message/field/MessageFields;->getFieldValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getBoolArray(Ljava/lang/String;)[Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 94
    iget-object v0, p0, Lorg/ros/internal/message/MessageImpl;->messageFields:Lorg/ros/internal/message/field/MessageFields;

    invoke-virtual {v0, p1}, Lorg/ros/internal/message/field/MessageFields;->getFieldValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    return-object v0
.end method

.method public getByte(Ljava/lang/String;)B
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 400
    iget-object v0, p0, Lorg/ros/internal/message/MessageImpl;->messageFields:Lorg/ros/internal/message/field/MessageFields;

    invoke-virtual {v0, p1}, Lorg/ros/internal/message/field/MessageFields;->getFieldValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    return v0
.end method

.method public getByteArray(Ljava/lang/String;)[B
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 430
    iget-object v0, p0, Lorg/ros/internal/message/MessageImpl;->messageFields:Lorg/ros/internal/message/field/MessageFields;

    invoke-virtual {v0, p1}, Lorg/ros/internal/message/field/MessageFields;->getFieldValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getChannelBuffer(Ljava/lang/String;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 440
    iget-object v0, p0, Lorg/ros/internal/message/MessageImpl;->messageFields:Lorg/ros/internal/message/field/MessageFields;

    invoke-virtual {v0, p1}, Lorg/ros/internal/message/field/MessageFields;->getFieldValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/buffer/ChannelBuffer;

    return-object v0
.end method

.method public getChar(Ljava/lang/String;)S
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 405
    iget-object v0, p0, Lorg/ros/internal/message/MessageImpl;->messageFields:Lorg/ros/internal/message/field/MessageFields;

    invoke-virtual {v0, p1}, Lorg/ros/internal/message/field/MessageFields;->getFieldValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    return v0
.end method

.method public getCharArray(Ljava/lang/String;)[S
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 435
    iget-object v0, p0, Lorg/ros/internal/message/MessageImpl;->messageFields:Lorg/ros/internal/message/field/MessageFields;

    invoke-virtual {v0, p1}, Lorg/ros/internal/message/field/MessageFields;->getFieldValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    return-object v0
.end method

.method public getDefinition()Ljava/lang/String;
    .registers 2

    .line 79
    iget-object v0, p0, Lorg/ros/internal/message/MessageImpl;->messageContext:Lorg/ros/internal/message/context/MessageContext;

    invoke-virtual {v0}, Lorg/ros/internal/message/context/MessageContext;->getDefinition()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDuration(Ljava/lang/String;)Lorg/ros/message/Duration;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 99
    iget-object v0, p0, Lorg/ros/internal/message/MessageImpl;->messageFields:Lorg/ros/internal/message/field/MessageFields;

    invoke-virtual {v0, p1}, Lorg/ros/internal/message/field/MessageFields;->getFieldValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ros/message/Duration;

    return-object v0
.end method

.method public getDurationList(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/ros/message/Duration;",
            ">;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lorg/ros/internal/message/MessageImpl;->messageFields:Lorg/ros/internal/message/field/MessageFields;

    invoke-virtual {v0, p1}, Lorg/ros/internal/message/field/MessageFields;->getFieldValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getFields()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/ros/internal/message/field/Field;",
            ">;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lorg/ros/internal/message/MessageImpl;->messageFields:Lorg/ros/internal/message/field/MessageFields;

    invoke-virtual {v0}, Lorg/ros/internal/message/field/MessageFields;->getFields()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFloat32(Ljava/lang/String;)F
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 110
    iget-object v0, p0, Lorg/ros/internal/message/MessageImpl;->messageFields:Lorg/ros/internal/message/field/MessageFields;

    invoke-virtual {v0, p1}, Lorg/ros/internal/message/field/MessageFields;->getFieldValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getFloat32Array(Ljava/lang/String;)[F
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 115
    iget-object v0, p0, Lorg/ros/internal/message/MessageImpl;->messageFields:Lorg/ros/internal/message/field/MessageFields;

    invoke-virtual {v0, p1}, Lorg/ros/internal/message/field/MessageFields;->getFieldValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    return-object v0
.end method

.method public getFloat64(Ljava/lang/String;)D
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 120
    iget-object v0, p0, Lorg/ros/internal/message/MessageImpl;->messageFields:Lorg/ros/internal/message/field/MessageFields;

    invoke-virtual {v0, p1}, Lorg/ros/internal/message/field/MessageFields;->getFieldValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat64Array(Ljava/lang/String;)[D
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 125
    iget-object v0, p0, Lorg/ros/internal/message/MessageImpl;->messageFields:Lorg/ros/internal/message/field/MessageFields;

    invoke-virtual {v0, p1}, Lorg/ros/internal/message/field/MessageFields;->getFieldValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public getIdentifier()Lorg/ros/message/MessageIdentifier;
    .registers 2

    .line 59
    iget-object v0, p0, Lorg/ros/internal/message/MessageImpl;->messageContext:Lorg/ros/internal/message/context/MessageContext;

    invoke-virtual {v0}, Lorg/ros/internal/message/context/MessageContext;->getMessageIdentifer()Lorg/ros/message/MessageIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public getInstance()Ljava/lang/Object;
    .registers 1

    .line 450
    return-object p0
.end method

.method public getInt16(Ljava/lang/String;)S
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 130
    iget-object v0, p0, Lorg/ros/internal/message/MessageImpl;->messageFields:Lorg/ros/internal/message/field/MessageFields;

    invoke-virtual {v0, p1}, Lorg/ros/internal/message/field/MessageFields;->getFieldValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    return v0
.end method

.method public getInt16Array(Ljava/lang/String;)[S
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 135
    iget-object v0, p0, Lorg/ros/internal/message/MessageImpl;->messageFields:Lorg/ros/internal/message/field/MessageFields;

    invoke-virtual {v0, p1}, Lorg/ros/internal/message/field/MessageFields;->getFieldValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    return-object v0
.end method

.method public getInt32(Ljava/lang/String;)I
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 140
    iget-object v0, p0, Lorg/ros/internal/message/MessageImpl;->messageFields:Lorg/ros/internal/message/field/MessageFields;

    invoke-virtual {v0, p1}, Lorg/ros/internal/message/field/MessageFields;->getFieldValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getInt32Array(Ljava/lang/String;)[I
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 145
    iget-object v0, p0, Lorg/ros/internal/message/MessageImpl;->messageFields:Lorg/ros/internal/message/field/MessageFields;

    invoke-virtual {v0, p1}, Lorg/ros/internal/message/field/MessageFields;->getFieldValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public getInt64(Ljava/lang/String;)J
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 150
    iget-object v0, p0, Lorg/ros/internal/message/MessageImpl;->messageFields:Lorg/ros/internal/message/field/MessageFields;

    invoke-virtual {v0, p1}, Lorg/ros/internal/message/field/MessageFields;->getFieldValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getInt64Array(Ljava/lang/String;)[J
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 155
    iget-object v0, p0, Lorg/ros/internal/message/MessageImpl;->messageFields:Lorg/ros/internal/message/field/MessageFields;

    invoke-virtual {v0, p1}, Lorg/ros/internal/message/field/MessageFields;->getFieldValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    return-object v0
.end method

.method public getInt8(Ljava/lang/String;)B
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 160
    iget-object v0, p0, Lorg/ros/internal/message/MessageImpl;->messageFields:Lorg/ros/internal/message/field/MessageFields;

    invoke-virtual {v0, p1}, Lorg/ros/internal/message/field/MessageFields;->getFieldValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    return v0
.end method

.method public getInt8Array(Ljava/lang/String;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 165
    iget-object v0, p0, Lorg/ros/internal/message/MessageImpl;->messageFields:Lorg/ros/internal/message/field/MessageFields;

    invoke-virtual {v0, p1}, Lorg/ros/internal/message/field/MessageFields;->getFieldValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/buffer/ChannelBuffer;

    return-object v0
.end method

.method public getMessage(Ljava/lang/String;)Lorg/ros/internal/message/Message;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/ros/internal/message/Message;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lorg/ros/internal/message/MessageImpl;->messageFields:Lorg/ros/internal/message/field/MessageFields;

    invoke-virtual {v0, p1}, Lorg/ros/internal/message/field/MessageFields;->getField(Ljava/lang/String;)Lorg/ros/internal/message/field/Field;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ros/internal/message/field/Field;->getType()Lorg/ros/internal/message/field/FieldType;

    move-result-object v0

    instance-of v0, v0, Lorg/ros/internal/message/field/MessageFieldType;

    if-eqz v0, :cond_1b

    .line 171
    iget-object v0, p0, Lorg/ros/internal/message/MessageImpl;->messageFields:Lorg/ros/internal/message/field/MessageFields;

    invoke-virtual {v0, p1}, Lorg/ros/internal/message/field/MessageFields;->getField(Ljava/lang/String;)Lorg/ros/internal/message/field/Field;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ros/internal/message/field/Field;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ros/internal/message/Message;

    return-object v0

    .line 173
    :cond_1b
    new-instance v0, Lorg/ros/exception/RosMessageRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to access message field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/ros/exception/RosMessageRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMessageContext()Lorg/ros/internal/message/context/MessageContext;
    .registers 2

    .line 45
    iget-object v0, p0, Lorg/ros/internal/message/MessageImpl;->messageContext:Lorg/ros/internal/message/context/MessageContext;

    return-object v0
.end method

.method public getMessageFields()Lorg/ros/internal/message/field/MessageFields;
    .registers 2

    .line 49
    iget-object v0, p0, Lorg/ros/internal/message/MessageImpl;->messageFields:Lorg/ros/internal/message/field/MessageFields;

    return-object v0
.end method

.method public getMessageList(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/ros/internal/message/Message;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lorg/ros/internal/message/MessageImpl;->messageFields:Lorg/ros/internal/message/field/MessageFields;

    invoke-virtual {v0, p1}, Lorg/ros/internal/message/field/MessageFields;->getField(Ljava/lang/String;)Lorg/ros/internal/message/field/Field;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ros/internal/message/field/Field;->getType()Lorg/ros/internal/message/field/FieldType;

    move-result-object v0

    instance-of v0, v0, Lorg/ros/internal/message/field/MessageFieldType;

    if-eqz v0, :cond_1b

    .line 179
    iget-object v0, p0, Lorg/ros/internal/message/MessageImpl;->messageFields:Lorg/ros/internal/message/field/MessageFields;

    invoke-virtual {v0, p1}, Lorg/ros/internal/message/field/MessageFields;->getField(Ljava/lang/String;)Lorg/ros/internal/message/field/Field;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ros/internal/message/field/Field;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0

    .line 181
    :cond_1b
    new-instance v0, Lorg/ros/exception/RosMessageRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to access list field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/ros/exception/RosMessageRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 74
    iget-object v0, p0, Lorg/ros/internal/message/MessageImpl;->messageContext:Lorg/ros/internal/message/context/MessageContext;

    invoke-virtual {v0}, Lorg/ros/internal/message/context/MessageContext;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackage()Ljava/lang/String;
    .registers 2

    .line 69
    iget-object v0, p0, Lorg/ros/internal/message/MessageImpl;->messageContext:Lorg/ros/internal/message/context/MessageContext;

    invoke-virtual {v0}, Lorg/ros/internal/message/context/MessageContext;->getPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 186
    iget-object v0, p0, Lorg/ros/internal/message/MessageImpl;->messageFields:Lorg/ros/internal/message/field/MessageFields;

    invoke-virtual {v0, p1}, Lorg/ros/internal/message/field/MessageFields;->getFieldValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getStringList(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lorg/ros/internal/message/MessageImpl;->messageFields:Lorg/ros/internal/message/field/MessageFields;

    invoke-virtual {v0, p1}, Lorg/ros/internal/message/field/MessageFields;->getFieldValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getTime(Ljava/lang/String;)Lorg/ros/message/Time;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 197
    iget-object v0, p0, Lorg/ros/internal/message/MessageImpl;->messageFields:Lorg/ros/internal/message/field/MessageFields;

    invoke-virtual {v0, p1}, Lorg/ros/internal/message/field/MessageFields;->getFieldValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ros/message/Time;

    return-object v0
.end method

.method public getTimeList(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/ros/message/Time;",
            ">;"
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lorg/ros/internal/message/MessageImpl;->messageFields:Lorg/ros/internal/message/field/MessageFields;

    invoke-virtual {v0, p1}, Lorg/ros/internal/message/field/MessageFields;->getFieldValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .line 64
    iget-object v0, p0, Lorg/ros/internal/message/MessageImpl;->messageContext:Lorg/ros/internal/message/context/MessageContext;

    invoke-virtual {v0}, Lorg/ros/internal/message/context/MessageContext;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUInt16(Ljava/lang/String;)S
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 208
    iget-object v0, p0, Lorg/ros/internal/message/MessageImpl;->messageFields:Lorg/ros/internal/message/field/MessageFields;

    invoke-virtual {v0, p1}, Lorg/ros/internal/message/field/MessageFields;->getFieldValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    return v0
.end method

.method public getUInt16Array(Ljava/lang/String;)[S
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 213
    iget-object v0, p0, Lorg/ros/internal/message/MessageImpl;->messageFields:Lorg/ros/internal/message/field/MessageFields;

    invoke-virtual {v0, p1}, Lorg/ros/internal/message/field/MessageFields;->getFieldValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    return-object v0
.end method

.method public getUInt32(Ljava/lang/String;)I
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 218
    iget-object v0, p0, Lorg/ros/internal/message/MessageImpl;->messageFields:Lorg/ros/internal/message/field/MessageFields;

    invoke-virtual {v0, p1}, Lorg/ros/internal/message/field/MessageFields;->getFieldValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getUInt32Array(Ljava/lang/String;)[I
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 223
    iget-object v0, p0, Lorg/ros/internal/message/MessageImpl;->messageFields:Lorg/ros/internal/message/field/MessageFields;

    invoke-virtual {v0, p1}, Lorg/ros/internal/message/field/MessageFields;->getFieldValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public getUInt64(Ljava/lang/String;)J
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 228
    iget-object v0, p0, Lorg/ros/internal/message/MessageImpl;->messageFields:Lorg/ros/internal/message/field/MessageFields;

    invoke-virtual {v0, p1}, Lorg/ros/internal/message/field/MessageFields;->getFieldValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getUInt64Array(Ljava/lang/String;)[J
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 233
    iget-object v0, p0, Lorg/ros/internal/message/MessageImpl;->messageFields:Lorg/ros/internal/message/field/MessageFields;

    invoke-virtual {v0, p1}, Lorg/ros/internal/message/field/MessageFields;->getFieldValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    return-object v0
.end method

.method public getUInt8(Ljava/lang/String;)S
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 238
    iget-object v0, p0, Lorg/ros/internal/message/MessageImpl;->messageFields:Lorg/ros/internal/message/field/MessageFields;

    invoke-virtual {v0, p1}, Lorg/ros/internal/message/field/MessageFields;->getFieldValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    return v0
.end method

.method public getUInt8Array(Ljava/lang/String;)[S
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 243
    iget-object v0, p0, Lorg/ros/internal/message/MessageImpl;->messageFields:Lorg/ros/internal/message/field/MessageFields;

    invoke-virtual {v0, p1}, Lorg/ros/internal/message/field/MessageFields;->getFieldValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    return-object v0
.end method

.method public hashCode()I
    .registers 6

    .line 460
    const/16 v0, 0x1f

    .line 461
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 462
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/ros/internal/message/MessageImpl;->messageContext:Lorg/ros/internal/message/context/MessageContext;

    const/4 v4, 0x0

    if-nez v3, :cond_c

    const/4 v3, 0x0

    goto :goto_12

    :cond_c
    iget-object v3, p0, Lorg/ros/internal/message/MessageImpl;->messageContext:Lorg/ros/internal/message/context/MessageContext;

    invoke-virtual {v3}, Lorg/ros/internal/message/context/MessageContext;->hashCode()I

    move-result v3

    :goto_12
    add-int/2addr v2, v3

    .line 463
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Lorg/ros/internal/message/MessageImpl;->messageFields:Lorg/ros/internal/message/field/MessageFields;

    if-nez v3, :cond_1a

    goto :goto_20

    :cond_1a
    iget-object v3, p0, Lorg/ros/internal/message/MessageImpl;->messageFields:Lorg/ros/internal/message/field/MessageFields;

    invoke-virtual {v3}, Lorg/ros/internal/message/field/MessageFields;->hashCode()I

    move-result v4

    :goto_20
    add-int/2addr v1, v4

    .line 464
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public setBool(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 248
    iget-object v0, p0, Lorg/ros/internal/message/MessageImpl;->messageFields:Lorg/ros/internal/message/field/MessageFields;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/ros/internal/message/field/MessageFields;->setFieldValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 249
    return-void
.end method

.method public setBoolArray(Ljava/lang/String;[Z)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [Z

    .line 253
    iget-object v0, p0, Lorg/ros/internal/message/MessageImpl;->messageFields:Lorg/ros/internal/message/field/MessageFields;

    invoke-virtual {v0, p1, p2}, Lorg/ros/internal/message/field/MessageFields;->setFieldValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 254
    return-void
.end method

.method public setByte(Ljava/lang/String;B)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # B

    .line 410
    iget-object v0, p0, Lorg/ros/internal/message/MessageImpl;->messageFields:Lorg/ros/internal/message/field/MessageFields;

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/ros/internal/message/field/MessageFields;->setFieldValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 411
    return-void
.end method

.method public setByteArray(Ljava/lang/String;[B)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .line 420
    iget-object v0, p0, Lorg/ros/internal/message/MessageImpl;->messageFields:Lorg/ros/internal/message/field/MessageFields;

    invoke-virtual {v0, p1, p2}, Lorg/ros/internal/message/field/MessageFields;->setFieldValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 421
    return-void
.end method

.method public setChannelBuffer(Ljava/lang/String;Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 445
    iget-object v0, p0, Lorg/ros/internal/message/MessageImpl;->messageFields:Lorg/ros/internal/message/field/MessageFields;

    invoke-virtual {v0, p1, p2}, Lorg/ros/internal/message/field/MessageFields;->setFieldValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 446
    return-void
.end method

.method public setChar(Ljava/lang/String;S)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # S

    .line 415
    iget-object v0, p0, Lorg/ros/internal/message/MessageImpl;->messageFields:Lorg/ros/internal/message/field/MessageFields;

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/ros/internal/message/field/MessageFields;->setFieldValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 416
    return-void
.end method

.method public setCharArray(Ljava/lang/String;[S)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [S

    .line 425
    iget-object v0, p0, Lorg/ros/internal/message/MessageImpl;->messageFields:Lorg/ros/internal/message/field/MessageFields;

    invoke-virtual {v0, p1, p2}, Lorg/ros/internal/message/field/MessageFields;->setFieldValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 426
    return-void
.end method

.method public setDuration(Ljava/lang/String;Lorg/ros/message/Duration;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Lorg/ros/message/Duration;

    .line 263
    iget-object v0, p0, Lorg/ros/internal/message/MessageImpl;->messageFields:Lorg/ros/internal/message/field/MessageFields;

    invoke-virtual {v0, p1, p2}, Lorg/ros/internal/message/field/MessageFields;->setFieldValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 264
    return-void
.end method

.method public setDurationList(Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/ros/message/Duration;",
            ">;)V"
        }
    .end annotation

    .line 258
    .local p2, "value":Ljava/util/List;, "Ljava/util/List<Lorg/ros/message/Duration;>;"
    iget-object v0, p0, Lorg/ros/internal/message/MessageImpl;->messageFields:Lorg/ros/internal/message/field/MessageFields;

    invoke-virtual {v0, p1, p2}, Lorg/ros/internal/message/field/MessageFields;->setFieldValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 259
    return-void
.end method

.method public setFloat32(Ljava/lang/String;F)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F

    .line 268
    iget-object v0, p0, Lorg/ros/internal/message/MessageImpl;->messageFields:Lorg/ros/internal/message/field/MessageFields;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/ros/internal/message/field/MessageFields;->setFieldValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 269
    return-void
.end method

.method public setFloat32Array(Ljava/lang/String;[F)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [F

    .line 273
    iget-object v0, p0, Lorg/ros/internal/message/MessageImpl;->messageFields:Lorg/ros/internal/message/field/MessageFields;

    invoke-virtual {v0, p1, p2}, Lorg/ros/internal/message/field/MessageFields;->setFieldValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 274
    return-void
.end method

.method public setFloat64(Ljava/lang/String;D)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # D

    .line 278
    iget-object v0, p0, Lorg/ros/internal/message/MessageImpl;->messageFields:Lorg/ros/internal/message/field/MessageFields;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/ros/internal/message/field/MessageFields;->setFieldValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 279
    return-void
.end method

.method public setFloat64Array(Ljava/lang/String;[D)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [D

    .line 283
    iget-object v0, p0, Lorg/ros/internal/message/MessageImpl;->messageFields:Lorg/ros/internal/message/field/MessageFields;

    invoke-virtual {v0, p1, p2}, Lorg/ros/internal/message/field/MessageFields;->setFieldValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 284
    return-void
.end method

.method public setInt16(Ljava/lang/String;S)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # S

    .line 288
    iget-object v0, p0, Lorg/ros/internal/message/MessageImpl;->messageFields:Lorg/ros/internal/message/field/MessageFields;

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/ros/internal/message/field/MessageFields;->setFieldValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 289
    return-void
.end method

.method public setInt16Array(Ljava/lang/String;[S)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [S

    .line 293
    iget-object v0, p0, Lorg/ros/internal/message/MessageImpl;->messageFields:Lorg/ros/internal/message/field/MessageFields;

    invoke-virtual {v0, p1, p2}, Lorg/ros/internal/message/field/MessageFields;->setFieldValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 294
    return-void
.end method

.method public setInt32(Ljava/lang/String;I)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 298
    iget-object v0, p0, Lorg/ros/internal/message/MessageImpl;->messageFields:Lorg/ros/internal/message/field/MessageFields;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/ros/internal/message/field/MessageFields;->setFieldValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 299
    return-void
.end method

.method public setInt32Array(Ljava/lang/String;[I)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [I

    .line 303
    iget-object v0, p0, Lorg/ros/internal/message/MessageImpl;->messageFields:Lorg/ros/internal/message/field/MessageFields;

    invoke-virtual {v0, p1, p2}, Lorg/ros/internal/message/field/MessageFields;->setFieldValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 304
    return-void
.end method

.method public setInt64(Ljava/lang/String;J)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 308
    iget-object v0, p0, Lorg/ros/internal/message/MessageImpl;->messageFields:Lorg/ros/internal/message/field/MessageFields;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/ros/internal/message/field/MessageFields;->setFieldValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 309
    return-void
.end method

.method public setInt64Array(Ljava/lang/String;[J)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [J

    .line 313
    iget-object v0, p0, Lorg/ros/internal/message/MessageImpl;->messageFields:Lorg/ros/internal/message/field/MessageFields;

    invoke-virtual {v0, p1, p2}, Lorg/ros/internal/message/field/MessageFields;->setFieldValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 314
    return-void
.end method

.method public setInt8(Ljava/lang/String;B)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # B

    .line 318
    iget-object v0, p0, Lorg/ros/internal/message/MessageImpl;->messageFields:Lorg/ros/internal/message/field/MessageFields;

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/ros/internal/message/field/MessageFields;->setFieldValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 319
    return-void
.end method

.method public setInt8Array(Ljava/lang/String;[B)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .line 323
    iget-object v0, p0, Lorg/ros/internal/message/MessageImpl;->messageFields:Lorg/ros/internal/message/field/MessageFields;

    invoke-virtual {v0, p1, p2}, Lorg/ros/internal/message/field/MessageFields;->setFieldValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 324
    return-void
.end method

.method public setMessage(Ljava/lang/String;Lorg/ros/internal/message/Message;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Lorg/ros/internal/message/Message;

    .line 329
    iget-object v0, p0, Lorg/ros/internal/message/MessageImpl;->messageFields:Lorg/ros/internal/message/field/MessageFields;

    invoke-virtual {v0, p1, p2}, Lorg/ros/internal/message/field/MessageFields;->setFieldValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 330
    return-void
.end method

.method public setMessageList(Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/ros/internal/message/Message;",
            ">;)V"
        }
    .end annotation

    .line 335
    .local p2, "value":Ljava/util/List;, "Ljava/util/List<Lorg/ros/internal/message/Message;>;"
    iget-object v0, p0, Lorg/ros/internal/message/MessageImpl;->messageFields:Lorg/ros/internal/message/field/MessageFields;

    invoke-virtual {v0, p1, p2}, Lorg/ros/internal/message/field/MessageFields;->setFieldValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 336
    return-void
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 340
    iget-object v0, p0, Lorg/ros/internal/message/MessageImpl;->messageFields:Lorg/ros/internal/message/field/MessageFields;

    invoke-virtual {v0, p1, p2}, Lorg/ros/internal/message/field/MessageFields;->setFieldValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 341
    return-void
.end method

.method public setStringList(Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 345
    .local p2, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/ros/internal/message/MessageImpl;->messageFields:Lorg/ros/internal/message/field/MessageFields;

    invoke-virtual {v0, p1, p2}, Lorg/ros/internal/message/field/MessageFields;->setFieldValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 346
    return-void
.end method

.method public setTime(Ljava/lang/String;Lorg/ros/message/Time;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Lorg/ros/message/Time;

    .line 350
    iget-object v0, p0, Lorg/ros/internal/message/MessageImpl;->messageFields:Lorg/ros/internal/message/field/MessageFields;

    invoke-virtual {v0, p1, p2}, Lorg/ros/internal/message/field/MessageFields;->setFieldValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 351
    return-void
.end method

.method public setTimeList(Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/ros/message/Time;",
            ">;)V"
        }
    .end annotation

    .line 355
    .local p2, "value":Ljava/util/List;, "Ljava/util/List<Lorg/ros/message/Time;>;"
    iget-object v0, p0, Lorg/ros/internal/message/MessageImpl;->messageFields:Lorg/ros/internal/message/field/MessageFields;

    invoke-virtual {v0, p1, p2}, Lorg/ros/internal/message/field/MessageFields;->setFieldValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 356
    return-void
.end method

.method public setUInt16(Ljava/lang/String;S)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # S

    .line 360
    iget-object v0, p0, Lorg/ros/internal/message/MessageImpl;->messageFields:Lorg/ros/internal/message/field/MessageFields;

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/ros/internal/message/field/MessageFields;->setFieldValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 361
    return-void
.end method

.method public setUInt16Array(Ljava/lang/String;[S)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [S

    .line 365
    iget-object v0, p0, Lorg/ros/internal/message/MessageImpl;->messageFields:Lorg/ros/internal/message/field/MessageFields;

    invoke-virtual {v0, p1, p2}, Lorg/ros/internal/message/field/MessageFields;->setFieldValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 366
    return-void
.end method

.method public setUInt32(Ljava/lang/String;I)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 370
    iget-object v0, p0, Lorg/ros/internal/message/MessageImpl;->messageFields:Lorg/ros/internal/message/field/MessageFields;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/ros/internal/message/field/MessageFields;->setFieldValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 371
    return-void
.end method

.method public setUInt32Array(Ljava/lang/String;[I)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [I

    .line 375
    iget-object v0, p0, Lorg/ros/internal/message/MessageImpl;->messageFields:Lorg/ros/internal/message/field/MessageFields;

    invoke-virtual {v0, p1, p2}, Lorg/ros/internal/message/field/MessageFields;->setFieldValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 376
    return-void
.end method

.method public setUInt64(Ljava/lang/String;J)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 380
    iget-object v0, p0, Lorg/ros/internal/message/MessageImpl;->messageFields:Lorg/ros/internal/message/field/MessageFields;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/ros/internal/message/field/MessageFields;->setFieldValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 381
    return-void
.end method

.method public setUInt64Array(Ljava/lang/String;[J)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [J

    .line 385
    iget-object v0, p0, Lorg/ros/internal/message/MessageImpl;->messageFields:Lorg/ros/internal/message/field/MessageFields;

    invoke-virtual {v0, p1, p2}, Lorg/ros/internal/message/field/MessageFields;->setFieldValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 386
    return-void
.end method

.method public setUInt8(Ljava/lang/String;B)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # B

    .line 390
    iget-object v0, p0, Lorg/ros/internal/message/MessageImpl;->messageFields:Lorg/ros/internal/message/field/MessageFields;

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/ros/internal/message/field/MessageFields;->setFieldValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 391
    return-void
.end method

.method public setUInt8Array(Ljava/lang/String;[B)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .line 395
    iget-object v0, p0, Lorg/ros/internal/message/MessageImpl;->messageFields:Lorg/ros/internal/message/field/MessageFields;

    invoke-virtual {v0, p1, p2}, Lorg/ros/internal/message/field/MessageFields;->setFieldValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 396
    return-void
.end method

.method public toRawMessage()Lorg/ros/internal/message/RawMessage;
    .registers 1

    .line 54
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 455
    const-string v0, "MessageImpl<%s>"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/ros/internal/message/MessageImpl;->getType()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
