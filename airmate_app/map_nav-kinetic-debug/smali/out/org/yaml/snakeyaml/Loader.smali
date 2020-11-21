.class public final Lorg/yaml/snakeyaml/Loader;
.super Ljava/lang/Object;
.source "Loader.java"


# instance fields
.field protected final constructor:Lorg/yaml/snakeyaml/constructor/BaseConstructor;

.field protected resolver:Lorg/yaml/snakeyaml/resolver/Resolver;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 35
    new-instance v0, Lorg/yaml/snakeyaml/constructor/Constructor;

    invoke-direct {v0}, Lorg/yaml/snakeyaml/constructor/Constructor;-><init>()V

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/Loader;-><init>(Lorg/yaml/snakeyaml/constructor/BaseConstructor;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lorg/yaml/snakeyaml/constructor/BaseConstructor;)V
    .registers 2
    .param p1, "constructor"    # Lorg/yaml/snakeyaml/constructor/BaseConstructor;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/yaml/snakeyaml/Loader;->constructor:Lorg/yaml/snakeyaml/constructor/BaseConstructor;

    .line 32
    return-void
.end method
