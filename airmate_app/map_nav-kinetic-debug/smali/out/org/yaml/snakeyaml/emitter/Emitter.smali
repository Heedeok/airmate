.class public final Lorg/yaml/snakeyaml/emitter/Emitter;
.super Ljava/lang/Object;
.source "Emitter.java"

# interfaces
.implements Lorg/yaml/snakeyaml/emitter/Emitable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/yaml/snakeyaml/emitter/Emitter$ExpectBlockMappingValue;,
        Lorg/yaml/snakeyaml/emitter/Emitter$ExpectBlockMappingSimpleValue;,
        Lorg/yaml/snakeyaml/emitter/Emitter$ExpectBlockMappingKey;,
        Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFirstBlockMappingKey;,
        Lorg/yaml/snakeyaml/emitter/Emitter$ExpectBlockSequenceItem;,
        Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFirstBlockSequenceItem;,
        Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowMappingValue;,
        Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowMappingSimpleValue;,
        Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowMappingKey;,
        Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFirstFlowMappingKey;,
        Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowSequenceItem;,
        Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFirstFlowSequenceItem;,
        Lorg/yaml/snakeyaml/emitter/Emitter$ExpectDocumentRoot;,
        Lorg/yaml/snakeyaml/emitter/Emitter$ExpectDocumentEnd;,
        Lorg/yaml/snakeyaml/emitter/Emitter$ExpectDocumentStart;,
        Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFirstDocumentStart;,
        Lorg/yaml/snakeyaml/emitter/Emitter$ExpectNothing;,
        Lorg/yaml/snakeyaml/emitter/Emitter$ExpectStreamStart;
    }
.end annotation


# static fields
.field private static final ANCHOR_FORMAT:Ljava/util/regex/Pattern;

.field private static final DEFAULT_TAG_PREFIXES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ESCAPE_REPLACEMENTS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final HANDLE_FORMAT:Ljava/util/regex/Pattern;

.field public static final MAX_INDENT:I = 0xa

.field public static final MIN_INDENT:I = 0x1

.field private static final SPACE:[C


# instance fields
.field private allowUnicode:Z

.field private analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

.field private bestIndent:I

.field private bestLineBreak:[C

.field private bestWidth:I

.field private canonical:Ljava/lang/Boolean;

.field private column:I

.field private event:Lorg/yaml/snakeyaml/events/Event;

.field private final events:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/yaml/snakeyaml/events/Event;",
            ">;"
        }
    .end annotation
.end field

.field private flowLevel:I

.field private indent:Ljava/lang/Integer;

.field private indention:Z

.field private final indents:Lorg/yaml/snakeyaml/util/ArrayStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/yaml/snakeyaml/util/ArrayStack<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mappingContext:Z

.field private openEnded:Z

.field private options:Lorg/yaml/snakeyaml/DumperOptions;

.field private preparedAnchor:Ljava/lang/String;

.field private preparedTag:Ljava/lang/String;

.field private prettyFlow:Ljava/lang/Boolean;

.field private rootContext:Z

.field private simpleKeyContext:Z

.field private state:Lorg/yaml/snakeyaml/emitter/EmitterState;

.field private final states:Lorg/yaml/snakeyaml/util/ArrayStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/yaml/snakeyaml/util/ArrayStack<",
            "Lorg/yaml/snakeyaml/emitter/EmitterState;",
            ">;"
        }
    .end annotation
.end field

.field private final stream:Ljava/io/Writer;

.field private style:Ljava/lang/Character;

.field private tagPrefixes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private whitespace:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/yaml/snakeyaml/emitter/Emitter;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    .line 66
    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/16 v2, 0x20

    aput-char v2, v0, v1

    sput-object v0, Lorg/yaml/snakeyaml/emitter/Emitter;->SPACE:[C

    .line 69
    sget-object v0, Lorg/yaml/snakeyaml/emitter/Emitter;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lorg/yaml/snakeyaml/emitter/Emitter;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "a"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lorg/yaml/snakeyaml/emitter/Emitter;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "b"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lorg/yaml/snakeyaml/emitter/Emitter;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "t"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lorg/yaml/snakeyaml/emitter/Emitter;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "n"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lorg/yaml/snakeyaml/emitter/Emitter;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "v"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lorg/yaml/snakeyaml/emitter/Emitter;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lorg/yaml/snakeyaml/emitter/Emitter;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "r"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lorg/yaml/snakeyaml/emitter/Emitter;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "e"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lorg/yaml/snakeyaml/emitter/Emitter;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    const/16 v1, 0x22

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lorg/yaml/snakeyaml/emitter/Emitter;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    const/16 v1, 0x5c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\\"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lorg/yaml/snakeyaml/emitter/Emitter;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    const/16 v1, 0x85

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "N"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lorg/yaml/snakeyaml/emitter/Emitter;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    const/16 v1, 0xa0

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "_"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lorg/yaml/snakeyaml/emitter/Emitter;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    const/16 v1, 0x2028

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "L"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lorg/yaml/snakeyaml/emitter/Emitter;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    const/16 v1, 0x2029

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "P"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lorg/yaml/snakeyaml/emitter/Emitter;->DEFAULT_TAG_PREFIXES:Ljava/util/Map;

    .line 88
    sget-object v0, Lorg/yaml/snakeyaml/emitter/Emitter;->DEFAULT_TAG_PREFIXES:Ljava/util/Map;

    const-string v1, "!"

    const-string v2, "!"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lorg/yaml/snakeyaml/emitter/Emitter;->DEFAULT_TAG_PREFIXES:Ljava/util/Map;

    const-string v1, "tag:yaml.org,2002:"

    const-string v2, "!!"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 830
    const-string v0, "^![-_\\w]*!$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/yaml/snakeyaml/emitter/Emitter;->HANDLE_FORMAT:Ljava/util/regex/Pattern;

    .line 891
    const-string v0, "^[-_\\w]*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/yaml/snakeyaml/emitter/Emitter;->ANCHOR_FORMAT:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Lorg/yaml/snakeyaml/DumperOptions;)V
    .registers 8
    .param p1, "stream"    # Ljava/io/Writer;
    .param p2, "opts"    # Lorg/yaml/snakeyaml/DumperOptions;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    .line 157
    new-instance v0, Lorg/yaml/snakeyaml/util/ArrayStack;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/util/ArrayStack;-><init>(I)V

    iput-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->states:Lorg/yaml/snakeyaml/util/ArrayStack;

    .line 158
    new-instance v0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectStreamStart;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectStreamStart;-><init>(Lorg/yaml/snakeyaml/emitter/Emitter;Lorg/yaml/snakeyaml/emitter/Emitter$1;)V

    iput-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->state:Lorg/yaml/snakeyaml/emitter/EmitterState;

    .line 160
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->events:Ljava/util/Queue;

    .line 161
    iput-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    .line 163
    new-instance v0, Lorg/yaml/snakeyaml/util/ArrayStack;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/util/ArrayStack;-><init>(I)V

    iput-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indents:Lorg/yaml/snakeyaml/util/ArrayStack;

    .line 164
    iput-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indent:Ljava/lang/Integer;

    .line 166
    const/4 v0, 0x0

    iput v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->flowLevel:I

    .line 168
    iput-boolean v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->mappingContext:Z

    .line 169
    iput-boolean v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->simpleKeyContext:Z

    .line 177
    iput v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    .line 178
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->whitespace:Z

    .line 179
    iput-boolean v3, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indention:Z

    .line 182
    iput-boolean v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->openEnded:Z

    .line 185
    invoke-virtual {p2}, Lorg/yaml/snakeyaml/DumperOptions;->isCanonical()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->canonical:Ljava/lang/Boolean;

    .line 186
    invoke-virtual {p2}, Lorg/yaml/snakeyaml/DumperOptions;->isPrettyFlow()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->prettyFlow:Ljava/lang/Boolean;

    .line 187
    invoke-virtual {p2}, Lorg/yaml/snakeyaml/DumperOptions;->isAllowUnicode()Z

    move-result v0

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->allowUnicode:Z

    .line 188
    const/4 v0, 0x2

    iput v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->bestIndent:I

    .line 189
    invoke-virtual {p2}, Lorg/yaml/snakeyaml/DumperOptions;->getIndent()I

    move-result v4

    if-le v4, v3, :cond_69

    invoke-virtual {p2}, Lorg/yaml/snakeyaml/DumperOptions;->getIndent()I

    move-result v3

    if-ge v3, v1, :cond_69

    .line 190
    invoke-virtual {p2}, Lorg/yaml/snakeyaml/DumperOptions;->getIndent()I

    move-result v1

    iput v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->bestIndent:I

    .line 192
    :cond_69
    const/16 v1, 0x50

    iput v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->bestWidth:I

    .line 193
    invoke-virtual {p2}, Lorg/yaml/snakeyaml/DumperOptions;->getWidth()I

    move-result v1

    iget v3, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->bestIndent:I

    mul-int/lit8 v3, v3, 0x2

    if-le v1, v3, :cond_7d

    .line 194
    invoke-virtual {p2}, Lorg/yaml/snakeyaml/DumperOptions;->getWidth()I

    move-result v0

    iput v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->bestWidth:I

    .line 196
    :cond_7d
    invoke-virtual {p2}, Lorg/yaml/snakeyaml/DumperOptions;->getLineBreak()Lorg/yaml/snakeyaml/DumperOptions$LineBreak;

    move-result-object v0

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/DumperOptions$LineBreak;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->bestLineBreak:[C

    .line 199
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->tagPrefixes:Ljava/util/Map;

    .line 202
    iput-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->preparedAnchor:Ljava/lang/String;

    .line 203
    iput-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->preparedTag:Ljava/lang/String;

    .line 206
    iput-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    .line 207
    iput-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->style:Ljava/lang/Character;

    .line 208
    iput-object p2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->options:Lorg/yaml/snakeyaml/DumperOptions;

    .line 209
    return-void
.end method

.method static synthetic access$100(Lorg/yaml/snakeyaml/emitter/Emitter;)Lorg/yaml/snakeyaml/events/Event;
    .registers 2
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;

    .line 61
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/yaml/snakeyaml/emitter/Emitter;)Ljava/lang/Boolean;
    .registers 2
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;

    .line 61
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->canonical:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/yaml/snakeyaml/emitter/Emitter;)Z
    .registers 2
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;

    .line 61
    invoke-direct {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->checkEmptyDocument()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lorg/yaml/snakeyaml/emitter/Emitter;)Lorg/yaml/snakeyaml/util/ArrayStack;
    .registers 2
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;

    .line 61
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->states:Lorg/yaml/snakeyaml/util/ArrayStack;

    return-object v0
.end method

.method static synthetic access$1600(Lorg/yaml/snakeyaml/emitter/Emitter;ZZZ)V
    .registers 4
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lorg/yaml/snakeyaml/emitter/Emitter;->expectNode(ZZZ)V

    return-void
.end method

