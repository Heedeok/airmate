.class public final Lorg/yaml/snakeyaml/parser/ParserImpl;
.super Ljava/lang/Object;
.source "ParserImpl.java"

# interfaces
.implements Lorg/yaml/snakeyaml/parser/Parser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/yaml/snakeyaml/parser/ParserImpl$ParseFlowMappingEmptyValue;,
        Lorg/yaml/snakeyaml/parser/ParserImpl$ParseFlowMappingValue;,
        Lorg/yaml/snakeyaml/parser/ParserImpl$ParseFlowMappingKey;,
        Lorg/yaml/snakeyaml/parser/ParserImpl$ParseFlowMappingFirstKey;,
        Lorg/yaml/snakeyaml/parser/ParserImpl$ParseFlowSequenceEntryMappingEnd;,
        Lorg/yaml/snakeyaml/parser/ParserImpl$ParseFlowSequenceEntryMappingValue;,
        Lorg/yaml/snakeyaml/parser/ParserImpl$ParseFlowSequenceEntryMappingKey;,
        Lorg/yaml/snakeyaml/parser/ParserImpl$ParseFlowSequenceEntry;,
        Lorg/yaml/snakeyaml/parser/ParserImpl$ParseFlowSequenceFirstEntry;,
        Lorg/yaml/snakeyaml/parser/ParserImpl$ParseBlockMappingValue;,
        Lorg/yaml/snakeyaml/parser/ParserImpl$ParseBlockMappingKey;,
        Lorg/yaml/snakeyaml/parser/ParserImpl$ParseBlockMappingFirstKey;,
        Lorg/yaml/snakeyaml/parser/ParserImpl$ParseIndentlessSequenceEntry;,
        Lorg/yaml/snakeyaml/parser/ParserImpl$ParseBlockSequenceEntry;,
        Lorg/yaml/snakeyaml/parser/ParserImpl$ParseBlockSequenceFirstEntry;,
        Lorg/yaml/snakeyaml/parser/ParserImpl$ParseBlockNode;,
        Lorg/yaml/snakeyaml/parser/ParserImpl$ParseDocumentContent;,
        Lorg/yaml/snakeyaml/parser/ParserImpl$ParseDocumentEnd;,
        Lorg/yaml/snakeyaml/parser/ParserImpl$ParseDocumentStart;,
        Lorg/yaml/snakeyaml/parser/ParserImpl$ParseImplicitDocumentStart;,
        Lorg/yaml/snakeyaml/parser/ParserImpl$ParseStreamStart;
    }
.end annotation


# static fields
.field private static final DEFAULT_TAGS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private currentEvent:Lorg/yaml/snakeyaml/events/Event;

.field private final marks:Lorg/yaml/snakeyaml/util/ArrayStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/yaml/snakeyaml/util/ArrayStack<",
            "Lorg/yaml/snakeyaml/error/Mark;",
            ">;"
        }
    .end annotation
.end field

.field private final scanner:Lorg/yaml/snakeyaml/scanner/Scanner;

.field private state:Lorg/yaml/snakeyaml/parser/Production;

.field private final states:Lorg/yaml/snakeyaml/util/ArrayStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/yaml/snakeyaml/util/ArrayStack<",
            "Lorg/yaml/snakeyaml/parser/Production;",
            ">;"
        }
    .end annotation
.end field

.field private tagHandles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private yamlVersion:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 117
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/yaml/snakeyaml/parser/ParserImpl;->DEFAULT_TAGS:Ljava/util/Map;

    .line 119
    sget-object v0, Lorg/yaml/snakeyaml/parser/ParserImpl;->DEFAULT_TAGS:Ljava/util/Map;

    const-string v1, "!"

    const-string v2, "!"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lorg/yaml/snakeyaml/parser/ParserImpl;->DEFAULT_TAGS:Ljava/util/Map;

    const-string v1, "!!"

    const-string v2, "tag:yaml.org,2002:"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    return-void
.end method

.method public constructor <init>(Lorg/yaml/snakeyaml/reader/StreamReader;)V
    .registers 5
    .param p1, "reader"    # Lorg/yaml/snakeyaml/reader/StreamReader;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    new-instance v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;

    invoke-direct {v0, p1}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;-><init>(Lorg/yaml/snakeyaml/reader/StreamReader;)V

    iput-object v0, p0, Lorg/yaml/snakeyaml/parser/ParserImpl;->scanner:Lorg/yaml/snakeyaml/scanner/Scanner;

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/yaml/snakeyaml/parser/ParserImpl;->currentEvent:Lorg/yaml/snakeyaml/events/Event;

    .line 134
    iput-object v0, p0, Lorg/yaml/snakeyaml/parser/ParserImpl;->yamlVersion:Ljava/util/List;

    .line 135
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/yaml/snakeyaml/parser/ParserImpl;->tagHandles:Ljava/util/Map;

    .line 136
    new-instance v1, Lorg/yaml/snakeyaml/util/ArrayStack;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Lorg/yaml/snakeyaml/util/ArrayStack;-><init>(I)V

    iput-object v1, p0, Lorg/yaml/snakeyaml/parser/ParserImpl;->states:Lorg/yaml/snakeyaml/util/ArrayStack;

    .line 137
    new-instance v1, Lorg/yaml/snakeyaml/util/ArrayStack;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lorg/yaml/snakeyaml/util/ArrayStack;-><init>(I)V

    iput-object v1, p0, Lorg/yaml/snakeyaml/parser/ParserImpl;->marks:Lorg/yaml/snakeyaml/util/ArrayStack;

    .line 138
    new-instance v1, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseStreamStart;

    invoke-direct {v1, p0, v0}, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseStreamStart;-><init>(Lorg/yaml/snakeyaml/parser/ParserImpl;Lorg/yaml/snakeyaml/parser/ParserImpl$1;)V

    iput-object v1, p0, Lorg/yaml/snakeyaml/parser/ParserImpl;->state:Lorg/yaml/snakeyaml/parser/Production;

    .line 139
    return-void
.end method

