.class public Lorg/yaml/snakeyaml/constructor/Constructor$ConstructMapping;
.super Ljava/lang/Object;
.source "Constructor.java"

# interfaces
.implements Lorg/yaml/snakeyaml/constructor/Construct;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/yaml/snakeyaml/constructor/Constructor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ConstructMapping"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/yaml/snakeyaml/constructor/Constructor;


# direct methods
.method protected constructor <init>(Lorg/yaml/snakeyaml/constructor/Constructor;)V
    .registers 2

    .line 138
    iput-object p1, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructMapping;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public construct(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;
    .registers 6
    .param p1, "node"    # Lorg/yaml/snakeyaml/nodes/Node;

    .line 150
    move-object v0, p1

    check-cast v0, Lorg/yaml/snakeyaml/nodes/MappingNode;

    .line 151
    .local v0, "mnode":Lorg/yaml/snakeyaml/nodes/MappingNode;
    const-class v1, Ljava/util/Properties;

    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 152
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 153
    .local v1, "properties":Ljava/util/Properties;
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->isTwoStepsConstruction()Z

    move-result v2

    if-nez v2, :cond_20

    .line 154
    iget-object v2, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructMapping;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    invoke-virtual {v2, v0, v1}, Lorg/yaml/snakeyaml/constructor/Constructor;->constructMapping2ndStep(Lorg/yaml/snakeyaml/nodes/MappingNode;Ljava/util/Map;)V

    .line 158
    return-object v1

    .line 156
    :cond_20
    new-instance v2, Lorg/yaml/snakeyaml/error/YAMLException;

    const-string v3, "Properties must not be recursive."

    invoke-direct {v2, v3}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 159
    .end local v1    # "properties":Ljava/util/Properties;
    :cond_28
    const-class v1, Ljava/util/SortedMap;

    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 160
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 161
    .local v1, "map":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->isTwoStepsConstruction()Z

    move-result v2

    if-nez v2, :cond_44

    .line 162
    iget-object v2, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructMapping;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    invoke-virtual {v2, v0, v1}, Lorg/yaml/snakeyaml/constructor/Constructor;->constructMapping2ndStep(Lorg/yaml/snakeyaml/nodes/MappingNode;Ljava/util/Map;)V

    .line 164
    :cond_44
    return-object v1

    .line 165
    .end local v1    # "map":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_45
    const-class v1, Ljava/util/Map;

    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 166
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->isTwoStepsConstruction()Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 167
    iget-object v1, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructMapping;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/constructor/Constructor;->createDefaultMap()Ljava/util/Map;

    move-result-object v1

    return-object v1

    .line 169
    :cond_5e
    iget-object v1, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructMapping;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    invoke-virtual {v1, v0}, Lorg/yaml/snakeyaml/constructor/Constructor;->constructMapping(Lorg/yaml/snakeyaml/nodes/MappingNode;)Ljava/util/Map;

    move-result-object v1

    return-object v1

    .line 171
    :cond_65
    const-class v1, Ljava/util/SortedSet;

    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 172
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 175
    .local v1, "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/Object;>;"
    iget-object v2, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructMapping;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    invoke-virtual {v2, v0, v1}, Lorg/yaml/snakeyaml/constructor/Constructor;->constructSet2ndStep(Lorg/yaml/snakeyaml/nodes/MappingNode;Ljava/util/Set;)V

    .line 177
    return-object v1

    .line 178
    .end local v1    # "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/Object;>;"
    :cond_7c
    const-class v1, Ljava/util/Collection;

    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_9c

    .line 179
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->isTwoStepsConstruction()Z

    move-result v1

    if-eqz v1, :cond_95

    .line 180
    iget-object v1, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructMapping;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/constructor/Constructor;->createDefaultSet()Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 182
    :cond_95
    iget-object v1, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructMapping;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    invoke-virtual {v1, v0}, Lorg/yaml/snakeyaml/constructor/Constructor;->constructSet(Lorg/yaml/snakeyaml/nodes/MappingNode;)Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 185
    :cond_9c
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->isTwoStepsConstruction()Z

    move-result v1

    if-eqz v1, :cond_a7

    .line 186
    invoke-virtual {p0, v0}, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructMapping;->createEmptyJavaBean(Lorg/yaml/snakeyaml/nodes/MappingNode;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 188
    :cond_a7
    invoke-virtual {p0, v0}, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructMapping;->createEmptyJavaBean(Lorg/yaml/snakeyaml/nodes/MappingNode;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructMapping;->constructJavaBean2ndStep(Lorg/yaml/snakeyaml/nodes/MappingNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public construct2ndStep(Lorg/yaml/snakeyaml/nodes/Node;Ljava/lang/Object;)V
    .registers 6
    .param p1, "node"    # Lorg/yaml/snakeyaml/nodes/Node;
    .param p2, "object"    # Ljava/lang/Object;

    .line 195
    const-class v0, Ljava/util/Map;

    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 196
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructMapping;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    move-object v1, p1

    check-cast v1, Lorg/yaml/snakeyaml/nodes/MappingNode;

    move-object v2, p2

    check-cast v2, Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lorg/yaml/snakeyaml/constructor/Constructor;->constructMapping2ndStep(Lorg/yaml/snakeyaml/nodes/MappingNode;Ljava/util/Map;)V

    goto :goto_36

    .line 197
    :cond_18
    const-class v0, Ljava/util/Set;

    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 198
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructMapping;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    move-object v1, p1

    check-cast v1, Lorg/yaml/snakeyaml/nodes/MappingNode;

    move-object v2, p2

    check-cast v2, Ljava/util/Set;

    invoke-virtual {v0, v1, v2}, Lorg/yaml/snakeyaml/constructor/Constructor;->constructSet2ndStep(Lorg/yaml/snakeyaml/nodes/MappingNode;Ljava/util/Set;)V

    goto :goto_36

    .line 200
    :cond_30
    move-object v0, p1

    check-cast v0, Lorg/yaml/snakeyaml/nodes/MappingNode;

    invoke-virtual {p0, v0, p2}, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructMapping;->constructJavaBean2ndStep(Lorg/yaml/snakeyaml/nodes/MappingNode;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    :goto_36
    return-void
.end method

.method protected constructJavaBean2ndStep(Lorg/yaml/snakeyaml/nodes/MappingNode;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 22
    .param p1, "node"    # Lorg/yaml/snakeyaml/nodes/MappingNode;
    .param p2, "object"    # Ljava/lang/Object;

    .line 223
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    iget-object v0, v1, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructMapping;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    move-object/from16 v3, p1

    invoke-virtual {v0, v3}, Lorg/yaml/snakeyaml/constructor/Constructor;->flattenMapping(Lorg/yaml/snakeyaml/nodes/MappingNode;)V

    .line 224
    invoke-virtual/range {p1 .. p1}, Lorg/yaml/snakeyaml/nodes/MappingNode;->getType()Ljava/lang/Class;

    move-result-object v4

    .line 225
    .local v4, "beanType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/yaml/snakeyaml/nodes/MappingNode;->getValue()Ljava/util/List;

    move-result-object v5

    .line 226
    .local v5, "nodeValue":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/nodes/NodeTuple;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v6, 0x0

    move-object v7, v6

    .local v0, "i$":Ljava/util/Iterator;
    .local v6, "snode":Lorg/yaml/snakeyaml/nodes/SequenceNode;
    .local v7, "memberType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    :goto_19
    move-object v8, v0

    .end local v0    # "i$":Ljava/util/Iterator;
    .local v8, "i$":Ljava/util/Iterator;
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_177

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lorg/yaml/snakeyaml/nodes/NodeTuple;

    .line 228
    .local v9, "tuple":Lorg/yaml/snakeyaml/nodes/NodeTuple;
    invoke-virtual {v9}, Lorg/yaml/snakeyaml/nodes/NodeTuple;->getKeyNode()Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v0

    instance-of v0, v0, Lorg/yaml/snakeyaml/nodes/ScalarNode;

    if-eqz v0, :cond_15a

    .line 230
    invoke-virtual {v9}, Lorg/yaml/snakeyaml/nodes/NodeTuple;->getKeyNode()Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lorg/yaml/snakeyaml/nodes/ScalarNode;

    .line 232
    .local v10, "keyNode":Lorg/yaml/snakeyaml/nodes/ScalarNode;
    nop

    .line 234
    invoke-virtual {v9}, Lorg/yaml/snakeyaml/nodes/NodeTuple;->getValueNode()Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v11

    .line 236
    .local v11, "valueNode":Lorg/yaml/snakeyaml/nodes/Node;
    const-class v0, Ljava/lang/String;

    invoke-virtual {v10, v0}, Lorg/yaml/snakeyaml/nodes/ScalarNode;->setType(Ljava/lang/Class;)V

    .line 237
    iget-object v0, v1, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructMapping;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    invoke-virtual {v0, v10}, Lorg/yaml/snakeyaml/constructor/Constructor;->constructObject(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v12, v0

    .line 239
    .local v12, "key":Ljava/lang/String;
    :try_start_49
    invoke-virtual {v1, v4, v12}, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructMapping;->getProperty(Ljava/lang/Class;Ljava/lang/String;)Lorg/yaml/snakeyaml/introspector/Property;

    move-result-object v0

    .line 240
    .local v0, "property":Lorg/yaml/snakeyaml/introspector/Property;
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/introspector/Property;->getType()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v11, v13}, Lorg/yaml/snakeyaml/nodes/Node;->setType(Ljava/lang/Class;)V

    .line 241
    iget-object v13, v1, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructMapping;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    invoke-static {v13}, Lorg/yaml/snakeyaml/constructor/Constructor;->access$000(Lorg/yaml/snakeyaml/constructor/Constructor;)Ljava/util/Map;

    move-result-object v13

    invoke-interface {v13, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/yaml/snakeyaml/TypeDescription;

    .line 242
    .local v13, "memberDescription":Lorg/yaml/snakeyaml/TypeDescription;
    const/4 v14, 0x0

    .line 243
    .local v14, "typeDetected":Z
    if-eqz v13, :cond_b3

    .line 244
    sget-object v15, Lorg/yaml/snakeyaml/constructor/Constructor$1;->$SwitchMap$org$yaml$snakeyaml$nodes$NodeId:[I

    invoke-virtual {v11}, Lorg/yaml/snakeyaml/nodes/Node;->getNodeId()Lorg/yaml/snakeyaml/nodes/NodeId;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/yaml/snakeyaml/nodes/NodeId;->ordinal()I

    move-result v16

    aget v15, v15, v16

    packed-switch v15, :pswitch_data_17a

    .end local v6    # "snode":Lorg/yaml/snakeyaml/nodes/SequenceNode;
    goto :goto_b3

    .line 258
    .restart local v6    # "snode":Lorg/yaml/snakeyaml/nodes/SequenceNode;
    :pswitch_73
    move-object v15, v11

    check-cast v15, Lorg/yaml/snakeyaml/nodes/MappingNode;

    .line 259
    .local v15, "mnode":Lorg/yaml/snakeyaml/nodes/MappingNode;
    invoke-virtual {v13, v12}, Lorg/yaml/snakeyaml/TypeDescription;->getMapKeyType(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v16
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_7a} :catch_12c

    move-object/from16 v17, v16

    .line 260
    .local v17, "keyType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    move-object/from16 v3, v17

    .end local v17    # "keyType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    .local v3, "keyType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    if-eqz v3, :cond_b3

    .line 261
    move-object/from16 v18, v4

    .end local v4    # "beanType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    .local v18, "beanType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    :try_start_82
    invoke-virtual {v13, v12}, Lorg/yaml/snakeyaml/TypeDescription;->getMapValueType(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Lorg/yaml/snakeyaml/nodes/MappingNode;->setTypes(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 262
    const/4 v14, 0x1

    goto :goto_b5

    .line 246
    .end local v3    # "keyType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    .end local v6    # "snode":Lorg/yaml/snakeyaml/nodes/SequenceNode;
    .end local v7    # "memberType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    .end local v15    # "mnode":Lorg/yaml/snakeyaml/nodes/MappingNode;
    .end local v18    # "beanType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    .restart local v4    # "beanType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    :pswitch_8b
    move-object/from16 v18, v4

    .end local v4    # "beanType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    .restart local v18    # "beanType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    move-object v3, v11

    check-cast v3, Lorg/yaml/snakeyaml/nodes/SequenceNode;

    .line 247
    .local v3, "snode":Lorg/yaml/snakeyaml/nodes/SequenceNode;
    invoke-virtual {v13, v12}, Lorg/yaml/snakeyaml/TypeDescription;->getListPropertyType(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    move-object v7, v4

    .line 249
    .restart local v7    # "memberType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    if-eqz v7, :cond_9c

    .line 250
    invoke-virtual {v3, v7}, Lorg/yaml/snakeyaml/nodes/SequenceNode;->setListType(Ljava/lang/Class;)V

    .line 251
    const/4 v14, 0x1

    goto :goto_b5

    .line 252
    :cond_9c
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/introspector/Property;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_b5

    .line 253
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/introspector/Property;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/yaml/snakeyaml/nodes/SequenceNode;->setListType(Ljava/lang/Class;)V

    .line 254
    const/4 v14, 0x1

    goto :goto_b5

    .line 268
    .end local v3    # "snode":Lorg/yaml/snakeyaml/nodes/SequenceNode;
    .end local v18    # "beanType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    .restart local v4    # "beanType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    :cond_b3
    :goto_b3
    move-object/from16 v18, v4

    .end local v4    # "beanType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    .restart local v18    # "beanType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    :cond_b5
    :goto_b5
    if-nez v14, :cond_119

    invoke-virtual {v11}, Lorg/yaml/snakeyaml/nodes/Node;->getNodeId()Lorg/yaml/snakeyaml/nodes/NodeId;

    move-result-object v3

    sget-object v4, Lorg/yaml/snakeyaml/nodes/NodeId;->scalar:Lorg/yaml/snakeyaml/nodes/NodeId;

    if-eq v3, v4, :cond_119

    .line 270
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/introspector/Property;->getActualTypeArguments()[Ljava/lang/Class;

    move-result-object v3

    .line 271
    .local v3, "arguments":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-eqz v3, :cond_119

    .line 274
    invoke-virtual {v11}, Lorg/yaml/snakeyaml/nodes/Node;->getNodeId()Lorg/yaml/snakeyaml/nodes/NodeId;

    move-result-object v4

    sget-object v6, Lorg/yaml/snakeyaml/nodes/NodeId;->sequence:Lorg/yaml/snakeyaml/nodes/NodeId;

    const/4 v15, 0x0

    if-ne v4, v6, :cond_d9

    .line 275
    .end local v7    # "memberType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    aget-object v4, v3, v15

    .line 276
    .local v4, "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v6, v11

    check-cast v6, Lorg/yaml/snakeyaml/nodes/SequenceNode;

    .line 277
    .restart local v6    # "snode":Lorg/yaml/snakeyaml/nodes/SequenceNode;
    invoke-virtual {v6, v4}, Lorg/yaml/snakeyaml/nodes/SequenceNode;->setListType(Ljava/lang/Class;)V

    .line 278
    .end local v4    # "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "snode":Lorg/yaml/snakeyaml/nodes/SequenceNode;
    nop

    .line 295
    .end local v3    # "arguments":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v7    # "memberType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    :goto_d7
    move-object v7, v4

    goto :goto_119

    .line 278
    .restart local v3    # "arguments":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_d9
    invoke-virtual {v11}, Lorg/yaml/snakeyaml/nodes/Node;->getTag()Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v4

    sget-object v6, Lorg/yaml/snakeyaml/nodes/Tag;->SET:Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-virtual {v4, v6}, Lorg/yaml/snakeyaml/nodes/Tag;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v6, 0x1

    if-eqz v4, :cond_f6

    .line 279
    .end local v7    # "memberType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    aget-object v4, v3, v15

    .line 280
    .restart local v4    # "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v7, v11

    check-cast v7, Lorg/yaml/snakeyaml/nodes/MappingNode;

    .line 281
    .local v7, "mnode":Lorg/yaml/snakeyaml/nodes/MappingNode;
    invoke-virtual {v7, v4}, Lorg/yaml/snakeyaml/nodes/MappingNode;->setOnlyKeyType(Ljava/lang/Class;)V

    .line 282
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v7, v6}, Lorg/yaml/snakeyaml/nodes/MappingNode;->setUseClassConstructor(Ljava/lang/Boolean;)V

    .line 283
    .end local v4    # "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "mnode":Lorg/yaml/snakeyaml/nodes/MappingNode;
    goto :goto_d7

    .local v7, "memberType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    :cond_f6
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/introspector/Property;->getType()Ljava/lang/Class;

    move-result-object v4

    const-class v6, Ljava/util/Map;

    invoke-virtual {v4, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_119

    .line 284
    .end local v7    # "memberType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    aget-object v4, v3, v15

    .line 285
    .local v4, "ketType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v6, 0x1

    aget-object v7, v3, v6

    move-object v6, v7

    .line 286
    .local v6, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v7, v11

    check-cast v7, Lorg/yaml/snakeyaml/nodes/MappingNode;

    .line 287
    .local v7, "mnode":Lorg/yaml/snakeyaml/nodes/MappingNode;
    invoke-virtual {v7, v4, v6}, Lorg/yaml/snakeyaml/nodes/MappingNode;->setTypes(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 288
    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v7, v15}, Lorg/yaml/snakeyaml/nodes/MappingNode;->setUseClassConstructor(Ljava/lang/Boolean;)V

    goto :goto_d7

    .line 297
    .end local v0    # "property":Lorg/yaml/snakeyaml/introspector/Property;
    .end local v3    # "arguments":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v4    # "ketType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "valueType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "mnode":Lorg/yaml/snakeyaml/nodes/MappingNode;
    .end local v13    # "memberDescription":Lorg/yaml/snakeyaml/TypeDescription;
    .end local v14    # "typeDetected":Z
    :catch_117
    move-exception v0

    goto :goto_12f

    .line 295
    .restart local v0    # "property":Lorg/yaml/snakeyaml/introspector/Property;
    .local v7, "memberType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    .restart local v13    # "memberDescription":Lorg/yaml/snakeyaml/TypeDescription;
    .restart local v14    # "typeDetected":Z
    :cond_119
    :goto_119
    iget-object v3, v1, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructMapping;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    invoke-virtual {v3, v11}, Lorg/yaml/snakeyaml/constructor/Constructor;->constructObject(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    .line 296
    .local v6, "value":Ljava/lang/Object;
    invoke-virtual {v0, v2, v6}, Lorg/yaml/snakeyaml/introspector/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_123
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_123} :catch_117

    .line 300
    .end local v0    # "property":Lorg/yaml/snakeyaml/introspector/Property;
    .end local v6    # "value":Ljava/lang/Object;
    .end local v13    # "memberDescription":Lorg/yaml/snakeyaml/TypeDescription;
    .end local v14    # "typeDetected":Z
    nop

    .line 301
    .end local v9    # "tuple":Lorg/yaml/snakeyaml/nodes/NodeTuple;
    .end local v10    # "keyNode":Lorg/yaml/snakeyaml/nodes/ScalarNode;
    .end local v11    # "valueNode":Lorg/yaml/snakeyaml/nodes/Node;
    .end local v12    # "key":Ljava/lang/String;
    nop

    .line 226
    move-object v0, v8

    move-object/from16 v4, v18

    move-object/from16 v3, p1

    goto/16 :goto_19

    .line 297
    .end local v7    # "memberType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    .end local v18    # "beanType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    .local v4, "beanType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    .restart local v9    # "tuple":Lorg/yaml/snakeyaml/nodes/NodeTuple;
    .restart local v10    # "keyNode":Lorg/yaml/snakeyaml/nodes/ScalarNode;
    .restart local v11    # "valueNode":Lorg/yaml/snakeyaml/nodes/Node;
    .restart local v12    # "key":Ljava/lang/String;
    :catch_12c
    move-exception v0

    move-object/from16 v18, v4

    .line 298
    .end local v4    # "beanType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    .local v0, "e":Ljava/lang/Exception;
    .restart local v18    # "beanType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    :goto_12f
    new-instance v3, Lorg/yaml/snakeyaml/error/YAMLException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot create property="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " for JavaBean="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "; "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 232
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v10    # "keyNode":Lorg/yaml/snakeyaml/nodes/ScalarNode;
    .end local v11    # "valueNode":Lorg/yaml/snakeyaml/nodes/Node;
    .end local v12    # "key":Ljava/lang/String;
    .end local v18    # "beanType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    .restart local v4    # "beanType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    :cond_15a
    move-object/from16 v18, v4

    .end local v4    # "beanType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    .restart local v18    # "beanType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    new-instance v0, Lorg/yaml/snakeyaml/error/YAMLException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Keys must be scalars but found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lorg/yaml/snakeyaml/nodes/NodeTuple;->getKeyNode()Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 302
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "tuple":Lorg/yaml/snakeyaml/nodes/NodeTuple;
    .end local v18    # "beanType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    .restart local v4    # "beanType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    :cond_177
    move-object/from16 v18, v4

    .end local v4    # "beanType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    .restart local v18    # "beanType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    return-object v2

    :pswitch_data_17a
    .packed-switch 0x1
        :pswitch_8b
        :pswitch_73
    .end packed-switch
.end method

.method protected createEmptyJavaBean(Lorg/yaml/snakeyaml/nodes/MappingNode;)Ljava/lang/Object;
    .registers 5
    .param p1, "node"    # Lorg/yaml/snakeyaml/nodes/MappingNode;

    .line 214
    :try_start_0
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/MappingNode;->getType()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 215
    .local v0, "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 216
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    return-object v1

    .line 217
    .end local v0    # "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :catch_16
    move-exception v0

    .line 218
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/yaml/snakeyaml/error/YAMLException;

    invoke-direct {v1, v0}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected getProperty(Ljava/lang/Class;Ljava/lang/String;)Lorg/yaml/snakeyaml/introspector/Property;
    .registers 4
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/yaml/snakeyaml/introspector/Property;"
        }
    .end annotation

    .line 306
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructMapping;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/constructor/Constructor;->getPropertyUtils()Lorg/yaml/snakeyaml/introspector/PropertyUtils;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->getProperty(Ljava/lang/Class;Ljava/lang/String;)Lorg/yaml/snakeyaml/introspector/Property;

    move-result-object v0

    return-object v0
.end method