.method static synthetic access$1802(Lorg/yaml/snakeyaml/emitter/Emitter;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 2
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;
    .param p1, "x1"    # Ljava/lang/Integer;

    .line 61
    iput-object p1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indent:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$1900(Lorg/yaml/snakeyaml/emitter/Emitter;)Lorg/yaml/snakeyaml/util/ArrayStack;
    .registers 2
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;

    .line 61
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indents:Lorg/yaml/snakeyaml/util/ArrayStack;

    return-object v0
.end method

.method static synthetic access$2010(Lorg/yaml/snakeyaml/emitter/Emitter;)I
    .registers 3
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;

    .line 61
    iget v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->flowLevel:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->flowLevel:I

    return v0
.end method

.method static synthetic access$202(Lorg/yaml/snakeyaml/emitter/Emitter;Lorg/yaml/snakeyaml/emitter/EmitterState;)Lorg/yaml/snakeyaml/emitter/EmitterState;
    .registers 2
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;
    .param p1, "x1"    # Lorg/yaml/snakeyaml/emitter/EmitterState;

    .line 61
    iput-object p1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->state:Lorg/yaml/snakeyaml/emitter/EmitterState;

    return-object p1
.end method

.method static synthetic access$2100(Lorg/yaml/snakeyaml/emitter/Emitter;)I
    .registers 2
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;

    .line 61
    iget v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    return v0
.end method

.method static synthetic access$2200(Lorg/yaml/snakeyaml/emitter/Emitter;)I
    .registers 2
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;

    .line 61
    iget v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->bestWidth:I

    return v0
.end method

.method static synthetic access$2300(Lorg/yaml/snakeyaml/emitter/Emitter;)Ljava/lang/Boolean;
    .registers 2
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;

    .line 61
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->prettyFlow:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$2600(Lorg/yaml/snakeyaml/emitter/Emitter;)Z
    .registers 2
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;

    .line 61
    invoke-direct {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->checkSimpleKey()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lorg/yaml/snakeyaml/emitter/Emitter;)Z
    .registers 2
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;

    .line 61
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->openEnded:Z

    return v0
.end method

.method static synthetic access$500(Lorg/yaml/snakeyaml/emitter/Emitter;[Ljava/lang/Integer;)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;
    .param p1, "x1"    # [Ljava/lang/Integer;

    .line 61
    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/emitter/Emitter;->prepareVersion([Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lorg/yaml/snakeyaml/emitter/Emitter;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;

    .line 61
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->tagPrefixes:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$602(Lorg/yaml/snakeyaml/emitter/Emitter;Ljava/util/Map;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;
    .param p1, "x1"    # Ljava/util/Map;

    .line 61
    iput-object p1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->tagPrefixes:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$700()Ljava/util/Map;
    .registers 1

    .line 61
    sget-object v0, Lorg/yaml/snakeyaml/emitter/Emitter;->DEFAULT_TAG_PREFIXES:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$800(Lorg/yaml/snakeyaml/emitter/Emitter;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;
    .param p1, "x1"    # Ljava/lang/String;

    .line 61
    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/emitter/Emitter;->prepareTagHandle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lorg/yaml/snakeyaml/emitter/Emitter;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;
    .param p1, "x1"    # Ljava/lang/String;

    .line 61
    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/emitter/Emitter;->prepareTagPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private analyzeScalar(Ljava/lang/String;)Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;
    .registers 31
    .param p1, "scalar"    # Ljava/lang/String;

    .line 905
    move-object/from16 v8, p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_17

    .line 906
    new-instance v9, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, v9

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v7}, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;-><init>(Ljava/lang/String;ZZZZZZ)V

    return-object v9

    .line 909
    :cond_17
    const/4 v0, 0x0

    .line 910
    .local v0, "blockIndicators":Z
    const/4 v1, 0x0

    .line 911
    .local v1, "flowIndicators":Z
    const/4 v2, 0x0

    .line 912
    .local v2, "lineBreaks":Z
    const/4 v3, 0x0

    .line 915
    .local v3, "specialCharacters":Z
    const/4 v4, 0x0

    .line 916
    .local v4, "leadingSpace":Z
    const/4 v5, 0x0

    .line 917
    .local v5, "leadingBreak":Z
    const/4 v6, 0x0

    .line 918
    .local v6, "trailingSpace":Z
    const/4 v7, 0x0

    .line 919
    .local v7, "trailingBreak":Z
    const/4 v9, 0x0

    .line 920
    .local v9, "breakSpace":Z
    const/4 v10, 0x0

    .line 923
    .local v10, "spaceBreak":Z
    const-string v11, "---"

    invoke-virtual {v8, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_31

    const-string v11, "..."

    invoke-virtual {v8, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_33

    .line 924
    :cond_31
    const/4 v0, 0x1

    .line 925
    const/4 v1, 0x1

    .line 928
    :cond_33
    const/4 v11, 0x1

    .line 929
    .local v11, "preceededByWhitespace":Z
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eq v12, v14, :cond_4b

    sget-object v12, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_T_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v8, v14}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-virtual {v12, v15}, Lorg/yaml/snakeyaml/scanner/Constant;->has(C)Z

    move-result v12

    if-eqz v12, :cond_49

    goto :goto_4b

    :cond_49
    const/4 v12, 0x0

    goto :goto_4c

    :cond_4b
    :goto_4b
    const/4 v12, 0x1

    .line 932
    .local v12, "followedByWhitespace":Z
    :goto_4c
    const/4 v15, 0x0

    .line 935
    .local v15, "previousSpace":Z
    const/16 v16, 0x0

    .line 937
    .local v16, "previousBreak":Z
    move/from16 v22, v2

    move/from16 v21, v3

    move/from16 v17, v7

    move/from16 v18, v9

    move/from16 v20, v10

    move/from16 v19, v11

    move/from16 v23, v15

    move/from16 v24, v16

    move v11, v1

    move v9, v4

    move v10, v5

    move v15, v6

    move/from16 v16, v12

    move v12, v0

    const/4 v0, 0x0

    .end local v1    # "flowIndicators":Z
    .end local v2    # "lineBreaks":Z
    .end local v3    # "specialCharacters":Z
    .end local v4    # "leadingSpace":Z
    .end local v5    # "leadingBreak":Z
    .end local v6    # "trailingSpace":Z
    .end local v7    # "trailingBreak":Z
    .local v0, "index":I
    .local v9, "leadingSpace":Z
    .local v10, "leadingBreak":Z
    .local v11, "flowIndicators":Z
    .local v12, "blockIndicators":Z
    .local v15, "trailingSpace":Z
    .local v16, "followedByWhitespace":Z
    .local v17, "trailingBreak":Z
    .local v18, "breakSpace":Z
    .local v19, "preceededByWhitespace":Z
    .local v20, "spaceBreak":Z
    .local v21, "specialCharacters":Z
    .local v22, "lineBreaks":Z
    .local v23, "previousSpace":Z
    .local v24, "previousBreak":Z
    :goto_67
    move v7, v0

    .line 939
    .end local v0    # "index":I
    .local v7, "index":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v7, v0, :cond_152

    .line 940
    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 942
    .local v0, "ch":C
    const/16 v1, 0x3a

    const/4 v2, -0x1

    if-nez v7, :cond_94

    .line 944
    const-string v3, "#,[]{}&*!|>\'\"%@`"

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v2, :cond_81

    .line 945
    const/4 v11, 0x1

    .line 946
    const/4 v12, 0x1

    .line 948
    :cond_81
    const/16 v2, 0x3f

    if-eq v0, v2, :cond_87

    if-ne v0, v1, :cond_8b

    .line 949
    :cond_87
    const/4 v11, 0x1

    .line 950
    if-eqz v16, :cond_8b

    .line 951
    const/4 v12, 0x1

    .line 954
    :cond_8b
    const/16 v1, 0x2d

    if-ne v0, v1, :cond_ad

    if-eqz v16, :cond_ad

    .line 955
    const/4 v1, 0x1

    .line 956
    .end local v11    # "flowIndicators":Z
    .restart local v1    # "flowIndicators":Z
    const/4 v2, 0x1

    goto :goto_ab

    .line 960
    .end local v1    # "flowIndicators":Z
    .restart local v11    # "flowIndicators":Z
    :cond_94
    const-string v3, ",?[]{}"

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v2, :cond_9d

    .line 961
    const/4 v11, 0x1

    .line 963
    :cond_9d
    if-ne v0, v1, :cond_a3

    .line 964
    const/4 v11, 0x1

    .line 965
    if-eqz v16, :cond_a3

    .line 966
    const/4 v12, 0x1

    .line 969
    :cond_a3
    const/16 v1, 0x23

    if-ne v0, v1, :cond_ad

    if-eqz v19, :cond_ad

    .line 970
    const/4 v1, 0x1

    .line 971
    .end local v11    # "flowIndicators":Z
    .restart local v1    # "flowIndicators":Z
    const/4 v2, 0x1

    .line 975
    .end local v1    # "flowIndicators":Z
    .restart local v11    # "flowIndicators":Z
    :goto_ab
    move v11, v1

    move v12, v2

    :cond_ad
    sget-object v1, Lorg/yaml/snakeyaml/scanner/Constant;->LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v1, v0}, Lorg/yaml/snakeyaml/scanner/Constant;->has(C)Z

    move-result v1

    .line 976
    .local v1, "isLineBreak":Z
    if-eqz v1, :cond_b7

    .line 977
    const/16 v22, 0x1

    .line 979
    :cond_b7
    const/16 v2, 0xa

    const/16 v3, 0x20

    if-eq v0, v2, :cond_ed

    if-gt v3, v0, :cond_c3

    const/16 v2, 0x7e

    if-le v0, v2, :cond_ed

    .line 980
    :cond_c3
    const/16 v2, 0x85

    if-eq v0, v2, :cond_da

    const/16 v2, 0xa0

    if-gt v2, v0, :cond_d0

    const v2, 0xd7ff

    if-le v0, v2, :cond_da

    :cond_d0
    const v2, 0xe000

    if-gt v2, v0, :cond_e7

    const v2, 0xfffd

    if-gt v0, v2, :cond_e7

    :cond_da
    const v2, 0xfeff

    if-eq v0, v2, :cond_e7

    .line 983
    move-object/from16 v6, p0

    iget-boolean v2, v6, Lorg/yaml/snakeyaml/emitter/Emitter;->allowUnicode:Z

    if-nez v2, :cond_ef

    .line 984
    const/4 v2, 0x1

    goto :goto_ea

    .line 987
    :cond_e7
    move-object/from16 v6, p0

    const/4 v2, 0x1

    .line 991
    :goto_ea
    move/from16 v21, v2

    goto :goto_ef

    :cond_ed
    move-object/from16 v6, p0

    :cond_ef
    :goto_ef
    if-ne v0, v3, :cond_103

    .line 992
    if-nez v7, :cond_f4

    .line 993
    const/4 v9, 0x1

    .line 995
    :cond_f4
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v14

    if-ne v7, v2, :cond_fc

    .line 996
    const/4 v15, 0x1

    .line 998
    :cond_fc
    if-eqz v24, :cond_100

    .line 999
    const/16 v18, 0x1

    .line 1001
    :cond_100
    const/4 v2, 0x1

    .line 1002
    .end local v23    # "previousSpace":Z
    .local v2, "previousSpace":Z
    const/4 v3, 0x0

    goto :goto_11a

    .line 1003
    .end local v2    # "previousSpace":Z
    .restart local v23    # "previousSpace":Z
    :cond_103
    if-eqz v1, :cond_118

    .line 1004
    if-nez v7, :cond_108

    .line 1005
    const/4 v10, 0x1

    .line 1007
    :cond_108
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v14

    if-ne v7, v2, :cond_111

    .line 1008
    const/16 v17, 0x1

    .line 1010
    :cond_111
    if-eqz v23, :cond_115

    .line 1011
    const/16 v20, 0x1

    .line 1013
    :cond_115
    const/4 v2, 0x0

    .line 1014
    .end local v23    # "previousSpace":Z
    .restart local v2    # "previousSpace":Z
    const/4 v3, 0x1

    goto :goto_11a

    .line 1016
    .end local v2    # "previousSpace":Z
    .restart local v23    # "previousSpace":Z
    :cond_118
    const/4 v2, 0x0

    .line 1017
    .end local v23    # "previousSpace":Z
    .restart local v2    # "previousSpace":Z
    const/4 v3, 0x0

    .line 1021
    .end local v2    # "previousSpace":Z
    .restart local v23    # "previousSpace":Z
    :goto_11a
    move/from16 v23, v2

    move/from16 v24, v3

    add-int/lit8 v2, v7, 0x1

    .line 1022
    .end local v7    # "index":I
    .local v2, "index":I
    sget-object v3, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_T:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v3, v0}, Lorg/yaml/snakeyaml/scanner/Constant;->has(C)Z

    move-result v3

    if-nez v3, :cond_12d

    if-eqz v1, :cond_12b

    goto :goto_12d

    :cond_12b
    const/4 v3, 0x0

    goto :goto_12e

    :cond_12d
    :goto_12d
    const/4 v3, 0x1

    :goto_12e
    move/from16 v19, v3

    .line 1023
    add-int/lit8 v3, v2, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_14b

    sget-object v3, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_T:Lorg/yaml/snakeyaml/scanner/Constant;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v8, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lorg/yaml/snakeyaml/scanner/Constant;->has(C)Z

    move-result v3

    if-nez v3, :cond_14b

    if-eqz v1, :cond_149

    goto :goto_14b

    :cond_149
    const/4 v3, 0x0

    goto :goto_14c

    :cond_14b
    :goto_14b
    const/4 v3, 0x1

    :goto_14c
    move/from16 v16, v3

    .line 1025
    .end local v0    # "ch":C
    .end local v1    # "isLineBreak":Z
    nop

    .line 937
    move v0, v2

    goto/16 :goto_67

    .line 1027
    .end local v2    # "index":I
    .restart local v7    # "index":I
    :cond_152
    move-object/from16 v6, p0

    const/4 v0, 0x1

    .line 1028
    .local v0, "allowFlowPlain":Z
    const/4 v1, 0x1

    .line 1029
    .local v1, "allowBlockPlain":Z
    const/4 v2, 0x1

    .line 1030
    .local v2, "allowSingleQuoted":Z
    const/4 v3, 0x1

    .line 1032
    .local v3, "allowBlock":Z
    if-nez v9, :cond_160

    if-nez v10, :cond_160

    if-nez v15, :cond_160

    if-eqz v17, :cond_162

    .line 1033
    :cond_160
    move v1, v13

    move v0, v13

    .line 1036
    :cond_162
    if-eqz v15, :cond_165

    .line 1037
    const/4 v3, 0x0

    .line 1041
    :cond_165
    if-eqz v18, :cond_16a

    .line 1042
    move v2, v13

    move v1, v13

    move v0, v13

    .line 1046
    :cond_16a
    if-nez v20, :cond_172

    if-eqz v21, :cond_16f

    goto :goto_172

    .line 1051
    :cond_16f
    move v13, v2

    .end local v2    # "allowSingleQuoted":Z
    .end local v3    # "allowBlock":Z
    .local v13, "allowSingleQuoted":Z
    .local v14, "allowBlock":Z
    :goto_170
    move v14, v3

    goto :goto_177

    .line 1047
    .end local v13    # "allowSingleQuoted":Z
    .end local v14    # "allowBlock":Z
    .restart local v2    # "allowSingleQuoted":Z
    .restart local v3    # "allowBlock":Z
    :cond_172
    :goto_172
    move v3, v13

    move v2, v13

    move v1, v13

    move v0, v13

    goto :goto_170

    .line 1051
    .end local v2    # "allowSingleQuoted":Z
    .end local v3    # "allowBlock":Z
    .restart local v13    # "allowSingleQuoted":Z
    .restart local v14    # "allowBlock":Z
    :goto_177
    if-eqz v22, :cond_17a

    .line 1052
    const/4 v0, 0x0

    .line 1055
    :cond_17a
    if-eqz v11, :cond_17d

    .line 1056
    const/4 v0, 0x0

    .line 1059
    .end local v0    # "allowFlowPlain":Z
    .local v25, "allowFlowPlain":Z
    :cond_17d
    move/from16 v25, v0

    if-eqz v12, :cond_185

    .line 1060
    const/4 v0, 0x0

    .line 1063
    move/from16 v26, v0

    goto :goto_187

    :cond_185
    move/from16 v26, v1

    .end local v1    # "allowBlockPlain":Z
    .local v26, "allowBlockPlain":Z
    :goto_187
    new-instance v27, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    const/4 v2, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    move/from16 v3, v22

    move/from16 v4, v25

    move/from16 v5, v26

    move v6, v13

    move/from16 v28, v7

    .end local v7    # "index":I
    .local v28, "index":I
    move v7, v14

    invoke-direct/range {v0 .. v7}, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;-><init>(Ljava/lang/String;ZZZZZZ)V

    return-object v27
.end method

.method private checkEmptyDocument()Z
    .registers 5

    .line 662
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    instance-of v0, v0, Lorg/yaml/snakeyaml/events/DocumentStartEvent;

    const/4 v1, 0x0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->events:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_3f

    .line 665
    :cond_10
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->events:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/events/Event;

    .line 666
    .local v0, "event":Lorg/yaml/snakeyaml/events/Event;
    instance-of v2, v0, Lorg/yaml/snakeyaml/events/ScalarEvent;

    if-eqz v2, :cond_3e

    .line 667
    move-object v2, v0

    check-cast v2, Lorg/yaml/snakeyaml/events/ScalarEvent;

    .line 668
    .local v2, "e":Lorg/yaml/snakeyaml/events/ScalarEvent;
    invoke-virtual {v2}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getAnchor()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3d

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getTag()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3d

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getImplicit()Lorg/yaml/snakeyaml/events/ImplicitTuple;

    move-result-object v3

    if-eqz v3, :cond_3d

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3d

    const/4 v1, 0x1

    nop

    :cond_3d
    return v1

    .line 671
    .end local v2    # "e":Lorg/yaml/snakeyaml/events/ScalarEvent;
    :cond_3e
    return v1

    .line 663
    .end local v0    # "event":Lorg/yaml/snakeyaml/events/Event;
    :cond_3f
    :goto_3f
    return v1
.end method

.method private checkEmptyMapping()Z
    .registers 2

    .line 658
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    instance-of v0, v0, Lorg/yaml/snakeyaml/events/MappingStartEvent;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->events:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->events:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/yaml/snakeyaml/events/MappingEndEvent;

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method private checkEmptySequence()Z
    .registers 2

    .line 654
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    instance-of v0, v0, Lorg/yaml/snakeyaml/events/SequenceStartEvent;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->events:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->events:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/yaml/snakeyaml/events/SequenceEndEvent;

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method private checkSimpleKey()Z
    .registers 4

    .line 675
    const/4 v0, 0x0

    .line 676
    .local v0, "length":I
    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    instance-of v1, v1, Lorg/yaml/snakeyaml/events/NodeEvent;

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    check-cast v1, Lorg/yaml/snakeyaml/events/NodeEvent;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/events/NodeEvent;->getAnchor()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 677
    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->preparedAnchor:Ljava/lang/String;

    if-nez v1, :cond_23

    .line 678
    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    check-cast v1, Lorg/yaml/snakeyaml/events/NodeEvent;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/events/NodeEvent;->getAnchor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->prepareAnchor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->preparedAnchor:Ljava/lang/String;

    .line 680
    :cond_23
    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->preparedAnchor:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 682
    :cond_2a
    const/4 v1, 0x0

    .line 683
    .local v1, "tag":Ljava/lang/String;
    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    instance-of v2, v2, Lorg/yaml/snakeyaml/events/ScalarEvent;

    if-eqz v2, :cond_3a

    .line 684
    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    check-cast v2, Lorg/yaml/snakeyaml/events/ScalarEvent;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getTag()Ljava/lang/String;

    move-result-object v1

    goto :goto_48

    .line 685
    :cond_3a
    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    instance-of v2, v2, Lorg/yaml/snakeyaml/events/CollectionStartEvent;

    if-eqz v2, :cond_48

    .line 686
    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    check-cast v2, Lorg/yaml/snakeyaml/events/CollectionStartEvent;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/events/CollectionStartEvent;->getTag()Ljava/lang/String;

    move-result-object v1

    .line 688
    :cond_48
    :goto_48
    if-eqz v1, :cond_5b

    .line 689
    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->preparedTag:Ljava/lang/String;

    if-nez v2, :cond_54

    .line 690
    invoke-direct {p0, v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->prepareTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->preparedTag:Ljava/lang/String;

    .line 692
    :cond_54
    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->preparedTag:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    .line 694
    :cond_5b
    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    instance-of v2, v2, Lorg/yaml/snakeyaml/events/ScalarEvent;

    if-eqz v2, :cond_7c

    .line 695
    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    if-nez v2, :cond_73

    .line 696
    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    check-cast v2, Lorg/yaml/snakeyaml/events/ScalarEvent;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/yaml/snakeyaml/emitter/Emitter;->analyzeScalar(Ljava/lang/String;)Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    move-result-object v2

    iput-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    .line 698
    :cond_73
    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    iget-object v2, v2, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;->scalar:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    .line 700
    :cond_7c
    const/16 v2, 0x80

    if-ge v0, v2, :cond_a6

    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    instance-of v2, v2, Lorg/yaml/snakeyaml/events/AliasEvent;

    if-nez v2, :cond_a4

    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    instance-of v2, v2, Lorg/yaml/snakeyaml/events/ScalarEvent;

    if-eqz v2, :cond_98

    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    iget-boolean v2, v2, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;->empty:Z

    if-nez v2, :cond_98

    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    iget-boolean v2, v2, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;->multiline:Z

    if-eqz v2, :cond_a4

    :cond_98
    invoke-direct {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->checkEmptySequence()Z

    move-result v2

    if-nez v2, :cond_a4

    invoke-direct {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->checkEmptyMapping()Z

    move-result v2

    if-eqz v2, :cond_a6

    :cond_a4
    const/4 v2, 0x1

    goto :goto_a7

    :cond_a6
    const/4 v2, 0x0

    :goto_a7
    return v2
.end method

.method private chooseScalarStyle()Ljava/lang/Character;
    .registers 5

    .line 757
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    check-cast v0, Lorg/yaml/snakeyaml/events/ScalarEvent;

    .line 758
    .local v0, "ev":Lorg/yaml/snakeyaml/events/ScalarEvent;
    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    if-nez v1, :cond_12

    .line 759
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->analyzeScalar(Ljava/lang/String;)Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    move-result-object v1

    iput-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    .line 761
    :cond_12
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getStyle()Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x22

    if-eqz v1, :cond_24

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getStyle()Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    if-eq v1, v2, :cond_2c

    :cond_24
    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->canonical:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 762
    :cond_2c
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    return-object v1

    .line 764
    :cond_31
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getStyle()Ljava/lang/Character;

    move-result-object v1

    if-nez v1, :cond_67

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getImplicit()Lorg/yaml/snakeyaml/events/ImplicitTuple;

    move-result-object v1

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/events/ImplicitTuple;->canOmitTagInPlainScalar()Z

    move-result v1

    if-eqz v1, :cond_67

    .line 765
    iget-boolean v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->simpleKeyContext:Z

    if-eqz v1, :cond_51

    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    iget-boolean v1, v1, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;->empty:Z

    if-nez v1, :cond_67

    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    iget-boolean v1, v1, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;->multiline:Z

    if-nez v1, :cond_67

    :cond_51
    iget v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->flowLevel:I

    if-eqz v1, :cond_5b

    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    iget-boolean v1, v1, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;->allowFlowPlain:Z

    if-nez v1, :cond_65

    :cond_5b
    iget v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->flowLevel:I

    if-nez v1, :cond_67

    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    iget-boolean v1, v1, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;->allowBlockPlain:Z

    if-eqz v1, :cond_67

    .line 767
    :cond_65
    const/4 v1, 0x0

    return-object v1

    .line 770
    :cond_67
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getStyle()Ljava/lang/Character;

    move-result-object v1

    if-eqz v1, :cond_98

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getStyle()Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    const/16 v3, 0x7c

    if-eq v1, v3, :cond_85

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getStyle()Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    const/16 v3, 0x3e

    if-ne v1, v3, :cond_98

    .line 771
    :cond_85
    iget v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->flowLevel:I

    if-nez v1, :cond_98

    iget-boolean v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->simpleKeyContext:Z

    if-nez v1, :cond_98

    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    iget-boolean v1, v1, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;->allowBlock:Z

    if-eqz v1, :cond_98

    .line 772
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getStyle()Ljava/lang/Character;

    move-result-object v1

    return-object v1

    .line 775
    :cond_98
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getStyle()Ljava/lang/Character;

    move-result-object v1

    const/16 v3, 0x27

    if-eqz v1, :cond_aa

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getStyle()Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    if-ne v1, v3, :cond_bf

    .line 776
    :cond_aa
    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    iget-boolean v1, v1, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;->allowSingleQuoted:Z

    if-eqz v1, :cond_bf

    iget-boolean v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->simpleKeyContext:Z

    if-eqz v1, :cond_ba

    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    iget-boolean v1, v1, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;->multiline:Z

    if-nez v1, :cond_bf

    .line 777
    :cond_ba
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    return-object v1

    .line 780
    :cond_bf
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    return-object v1
.end method

.method private determineBlockHints(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "text"    # Ljava/lang/String;

    .line 1275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1276
    .local v0, "hints":Ljava/lang/StringBuilder;
    sget-object v1, Lorg/yaml/snakeyaml/scanner/Constant;->LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const-string v3, " "

    invoke-virtual {v1, v2, v3}, Lorg/yaml/snakeyaml/scanner/Constant;->has(CLjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1277
    iget v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->bestIndent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1279
    :cond_19
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1280
    .local v1, "ch1":C
    sget-object v3, Lorg/yaml/snakeyaml/scanner/Constant;->LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v3, v1}, Lorg/yaml/snakeyaml/scanner/Constant;->hasNo(C)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 1281
    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4e

    .line 1282
    :cond_31
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v3, v2, :cond_49

    sget-object v2, Lorg/yaml/snakeyaml/scanner/Constant;->LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lorg/yaml/snakeyaml/scanner/Constant;->has(C)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 1283
    :cond_49
    const-string v2, "+"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1285
    :cond_4e
    :goto_4e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private expectAlias()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 410
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    check-cast v0, Lorg/yaml/snakeyaml/events/NodeEvent;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/NodeEvent;->getAnchor()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 413
    const-string v0, "*"

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/emitter/Emitter;->processAnchor(Ljava/lang/String;)V

    .line 414
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->states:Lorg/yaml/snakeyaml/util/ArrayStack;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/util/ArrayStack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/emitter/EmitterState;

    iput-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->state:Lorg/yaml/snakeyaml/emitter/EmitterState;

    .line 415
    return-void

    .line 411
    :cond_1a
    new-instance v0, Lorg/yaml/snakeyaml/emitter/EmitterException;

    const-string v1, "anchor is not specified for alias"

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/emitter/EmitterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private expectBlockMapping()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 599
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lorg/yaml/snakeyaml/emitter/Emitter;->increaseIndent(ZZ)V

    .line 600
    new-instance v0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFirstBlockMappingKey;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFirstBlockMappingKey;-><init>(Lorg/yaml/snakeyaml/emitter/Emitter;Lorg/yaml/snakeyaml/emitter/Emitter$1;)V

    iput-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->state:Lorg/yaml/snakeyaml/emitter/EmitterState;

    .line 601
    return-void
.end method

.method private expectBlockSequence()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 566
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->mappingContext:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indention:Z

    if-nez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 567
    .local v0, "indentless":Z
    :goto_c
    invoke-direct {p0, v1, v0}, Lorg/yaml/snakeyaml/emitter/Emitter;->increaseIndent(ZZ)V

    .line 568
    new-instance v1, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFirstBlockSequenceItem;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFirstBlockSequenceItem;-><init>(Lorg/yaml/snakeyaml/emitter/Emitter;Lorg/yaml/snakeyaml/emitter/Emitter$1;)V

    iput-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->state:Lorg/yaml/snakeyaml/emitter/EmitterState;

    .line 569
    return-void
.end method

.method private expectFlowMapping()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 481
    const-string v0, "{"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2, v2, v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndicator(Ljava/lang/String;ZZZ)V

    .line 482
    iget v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->flowLevel:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->flowLevel:I

    .line 483
    invoke-direct {p0, v2, v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->increaseIndent(ZZ)V

    .line 484
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->prettyFlow:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 485
    invoke-virtual {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndent()V

    .line 487
    :cond_1a
    new-instance v0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFirstFlowMappingKey;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFirstFlowMappingKey;-><init>(Lorg/yaml/snakeyaml/emitter/Emitter;Lorg/yaml/snakeyaml/emitter/Emitter$1;)V

    iput-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->state:Lorg/yaml/snakeyaml/emitter/EmitterState;

    .line 488
    return-void
.end method

.method private expectFlowSequence()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 427
    const-string v0, "["

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2, v2, v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndicator(Ljava/lang/String;ZZZ)V

    .line 428
    iget v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->flowLevel:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->flowLevel:I

    .line 429
    invoke-direct {p0, v2, v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->increaseIndent(ZZ)V

    .line 430
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->prettyFlow:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 431
    invoke-virtual {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndent()V

    .line 433
    :cond_1a
    new-instance v0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFirstFlowSequenceItem;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFirstFlowSequenceItem;-><init>(Lorg/yaml/snakeyaml/emitter/Emitter;Lorg/yaml/snakeyaml/emitter/Emitter$1;)V

    iput-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->state:Lorg/yaml/snakeyaml/emitter/EmitterState;

    .line 434
    return-void
.end method

.method private expectNode(ZZZ)V
    .registers 7
    .param p1, "root"    # Z
    .param p2, "mapping"    # Z
    .param p3, "simpleKey"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 379
    iput-boolean p1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->rootContext:Z

    .line 380
    iput-boolean p2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->mappingContext:Z

    .line 381
    iput-boolean p3, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->simpleKeyContext:Z

    .line 382
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    instance-of v0, v0, Lorg/yaml/snakeyaml/events/AliasEvent;

    if-eqz v0, :cond_11

    .line 383
    invoke-direct {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->expectAlias()V

    goto/16 :goto_a0

    .line 384
    :cond_11
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    instance-of v0, v0, Lorg/yaml/snakeyaml/events/ScalarEvent;

    if-nez v0, :cond_37

    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    instance-of v0, v0, Lorg/yaml/snakeyaml/events/CollectionStartEvent;

    if-eqz v0, :cond_1e

    goto :goto_37

    .line 405
    :cond_1e
    new-instance v0, Lorg/yaml/snakeyaml/emitter/EmitterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected NodeEvent, but got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/emitter/EmitterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 385
    :cond_37
    :goto_37
    const-string v0, "&"

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/emitter/Emitter;->processAnchor(Ljava/lang/String;)V

    .line 386
    invoke-direct {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->processTag()V

    .line 387
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    instance-of v0, v0, Lorg/yaml/snakeyaml/events/ScalarEvent;

    if-eqz v0, :cond_49

    .line 388
    invoke-direct {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->expectScalar()V

    goto :goto_a0

    .line 389
    :cond_49
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    instance-of v0, v0, Lorg/yaml/snakeyaml/events/SequenceStartEvent;

    if-eqz v0, :cond_78

    .line 390
    iget v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->flowLevel:I

    if-nez v0, :cond_74

    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->canonical:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_74

    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    check-cast v0, Lorg/yaml/snakeyaml/events/SequenceStartEvent;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/SequenceStartEvent;->getFlowStyle()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_74

    invoke-direct {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->checkEmptySequence()Z

    move-result v0

    if-eqz v0, :cond_70

    goto :goto_74

    .line 394
    :cond_70
    invoke-direct {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->expectBlockSequence()V

    goto :goto_a0

    .line 392
    :cond_74
    :goto_74
    invoke-direct {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->expectFlowSequence()V

    goto :goto_a0

    .line 397
    :cond_78
    iget v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->flowLevel:I

    if-nez v0, :cond_9d

    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->canonical:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_9d

    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    check-cast v0, Lorg/yaml/snakeyaml/events/MappingStartEvent;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/MappingStartEvent;->getFlowStyle()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_9d

    invoke-direct {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->checkEmptyMapping()Z

    move-result v0

    if-eqz v0, :cond_99

    goto :goto_9d

    .line 401
    :cond_99
    invoke-direct {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->expectBlockMapping()V

    goto :goto_a0

    .line 399
    :cond_9d
    :goto_9d
    invoke-direct {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->expectFlowMapping()V

    .line 407
    :goto_a0
    return-void
.end method

.method private expectScalar()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 418
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->increaseIndent(ZZ)V

    .line 419
    invoke-direct {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->processScalar()V

    .line 420
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indents:Lorg/yaml/snakeyaml/util/ArrayStack;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/util/ArrayStack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indent:Ljava/lang/Integer;

    .line 421
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->states:Lorg/yaml/snakeyaml/util/ArrayStack;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/util/ArrayStack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/emitter/EmitterState;

    iput-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->state:Lorg/yaml/snakeyaml/emitter/EmitterState;

    .line 422
    return-void
.end method

.method private increaseIndent(ZZ)V
    .registers 5
    .param p1, "flow"    # Z
    .param p2, "indentless"    # Z

    .line 259
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indents:Lorg/yaml/snakeyaml/util/ArrayStack;

    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indent:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lorg/yaml/snakeyaml/util/ArrayStack;->push(Ljava/lang/Object;)V

    .line 260
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indent:Ljava/lang/Integer;

    if-nez v0, :cond_1e

    .line 261
    if-eqz p1, :cond_16

    .line 262
    iget v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->bestIndent:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indent:Ljava/lang/Integer;

    goto :goto_2f

    .line 264
    :cond_16
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indent:Ljava/lang/Integer;

    goto :goto_2f

    .line 266
    :cond_1e
    if-nez p2, :cond_2f

    .line 267
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indent:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->bestIndent:I

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indent:Ljava/lang/Integer;

    .line 269
    :cond_2f
    :goto_2f
    return-void
.end method

.method private needEvents(I)Z
    .registers 7
    .param p1, "count"    # I

    .line 239
    const/4 v0, 0x0

    .line 240
    .local v0, "level":I
    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->events:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 241
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/yaml/snakeyaml/events/Event;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 242
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_38

    .line 243
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/yaml/snakeyaml/events/Event;

    .line 244
    .local v2, "event":Lorg/yaml/snakeyaml/events/Event;
    instance-of v4, v2, Lorg/yaml/snakeyaml/events/DocumentStartEvent;

    if-nez v4, :cond_32

    instance-of v4, v2, Lorg/yaml/snakeyaml/events/CollectionStartEvent;

    if-eqz v4, :cond_20

    goto :goto_32

    .line 246
    :cond_20
    instance-of v4, v2, Lorg/yaml/snakeyaml/events/DocumentEndEvent;

    if-nez v4, :cond_2f

    instance-of v4, v2, Lorg/yaml/snakeyaml/events/CollectionEndEvent;

    if-eqz v4, :cond_29

    goto :goto_2f

    .line 248
    :cond_29
    instance-of v4, v2, Lorg/yaml/snakeyaml/events/StreamEndEvent;

    if-eqz v4, :cond_34

    .line 249
    const/4 v0, -0x1

    goto :goto_34

    .line 247
    :cond_2f
    :goto_2f
    add-int/lit8 v0, v0, -0x1

    goto :goto_34

    .line 245
    :cond_32
    :goto_32
    add-int/lit8 v0, v0, 0x1

    .line 251
    :cond_34
    :goto_34
    if-gez v0, :cond_37

    .line 252
    return v3

    .line 254
    .end local v2    # "event":Lorg/yaml/snakeyaml/events/Event;
    :cond_37
    goto :goto_a

    .line 255
    :cond_38
    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->events:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    add-int/lit8 v4, p1, 0x1

    if-ge v2, v4, :cond_44

    const/4 v3, 0x1

    nop

    :cond_44
    return v3
.end method

.method private needMoreEvents()Z
    .registers 4

    .line 223
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->events:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 224
    return v1

    .line 226
    :cond_a
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->events:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/events/Event;

    .line 227
    .local v0, "event":Lorg/yaml/snakeyaml/events/Event;
    instance-of v2, v0, Lorg/yaml/snakeyaml/events/DocumentStartEvent;

    if-eqz v2, :cond_1b

    .line 228
    invoke-direct {p0, v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->needEvents(I)Z

    move-result v1

    return v1

    .line 229
    :cond_1b
    instance-of v1, v0, Lorg/yaml/snakeyaml/events/SequenceStartEvent;

    if-eqz v1, :cond_25

    .line 230
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->needEvents(I)Z

    move-result v1

    return v1

    .line 231
    :cond_25
    instance-of v1, v0, Lorg/yaml/snakeyaml/events/MappingStartEvent;

    if-eqz v1, :cond_2f

    .line 232
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->needEvents(I)Z

    move-result v1

    return v1

    .line 234
    :cond_2f
    const/4 v1, 0x0

    return v1
.end method

.method static prepareAnchor(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "anchor"    # Ljava/lang/String;

    .line 894
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2a

    .line 897
    sget-object v0, Lorg/yaml/snakeyaml/emitter/Emitter;->ANCHOR_FORMAT:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 900
    return-object p0

    .line 898
    :cond_13
    new-instance v0, Lorg/yaml/snakeyaml/emitter/EmitterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid character in the anchor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/emitter/EmitterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 895
    :cond_2a
    new-instance v0, Lorg/yaml/snakeyaml/emitter/EmitterException;

    const-string v1, "anchor must not be empty"

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/emitter/EmitterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private prepareTag(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "tag"    # Ljava/lang/String;

    .line 863
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_8b

    .line 866
    const-string v0, "!"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 867
    return-object p1

    .line 869
    :cond_f
    const/4 v0, 0x0

    .line 870
    .local v0, "handle":Ljava/lang/String;
    move-object v1, p1

    .line 872
    .local v1, "suffix":Ljava/lang/String;
    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->tagPrefixes:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1b
    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 873
    .local v3, "prefix":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    const-string v4, "!"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3f

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_1b

    .line 874
    :cond_3f
    move-object v0, v3

    goto :goto_1b

    .line 877
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "prefix":Ljava/lang/String;
    :cond_41
    if-eqz v0, :cond_54

    .line 878
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 879
    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->tagPrefixes:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    .line 882
    :cond_54
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 883
    .local v2, "end":I
    if-lez v2, :cond_60

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_62

    :cond_60
    const-string v3, ""

    .line 885
    .local v3, "suffixText":Ljava/lang/String;
    :goto_62
    if-eqz v0, :cond_74

    .line 886
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 888
    :cond_74
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "!<"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 864
    .end local v0    # "handle":Ljava/lang/String;
    .end local v1    # "suffix":Ljava/lang/String;
    .end local v2    # "end":I
    .end local v3    # "suffixText":Ljava/lang/String;
    :cond_8b
    new-instance v0, Lorg/yaml/snakeyaml/emitter/EmitterException;

    const-string v1, "tag must not be empty"

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/emitter/EmitterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private prepareTagHandle(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "handle"    # Ljava/lang/String;

    .line 833
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_5f

    .line 835
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x21

    if-ne v0, v1, :cond_48

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_48

    .line 837
    const-string v0, "!"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    sget-object v0, Lorg/yaml/snakeyaml/emitter/Emitter;->HANDLE_FORMAT:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_30

    goto :goto_47

    .line 838
    :cond_30
    new-instance v0, Lorg/yaml/snakeyaml/emitter/EmitterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid character in the tag handle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/emitter/EmitterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 840
    :cond_47
    :goto_47
    return-object p1

    .line 836
    :cond_48
    new-instance v0, Lorg/yaml/snakeyaml/emitter/EmitterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tag handle must start and end with \'!\': "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/emitter/EmitterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 834
    :cond_5f
    new-instance v0, Lorg/yaml/snakeyaml/emitter/EmitterException;

    const-string v1, "tag handle must not be empty"

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/emitter/EmitterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private prepareTagPrefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "prefix"    # Ljava/lang/String;

    .line 844
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2e

    .line 847
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 848
    .local v0, "chunks":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 849
    .local v1, "start":I
    const/4 v2, 0x0

    .line 850
    .local v2, "end":I
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x21

    if-ne v3, v4, :cond_17

    .line 851
    const/4 v2, 0x1

    .line 853
    :cond_17
    :goto_17
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_20

    .line 854
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 856
    :cond_20
    if-ge v1, v2, :cond_29

    .line 857
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 859
    :cond_29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 845
    .end local v0    # "chunks":Ljava/lang/StringBuilder;
    .end local v1    # "start":I
    .end local v2    # "end":I
    :cond_2e
    new-instance v0, Lorg/yaml/snakeyaml/emitter/EmitterException;

    const-string v1, "tag prefix must not be empty"

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/emitter/EmitterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private prepareVersion([Ljava/lang/Integer;)Ljava/lang/String;
    .registers 9
    .param p1, "version"    # [Ljava/lang/Integer;

    .line 822
    const/4 v0, 0x0

    aget-object v1, p1, v0

    .line 823
    .local v1, "major":Ljava/lang/Integer;
    const/4 v2, 0x1

    aget-object v3, p1, v2

    .line 824
    .local v3, "minor":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v2, :cond_29

    .line 827
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 825
    :cond_29
    new-instance v4, Lorg/yaml/snakeyaml/emitter/EmitterException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unsupported YAML version: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, p1, v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, p1, v2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lorg/yaml/snakeyaml/emitter/EmitterException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private processAnchor(Ljava/lang/String;)V
    .registers 7
    .param p1, "indicator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 708
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    check-cast v0, Lorg/yaml/snakeyaml/events/NodeEvent;

    .line 709
    .local v0, "ev":Lorg/yaml/snakeyaml/events/NodeEvent;
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/NodeEvent;->getAnchor()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    .line 710
    iput-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->preparedAnchor:Ljava/lang/String;

    .line 711
    return-void

    .line 713
    :cond_e
    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->preparedAnchor:Ljava/lang/String;

    if-nez v1, :cond_1c

    .line 714
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/NodeEvent;->getAnchor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->prepareAnchor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->preparedAnchor:Ljava/lang/String;

    .line 716
    :cond_1c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->preparedAnchor:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v3, v4, v4}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndicator(Ljava/lang/String;ZZZ)V

    .line 717
    iput-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->preparedAnchor:Ljava/lang/String;

    .line 718
    return-void
.end method

.method private processScalar()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 785
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    check-cast v0, Lorg/yaml/snakeyaml/events/ScalarEvent;

    .line 786
    .local v0, "ev":Lorg/yaml/snakeyaml/events/ScalarEvent;
    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    if-nez v1, :cond_12

    .line 787
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->analyzeScalar(Ljava/lang/String;)Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    move-result-object v1

    iput-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    .line 789
    :cond_12
    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->style:Ljava/lang/Character;

    if-nez v1, :cond_1c

    .line 790
    invoke-direct {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->chooseScalarStyle()Ljava/lang/Character;

    move-result-object v1

    iput-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->style:Ljava/lang/Character;

    .line 793
    :cond_1c
    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->options:Lorg/yaml/snakeyaml/DumperOptions;

    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    iget-object v3, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->style:Ljava/lang/Character;

    invoke-static {v3}, Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;->createStyle(Ljava/lang/Character;)Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/yaml/snakeyaml/DumperOptions;->calculateScalarStyle(Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;)Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    move-result-object v1

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;->getChar()Ljava/lang/Character;

    move-result-object v1

    iput-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->style:Ljava/lang/Character;

    .line 794
    iget-boolean v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->simpleKeyContext:Z

    xor-int/lit8 v1, v1, 0x1

    .line 795
    .local v1, "split":Z
    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->style:Ljava/lang/Character;

    if-nez v2, :cond_40

    .line 796
    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    iget-object v2, v2, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;->scalar:Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->writePlain(Ljava/lang/String;Z)V

    goto :goto_8f

    .line 798
    :cond_40
    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->style:Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    const/16 v3, 0x22

    if-eq v2, v3, :cond_87

    const/16 v3, 0x27

    if-eq v2, v3, :cond_7f

    const/16 v3, 0x3e

    if-eq v2, v3, :cond_77

    const/16 v3, 0x7c

    if-ne v2, v3, :cond_5e

    .line 809
    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    iget-object v2, v2, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;->scalar:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeLiteral(Ljava/lang/String;)V

    .line 810
    goto :goto_8f

    .line 812
    :cond_5e
    new-instance v2, Lorg/yaml/snakeyaml/error/YAMLException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected style: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->style:Ljava/lang/Character;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 806
    :cond_77
    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    iget-object v2, v2, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;->scalar:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeFolded(Ljava/lang/String;)V

    .line 807
    goto :goto_8f

    .line 803
    :cond_7f
    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    iget-object v2, v2, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;->scalar:Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeSingleQuoted(Ljava/lang/String;Z)V

    .line 804
    goto :goto_8f

    .line 800
    :cond_87
    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    iget-object v2, v2, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;->scalar:Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeDoubleQuoted(Ljava/lang/String;Z)V

    .line 801
    nop

    .line 815
    :goto_8f
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    .line 816
    iput-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->style:Ljava/lang/Character;

    .line 817
    return-void
.end method

.method private processTag()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 721
    const/4 v0, 0x0

    .line 722
    .local v0, "tag":Ljava/lang/String;
    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    instance-of v1, v1, Lorg/yaml/snakeyaml/events/ScalarEvent;

    const/4 v2, 0x0

    if-eqz v1, :cond_54

    .line 723
    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    check-cast v1, Lorg/yaml/snakeyaml/events/ScalarEvent;

    .line 724
    .local v1, "ev":Lorg/yaml/snakeyaml/events/ScalarEvent;
    invoke-virtual {v1}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 725
    iget-object v3, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->style:Ljava/lang/Character;

    if-nez v3, :cond_1a

    .line 726
    invoke-direct {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->chooseScalarStyle()Ljava/lang/Character;

    move-result-object v3

    iput-object v3, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->style:Ljava/lang/Character;

    .line 728
    :cond_1a
    iget-object v3, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->canonical:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_24

    if-nez v0, :cond_43

    :cond_24
    iget-object v3, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->style:Ljava/lang/Character;

    if-nez v3, :cond_32

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getImplicit()Lorg/yaml/snakeyaml/events/ImplicitTuple;

    move-result-object v3

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/events/ImplicitTuple;->canOmitTagInPlainScalar()Z

    move-result v3

    if-nez v3, :cond_40

    :cond_32
    iget-object v3, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->style:Ljava/lang/Character;

    if-eqz v3, :cond_43

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getImplicit()Lorg/yaml/snakeyaml/events/ImplicitTuple;

    move-result-object v3

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/events/ImplicitTuple;->canOmitTagInNonPlainScalar()Z

    move-result v3

    if-eqz v3, :cond_43

    .line 731
    :cond_40
    iput-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->preparedTag:Ljava/lang/String;

    .line 732
    return-void

    .line 734
    :cond_43
    invoke-virtual {v1}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getImplicit()Lorg/yaml/snakeyaml/events/ImplicitTuple;

    move-result-object v3

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/events/ImplicitTuple;->canOmitTagInPlainScalar()Z

    move-result v3

    if-eqz v3, :cond_53

    if-nez v0, :cond_53

    .line 735
    const-string v0, "!"

    .line 736
    iput-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->preparedTag:Ljava/lang/String;

    .line 738
    .end local v1    # "ev":Lorg/yaml/snakeyaml/events/ScalarEvent;
    :cond_53
    goto :goto_6f

    .line 739
    :cond_54
    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    check-cast v1, Lorg/yaml/snakeyaml/events/CollectionStartEvent;

    .line 740
    .local v1, "ev":Lorg/yaml/snakeyaml/events/CollectionStartEvent;
    invoke-virtual {v1}, Lorg/yaml/snakeyaml/events/CollectionStartEvent;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 741
    iget-object v3, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->canonical:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_66

    if-nez v0, :cond_6f

    :cond_66
    invoke-virtual {v1}, Lorg/yaml/snakeyaml/events/CollectionStartEvent;->getImplicit()Z

    move-result v3

    if-eqz v3, :cond_6f

    .line 742
    iput-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->preparedTag:Ljava/lang/String;

    .line 743
    return-void

    .line 746
    .end local v1    # "ev":Lorg/yaml/snakeyaml/events/CollectionStartEvent;
    :cond_6f
    :goto_6f
    if-eqz v0, :cond_85

    .line 749
    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->preparedTag:Ljava/lang/String;

    if-nez v1, :cond_7b

    .line 750
    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/emitter/Emitter;->prepareTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->preparedTag:Ljava/lang/String;

    .line 752
    :cond_7b
    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->preparedTag:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v3, v4, v4}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndicator(Ljava/lang/String;ZZZ)V

    .line 753
    iput-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->preparedTag:Ljava/lang/String;

    .line 754
    return-void

    .line 747
    :cond_85
    new-instance v1, Lorg/yaml/snakeyaml/emitter/EmitterException;

    const-string v2, "tag is not specified"

    invoke-direct {v1, v2}, Lorg/yaml/snakeyaml/emitter/EmitterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private writeDoubleQuoted(Ljava/lang/String;Z)V
    .registers 12
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "split"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1209
    const-string v0, "\""

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndicator(Ljava/lang/String;ZZZ)V

    .line 1210
    const/4 v0, 0x0

    .line 1211
    .local v0, "start":I
    move v3, v0

    const/4 v0, 0x0

    .line 1212
    .local v0, "end":I
    .local v3, "start":I
    :goto_a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v0, v4, :cond_166

    .line 1213
    const/4 v4, 0x0

    .line 1214
    .local v4, "ch":Ljava/lang/Character;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_1f

    .line 1215
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    .line 1217
    :cond_1f
    const/16 v5, 0x20

    if-eqz v4, :cond_3e

    const-string v6, "\"\\\u0085\u2028\u2029\ufeff"

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_3e

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v6

    if-gt v5, v6, :cond_3e

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v6

    const/16 v7, 0x7e

    if-le v6, v7, :cond_fe

    .line 1219
    :cond_3e
    if-ge v3, v0, :cond_4d

    .line 1220
    sub-int v6, v0, v3

    .line 1221
    .local v6, "len":I
    iget v7, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    add-int/2addr v7, v6

    iput v7, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    .line 1222
    iget-object v7, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    invoke-virtual {v7, p1, v3, v6}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 1223
    move v3, v0

    .line 1225
    .end local v6    # "len":I
    :cond_4d
    if-eqz v4, :cond_fe

    .line 1227
    sget-object v6, Lorg/yaml/snakeyaml/emitter/Emitter;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_72

    .line 1228
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\\"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lorg/yaml/snakeyaml/emitter/Emitter;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_ee

    .line 1229
    :cond_72
    iget-boolean v6, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->allowUnicode:Z

    if-nez v6, :cond_ea

    .line 1232
    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v6

    const/16 v7, 0xff

    const/16 v8, 0x10

    if-gt v6, v7, :cond_b5

    .line 1233
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v7

    invoke-static {v7, v8}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1234
    .local v6, "s":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\\x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1235
    .local v6, "data":Ljava/lang/String;
    goto :goto_ee

    .line 1236
    .end local v6    # "data":Ljava/lang/String;
    :cond_b5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "000"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v7

    invoke-static {v7, v8}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1237
    .local v6, "s":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\\u"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x4

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1238
    .local v6, "data":Ljava/lang/String;
    goto :goto_ee

    .line 1240
    .end local v6    # "data":Ljava/lang/String;
    :cond_ea
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1242
    .restart local v6    # "data":Ljava/lang/String;
    :goto_ee
    iget v7, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    .line 1243
    iget-object v7, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    invoke-virtual {v7, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1244
    add-int/lit8 v3, v0, 0x1

    .line 1247
    .end local v6    # "data":Ljava/lang/String;
    :cond_fe
    if-lez v0, :cond_162

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v1

    if-ge v0, v6, :cond_162

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v6

    if-eq v6, v5, :cond_10f

    if-lt v3, v0, :cond_162

    :cond_10f
    iget v6, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    sub-int v7, v0, v3

    add-int/2addr v6, v7

    iget v7, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->bestWidth:I

    if-le v6, v7, :cond_162

    if-eqz p2, :cond_162

    .line 1250
    if-lt v3, v0, :cond_11f

    .line 1251
    const-string v6, "\\"

    goto :goto_134

    .line 1253
    :cond_11f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\\"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1255
    .restart local v6    # "data":Ljava/lang/String;
    :goto_134
    if-ge v3, v0, :cond_137

    .line 1256
    move v3, v0

    .line 1258
    :cond_137
    iget v7, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    .line 1259
    iget-object v7, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    invoke-virtual {v7, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1260
    invoke-virtual {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndent()V

    .line 1261
    iput-boolean v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->whitespace:Z

    .line 1262
    iput-boolean v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indention:Z

    .line 1263
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v5, :cond_162

    .line 1264
    const-string v5, "\\"

    .line 1265
    .end local v6    # "data":Ljava/lang/String;
    .local v5, "data":Ljava/lang/String;
    iget v6, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    .line 1266
    iget-object v6, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    invoke-virtual {v6, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1269
    .end local v5    # "data":Ljava/lang/String;
    :cond_162
    add-int/lit8 v0, v0, 0x1

    .line 1270
    .end local v4    # "ch":Ljava/lang/Character;
    goto/16 :goto_a

    .line 1271
    :cond_166
    const-string v1, "\""

    invoke-virtual {p0, v1, v2, v2, v2}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndicator(Ljava/lang/String;ZZZ)V

    .line 1272
    return-void
.end method

.method private writeLineBreak(Ljava/lang/String;)V
    .registers 4
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->whitespace:Z

    .line 1119
    iput-boolean v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indention:Z

    .line 1120
    const/4 v0, 0x0

    iput v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    .line 1121
    if-nez p1, :cond_12

    .line 1122
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->bestLineBreak:[C

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write([C)V

    goto :goto_17

    .line 1124
    :cond_12
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1126
    :goto_17
    return-void
.end method

.method private writeSingleQuoted(Ljava/lang/String;Z)V
    .registers 21
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "split"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1146
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "\'"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4, v4}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndicator(Ljava/lang/String;ZZZ)V

    .line 1147
    const/4 v2, 0x0

    .line 1148
    .local v2, "spaces":Z
    const/4 v5, 0x0

    .line 1149
    .local v5, "breaks":Z
    const/4 v6, 0x0

    move v7, v6

    move v6, v5

    move v5, v2

    const/4 v2, 0x0

    .line 1151
    .local v2, "end":I
    .local v5, "spaces":Z
    .local v6, "breaks":Z
    .local v7, "start":I
    :goto_12
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v8

    if-gt v2, v8, :cond_d6

    .line 1152
    const/4 v8, 0x0

    .line 1153
    .local v8, "ch":C
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v2, v9, :cond_23

    .line 1154
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 1156
    :cond_23
    const/16 v9, 0x20

    if-eqz v5, :cond_51

    .line 1157
    if-eqz v8, :cond_2b

    if-eq v8, v9, :cond_ad

    .line 1158
    :cond_2b
    add-int/lit8 v10, v7, 0x1

    if-ne v10, v2, :cond_43

    iget v10, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    iget v11, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->bestWidth:I

    if-le v10, v11, :cond_43

    if-eqz p2, :cond_43

    if-eqz v7, :cond_43

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v11

    if-eq v2, v11, :cond_43

    .line 1160
    invoke-virtual/range {p0 .. p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndent()V

    goto :goto_4f

    .line 1162
    :cond_43
    sub-int v11, v2, v7

    .line 1163
    .local v11, "len":I
    iget v12, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    add-int/2addr v12, v11

    iput v12, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    .line 1164
    iget-object v12, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    invoke-virtual {v12, v1, v7, v11}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 1166
    .end local v11    # "len":I
    :goto_4f
    move v7, v2

    goto :goto_ad

    .line 1168
    :cond_51
    if-eqz v6, :cond_94

    .line 1169
    if-eqz v8, :cond_5d

    sget-object v11, Lorg/yaml/snakeyaml/scanner/Constant;->LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v11, v8}, Lorg/yaml/snakeyaml/scanner/Constant;->hasNo(C)Z

    move-result v11

    if-eqz v11, :cond_ad

    .line 1170
    :cond_5d
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/4 v12, 0x0

    const/16 v13, 0xa

    if-ne v11, v13, :cond_69

    .line 1171
    invoke-direct {v0, v12}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeLineBreak(Ljava/lang/String;)V

    .line 1173
    :cond_69
    invoke-virtual {v1, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 1174
    .local v11, "data":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->toCharArray()[C

    move-result-object v14

    .local v14, "arr$":[C
    array-length v15, v14

    const/16 v16, 0x0

    .local v15, "len$":I
    .local v16, "i$":I
    :goto_74
    move/from16 v17, v16

    move/from16 v3, v17

    .end local v16    # "i$":I
    .local v3, "i$":I
    if-ge v3, v15, :cond_8f

    aget-char v4, v14, v3

    .line 1175
    .local v4, "br":C
    if-ne v4, v13, :cond_82

    .line 1176
    invoke-direct {v0, v12}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeLineBreak(Ljava/lang/String;)V

    goto :goto_89

    .line 1178
    :cond_82
    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v12}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeLineBreak(Ljava/lang/String;)V

    .line 1174
    .end local v4    # "br":C
    :goto_89
    add-int/lit8 v16, v3, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v12, 0x0

    goto :goto_74

    .line 1181
    .end local v3    # "i$":I
    .end local v14    # "arr$":[C
    .end local v15    # "len$":I
    :cond_8f
    invoke-virtual/range {p0 .. p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndent()V

    .line 1182
    move v7, v2

    .line 1183
    .end local v11    # "data":Ljava/lang/String;
    goto :goto_ad

    .line 1185
    :cond_94
    sget-object v3, Lorg/yaml/snakeyaml/scanner/Constant;->LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    const-string v4, "\u0000 \'"

    invoke-virtual {v3, v8, v4}, Lorg/yaml/snakeyaml/scanner/Constant;->has(CLjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ad

    .line 1186
    if-ge v7, v2, :cond_ad

    .line 1187
    sub-int v3, v2, v7

    .line 1188
    .local v3, "len":I
    iget v4, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    add-int/2addr v4, v3

    iput v4, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    .line 1189
    iget-object v4, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    invoke-virtual {v4, v1, v7, v3}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 1190
    move v7, v2

    .line 1194
    .end local v3    # "len":I
    :cond_ad
    :goto_ad
    const/16 v3, 0x27

    if-ne v8, v3, :cond_c1

    .line 1195
    iget v3, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    add-int/lit8 v3, v3, 0x2

    iput v3, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    .line 1196
    iget-object v3, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    const-string v4, "\'\'"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1197
    add-int/lit8 v3, v2, 0x1

    .line 1199
    move v7, v3

    :cond_c1
    if-eqz v8, :cond_d0

    .line 1200
    if-ne v8, v9, :cond_c7

    const/4 v3, 0x1

    goto :goto_c8

    :cond_c7
    const/4 v3, 0x0

    .line 1201
    .end local v5    # "spaces":Z
    .local v3, "spaces":Z
    :goto_c8
    sget-object v4, Lorg/yaml/snakeyaml/scanner/Constant;->LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v4, v8}, Lorg/yaml/snakeyaml/scanner/Constant;->has(C)Z

    move-result v4

    .line 1203
    move v5, v3

    move v6, v4

    .end local v3    # "spaces":Z
    .restart local v5    # "spaces":Z
    :cond_d0
    add-int/lit8 v2, v2, 0x1

    .line 1149
    const/4 v3, 0x1

    const/4 v4, 0x0

    goto/16 :goto_12

    .line 1205
    .end local v8    # "ch":C
    :cond_d6
    const-string v3, "\'"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v4, v4}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndicator(Ljava/lang/String;ZZZ)V

    .line 1206
    return-void
.end method


# virtual methods
.method public emit(Lorg/yaml/snakeyaml/events/Event;)V
    .registers 3
    .param p1, "event"    # Lorg/yaml/snakeyaml/events/Event;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->events:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 213
    :goto_5
    invoke-direct {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->needMoreEvents()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 214
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->events:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/events/Event;

    iput-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    .line 215
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->state:Lorg/yaml/snakeyaml/emitter/EmitterState;

    invoke-interface {v0}, Lorg/yaml/snakeyaml/emitter/EmitterState;->expect()V

    .line 216
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    goto :goto_5

    .line 218
    :cond_1e
    return-void
.end method

.method flushStream()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1070
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 1071
    return-void
.end method

.method writeFolded(Ljava/lang/String;)V
    .registers 20
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1289
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p1}, Lorg/yaml/snakeyaml/emitter/Emitter;->determineBlockHints(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1290
    .local v2, "hints":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v0, v3, v5, v4, v4}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndicator(Ljava/lang/String;ZZZ)V

    .line 1291
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_33

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v6, 0x2b

    if-ne v3, v6, :cond_33

    .line 1292
    iput-boolean v5, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->openEnded:Z

    .line 1294
    :cond_33
    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeLineBreak(Ljava/lang/String;)V

    .line 1295
    const/4 v6, 0x1

    .line 1296
    .local v6, "leadingSpace":Z
    const/4 v7, 0x0

    .line 1297
    .local v7, "spaces":Z
    const/4 v8, 0x1

    .line 1298
    .local v8, "breaks":Z
    const/4 v9, 0x0

    move v10, v9

    move v9, v8

    move v8, v7

    move v7, v6

    const/4 v6, 0x0

    .line 1299
    .local v6, "end":I
    .local v7, "leadingSpace":Z
    .local v8, "spaces":Z
    .local v9, "breaks":Z
    .local v10, "start":I
    :goto_40
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v11

    if-gt v6, v11, :cond_fc

    .line 1300
    const/4 v11, 0x0

    .line 1301
    .local v11, "ch":C
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v6, v12, :cond_51

    .line 1302
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 1304
    :cond_51
    const/16 v12, 0x20

    if-eqz v9, :cond_a5

    .line 1305
    if-eqz v11, :cond_5f

    sget-object v13, Lorg/yaml/snakeyaml/scanner/Constant;->LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v13, v11}, Lorg/yaml/snakeyaml/scanner/Constant;->hasNo(C)Z

    move-result v13

    if-eqz v13, :cond_e4

    .line 1306
    :cond_5f
    const/16 v13, 0xa

    if-nez v7, :cond_70

    if-eqz v11, :cond_70

    if-eq v11, v12, :cond_70

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-ne v14, v13, :cond_70

    .line 1307
    invoke-direct {v0, v3}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeLineBreak(Ljava/lang/String;)V

    .line 1309
    :cond_70
    if-ne v11, v12, :cond_74

    const/4 v14, 0x1

    goto :goto_75

    :cond_74
    const/4 v14, 0x0

    :goto_75
    move v7, v14

    .line 1310
    invoke-virtual {v1, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 1311
    .local v14, "data":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->toCharArray()[C

    move-result-object v15

    .local v15, "arr$":[C
    array-length v4, v15

    const/16 v16, 0x0

    .local v4, "len$":I
    .local v16, "i$":I
    :goto_81
    move/from16 v17, v16

    move/from16 v5, v17

    .end local v16    # "i$":I
    .local v5, "i$":I
    if-ge v5, v4, :cond_9e

    aget-char v12, v15, v5

    .line 1312
    .local v12, "br":C
    if-ne v12, v13, :cond_8f

    .line 1313
    invoke-direct {v0, v3}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeLineBreak(Ljava/lang/String;)V

    goto :goto_96

    .line 1315
    :cond_8f
    invoke-static {v12}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v13}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeLineBreak(Ljava/lang/String;)V

    .line 1311
    .end local v12    # "br":C
    :goto_96
    add-int/lit8 v16, v5, 0x1

    const/4 v5, 0x1

    const/16 v12, 0x20

    const/16 v13, 0xa

    goto :goto_81

    .line 1318
    .end local v4    # "len$":I
    .end local v5    # "i$":I
    .end local v15    # "arr$":[C
    :cond_9e
    if-eqz v11, :cond_a3

    .line 1319
    invoke-virtual/range {p0 .. p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndent()V

    .line 1321
    :cond_a3
    move v4, v6

    .line 1322
    .end local v10    # "start":I
    .end local v14    # "data":Ljava/lang/String;
    .local v4, "start":I
    goto :goto_e3

    .line 1323
    .end local v4    # "start":I
    .restart local v10    # "start":I
    :cond_a5
    if-eqz v8, :cond_c7

    .line 1324
    const/16 v4, 0x20

    if-eq v11, v4, :cond_e4

    .line 1325
    add-int/lit8 v4, v10, 0x1

    if-ne v4, v6, :cond_b9

    iget v4, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    iget v5, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->bestWidth:I

    if-le v4, v5, :cond_b9

    .line 1326
    invoke-virtual/range {p0 .. p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndent()V

    goto :goto_c5

    .line 1328
    :cond_b9
    sub-int v4, v6, v10

    .line 1329
    .local v4, "len":I
    iget v5, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    add-int/2addr v5, v4

    iput v5, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    .line 1330
    iget-object v5, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    invoke-virtual {v5, v1, v10, v4}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 1332
    .end local v4    # "len":I
    :goto_c5
    move v4, v6

    goto :goto_e3

    .line 1335
    :cond_c7
    sget-object v4, Lorg/yaml/snakeyaml/scanner/Constant;->LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    const-string v5, "\u0000 "

    invoke-virtual {v4, v11, v5}, Lorg/yaml/snakeyaml/scanner/Constant;->has(CLjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e4

    .line 1336
    sub-int v4, v6, v10

    .line 1337
    .restart local v4    # "len":I
    iget v5, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    add-int/2addr v5, v4

    iput v5, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    .line 1338
    iget-object v5, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    invoke-virtual {v5, v1, v10, v4}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 1339
    if-nez v11, :cond_e2

    .line 1340
    invoke-direct {v0, v3}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeLineBreak(Ljava/lang/String;)V

    .line 1342
    :cond_e2
    move v4, v6

    .line 1345
    .end local v4    # "len":I
    :goto_e3
    move v10, v4

    :cond_e4
    if-eqz v11, :cond_f5

    .line 1346
    sget-object v4, Lorg/yaml/snakeyaml/scanner/Constant;->LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v4, v11}, Lorg/yaml/snakeyaml/scanner/Constant;->has(C)Z

    move-result v4

    .line 1347
    .end local v9    # "breaks":Z
    .local v4, "breaks":Z
    const/16 v5, 0x20

    if-ne v11, v5, :cond_f2

    const/4 v5, 0x1

    goto :goto_f3

    :cond_f2
    const/4 v5, 0x0

    .line 1349
    :goto_f3
    move v9, v4

    move v8, v5

    .end local v4    # "breaks":Z
    .restart local v9    # "breaks":Z
    :cond_f5
    add-int/lit8 v6, v6, 0x1

    .line 1350
    .end local v11    # "ch":C
    nop

    .line 1298
    const/4 v4, 0x0

    const/4 v5, 0x1

    goto/16 :goto_40

    .line 1351
    :cond_fc
    return-void
.end method

.method writeIndent()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1096
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indent:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 1097
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indent:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_d

    .line 1099
    :cond_c
    const/4 v0, 0x0

    .line 1102
    .local v0, "indent":I
    :goto_d
    iget-boolean v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indention:Z

    if-eqz v2, :cond_1d

    iget v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    if-gt v2, v0, :cond_1d

    iget v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    if-ne v2, v0, :cond_21

    iget-boolean v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->whitespace:Z

    if-nez v2, :cond_21

    .line 1103
    :cond_1d
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeLineBreak(Ljava/lang/String;)V

    .line 1106
    :cond_21
    iget v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    if-ge v2, v0, :cond_40

    .line 1107
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->whitespace:Z

    .line 1108
    iget v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    sub-int v2, v0, v2

    new-array v2, v2, [C

    .line 1109
    .local v2, "data":[C
    nop

    .local v1, "i":I
    :goto_2f
    array-length v3, v2

    if-ge v1, v3, :cond_39

    .line 1110
    const/16 v3, 0x20

    aput-char v3, v2, v1

    .line 1109
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    .line 1112
    .end local v1    # "i":I
    :cond_39
    iput v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    .line 1113
    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write([C)V

    .line 1115
    .end local v2    # "data":[C
    :cond_40
    return-void
.end method

.method writeIndicator(Ljava/lang/String;ZZZ)V
    .registers 8
    .param p1, "indicator"    # Ljava/lang/String;
    .param p2, "needWhitespace"    # Z
    .param p3, "whitespace"    # Z
    .param p4, "indentation"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1083
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->whitespace:Z

    const/4 v1, 0x1

    if-nez v0, :cond_13

    if-eqz p2, :cond_13

    .line 1084
    iget v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    .line 1085
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    sget-object v2, Lorg/yaml/snakeyaml/emitter/Emitter;->SPACE:[C

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write([C)V

    .line 1087
    :cond_13
    iput-boolean p3, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->whitespace:Z

    .line 1088
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indention:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1d

    if-eqz p4, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    :goto_1e
    iput-boolean v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indention:Z

    .line 1089
    iget v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    .line 1090
    iput-boolean v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->openEnded:Z

    .line 1091
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1092
    return-void
.end method

.method writeLiteral(Ljava/lang/String;)V
    .registers 15
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1354
    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/emitter/Emitter;->determineBlockHints(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1355
    .local v0, "hints":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3, v2, v2}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndicator(Ljava/lang/String;ZZZ)V

    .line 1356
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x2b

    if-ne v1, v4, :cond_2f

    .line 1357
    iput-boolean v3, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->openEnded:Z

    .line 1359
    :cond_2f
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeLineBreak(Ljava/lang/String;)V

    .line 1360
    const/4 v3, 0x1

    .line 1361
    .local v3, "breaks":Z
    const/4 v4, 0x0

    move v5, v4

    move v4, v3

    const/4 v3, 0x0

    .line 1362
    .local v3, "end":I
    .local v4, "breaks":Z
    .local v5, "start":I
    :goto_38
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-gt v3, v6, :cond_9e

    .line 1363
    const/4 v6, 0x0

    .line 1364
    .local v6, "ch":C
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v3, v7, :cond_49

    .line 1365
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 1367
    :cond_49
    if-eqz v4, :cond_7c

    .line 1368
    if-eqz v6, :cond_55

    sget-object v7, Lorg/yaml/snakeyaml/scanner/Constant;->LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v7, v6}, Lorg/yaml/snakeyaml/scanner/Constant;->hasNo(C)Z

    move-result v7

    if-eqz v7, :cond_93

    .line 1369
    :cond_55
    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 1370
    .local v7, "data":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    .local v8, "arr$":[C
    array-length v9, v8

    const/4 v10, 0x0

    .local v9, "len$":I
    .local v10, "i$":I
    :goto_5f
    if-ge v10, v9, :cond_75

    aget-char v11, v8, v10

    .line 1371
    .local v11, "br":C
    const/16 v12, 0xa

    if-ne v11, v12, :cond_6b

    .line 1372
    invoke-direct {p0, v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeLineBreak(Ljava/lang/String;)V

    goto :goto_72

    .line 1374
    :cond_6b
    invoke-static {v11}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeLineBreak(Ljava/lang/String;)V

    .line 1370
    .end local v11    # "br":C
    :goto_72
    add-int/lit8 v10, v10, 0x1

    goto :goto_5f

    .line 1377
    .end local v8    # "arr$":[C
    .end local v9    # "len$":I
    .end local v10    # "i$":I
    :cond_75
    if-eqz v6, :cond_7a

    .line 1378
    invoke-virtual {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndent()V

    .line 1380
    :cond_7a
    move v5, v3

    .line 1381
    .end local v7    # "data":Ljava/lang/String;
    goto :goto_93

    .line 1383
    :cond_7c
    if-eqz v6, :cond_86

    sget-object v7, Lorg/yaml/snakeyaml/scanner/Constant;->LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v7, v6}, Lorg/yaml/snakeyaml/scanner/Constant;->has(C)Z

    move-result v7

    if-eqz v7, :cond_93

    .line 1384
    :cond_86
    iget-object v7, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    sub-int v8, v3, v5

    invoke-virtual {v7, p1, v5, v8}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 1385
    if-nez v6, :cond_92

    .line 1386
    invoke-direct {p0, v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeLineBreak(Ljava/lang/String;)V

    .line 1388
    :cond_92
    move v5, v3

    .line 1391
    :cond_93
    :goto_93
    if-eqz v6, :cond_9b

    .line 1392
    sget-object v7, Lorg/yaml/snakeyaml/scanner/Constant;->LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v7, v6}, Lorg/yaml/snakeyaml/scanner/Constant;->has(C)Z

    move-result v4

    .line 1394
    :cond_9b
    add-int/lit8 v3, v3, 0x1

    .line 1395
    .end local v6    # "ch":C
    goto :goto_38

    .line 1396
    :cond_9e
    return-void
.end method

.method writePlain(Ljava/lang/String;Z)V
    .registers 21
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "split"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1399
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->rootContext:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_b

    .line 1400
    iput-boolean v3, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->openEnded:Z

    .line 1402
    :cond_b
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_12

    .line 1403
    return-void

    .line 1405
    :cond_12
    iget-boolean v2, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->whitespace:Z

    if-nez v2, :cond_22

    .line 1406
    iget v2, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    add-int/2addr v2, v3

    iput v2, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    .line 1407
    iget-object v2, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    sget-object v4, Lorg/yaml/snakeyaml/emitter/Emitter;->SPACE:[C

    invoke-virtual {v2, v4}, Ljava/io/Writer;->write([C)V

    .line 1409
    :cond_22
    const/4 v2, 0x0

    iput-boolean v2, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->whitespace:Z

    .line 1410
    iput-boolean v2, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->indention:Z

    .line 1411
    const/4 v4, 0x0

    .line 1412
    .local v4, "spaces":Z
    const/4 v5, 0x0

    .line 1413
    .local v5, "breaks":Z
    const/4 v6, 0x0

    move v7, v6

    move v6, v5

    move v5, v4

    const/4 v4, 0x0

    .line 1414
    .local v4, "end":I
    .local v5, "spaces":Z
    .local v6, "breaks":Z
    .local v7, "start":I
    :goto_2e
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v8

    if-gt v4, v8, :cond_dc

    .line 1415
    const/4 v8, 0x0

    .line 1416
    .local v8, "ch":C
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v4, v9, :cond_3f

    .line 1417
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 1419
    :cond_3f
    const/16 v9, 0x20

    if-eqz v5, :cond_67

    .line 1420
    if-eq v8, v9, :cond_c5

    .line 1421
    add-int/lit8 v10, v7, 0x1

    if-ne v10, v4, :cond_59

    iget v10, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    iget v11, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->bestWidth:I

    if-le v10, v11, :cond_59

    if-eqz p2, :cond_59

    .line 1422
    invoke-virtual/range {p0 .. p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndent()V

    .line 1423
    iput-boolean v2, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->whitespace:Z

    .line 1424
    iput-boolean v2, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->indention:Z

    goto :goto_65

    .line 1426
    :cond_59
    sub-int v11, v4, v7

    .line 1427
    .local v11, "len":I
    iget v12, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    add-int/2addr v12, v11

    iput v12, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    .line 1428
    iget-object v12, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    invoke-virtual {v12, v1, v7, v11}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 1430
    .end local v11    # "len":I
    :goto_65
    move v7, v4

    goto :goto_c5

    .line 1432
    :cond_67
    if-eqz v6, :cond_ad

    .line 1433
    sget-object v11, Lorg/yaml/snakeyaml/scanner/Constant;->LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v11, v8}, Lorg/yaml/snakeyaml/scanner/Constant;->hasNo(C)Z

    move-result v11

    if-eqz v11, :cond_c5

    .line 1434
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/4 v12, 0x0

    const/16 v13, 0xa

    if-ne v11, v13, :cond_7d

    .line 1435
    invoke-direct {v0, v12}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeLineBreak(Ljava/lang/String;)V

    .line 1437
    :cond_7d
    invoke-virtual {v1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 1438
    .local v11, "data":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->toCharArray()[C

    move-result-object v14

    .local v14, "arr$":[C
    array-length v15, v14

    const/16 v16, 0x0

    .local v15, "len$":I
    .local v16, "i$":I
    :goto_88
    move/from16 v17, v16

    move/from16 v3, v17

    .end local v16    # "i$":I
    .local v3, "i$":I
    if-ge v3, v15, :cond_a4

    aget-char v9, v14, v3

    .line 1439
    .local v9, "br":C
    if-ne v9, v13, :cond_96

    .line 1440
    invoke-direct {v0, v12}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeLineBreak(Ljava/lang/String;)V

    goto :goto_9d

    .line 1442
    :cond_96
    invoke-static {v9}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v12}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeLineBreak(Ljava/lang/String;)V

    .line 1438
    .end local v9    # "br":C
    :goto_9d
    add-int/lit8 v16, v3, 0x1

    const/4 v3, 0x1

    const/16 v9, 0x20

    const/4 v12, 0x0

    goto :goto_88

    .line 1445
    .end local v3    # "i$":I
    .end local v14    # "arr$":[C
    .end local v15    # "len$":I
    :cond_a4
    invoke-virtual/range {p0 .. p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndent()V

    .line 1446
    iput-boolean v2, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->whitespace:Z

    .line 1447
    iput-boolean v2, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->indention:Z

    .line 1448
    move v3, v4

    .line 1449
    .end local v7    # "start":I
    .end local v11    # "data":Ljava/lang/String;
    .local v3, "start":I
    goto :goto_c4

    .line 1451
    .end local v3    # "start":I
    .restart local v7    # "start":I
    :cond_ad
    if-eqz v8, :cond_b7

    sget-object v3, Lorg/yaml/snakeyaml/scanner/Constant;->LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v3, v8}, Lorg/yaml/snakeyaml/scanner/Constant;->has(C)Z

    move-result v3

    if-eqz v3, :cond_c5

    .line 1452
    :cond_b7
    sub-int v3, v4, v7

    .line 1453
    .local v3, "len":I
    iget v9, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    add-int/2addr v9, v3

    iput v9, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    .line 1454
    iget-object v9, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    invoke-virtual {v9, v1, v7, v3}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 1455
    move v3, v4

    .line 1458
    .end local v3    # "len":I
    :goto_c4
    move v7, v3

    :cond_c5
    :goto_c5
    if-eqz v8, :cond_d6

    .line 1459
    const/16 v3, 0x20

    if-ne v8, v3, :cond_cd

    const/4 v3, 0x1

    goto :goto_ce

    :cond_cd
    const/4 v3, 0x0

    .line 1460
    .end local v5    # "spaces":Z
    .local v3, "spaces":Z
    :goto_ce
    sget-object v5, Lorg/yaml/snakeyaml/scanner/Constant;->LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v5, v8}, Lorg/yaml/snakeyaml/scanner/Constant;->has(C)Z

    move-result v5

    .line 1462
    move v6, v5

    move v5, v3

    .end local v3    # "spaces":Z
    .restart local v5    # "spaces":Z
    :cond_d6
    add-int/lit8 v4, v4, 0x1

    .line 1463
    .end local v8    # "ch":C
    nop

    .line 1413
    const/4 v3, 0x1

    goto/16 :goto_2e

    .line 1464
    :cond_dc
    return-void
.end method

.method writeStreamEnd()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1078
    invoke-virtual {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->flushStream()V

    .line 1079
    return-void
.end method

.method writeStreamStart()V
    .registers 1

    .line 1075
    return-void
.end method

.method writeTagDirective(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "handleText"    # Ljava/lang/String;
    .param p2, "prefixText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1137
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    const-string v1, "%TAG "

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1138
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1139
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    sget-object v1, Lorg/yaml/snakeyaml/emitter/Emitter;->SPACE:[C

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write([C)V

    .line 1140
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    invoke-virtual {v0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1141
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeLineBreak(Ljava/lang/String;)V

    .line 1142
    return-void
.end method

.method writeVersionDirective(Ljava/lang/String;)V
    .registers 4
    .param p1, "versionText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1129
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    const-string v1, "%YAML "

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1130
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1131
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeLineBreak(Ljava/lang/String;)V

    .line 1132
    return-void
.end method
