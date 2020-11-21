.class public Lorg/ros/internal/message/MessageInterfaceBuilder;
.super Ljava/lang/Object;
.source "MessageInterfaceBuilder.java"


# instance fields
.field private addConstantsAndMethods:Z

.field private interfaceName:Ljava/lang/String;

.field private messageDeclaration:Lorg/ros/message/MessageDeclaration;

.field private nestedContent:Ljava/lang/String;

.field private packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private appendConstants(Lorg/ros/internal/message/context/MessageContext;Ljava/lang/StringBuilder;)V
    .registers 12
    .param p1, "messageContext"    # Lorg/ros/internal/message/context/MessageContext;
    .param p2, "builder"    # Ljava/lang/StringBuilder;

    .line 157
    new-instance v0, Lorg/ros/internal/message/field/MessageFields;

    invoke-direct {v0, p1}, Lorg/ros/internal/message/field/MessageFields;-><init>(Lorg/ros/internal/message/context/MessageContext;)V

    .line 158
    .local v0, "messageFields":Lorg/ros/internal/message/field/MessageFields;
    invoke-virtual {v0}, Lorg/ros/internal/message/field/MessageFields;->getFields()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_59

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ros/internal/message/field/Field;

    .line 159
    .local v2, "field":Lorg/ros/internal/message/field/Field;
    invoke-virtual {v2}, Lorg/ros/internal/message/field/Field;->isConstant()Z

    move-result v3

    if-eqz v3, :cond_58

    .line 160
    invoke-virtual {v2}, Lorg/ros/internal/message/field/Field;->getType()Lorg/ros/internal/message/field/FieldType;

    move-result-object v3

    instance-of v3, v3, Lorg/ros/internal/message/field/PrimitiveFieldType;

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 163
    invoke-virtual {v2}, Lorg/ros/internal/message/field/Field;->getType()Lorg/ros/internal/message/field/FieldType;

    move-result-object v3

    .line 164
    .local v3, "fieldType":Lorg/ros/internal/message/field/FieldType;
    move-object v4, v3

    check-cast v4, Lorg/ros/internal/message/field/PrimitiveFieldType;

    invoke-virtual {v2}, Lorg/ros/internal/message/field/Field;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lorg/ros/internal/message/MessageInterfaceBuilder;->getJavaValue(Lorg/ros/internal/message/field/PrimitiveFieldType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 165
    .local v4, "value":Ljava/lang/String;
    const-string v5, "  static final %s %s = %s;\n"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-interface {v3}, Lorg/ros/internal/message/field/FieldType;->getJavaTypeName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    .line 166
    invoke-virtual {v2}, Lorg/ros/internal/message/field/Field;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aput-object v4, v6, v7

    .line 165
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .end local v2    # "field":Lorg/ros/internal/message/field/Field;
    .end local v3    # "fieldType":Lorg/ros/internal/message/field/FieldType;
    .end local v4    # "value":Ljava/lang/String;
    :cond_58
    goto :goto_d

    .line 169
    :cond_59
    return-void
.end method

.method private appendSettersAndGetters(Lorg/ros/internal/message/context/MessageContext;Ljava/lang/StringBuilder;)V
    .registers 15
    .param p1, "messageContext"    # Lorg/ros/internal/message/context/MessageContext;
    .param p2, "builder"    # Ljava/lang/StringBuilder;

    .line 172
    new-instance v0, Lorg/ros/internal/message/field/MessageFields;

    invoke-direct {v0, p1}, Lorg/ros/internal/message/field/MessageFields;-><init>(Lorg/ros/internal/message/context/MessageContext;)V

    .line 173
    .local v0, "messageFields":Lorg/ros/internal/message/field/MessageFields;
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    .line 174
    .local v1, "getters":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v0}, Lorg/ros/internal/message/field/MessageFields;->getFields()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_64

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/ros/internal/message/field/Field;

    .line 175
    .local v3, "field":Lorg/ros/internal/message/field/Field;
    invoke-virtual {v3}, Lorg/ros/internal/message/field/Field;->isConstant()Z

    move-result v4

    if-eqz v4, :cond_24

    .line 176
    goto :goto_11

    .line 178
    :cond_24
    invoke-virtual {v3}, Lorg/ros/internal/message/field/Field;->getJavaTypeName()Ljava/lang/String;

    move-result-object v4

    .line 179
    .local v4, "type":Ljava/lang/String;
    invoke-virtual {v3}, Lorg/ros/internal/message/field/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/ros/internal/message/context/MessageContext;->getFieldGetterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 180
    .local v5, "getter":Ljava/lang/String;
    invoke-virtual {v3}, Lorg/ros/internal/message/field/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lorg/ros/internal/message/context/MessageContext;->getFieldSetterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 181
    .local v6, "setter":Ljava/lang/String;
    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3f

    .line 186
    goto :goto_11

    .line 188
    :cond_3f
    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 189
    const-string v7, "  %s %s();\n"

    const/4 v8, 0x2

    new-array v9, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v4, v9, v10

    const/4 v11, 0x1

    aput-object v5, v9, v11

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    const-string v7, "  void %s(%s value);\n"

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v6, v8, v10

    aput-object v4, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .end local v3    # "field":Lorg/ros/internal/message/field/Field;
    .end local v4    # "type":Ljava/lang/String;
    .end local v5    # "getter":Ljava/lang/String;
    .end local v6    # "setter":Ljava/lang/String;
    goto :goto_11

    .line 192
    :cond_64
    return-void
