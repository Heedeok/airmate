.class public Lorg/yaml/snakeyaml/LoaderOptions;
.super Ljava/lang/Object;
.source "LoaderOptions.java"


# instance fields
.field private rootTypeDescription:Lorg/yaml/snakeyaml/TypeDescription;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 25
    new-instance v0, Lorg/yaml/snakeyaml/TypeDescription;

    const-class v1, Ljava/lang/Object;

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/TypeDescription;-><init>(Ljava/lang/Class;)V

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/LoaderOptions;-><init>(Lorg/yaml/snakeyaml/TypeDescription;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Lorg/yaml/snakeyaml/TypeDescription;)V
    .registers 2
    .param p1, "rootTypeDescription"    # Lorg/yaml/snakeyaml/TypeDescription;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/yaml/snakeyaml/LoaderOptions;->rootTypeDescription:Lorg/yaml/snakeyaml/TypeDescription;

    .line 30
    return-void
.end method


# virtual methods
.method public getRootTypeDescription()Lorg/yaml/snakeyaml/TypeDescription;
    .registers 2

    .line 33
    iget-object v0, p0, Lorg/yaml/snakeyaml/LoaderOptions;->rootTypeDescription:Lorg/yaml/snakeyaml/TypeDescription;

    return-object v0
.end method

.method public setRootTypeDescription(Lorg/yaml/snakeyaml/TypeDescription;)V
    .registers 2
    .param p1, "rootTypeDescription"    # Lorg/yaml/snakeyaml/TypeDescription;

    .line 37
    iput-object p1, p0, Lorg/yaml/snakeyaml/LoaderOptions;->rootTypeDescription:Lorg/yaml/snakeyaml/TypeDescription;

    .line 38
    return-void
.end method
