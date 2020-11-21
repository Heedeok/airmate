.class public Lorg/yaml/snakeyaml/representer/Representer;
.super Lorg/yaml/snakeyaml/representer/SafeRepresenter;
.source "Representer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/yaml/snakeyaml/representer/Representer$RepresentJavaBean;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 40
    invoke-direct {p0}, Lorg/yaml/snakeyaml/representer/SafeRepresenter;-><init>()V

    .line 41
    iget-object v0, p0, Lorg/yaml/snakeyaml/representer/Representer;->representers:Ljava/util/Map;

    new-instance v1, Lorg/yaml/snakeyaml/representer/Representer$RepresentJavaBean;

    invoke-direct {v1, p0}, Lorg/yaml/snakeyaml/representer/Representer$RepresentJavaBean;-><init>(Lorg/yaml/snakeyaml/representer/Representer;)V

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    return-void
.end method

.method private resetTag(Ljava/lang/Class;Lorg/yaml/snakeyaml/nodes/Node;)V
    .registers 5
    .param p2, "node"    # Lorg/yaml/snakeyaml/nodes/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/yaml/snakeyaml/nodes/Node;",
            ")V"
        }
    .end annotation

    .line 212
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    invoke-virtual {p2}, Lorg/yaml/snakeyaml/nodes/Node;->getTag()Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v0

    .line 213
    .local v0, "tag":Lorg/yaml/snakeyaml/nodes/Tag;
    invoke-virtual {v0, p1}, Lorg/yaml/snakeyaml/nodes/Tag;->matches(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 214
    const-class v1, Ljava/lang/Enum;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 215
    sget-object v1, Lorg/yaml/snakeyaml/nodes/Tag;->STR:Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-virtual {p2, v1}, Lorg/yaml/snakeyaml/nodes/Node;->setTag(Lorg/yaml/snakeyaml/nodes/Tag;)V

    goto :goto_1d

    .line 217
    :cond_18
    sget-object v1, Lorg/yaml/snakeyaml/nodes/Tag;->MAP:Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-virtual {p2, v1}, Lorg/yaml/snakeyaml/nodes/Node;->setTag(Lorg/yaml/snakeyaml/nodes/Tag;)V

    .line 220
    :cond_1d
    :goto_1d
    return-void
.end method


# virtual methods
.method public bridge synthetic addClassTag(Ljava/lang/Class;Ljava/lang/String;)Lorg/yaml/snakeyaml/nodes/Tag;
    .registers 4
    .param p1, "x0"    # Ljava/lang/Class;
    .param p2, "x1"    # Ljava/lang/String;

    .line 38
    invoke-super {p0, p1, p2}, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->addClassTag(Ljava/lang/Class;Ljava/lang/String;)Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addClassTag(Ljava/lang/Class;Lorg/yaml/snakeyaml/nodes/Tag;)Lorg/yaml/snakeyaml/nodes/Tag;
    .registers 4
    .param p1, "x0"    # Ljava/lang/Class;
    .param p2, "x1"    # Lorg/yaml/snakeyaml/nodes/Tag;

    .line 38
    invoke-super {p0, p1, p2}, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->addClassTag(Ljava/lang/Class;Lorg/yaml/snakeyaml/nodes/Tag;)Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v0

    return-object v0
.end method

.method protected checkGlobalTag(Lorg/yaml/snakeyaml/introspector/Property;Lorg/yaml/snakeyaml/nodes/Node;Ljava/lang/Object;)V
    .registers 15
    .param p1, "property"    # Lorg/yaml/snakeyaml/introspector/Property;
    .param p2, "node"    # Lorg/yaml/snakeyaml/nodes/Node;
    .param p3, "object"    # Ljava/lang/Object;

    .line 159
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/introspector/Property;->getActualTypeArguments()[Ljava/lang/Class;

    move-result-object v0

    .line 160
    .local v0, "arguments":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-eqz v0, :cond_d5

    .line 161
    invoke-virtual {p2}, Lorg/yaml/snakeyaml/nodes/Node;->getNodeId()Lorg/yaml/snakeyaml/nodes/NodeId;

    move-result-object v1

    sget-object v2, Lorg/yaml/snakeyaml/nodes/NodeId;->sequence:Lorg/yaml/snakeyaml/nodes/NodeId;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_61

    .line 163
    aget-object v1, v0, v3

    .line 164
    .local v1, "t":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    move-object v2, p2

    check-cast v2, Lorg/yaml/snakeyaml/nodes/SequenceNode;

    .line 166
    .local v2, "snode":Lorg/yaml/snakeyaml/nodes/SequenceNode;
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 167
    move-object v3, p3

    check-cast v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    goto :goto_29

    .line 170
    :cond_26
    move-object v3, p3

    check-cast v3, Ljava/lang/Iterable;

    .line 172
    .local v3, "memberList":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Object;>;"
    :goto_29
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 173
    .local v4, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    invoke-virtual {v2}, Lorg/yaml/snakeyaml/nodes/SequenceNode;->getValue()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_35
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/yaml/snakeyaml/nodes/Node;

    .line 174
    .local v6, "childNode":Lorg/yaml/snakeyaml/nodes/Node;
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 175
    .local v7, "member":Ljava/lang/Object;
    if-eqz v7, :cond_5e

    .line 176
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5e

    .line 177
    invoke-virtual {v6}, Lorg/yaml/snakeyaml/nodes/Node;->getNodeId()Lorg/yaml/snakeyaml/nodes/NodeId;

    move-result-object v8

    sget-object v9, Lorg/yaml/snakeyaml/nodes/NodeId;->mapping:Lorg/yaml/snakeyaml/nodes/NodeId;

    if-ne v8, v9, :cond_5e

    .line 178
    sget-object v8, Lorg/yaml/snakeyaml/nodes/Tag;->MAP:Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-virtual {v6, v8}, Lorg/yaml/snakeyaml/nodes/Node;->setTag(Lorg/yaml/snakeyaml/nodes/Tag;)V

    .line 181
    .end local v6    # "childNode":Lorg/yaml/snakeyaml/nodes/Node;
    .end local v7    # "member":Ljava/lang/Object;
    :cond_5e
    goto :goto_35

    .line 182
    .end local v1    # "t":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    .end local v2    # "snode":Lorg/yaml/snakeyaml/nodes/SequenceNode;
    .end local v3    # "memberList":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Object;>;"
    .end local v4    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_5f
    goto/16 :goto_d5

    :cond_61
    instance-of v1, p3, Ljava/util/Set;

    if-eqz v1, :cond_a6

    .line 183
    aget-object v1, v0, v3

    .line 184
    .local v1, "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v2, p2

    check-cast v2, Lorg/yaml/snakeyaml/nodes/MappingNode;

    .line 185
    .local v2, "mnode":Lorg/yaml/snakeyaml/nodes/MappingNode;
    invoke-virtual {v2}, Lorg/yaml/snakeyaml/nodes/MappingNode;->getValue()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 186
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/yaml/snakeyaml/nodes/NodeTuple;>;"
    move-object v4, p3

    check-cast v4, Ljava/util/Set;

    .line 187
    .local v4, "set":Ljava/util/Set;, "Ljava/util/Set<*>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5    # "i$":Ljava/util/Iterator;
    :goto_79
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 188
    .local v6, "member":Ljava/lang/Object;
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/yaml/snakeyaml/nodes/NodeTuple;

    .line 189
    .local v7, "tuple":Lorg/yaml/snakeyaml/nodes/NodeTuple;
    invoke-virtual {v7}, Lorg/yaml/snakeyaml/nodes/NodeTuple;->getKeyNode()Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v8

    .line 190
    .local v8, "keyNode":Lorg/yaml/snakeyaml/nodes/Node;
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a4

    .line 191
    invoke-virtual {v8}, Lorg/yaml/snakeyaml/nodes/Node;->getNodeId()Lorg/yaml/snakeyaml/nodes/NodeId;

    move-result-object v9

    sget-object v10, Lorg/yaml/snakeyaml/nodes/NodeId;->mapping:Lorg/yaml/snakeyaml/nodes/NodeId;

    if-ne v9, v10, :cond_a4

    .line 192
    sget-object v9, Lorg/yaml/snakeyaml/nodes/Tag;->MAP:Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-virtual {v8, v9}, Lorg/yaml/snakeyaml/nodes/Node;->setTag(Lorg/yaml/snakeyaml/nodes/Tag;)V

    .line 195
    .end local v6    # "member":Ljava/lang/Object;
    .end local v7    # "tuple":Lorg/yaml/snakeyaml/nodes/NodeTuple;
    .end local v8    # "keyNode":Lorg/yaml/snakeyaml/nodes/Node;
    :cond_a4
    goto :goto_79

    .line 196
    .end local v1    # "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "mnode":Lorg/yaml/snakeyaml/nodes/MappingNode;
    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/yaml/snakeyaml/nodes/NodeTuple;>;"
    .end local v4    # "set":Ljava/util/Set;, "Ljava/util/Set<*>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_a5
    goto :goto_d5

    :cond_a6
    instance-of v1, p3, Ljava/util/Map;

    if-eqz v1, :cond_d5

    .line 197
    aget-object v1, v0, v3

    .line 198
    .local v1, "keyType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x1

    aget-object v2, v0, v2

    .line 199
    .local v2, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v3, p2

    check-cast v3, Lorg/yaml/snakeyaml/nodes/MappingNode;

    .line 200
    .local v3, "mnode":Lorg/yaml/snakeyaml/nodes/MappingNode;
    invoke-virtual {v3}, Lorg/yaml/snakeyaml/nodes/MappingNode;->getValue()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_ba
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/yaml/snakeyaml/nodes/NodeTuple;

    .line 201
    .local v5, "tuple":Lorg/yaml/snakeyaml/nodes/NodeTuple;
    invoke-virtual {v5}, Lorg/yaml/snakeyaml/nodes/NodeTuple;->getKeyNode()Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v6

    invoke-direct {p0, v1, v6}, Lorg/yaml/snakeyaml/representer/Representer;->resetTag(Ljava/lang/Class;Lorg/yaml/snakeyaml/nodes/Node;)V

    .line 202
    invoke-virtual {v5}, Lorg/yaml/snakeyaml/nodes/NodeTuple;->getValueNode()Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v6

    invoke-direct {p0, v2, v6}, Lorg/yaml/snakeyaml/representer/Representer;->resetTag(Ljava/lang/Class;Lorg/yaml/snakeyaml/nodes/Node;)V

    goto :goto_ba

    .line 209
    .end local v1    # "keyType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "valueType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "mnode":Lorg/yaml/snakeyaml/nodes/MappingNode;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "tuple":Lorg/yaml/snakeyaml/nodes/NodeTuple;
    :cond_d5
    :goto_d5
    return-void
.end method

.method protected getProperties(Ljava/lang/Class;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Set<",
            "Lorg/yaml/snakeyaml/introspector/Property;",
            ">;"
        }
    .end annotation

    .line 231
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lorg/yaml/snakeyaml/representer/Representer;->getPropertyUtils()Lorg/yaml/snakeyaml/introspector/PropertyUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->getProperties(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTimeZone()Ljava/util/TimeZone;
    .registers 2

    .line 38
    invoke-super {p0}, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method protected representJavaBean(Ljava/util/Set;Ljava/lang/Object;)Lorg/yaml/snakeyaml/nodes/MappingNode;
    .registers 16
    .param p2, "javaBean"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/yaml/snakeyaml/introspector/Property;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/yaml/snakeyaml/nodes/MappingNode;"
        }
    .end annotation

    .line 65
    .local p1, "properties":Ljava/util/Set;, "Ljava/util/Set<Lorg/yaml/snakeyaml/introspector/Property;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 67
    .local v0, "value":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/nodes/NodeTuple;>;"
    iget-object v1, p0, Lorg/yaml/snakeyaml/representer/Representer;->classTags:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/yaml/snakeyaml/nodes/Tag;

    .line 68
    .local v1, "customTag":Lorg/yaml/snakeyaml/nodes/Tag;
    if-eqz v1, :cond_19

    move-object v2, v1

    goto :goto_22

    :cond_19
    new-instance v2, Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/yaml/snakeyaml/nodes/Tag;-><init>(Ljava/lang/Class;)V

    .line 70
    .local v2, "tag":Lorg/yaml/snakeyaml/nodes/Tag;
    :goto_22
    new-instance v3, Lorg/yaml/snakeyaml/nodes/MappingNode;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v0, v4}, Lorg/yaml/snakeyaml/nodes/MappingNode;-><init>(Lorg/yaml/snakeyaml/nodes/Tag;Ljava/util/List;Ljava/lang/Boolean;)V

    .line 71
    .local v3, "node":Lorg/yaml/snakeyaml/nodes/MappingNode;
    iget-object v5, p0, Lorg/yaml/snakeyaml/representer/Representer;->representedObjects:Ljava/util/Map;

    invoke-interface {v5, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const/4 v5, 0x1

    .line 73
    .local v5, "bestStyle":Z
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_32
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/yaml/snakeyaml/introspector/Property;

    .line 74
    .local v7, "property":Lorg/yaml/snakeyaml/introspector/Property;
    invoke-virtual {v7, p2}, Lorg/yaml/snakeyaml/introspector/Property;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 75
    .local v8, "memberValue":Ljava/lang/Object;
    if-nez v8, :cond_46

    move-object v9, v4

    goto :goto_52

    :cond_46
    iget-object v9, p0, Lorg/yaml/snakeyaml/representer/Representer;->classTags:Ljava/util/Map;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/yaml/snakeyaml/nodes/Tag;

    .line 77
    .local v9, "customPropertyTag":Lorg/yaml/snakeyaml/nodes/Tag;
    :goto_52
    invoke-virtual {p0, p2, v7, v8, v9}, Lorg/yaml/snakeyaml/representer/Representer;->representJavaBeanProperty(Ljava/lang/Object;Lorg/yaml/snakeyaml/introspector/Property;Ljava/lang/Object;Lorg/yaml/snakeyaml/nodes/Tag;)Lorg/yaml/snakeyaml/nodes/NodeTuple;

    move-result-object v10

    .line 79
    .local v10, "tuple":Lorg/yaml/snakeyaml/nodes/NodeTuple;
    if-nez v10, :cond_59

    .line 80
    goto :goto_32

    .line 82
    :cond_59
    invoke-virtual {v10}, Lorg/yaml/snakeyaml/nodes/NodeTuple;->getKeyNode()Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v11

    check-cast v11, Lorg/yaml/snakeyaml/nodes/ScalarNode;

    invoke-virtual {v11}, Lorg/yaml/snakeyaml/nodes/ScalarNode;->getStyle()Ljava/lang/Character;

    move-result-object v11

    if-eqz v11, :cond_66

    .line 83
    const/4 v5, 0x0

    .line 85
    :cond_66
    invoke-virtual {v10}, Lorg/yaml/snakeyaml/nodes/NodeTuple;->getValueNode()Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v11

    .line 86
    .local v11, "nodeValue":Lorg/yaml/snakeyaml/nodes/Node;
    instance-of v12, v11, Lorg/yaml/snakeyaml/nodes/ScalarNode;

    if-eqz v12, :cond_77

    move-object v12, v11

    check-cast v12, Lorg/yaml/snakeyaml/nodes/ScalarNode;

    invoke-virtual {v12}, Lorg/yaml/snakeyaml/nodes/ScalarNode;->getStyle()Ljava/lang/Character;

    move-result-object v12

    if-eqz v12, :cond_78

    .line 87
    :cond_77
    const/4 v5, 0x0

    .line 89
    :cond_78
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    .end local v7    # "property":Lorg/yaml/snakeyaml/introspector/Property;
    .end local v8    # "memberValue":Ljava/lang/Object;
    .end local v9    # "customPropertyTag":Lorg/yaml/snakeyaml/nodes/Tag;
    .end local v10    # "tuple":Lorg/yaml/snakeyaml/nodes/NodeTuple;
    .end local v11    # "nodeValue":Lorg/yaml/snakeyaml/nodes/Node;
    goto :goto_32

    .line 91
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_7c
    iget-object v4, p0, Lorg/yaml/snakeyaml/representer/Representer;->defaultFlowStyle:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    sget-object v6, Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;->AUTO:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    if-eq v4, v6, :cond_8c

    .line 92
    iget-object v4, p0, Lorg/yaml/snakeyaml/representer/Representer;->defaultFlowStyle:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    invoke-virtual {v4}, Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;->getStyleBoolean()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/yaml/snakeyaml/nodes/MappingNode;->setFlowStyle(Ljava/lang/Boolean;)V

    goto :goto_93

    .line 94
    :cond_8c
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/yaml/snakeyaml/nodes/MappingNode;->setFlowStyle(Ljava/lang/Boolean;)V

    .line 96
    :goto_93
    return-object v3
.end method

.method protected representJavaBeanProperty(Ljava/lang/Object;Lorg/yaml/snakeyaml/introspector/Property;Ljava/lang/Object;Lorg/yaml/snakeyaml/nodes/Tag;)Lorg/yaml/snakeyaml/nodes/NodeTuple;
    .registers 11
    .param p1, "javaBean"    # Ljava/lang/Object;
    .param p2, "property"    # Lorg/yaml/snakeyaml/introspector/Property;
    .param p3, "propertyValue"    # Ljava/lang/Object;
    .param p4, "customTag"    # Lorg/yaml/snakeyaml/nodes/Tag;

    .line 115
    invoke-virtual {p2}, Lorg/yaml/snakeyaml/introspector/Property;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/yaml/snakeyaml/representer/Representer;->representData(Ljava/lang/Object;)Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/nodes/ScalarNode;

    .line 117
    .local v0, "nodeKey":Lorg/yaml/snakeyaml/nodes/ScalarNode;
    iget-object v1, p0, Lorg/yaml/snakeyaml/representer/Representer;->representedObjects:Ljava/util/Map;

    invoke-interface {v1, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    .line 119
    .local v1, "hasAlias":Z
    invoke-virtual {p0, p3}, Lorg/yaml/snakeyaml/representer/Representer;->representData(Ljava/lang/Object;)Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v2

    .line 121
    .local v2, "nodeValue":Lorg/yaml/snakeyaml/nodes/Node;
    if-eqz p3, :cond_52

    if-nez v1, :cond_52

    .line 122
    invoke-virtual {v2}, Lorg/yaml/snakeyaml/nodes/Node;->getNodeId()Lorg/yaml/snakeyaml/nodes/NodeId;

    move-result-object v3

    .line 123
    .local v3, "nodeId":Lorg/yaml/snakeyaml/nodes/NodeId;
    if-nez p4, :cond_52

    .line 124
    sget-object v4, Lorg/yaml/snakeyaml/nodes/NodeId;->scalar:Lorg/yaml/snakeyaml/nodes/NodeId;

    if-ne v3, v4, :cond_2c

    .line 125
    instance-of v4, p3, Ljava/lang/Enum;

    if-eqz v4, :cond_52

    .line 126
    sget-object v4, Lorg/yaml/snakeyaml/nodes/Tag;->STR:Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-virtual {v2, v4}, Lorg/yaml/snakeyaml/nodes/Node;->setTag(Lorg/yaml/snakeyaml/nodes/Tag;)V

    goto :goto_52

    .line 129
    :cond_2c
    sget-object v4, Lorg/yaml/snakeyaml/nodes/NodeId;->mapping:Lorg/yaml/snakeyaml/nodes/NodeId;

    if-ne v3, v4, :cond_4f

    .line 130
    invoke-virtual {p2}, Lorg/yaml/snakeyaml/introspector/Property;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    if-ne v4, v5, :cond_4f

    .line 131
    instance-of v4, p3, Ljava/util/Map;

    if-nez v4, :cond_4f

    .line 132
    invoke-virtual {v2}, Lorg/yaml/snakeyaml/nodes/Node;->getTag()Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v4

    sget-object v5, Lorg/yaml/snakeyaml/nodes/Tag;->SET:Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-virtual {v4, v5}, Lorg/yaml/snakeyaml/nodes/Tag;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4f

    .line 133
    sget-object v4, Lorg/yaml/snakeyaml/nodes/Tag;->MAP:Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-virtual {v2, v4}, Lorg/yaml/snakeyaml/nodes/Node;->setTag(Lorg/yaml/snakeyaml/nodes/Tag;)V

    .line 138
    :cond_4f
    invoke-virtual {p0, p2, v2, p3}, Lorg/yaml/snakeyaml/representer/Representer;->checkGlobalTag(Lorg/yaml/snakeyaml/introspector/Property;Lorg/yaml/snakeyaml/nodes/Node;Ljava/lang/Object;)V

    .line 143
    .end local v3    # "nodeId":Lorg/yaml/snakeyaml/nodes/NodeId;
    :cond_52
    :goto_52
    new-instance v3, Lorg/yaml/snakeyaml/nodes/NodeTuple;

    invoke-direct {v3, v0, v2}, Lorg/yaml/snakeyaml/nodes/NodeTuple;-><init>(Lorg/yaml/snakeyaml/nodes/Node;Lorg/yaml/snakeyaml/nodes/Node;)V

    return-object v3
.end method

.method public bridge synthetic setTimeZone(Ljava/util/TimeZone;)V
    .registers 2
    .param p1, "x0"    # Ljava/util/TimeZone;

    .line 38
    invoke-super {p0, p1}, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method
