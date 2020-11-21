.class public Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlNull;
.super Lorg/yaml/snakeyaml/constructor/AbstractConstruct;
.source "SafeConstructor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/yaml/snakeyaml/constructor/SafeConstructor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConstructYamlNull"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/yaml/snakeyaml/constructor/SafeConstructor;


# direct methods
.method public constructor <init>(Lorg/yaml/snakeyaml/constructor/SafeConstructor;)V
    .registers 2

    .line 154
    iput-object p1, p0, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlNull;->this$0:Lorg/yaml/snakeyaml/constructor/SafeConstructor;

    invoke-direct {p0}, Lorg/yaml/snakeyaml/constructor/AbstractConstruct;-><init>()V

    return-void
.end method


# virtual methods
.method public construct(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;
    .registers 4
    .param p1, "node"    # Lorg/yaml/snakeyaml/nodes/Node;

    .line 156
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlNull;->this$0:Lorg/yaml/snakeyaml/constructor/SafeConstructor;

    move-object v1, p1

    check-cast v1, Lorg/yaml/snakeyaml/nodes/ScalarNode;

    invoke-virtual {v0, v1}, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->constructScalar(Lorg/yaml/snakeyaml/nodes/ScalarNode;)Ljava/lang/Object;

    .line 157
    const/4 v0, 0x0

    return-object v0
.end method
