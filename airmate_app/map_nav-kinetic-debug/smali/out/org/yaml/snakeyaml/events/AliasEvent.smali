.class public final Lorg/yaml/snakeyaml/events/AliasEvent;
.super Lorg/yaml/snakeyaml/events/NodeEvent;
.source "AliasEvent.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V
    .registers 4
    .param p1, "anchor"    # Ljava/lang/String;
    .param p2, "startMark"    # Lorg/yaml/snakeyaml/error/Mark;
    .param p3, "endMark"    # Lorg/yaml/snakeyaml/error/Mark;

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lorg/yaml/snakeyaml/events/NodeEvent;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    .line 26
    return-void
.end method


# virtual methods
.method public is(Lorg/yaml/snakeyaml/events/Event$ID;)Z
    .registers 3
    .param p1, "id"    # Lorg/yaml/snakeyaml/events/Event$ID;

    .line 30
    sget-object v0, Lorg/yaml/snakeyaml/events/Event$ID;->Alias:Lorg/yaml/snakeyaml/events/Event$ID;

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method
