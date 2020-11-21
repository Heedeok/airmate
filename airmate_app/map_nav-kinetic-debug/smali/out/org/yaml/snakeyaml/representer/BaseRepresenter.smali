.class public abstract Lorg/yaml/snakeyaml/representer/BaseRepresenter;
.super Ljava/lang/Object;
.source "BaseRepresenter.java"


# instance fields
.field protected defaultFlowStyle:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

.field protected defaultScalarStyle:Ljava/lang/Character;

.field private explicitPropertyUtils:Z

.field protected final multiRepresenters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/yaml/snakeyaml/representer/Represent;",
            ">;"
        }
    .end annotation
.end field

.field protected nullRepresenter:Lorg/yaml/snakeyaml/representer/Represent;

.field protected objectToRepresent:Ljava/lang/Object;

.field private propertyUtils:Lorg/yaml/snakeyaml/introspector/PropertyUtils;

.field protected final representedObjects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lorg/yaml/snakeyaml/nodes/Node;",
            ">;"
        }
    .end annotation
.end field

.field protected final representers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/yaml/snakeyaml/representer/Represent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->representers:Ljava/util/Map;

    .line 49
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->multiRepresenters:Ljava/util/Map;

    .line 51
    sget-object v0, Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;->AUTO:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    iput-object v0, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->defaultFlowStyle:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    .line 52
    new-instance v0, Lorg/yaml/snakeyaml/representer/BaseRepresenter$1;

    invoke-direct {v0, p0}, Lorg/yaml/snakeyaml/representer/BaseRepresenter$1;-><init>(Lorg/yaml/snakeyaml/representer/BaseRepresenter;)V

    iput-object v0, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->representedObjects:Ljava/util/Map;

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->explicitPropertyUtils:Z

    return-void
.end method


# virtual methods
.method public getDefaultFlowStyle()Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;
    .registers 2

    .line 189
    iget-object v0, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->defaultFlowStyle:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    return-object v0
.end method

.method public final getPropertyUtils()Lorg/yaml/snakeyaml/introspector/PropertyUtils;
    .registers 2

    .line 198
    iget-object v0, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->propertyUtils:Lorg/yaml/snakeyaml/introspector/PropertyUtils;

    if-nez v0, :cond_b

    .line 199
    new-instance v0, Lorg/yaml/snakeyaml/introspector/PropertyUtils;

    invoke-direct {v0}, Lorg/yaml/snakeyaml/introspector/PropertyUtils;-><init>()V

    iput-object v0, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->propertyUtils:Lorg/yaml/snakeyaml/introspector/PropertyUtils;

    .line 201
    :cond_b
    iget-object v0, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->propertyUtils:Lorg/yaml/snakeyaml/introspector/PropertyUtils;

    return-object v0
.end method

.method public final isExplicitPropertyUtils()Z
    .registers 2

    .line 205
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->explicitPropertyUtils:Z

    return v0
.end method

.method public represent(Ljava/lang/Object;)Lorg/yaml/snakeyaml/nodes/Node;
    .registers 4
    .param p1, "data"    # Ljava/lang/Object;

    .line 65
    invoke-virtual {p0, p1}, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->representData(Ljava/lang/Object;)Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v0

    .line 66
    .local v0, "node":Lorg/yaml/snakeyaml/nodes/Node;
    iget-object v1, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->representedObjects:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 67
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->objectToRepresent:Ljava/lang/Object;

    .line 68
    return-object v0
.end method

