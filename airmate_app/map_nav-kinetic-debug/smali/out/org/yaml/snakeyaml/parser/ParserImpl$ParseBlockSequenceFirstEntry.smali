.class Lorg/yaml/snakeyaml/parser/ParserImpl$ParseBlockSequenceFirstEntry;
.super Ljava/lang/Object;
.source "ParserImpl.java"

# interfaces
.implements Lorg/yaml/snakeyaml/parser/Production;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/yaml/snakeyaml/parser/ParserImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ParseBlockSequenceFirstEntry"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/yaml/snakeyaml/parser/ParserImpl;


# direct methods
.method private constructor <init>(Lorg/yaml/snakeyaml/parser/ParserImpl;)V
    .registers 2

    .line 496
    iput-object p1, p0, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseBlockSequenceFirstEntry;->this$0:Lorg/yaml/snakeyaml/parser/ParserImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/yaml/snakeyaml/parser/ParserImpl;Lorg/yaml/snakeyaml/parser/ParserImpl$1;)V
    .registers 3
    .param p1, "x0"    # Lorg/yaml/snakeyaml/parser/ParserImpl;
    .param p2, "x1"    # Lorg/yaml/snakeyaml/parser/ParserImpl$1;

    .line 496
    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseBlockSequenceFirstEntry;-><init>(Lorg/yaml/snakeyaml/parser/ParserImpl;)V

    return-void
.end method


# virtual methods
.method public produce()Lorg/yaml/snakeyaml/events/Event;
    .registers 5

    .line 498
    iget-object v0, p0, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseBlockSequenceFirstEntry;->this$0:Lorg/yaml/snakeyaml/parser/ParserImpl;

    invoke-static {v0}, Lorg/yaml/snakeyaml/parser/ParserImpl;->access$100(Lorg/yaml/snakeyaml/parser/ParserImpl;)Lorg/yaml/snakeyaml/scanner/Scanner;

    move-result-object v0

    invoke-interface {v0}, Lorg/yaml/snakeyaml/scanner/Scanner;->getToken()Lorg/yaml/snakeyaml/tokens/Token;

    move-result-object v0

    .line 499
    .local v0, "token":Lorg/yaml/snakeyaml/tokens/Token;
    iget-object v1, p0, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseBlockSequenceFirstEntry;->this$0:Lorg/yaml/snakeyaml/parser/ParserImpl;

    invoke-static {v1}, Lorg/yaml/snakeyaml/parser/ParserImpl;->access$1200(Lorg/yaml/snakeyaml/parser/ParserImpl;)Lorg/yaml/snakeyaml/util/ArrayStack;

    move-result-object v1

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/tokens/Token;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/yaml/snakeyaml/util/ArrayStack;->push(Ljava/lang/Object;)V

    .line 500
    new-instance v1, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseBlockSequenceEntry;

    iget-object v2, p0, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseBlockSequenceFirstEntry;->this$0:Lorg/yaml/snakeyaml/parser/ParserImpl;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseBlockSequenceEntry;-><init>(Lorg/yaml/snakeyaml/parser/ParserImpl;Lorg/yaml/snakeyaml/parser/ParserImpl$1;)V

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseBlockSequenceEntry;->produce()Lorg/yaml/snakeyaml/events/Event;

    move-result-object v1

    return-object v1
.end method