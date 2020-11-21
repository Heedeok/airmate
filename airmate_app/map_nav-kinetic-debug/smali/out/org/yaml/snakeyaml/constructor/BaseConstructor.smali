.class public abstract Lorg/yaml/snakeyaml/constructor/BaseConstructor;
.super Ljava/lang/Object;
.source "BaseConstructor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/yaml/snakeyaml/constructor/BaseConstructor$RecursiveTuple;
    }
.end annotation


# instance fields
.field private composer:Lorg/yaml/snakeyaml/composer/Composer;

.field private final constructedObjects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/yaml/snakeyaml/nodes/Node;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private explicitPropertyUtils:Z

.field private final maps2fill:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/yaml/snakeyaml/constructor/BaseConstructor$RecursiveTuple<",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/yaml/snakeyaml/constructor/BaseConstructor$RecursiveTuple<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private propertyUtils:Lorg/yaml/snakeyaml/introspector/PropertyUtils;

.field private final recursiveObjects:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/yaml/snakeyaml/nodes/Node;",
            ">;"
        }
    .end annotation
.end field

.field protected rootTag:Lorg/yaml/snakeyaml/nodes/Tag;

.field private final sets2fill:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/yaml/snakeyaml/constructor/BaseConstructor$RecursiveTuple<",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final yamlClassConstructors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/yaml/snakeyaml/nodes/NodeId;",
            "Lorg/yaml/snakeyaml/constructor/Construct;",
            ">;"
        }
    .end annotation
.end field

.field protected final yamlConstructors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/yaml/snakeyaml/nodes/Tag;",
            "Lorg/yaml/snakeyaml/constructor/Construct;",
            ">;"
        }
    .end annotation
.end field

.field protected final yamlMultiConstructors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/yaml/snakeyaml/constructor/Construct;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lorg/yaml/snakeyaml/nodes/NodeId;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->yamlClassConstructors:Ljava/util/Map;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->yamlConstructors:Ljava/util/Map;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->yamlMultiConstructors:Ljava/util/Map;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->constructedObjects:Ljava/util/Map;

    .line 75
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->recursiveObjects:Ljava/util/Set;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->maps2fill:Ljava/util/ArrayList;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->sets2fill:Ljava/util/ArrayList;

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->rootTag:Lorg/yaml/snakeyaml/nodes/Tag;

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->explicitPropertyUtils:Z

    .line 80
    return-void
.end method

