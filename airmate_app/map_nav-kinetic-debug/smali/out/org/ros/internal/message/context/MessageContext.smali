.class public Lorg/ros/internal/message/context/MessageContext;
.super Ljava/lang/Object;
.source "MessageContext.java"


# instance fields
.field private final fieldFactories:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/ros/internal/message/field/FieldFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final fieldGetterNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final fieldNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final fieldSetterNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final messageDeclaration:Lorg/ros/message/MessageDeclaration;

.field private final messageFactory:Lorg/ros/message/MessageFactory;


# direct methods
.method public constructor <init>(Lorg/ros/message/MessageDeclaration;Lorg/ros/message/MessageFactory;)V
    .registers 4
    .param p1, "messageDeclaration"    # Lorg/ros/message/MessageDeclaration;
    .param p2, "messageFactory"    # Lorg/ros/message/MessageFactory;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/ros/internal/message/context/MessageContext;->messageDeclaration:Lorg/ros/message/MessageDeclaration;

    .line 49
    iput-object p2, p0, Lorg/ros/internal/message/context/MessageContext;->messageFactory:Lorg/ros/message/MessageFactory;

    .line 50
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/internal/message/context/MessageContext;->fieldFactories:Ljava/util/Map;

    .line 51
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/internal/message/context/MessageContext;->fieldGetterNames:Ljava/util/Map;

    .line 52
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/internal/message/context/MessageContext;->fieldSetterNames:Ljava/util/Map;

    .line 53
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/internal/message/context/MessageContext;->fieldNames:Ljava/util/List;

    .line 54
    return-void
.end method

.method private getJavaName(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p1, "name"    # Ljava/lang/String;

    .line 88
    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "parts":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .local v1, "fieldName":Ljava/lang/StringBuilder;
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_e
    if-ge v4, v2, :cond_34

    aget-object v5, v0, v4

    .line 91
    .local v5, "part":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x1

    invoke-virtual {v5, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .end local v5    # "part":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 93
    :cond_34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public addFieldFactory(Ljava/lang/String;Lorg/ros/internal/message/field/FieldFactory;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "fieldFactory"    # Lorg/ros/internal/message/field/FieldFactory;

    .line 81
    iget-object v0, p0, Lorg/ros/internal/message/context/MessageContext;->fieldFactories:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v0, p0, Lorg/ros/internal/message/context/MessageContext;->fieldGetterNames:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lorg/ros/internal/message/context/MessageContext;->getJavaName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lorg/ros/internal/message/context/MessageContext;->fieldSetterNames:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lorg/ros/internal/message/context/MessageContext;->getJavaName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Lorg/ros/internal/message/context/MessageContext;->fieldNames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 130
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 131
    return v0

    .line 132
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 133
    return v1

    .line 134
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 135
    return v1

    .line 136
    :cond_13
    move-object v2, p1

    check-cast v2, Lorg/ros/internal/message/context/MessageContext;

    .line 137
    .local v2, "other":Lorg/ros/internal/message/context/MessageContext;
    iget-object v3, p0, Lorg/ros/internal/message/context/MessageContext;->messageDeclaration:Lorg/ros/message/MessageDeclaration;

    if-nez v3, :cond_1f

    .line 138
    iget-object v3, v2, Lorg/ros/internal/message/context/MessageContext;->messageDeclaration:Lorg/ros/message/MessageDeclaration;

    if-eqz v3, :cond_2a

    .line 139
    return v1

    .line 140
    :cond_1f
    iget-object v3, p0, Lorg/ros/internal/message/context/MessageContext;->messageDeclaration:Lorg/ros/message/MessageDeclaration;

    iget-object v4, v2, Lorg/ros/internal/message/context/MessageContext;->messageDeclaration:Lorg/ros/message/MessageDeclaration;

    invoke-virtual {v3, v4}, Lorg/ros/message/MessageDeclaration;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 141
    return v1

    .line 142
    :cond_2a
    return v0
.end method

.method public getDefinition()Ljava/lang/String;
    .registers 2

    .line 77
    iget-object v0, p0, Lorg/ros/internal/message/context/MessageContext;->messageDeclaration:Lorg/ros/message/MessageDeclaration;

    invoke-virtual {v0}, Lorg/ros/message/MessageDeclaration;->getDefinition()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFieldFactory(Ljava/lang/String;)Lorg/ros/internal/message/field/FieldFactory;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 110
    iget-object v0, p0, Lorg/ros/internal/message/context/MessageContext;->fieldFactories:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ros/internal/message/field/FieldFactory;

    return-object v0
.end method

.method public getFieldGetterName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 102
    iget-object v0, p0, Lorg/ros/internal/message/context/MessageContext;->fieldGetterNames:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFieldNames()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lorg/ros/internal/message/context/MessageContext;->fieldNames:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFieldSetterName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 106
    iget-object v0, p0, Lorg/ros/internal/message/context/MessageContext;->fieldSetterNames:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getMessageFactory()Lorg/ros/message/MessageFactory;
    .registers 2

    .line 57
    iget-object v0, p0, Lorg/ros/internal/message/context/MessageContext;->messageFactory:Lorg/ros/message/MessageFactory;

    return-object v0
.end method

.method public getMessageIdentifer()Lorg/ros/message/MessageIdentifier;
    .registers 2

    .line 61
    iget-object v0, p0, Lorg/ros/internal/message/context/MessageContext;->messageDeclaration:Lorg/ros/message/MessageDeclaration;

    invoke-virtual {v0}, Lorg/ros/message/MessageDeclaration;->getMessageIdentifier()Lorg/ros/message/MessageIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 73
    iget-object v0, p0, Lorg/ros/internal/message/context/MessageContext;->messageDeclaration:Lorg/ros/message/MessageDeclaration;

    invoke-virtual {v0}, Lorg/ros/message/MessageDeclaration;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackage()Ljava/lang/String;
    .registers 2

    .line 69
    iget-object v0, p0, Lorg/ros/internal/message/context/MessageContext;->messageDeclaration:Lorg/ros/message/MessageDeclaration;

    invoke-virtual {v0}, Lorg/ros/message/MessageDeclaration;->getPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .line 65
    iget-object v0, p0, Lorg/ros/internal/message/context/MessageContext;->messageDeclaration:Lorg/ros/message/MessageDeclaration;

    invoke-virtual {v0}, Lorg/ros/message/MessageDeclaration;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasField(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lorg/ros/internal/message/context/MessageContext;->fieldFactories:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 5

    .line 122
    const/16 v0, 0x1f

    .line 123
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 124
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/ros/internal/message/context/MessageContext;->messageDeclaration:Lorg/ros/message/MessageDeclaration;

    if-nez v3, :cond_b

    const/4 v3, 0x0

    goto :goto_11

    :cond_b
    iget-object v3, p0, Lorg/ros/internal/message/context/MessageContext;->messageDeclaration:Lorg/ros/message/MessageDeclaration;

    invoke-virtual {v3}, Lorg/ros/message/MessageDeclaration;->hashCode()I

    move-result v3

    :goto_11
    add-int/2addr v2, v3

    .line 125
    .end local v1    # "result":I
    .local v2, "result":I
    return v2
.end method