.method protected final representData(Ljava/lang/Object;)Lorg/yaml/snakeyaml/nodes/Node;
    .registers 7
    .param p1, "data"    # Ljava/lang/Object;

    .line 72
    iput-object p1, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->objectToRepresent:Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->representedObjects:Ljava/util/Map;

    iget-object v1, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->objectToRepresent:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 75
    iget-object v0, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->representedObjects:Ljava/util/Map;

    iget-object v1, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->objectToRepresent:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/nodes/Node;

    .line 76
    .local v0, "node":Lorg/yaml/snakeyaml/nodes/Node;
    return-object v0

    .line 80
    .end local v0    # "node":Lorg/yaml/snakeyaml/nodes/Node;
    :cond_17
    const/4 v0, 0x0

    if-nez p1, :cond_21

    .line 81
    iget-object v1, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->nullRepresenter:Lorg/yaml/snakeyaml/representer/Represent;

    invoke-interface {v1, v0}, Lorg/yaml/snakeyaml/representer/Represent;->representData(Ljava/lang/Object;)Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v0

    .line 82
    .restart local v0    # "node":Lorg/yaml/snakeyaml/nodes/Node;
    return-object v0

    .line 86
    .end local v0    # "node":Lorg/yaml/snakeyaml/nodes/Node;
    :cond_21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 87
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v2, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->representers:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 88
    iget-object v0, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->representers:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/representer/Represent;

    .line 89
    .local v0, "representer":Lorg/yaml/snakeyaml/representer/Represent;
    invoke-interface {v0, p1}, Lorg/yaml/snakeyaml/representer/Represent;->representData(Ljava/lang/Object;)Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v0

    .line 90
    .local v0, "node":Lorg/yaml/snakeyaml/nodes/Node;
    goto :goto_8a

    .line 92
    .end local v0    # "node":Lorg/yaml/snakeyaml/nodes/Node;
    :cond_3a
    iget-object v2, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->multiRepresenters:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_44
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_63

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 93
    .local v3, "repr":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 94
    iget-object v0, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->multiRepresenters:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/representer/Represent;

    .line 95
    .local v0, "representer":Lorg/yaml/snakeyaml/representer/Represent;
    invoke-interface {v0, p1}, Lorg/yaml/snakeyaml/representer/Represent;->representData(Ljava/lang/Object;)Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v4

    .line 96
    .local v4, "node":Lorg/yaml/snakeyaml/nodes/Node;
    return-object v4

    .line 100
    .end local v0    # "representer":Lorg/yaml/snakeyaml/representer/Represent;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "repr":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "node":Lorg/yaml/snakeyaml/nodes/Node;
    :cond_63
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-nez v2, :cond_8b

    .line 104
    iget-object v2, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->multiRepresenters:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 105
    iget-object v2, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->multiRepresenters:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/representer/Represent;

    .line 106
    .restart local v0    # "representer":Lorg/yaml/snakeyaml/representer/Represent;
    invoke-interface {v0, p1}, Lorg/yaml/snakeyaml/representer/Represent;->representData(Ljava/lang/Object;)Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v0

    .line 107
    .local v0, "node":Lorg/yaml/snakeyaml/nodes/Node;
    goto :goto_8a

    .line 108
    .end local v0    # "node":Lorg/yaml/snakeyaml/nodes/Node;
    :cond_7e
    iget-object v2, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->representers:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/representer/Represent;

    .line 109
    .local v0, "representer":Lorg/yaml/snakeyaml/representer/Represent;
    invoke-interface {v0, p1}, Lorg/yaml/snakeyaml/representer/Represent;->representData(Ljava/lang/Object;)Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v0

    .line 112
    .local v0, "node":Lorg/yaml/snakeyaml/nodes/Node;
    :goto_8a
    return-object v0

    .line 101
    .end local v0    # "node":Lorg/yaml/snakeyaml/nodes/Node;
    :cond_8b
    new-instance v0, Lorg/yaml/snakeyaml/error/YAMLException;

    const-string v2, "Arrays of primitives are not fully supported."

    invoke-direct {v0, v2}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected representMapping(Lorg/yaml/snakeyaml/nodes/Tag;Ljava/util/Map;Ljava/lang/Boolean;)Lorg/yaml/snakeyaml/nodes/Node;
    .registers 12
    .param p1, "tag"    # Lorg/yaml/snakeyaml/nodes/Tag;
    .param p3, "flowStyle"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/yaml/snakeyaml/nodes/Tag;",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Boolean;",
            ")",
            "Lorg/yaml/snakeyaml/nodes/Node;"
        }
    .end annotation

    .line 155
    .local p2, "mapping":Ljava/util/Map;, "Ljava/util/Map<+Ljava/lang/Object;Ljava/lang/Object;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 156
    .local v0, "value":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/nodes/NodeTuple;>;"
    new-instance v1, Lorg/yaml/snakeyaml/nodes/MappingNode;

    invoke-direct {v1, p1, v0, p3}, Lorg/yaml/snakeyaml/nodes/MappingNode;-><init>(Lorg/yaml/snakeyaml/nodes/Tag;Ljava/util/List;Ljava/lang/Boolean;)V

    .line 157
    .local v1, "node":Lorg/yaml/snakeyaml/nodes/MappingNode;
    iget-object v2, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->representedObjects:Ljava/util/Map;

    iget-object v3, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->objectToRepresent:Ljava/lang/Object;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const/4 v2, 0x1

    .line 159
    .local v2, "bestStyle":Z
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 160
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->representData(Ljava/lang/Object;)Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v5

    .line 161
    .local v5, "nodeKey":Lorg/yaml/snakeyaml/nodes/Node;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->representData(Ljava/lang/Object;)Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v6

    .line 162
    .local v6, "nodeValue":Lorg/yaml/snakeyaml/nodes/Node;
    instance-of v7, v5, Lorg/yaml/snakeyaml/nodes/ScalarNode;

    if-eqz v7, :cond_47

    move-object v7, v5

    check-cast v7, Lorg/yaml/snakeyaml/nodes/ScalarNode;

    invoke-virtual {v7}, Lorg/yaml/snakeyaml/nodes/ScalarNode;->getStyle()Ljava/lang/Character;

    move-result-object v7

    if-eqz v7, :cond_48

    .line 163
    :cond_47
    const/4 v2, 0x0

    .line 165
    :cond_48
    instance-of v7, v6, Lorg/yaml/snakeyaml/nodes/ScalarNode;

    if-eqz v7, :cond_55

    move-object v7, v6

    check-cast v7, Lorg/yaml/snakeyaml/nodes/ScalarNode;

    invoke-virtual {v7}, Lorg/yaml/snakeyaml/nodes/ScalarNode;->getStyle()Ljava/lang/Character;

    move-result-object v7

    if-eqz v7, :cond_56

    .line 166
    :cond_55
    const/4 v2, 0x0

    .line 168
    :cond_56
    new-instance v7, Lorg/yaml/snakeyaml/nodes/NodeTuple;

    invoke-direct {v7, v5, v6}, Lorg/yaml/snakeyaml/nodes/NodeTuple;-><init>(Lorg/yaml/snakeyaml/nodes/Node;Lorg/yaml/snakeyaml/nodes/Node;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v5    # "nodeKey":Lorg/yaml/snakeyaml/nodes/Node;
    .end local v6    # "nodeValue":Lorg/yaml/snakeyaml/nodes/Node;
    goto :goto_1e

    .line 170
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_5f
    if-nez p3, :cond_78

    .line 171
    iget-object v3, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->defaultFlowStyle:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    sget-object v4, Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;->AUTO:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    if-eq v3, v4, :cond_71

    .line 172
    iget-object v3, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->defaultFlowStyle:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;->getStyleBoolean()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/yaml/snakeyaml/nodes/MappingNode;->setFlowStyle(Ljava/lang/Boolean;)V

    goto :goto_78

    .line 174
    :cond_71
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/yaml/snakeyaml/nodes/MappingNode;->setFlowStyle(Ljava/lang/Boolean;)V

    .line 177
    :cond_78
    :goto_78
    return-object v1
.end method

.method protected representScalar(Lorg/yaml/snakeyaml/nodes/Tag;Ljava/lang/String;)Lorg/yaml/snakeyaml/nodes/Node;
    .registers 4
    .param p1, "tag"    # Lorg/yaml/snakeyaml/nodes/Tag;
    .param p2, "value"    # Ljava/lang/String;

    .line 124
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->representScalar(Lorg/yaml/snakeyaml/nodes/Tag;Ljava/lang/String;Ljava/lang/Character;)Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v0

    return-object v0
.end method

.method protected representScalar(Lorg/yaml/snakeyaml/nodes/Tag;Ljava/lang/String;Ljava/lang/Character;)Lorg/yaml/snakeyaml/nodes/Node;
    .registers 11
    .param p1, "tag"    # Lorg/yaml/snakeyaml/nodes/Tag;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "style"    # Ljava/lang/Character;

    .line 116
    if-nez p3, :cond_4

    .line 117
    iget-object p3, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->defaultScalarStyle:Ljava/lang/Character;

    .line 119
    :cond_4
    new-instance v6, Lorg/yaml/snakeyaml/nodes/ScalarNode;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/yaml/snakeyaml/nodes/ScalarNode;-><init>(Lorg/yaml/snakeyaml/nodes/Tag;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/Character;)V

    .line 120
    .local v0, "node":Lorg/yaml/snakeyaml/nodes/Node;
    return-object v0
.end method

.method protected representSequence(Lorg/yaml/snakeyaml/nodes/Tag;Ljava/lang/Iterable;Ljava/lang/Boolean;)Lorg/yaml/snakeyaml/nodes/Node;
    .registers 12
    .param p1, "tag"    # Lorg/yaml/snakeyaml/nodes/Tag;
    .param p3, "flowStyle"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/yaml/snakeyaml/nodes/Tag;",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Boolean;",
            ")",
            "Lorg/yaml/snakeyaml/nodes/Node;"
        }
    .end annotation

    .line 128
    .local p2, "sequence":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/lang/Object;>;"
    const/16 v0, 0xa

    .line 129
    .local v0, "size":I
    instance-of v1, p2, Ljava/util/List;

    if-eqz v1, :cond_d

    .line 130
    move-object v1, p2

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 132
    :cond_d
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 133
    .local v1, "value":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/nodes/Node;>;"
    new-instance v2, Lorg/yaml/snakeyaml/nodes/SequenceNode;

    invoke-direct {v2, p1, v1, p3}, Lorg/yaml/snakeyaml/nodes/SequenceNode;-><init>(Lorg/yaml/snakeyaml/nodes/Tag;Ljava/util/List;Ljava/lang/Boolean;)V

    .line 134
    .local v2, "node":Lorg/yaml/snakeyaml/nodes/SequenceNode;
    iget-object v3, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->representedObjects:Ljava/util/Map;

    iget-object v4, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->objectToRepresent:Ljava/lang/Object;

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const/4 v3, 0x1

    .line 136
    .local v3, "bestStyle":Z
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_23
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_43

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 137
    .local v5, "item":Ljava/lang/Object;
    invoke-virtual {p0, v5}, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->representData(Ljava/lang/Object;)Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v6

    .line 138
    .local v6, "nodeItem":Lorg/yaml/snakeyaml/nodes/Node;
    instance-of v7, v6, Lorg/yaml/snakeyaml/nodes/ScalarNode;

    if-eqz v7, :cond_3e

    move-object v7, v6

    check-cast v7, Lorg/yaml/snakeyaml/nodes/ScalarNode;

    invoke-virtual {v7}, Lorg/yaml/snakeyaml/nodes/ScalarNode;->getStyle()Ljava/lang/Character;

    move-result-object v7

    if-eqz v7, :cond_3f

    .line 139
    :cond_3e
    const/4 v3, 0x0

    .line 141
    :cond_3f
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    .end local v5    # "item":Ljava/lang/Object;
    .end local v6    # "nodeItem":Lorg/yaml/snakeyaml/nodes/Node;
    goto :goto_23

    .line 143
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_43
    if-nez p3, :cond_5c

    .line 144
    iget-object v4, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->defaultFlowStyle:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    sget-object v5, Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;->AUTO:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    if-eq v4, v5, :cond_55

    .line 145
    iget-object v4, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->defaultFlowStyle:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    invoke-virtual {v4}, Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;->getStyleBoolean()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/yaml/snakeyaml/nodes/SequenceNode;->setFlowStyle(Ljava/lang/Boolean;)V

    goto :goto_5c

    .line 147
    :cond_55
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/yaml/snakeyaml/nodes/SequenceNode;->setFlowStyle(Ljava/lang/Boolean;)V

    .line 150
    :cond_5c
    :goto_5c
    return-object v2
.end method

.method public setDefaultFlowStyle(Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;)V
    .registers 2
    .param p1, "defaultFlowStyle"    # Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    .line 185
    iput-object p1, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->defaultFlowStyle:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    .line 186
    return-void
.end method

.method public setDefaultScalarStyle(Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;)V
    .registers 3
    .param p1, "defaultStyle"    # Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    .line 181
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;->getChar()Ljava/lang/Character;

    move-result-object v0

    iput-object v0, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->defaultScalarStyle:Ljava/lang/Character;

    .line 182
    return-void
.end method

.method public setPropertyUtils(Lorg/yaml/snakeyaml/introspector/PropertyUtils;)V
    .registers 3
    .param p1, "propertyUtils"    # Lorg/yaml/snakeyaml/introspector/PropertyUtils;

    .line 193
    iput-object p1, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->propertyUtils:Lorg/yaml/snakeyaml/introspector/PropertyUtils;

    .line 194
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->explicitPropertyUtils:Z

    .line 195
    return-void
.end method
