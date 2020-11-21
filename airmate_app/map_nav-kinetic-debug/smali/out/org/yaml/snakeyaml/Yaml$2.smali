.class Lorg/yaml/snakeyaml/Yaml$2;
.super Ljava/lang/Object;
.source "Yaml.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/yaml/snakeyaml/Yaml;->composeAll(Ljava/io/Reader;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lorg/yaml/snakeyaml/nodes/Node;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/yaml/snakeyaml/Yaml;

.field final synthetic val$composer:Lorg/yaml/snakeyaml/composer/Composer;


# direct methods
.method constructor <init>(Lorg/yaml/snakeyaml/Yaml;Lorg/yaml/snakeyaml/composer/Composer;)V
    .registers 3

    .line 577
    iput-object p1, p0, Lorg/yaml/snakeyaml/Yaml$2;->this$0:Lorg/yaml/snakeyaml/Yaml;

    iput-object p2, p0, Lorg/yaml/snakeyaml/Yaml$2;->val$composer:Lorg/yaml/snakeyaml/composer/Composer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .line 579
    iget-object v0, p0, Lorg/yaml/snakeyaml/Yaml$2;->val$composer:Lorg/yaml/snakeyaml/composer/Composer;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/composer/Composer;->checkNode()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 577
    invoke-virtual {p0}, Lorg/yaml/snakeyaml/Yaml$2;->next()Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/yaml/snakeyaml/nodes/Node;
    .registers 2

    .line 583
    iget-object v0, p0, Lorg/yaml/snakeyaml/Yaml$2;->val$composer:Lorg/yaml/snakeyaml/composer/Composer;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/composer/Composer;->getNode()Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    .line 587
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
