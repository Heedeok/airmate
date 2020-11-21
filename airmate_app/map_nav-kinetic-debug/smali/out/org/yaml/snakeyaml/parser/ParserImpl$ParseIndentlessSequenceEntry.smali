.class Lorg/yaml/snakeyaml/parser/ParserImpl$ParseIndentlessSequenceEntry;
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
    name = "ParseIndentlessSequenceEntry"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/yaml/snakeyaml/parser/ParserImpl;


# direct methods
.method private constructor <init>(Lorg/yaml/snakeyaml/parser/ParserImpl;)V
    .registers 2

    .line 532
    iput-object p1, p0, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseIndentlessSequenceEntry;->this$0:Lorg/yaml/snakeyaml/parser/ParserImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/yaml/snakeyaml/parser/ParserImpl;Lorg/yaml/snakeyaml/parser/ParserImpl$1;)V
    .registers 3
    .param p1, "x0"    # Lorg/yaml/snakeyaml/parser/ParserImpl;
    .param p2, "x1"    # Lorg/yaml/snakeyaml/parser/ParserImpl$1;

    .line 532
    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseIndentlessSequenceEntry;-><init>(Lorg/yaml/snakeyaml/parser/ParserImpl;)V

    return-void
.end method


# virtual methods
.method public produce()Lorg/yaml/snakeyaml/events/Event;
    .registers 7

    .line 534
    iget-object v0, p0, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseIndentlessSequenceEntry;->this$0:Lorg/yaml/snakeyaml/parser/ParserImpl;

    invoke-static {v0}, Lorg/yaml/snakeyaml/parser/ParserImpl;->access$100(Lorg/yaml/snakeyaml/parser/ParserImpl;)Lorg/yaml/snakeyaml/scanner/Scanner;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Lorg/yaml/snakeyaml/tokens/Token$ID;

    sget-object v3, Lorg/yaml/snakeyaml/tokens/Token$ID;->BlockEntry:Lorg/yaml/snakeyaml/tokens/Token$ID;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-interface {v0, v2}, Lorg/yaml/snakeyaml/scanner/Scanner;->checkToken([Lorg/yaml/snakeyaml/tokens/Token$ID;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 535
    iget-object v0, p0, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseIndentlessSequenceEntry;->this$0:Lorg/yaml/snakeyaml/parser/ParserImpl;

    invoke-static {v0}, Lorg/yaml/snakeyaml/parser/ParserImpl;->access$100(Lorg/yaml/snakeyaml/parser/ParserImpl;)Lorg/yaml/snakeyaml/scanner/Scanner;

    move-result-object v0

    invoke-interface {v0}, Lorg/yaml/snakeyaml/scanner/Scanner;->getToken()Lorg/yaml/snakeyaml/tokens/Token;

    move-result-object v0

    .line 536
    .local v0, "token":Lorg/yaml/snakeyaml/tokens/Token;
    iget-object v2, p0, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseIndentlessSequenceEntry;->this$0:Lorg/yaml/snakeyaml/parser/ParserImpl;

    invoke-static {v2}, Lorg/yaml/snakeyaml/parser/ParserImpl;->access$100(Lorg/yaml/snakeyaml/parser/ParserImpl;)Lorg/yaml/snakeyaml/scanner/Scanner;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Lorg/yaml/snakeyaml/tokens/Token$ID;

    sget-object v5, Lorg/yaml/snakeyaml/tokens/Token$ID;->BlockEntry:Lorg/yaml/snakeyaml/tokens/Token$ID;

    aput-object v5, v3, v4

    sget-object v4, Lorg/yaml/snakeyaml/tokens/Token$ID;->Key:Lorg/yaml/snakeyaml/tokens/Token$ID;

    aput-object v4, v3, v1

    const/4 v1, 0x2

    sget-object v4, Lorg/yaml/snakeyaml/tokens/Token$ID;->Value:Lorg/yaml/snakeyaml/tokens/Token$ID;

    aput-object v4, v3, v1

    const/4 v1, 0x3

    sget-object v4, Lorg/yaml/snakeyaml/tokens/Token$ID;->BlockEnd:Lorg/yaml/snakeyaml/tokens/Token$ID;

    aput-object v4, v3, v1

    invoke-interface {v2, v3}, Lorg/yaml/snakeyaml/scanner/Scanner;->checkToken([Lorg/yaml/snakeyaml/tokens/Token$ID;)Z

    move-result v1

    if-nez v1, :cond_5c

    .line 538
    iget-object v1, p0, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseIndentlessSequenceEntry;->this$0:Lorg/yaml/snakeyaml/parser/ParserImpl;

    invoke-static {v1}, Lorg/yaml/snakeyaml/parser/ParserImpl;->access$700(Lorg/yaml/snakeyaml/parser/ParserImpl;)Lorg/yaml/snakeyaml/util/ArrayStack;

    move-result-object v1

    new-instance v2, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseIndentlessSequenceEntry;

    iget-object v3, p0, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseIndentlessSequenceEntry;->this$0:Lorg/yaml/snakeyaml/parser/ParserImpl;

    invoke-direct {v2, v3}, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseIndentlessSequenceEntry;-><init>(Lorg/yaml/snakeyaml/parser/ParserImpl;)V

    invoke-virtual {v1, v2}, Lorg/yaml/snakeyaml/util/ArrayStack;->push(Ljava/lang/Object;)V

    .line 539
    new-instance v1, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseBlockNode;

    iget-object v2, p0, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseIndentlessSequenceEntry;->this$0:Lorg/yaml/snakeyaml/parser/ParserImpl;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseBlockNode;-><init>(Lorg/yaml/snakeyaml/parser/ParserImpl;Lorg/yaml/snakeyaml/parser/ParserImpl$1;)V

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseBlockNode;->produce()Lorg/yaml/snakeyaml/events/Event;

    move-result-object v1

    return-object v1

    .line 541
    :cond_5c
    iget-object v1, p0, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseIndentlessSequenceEntry;->this$0:Lorg/yaml/snakeyaml/parser/ParserImpl;

    new-instance v2, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseIndentlessSequenceEntry;

    iget-object v3, p0, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseIndentlessSequenceEntry;->this$0:Lorg/yaml/snakeyaml/parser/ParserImpl;

    invoke-direct {v2, v3}, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseIndentlessSequenceEntry;-><init>(Lorg/yaml/snakeyaml/parser/ParserImpl;)V

    invoke-static {v1, v2}, Lorg/yaml/snakeyaml/parser/ParserImpl;->access$202(Lorg/yaml/snakeyaml/parser/ParserImpl;Lorg/yaml/snakeyaml/parser/Production;)Lorg/yaml/snakeyaml/parser/Production;

    .line 542
    iget-object v1, p0, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseIndentlessSequenceEntry;->this$0:Lorg/yaml/snakeyaml/parser/ParserImpl;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/tokens/Token;->getEndMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/yaml/snakeyaml/parser/ParserImpl;->access$1300(Lorg/yaml/snakeyaml/parser/ParserImpl;Lorg/yaml/snakeyaml/error/Mark;)Lorg/yaml/snakeyaml/events/Event;

    move-result-object v1

    return-object v1

    .line 545
    .end local v0    # "token":Lorg/yaml/snakeyaml/tokens/Token;
    :cond_73
    iget-object v0, p0, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseIndentlessSequenceEntry;->this$0:Lorg/yaml/snakeyaml/parser/ParserImpl;

    invoke-static {v0}, Lorg/yaml/snakeyaml/parser/ParserImpl;->access$100(Lorg/yaml/snakeyaml/parser/ParserImpl;)Lorg/yaml/snakeyaml/scanner/Scanner;

    move-result-object v0

    invoke-interface {v0}, Lorg/yaml/snakeyaml/scanner/Scanner;->peekToken()Lorg/yaml/snakeyaml/tokens/Token;

    move-result-object v0

    .line 546
    .restart local v0    # "token":Lorg/yaml/snakeyaml/tokens/Token;
    new-instance v1, Lorg/yaml/snakeyaml/events/SequenceEndEvent;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/tokens/Token;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v2

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/tokens/Token;->getEndMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/yaml/snakeyaml/events/SequenceEndEvent;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    .line 547
    .local v1, "event":Lorg/yaml/snakeyaml/events/Event;
    iget-object v2, p0, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseIndentlessSequenceEntry;->this$0:Lorg/yaml/snakeyaml/parser/ParserImpl;

    iget-object v3, p0, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseIndentlessSequenceEntry;->this$0:Lorg/yaml/snakeyaml/parser/ParserImpl;

    invoke-static {v3}, Lorg/yaml/snakeyaml/parser/ParserImpl;->access$700(Lorg/yaml/snakeyaml/parser/ParserImpl;)Lorg/yaml/snakeyaml/util/ArrayStack;

    move-result-object v3

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/util/ArrayStack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/yaml/snakeyaml/parser/Production;

    invoke-static {v2, v3}, Lorg/yaml/snakeyaml/parser/ParserImpl;->access$202(Lorg/yaml/snakeyaml/parser/ParserImpl;Lorg/yaml/snakeyaml/parser/Production;)Lorg/yaml/snakeyaml/parser/Production;

    .line 548
    return-object v1
.end method
