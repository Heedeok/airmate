.class Lorg/yaml/snakeyaml/emitter/Emitter$ExpectBlockMappingSimpleValue;
.super Ljava/lang/Object;
.source "Emitter.java"

# interfaces
.implements Lorg/yaml/snakeyaml/emitter/EmitterState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/yaml/snakeyaml/emitter/Emitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpectBlockMappingSimpleValue"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/yaml/snakeyaml/emitter/Emitter;


# direct methods
.method private constructor <init>(Lorg/yaml/snakeyaml/emitter/Emitter;)V
    .registers 2

    .line 634
    iput-object p1, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectBlockMappingSimpleValue;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/yaml/snakeyaml/emitter/Emitter;Lorg/yaml/snakeyaml/emitter/Emitter$1;)V
    .registers 3
    .param p1, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;
    .param p2, "x1"    # Lorg/yaml/snakeyaml/emitter/Emitter$1;

    .line 634
    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectBlockMappingSimpleValue;-><init>(Lorg/yaml/snakeyaml/emitter/Emitter;)V

    return-void
.end method


# virtual methods
.method public expect()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 636
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectBlockMappingSimpleValue;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    const-string v1, ":"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndicator(Ljava/lang/String;ZZZ)V

    .line 637
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectBlockMappingSimpleValue;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-static {v0}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$1500(Lorg/yaml/snakeyaml/emitter/Emitter;)Lorg/yaml/snakeyaml/util/ArrayStack;

    move-result-object v0

    new-instance v1, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectBlockMappingKey;

    iget-object v3, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectBlockMappingSimpleValue;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-direct {v1, v3, v2}, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectBlockMappingKey;-><init>(Lorg/yaml/snakeyaml/emitter/Emitter;Z)V

    invoke-virtual {v0, v1}, Lorg/yaml/snakeyaml/util/ArrayStack;->push(Ljava/lang/Object;)V

    .line 638
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectBlockMappingSimpleValue;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    const/4 v1, 0x1

    invoke-static {v0, v2, v1, v2}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$1600(Lorg/yaml/snakeyaml/emitter/Emitter;ZZZ)V

    .line 639
    return-void
.end method
