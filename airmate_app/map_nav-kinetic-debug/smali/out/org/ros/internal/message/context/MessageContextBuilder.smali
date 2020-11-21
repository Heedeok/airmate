.class Lorg/ros/internal/message/context/MessageContextBuilder;
.super Ljava/lang/Object;
.source "MessageContextBuilder.java"

# interfaces
.implements Lorg/ros/internal/message/definition/MessageDefinitionParser$MessageDefinitionVisitor;


# instance fields
.field private final messageContext:Lorg/ros/internal/message/context/MessageContext;


# direct methods
.method public constructor <init>(Lorg/ros/internal/message/context/MessageContext;)V
    .registers 2
    .param p1, "context"    # Lorg/ros/internal/message/context/MessageContext;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/ros/internal/message/context/MessageContextBuilder;->messageContext:Lorg/ros/internal/message/context/MessageContext;

    .line 38
    return-void
.end method

.method private getFieldType(Ljava/lang/String;)Lorg/ros/internal/message/field/FieldType;
    .registers 5
    .param p1, "type"    # Ljava/lang/String;

    .line 41
    iget-object v0, p0, Lorg/ros/internal/message/context/MessageContextBuilder;->messageContext:Lorg/ros/internal/message/context/MessageContext;

    invoke-virtual {v0}, Lorg/ros/internal/message/context/MessageContext;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Message definitions may not be self-referential."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 44
    invoke-static {p1}, Lorg/ros/internal/message/field/PrimitiveFieldType;->existsFor(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 45
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/ros/internal/message/field/PrimitiveFieldType;->valueOf(Ljava/lang/String;)Lorg/ros/internal/message/field/PrimitiveFieldType;

    move-result-object v0

    goto :goto_2f

    .line 47
    :cond_20
    new-instance v0, Lorg/ros/internal/message/field/MessageFieldType;

    .line 48
    invoke-static {p1}, Lorg/ros/message/MessageIdentifier;->of(Ljava/lang/String;)Lorg/ros/message/MessageIdentifier;

    move-result-object v1

    iget-object v2, p0, Lorg/ros/internal/message/context/MessageContextBuilder;->messageContext:Lorg/ros/internal/message/context/MessageContext;

    invoke-virtual {v2}, Lorg/ros/internal/message/context/MessageContext;->getMessageFactory()Lorg/ros/message/MessageFactory;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/ros/internal/message/field/MessageFieldType;-><init>(Lorg/ros/message/MessageIdentifier;Lorg/ros/message/MessageFactory;)V

    .line 50
    .local v0, "fieldType":Lorg/ros/internal/message/field/FieldType;
    :goto_2f
    return-object v0
.end method


# virtual methods
.method public constantValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 77
    invoke-direct {p0, p1}, Lorg/ros/internal/message/context/MessageContextBuilder;->getFieldType(Ljava/lang/String;)Lorg/ros/internal/message/field/FieldType;

    move-result-object v0

    .line 78
    .local v0, "fieldType":Lorg/ros/internal/message/field/FieldType;
    iget-object v1, p0, Lorg/ros/internal/message/context/MessageContextBuilder;->messageContext:Lorg/ros/internal/message/context/MessageContext;

    new-instance v2, Lorg/ros/internal/message/context/MessageContextBuilder$3;

    invoke-direct {v2, p0, v0, p2, p3}, Lorg/ros/internal/message/context/MessageContextBuilder$3;-><init>(Lorg/ros/internal/message/context/MessageContextBuilder;Lorg/ros/internal/message/field/FieldType;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p2, v2}, Lorg/ros/internal/message/context/MessageContext;->addFieldFactory(Ljava/lang/String;Lorg/ros/internal/message/field/FieldFactory;)V

    .line 84
    return-void
.end method

.method public variableList(Ljava/lang/String;ILjava/lang/String;)V
    .registers 7
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "size"    # I
    .param p3, "name"    # Ljava/lang/String;

    .line 66
    invoke-direct {p0, p1}, Lorg/ros/internal/message/context/MessageContextBuilder;->getFieldType(Ljava/lang/String;)Lorg/ros/internal/message/field/FieldType;

    move-result-object v0

    .line 67
    .local v0, "fieldType":Lorg/ros/internal/message/field/FieldType;
    iget-object v1, p0, Lorg/ros/internal/message/context/MessageContextBuilder;->messageContext:Lorg/ros/internal/message/context/MessageContext;

    new-instance v2, Lorg/ros/internal/message/context/MessageContextBuilder$2;

    invoke-direct {v2, p0, v0, p3, p2}, Lorg/ros/internal/message/context/MessageContextBuilder$2;-><init>(Lorg/ros/internal/message/context/MessageContextBuilder;Lorg/ros/internal/message/field/FieldType;Ljava/lang/String;I)V

    invoke-virtual {v1, p3, v2}, Lorg/ros/internal/message/context/MessageContext;->addFieldFactory(Ljava/lang/String;Lorg/ros/internal/message/field/FieldFactory;)V

    .line 73
    return-void
.end method

.method public variableValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 55
    invoke-direct {p0, p1}, Lorg/ros/internal/message/context/MessageContextBuilder;->getFieldType(Ljava/lang/String;)Lorg/ros/internal/message/field/FieldType;

    move-result-object v0

    .line 56
    .local v0, "fieldType":Lorg/ros/internal/message/field/FieldType;
    iget-object v1, p0, Lorg/ros/internal/message/context/MessageContextBuilder;->messageContext:Lorg/ros/internal/message/context/MessageContext;

    new-instance v2, Lorg/ros/internal/message/context/MessageContextBuilder$1;

    invoke-direct {v2, p0, v0, p2}, Lorg/ros/internal/message/context/MessageContextBuilder$1;-><init>(Lorg/ros/internal/message/context/MessageContextBuilder;Lorg/ros/internal/message/field/FieldType;Ljava/lang/String;)V

    invoke-virtual {v1, p2, v2}, Lorg/ros/internal/message/context/MessageContext;->addFieldFactory(Ljava/lang/String;Lorg/ros/internal/message/field/FieldFactory;)V

    .line 62
    return-void
.end method
