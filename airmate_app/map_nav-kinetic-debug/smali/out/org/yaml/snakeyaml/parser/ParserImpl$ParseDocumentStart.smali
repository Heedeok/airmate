.class Lorg/yaml/snakeyaml/parser/ParserImpl$ParseDocumentStart;
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
    name = "ParseDocumentStart"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/yaml/snakeyaml/parser/ParserImpl;


# direct methods
.method private constructor <init>(Lorg/yaml/snakeyaml/parser/ParserImpl;)V
    .registers 2

    .line 214
    iput-object p1, p0, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseDocumentStart;->this$0:Lorg/yaml/snakeyaml/parser/ParserImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/yaml/snakeyaml/parser/ParserImpl;Lorg/yaml/snakeyaml/parser/ParserImpl$1;)V
    .registers 3
    .param p1, "x0"    # Lorg/yaml/snakeyaml/parser/ParserImpl;
    .param p2, "x1"    # Lorg/yaml/snakeyaml/parser/ParserImpl$1;

    .line 214
    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseDocumentStart;-><init>(Lorg/yaml/snakeyaml/parser/ParserImpl;)V

    return-void
.end method


# virtual methods
.method public produce()Lorg/yaml/snakeyaml/events/Event;
    .registers 15

    .line 218
    :goto_0
    iget-object v0, p0, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseDocumentStart;->this$0:Lorg/yaml/snakeyaml/parser/ParserImpl;

    invoke-static {v0}, Lorg/yaml/snakeyaml/parser/ParserImpl;->access$100(Lorg/yaml/snakeyaml/parser/ParserImpl;)Lorg/yaml/snakeyaml/scanner/Scanner;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Lorg/yaml/snakeyaml/tokens/Token$ID;

    sget-object v3, Lorg/yaml/snakeyaml/tokens/Token$ID;->DocumentEnd:Lorg/yaml/snakeyaml/tokens/Token$ID;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-interface {v0, v2}, Lorg/yaml/snakeyaml/scanner/Scanner;->checkToken([Lorg/yaml/snakeyaml/tokens/Token$ID;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 219
    iget-object v0, p0, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseDocumentStart;->this$0:Lorg/yaml/snakeyaml/parser/ParserImpl;

    invoke-static {v0}, Lorg/yaml/snakeyaml/parser/ParserImpl;->access$100(Lorg/yaml/snakeyaml/parser/ParserImpl;)Lorg/yaml/snakeyaml/scanner/Scanner;

    move-result-object v0

    invoke-interface {v0}, Lorg/yaml/snakeyaml/scanner/Scanner;->getToken()Lorg/yaml/snakeyaml/tokens/Token;

    goto :goto_0

    .line 223
    :cond_1e
    iget-object v0, p0, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseDocumentStart;->this$0:Lorg/yaml/snakeyaml/parser/ParserImpl;

    invoke-static {v0}, Lorg/yaml/snakeyaml/parser/ParserImpl;->access$100(Lorg/yaml/snakeyaml/parser/ParserImpl;)Lorg/yaml/snakeyaml/scanner/Scanner;

    move-result-object v0

    new-array v2, v1, [Lorg/yaml/snakeyaml/tokens/Token$ID;

    sget-object v3, Lorg/yaml/snakeyaml/tokens/Token$ID;->StreamEnd:Lorg/yaml/snakeyaml/tokens/Token$ID;

    aput-object v3, v2, v4

    invoke-interface {v0, v2}, Lorg/yaml/snakeyaml/scanner/Scanner;->checkToken([Lorg/yaml/snakeyaml/tokens/Token$ID;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_dc

    .line 224
    iget-object v0, p0, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseDocumentStart;->this$0:Lorg/yaml/snakeyaml/parser/ParserImpl;

    invoke-static {v0}, Lorg/yaml/snakeyaml/parser/ParserImpl;->access$100(Lorg/yaml/snakeyaml/parser/ParserImpl;)Lorg/yaml/snakeyaml/scanner/Scanner;

    move-result-object v0

    invoke-interface {v0}, Lorg/yaml/snakeyaml/scanner/Scanner;->peekToken()Lorg/yaml/snakeyaml/tokens/Token;

    move-result-object v0

    .line 225
    .local v0, "token":Lorg/yaml/snakeyaml/tokens/Token;
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/tokens/Token;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v3

    .line 226
    .local v3, "startMark":Lorg/yaml/snakeyaml/error/Mark;
    iget-object v5, p0, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseDocumentStart;->this$0:Lorg/yaml/snakeyaml/parser/ParserImpl;

    invoke-static {v5}, Lorg/yaml/snakeyaml/parser/ParserImpl;->access$1000(Lorg/yaml/snakeyaml/parser/ParserImpl;)Ljava/util/List;

    move-result-object v11

    .line 227
    .local v11, "version_tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Ljava/util/List;

    .line 228
    .local v12, "version":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v13, v5

    check-cast v13, Ljava/util/Map;

    .line 229
    .local v13, "tags":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v5, p0, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseDocumentStart;->this$0:Lorg/yaml/snakeyaml/parser/ParserImpl;

    invoke-static {v5}, Lorg/yaml/snakeyaml/parser/ParserImpl;->access$100(Lorg/yaml/snakeyaml/parser/ParserImpl;)Lorg/yaml/snakeyaml/scanner/Scanner;

    move-result-object v5

    new-array v1, v1, [Lorg/yaml/snakeyaml/tokens/Token$ID;

    sget-object v6, Lorg/yaml/snakeyaml/tokens/Token$ID;->DocumentStart:Lorg/yaml/snakeyaml/tokens/Token$ID;

    aput-object v6, v1, v4

    invoke-interface {v5, v1}, Lorg/yaml/snakeyaml/scanner/Scanner;->checkToken([Lorg/yaml/snakeyaml/tokens/Token$ID;)Z

    move-result v1

    if-eqz v1, :cond_a9

    .line 233
    iget-object v1, p0, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseDocumentStart;->this$0:Lorg/yaml/snakeyaml/parser/ParserImpl;

    invoke-static {v1}, Lorg/yaml/snakeyaml/parser/ParserImpl;->access$100(Lorg/yaml/snakeyaml/parser/ParserImpl;)Lorg/yaml/snakeyaml/scanner/Scanner;

    move-result-object v1

    invoke-interface {v1}, Lorg/yaml/snakeyaml/scanner/Scanner;->getToken()Lorg/yaml/snakeyaml/tokens/Token;

    move-result-object v0

    .line 234
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/tokens/Token;->getEndMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v1

    .line 236
    .local v1, "endMark":Lorg/yaml/snakeyaml/error/Mark;
    if-eqz v12, :cond_81

    .line 237
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Integer;

    .line 238
    .local v4, "versionInteger":[Ljava/lang/Integer;
    invoke-interface {v12, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    check-cast v4, [Ljava/lang/Integer;

    .line 240
    move-object v9, v4

    goto :goto_82

    .end local v4    # "versionInteger":[Ljava/lang/Integer;
    :cond_81
    move-object v9, v2

    .line 242
    .local v9, "versionInteger":[Ljava/lang/Integer;
    :goto_82
    new-instance v4, Lorg/yaml/snakeyaml/events/DocumentStartEvent;

    const/4 v8, 0x1

    move-object v5, v4

    move-object v6, v3

    move-object v7, v1

    move-object v10, v13

    invoke-direct/range {v5 .. v10}, Lorg/yaml/snakeyaml/events/DocumentStartEvent;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;Z[Ljava/lang/Integer;Ljava/util/Map;)V

    .line 243
    .local v4, "event":Lorg/yaml/snakeyaml/events/Event;
    iget-object v5, p0, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseDocumentStart;->this$0:Lorg/yaml/snakeyaml/parser/ParserImpl;

    invoke-static {v5}, Lorg/yaml/snakeyaml/parser/ParserImpl;->access$700(Lorg/yaml/snakeyaml/parser/ParserImpl;)Lorg/yaml/snakeyaml/util/ArrayStack;

    move-result-object v5

    new-instance v6, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseDocumentEnd;

    iget-object v7, p0, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseDocumentStart;->this$0:Lorg/yaml/snakeyaml/parser/ParserImpl;

    invoke-direct {v6, v7, v2}, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseDocumentEnd;-><init>(Lorg/yaml/snakeyaml/parser/ParserImpl;Lorg/yaml/snakeyaml/parser/ParserImpl$1;)V

    invoke-virtual {v5, v6}, Lorg/yaml/snakeyaml/util/ArrayStack;->push(Ljava/lang/Object;)V

    .line 244
    iget-object v5, p0, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseDocumentStart;->this$0:Lorg/yaml/snakeyaml/parser/ParserImpl;

    new-instance v6, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseDocumentContent;

    iget-object v7, p0, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseDocumentStart;->this$0:Lorg/yaml/snakeyaml/parser/ParserImpl;

    invoke-direct {v6, v7, v2}, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseDocumentContent;-><init>(Lorg/yaml/snakeyaml/parser/ParserImpl;Lorg/yaml/snakeyaml/parser/ParserImpl$1;)V

    invoke-static {v5, v6}, Lorg/yaml/snakeyaml/parser/ParserImpl;->access$202(Lorg/yaml/snakeyaml/parser/ParserImpl;Lorg/yaml/snakeyaml/parser/Production;)Lorg/yaml/snakeyaml/parser/Production;

    .line 245
    .end local v0    # "token":Lorg/yaml/snakeyaml/tokens/Token;
    .end local v1    # "endMark":Lorg/yaml/snakeyaml/error/Mark;
    .end local v3    # "startMark":Lorg/yaml/snakeyaml/error/Mark;
    .end local v9    # "versionInteger":[Ljava/lang/Integer;
    .end local v11    # "version_tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v12    # "version":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v13    # "tags":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_113

    .line 230
    .end local v4    # "event":Lorg/yaml/snakeyaml/events/Event;
    .restart local v0    # "token":Lorg/yaml/snakeyaml/tokens/Token;
    .restart local v3    # "startMark":Lorg/yaml/snakeyaml/error/Mark;
    .restart local v11    # "version_tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v12    # "version":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v13    # "tags":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_a9
    new-instance v1, Lorg/yaml/snakeyaml/parser/ParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "expected \'<document start>\', but found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseDocumentStart;->this$0:Lorg/yaml/snakeyaml/parser/ParserImpl;

    invoke-static {v5}, Lorg/yaml/snakeyaml/parser/ParserImpl;->access$100(Lorg/yaml/snakeyaml/parser/ParserImpl;)Lorg/yaml/snakeyaml/scanner/Scanner;

    move-result-object v5

    invoke-interface {v5}, Lorg/yaml/snakeyaml/scanner/Scanner;->peekToken()Lorg/yaml/snakeyaml/tokens/Token;

    move-result-object v5

    invoke-virtual {v5}, Lorg/yaml/snakeyaml/tokens/Token;->getTokenId()Lorg/yaml/snakeyaml/tokens/Token$ID;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseDocumentStart;->this$0:Lorg/yaml/snakeyaml/parser/ParserImpl;

    invoke-static {v5}, Lorg/yaml/snakeyaml/parser/ParserImpl;->access$100(Lorg/yaml/snakeyaml/parser/ParserImpl;)Lorg/yaml/snakeyaml/scanner/Scanner;

    move-result-object v5

    invoke-interface {v5}, Lorg/yaml/snakeyaml/scanner/Scanner;->peekToken()Lorg/yaml/snakeyaml/tokens/Token;

    move-result-object v5

    invoke-virtual {v5}, Lorg/yaml/snakeyaml/tokens/Token;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v5

    invoke-direct {v1, v2, v2, v4, v5}, Lorg/yaml/snakeyaml/parser/ParserException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v1

    .line 247
    .end local v0    # "token":Lorg/yaml/snakeyaml/tokens/Token;
    .end local v3    # "startMark":Lorg/yaml/snakeyaml/error/Mark;
    .end local v11    # "version_tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v12    # "version":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v13    # "tags":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_dc
    iget-object v0, p0, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseDocumentStart;->this$0:Lorg/yaml/snakeyaml/parser/ParserImpl;

    invoke-static {v0}, Lorg/yaml/snakeyaml/parser/ParserImpl;->access$100(Lorg/yaml/snakeyaml/parser/ParserImpl;)Lorg/yaml/snakeyaml/scanner/Scanner;

    move-result-object v0

    invoke-interface {v0}, Lorg/yaml/snakeyaml/scanner/Scanner;->getToken()Lorg/yaml/snakeyaml/tokens/Token;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/tokens/StreamEndToken;

    .line 248
    .local v0, "token":Lorg/yaml/snakeyaml/tokens/StreamEndToken;
    new-instance v1, Lorg/yaml/snakeyaml/events/StreamEndEvent;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/tokens/StreamEndToken;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v3

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/tokens/StreamEndToken;->getEndMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lorg/yaml/snakeyaml/events/StreamEndEvent;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    move-object v4, v1

    .line 249
    .restart local v4    # "event":Lorg/yaml/snakeyaml/events/Event;
    iget-object v1, p0, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseDocumentStart;->this$0:Lorg/yaml/snakeyaml/parser/ParserImpl;

    invoke-static {v1}, Lorg/yaml/snakeyaml/parser/ParserImpl;->access$700(Lorg/yaml/snakeyaml/parser/ParserImpl;)Lorg/yaml/snakeyaml/util/ArrayStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/util/ArrayStack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_131

    .line 252
    iget-object v1, p0, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseDocumentStart;->this$0:Lorg/yaml/snakeyaml/parser/ParserImpl;

    invoke-static {v1}, Lorg/yaml/snakeyaml/parser/ParserImpl;->access$1200(Lorg/yaml/snakeyaml/parser/ParserImpl;)Lorg/yaml/snakeyaml/util/ArrayStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/util/ArrayStack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_114

    .line 255
    iget-object v1, p0, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseDocumentStart;->this$0:Lorg/yaml/snakeyaml/parser/ParserImpl;

    invoke-static {v1, v2}, Lorg/yaml/snakeyaml/parser/ParserImpl;->access$202(Lorg/yaml/snakeyaml/parser/ParserImpl;Lorg/yaml/snakeyaml/parser/Production;)Lorg/yaml/snakeyaml/parser/Production;

    .line 257
    .end local v0    # "token":Lorg/yaml/snakeyaml/tokens/StreamEndToken;
    :goto_113
    return-object v4

    .line 253
    .restart local v0    # "token":Lorg/yaml/snakeyaml/tokens/StreamEndToken;
    :cond_114
    new-instance v1, Lorg/yaml/snakeyaml/error/YAMLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected end of stream. Marks left: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseDocumentStart;->this$0:Lorg/yaml/snakeyaml/parser/ParserImpl;

    invoke-static {v3}, Lorg/yaml/snakeyaml/parser/ParserImpl;->access$1200(Lorg/yaml/snakeyaml/parser/ParserImpl;)Lorg/yaml/snakeyaml/util/ArrayStack;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 250
    :cond_131
    new-instance v1, Lorg/yaml/snakeyaml/error/YAMLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected end of stream. States left: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseDocumentStart;->this$0:Lorg/yaml/snakeyaml/parser/ParserImpl;

    invoke-static {v3}, Lorg/yaml/snakeyaml/parser/ParserImpl;->access$700(Lorg/yaml/snakeyaml/parser/ParserImpl;)Lorg/yaml/snakeyaml/util/ArrayStack;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
