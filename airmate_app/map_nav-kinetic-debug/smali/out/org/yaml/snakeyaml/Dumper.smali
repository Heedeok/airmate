.class public final Lorg/yaml/snakeyaml/Dumper;
.super Ljava/lang/Object;
.source "Dumper.java"


# instance fields
.field protected final options:Lorg/yaml/snakeyaml/DumperOptions;

.field protected final representer:Lorg/yaml/snakeyaml/representer/Representer;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 41
    new-instance v0, Lorg/yaml/snakeyaml/representer/Representer;

    invoke-direct {v0}, Lorg/yaml/snakeyaml/representer/Representer;-><init>()V

    new-instance v1, Lorg/yaml/snakeyaml/DumperOptions;

    invoke-direct {v1}, Lorg/yaml/snakeyaml/DumperOptions;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/yaml/snakeyaml/Dumper;-><init>(Lorg/yaml/snakeyaml/representer/Representer;Lorg/yaml/snakeyaml/DumperOptions;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lorg/yaml/snakeyaml/DumperOptions;)V
    .registers 3
    .param p1, "options"    # Lorg/yaml/snakeyaml/DumperOptions;

    .line 33
    new-instance v0, Lorg/yaml/snakeyaml/representer/Representer;

    invoke-direct {v0}, Lorg/yaml/snakeyaml/representer/Representer;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/yaml/snakeyaml/Dumper;-><init>(Lorg/yaml/snakeyaml/representer/Representer;Lorg/yaml/snakeyaml/DumperOptions;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Lorg/yaml/snakeyaml/representer/Representer;)V
    .registers 3
    .param p1, "representer"    # Lorg/yaml/snakeyaml/representer/Representer;

    .line 37
    new-instance v0, Lorg/yaml/snakeyaml/DumperOptions;

    invoke-direct {v0}, Lorg/yaml/snakeyaml/DumperOptions;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/yaml/snakeyaml/Dumper;-><init>(Lorg/yaml/snakeyaml/representer/Representer;Lorg/yaml/snakeyaml/DumperOptions;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Lorg/yaml/snakeyaml/representer/Representer;Lorg/yaml/snakeyaml/DumperOptions;)V
    .registers 3
    .param p1, "representer"    # Lorg/yaml/snakeyaml/representer/Representer;
    .param p2, "options"    # Lorg/yaml/snakeyaml/DumperOptions;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/yaml/snakeyaml/Dumper;->representer:Lorg/yaml/snakeyaml/representer/Representer;

    .line 29
    iput-object p2, p0, Lorg/yaml/snakeyaml/Dumper;->options:Lorg/yaml/snakeyaml/DumperOptions;

    .line 30
    return-void
.end method