.end method

.method private static escapeJava(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;

    .line 49
    invoke-static {p0}, Lorg/apache/commons/lang/StringEscapeUtils;->escapeJava(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\/"

    const-string v2, "/"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\'"

    const-string v2, "\\\'"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getJavaValue(Lorg/ros/internal/message/field/PrimitiveFieldType;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "primitiveFieldType"    # Lorg/ros/internal/message/field/PrimitiveFieldType;
    .param p2, "value"    # Ljava/lang/String;

    .line 132
    sget-object v0, Lorg/ros/internal/message/MessageInterfaceBuilder$1;->$SwitchMap$org$ros$internal$message$field$PrimitiveFieldType:[I

    invoke-virtual {p1}, Lorg/ros/internal/message/field/PrimitiveFieldType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_6c

    .line 152
    new-instance v0, Lorg/ros/exception/RosMessageRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported PrimitiveFieldType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/ros/exception/RosMessageRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :pswitch_22
    return-object p2

    .line 138
    :pswitch_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/ros/internal/message/MessageInterfaceBuilder;->escapeJava(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 136
    :pswitch_3e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 134
    :pswitch_50
    const-string v0, "0"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_62

    const-string v0, "false"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_62

    const/4 v0, 0x1

    goto :goto_63

    :cond_62
    const/4 v0, 0x0

    :goto_63
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_50
        :pswitch_3e
        :pswitch_23
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
    .end packed-switch
.end method


# virtual methods
.method public build(Lorg/ros/message/MessageFactory;)Ljava/lang/String;
    .registers 8
    .param p1, "messageFactory"    # Lorg/ros/message/MessageFactory;

    .line 104
    iget-object v0, p0, Lorg/ros/internal/message/MessageInterfaceBuilder;->messageDeclaration:Lorg/ros/message/MessageDeclaration;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v0, p0, Lorg/ros/internal/message/MessageInterfaceBuilder;->interfaceName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/ros/internal/message/MessageInterfaceBuilder;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_24

    .line 108
    const-string v1, "package %s;\n\n"

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/ros/internal/message/MessageInterfaceBuilder;->packageName:Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    :cond_24
    const-string v1, "public interface %s extends org.ros.internal.message.Message {\n"

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/ros/internal/message/MessageInterfaceBuilder;->interfaceName:Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    const-string v1, "  static final java.lang.String _TYPE = \"%s\";\n"

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/ros/internal/message/MessageInterfaceBuilder;->messageDeclaration:Lorg/ros/message/MessageDeclaration;

    .line 113
    invoke-virtual {v5}, Lorg/ros/message/MessageDeclaration;->getType()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    .line 112
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    const-string v1, "  static final java.lang.String _DEFINITION = \"%s\";\n"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/ros/internal/message/MessageInterfaceBuilder;->messageDeclaration:Lorg/ros/message/MessageDeclaration;

    .line 115
    invoke-virtual {v4}, Lorg/ros/message/MessageDeclaration;->getDefinition()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/ros/internal/message/MessageInterfaceBuilder;->escapeJava(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 114
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget-boolean v1, p0, Lorg/ros/internal/message/MessageInterfaceBuilder;->addConstantsAndMethods:Z

    if-eqz v1, :cond_72

    .line 117
    new-instance v1, Lorg/ros/internal/message/context/MessageContextProvider;

    invoke-direct {v1, p1}, Lorg/ros/internal/message/context/MessageContextProvider;-><init>(Lorg/ros/message/MessageFactory;)V

    .line 118
    .local v1, "messageContextProvider":Lorg/ros/internal/message/context/MessageContextProvider;
    iget-object v2, p0, Lorg/ros/internal/message/MessageInterfaceBuilder;->messageDeclaration:Lorg/ros/message/MessageDeclaration;

    invoke-virtual {v1, v2}, Lorg/ros/internal/message/context/MessageContextProvider;->get(Lorg/ros/message/MessageDeclaration;)Lorg/ros/internal/message/context/MessageContext;

    move-result-object v2

    .line 119
    .local v2, "messageContext":Lorg/ros/internal/message/context/MessageContext;
    invoke-direct {p0, v2, v0}, Lorg/ros/internal/message/MessageInterfaceBuilder;->appendConstants(Lorg/ros/internal/message/context/MessageContext;Ljava/lang/StringBuilder;)V

    .line 120
    invoke-direct {p0, v2, v0}, Lorg/ros/internal/message/MessageInterfaceBuilder;->appendSettersAndGetters(Lorg/ros/internal/message/context/MessageContext;Ljava/lang/StringBuilder;)V

    .line 122
    .end local v1    # "messageContextProvider":Lorg/ros/internal/message/context/MessageContextProvider;
    .end local v2    # "messageContext":Lorg/ros/internal/message/context/MessageContext;
    :cond_72
    iget-object v1, p0, Lorg/ros/internal/message/MessageInterfaceBuilder;->nestedContent:Ljava/lang/String;

    if-eqz v1, :cond_80

    .line 123
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    iget-object v1, p0, Lorg/ros/internal/message/MessageInterfaceBuilder;->nestedContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    :cond_80
    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getAddConstantsAndMethods()Z
    .registers 2

    .line 88
    iget-boolean v0, p0, Lorg/ros/internal/message/MessageInterfaceBuilder;->addConstantsAndMethods:Z

    return v0
.end method

.method public getInterfaceName()Ljava/lang/String;
    .registers 2

    .line 78
    iget-object v0, p0, Lorg/ros/internal/message/MessageInterfaceBuilder;->interfaceName:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageDeclaration()Lorg/ros/message/MessageDeclaration;
    .registers 2

    .line 53
    iget-object v0, p0, Lorg/ros/internal/message/MessageInterfaceBuilder;->messageDeclaration:Lorg/ros/message/MessageDeclaration;

    return-object v0
.end method

.method public getNestedContent()Ljava/lang/String;
    .registers 2

    .line 96
    iget-object v0, p0, Lorg/ros/internal/message/MessageInterfaceBuilder;->nestedContent:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 63
    iget-object v0, p0, Lorg/ros/internal/message/MessageInterfaceBuilder;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public setAddConstantsAndMethods(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 92
    iput-boolean p1, p0, Lorg/ros/internal/message/MessageInterfaceBuilder;->addConstantsAndMethods:Z

    .line 93
    return-void
.end method

.method public setInterfaceName(Ljava/lang/String;)Lorg/ros/internal/message/MessageInterfaceBuilder;
    .registers 2
    .param p1, "interfaceName"    # Ljava/lang/String;

    .line 82
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iput-object p1, p0, Lorg/ros/internal/message/MessageInterfaceBuilder;->interfaceName:Ljava/lang/String;

    .line 84
    return-object p0
.end method

.method public setMessageDeclaration(Lorg/ros/message/MessageDeclaration;)Lorg/ros/internal/message/MessageInterfaceBuilder;
    .registers 2
    .param p1, "messageDeclaration"    # Lorg/ros/message/MessageDeclaration;

    .line 57
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iput-object p1, p0, Lorg/ros/internal/message/MessageInterfaceBuilder;->messageDeclaration:Lorg/ros/message/MessageDeclaration;

    .line 59
    return-object p0
.end method

.method public setNestedContent(Ljava/lang/String;)V
    .registers 2
    .param p1, "nestedContent"    # Ljava/lang/String;

    .line 100
    iput-object p1, p0, Lorg/ros/internal/message/MessageInterfaceBuilder;->nestedContent:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)Lorg/ros/internal/message/MessageInterfaceBuilder;
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 73
    iput-object p1, p0, Lorg/ros/internal/message/MessageInterfaceBuilder;->packageName:Ljava/lang/String;

    .line 74
    return-object p0
.end method