.method static synthetic access$100(Lorg/yaml/snakeyaml/parser/ParserImpl;)Lorg/yaml/snakeyaml/scanner/Scanner;
    .registers 2
    .param p0, "x0"    # Lorg/yaml/snakeyaml/parser/ParserImpl;

    .line 116
    iget-object v0, p0, Lorg/yaml/snakeyaml/parser/ParserImpl;->scanner:Lorg/yaml/snakeyaml/scanner/Scanner;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/yaml/snakeyaml/parser/ParserImpl;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lorg/yaml/snakeyaml/parser/ParserImpl;

    .line 116
    invoke-direct {p0}, Lorg/yaml/snakeyaml/parser/ParserImpl;->processDirectives()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lorg/yaml/snakeyaml/parser/ParserImpl;)Lorg/yaml/snakeyaml/util/ArrayStack;
    .registers 2
    .param p0, "x0"    # Lorg/yaml/snakeyaml/parser/ParserImpl;

    .line 116
    iget-object v0, p0, Lorg/yaml/snakeyaml/parser/ParserImpl;->marks:Lorg/yaml/snakeyaml/util/ArrayStack;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/yaml/snakeyaml/parser/ParserImpl;Lorg/yaml/snakeyaml/error/Mark;)Lorg/yaml/snakeyaml/events/Event;
    .registers 3
    .param p0, "x0"    # Lorg/yaml/snakeyaml/parser/ParserImpl;
    .param p1, "x1"    # Lorg/yaml/snakeyaml/error/Mark;

    .line 116
    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/parser/ParserImpl;->processEmptyScalar(Lorg/yaml/snakeyaml/error/Mark;)Lorg/yaml/snakeyaml/events/Event;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lorg/yaml/snakeyaml/parser/ParserImpl;ZZ)Lorg/yaml/snakeyaml/events/Event;
    .registers 4
    .param p0, "x0"    # Lorg/yaml/snakeyaml/parser/ParserImpl;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .line 116
    invoke-direct {p0, p1, p2}, Lorg/yaml/snakeyaml/parser/ParserImpl;->parseNode(ZZ)Lorg/yaml/snakeyaml/events/Event;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$202(Lorg/yaml/snakeyaml/parser/ParserImpl;Lorg/yaml/snakeyaml/parser/Production;)Lorg/yaml/snakeyaml/parser/Production;
    .registers 2
    .param p0, "x0"    # Lorg/yaml/snakeyaml/parser/ParserImpl;
    .param p1, "x1"    # Lorg/yaml/snakeyaml/parser/Production;

    .line 116
    iput-object p1, p0, Lorg/yaml/snakeyaml/parser/ParserImpl;->state:Lorg/yaml/snakeyaml/parser/Production;

    return-object p1
.end method

