.class public Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlSet;
.super Ljava/lang/Object;
.source "SafeConstructor.java"

# interfaces
.implements Lorg/yaml/snakeyaml/constructor/Construct;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/yaml/snakeyaml/constructor/SafeConstructor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConstructYamlSet"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/yaml/snakeyaml/constructor/SafeConstructor;


# direct methods
.method public constructor <init>(Lorg/yaml/snakeyaml/constructor/SafeConstructor;)V
    .registers 2

    .line 411
    iput-object p1, p0, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlSet;->this$0:Lorg/yaml/snakeyaml/constructor/SafeConstructor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public construct(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;
    .registers 4
    .param p1, "node"    # Lorg/yaml/snakeyaml/nodes/Node;

    .line 413
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->isTwoStepsConstruction()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 414
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlSet;->this$0:Lorg/yaml/snakeyaml/constructor/SafeConstructor;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->createDefaultSet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 416
    :cond_d
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlSet;->this$0:Lorg/yaml/snakeyaml/constructor/SafeConstructor;

    move-object v1, p1

    check-cast v1, Lorg/yaml/snakeyaml/nodes/MappingNode;

    invoke-virtual {v0, v1}, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->constructSet(Lorg/yaml/snakeyaml/nodes/MappingNode;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public construct2ndStep(Lorg/yaml/snakeyaml/nodes/Node;Ljava/lang/Object;)V
    .registers 6
    .param p1, "node"    # Lorg/yaml/snakeyaml/nodes/Node;
    .param p2, "object"    # Ljava/lang/Object;

    .line 422
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->isTwoStepsConstruction()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 423
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlSet;->this$0:Lorg/yaml/snakeyaml/constructor/SafeConstructor;

    move-object v1, p1

    check-cast v1, Lorg/yaml/snakeyaml/nodes/MappingNode;

    move-object v2, p2

    check-cast v2, Ljava/util/Set;

    invoke-virtual {v0, v1, v2}, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->constructSet2ndStep(Lorg/yaml/snakeyaml/nodes/MappingNode;Ljava/util/Set;)V

    .line 427
    return-void

    .line 425
    :cond_12
    new-instance v0, Lorg/yaml/snakeyaml/error/YAMLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected recursive set structure. Node: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
