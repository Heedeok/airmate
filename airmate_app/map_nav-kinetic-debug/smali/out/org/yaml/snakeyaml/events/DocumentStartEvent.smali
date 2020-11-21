.class public final Lorg/yaml/snakeyaml/events/DocumentStartEvent;
.super Lorg/yaml/snakeyaml/events/Event;
.source "DocumentStartEvent.java"


# instance fields
.field private final explicit:Z

.field private final tags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final version:[Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;Z[Ljava/lang/Integer;Ljava/util/Map;)V
    .registers 6
    .param p1, "startMark"    # Lorg/yaml/snakeyaml/error/Mark;
    .param p2, "endMark"    # Lorg/yaml/snakeyaml/error/Mark;
    .param p3, "explicit"    # Z
    .param p4, "version"    # [Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/yaml/snakeyaml/error/Mark;",
            "Lorg/yaml/snakeyaml/error/Mark;",
            "Z[",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 35
    .local p5, "tags":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Lorg/yaml/snakeyaml/events/Event;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    .line 36
    iput-boolean p3, p0, Lorg/yaml/snakeyaml/events/DocumentStartEvent;->explicit:Z

    .line 37
    iput-object p4, p0, Lorg/yaml/snakeyaml/events/DocumentStartEvent;->version:[Ljava/lang/Integer;

    .line 38
    iput-object p5, p0, Lorg/yaml/snakeyaml/events/DocumentStartEvent;->tags:Ljava/util/Map;

    .line 39
    return-void
.end method


# virtual methods
.method public getExplicit()Z
    .registers 2

    .line 42
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/events/DocumentStartEvent;->explicit:Z

    return v0
.end method

.method public getTags()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lorg/yaml/snakeyaml/events/DocumentStartEvent;->tags:Ljava/util/Map;

    return-object v0
.end method

.method public getVersion()[Ljava/lang/Integer;
    .registers 2

    .line 54
    iget-object v0, p0, Lorg/yaml/snakeyaml/events/DocumentStartEvent;->version:[Ljava/lang/Integer;

    return-object v0
.end method

.method public is(Lorg/yaml/snakeyaml/events/Event$ID;)Z
    .registers 3
    .param p1, "id"    # Lorg/yaml/snakeyaml/events/Event$ID;

    .line 69
    sget-object v0, Lorg/yaml/snakeyaml/events/Event$ID;->DocumentStart:Lorg/yaml/snakeyaml/events/Event$ID;

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method
