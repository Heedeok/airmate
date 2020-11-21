.class Lorg/yaml/snakeyaml/parser/ParserImpl$ParseDocumentEnd;
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
    name = "ParseDocumentEnd"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/yaml/snakeyaml/parser/ParserImpl;


# direct methods
.method private constructor <init>(Lorg/yaml/snakeyaml/parser/ParserImpl;)V
    .registers 2

    .line 261
    iput-object p1, p0, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseDocumentEnd;->this$0:Lorg/yaml/snakeyaml/parser/ParserImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/yaml/snakeyaml/parser/ParserImpl;Lorg/yaml/snakeyaml/parser/ParserImpl$1;)V
    .registers 3
    .param p1, "x0"    # Lorg/yaml/snakeyaml/parser/ParserImpl;
    .param p2, "x1"    # Lorg/yaml/snakeyaml/parser/ParserImpl$1;

    .line 261
    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseDocumentEnd;-><init>(Lorg/yaml/snakeyaml/parser/ParserImpl;)V

    return-void
.end method


# virtual methods
.method public produce()Lorg/yaml/snakeyaml/events/Event;
    .registers 10

    .line 264
    iget-object v0, p0, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseDocumentEnd;->this$0:Lorg/yaml/snakeyaml/parser/ParserImpl;

    invoke-static {v0}, Lorg/yaml/snakeyaml/parser/ParserImpl;->access$100(Lorg/yaml/snakeyaml/parser/ParserImpl;)Lorg/yaml/snakeyaml/scanner/Scanner;

    move-result-object v0

    invoke-interface {v0}, Lorg/yaml/snakeyaml/scanner/Scanner;->peekToken()Lorg/yaml/snakeyaml/tokens/Token;

    move-result-object v0

    .line 265
    .local v0, "token":Lorg/yaml/snakeyaml/tokens/Token;
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/tokens/Token;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v1

    .line 266
    .local v1, "startMark":Lorg/yaml/snakeyaml/error/Mark;
    move-object v2, v1

    .line 267
    .local v2, "endMark":Lorg/yaml/snakeyaml/error/Mark;
    const/4 v3, 0x0

    .line 268
    .local v3, "explicit":Z
    iget-object v4, p0, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseDocumentEnd;->this$0:Lorg/yaml/snakeyaml/parser/ParserImpl;

    invoke-static {v4}, Lorg/yaml/snakeyaml/parser/ParserImpl;->access$100(Lorg/yaml/snakeyaml/parser/ParserImpl;)Lorg/yaml/snakeyaml/scanner/Scanner;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Lorg/yaml/snakeyaml/tokens/Token$ID;

    sget-object v6, Lorg/yaml/snakeyaml/tokens/Token$ID;->DocumentEnd:Lorg/yaml/snakeyaml/tokens/Token$ID;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-interface {v4, v5}, Lorg/yaml/snakeyaml/scanner/Scanner;->checkToken([Lorg/yaml/snakeyaml/tokens/Token$ID;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 269
    iget-object v4, p0, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseDocumentEnd;->this$0:Lorg/yaml/snakeyaml/parser/ParserImpl;

    invoke-static {v4}, Lorg/yaml/snakeyaml/parser/ParserImpl;->access$100(Lorg/yaml/snakeyaml/parser/ParserImpl;)Lorg/yaml/snakeyaml/scanner/Scanner;

    move-result-object v4

    invoke-interface {v4}, Lorg/yaml/snakeyaml/scanner/Scanner;->getToken()Lorg/yaml/snakeyaml/tokens/Token;

    move-result-object v0

    .line 270
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/tokens/Token;->getEndMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v2

    .line 271
    const/4 v3, 0x1

    .line 273
    :cond_33
    new-instance v4, Lorg/yaml/snakeyaml/events/DocumentEndEvent;

    invoke-direct {v4, v1, v2, v3}, Lorg/yaml/snakeyaml/events/DocumentEndEvent;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;Z)V

    .line 275
    .local v4, "event":Lorg/yaml/snakeyaml/events/Event;
    iget-object v5, p0, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseDocumentEnd;->this$0:Lorg/yaml/snakeyaml/parser/ParserImpl;

    new-instance v6, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseDocumentStart;

    iget-object v7, p0, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseDocumentEnd;->this$0:Lorg/yaml/snakeyaml/parser/ParserImpl;

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseDocumentStart;-><init>(Lorg/yaml/snakeyaml/parser/ParserImpl;Lorg/yaml/snakeyaml/parser/ParserImpl$1;)V

    invoke-static {v5, v6}, Lorg/yaml/snakeyaml/parser/ParserImpl;->access$202(Lorg/yaml/snakeyaml/parser/ParserImpl;Lorg/yaml/snakeyaml/parser/Production;)Lorg/yaml/snakeyaml/parser/Production;

    .line 276
    return-object v4
.end method
