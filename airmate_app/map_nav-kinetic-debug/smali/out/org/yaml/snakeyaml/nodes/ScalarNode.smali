.class public Lorg/yaml/snakeyaml/nodes/ScalarNode;
.super Lorg/yaml/snakeyaml/nodes/Node;
.source "ScalarNode.java"


# instance fields
.field private style:Ljava/lang/Character;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/yaml/snakeyaml/nodes/Tag;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/Character;)V
    .registers 13
    .param p1, "tag"    # Lorg/yaml/snakeyaml/nodes/Tag;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "startMark"    # Lorg/yaml/snakeyaml/error/Mark;
    .param p4, "endMark"    # Lorg/yaml/snakeyaml/error/Mark;
    .param p5, "style"    # Ljava/lang/Character;

    .line 31
    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/yaml/snakeyaml/nodes/ScalarNode;-><init>(Lorg/yaml/snakeyaml/nodes/Tag;ZLjava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/Character;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Lorg/yaml/snakeyaml/nodes/Tag;ZLjava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/Character;)V
    .registers 9
    .param p1, "tag"    # Lorg/yaml/snakeyaml/nodes/Tag;
    .param p2, "resolved"    # Z
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "startMark"    # Lorg/yaml/snakeyaml/error/Mark;
    .param p5, "endMark"    # Lorg/yaml/snakeyaml/error/Mark;
    .param p6, "style"    # Ljava/lang/Character;

    .line 36
    invoke-direct {p0, p1, p4, p5}, Lorg/yaml/snakeyaml/nodes/Node;-><init>(Lorg/yaml/snakeyaml/nodes/Tag;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    .line 37
    if-eqz p3, :cond_c

    .line 40
    iput-object p3, p0, Lorg/yaml/snakeyaml/nodes/ScalarNode;->value:Ljava/lang/String;

    .line 41
    iput-object p6, p0, Lorg/yaml/snakeyaml/nodes/ScalarNode;->style:Ljava/lang/Character;

    .line 42
    iput-boolean p2, p0, Lorg/yaml/snakeyaml/nodes/ScalarNode;->resolved:Z

    .line 43
    return-void

    .line 38
    :cond_c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "value in a Node is required."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getNodeId()Lorg/yaml/snakeyaml/nodes/NodeId;
    .registers 2

    .line 58
    sget-object v0, Lorg/yaml/snakeyaml/nodes/NodeId;->scalar:Lorg/yaml/snakeyaml/nodes/NodeId;

    return-object v0
.end method

.method public getStyle()Ljava/lang/Character;
    .registers 2

    .line 53
    iget-object v0, p0, Lorg/yaml/snakeyaml/nodes/ScalarNode;->style:Ljava/lang/Character;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .line 67
    iget-object v0, p0, Lorg/yaml/snakeyaml/nodes/ScalarNode;->value:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/yaml/snakeyaml/nodes/ScalarNode;->getTag()Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/yaml/snakeyaml/nodes/ScalarNode;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
