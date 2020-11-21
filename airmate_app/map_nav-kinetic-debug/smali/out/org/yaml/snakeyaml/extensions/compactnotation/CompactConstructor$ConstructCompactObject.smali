.class public Lorg/yaml/snakeyaml/extensions/compactnotation/CompactConstructor$ConstructCompactObject;
.super Lorg/yaml/snakeyaml/constructor/AbstractConstruct;
.source "CompactConstructor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/yaml/snakeyaml/extensions/compactnotation/CompactConstructor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConstructCompactObject"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/yaml/snakeyaml/extensions/compactnotation/CompactConstructor;


# direct methods
.method public constructor <init>(Lorg/yaml/snakeyaml/extensions/compactnotation/CompactConstructor;)V
    .registers 2

    .line 149
    iput-object p1, p0, Lorg/yaml/snakeyaml/extensions/compactnotation/CompactConstructor$ConstructCompactObject;->this$0:Lorg/yaml/snakeyaml/extensions/compactnotation/CompactConstructor;

    invoke-direct {p0}, Lorg/yaml/snakeyaml/constructor/AbstractConstruct;-><init>()V

    return-void
.end method


# virtual methods
.method public construct(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;
    .registers 9
    .param p1, "node"    # Lorg/yaml/snakeyaml/nodes/Node;

    .line 152
    iget-object v0, p0, Lorg/yaml/snakeyaml/extensions/compactnotation/CompactConstructor$ConstructCompactObject;->this$0:Lorg/yaml/snakeyaml/extensions/compactnotation/CompactConstructor;

    move-object v1, p1

    check-cast v1, Lorg/yaml/snakeyaml/nodes/MappingNode;

    invoke-static {v0, v1}, Lorg/yaml/snakeyaml/extensions/compactnotation/CompactConstructor;->access$000(Lorg/yaml/snakeyaml/extensions/compactnotation/CompactConstructor;Lorg/yaml/snakeyaml/nodes/MappingNode;)Ljava/util/Map;

    move-result-object v0

    .line 154
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 155
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 156
    .local v2, "result":Ljava/lang/Object;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 157
    .local v3, "value":Ljava/lang/Object;
    instance-of v4, v3, Ljava/util/Map;

    if-eqz v4, :cond_34

    .line 158
    move-object v4, v3

    check-cast v4, Ljava/util/Map;

    .line 160
    .local v4, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_26
    iget-object v5, p0, Lorg/yaml/snakeyaml/extensions/compactnotation/CompactConstructor$ConstructCompactObject;->this$0:Lorg/yaml/snakeyaml/extensions/compactnotation/CompactConstructor;

    invoke-virtual {v5, v2, v4}, Lorg/yaml/snakeyaml/extensions/compactnotation/CompactConstructor;->setProperties(Ljava/lang/Object;Ljava/util/Map;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2b} :catch_2d

    .line 163
    nop

    .line 164
    .end local v4    # "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_3c

    .line 161
    .restart local v4    # "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_2d
    move-exception v5

    .line 162
    .local v5, "e":Ljava/lang/Exception;
    new-instance v6, Lorg/yaml/snakeyaml/error/YAMLException;

    invoke-direct {v6, v5}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 166
    .end local v4    # "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_34
    iget-object v4, p0, Lorg/yaml/snakeyaml/extensions/compactnotation/CompactConstructor$ConstructCompactObject;->this$0:Lorg/yaml/snakeyaml/extensions/compactnotation/CompactConstructor;

    move-object v5, v3

    check-cast v5, Ljava/util/List;

    invoke-virtual {v4, v2, v5}, Lorg/yaml/snakeyaml/extensions/compactnotation/CompactConstructor;->applySequence(Ljava/lang/Object;Ljava/util/List;)V

    .line 168
    :goto_3c
    return-object v2
.end method