.method private constructDocument(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;
    .registers 4
    .param p1, "node"    # Lorg/yaml/snakeyaml/nodes/Node;

    .line 141
    invoke-virtual {p0, p1}, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->constructObject(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;

    move-result-object v0

    .line 142
    .local v0, "data":Ljava/lang/Object;
    invoke-direct {p0}, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->fillRecursive()V

    .line 143
    iget-object v1, p0, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->constructedObjects:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 144
    iget-object v1, p0, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->recursiveObjects:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 145
    return-object v0
.end method

.method private fillRecursive()V
    .registers 7

    .line 149
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->maps2fill:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_37

    .line 150
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->maps2fill:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/yaml/snakeyaml/constructor/BaseConstructor$RecursiveTuple;

    .line 151
    .local v1, "entry":Lorg/yaml/snakeyaml/constructor/BaseConstructor$RecursiveTuple;, "Lorg/yaml/snakeyaml/constructor/BaseConstructor$RecursiveTuple<Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;Lorg/yaml/snakeyaml/constructor/BaseConstructor$RecursiveTuple<Ljava/lang/Object;Ljava/lang/Object;>;>;"
    invoke-virtual {v1}, Lorg/yaml/snakeyaml/constructor/BaseConstructor$RecursiveTuple;->_2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/yaml/snakeyaml/constructor/BaseConstructor$RecursiveTuple;

    .line 152
    .local v2, "key_value":Lorg/yaml/snakeyaml/constructor/BaseConstructor$RecursiveTuple;, "Lorg/yaml/snakeyaml/constructor/BaseConstructor$RecursiveTuple<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-virtual {v1}, Lorg/yaml/snakeyaml/constructor/BaseConstructor$RecursiveTuple;->_1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/constructor/BaseConstructor$RecursiveTuple;->_1()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/constructor/BaseConstructor$RecursiveTuple;->_2()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .end local v1    # "entry":Lorg/yaml/snakeyaml/constructor/BaseConstructor$RecursiveTuple;, "Lorg/yaml/snakeyaml/constructor/BaseConstructor$RecursiveTuple<Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;Lorg/yaml/snakeyaml/constructor/BaseConstructor$RecursiveTuple<Ljava/lang/Object;Ljava/lang/Object;>;>;"
    .end local v2    # "key_value":Lorg/yaml/snakeyaml/constructor/BaseConstructor$RecursiveTuple;, "Lorg/yaml/snakeyaml/constructor/BaseConstructor$RecursiveTuple<Ljava/lang/Object;Ljava/lang/Object;>;"
    goto :goto_e

    .line 154
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_32
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->maps2fill:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 156
    :cond_37
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->sets2fill:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_64

    .line 157
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->sets2fill:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_45
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/yaml/snakeyaml/constructor/BaseConstructor$RecursiveTuple;

    .line 158
    .local v1, "value":Lorg/yaml/snakeyaml/constructor/BaseConstructor$RecursiveTuple;, "Lorg/yaml/snakeyaml/constructor/BaseConstructor$RecursiveTuple<Ljava/util/Set<Ljava/lang/Object;>;Ljava/lang/Object;>;"
    invoke-virtual {v1}, Lorg/yaml/snakeyaml/constructor/BaseConstructor$RecursiveTuple;->_1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/constructor/BaseConstructor$RecursiveTuple;->_2()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_45

    .line 160
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "value":Lorg/yaml/snakeyaml/constructor/BaseConstructor$RecursiveTuple;, "Lorg/yaml/snakeyaml/constructor/BaseConstructor$RecursiveTuple<Ljava/util/Set<Ljava/lang/Object;>;Ljava/lang/Object;>;"
    :cond_5f
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->sets2fill:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 162
    :cond_64
    return-void
.end method


# virtual methods
.method public checkData()Z
    .registers 2

    .line 93
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->composer:Lorg/yaml/snakeyaml/composer/Composer;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/composer/Composer;->checkNode()Z

    move-result v0

    return v0
.end method

.method protected constructArray(Lorg/yaml/snakeyaml/nodes/SequenceNode;)Ljava/lang/Object;
    .registers 4
    .param p1, "node"    # Lorg/yaml/snakeyaml/nodes/SequenceNode;

    .line 271
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/SequenceNode;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/SequenceNode;->getValue()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->createArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->constructArrayStep2(Lorg/yaml/snakeyaml/nodes/SequenceNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected constructArrayStep2(Lorg/yaml/snakeyaml/nodes/SequenceNode;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .param p1, "node"    # Lorg/yaml/snakeyaml/nodes/SequenceNode;
    .param p2, "array"    # Ljava/lang/Object;

    .line 281
    const/4 v0, 0x0

    .line 282
    .local v0, "index":I
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/SequenceNode;->getValue()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/yaml/snakeyaml/nodes/Node;

    .line 283
    .local v2, "child":Lorg/yaml/snakeyaml/nodes/Node;
    add-int/lit8 v3, v0, 0x1

    .local v3, "index":I
    invoke-virtual {p0, v2}, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->constructObject(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v0, v4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 282
    move v0, v3

    goto :goto_9

    .line 285
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "child":Lorg/yaml/snakeyaml/nodes/Node;
    .end local v3    # "index":I
    :cond_20
    return-object p2
.end method

.method protected constructMapping(Lorg/yaml/snakeyaml/nodes/MappingNode;)Ljava/util/Map;
    .registers 3
    .param p1, "node"    # Lorg/yaml/snakeyaml/nodes/MappingNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/yaml/snakeyaml/nodes/MappingNode;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 305
    invoke-virtual {p0}, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->createDefaultMap()Ljava/util/Map;

    move-result-object v0

    .line 306
    .local v0, "mapping":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-virtual {p0, p1, v0}, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->constructMapping2ndStep(Lorg/yaml/snakeyaml/nodes/MappingNode;Ljava/util/Map;)V

    .line 307
    return-object v0
.end method

.method protected constructMapping2ndStep(Lorg/yaml/snakeyaml/nodes/MappingNode;Ljava/util/Map;)V
    .registers 16
    .param p1, "node"    # Lorg/yaml/snakeyaml/nodes/MappingNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/yaml/snakeyaml/nodes/MappingNode;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 311
    .local p2, "mapping":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/MappingNode;->getValue()Ljava/util/List;

    move-result-object v0

    .line 312
    .local v0, "nodeValue":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/nodes/NodeTuple;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/yaml/snakeyaml/nodes/NodeTuple;

    .line 313
    .local v2, "tuple":Lorg/yaml/snakeyaml/nodes/NodeTuple;
    invoke-virtual {v2}, Lorg/yaml/snakeyaml/nodes/NodeTuple;->getKeyNode()Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v3

    .line 314
    .local v3, "keyNode":Lorg/yaml/snakeyaml/nodes/Node;
    invoke-virtual {v2}, Lorg/yaml/snakeyaml/nodes/NodeTuple;->getValueNode()Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v4

    .line 315
    .local v4, "valueNode":Lorg/yaml/snakeyaml/nodes/Node;
    invoke-virtual {p0, v3}, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->constructObject(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;

    move-result-object v5

    .line 316
    .local v5, "key":Ljava/lang/Object;
    if-eqz v5, :cond_4d

    .line 318
    :try_start_22
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_26

    .line 323
    goto :goto_4d

    .line 319
    :catch_26
    move-exception v11

    .line 320
    .local v11, "e":Ljava/lang/Exception;
    new-instance v12, Lorg/yaml/snakeyaml/constructor/ConstructorException;

    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/MappingNode;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "found unacceptable key "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/nodes/NodeTuple;->getKeyNode()Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v6

    invoke-virtual {v6}, Lorg/yaml/snakeyaml/nodes/Node;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v10

    const-string v7, "while constructing a mapping"

    move-object v6, v12

    invoke-direct/range {v6 .. v11}, Lorg/yaml/snakeyaml/constructor/ConstructorException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/Throwable;)V

    throw v12

    .line 325
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_4d
    :goto_4d
    invoke-virtual {p0, v4}, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->constructObject(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;

    move-result-object v6

    .line 326
    .local v6, "value":Ljava/lang/Object;
    invoke-virtual {v3}, Lorg/yaml/snakeyaml/nodes/Node;->isTwoStepsConstruction()Z

    move-result v7

    if-eqz v7, :cond_68

    .line 333
    iget-object v7, p0, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->maps2fill:Ljava/util/ArrayList;

    const/4 v8, 0x0

    new-instance v9, Lorg/yaml/snakeyaml/constructor/BaseConstructor$RecursiveTuple;

    new-instance v10, Lorg/yaml/snakeyaml/constructor/BaseConstructor$RecursiveTuple;

    invoke-direct {v10, v5, v6}, Lorg/yaml/snakeyaml/constructor/BaseConstructor$RecursiveTuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v9, p2, v10}, Lorg/yaml/snakeyaml/constructor/BaseConstructor$RecursiveTuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v7, v8, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_6b

    .line 337
    :cond_68
    invoke-interface {p2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    .end local v2    # "tuple":Lorg/yaml/snakeyaml/nodes/NodeTuple;
    .end local v3    # "keyNode":Lorg/yaml/snakeyaml/nodes/Node;
    .end local v4    # "valueNode":Lorg/yaml/snakeyaml/nodes/Node;
    .end local v5    # "key":Ljava/lang/Object;
    .end local v6    # "value":Ljava/lang/Object;
    :goto_6b
    goto :goto_8

    .line 340
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_6c
    return-void
.end method

.method protected constructObject(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;
    .registers 6
    .param p1, "node"    # Lorg/yaml/snakeyaml/nodes/Node;

    .line 173
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->constructedObjects:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 174
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->constructedObjects:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 176
    :cond_f
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->recursiveObjects:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 180
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->recursiveObjects:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 181
    invoke-virtual {p0, p1}, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->getConstructor(Lorg/yaml/snakeyaml/nodes/Node;)Lorg/yaml/snakeyaml/constructor/Construct;

    move-result-object v0

    .line 182
    .local v0, "constructor":Lorg/yaml/snakeyaml/constructor/Construct;
    invoke-interface {v0, p1}, Lorg/yaml/snakeyaml/constructor/Construct;->construct(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;

    move-result-object v1

    .line 183
    .local v1, "data":Ljava/lang/Object;
    iget-object v2, p0, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->constructedObjects:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    iget-object v2, p0, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->recursiveObjects:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 185
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->isTwoStepsConstruction()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 186
    invoke-interface {v0, p1, v1}, Lorg/yaml/snakeyaml/constructor/Construct;->construct2ndStep(Lorg/yaml/snakeyaml/nodes/Node;Ljava/lang/Object;)V

    .line 188
    :cond_37
    return-object v1

    .line 177
    .end local v0    # "constructor":Lorg/yaml/snakeyaml/constructor/Construct;
    .end local v1    # "data":Ljava/lang/Object;
    :cond_38
    new-instance v0, Lorg/yaml/snakeyaml/constructor/ConstructorException;

    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "found unconstructable recursive node"

    invoke-direct {v0, v2, v2, v3, v1}, Lorg/yaml/snakeyaml/constructor/ConstructorException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v0
.end method

.method protected constructScalar(Lorg/yaml/snakeyaml/nodes/ScalarNode;)Ljava/lang/Object;
    .registers 3
    .param p1, "node"    # Lorg/yaml/snakeyaml/nodes/ScalarNode;

    .line 218
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/ScalarNode;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected constructSequence(Lorg/yaml/snakeyaml/nodes/SequenceNode;)Ljava/util/List;
    .registers 4
    .param p1, "node"    # Lorg/yaml/snakeyaml/nodes/SequenceNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/yaml/snakeyaml/nodes/SequenceNode;",
            ")",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 237
    const-class v0, Ljava/util/List;

    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/SequenceNode;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/SequenceNode;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-nez v0, :cond_28

    .line 240
    :try_start_16
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/SequenceNode;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_20} :catch_21

    .line 243
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    goto :goto_34

    .line 241
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :catch_21
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/yaml/snakeyaml/error/YAMLException;

    invoke-direct {v1, v0}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 245
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_28
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/SequenceNode;->getValue()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->createDefaultList(I)Ljava/util/List;

    move-result-object v0

    .line 247
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :goto_34
    invoke-virtual {p0, p1, v0}, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->constructSequenceStep2(Lorg/yaml/snakeyaml/nodes/SequenceNode;Ljava/util/Collection;)V

    .line 248
    return-object v0
.end method

.method protected constructSequenceStep2(Lorg/yaml/snakeyaml/nodes/SequenceNode;Ljava/util/Collection;)V
    .registers 6
    .param p1, "node"    # Lorg/yaml/snakeyaml/nodes/SequenceNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/yaml/snakeyaml/nodes/SequenceNode;",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 275
    .local p2, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/SequenceNode;->getValue()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/yaml/snakeyaml/nodes/Node;

    .line 276
    .local v1, "child":Lorg/yaml/snakeyaml/nodes/Node;
    invoke-virtual {p0, v1}, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->constructObject(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 278
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "child":Lorg/yaml/snakeyaml/nodes/Node;
    :cond_1c
    return-void
.end method

.method protected constructSet(Lorg/yaml/snakeyaml/nodes/MappingNode;)Ljava/util/Set;
    .registers 3
    .param p1, "node"    # Lorg/yaml/snakeyaml/nodes/MappingNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/yaml/snakeyaml/nodes/MappingNode;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 299
    invoke-virtual {p0}, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->createDefaultSet()Ljava/util/Set;

    move-result-object v0

    .line 300
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    invoke-virtual {p0, p1, v0}, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->constructSet2ndStep(Lorg/yaml/snakeyaml/nodes/MappingNode;Ljava/util/Set;)V

    .line 301
    return-object v0
.end method

.method protected constructSet(Lorg/yaml/snakeyaml/nodes/SequenceNode;)Ljava/util/Set;
    .registers 4
    .param p1, "node"    # Lorg/yaml/snakeyaml/nodes/SequenceNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/yaml/snakeyaml/nodes/SequenceNode;",
            ")",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 255
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/SequenceNode;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 258
    :try_start_a
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/SequenceNode;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_14} :catch_15

    .line 261
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    goto :goto_28

    .line 259
    .end local v0    # "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    :catch_15
    move-exception v0

    .line 260
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/yaml/snakeyaml/error/YAMLException;

    invoke-direct {v1, v0}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 263
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1c
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/SequenceNode;->getValue()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->createDefaultSet(I)Ljava/util/Set;

    move-result-object v0

    .line 265
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    :goto_28
    invoke-virtual {p0, p1, v0}, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->constructSequenceStep2(Lorg/yaml/snakeyaml/nodes/SequenceNode;Ljava/util/Collection;)V

    .line 266
    return-object v0
.end method

.method protected constructSet2ndStep(Lorg/yaml/snakeyaml/nodes/MappingNode;Ljava/util/Set;)V
    .registers 15
    .param p1, "node"    # Lorg/yaml/snakeyaml/nodes/MappingNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/yaml/snakeyaml/nodes/MappingNode;",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 343
    .local p2, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/MappingNode;->getValue()Ljava/util/List;

    move-result-object v0

    .line 344
    .local v0, "nodeValue":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/nodes/NodeTuple;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/yaml/snakeyaml/nodes/NodeTuple;

    .line 345
    .local v2, "tuple":Lorg/yaml/snakeyaml/nodes/NodeTuple;
    invoke-virtual {v2}, Lorg/yaml/snakeyaml/nodes/NodeTuple;->getKeyNode()Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v3

    .line 346
    .local v3, "keyNode":Lorg/yaml/snakeyaml/nodes/Node;
    invoke-virtual {p0, v3}, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->constructObject(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;

    move-result-object v4

    .line 347
    .local v4, "key":Ljava/lang/Object;
    if-eqz v4, :cond_49

    .line 349
    :try_start_1e
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_21} :catch_22

    .line 353
    goto :goto_49

    .line 350
    :catch_22
    move-exception v10

    .line 351
    .local v10, "e":Ljava/lang/Exception;
    new-instance v11, Lorg/yaml/snakeyaml/constructor/ConstructorException;

    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/MappingNode;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "found unacceptable key "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/nodes/NodeTuple;->getKeyNode()Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v5

    invoke-virtual {v5}, Lorg/yaml/snakeyaml/nodes/Node;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v9

    const-string v6, "while constructing a Set"

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lorg/yaml/snakeyaml/constructor/ConstructorException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/Throwable;)V

    throw v11

    .line 355
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_49
    :goto_49
    invoke-virtual {v3}, Lorg/yaml/snakeyaml/nodes/Node;->isTwoStepsConstruction()Z

    move-result v5

    if-eqz v5, :cond_5b

    .line 362
    iget-object v5, p0, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->sets2fill:Ljava/util/ArrayList;

    const/4 v6, 0x0

    new-instance v7, Lorg/yaml/snakeyaml/constructor/BaseConstructor$RecursiveTuple;

    invoke-direct {v7, p2, v4}, Lorg/yaml/snakeyaml/constructor/BaseConstructor$RecursiveTuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5, v6, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_5e

    .line 364
    :cond_5b
    invoke-interface {p2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 366
    .end local v2    # "tuple":Lorg/yaml/snakeyaml/nodes/NodeTuple;
    .end local v3    # "keyNode":Lorg/yaml/snakeyaml/nodes/Node;
    .end local v4    # "key":Ljava/lang/Object;
    :goto_5e
    goto :goto_8

    .line 367
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_5f
    return-void
.end method

.method protected createArray(Ljava/lang/Class;I)[Ljava/lang/Object;
    .registers 4
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;I)[TT;"
        }
    .end annotation

    .line 231
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method protected createDefaultList(I)Ljava/util/List;
    .registers 3
    .param p1, "initSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method protected createDefaultMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 290
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    return-object v0
.end method

.method protected createDefaultSet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 295
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    return-object v0
.end method

.method protected createDefaultSet(I)Ljava/util/Set;
    .registers 3
    .param p1, "initSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 226
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0, p1}, Ljava/util/LinkedHashSet;-><init>(I)V

    return-object v0
.end method

.method protected getConstructor(Lorg/yaml/snakeyaml/nodes/Node;)Lorg/yaml/snakeyaml/constructor/Construct;
    .registers 6
    .param p1, "node"    # Lorg/yaml/snakeyaml/nodes/Node;

    .line 201
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->useClassConstructor()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 202
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->yamlClassConstructors:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->getNodeId()Lorg/yaml/snakeyaml/nodes/NodeId;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/constructor/Construct;

    return-object v0

    .line 204
    :cond_13
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->yamlConstructors:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->getTag()Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/constructor/Construct;

    .line 205
    .local v0, "constructor":Lorg/yaml/snakeyaml/constructor/Construct;
    if-nez v0, :cond_54

    .line 206
    iget-object v1, p0, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->yamlMultiConstructors:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 207
    .local v2, "prefix":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->getTag()Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/yaml/snakeyaml/nodes/Tag;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 208
    iget-object v3, p0, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->yamlMultiConstructors:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/yaml/snakeyaml/constructor/Construct;

    return-object v3

    .line 211
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "prefix":Ljava/lang/String;
    :cond_4a
    iget-object v1, p0, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->yamlConstructors:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/yaml/snakeyaml/constructor/Construct;

    return-object v1

    .line 213
    :cond_54
    return-object v0
.end method

.method public getData()Ljava/lang/Object;
    .registers 3

    .line 103
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->composer:Lorg/yaml/snakeyaml/composer/Composer;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/composer/Composer;->checkNode()Z

    .line 104
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->composer:Lorg/yaml/snakeyaml/composer/Composer;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/composer/Composer;->getNode()Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v0

    .line 105
    .local v0, "node":Lorg/yaml/snakeyaml/nodes/Node;
    iget-object v1, p0, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->rootTag:Lorg/yaml/snakeyaml/nodes/Tag;

    if-eqz v1, :cond_14

    .line 106
    iget-object v1, p0, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->rootTag:Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-virtual {v0, v1}, Lorg/yaml/snakeyaml/nodes/Node;->setTag(Lorg/yaml/snakeyaml/nodes/Tag;)V

    .line 108
    :cond_14
    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->constructDocument(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public final getPropertyUtils()Lorg/yaml/snakeyaml/introspector/PropertyUtils;
    .registers 2

    .line 387
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->propertyUtils:Lorg/yaml/snakeyaml/introspector/PropertyUtils;

    if-nez v0, :cond_b

    .line 388
    new-instance v0, Lorg/yaml/snakeyaml/introspector/PropertyUtils;

    invoke-direct {v0}, Lorg/yaml/snakeyaml/introspector/PropertyUtils;-><init>()V

    iput-object v0, p0, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->propertyUtils:Lorg/yaml/snakeyaml/introspector/PropertyUtils;

    .line 390
    :cond_b
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->propertyUtils:Lorg/yaml/snakeyaml/introspector/PropertyUtils;

    return-object v0
.end method

.method public getSingleData(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 120
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->composer:Lorg/yaml/snakeyaml/composer/Composer;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/composer/Composer;->getSingleNode()Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v0

    .line 121
    .local v0, "node":Lorg/yaml/snakeyaml/nodes/Node;
    if-eqz v0, :cond_23

    .line 122
    const-class v1, Ljava/lang/Object;

    if-eq v1, p1, :cond_15

    .line 123
    new-instance v1, Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-direct {v1, p1}, Lorg/yaml/snakeyaml/nodes/Tag;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lorg/yaml/snakeyaml/nodes/Node;->setTag(Lorg/yaml/snakeyaml/nodes/Tag;)V

    goto :goto_1e

    .line 124
    :cond_15
    iget-object v1, p0, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->rootTag:Lorg/yaml/snakeyaml/nodes/Tag;

    if-eqz v1, :cond_1e

    .line 125
    iget-object v1, p0, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->rootTag:Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-virtual {v0, v1}, Lorg/yaml/snakeyaml/nodes/Node;->setTag(Lorg/yaml/snakeyaml/nodes/Tag;)V

    .line 127
    :cond_1e
    :goto_1e
    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->constructDocument(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 129
    :cond_23
    const/4 v1, 0x0

    return-object v1
.end method

.method public final isExplicitPropertyUtils()Z
    .registers 2

    .line 412
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->explicitPropertyUtils:Z

    return v0
.end method

.method public setComposer(Lorg/yaml/snakeyaml/composer/Composer;)V
    .registers 2
    .param p1, "composer"    # Lorg/yaml/snakeyaml/composer/Composer;

    .line 83
    iput-object p1, p0, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->composer:Lorg/yaml/snakeyaml/composer/Composer;

    .line 84
    return-void
.end method

.method public setPropertyUtils(Lorg/yaml/snakeyaml/introspector/PropertyUtils;)V
    .registers 3
    .param p1, "propertyUtils"    # Lorg/yaml/snakeyaml/introspector/PropertyUtils;

    .line 382
    iput-object p1, p0, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->propertyUtils:Lorg/yaml/snakeyaml/introspector/PropertyUtils;

    .line 383
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->explicitPropertyUtils:Z

    .line 384
    return-void
.end method
