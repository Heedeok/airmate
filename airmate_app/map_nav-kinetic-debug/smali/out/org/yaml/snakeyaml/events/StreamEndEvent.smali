.class public final Lorg/yaml/snakeyaml/events/StreamEndEvent;
.super Lorg/yaml/snakeyaml/events/Event;
.source "StreamEndEvent.java"


# direct methods
.method public constructor <init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V
    .registers 3
    .param p1, "startMark"    # Lorg/yaml/snakeyaml/error/Mark;
    .param p2, "endMark"    # Lorg/yaml/snakeyaml/error/Mark;

    .line 33
    invoke-direct {p0, p1, p2}, Lorg/yaml/snakeyaml/events/Event;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    .line 34
    return-void
.end method


# virtual methods
.method public is(Lorg/yaml/snakeyaml/events/Event$ID;)Z
    .registers 3
    .param p1, "id"    # Lorg/yaml/snakeyaml/events/Event$ID;

    .line 38
    sget-object v0, Lorg/yaml/snakeyaml/events/Event$ID;->StreamEnd:Lorg/yaml/snakeyaml/events/Event$ID;

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method
