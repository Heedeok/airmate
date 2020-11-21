.class public Lorg/ros/internal/message/field/MessageFields;
.super Ljava/lang/Object;
.source "MessageFields.java"


# instance fields
.field private final fields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/ros/internal/message/field/Field;",
            ">;"
        }
    .end annotation
.end field

.field private final getters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/ros/internal/message/field/Field;",
            ">;"
        }
    .end annotation
.end field

.field private final orderedFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/ros/internal/message/field/Field;",
            ">;"
        }
    .end annotation
.end field

.field private final setters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/ros/internal/message/field/Field;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/ros/internal/message/context/MessageContext;)V
    .registers 7
    .param p1, "messageContext"    # Lorg/ros/internal/message/context/MessageContext;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/internal/message/field/MessageFields;->fields:Ljava/util/Map;

    .line 41
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/internal/message/field/MessageFields;->setters:Ljava/util/Map;

    .line 42
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/internal/message/field/MessageFields;->getters:Ljava/util/Map;

    .line 43
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/internal/message/field/MessageFields;->orderedFields:Ljava/util/List;

    .line 44
    invoke-virtual {p1}, Lorg/ros/internal/message/context/MessageContext;->getFieldNames()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_54

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 45
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lorg/ros/internal/message/context/MessageContext;->getFieldFactory(Ljava/lang/String;)Lorg/ros/internal/message/field/FieldFactory;

    move-result-object v2

    invoke-interface {v2}, Lorg/ros/internal/message/field/FieldFactory;->create()Lorg/ros/internal/message/field/Field;

    move-result-object v2

    .line 46
    .local v2, "field":Lorg/ros/internal/message/field/Field;
    iget-object v3, p0, Lorg/ros/internal/message/field/MessageFields;->fields:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v3, p0, Lorg/ros/internal/message/field/MessageFields;->getters:Ljava/util/Map;

    invoke-virtual {p1, v1}, Lorg/ros/internal/message/context/MessageContext;->getFieldGetterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v3, p0, Lorg/ros/internal/message/field/MessageFields;->setters:Ljava/util/Map;

    invoke-virtual {p1, v1}, Lorg/ros/internal/message/context/MessageContext;->getFieldSetterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v3, p0, Lorg/ros/internal/message/field/MessageFields;->orderedFields:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "field":Lorg/ros/internal/message/field/Field;
    goto :goto_23

    .line 51
    :cond_54
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 97
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 98
    return v0

    .line 99
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 100
    return v1

    .line 101
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 102
    return v1

    .line 103
    :cond_13
    move-object v2, p1

    check-cast v2, Lorg/ros/internal/message/field/MessageFields;

    .line 104
    .local v2, "other":Lorg/ros/internal/message/field/MessageFields;
    iget-object v3, p0, Lorg/ros/internal/message/field/MessageFields;->fields:Ljava/util/Map;

    if-nez v3, :cond_1f

    .line 105
    iget-object v3, v2, Lorg/ros/internal/message/field/MessageFields;->fields:Ljava/util/Map;

    if-eqz v3, :cond_2a

    .line 106
    return v1

    .line 107
    :cond_1f
    iget-object v3, p0, Lorg/ros/internal/message/field/MessageFields;->fields:Ljava/util/Map;

    iget-object v4, v2, Lorg/ros/internal/message/field/MessageFields;->fields:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 108
    return v1

    .line 109
    :cond_2a
    iget-object v3, p0, Lorg/ros/internal/message/field/MessageFields;->orderedFields:Ljava/util/List;

    if-nez v3, :cond_33

    .line 110
    iget-object v3, v2, Lorg/ros/internal/message/field/MessageFields;->orderedFields:Ljava/util/List;

    if-eqz v3, :cond_3e

    .line 111
    return v1

    .line 112
    :cond_33
    iget-object v3, p0, Lorg/ros/internal/message/field/MessageFields;->orderedFields:Ljava/util/List;

    iget-object v4, v2, Lorg/ros/internal/message/field/MessageFields;->orderedFields:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3e

    .line 113
    return v1

    .line 114
    :cond_3e
    return v0
.end method

.method public getField(Ljava/lang/String;)Lorg/ros/internal/message/field/Field;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lorg/ros/internal/message/field/MessageFields;->fields:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ros/internal/message/field/Field;

    return-object v0
.end method

.method public getFieldValue(Ljava/lang/String;)Ljava/lang/Object;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;

    .line 70
    iget-object v0, p0, Lorg/ros/internal/message/field/MessageFields;->fields:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ros/internal/message/field/Field;

    .line 71
    .local v0, "field":Lorg/ros/internal/message/field/Field;
    if-eqz v0, :cond_f

    .line 72
    invoke-virtual {v0}, Lorg/ros/internal/message/field/Field;->getValue()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 74
    :cond_f
    new-instance v1, Lorg/ros/exception/RosMessageRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Uknown field: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/ros/exception/RosMessageRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
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

    .line 66
    iget-object v0, p0, Lorg/ros/internal/message/field/MessageFields;->orderedFields:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getGetterField(Ljava/lang/String;)Lorg/ros/internal/message/field/Field;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 62
    iget-object v0, p0, Lorg/ros/internal/message/field/MessageFields;->getters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ros/internal/message/field/Field;

    return-object v0
.end method

.method public getSetterField(Ljava/lang/String;)Lorg/ros/internal/message/field/Field;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lorg/ros/internal/message/field/MessageFields;->setters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ros/internal/message/field/Field;

    return-object v0
.end method

.method public hashCode()I
    .registers 6

    .line 88
    const/16 v0, 0x1f

    .line 89
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 90
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/ros/internal/message/field/MessageFields;->fields:Ljava/util/Map;

    const/4 v4, 0x0

    if-nez v3, :cond_c

    const/4 v3, 0x0

    goto :goto_12

    :cond_c
    iget-object v3, p0, Lorg/ros/internal/message/field/MessageFields;->fields:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->hashCode()I

    move-result v3

    :goto_12
    add-int/2addr v2, v3

    .line 91
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Lorg/ros/internal/message/field/MessageFields;->orderedFields:Ljava/util/List;

    if-nez v3, :cond_1a

    goto :goto_20

    :cond_1a
    iget-object v3, p0, Lorg/ros/internal/message/field/MessageFields;->orderedFields:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v4

    :goto_20
    add-int/2addr v1, v4

    .line 92
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public setFieldValue(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lorg/ros/internal/message/field/MessageFields;->fields:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ros/internal/message/field/Field;

    .line 79
    .local v0, "field":Lorg/ros/internal/message/field/Field;
    if-eqz v0, :cond_e

    .line 80
    invoke-virtual {v0, p2}, Lorg/ros/internal/message/field/Field;->setValue(Ljava/lang/Object;)V

    .line 84
    return-void

    .line 82
    :cond_e
    new-instance v1, Lorg/ros/exception/RosMessageRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Uknown field: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/ros/exception/RosMessageRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