.method static synthetic access$2300(Lorg/yaml/snakeyaml/parser/ParserImpl;)Lorg/yaml/snakeyaml/events/Event;
    .registers 2
    .param p0, "x0"    # Lorg/yaml/snakeyaml/parser/ParserImpl;

    .line 116
    invoke-direct {p0}, Lorg/yaml/snakeyaml/parser/ParserImpl;->parseBlockNodeOrIndentlessSequence()Lorg/yaml/snakeyaml/events/Event;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lorg/yaml/snakeyaml/parser/ParserImpl;)Lorg/yaml/snakeyaml/events/Event;
    .registers 2
    .param p0, "x0"    # Lorg/yaml/snakeyaml/parser/ParserImpl;

    .line 116
    invoke-direct {p0}, Lorg/yaml/snakeyaml/parser/ParserImpl;->parseFlowNode()Lorg/yaml/snakeyaml/events/Event;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$402(Lorg/yaml/snakeyaml/parser/ParserImpl;Ljava/util/Map;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lorg/yaml/snakeyaml/parser/ParserImpl;
    .param p1, "x1"    # Ljava/util/Map;

    .line 116
    iput-object p1, p0, Lorg/yaml/snakeyaml/parser/ParserImpl;->tagHandles:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$500()Ljava/util/Map;
    .registers 1

    .line 116
    sget-object v0, Lorg/yaml/snakeyaml/parser/ParserImpl;->DEFAULT_TAGS:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$700(Lorg/yaml/snakeyaml/parser/ParserImpl;)Lorg/yaml/snakeyaml/util/ArrayStack;
    .registers 2
    .param p0, "x0"    # Lorg/yaml/snakeyaml/parser/ParserImpl;

    .line 116
    iget-object v0, p0, Lorg/yaml/snakeyaml/parser/ParserImpl;->states:Lorg/yaml/snakeyaml/util/ArrayStack;

    return-object v0
.end method

.method private parseBlockNodeOrIndentlessSequence()Lorg/yaml/snakeyaml/events/Event;
    .registers 2

    .line 372
    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lorg/yaml/snakeyaml/parser/ParserImpl;->parseNode(ZZ)Lorg/yaml/snakeyaml/events/Event;

    move-result-object v0

    return-object v0
.end method

.method private parseFlowNode()Lorg/yaml/snakeyaml/events/Event;
    .registers 2

    .line 368
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lorg/yaml/snakeyaml/parser/ParserImpl;->parseNode(ZZ)Lorg/yaml/snakeyaml/events/Event;

    move-result-object v0

    return-object v0
.end method

.method private parseNode(ZZ)Lorg/yaml/snakeyaml/events/Event;
    .registers 23
    .param p1, "block"    # Z
    .param p2, "indentlessSequence"    # Z

    .line 377
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 378
    .local v1, "startMark":Lorg/yaml/snakeyaml/error/Mark;
    const/4 v2, 0x0

    .line 379
    .local v2, "endMark":Lorg/yaml/snakeyaml/error/Mark;
    const/4 v3, 0x0

    .line 380
    .local v3, "tagMark":Lorg/yaml/snakeyaml/error/Mark;
    iget-object v4, v0, Lorg/yaml/snakeyaml/parser/ParserImpl;->scanner:Lorg/yaml/snakeyaml/scanner/Scanner;

    const/4 v5, 0x1

    new-array v6, v5, [Lorg/yaml/snakeyaml/tokens/Token$ID;

    sget-object v7, Lorg/yaml/snakeyaml/tokens/Token$ID;->Alias:Lorg/yaml/snakeyaml/tokens/Token$ID;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-interface {v4, v6}, Lorg/yaml/snakeyaml/scanner/Scanner;->checkToken([Lorg/yaml/snakeyaml/tokens/Token$ID;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 381
    iget-object v4, v0, Lorg/yaml/snakeyaml/parser/ParserImpl;->scanner:Lorg/yaml/snakeyaml/scanner/Scanner;

    invoke-interface {v4}, Lorg/yaml/snakeyaml/scanner/Scanner;->getToken()Lorg/yaml/snakeyaml/tokens/Token;

    move-result-object v4

    check-cast v4, Lorg/yaml/snakeyaml/tokens/AliasToken;

    .line 382
    .local v4, "token":Lorg/yaml/snakeyaml/tokens/AliasToken;
    new-instance v5, Lorg/yaml/snakeyaml/events/AliasEvent;

    invoke-virtual {v4}, Lorg/yaml/snakeyaml/tokens/AliasToken;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lorg/yaml/snakeyaml/tokens/AliasToken;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v7

    invoke-virtual {v4}, Lorg/yaml/snakeyaml/tokens/AliasToken;->getEndMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lorg/yaml/snakeyaml/events/AliasEvent;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    .line 383
    .local v5, "event":Lorg/yaml/snakeyaml/events/Event;
    iget-object v6, v0, Lorg/yaml/snakeyaml/parser/ParserImpl;->states:Lorg/yaml/snakeyaml/util/ArrayStack;

    invoke-virtual {v6}, Lorg/yaml/snakeyaml/util/ArrayStack;->pop()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/yaml/snakeyaml/parser/Production;

    iput-object v6, v0, Lorg/yaml/snakeyaml/parser/ParserImpl;->state:Lorg/yaml/snakeyaml/parser/Production;

    .line 384
    .end local v4    # "token":Lorg/yaml/snakeyaml/tokens/AliasToken;
    goto/16 :goto_2f0

    .line 385
    .end local v5    # "event":Lorg/yaml/snakeyaml/events/Event;
    :cond_3a
    const/4 v4, 0x0

    .line 386
    .local v4, "anchor":Ljava/lang/String;
    const/4 v6, 0x0

    .line 387
    .local v6, "tagTokenTag":Lorg/yaml/snakeyaml/tokens/TagTuple;
    iget-object v7, v0, Lorg/yaml/snakeyaml/parser/ParserImpl;->scanner:Lorg/yaml/snakeyaml/scanner/Scanner;

    new-array v9, v5, [Lorg/yaml/snakeyaml/tokens/Token$ID;

    sget-object v10, Lorg/yaml/snakeyaml/tokens/Token$ID;->Anchor:Lorg/yaml/snakeyaml/tokens/Token$ID;

    aput-object v10, v9, v8

    invoke-interface {v7, v9}, Lorg/yaml/snakeyaml/scanner/Scanner;->checkToken([Lorg/yaml/snakeyaml/tokens/Token$ID;)Z

    move-result v7

    if-eqz v7, :cond_81

    .line 388
    iget-object v7, v0, Lorg/yaml/snakeyaml/parser/ParserImpl;->scanner:Lorg/yaml/snakeyaml/scanner/Scanner;

    invoke-interface {v7}, Lorg/yaml/snakeyaml/scanner/Scanner;->getToken()Lorg/yaml/snakeyaml/tokens/Token;

    move-result-object v7

    check-cast v7, Lorg/yaml/snakeyaml/tokens/AnchorToken;

    .line 389
    .local v7, "token":Lorg/yaml/snakeyaml/tokens/AnchorToken;
    invoke-virtual {v7}, Lorg/yaml/snakeyaml/tokens/AnchorToken;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v1

    .line 390
    invoke-virtual {v7}, Lorg/yaml/snakeyaml/tokens/AnchorToken;->getEndMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v2

    .line 391
    invoke-virtual {v7}, Lorg/yaml/snakeyaml/tokens/AnchorToken;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 392
    iget-object v9, v0, Lorg/yaml/snakeyaml/parser/ParserImpl;->scanner:Lorg/yaml/snakeyaml/scanner/Scanner;

    new-array v10, v5, [Lorg/yaml/snakeyaml/tokens/Token$ID;

    sget-object v11, Lorg/yaml/snakeyaml/tokens/Token$ID;->Tag:Lorg/yaml/snakeyaml/tokens/Token$ID;

    aput-object v11, v10, v8

    invoke-interface {v9, v10}, Lorg/yaml/snakeyaml/scanner/Scanner;->checkToken([Lorg/yaml/snakeyaml/tokens/Token$ID;)Z

    move-result v9

    if-eqz v9, :cond_80

    .line 393
    iget-object v9, v0, Lorg/yaml/snakeyaml/parser/ParserImpl;->scanner:Lorg/yaml/snakeyaml/scanner/Scanner;

    invoke-interface {v9}, Lorg/yaml/snakeyaml/scanner/Scanner;->getToken()Lorg/yaml/snakeyaml/tokens/Token;

    move-result-object v9

    check-cast v9, Lorg/yaml/snakeyaml/tokens/TagToken;

    .line 394
    .local v9, "tagToken":Lorg/yaml/snakeyaml/tokens/TagToken;
    invoke-virtual {v9}, Lorg/yaml/snakeyaml/tokens/TagToken;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v3

    .line 395
    invoke-virtual {v9}, Lorg/yaml/snakeyaml/tokens/TagToken;->getEndMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v2

    .line 396
    invoke-virtual {v9}, Lorg/yaml/snakeyaml/tokens/TagToken;->getValue()Lorg/yaml/snakeyaml/tokens/TagTuple;

    move-result-object v6

    .line 398
    .end local v7    # "token":Lorg/yaml/snakeyaml/tokens/AnchorToken;
    .end local v9    # "tagToken":Lorg/yaml/snakeyaml/tokens/TagToken;
    :cond_80
    goto :goto_c2

    :cond_81
    iget-object v7, v0, Lorg/yaml/snakeyaml/parser/ParserImpl;->scanner:Lorg/yaml/snakeyaml/scanner/Scanner;

    new-array v9, v5, [Lorg/yaml/snakeyaml/tokens/Token$ID;

    sget-object v10, Lorg/yaml/snakeyaml/tokens/Token$ID;->Tag:Lorg/yaml/snakeyaml/tokens/Token$ID;

    aput-object v10, v9, v8

    invoke-interface {v7, v9}, Lorg/yaml/snakeyaml/scanner/Scanner;->checkToken([Lorg/yaml/snakeyaml/tokens/Token$ID;)Z

    move-result v7

    if-eqz v7, :cond_c2

    .line 399
    iget-object v7, v0, Lorg/yaml/snakeyaml/parser/ParserImpl;->scanner:Lorg/yaml/snakeyaml/scanner/Scanner;

    invoke-interface {v7}, Lorg/yaml/snakeyaml/scanner/Scanner;->getToken()Lorg/yaml/snakeyaml/tokens/Token;

    move-result-object v7

    check-cast v7, Lorg/yaml/snakeyaml/tokens/TagToken;

    .line 400
    .local v7, "tagToken":Lorg/yaml/snakeyaml/tokens/TagToken;
    invoke-virtual {v7}, Lorg/yaml/snakeyaml/tokens/TagToken;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v1

    .line 401
    move-object v3, v1

    .line 402
    invoke-virtual {v7}, Lorg/yaml/snakeyaml/tokens/TagToken;->getEndMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v2

    .line 403
    invoke-virtual {v7}, Lorg/yaml/snakeyaml/tokens/TagToken;->getValue()Lorg/yaml/snakeyaml/tokens/TagTuple;

    move-result-object v6

    .line 404
    iget-object v9, v0, Lorg/yaml/snakeyaml/parser/ParserImpl;->scanner:Lorg/yaml/snakeyaml/scanner/Scanner;

    new-array v10, v5, [Lorg/yaml/snakeyaml/tokens/Token$ID;

    sget-object v11, Lorg/yaml/snakeyaml/tokens/Token$ID;->Anchor:Lorg/yaml/snakeyaml/tokens/Token$ID;

    aput-object v11, v10, v8

    invoke-interface {v9, v10}, Lorg/yaml/snakeyaml/scanner/Scanner;->checkToken([Lorg/yaml/snakeyaml/tokens/Token$ID;)Z

    move-result v9

    if-eqz v9, :cond_c2

    .line 405
    iget-object v9, v0, Lorg/yaml/snakeyaml/parser/ParserImpl;->scanner:Lorg/yaml/snakeyaml/scanner/Scanner;

    invoke-interface {v9}, Lorg/yaml/snakeyaml/scanner/Scanner;->getToken()Lorg/yaml/snakeyaml/tokens/Token;

    move-result-object v9

    check-cast v9, Lorg/yaml/snakeyaml/tokens/AnchorToken;

    .line 406
    .local v9, "token":Lorg/yaml/snakeyaml/tokens/AnchorToken;
    invoke-virtual {v9}, Lorg/yaml/snakeyaml/tokens/AnchorToken;->getEndMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v2

    .line 407
    invoke-virtual {v9}, Lorg/yaml/snakeyaml/tokens/AnchorToken;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 410
    .end local v7    # "tagToken":Lorg/yaml/snakeyaml/tokens/TagToken;
    .end local v9    # "token":Lorg/yaml/snakeyaml/tokens/AnchorToken;
    :cond_c2
    :goto_c2
    const/4 v7, 0x0

    .line 411
    .local v7, "tag":Ljava/lang/String;
    if-eqz v6, :cond_109

    .line 412
    invoke-virtual {v6}, Lorg/yaml/snakeyaml/tokens/TagTuple;->getHandle()Ljava/lang/String;

    move-result-object v9

    .line 413
    .local v9, "handle":Ljava/lang/String;
    invoke-virtual {v6}, Lorg/yaml/snakeyaml/tokens/TagTuple;->getSuffix()Ljava/lang/String;

    move-result-object v10

    .line 414
    .local v10, "suffix":Ljava/lang/String;
    if-eqz v9, :cond_108

    .line 415
    iget-object v11, v0, Lorg/yaml/snakeyaml/parser/ParserImpl;->tagHandles:Ljava/util/Map;

    invoke-interface {v11, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_ef

    .line 419
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v0, Lorg/yaml/snakeyaml/parser/ParserImpl;->tagHandles:Ljava/util/Map;

    invoke-interface {v12, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_109

    .line 416
    :cond_ef
    new-instance v5, Lorg/yaml/snakeyaml/parser/ParserException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "found undefined tag handle "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v11, "while parsing a node"

    invoke-direct {v5, v11, v1, v8, v3}, Lorg/yaml/snakeyaml/parser/ParserException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v5

    .line 421
    :cond_108
    move-object v7, v10

    .line 424
    .end local v9    # "handle":Ljava/lang/String;
    .end local v10    # "suffix":Ljava/lang/String;
    :cond_109
    :goto_109
    if-nez v1, :cond_116

    .line 425
    iget-object v9, v0, Lorg/yaml/snakeyaml/parser/ParserImpl;->scanner:Lorg/yaml/snakeyaml/scanner/Scanner;

    invoke-interface {v9}, Lorg/yaml/snakeyaml/scanner/Scanner;->peekToken()Lorg/yaml/snakeyaml/tokens/Token;

    move-result-object v9

    invoke-virtual {v9}, Lorg/yaml/snakeyaml/tokens/Token;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v1

    .line 426
    move-object v2, v1

    .line 428
    :cond_116
    const/16 v17, 0x0

    .line 429
    .local v17, "event":Lorg/yaml/snakeyaml/events/Event;
    if-eqz v7, :cond_125

    const-string v9, "!"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_123

    goto :goto_125

    :cond_123
    const/4 v9, 0x0

    goto :goto_126

    :cond_125
    :goto_125
    const/4 v9, 0x1

    :goto_126
    move v14, v9

    .line 430
    .local v14, "implicit":Z
    const/4 v13, 0x0

    if-eqz p2, :cond_15b

    iget-object v9, v0, Lorg/yaml/snakeyaml/parser/ParserImpl;->scanner:Lorg/yaml/snakeyaml/scanner/Scanner;

    new-array v10, v5, [Lorg/yaml/snakeyaml/tokens/Token$ID;

    sget-object v11, Lorg/yaml/snakeyaml/tokens/Token$ID;->BlockEntry:Lorg/yaml/snakeyaml/tokens/Token$ID;

    aput-object v11, v10, v8

    invoke-interface {v9, v10}, Lorg/yaml/snakeyaml/scanner/Scanner;->checkToken([Lorg/yaml/snakeyaml/tokens/Token$ID;)Z

    move-result v9

    if-eqz v9, :cond_15b

    .line 431
    iget-object v5, v0, Lorg/yaml/snakeyaml/parser/ParserImpl;->scanner:Lorg/yaml/snakeyaml/scanner/Scanner;

    invoke-interface {v5}, Lorg/yaml/snakeyaml/scanner/Scanner;->peekToken()Lorg/yaml/snakeyaml/tokens/Token;

    move-result-object v5

    invoke-virtual {v5}, Lorg/yaml/snakeyaml/tokens/Token;->getEndMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v2

    .line 432
    new-instance v5, Lorg/yaml/snakeyaml/events/SequenceStartEvent;

    sget-object v15, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v9, v5

    move-object v10, v4

    move-object v11, v7

    move v12, v14

    move-object v8, v13

    move-object v13, v1

    move/from16 v18, v14

    .end local v14    # "implicit":Z
    .local v18, "implicit":Z
    move-object v14, v2

    invoke-direct/range {v9 .. v15}, Lorg/yaml/snakeyaml/events/SequenceStartEvent;-><init>(Ljava/lang/String;Ljava/lang/String;ZLorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/Boolean;)V

    .line 434
    .end local v17    # "event":Lorg/yaml/snakeyaml/events/Event;
    .restart local v5    # "event":Lorg/yaml/snakeyaml/events/Event;
    new-instance v9, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseIndentlessSequenceEntry;

    invoke-direct {v9, v0, v8}, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseIndentlessSequenceEntry;-><init>(Lorg/yaml/snakeyaml/parser/ParserImpl;Lorg/yaml/snakeyaml/parser/ParserImpl$1;)V

    iput-object v9, v0, Lorg/yaml/snakeyaml/parser/ParserImpl;->state:Lorg/yaml/snakeyaml/parser/Production;

    goto/16 :goto_2f0

    .line 436
    .end local v5    # "event":Lorg/yaml/snakeyaml/events/Event;
    .end local v18    # "implicit":Z
    .restart local v14    # "implicit":Z
    .restart local v17    # "event":Lorg/yaml/snakeyaml/events/Event;
    :cond_15b
    move/from16 v18, v14

    move-object v14, v13

    .end local v14    # "implicit":Z
    .restart local v18    # "implicit":Z
    iget-object v9, v0, Lorg/yaml/snakeyaml/parser/ParserImpl;->scanner:Lorg/yaml/snakeyaml/scanner/Scanner;

    new-array v10, v5, [Lorg/yaml/snakeyaml/tokens/Token$ID;

    sget-object v11, Lorg/yaml/snakeyaml/tokens/Token$ID;->Scalar:Lorg/yaml/snakeyaml/tokens/Token$ID;

    aput-object v11, v10, v8

    invoke-interface {v9, v10}, Lorg/yaml/snakeyaml/scanner/Scanner;->checkToken([Lorg/yaml/snakeyaml/tokens/Token$ID;)Z

    move-result v9

    if-eqz v9, :cond_1c3

    .line 437
    iget-object v9, v0, Lorg/yaml/snakeyaml/parser/ParserImpl;->scanner:Lorg/yaml/snakeyaml/scanner/Scanner;

    invoke-interface {v9}, Lorg/yaml/snakeyaml/scanner/Scanner;->getToken()Lorg/yaml/snakeyaml/tokens/Token;

    move-result-object v9

    move-object/from16 v19, v9

    check-cast v19, Lorg/yaml/snakeyaml/tokens/ScalarToken;

    .line 438
    .local v19, "token":Lorg/yaml/snakeyaml/tokens/ScalarToken;
    invoke-virtual/range {v19 .. v19}, Lorg/yaml/snakeyaml/tokens/ScalarToken;->getEndMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v2

    .line 440
    invoke-virtual/range {v19 .. v19}, Lorg/yaml/snakeyaml/tokens/ScalarToken;->getPlain()Z

    move-result v9

    if-eqz v9, :cond_182

    if-eqz v7, :cond_18a

    :cond_182
    const-string v9, "!"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_192

    .line 441
    :cond_18a
    new-instance v9, Lorg/yaml/snakeyaml/events/ImplicitTuple;

    invoke-direct {v9, v5, v8}, Lorg/yaml/snakeyaml/events/ImplicitTuple;-><init>(ZZ)V

    move-object v5, v9

    .line 445
    .local v12, "implicitValues":Lorg/yaml/snakeyaml/events/ImplicitTuple;
    :goto_190
    move-object v12, v5

    goto :goto_1a1

    .line 442
    .end local v12    # "implicitValues":Lorg/yaml/snakeyaml/events/ImplicitTuple;
    :cond_192
    if-nez v7, :cond_19b

    .line 443
    new-instance v9, Lorg/yaml/snakeyaml/events/ImplicitTuple;

    invoke-direct {v9, v8, v5}, Lorg/yaml/snakeyaml/events/ImplicitTuple;-><init>(ZZ)V

    move-object v5, v9

    goto :goto_190

    .line 445
    :cond_19b
    new-instance v5, Lorg/yaml/snakeyaml/events/ImplicitTuple;

    invoke-direct {v5, v8, v8}, Lorg/yaml/snakeyaml/events/ImplicitTuple;-><init>(ZZ)V

    goto :goto_190

    .line 447
    .restart local v12    # "implicitValues":Lorg/yaml/snakeyaml/events/ImplicitTuple;
    :goto_1a1
    new-instance v5, Lorg/yaml/snakeyaml/events/ScalarEvent;

    invoke-virtual/range {v19 .. v19}, Lorg/yaml/snakeyaml/tokens/ScalarToken;->getValue()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {v19 .. v19}, Lorg/yaml/snakeyaml/tokens/ScalarToken;->getStyle()C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v16

    move-object v9, v5

    move-object v10, v4

    move-object v11, v7

    move-object v14, v1

    move-object v15, v2

    invoke-direct/range {v9 .. v16}, Lorg/yaml/snakeyaml/events/ScalarEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/yaml/snakeyaml/events/ImplicitTuple;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/Character;)V

    .line 449
    .end local v17    # "event":Lorg/yaml/snakeyaml/events/Event;
    .restart local v5    # "event":Lorg/yaml/snakeyaml/events/Event;
    iget-object v8, v0, Lorg/yaml/snakeyaml/parser/ParserImpl;->states:Lorg/yaml/snakeyaml/util/ArrayStack;

    invoke-virtual {v8}, Lorg/yaml/snakeyaml/util/ArrayStack;->pop()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/yaml/snakeyaml/parser/Production;

    iput-object v8, v0, Lorg/yaml/snakeyaml/parser/ParserImpl;->state:Lorg/yaml/snakeyaml/parser/Production;

    .line 450
    .end local v12    # "implicitValues":Lorg/yaml/snakeyaml/events/ImplicitTuple;
    .end local v19    # "token":Lorg/yaml/snakeyaml/tokens/ScalarToken;
    goto/16 :goto_2f0

    .end local v5    # "event":Lorg/yaml/snakeyaml/events/Event;
    .restart local v17    # "event":Lorg/yaml/snakeyaml/events/Event;
    :cond_1c3
    iget-object v9, v0, Lorg/yaml/snakeyaml/parser/ParserImpl;->scanner:Lorg/yaml/snakeyaml/scanner/Scanner;

    new-array v10, v5, [Lorg/yaml/snakeyaml/tokens/Token$ID;

    sget-object v11, Lorg/yaml/snakeyaml/tokens/Token$ID;->FlowSequenceStart:Lorg/yaml/snakeyaml/tokens/Token$ID;

    aput-object v11, v10, v8

    invoke-interface {v9, v10}, Lorg/yaml/snakeyaml/scanner/Scanner;->checkToken([Lorg/yaml/snakeyaml/tokens/Token$ID;)Z

    move-result v9

    if-eqz v9, :cond_1f3

    .line 451
    iget-object v5, v0, Lorg/yaml/snakeyaml/parser/ParserImpl;->scanner:Lorg/yaml/snakeyaml/scanner/Scanner;

    invoke-interface {v5}, Lorg/yaml/snakeyaml/scanner/Scanner;->peekToken()Lorg/yaml/snakeyaml/tokens/Token;

    move-result-object v5

    invoke-virtual {v5}, Lorg/yaml/snakeyaml/tokens/Token;->getEndMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v2

    .line 452
    new-instance v5, Lorg/yaml/snakeyaml/events/SequenceStartEvent;

    sget-object v15, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v9, v5

    move-object v10, v4

    move-object v11, v7

    move/from16 v12, v18

    move-object v13, v1

    move-object v8, v14

    move-object v14, v2

    invoke-direct/range {v9 .. v15}, Lorg/yaml/snakeyaml/events/SequenceStartEvent;-><init>(Ljava/lang/String;Ljava/lang/String;ZLorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/Boolean;)V

    .line 454
    .end local v17    # "event":Lorg/yaml/snakeyaml/events/Event;
    .restart local v5    # "event":Lorg/yaml/snakeyaml/events/Event;
    new-instance v9, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseFlowSequenceFirstEntry;

    invoke-direct {v9, v0, v8}, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseFlowSequenceFirstEntry;-><init>(Lorg/yaml/snakeyaml/parser/ParserImpl;Lorg/yaml/snakeyaml/parser/ParserImpl$1;)V

    iput-object v9, v0, Lorg/yaml/snakeyaml/parser/ParserImpl;->state:Lorg/yaml/snakeyaml/parser/Production;

    goto/16 :goto_2f0

    .line 455
    .end local v5    # "event":Lorg/yaml/snakeyaml/events/Event;
    .restart local v17    # "event":Lorg/yaml/snakeyaml/events/Event;
    :cond_1f3
    iget-object v9, v0, Lorg/yaml/snakeyaml/parser/ParserImpl;->scanner:Lorg/yaml/snakeyaml/scanner/Scanner;

    new-array v10, v5, [Lorg/yaml/snakeyaml/tokens/Token$ID;

    sget-object v11, Lorg/yaml/snakeyaml/tokens/Token$ID;->FlowMappingStart:Lorg/yaml/snakeyaml/tokens/Token$ID;

    aput-object v11, v10, v8

    invoke-interface {v9, v10}, Lorg/yaml/snakeyaml/scanner/Scanner;->checkToken([Lorg/yaml/snakeyaml/tokens/Token$ID;)Z

    move-result v9

    if-eqz v9, :cond_223

    .line 456
    iget-object v5, v0, Lorg/yaml/snakeyaml/parser/ParserImpl;->scanner:Lorg/yaml/snakeyaml/scanner/Scanner;

    invoke-interface {v5}, Lorg/yaml/snakeyaml/scanner/Scanner;->peekToken()Lorg/yaml/snakeyaml/tokens/Token;

    move-result-object v5

    invoke-virtual {v5}, Lorg/yaml/snakeyaml/tokens/Token;->getEndMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v2

    .line 457
    new-instance v5, Lorg/yaml/snakeyaml/events/MappingStartEvent;

    sget-object v15, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v9, v5

    move-object v10, v4

    move-object v11, v7

    move/from16 v12, v18

    move-object v13, v1

    move-object v8, v14

    move-object v14, v2

    invoke-direct/range {v9 .. v15}, Lorg/yaml/snakeyaml/events/MappingStartEvent;-><init>(Ljava/lang/String;Ljava/lang/String;ZLorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/Boolean;)V

    .line 459
    .end local v17    # "event":Lorg/yaml/snakeyaml/events/Event;
    .restart local v5    # "event":Lorg/yaml/snakeyaml/events/Event;
    new-instance v9, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseFlowMappingFirstKey;

    invoke-direct {v9, v0, v8}, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseFlowMappingFirstKey;-><init>(Lorg/yaml/snakeyaml/parser/ParserImpl;Lorg/yaml/snakeyaml/parser/ParserImpl$1;)V

    iput-object v9, v0, Lorg/yaml/snakeyaml/parser/ParserImpl;->state:Lorg/yaml/snakeyaml/parser/Production;

    goto/16 :goto_2f0

    .line 460
    .end local v5    # "event":Lorg/yaml/snakeyaml/events/Event;
    .restart local v17    # "event":Lorg/yaml/snakeyaml/events/Event;
    :cond_223
    if-eqz p1, :cond_255

    iget-object v9, v0, Lorg/yaml/snakeyaml/parser/ParserImpl;->scanner:Lorg/yaml/snakeyaml/scanner/Scanner;

    new-array v10, v5, [Lorg/yaml/snakeyaml/tokens/Token$ID;

    sget-object v11, Lorg/yaml/snakeyaml/tokens/Token$ID;->BlockSequenceStart:Lorg/yaml/snakeyaml/tokens/Token$ID;

    aput-object v11, v10, v8

    invoke-interface {v9, v10}, Lorg/yaml/snakeyaml/scanner/Scanner;->checkToken([Lorg/yaml/snakeyaml/tokens/Token$ID;)Z

    move-result v9

    if-eqz v9, :cond_255

    .line 461
    iget-object v5, v0, Lorg/yaml/snakeyaml/parser/ParserImpl;->scanner:Lorg/yaml/snakeyaml/scanner/Scanner;

    invoke-interface {v5}, Lorg/yaml/snakeyaml/scanner/Scanner;->peekToken()Lorg/yaml/snakeyaml/tokens/Token;

    move-result-object v5

    invoke-virtual {v5}, Lorg/yaml/snakeyaml/tokens/Token;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v2

    .line 462
    new-instance v5, Lorg/yaml/snakeyaml/events/SequenceStartEvent;

    sget-object v15, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v9, v5

    move-object v10, v4

    move-object v11, v7

    move/from16 v12, v18

    move-object v13, v1

    move-object v8, v14

    move-object v14, v2

    invoke-direct/range {v9 .. v15}, Lorg/yaml/snakeyaml/events/SequenceStartEvent;-><init>(Ljava/lang/String;Ljava/lang/String;ZLorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/Boolean;)V

    .line 464
    .end local v17    # "event":Lorg/yaml/snakeyaml/events/Event;
    .restart local v5    # "event":Lorg/yaml/snakeyaml/events/Event;
    new-instance v9, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseBlockSequenceFirstEntry;

    invoke-direct {v9, v0, v8}, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseBlockSequenceFirstEntry;-><init>(Lorg/yaml/snakeyaml/parser/ParserImpl;Lorg/yaml/snakeyaml/parser/ParserImpl$1;)V

    iput-object v9, v0, Lorg/yaml/snakeyaml/parser/ParserImpl;->state:Lorg/yaml/snakeyaml/parser/Production;

    goto/16 :goto_2f0

    .line 465
    .end local v5    # "event":Lorg/yaml/snakeyaml/events/Event;
    .restart local v17    # "event":Lorg/yaml/snakeyaml/events/Event;
    :cond_255
    if-eqz p1, :cond_287

    iget-object v9, v0, Lorg/yaml/snakeyaml/parser/ParserImpl;->scanner:Lorg/yaml/snakeyaml/scanner/Scanner;

    new-array v5, v5, [Lorg/yaml/snakeyaml/tokens/Token$ID;

    sget-object v10, Lorg/yaml/snakeyaml/tokens/Token$ID;->BlockMappingStart:Lorg/yaml/snakeyaml/tokens/Token$ID;

    aput-object v10, v5, v8

    invoke-interface {v9, v5}, Lorg/yaml/snakeyaml/scanner/Scanner;->checkToken([Lorg/yaml/snakeyaml/tokens/Token$ID;)Z

    move-result v5

    if-eqz v5, :cond_287

    .line 466
    iget-object v5, v0, Lorg/yaml/snakeyaml/parser/ParserImpl;->scanner:Lorg/yaml/snakeyaml/scanner/Scanner;

    invoke-interface {v5}, Lorg/yaml/snakeyaml/scanner/Scanner;->peekToken()Lorg/yaml/snakeyaml/tokens/Token;

    move-result-object v5

    invoke-virtual {v5}, Lorg/yaml/snakeyaml/tokens/Token;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v2

    .line 467
    new-instance v5, Lorg/yaml/snakeyaml/events/MappingStartEvent;

    sget-object v15, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v9, v5

    move-object v10, v4

    move-object v11, v7

    move/from16 v12, v18

    move-object v13, v1

    move-object v8, v14

    move-object v14, v2

    invoke-direct/range {v9 .. v15}, Lorg/yaml/snakeyaml/events/MappingStartEvent;-><init>(Ljava/lang/String;Ljava/lang/String;ZLorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/Boolean;)V

    .line 469
    .end local v17    # "event":Lorg/yaml/snakeyaml/events/Event;
    .restart local v5    # "event":Lorg/yaml/snakeyaml/events/Event;
    new-instance v9, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseBlockMappingFirstKey;

    invoke-direct {v9, v0, v8}, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseBlockMappingFirstKey;-><init>(Lorg/yaml/snakeyaml/parser/ParserImpl;Lorg/yaml/snakeyaml/parser/ParserImpl$1;)V

    iput-object v9, v0, Lorg/yaml/snakeyaml/parser/ParserImpl;->state:Lorg/yaml/snakeyaml/parser/Production;

    goto/16 :goto_2f0

    .line 470
    .end local v5    # "event":Lorg/yaml/snakeyaml/events/Event;
    .restart local v17    # "event":Lorg/yaml/snakeyaml/events/Event;
    :cond_287
    if-nez v4, :cond_2ce

    if-eqz v7, :cond_28c

    goto :goto_2ce

    .line 478
    :cond_28c
    if-eqz p1, :cond_291

    .line 479
    const-string v5, "block"

    goto :goto_293

    .line 481
    :cond_291
    const-string v5, "flow"

    .line 483
    .local v5, "node":Ljava/lang/String;
    :goto_293
    iget-object v8, v0, Lorg/yaml/snakeyaml/parser/ParserImpl;->scanner:Lorg/yaml/snakeyaml/scanner/Scanner;

    invoke-interface {v8}, Lorg/yaml/snakeyaml/scanner/Scanner;->peekToken()Lorg/yaml/snakeyaml/tokens/Token;

    move-result-object v8

    .line 484
    .local v8, "token":Lorg/yaml/snakeyaml/tokens/Token;
    new-instance v9, Lorg/yaml/snakeyaml/parser/ParserException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "while parsing a "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " node"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "expected the node content, but found "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lorg/yaml/snakeyaml/tokens/Token;->getTokenId()Lorg/yaml/snakeyaml/tokens/Token$ID;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8}, Lorg/yaml/snakeyaml/tokens/Token;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v12

    invoke-direct {v9, v10, v1, v11, v12}, Lorg/yaml/snakeyaml/parser/ParserException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v9

    .line 473
    .end local v5    # "node":Ljava/lang/String;
    .end local v8    # "token":Lorg/yaml/snakeyaml/tokens/Token;
    :cond_2ce
    :goto_2ce
    new-instance v5, Lorg/yaml/snakeyaml/events/ScalarEvent;

    new-instance v12, Lorg/yaml/snakeyaml/events/ImplicitTuple;

    move/from16 v14, v18

    .end local v18    # "implicit":Z
    .restart local v14    # "implicit":Z
    invoke-direct {v12, v14, v8}, Lorg/yaml/snakeyaml/events/ImplicitTuple;-><init>(ZZ)V

    const-string v13, ""

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v16

    move-object v9, v5

    move-object v10, v4

    move-object v11, v7

    move v8, v14

    .end local v14    # "implicit":Z
    .local v8, "implicit":Z
    move-object v14, v1

    move-object v15, v2

    invoke-direct/range {v9 .. v16}, Lorg/yaml/snakeyaml/events/ScalarEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/yaml/snakeyaml/events/ImplicitTuple;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/Character;)V

    .line 475
    .end local v17    # "event":Lorg/yaml/snakeyaml/events/Event;
    .local v5, "event":Lorg/yaml/snakeyaml/events/Event;
    iget-object v9, v0, Lorg/yaml/snakeyaml/parser/ParserImpl;->states:Lorg/yaml/snakeyaml/util/ArrayStack;

    invoke-virtual {v9}, Lorg/yaml/snakeyaml/util/ArrayStack;->pop()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/yaml/snakeyaml/parser/Production;

    iput-object v9, v0, Lorg/yaml/snakeyaml/parser/ParserImpl;->state:Lorg/yaml/snakeyaml/parser/Production;

    .line 490
    .end local v4    # "anchor":Ljava/lang/String;
    .end local v6    # "tagTokenTag":Lorg/yaml/snakeyaml/tokens/TagTuple;
    .end local v7    # "tag":Ljava/lang/String;
    .end local v8    # "implicit":Z
    :goto_2f0
    return-object v5
.end method

.method private processDirectives()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 297
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/yaml/snakeyaml/parser/ParserImpl;->yamlVersion:Ljava/util/List;

    .line 298
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/yaml/snakeyaml/parser/ParserImpl;->tagHandles:Ljava/util/Map;

    .line 299
    :goto_a
    iget-object v1, p0, Lorg/yaml/snakeyaml/parser/ParserImpl;->scanner:Lorg/yaml/snakeyaml/scanner/Scanner;

    const/4 v2, 0x1

    new-array v3, v2, [Lorg/yaml/snakeyaml/tokens/Token$ID;

    sget-object v4, Lorg/yaml/snakeyaml/tokens/Token$ID;->Directive:Lorg/yaml/snakeyaml/tokens/Token$ID;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-interface {v1, v3}, Lorg/yaml/snakeyaml/scanner/Scanner;->checkToken([Lorg/yaml/snakeyaml/tokens/Token$ID;)Z

    move-result v1

    if-eqz v1, :cond_a8

    .line 301
    iget-object v1, p0, Lorg/yaml/snakeyaml/parser/ParserImpl;->scanner:Lorg/yaml/snakeyaml/scanner/Scanner;

    invoke-interface {v1}, Lorg/yaml/snakeyaml/scanner/Scanner;->getToken()Lorg/yaml/snakeyaml/tokens/Token;

    move-result-object v1

    check-cast v1, Lorg/yaml/snakeyaml/tokens/DirectiveToken;

    .line 302
    .local v1, "token":Lorg/yaml/snakeyaml/tokens/DirectiveToken;
    invoke-virtual {v1}, Lorg/yaml/snakeyaml/tokens/DirectiveToken;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "YAML"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_61

    .line 303
    iget-object v3, p0, Lorg/yaml/snakeyaml/parser/ParserImpl;->yamlVersion:Ljava/util/List;

    if-nez v3, :cond_55

    .line 307
    invoke-virtual {v1}, Lorg/yaml/snakeyaml/tokens/DirectiveToken;->getValue()Ljava/util/List;

    move-result-object v3

    .line 308
    .local v3, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 309
    .local v4, "major":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v2, :cond_49

    .line 314
    invoke-virtual {v1}, Lorg/yaml/snakeyaml/tokens/DirectiveToken;->getValue()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lorg/yaml/snakeyaml/parser/ParserImpl;->yamlVersion:Ljava/util/List;

    .line 315
    .end local v3    # "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v4    # "major":Ljava/lang/Integer;
    goto :goto_a6

    .line 310
    .restart local v3    # "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v4    # "major":Ljava/lang/Integer;
    :cond_49
    new-instance v2, Lorg/yaml/snakeyaml/parser/ParserException;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/tokens/DirectiveToken;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v5

    const-string v6, "found incompatible YAML document (version 1.* is required)"

    invoke-direct {v2, v0, v0, v6, v5}, Lorg/yaml/snakeyaml/parser/ParserException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v2

    .line 304
    .end local v3    # "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v4    # "major":Ljava/lang/Integer;
    :cond_55
    new-instance v2, Lorg/yaml/snakeyaml/parser/ParserException;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/tokens/DirectiveToken;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v3

    const-string v4, "found duplicate YAML directive"

    invoke-direct {v2, v0, v0, v4, v3}, Lorg/yaml/snakeyaml/parser/ParserException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v2

    .line 315
    :cond_61
    invoke-virtual {v1}, Lorg/yaml/snakeyaml/tokens/DirectiveToken;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TAG"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a6

    .line 316
    invoke-virtual {v1}, Lorg/yaml/snakeyaml/tokens/DirectiveToken;->getValue()Ljava/util/List;

    move-result-object v3

    .line 317
    .local v3, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 318
    .local v4, "handle":Ljava/lang/String;
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 319
    .local v2, "prefix":Ljava/lang/String;
    iget-object v5, p0, Lorg/yaml/snakeyaml/parser/ParserImpl;->tagHandles:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8b

    .line 323
    iget-object v5, p0, Lorg/yaml/snakeyaml/parser/ParserImpl;->tagHandles:Ljava/util/Map;

    invoke-interface {v5, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a6

    .line 320
    :cond_8b
    new-instance v5, Lorg/yaml/snakeyaml/parser/ParserException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "duplicate tag handle "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/tokens/DirectiveToken;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v7

    invoke-direct {v5, v0, v0, v6, v7}, Lorg/yaml/snakeyaml/parser/ParserException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v5

    .line 325
    .end local v1    # "token":Lorg/yaml/snakeyaml/tokens/DirectiveToken;
    .end local v2    # "prefix":Ljava/lang/String;
    .end local v3    # "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "handle":Ljava/lang/String;
    :cond_a6
    :goto_a6
    goto/16 :goto_a

    .line 326
    :cond_a8
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 327
    .local v0, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v1, p0, Lorg/yaml/snakeyaml/parser/ParserImpl;->yamlVersion:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    iget-object v1, p0, Lorg/yaml/snakeyaml/parser/ParserImpl;->tagHandles:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c6

    .line 329
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lorg/yaml/snakeyaml/parser/ParserImpl;->tagHandles:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_ce

    .line 331
    :cond_c6
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    :goto_ce
    sget-object v1, Lorg/yaml/snakeyaml/parser/ParserImpl;->DEFAULT_TAGS:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_d8
    :goto_d8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 334
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lorg/yaml/snakeyaml/parser/ParserImpl;->tagHandles:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d8

    .line 335
    iget-object v3, p0, Lorg/yaml/snakeyaml/parser/ParserImpl;->tagHandles:Ljava/util/Map;

    sget-object v4, Lorg/yaml/snakeyaml/parser/ParserImpl;->DEFAULT_TAGS:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d8

    .line 338
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "key":Ljava/lang/String;
    :cond_f8
    return-object v0
.end method

.method private processEmptyScalar(Lorg/yaml/snakeyaml/error/Mark;)Lorg/yaml/snakeyaml/events/Event;
    .registers 11
    .param p1, "mark"    # Lorg/yaml/snakeyaml/error/Mark;

    .line 797
    new-instance v8, Lorg/yaml/snakeyaml/events/ScalarEvent;

    new-instance v3, Lorg/yaml/snakeyaml/events/ImplicitTuple;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {v3, v1, v0}, Lorg/yaml/snakeyaml/events/ImplicitTuple;-><init>(ZZ)V

    const-string v4, ""

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, v8

    move-object v5, p1

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Lorg/yaml/snakeyaml/events/ScalarEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/yaml/snakeyaml/events/ImplicitTuple;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/Character;)V

    return-object v8
.end method


# virtual methods
.method public checkEvent(Lorg/yaml/snakeyaml/events/Event$ID;)Z
    .registers 3
    .param p1, "choices"    # Lorg/yaml/snakeyaml/events/Event$ID;

    .line 145
    invoke-virtual {p0}, Lorg/yaml/snakeyaml/parser/ParserImpl;->peekEvent()Lorg/yaml/snakeyaml/events/Event;

    .line 146
    iget-object v0, p0, Lorg/yaml/snakeyaml/parser/ParserImpl;->currentEvent:Lorg/yaml/snakeyaml/events/Event;

    if-eqz v0, :cond_11

    .line 147
    iget-object v0, p0, Lorg/yaml/snakeyaml/parser/ParserImpl;->currentEvent:Lorg/yaml/snakeyaml/events/Event;

    invoke-virtual {v0, p1}, Lorg/yaml/snakeyaml/events/Event;->is(Lorg/yaml/snakeyaml/events/Event$ID;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 148
    const/4 v0, 0x1

    return v0

    .line 151
    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public getEvent()Lorg/yaml/snakeyaml/events/Event;
    .registers 3

    .line 170
    invoke-virtual {p0}, Lorg/yaml/snakeyaml/parser/ParserImpl;->peekEvent()Lorg/yaml/snakeyaml/events/Event;

    .line 171
    iget-object v0, p0, Lorg/yaml/snakeyaml/parser/ParserImpl;->currentEvent:Lorg/yaml/snakeyaml/events/Event;

    .line 172
    .local v0, "value":Lorg/yaml/snakeyaml/events/Event;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/yaml/snakeyaml/parser/ParserImpl;->currentEvent:Lorg/yaml/snakeyaml/events/Event;

    .line 173
    return-object v0
.end method

.method public peekEvent()Lorg/yaml/snakeyaml/events/Event;
    .registers 2

    .line 158
    iget-object v0, p0, Lorg/yaml/snakeyaml/parser/ParserImpl;->currentEvent:Lorg/yaml/snakeyaml/events/Event;

    if-nez v0, :cond_10

    .line 159
    iget-object v0, p0, Lorg/yaml/snakeyaml/parser/ParserImpl;->state:Lorg/yaml/snakeyaml/parser/Production;

    if-eqz v0, :cond_10

    .line 160
    iget-object v0, p0, Lorg/yaml/snakeyaml/parser/ParserImpl;->state:Lorg/yaml/snakeyaml/parser/Production;

    invoke-interface {v0}, Lorg/yaml/snakeyaml/parser/Production;->produce()Lorg/yaml/snakeyaml/events/Event;

    move-result-object v0

    iput-object v0, p0, Lorg/yaml/snakeyaml/parser/ParserImpl;->currentEvent:Lorg/yaml/snakeyaml/events/Event;

    .line 163
    :cond_10
    iget-object v0, p0, Lorg/yaml/snakeyaml/parser/ParserImpl;->currentEvent:Lorg/yaml/snakeyaml/events/Event;

    return-object v0
.end method
