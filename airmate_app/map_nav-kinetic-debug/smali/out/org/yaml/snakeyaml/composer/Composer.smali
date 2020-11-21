.class public Lorg/yaml/snakeyaml/composer/Composer;
.super Ljava/lang/Object;
.source "Composer.java"


# instance fields
.field private final anchors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/yaml/snakeyaml/nodes/Node;",
            ">;"
        }
    .end annotation
.end field

.field private final parser:Lorg/yaml/snakeyaml/parser/Parser;

.field private final recursiveNodes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/yaml/snakeyaml/nodes/Node;",
            ">;"
        }
    .end annotation
.end field

.field private final resolver:Lorg/yaml/snakeyaml/resolver/Resolver;


# direct methods
.method public constructor <init>(Lorg/yaml/snakeyaml/parser/Parser;Lorg/yaml/snakeyaml/resolver/Resolver;)V
    .registers 4
    .param p1, "parser"    # Lorg/yaml/snakeyaml/parser/Parser;
    .param p2, "resolver"    # Lorg/yaml/snakeyaml/resolver/Resolver;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    .line 56
    iput-object p2, p0, Lorg/yaml/snakeyaml/composer/Composer;->resolver:Lorg/yaml/snakeyaml/resolver/Resolver;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/yaml/snakeyaml/composer/Composer;->anchors:Ljava/util/Map;

    .line 58
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/yaml/snakeyaml/composer/Composer;->recursiveNodes:Ljava/util/Set;

    .line 59
    return-void
.end method

.method private composeDocument()Lorg/yaml/snakeyaml/nodes/Node;
    .registers 3

    .line 120
    iget-object v0, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    invoke-interface {v0}, Lorg/yaml/snakeyaml/parser/Parser;->getEvent()Lorg/yaml/snakeyaml/events/Event;

    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/composer/Composer;->composeNode(Lorg/yaml/snakeyaml/nodes/Node;)Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v0

    .line 124
    .local v0, "node":Lorg/yaml/snakeyaml/nodes/Node;
    iget-object v1, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    invoke-interface {v1}, Lorg/yaml/snakeyaml/parser/Parser;->getEvent()Lorg/yaml/snakeyaml/events/Event;

    .line 125
    iget-object v1, p0, Lorg/yaml/snakeyaml/composer/Composer;->anchors:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 126
    iget-object v1, p0, Lorg/yaml/snakeyaml/composer/Composer;->recursiveNodes:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 127
    return-object v0
.end method

