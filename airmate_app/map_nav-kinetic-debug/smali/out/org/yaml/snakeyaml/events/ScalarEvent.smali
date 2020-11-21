.class public final Lorg/yaml/snakeyaml/events/ScalarEvent;
.super Lorg/yaml/snakeyaml/events/NodeEvent;
.source "ScalarEvent.java"


# instance fields
.field private final implicit:Lorg/yaml/snakeyaml/events/ImplicitTuple;

.field private final style:Ljava/lang/Character;

.field private final tag:Ljava/lang/String;

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/yaml/snakeyaml/events/ImplicitTuple;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/Character;)V
    .registers 8
    .param p1, "anchor"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "implicit"    # Lorg/yaml/snakeyaml/events/ImplicitTuple;
    .param p4, "value"    # Ljava/lang/String;
    .param p5, "startMark"    # Lorg/yaml/snakeyaml/error/Mark;
    .param p6, "endMark"    # Lorg/yaml/snakeyaml/error/Mark;
    .param p7, "style"    # Ljava/lang/Character;

    .line 36
    invoke-direct {p0, p1, p5, p6}, Lorg/yaml/snakeyaml/events/NodeEvent;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    .line 37
    iput-object p2, p0, Lorg/yaml/snakeyaml/events/ScalarEvent;->tag:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lorg/yaml/snakeyaml/events/ScalarEvent;->implicit:Lorg/yaml/snakeyaml/events/ImplicitTuple;

    .line 39
    iput-object p4, p0, Lorg/yaml/snakeyaml/events/ScalarEvent;->value:Ljava/lang/String;

    .line 40
    iput-object p7, p0, Lorg/yaml/snakeyaml/events/ScalarEvent;->style:Ljava/lang/Character;

    .line 41
    return-void
.end method


# virtual methods
.method protected getArguments()Ljava/lang/String;
    .registers 3

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lorg/yaml/snakeyaml/events/NodeEvent;->getArguments()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/yaml/snakeyaml/events/ScalarEvent;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/yaml/snakeyaml/events/ScalarEvent;->implicit:Lorg/yaml/snakeyaml/events/ImplicitTuple;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/yaml/snakeyaml/events/ScalarEvent;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImplicit()Lorg/yaml/snakeyaml/events/ImplicitTuple;
    .registers 2

    .line 88
    iget-object v0, p0, Lorg/yaml/snakeyaml/events/ScalarEvent;->implicit:Lorg/yaml/snakeyaml/events/ImplicitTuple;

    return-object v0
.end method

.method public getStyle()Ljava/lang/Character;
    .registers 2

    .line 72
    iget-object v0, p0, Lorg/yaml/snakeyaml/events/ScalarEvent;->style:Ljava/lang/Character;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 50
    iget-object v0, p0, Lorg/yaml/snakeyaml/events/ScalarEvent;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .line 84
    iget-object v0, p0, Lorg/yaml/snakeyaml/events/ScalarEvent;->value:Ljava/lang/String;

    return-object v0
.end method

.method public is(Lorg/yaml/snakeyaml/events/Event$ID;)Z
    .registers 3
    .param p1, "id"    # Lorg/yaml/snakeyaml/events/Event$ID;

    .line 98
    sget-object v0, Lorg/yaml/snakeyaml/events/Event$ID;->Scalar:Lorg/yaml/snakeyaml/events/Event$ID;

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method
