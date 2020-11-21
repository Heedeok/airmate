.class public abstract Lorg/yaml/snakeyaml/nodes/CollectionNode;
.super Lorg/yaml/snakeyaml/nodes/Node;
.source "CollectionNode.java"


# instance fields
.field private flowStyle:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lorg/yaml/snakeyaml/nodes/Tag;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/Boolean;)V
    .registers 5
    .param p1, "tag"    # Lorg/yaml/snakeyaml/nodes/Tag;
    .param p2, "startMark"    # Lorg/yaml/snakeyaml/error/Mark;
    .param p3, "endMark"    # Lorg/yaml/snakeyaml/error/Mark;
    .param p4, "flowStyle"    # Ljava/lang/Boolean;

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lorg/yaml/snakeyaml/nodes/Node;-><init>(Lorg/yaml/snakeyaml/nodes/Tag;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    .line 29
    iput-object p4, p0, Lorg/yaml/snakeyaml/nodes/CollectionNode;->flowStyle:Ljava/lang/Boolean;

    .line 30
    return-void
.end method


# virtual methods
.method public getFlowStyle()Ljava/lang/Boolean;
    .registers 2

    .line 39
    iget-object v0, p0, Lorg/yaml/snakeyaml/nodes/CollectionNode;->flowStyle:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setEndMark(Lorg/yaml/snakeyaml/error/Mark;)V
    .registers 2
    .param p1, "endMark"    # Lorg/yaml/snakeyaml/error/Mark;

    .line 47
    iput-object p1, p0, Lorg/yaml/snakeyaml/nodes/CollectionNode;->endMark:Lorg/yaml/snakeyaml/error/Mark;

    .line 48
    return-void
.end method

.method public setFlowStyle(Ljava/lang/Boolean;)V
    .registers 2
    .param p1, "flowStyle"    # Ljava/lang/Boolean;

    .line 43
    iput-object p1, p0, Lorg/yaml/snakeyaml/nodes/CollectionNode;->flowStyle:Ljava/lang/Boolean;

    .line 44
    return-void
.end method
