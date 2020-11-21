.class public abstract Lorg/yaml/snakeyaml/events/CollectionStartEvent;
.super Lorg/yaml/snakeyaml/events/NodeEvent;
.source "CollectionStartEvent.java"


# instance fields
.field private final flowStyle:Ljava/lang/Boolean;

.field private final implicit:Z

.field private final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/Boolean;)V
    .registers 7
    .param p1, "anchor"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "implicit"    # Z
    .param p4, "startMark"    # Lorg/yaml/snakeyaml/error/Mark;
    .param p5, "endMark"    # Lorg/yaml/snakeyaml/error/Mark;
    .param p6, "flowStyle"    # Ljava/lang/Boolean;

    .line 33
    invoke-direct {p0, p1, p4, p5}, Lorg/yaml/snakeyaml/events/NodeEvent;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    .line 34
    iput-object p2, p0, Lorg/yaml/snakeyaml/events/CollectionStartEvent;->tag:Ljava/lang/String;

    .line 35
    iput-boolean p3, p0, Lorg/yaml/snakeyaml/events/CollectionStartEvent;->implicit:Z

    .line 36
    iput-object p6, p0, Lorg/yaml/snakeyaml/events/CollectionStartEvent;->flowStyle:Ljava/lang/Boolean;

    .line 37
    return-void
.end method


# virtual methods
.method protected getArguments()Ljava/lang/String;
    .registers 3

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lorg/yaml/snakeyaml/events/NodeEvent;->getArguments()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/yaml/snakeyaml/events/CollectionStartEvent;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", implicit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/yaml/snakeyaml/events/CollectionStartEvent;->implicit:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFlowStyle()Ljava/lang/Boolean;
    .registers 2

    .line 66
    iget-object v0, p0, Lorg/yaml/snakeyaml/events/CollectionStartEvent;->flowStyle:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getImplicit()Z
    .registers 2

    .line 56
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/events/CollectionStartEvent;->implicit:Z

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 46
    iget-object v0, p0, Lorg/yaml/snakeyaml/events/CollectionStartEvent;->tag:Ljava/lang/String;

    return-object v0
.end method