.method private composeMappingNode(Ljava/lang/String;)Lorg/yaml/snakeyaml/nodes/Node;
    .registers 14
    .param p1, "anchor"    # Ljava/lang/String;

    .line 213
    iget-object v0, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    invoke-interface {v0}, Lorg/yaml/snakeyaml/parser/Parser;->getEvent()Lorg/yaml/snakeyaml/events/Event;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/events/MappingStartEvent;

    .line 214
    .local v0, "startEvent":Lorg/yaml/snakeyaml/events/MappingStartEvent;
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/MappingStartEvent;->getTag()Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, "tag":Ljava/lang/String;
    const/4 v2, 0x0

    .line 217
    .local v2, "resolved":Z
    if-eqz v1, :cond_1e

    const-string v3, "!"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    goto :goto_1e

    .line 221
    :cond_18
    new-instance v3, Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-direct {v3, v1}, Lorg/yaml/snakeyaml/nodes/Tag;-><init>(Ljava/lang/String;)V

    goto :goto_2c

    .line 218
    :cond_1e
    :goto_1e
    iget-object v3, p0, Lorg/yaml/snakeyaml/composer/Composer;->resolver:Lorg/yaml/snakeyaml/resolver/Resolver;

    sget-object v4, Lorg/yaml/snakeyaml/nodes/NodeId;->mapping:Lorg/yaml/snakeyaml/nodes/NodeId;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/MappingStartEvent;->getImplicit()Z

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lorg/yaml/snakeyaml/resolver/Resolver;->resolve(Lorg/yaml/snakeyaml/nodes/NodeId;Ljava/lang/String;Z)Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v3

    .line 219
    .local v3, "nodeTag":Lorg/yaml/snakeyaml/nodes/Tag;
    const/4 v2, 0x1

    .line 221
    .end local v3    # "nodeTag":Lorg/yaml/snakeyaml/nodes/Tag;
    .local v5, "nodeTag":Lorg/yaml/snakeyaml/nodes/Tag;
    :goto_2c
    move-object v5, v3

    .line 224
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 225
    .local v3, "children":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/nodes/NodeTuple;>;"
    new-instance v11, Lorg/yaml/snakeyaml/nodes/MappingNode;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/MappingStartEvent;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/MappingStartEvent;->getFlowStyle()Ljava/lang/Boolean;

    move-result-object v10

    move-object v4, v11

    move v6, v2

    move-object v7, v3

    invoke-direct/range {v4 .. v10}, Lorg/yaml/snakeyaml/nodes/MappingNode;-><init>(Lorg/yaml/snakeyaml/nodes/Tag;ZLjava/util/List;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/Boolean;)V

    .line 227
    .local v4, "node":Lorg/yaml/snakeyaml/nodes/MappingNode;
    if-eqz p1, :cond_4a

    .line 228
    iget-object v6, p0, Lorg/yaml/snakeyaml/composer/Composer;->anchors:Ljava/util/Map;

    invoke-interface {v6, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    :cond_4a
    :goto_4a
    iget-object v6, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    sget-object v7, Lorg/yaml/snakeyaml/events/Event$ID;->MappingEnd:Lorg/yaml/snakeyaml/events/Event$ID;

    invoke-interface {v6, v7}, Lorg/yaml/snakeyaml/parser/Parser;->checkEvent(Lorg/yaml/snakeyaml/events/Event$ID;)Z

    move-result v6

    if-nez v6, :cond_87

    .line 231
    invoke-direct {p0, v4}, Lorg/yaml/snakeyaml/composer/Composer;->composeNode(Lorg/yaml/snakeyaml/nodes/Node;)Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v6

    .line 232
    .local v6, "itemKey":Lorg/yaml/snakeyaml/nodes/Node;
    invoke-virtual {v6}, Lorg/yaml/snakeyaml/nodes/Node;->getTag()Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v7

    sget-object v8, Lorg/yaml/snakeyaml/nodes/Tag;->MERGE:Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-virtual {v7, v8}, Lorg/yaml/snakeyaml/nodes/Tag;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_69

    .line 233
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Lorg/yaml/snakeyaml/nodes/MappingNode;->setMerged(Z)V

    goto :goto_7a

    .line 234
    :cond_69
    invoke-virtual {v6}, Lorg/yaml/snakeyaml/nodes/Node;->getTag()Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v7

    sget-object v8, Lorg/yaml/snakeyaml/nodes/Tag;->VALUE:Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-virtual {v7, v8}, Lorg/yaml/snakeyaml/nodes/Tag;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7a

    .line 235
    sget-object v7, Lorg/yaml/snakeyaml/nodes/Tag;->STR:Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-virtual {v6, v7}, Lorg/yaml/snakeyaml/nodes/Node;->setTag(Lorg/yaml/snakeyaml/nodes/Tag;)V

    .line 237
    :cond_7a
    :goto_7a
    invoke-direct {p0, v4}, Lorg/yaml/snakeyaml/composer/Composer;->composeNode(Lorg/yaml/snakeyaml/nodes/Node;)Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v7

    .line 238
    .local v7, "itemValue":Lorg/yaml/snakeyaml/nodes/Node;
    new-instance v8, Lorg/yaml/snakeyaml/nodes/NodeTuple;

    invoke-direct {v8, v6, v7}, Lorg/yaml/snakeyaml/nodes/NodeTuple;-><init>(Lorg/yaml/snakeyaml/nodes/Node;Lorg/yaml/snakeyaml/nodes/Node;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    .end local v6    # "itemKey":Lorg/yaml/snakeyaml/nodes/Node;
    .end local v7    # "itemValue":Lorg/yaml/snakeyaml/nodes/Node;
    goto :goto_4a

    .line 240
    :cond_87
    iget-object v6, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    invoke-interface {v6}, Lorg/yaml/snakeyaml/parser/Parser;->getEvent()Lorg/yaml/snakeyaml/events/Event;

    move-result-object v6

    .line 241
    .local v6, "endEvent":Lorg/yaml/snakeyaml/events/Event;
    invoke-virtual {v6}, Lorg/yaml/snakeyaml/events/Event;->getEndMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/yaml/snakeyaml/nodes/MappingNode;->setEndMark(Lorg/yaml/snakeyaml/error/Mark;)V

    .line 242
    return-object v4
.end method

.method private composeNode(Lorg/yaml/snakeyaml/nodes/Node;)Lorg/yaml/snakeyaml/nodes/Node;
    .registers 9
    .param p1, "parent"    # Lorg/yaml/snakeyaml/nodes/Node;

    .line 131
    iget-object v0, p0, Lorg/yaml/snakeyaml/composer/Composer;->recursiveNodes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v0, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    sget-object v1, Lorg/yaml/snakeyaml/events/Event$ID;->Alias:Lorg/yaml/snakeyaml/events/Event$ID;

    invoke-interface {v0, v1}, Lorg/yaml/snakeyaml/parser/Parser;->checkEvent(Lorg/yaml/snakeyaml/events/Event$ID;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 133
    iget-object v0, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    invoke-interface {v0}, Lorg/yaml/snakeyaml/parser/Parser;->getEvent()Lorg/yaml/snakeyaml/events/Event;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/events/AliasEvent;

    .line 134
    .local v0, "event":Lorg/yaml/snakeyaml/events/AliasEvent;
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/AliasEvent;->getAnchor()Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, "anchor":Ljava/lang/String;
    iget-object v2, p0, Lorg/yaml/snakeyaml/composer/Composer;->anchors:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 139
    iget-object v2, p0, Lorg/yaml/snakeyaml/composer/Composer;->anchors:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/yaml/snakeyaml/nodes/Node;

    .line 140
    .local v2, "result":Lorg/yaml/snakeyaml/nodes/Node;
    iget-object v3, p0, Lorg/yaml/snakeyaml/composer/Composer;->recursiveNodes:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 141
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/yaml/snakeyaml/nodes/Node;->setTwoStepsConstruction(Z)V

    .line 143
    :cond_37
    return-object v2

    .line 136
    .end local v2    # "result":Lorg/yaml/snakeyaml/nodes/Node;
    :cond_38
    new-instance v2, Lorg/yaml/snakeyaml/composer/ComposerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "found undefined alias "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/AliasEvent;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Lorg/yaml/snakeyaml/composer/ComposerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v2

    .line 145
    .end local v0    # "event":Lorg/yaml/snakeyaml/events/AliasEvent;
    .end local v1    # "anchor":Ljava/lang/String;
    :cond_54
    iget-object v0, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    invoke-interface {v0}, Lorg/yaml/snakeyaml/parser/Parser;->peekEvent()Lorg/yaml/snakeyaml/events/Event;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/events/NodeEvent;

    .line 146
    .local v0, "event":Lorg/yaml/snakeyaml/events/NodeEvent;
    const/4 v1, 0x0

    .line 147
    .restart local v1    # "anchor":Ljava/lang/String;
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/NodeEvent;->getAnchor()Ljava/lang/String;

    move-result-object v1

    .line 148
    if-eqz v1, :cond_9a

    iget-object v2, p0, Lorg/yaml/snakeyaml/composer/Composer;->anchors:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6c

    goto :goto_9a

    .line 149
    :cond_6c
    new-instance v2, Lorg/yaml/snakeyaml/composer/ComposerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "found duplicate anchor "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "; first occurence"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/yaml/snakeyaml/composer/Composer;->anchors:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/yaml/snakeyaml/nodes/Node;

    invoke-virtual {v4}, Lorg/yaml/snakeyaml/nodes/Node;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v4

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/NodeEvent;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v5

    const-string v6, "second occurence"

    invoke-direct {v2, v3, v4, v6, v5}, Lorg/yaml/snakeyaml/composer/ComposerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v2

    .line 153
    :cond_9a
    :goto_9a
    const/4 v2, 0x0

    .line 154
    .local v2, "node":Lorg/yaml/snakeyaml/nodes/Node;
    iget-object v3, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    sget-object v4, Lorg/yaml/snakeyaml/events/Event$ID;->Scalar:Lorg/yaml/snakeyaml/events/Event$ID;

    invoke-interface {v3, v4}, Lorg/yaml/snakeyaml/parser/Parser;->checkEvent(Lorg/yaml/snakeyaml/events/Event$ID;)Z

    move-result v3

    if-eqz v3, :cond_aa

    .line 155
    invoke-direct {p0, v1}, Lorg/yaml/snakeyaml/composer/Composer;->composeScalarNode(Ljava/lang/String;)Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v2

    goto :goto_bd

    .line 156
    :cond_aa
    iget-object v3, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    sget-object v4, Lorg/yaml/snakeyaml/events/Event$ID;->SequenceStart:Lorg/yaml/snakeyaml/events/Event$ID;

    invoke-interface {v3, v4}, Lorg/yaml/snakeyaml/parser/Parser;->checkEvent(Lorg/yaml/snakeyaml/events/Event$ID;)Z

    move-result v3

    if-eqz v3, :cond_b9

    .line 157
    invoke-direct {p0, v1}, Lorg/yaml/snakeyaml/composer/Composer;->composeSequenceNode(Ljava/lang/String;)Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v2

    goto :goto_bd

    .line 159
    :cond_b9
    invoke-direct {p0, v1}, Lorg/yaml/snakeyaml/composer/Composer;->composeMappingNode(Ljava/lang/String;)Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v2

    .line 161
    :goto_bd
    iget-object v3, p0, Lorg/yaml/snakeyaml/composer/Composer;->recursiveNodes:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 162
    return-object v2
.end method

.method private composeScalarNode(Ljava/lang/String;)Lorg/yaml/snakeyaml/nodes/Node;
    .registers 13
    .param p1, "anchor"    # Ljava/lang/String;

    .line 166
    iget-object v0, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    invoke-interface {v0}, Lorg/yaml/snakeyaml/parser/Parser;->getEvent()Lorg/yaml/snakeyaml/events/Event;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/events/ScalarEvent;

    .line 167
    .local v0, "ev":Lorg/yaml/snakeyaml/events/ScalarEvent;
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getTag()Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, "tag":Ljava/lang/String;
    const/4 v2, 0x0

    .line 170
    .local v2, "resolved":Z
    if-eqz v1, :cond_1e

    const-string v3, "!"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    goto :goto_1e

    .line 175
    :cond_18
    new-instance v3, Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-direct {v3, v1}, Lorg/yaml/snakeyaml/nodes/Tag;-><init>(Ljava/lang/String;)V

    goto :goto_33

    .line 171
    :cond_1e
    :goto_1e
    iget-object v3, p0, Lorg/yaml/snakeyaml/composer/Composer;->resolver:Lorg/yaml/snakeyaml/resolver/Resolver;

    sget-object v4, Lorg/yaml/snakeyaml/nodes/NodeId;->scalar:Lorg/yaml/snakeyaml/nodes/NodeId;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getImplicit()Lorg/yaml/snakeyaml/events/ImplicitTuple;

    move-result-object v6

    invoke-virtual {v6}, Lorg/yaml/snakeyaml/events/ImplicitTuple;->canOmitTagInPlainScalar()Z

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lorg/yaml/snakeyaml/resolver/Resolver;->resolve(Lorg/yaml/snakeyaml/nodes/NodeId;Ljava/lang/String;Z)Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v3

    .line 173
    .local v3, "nodeTag":Lorg/yaml/snakeyaml/nodes/Tag;
    const/4 v2, 0x1

    .line 175
    .end local v3    # "nodeTag":Lorg/yaml/snakeyaml/nodes/Tag;
    .local v5, "nodeTag":Lorg/yaml/snakeyaml/nodes/Tag;
    :goto_33
    move-object v5, v3

    .line 177
    new-instance v3, Lorg/yaml/snakeyaml/nodes/ScalarNode;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v8

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getEndMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v9

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getStyle()Ljava/lang/Character;

    move-result-object v10

    move-object v4, v3

    move v6, v2

    invoke-direct/range {v4 .. v10}, Lorg/yaml/snakeyaml/nodes/ScalarNode;-><init>(Lorg/yaml/snakeyaml/nodes/Tag;ZLjava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/Character;)V

    .line 179
    .local v3, "node":Lorg/yaml/snakeyaml/nodes/Node;
    if-eqz p1, :cond_52

    .line 180
    iget-object v4, p0, Lorg/yaml/snakeyaml/composer/Composer;->anchors:Ljava/util/Map;

    invoke-interface {v4, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    :cond_52
    return-object v3
.end method

.method private composeSequenceNode(Ljava/lang/String;)Lorg/yaml/snakeyaml/nodes/Node;
    .registers 14
    .param p1, "anchor"    # Ljava/lang/String;

    .line 186
    iget-object v0, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    invoke-interface {v0}, Lorg/yaml/snakeyaml/parser/Parser;->getEvent()Lorg/yaml/snakeyaml/events/Event;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/events/SequenceStartEvent;

    .line 187
    .local v0, "startEvent":Lorg/yaml/snakeyaml/events/SequenceStartEvent;
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/SequenceStartEvent;->getTag()Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, "tag":Ljava/lang/String;
    const/4 v2, 0x0

    .line 190
    .local v2, "resolved":Z
    if-eqz v1, :cond_1e

    const-string v3, "!"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    goto :goto_1e

    .line 194
    :cond_18
    new-instance v3, Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-direct {v3, v1}, Lorg/yaml/snakeyaml/nodes/Tag;-><init>(Ljava/lang/String;)V

    goto :goto_2c

    .line 191
    :cond_1e
    :goto_1e
    iget-object v3, p0, Lorg/yaml/snakeyaml/composer/Composer;->resolver:Lorg/yaml/snakeyaml/resolver/Resolver;

    sget-object v4, Lorg/yaml/snakeyaml/nodes/NodeId;->sequence:Lorg/yaml/snakeyaml/nodes/NodeId;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/SequenceStartEvent;->getImplicit()Z

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lorg/yaml/snakeyaml/resolver/Resolver;->resolve(Lorg/yaml/snakeyaml/nodes/NodeId;Ljava/lang/String;Z)Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v3

    .line 192
    .local v3, "nodeTag":Lorg/yaml/snakeyaml/nodes/Tag;
    const/4 v2, 0x1

    .line 194
    .end local v3    # "nodeTag":Lorg/yaml/snakeyaml/nodes/Tag;
    .local v5, "nodeTag":Lorg/yaml/snakeyaml/nodes/Tag;
    :goto_2c
    move-object v5, v3

    .line 196
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 197
    .local v3, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/yaml/snakeyaml/nodes/Node;>;"
    new-instance v11, Lorg/yaml/snakeyaml/nodes/SequenceNode;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/SequenceStartEvent;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/SequenceStartEvent;->getFlowStyle()Ljava/lang/Boolean;

    move-result-object v10

    move-object v4, v11

    move v6, v2

    move-object v7, v3

    invoke-direct/range {v4 .. v10}, Lorg/yaml/snakeyaml/nodes/SequenceNode;-><init>(Lorg/yaml/snakeyaml/nodes/Tag;ZLjava/util/List;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/Boolean;)V

    .line 199
    .local v4, "node":Lorg/yaml/snakeyaml/nodes/SequenceNode;
    if-eqz p1, :cond_4a

    .line 200
    iget-object v6, p0, Lorg/yaml/snakeyaml/composer/Composer;->anchors:Ljava/util/Map;

    invoke-interface {v6, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    :cond_4a
    const/4 v6, 0x0

    .line 203
    .local v6, "index":I
    :goto_4b
    iget-object v7, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    sget-object v8, Lorg/yaml/snakeyaml/events/Event$ID;->SequenceEnd:Lorg/yaml/snakeyaml/events/Event$ID;

    invoke-interface {v7, v8}, Lorg/yaml/snakeyaml/parser/Parser;->checkEvent(Lorg/yaml/snakeyaml/events/Event$ID;)Z

    move-result v7

    if-nez v7, :cond_5f

    .line 204
    invoke-direct {p0, v4}, Lorg/yaml/snakeyaml/composer/Composer;->composeNode(Lorg/yaml/snakeyaml/nodes/Node;)Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    add-int/lit8 v6, v6, 0x1

    goto :goto_4b

    .line 207
    :cond_5f
    iget-object v7, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    invoke-interface {v7}, Lorg/yaml/snakeyaml/parser/Parser;->getEvent()Lorg/yaml/snakeyaml/events/Event;

    move-result-object v7

    .line 208
    .local v7, "endEvent":Lorg/yaml/snakeyaml/events/Event;
    invoke-virtual {v7}, Lorg/yaml/snakeyaml/events/Event;->getEndMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v8

    invoke-virtual {v4, v8}, Lorg/yaml/snakeyaml/nodes/SequenceNode;->setEndMark(Lorg/yaml/snakeyaml/error/Mark;)V

    .line 209
    return-object v4
.end method


# virtual methods
.method public checkNode()Z
    .registers 3

    .line 68
    iget-object v0, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    sget-object v1, Lorg/yaml/snakeyaml/events/Event$ID;->StreamStart:Lorg/yaml/snakeyaml/events/Event$ID;

    invoke-interface {v0, v1}, Lorg/yaml/snakeyaml/parser/Parser;->checkEvent(Lorg/yaml/snakeyaml/events/Event$ID;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 69
    iget-object v0, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    invoke-interface {v0}, Lorg/yaml/snakeyaml/parser/Parser;->getEvent()Lorg/yaml/snakeyaml/events/Event;

    .line 72
    :cond_f
    iget-object v0, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    sget-object v1, Lorg/yaml/snakeyaml/events/Event$ID;->StreamEnd:Lorg/yaml/snakeyaml/events/Event$ID;

    invoke-interface {v0, v1}, Lorg/yaml/snakeyaml/parser/Parser;->checkEvent(Lorg/yaml/snakeyaml/events/Event$ID;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getNode()Lorg/yaml/snakeyaml/nodes/Node;
    .registers 3

    .line 83
    iget-object v0, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    sget-object v1, Lorg/yaml/snakeyaml/events/Event$ID;->StreamEnd:Lorg/yaml/snakeyaml/events/Event$ID;

    invoke-interface {v0, v1}, Lorg/yaml/snakeyaml/parser/Parser;->checkEvent(Lorg/yaml/snakeyaml/events/Event$ID;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 84
    invoke-direct {p0}, Lorg/yaml/snakeyaml/composer/Composer;->composeDocument()Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v0

    return-object v0

    .line 86
    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSingleNode()Lorg/yaml/snakeyaml/nodes/Node;
    .registers 8

    .line 101
    iget-object v0, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    invoke-interface {v0}, Lorg/yaml/snakeyaml/parser/Parser;->getEvent()Lorg/yaml/snakeyaml/events/Event;

    .line 103
    const/4 v0, 0x0

    .line 104
    .local v0, "document":Lorg/yaml/snakeyaml/nodes/Node;
    iget-object v1, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    sget-object v2, Lorg/yaml/snakeyaml/events/Event$ID;->StreamEnd:Lorg/yaml/snakeyaml/events/Event$ID;

    invoke-interface {v1, v2}, Lorg/yaml/snakeyaml/parser/Parser;->checkEvent(Lorg/yaml/snakeyaml/events/Event$ID;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 105
    invoke-direct {p0}, Lorg/yaml/snakeyaml/composer/Composer;->composeDocument()Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v0

    .line 108
    :cond_14
    iget-object v1, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    sget-object v2, Lorg/yaml/snakeyaml/events/Event$ID;->StreamEnd:Lorg/yaml/snakeyaml/events/Event$ID;

    invoke-interface {v1, v2}, Lorg/yaml/snakeyaml/parser/Parser;->checkEvent(Lorg/yaml/snakeyaml/events/Event$ID;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 114
    iget-object v1, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    invoke-interface {v1}, Lorg/yaml/snakeyaml/parser/Parser;->getEvent()Lorg/yaml/snakeyaml/events/Event;

    .line 115
    return-object v0

    .line 109
    :cond_24
    iget-object v1, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    invoke-interface {v1}, Lorg/yaml/snakeyaml/parser/Parser;->getEvent()Lorg/yaml/snakeyaml/events/Event;

    move-result-object v1

    .line 110
    .local v1, "event":Lorg/yaml/snakeyaml/events/Event;
    new-instance v2, Lorg/yaml/snakeyaml/composer/ComposerException;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/nodes/Node;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v3

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/events/Event;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v4

    const-string v5, "expected a single document in the stream"

    const-string v6, "but found another document"

    invoke-direct {v2, v5, v3, v6, v4}, Lorg/yaml/snakeyaml/composer/ComposerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v2
.end method
