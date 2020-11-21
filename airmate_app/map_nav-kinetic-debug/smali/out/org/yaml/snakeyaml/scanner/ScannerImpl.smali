.class public final Lorg/yaml/snakeyaml/scanner/ScannerImpl;
.super Ljava/lang/Object;
.source "ScannerImpl.java"

# interfaces
.implements Lorg/yaml/snakeyaml/scanner/Scanner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/yaml/snakeyaml/scanner/ScannerImpl$Chomping;
    }
.end annotation


# static fields
.field public static final ESCAPE_CODES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final ESCAPE_REPLACEMENTS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final NOT_HEXA:Ljava/util/regex/Pattern;


# instance fields
.field private allowSimpleKey:Z

.field private done:Z

.field private flowLevel:I

.field private indent:I

.field private indents:Lorg/yaml/snakeyaml/util/ArrayStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/yaml/snakeyaml/util/ArrayStack<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private possibleSimpleKeys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/yaml/snakeyaml/scanner/SimpleKey;",
            ">;"
        }
    .end annotation
.end field

.field private final reader:Lorg/yaml/snakeyaml/reader/StreamReader;

.field private tokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/yaml/snakeyaml/tokens/Token;",
            ">;"
        }
    .end annotation
.end field

.field private tokensTaken:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 87
    const-string v0, "[^0-9A-Fa-f]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->NOT_HEXA:Ljava/util/regex/Pattern;

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->ESCAPE_CODES:Ljava/util/Map;

    .line 116
    sget-object v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    const/16 v1, 0x30

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\u0000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    const/16 v1, 0x61

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\u0007"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    const/16 v1, 0x62

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\u0008"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    const/16 v1, 0x74

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\t"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    const/16 v1, 0x6e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\n"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    const/16 v1, 0x76

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\u000b"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    const/16 v1, 0x66

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\u000c"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    const/16 v1, 0x72

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\r"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    const/16 v1, 0x65

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\u001b"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, " "

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    const/16 v1, 0x22

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    const/16 v1, 0x5c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\\"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    const/16 v1, 0x4e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\u0085"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    const/16 v1, 0x5f

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\u00a0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    const/16 v1, 0x4c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\u2028"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    const/16 v1, 0x50

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\u2029"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->ESCAPE_CODES:Ljava/util/Map;

    const/16 v1, 0x78

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->ESCAPE_CODES:Ljava/util/Map;

    const/16 v1, 0x75

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->ESCAPE_CODES:Ljava/util/Map;

    const/16 v1, 0x55

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    return-void
.end method

.method public constructor <init>(Lorg/yaml/snakeyaml/reader/StreamReader;)V
    .registers 4
    .param p1, "reader"    # Lorg/yaml/snakeyaml/reader/StreamReader;

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->done:Z

    .line 161
    iput v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    .line 167
    iput v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokensTaken:I

    .line 170
    const/4 v0, -0x1

    iput v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->indent:I

    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    .line 211
    iput-object p1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    .line 213
    new-instance v0, Lorg/yaml/snakeyaml/util/ArrayStack;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/util/ArrayStack;-><init>(I)V

    iput-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->indents:Lorg/yaml/snakeyaml/util/ArrayStack;

    .line 215
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->possibleSimpleKeys:Ljava/util/Map;

    .line 216
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchStreamStart()V

    .line 217
    return-void
.end method

.method private addIndent(I)Z
    .registers 4
    .param p1, "column"    # I

    .line 553
    iget v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->indent:I

    if-ge v0, p1, :cond_13

    .line 554
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->indents:Lorg/yaml/snakeyaml/util/ArrayStack;

    iget v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->indent:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/yaml/snakeyaml/util/ArrayStack;->push(Ljava/lang/Object;)V

    .line 555
    iput p1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->indent:I

    .line 556
    const/4 v0, 0x1

    return v0

    .line 558
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method private checkBlockEntry()Z
    .registers 4

    .line 1089
    sget-object v0, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_T_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)C

    move-result v1

    invoke-virtual {v0, v1}, Lorg/yaml/snakeyaml/scanner/Constant;->has(C)Z

    move-result v0

    return v0
.end method

.method private checkDirective()Z
    .registers 2

    .line 1053
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->getColumn()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private checkDocumentEnd()Z
    .registers 4

    .line 1076
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->getColumn()I

    move-result v0

    if-nez v0, :cond_27

    .line 1077
    const-string v0, "..."

    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->prefix(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    sget-object v0, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_T_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1, v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)C

    move-result v1

    invoke-virtual {v0, v1}, Lorg/yaml/snakeyaml/scanner/Constant;->has(C)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1078
    const/4 v0, 0x1

    return v0

    .line 1081
    :cond_27
    const/4 v0, 0x0

    return v0
.end method

.method private checkDocumentStart()Z
    .registers 4

    .line 1062
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->getColumn()I

    move-result v0

    if-nez v0, :cond_27

    .line 1063
    const-string v0, "---"

    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->prefix(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    sget-object v0, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_T_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1, v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)C

    move-result v1

    invoke-virtual {v0, v1}, Lorg/yaml/snakeyaml/scanner/Constant;->has(C)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1064
    const/4 v0, 0x1

    return v0

    .line 1067
    :cond_27
    const/4 v0, 0x0

    return v0
.end method

.method private checkKey()Z
    .registers 4

    .line 1097
    iget v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 1098
    return v1

    .line 1101
    :cond_6
    sget-object v0, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_T_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2, v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)C

    move-result v1

    invoke-virtual {v0, v1}, Lorg/yaml/snakeyaml/scanner/Constant;->has(C)Z

    move-result v0

    return v0
.end method

.method private checkPlain()Z
    .registers 5

    .line 1138
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v0

    .line 1141
    .local v0, "ch":C
    sget-object v1, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_T_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    const-string v2, "-?:,[]{}#&*!|>\'\"%@`"

    invoke-virtual {v1, v0, v2}, Lorg/yaml/snakeyaml/scanner/Constant;->hasNo(CLjava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_33

    sget-object v1, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_T_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3, v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)C

    move-result v3

    invoke-virtual {v1, v3}, Lorg/yaml/snakeyaml/scanner/Constant;->hasNo(C)Z

    move-result v1

    if-eqz v1, :cond_31

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_33

    iget v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    if-nez v1, :cond_31

    const-string v1, "?:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_31

    goto :goto_33

    :cond_31
    const/4 v2, 0x0

    nop

    :cond_33
    :goto_33
    return v2
.end method

.method private checkValue()Z
    .registers 4

    .line 1110
    iget v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 1111
    return v1

    .line 1114
    :cond_6
    sget-object v0, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_T_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2, v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)C

    move-result v1

    invoke-virtual {v0, v1}, Lorg/yaml/snakeyaml/scanner/Constant;->has(C)Z

    move-result v0

    return v0
.end method

.method private fetchAlias()V
    .registers 3

    .line 905
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->savePossibleSimpleKey()V

    .line 908
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    .line 911
    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanAnchor(Z)Lorg/yaml/snakeyaml/tokens/Token;

    move-result-object v0

    .line 912
    .local v0, "tok":Lorg/yaml/snakeyaml/tokens/Token;
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 913
    return-void
.end method

.method private fetchAnchor()V
    .registers 3

    .line 926
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->savePossibleSimpleKey()V

    .line 929
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    .line 932
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanAnchor(Z)Lorg/yaml/snakeyaml/tokens/Token;

    move-result-object v0

    .line 933
    .local v0, "tok":Lorg/yaml/snakeyaml/tokens/Token;
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 934
    return-void
.end method

.method private fetchBlockEntry()V
    .registers 5

    .line 768
    iget v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    if-nez v0, :cond_34

    .line 770
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    if-eqz v0, :cond_25

    .line 776
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->getColumn()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->addIndent(I)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 777
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v0

    .line 778
    .local v0, "mark":Lorg/yaml/snakeyaml/error/Mark;
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    new-instance v2, Lorg/yaml/snakeyaml/tokens/BlockSequenceStartToken;

    invoke-direct {v2, v0, v0}, Lorg/yaml/snakeyaml/tokens/BlockSequenceStartToken;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_34

    .line 771
    .end local v0    # "mark":Lorg/yaml/snakeyaml/error/Mark;
    :cond_25
    new-instance v0, Lorg/yaml/snakeyaml/scanner/ScannerException;

    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "sequence entries are not allowed here"

    invoke-direct {v0, v2, v2, v3, v1}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v0

    .line 785
    :cond_34
    :goto_34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    .line 788
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->removePossibleSimpleKey()V

    .line 791
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v0

    .line 792
    .local v0, "startMark":Lorg/yaml/snakeyaml/error/Mark;
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    .line 793
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v1

    .line 794
    .local v1, "endMark":Lorg/yaml/snakeyaml/error/Mark;
    new-instance v2, Lorg/yaml/snakeyaml/tokens/BlockEntryToken;

    invoke-direct {v2, v0, v1}, Lorg/yaml/snakeyaml/tokens/BlockEntryToken;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    .line 795
    .local v2, "token":Lorg/yaml/snakeyaml/tokens/Token;
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 796
    return-void
.end method

.method private fetchBlockScalar(C)V
    .registers 4
    .param p1, "style"    # C

    .line 983
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    .line 986
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->removePossibleSimpleKey()V

    .line 989
    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanBlockScalar(C)Lorg/yaml/snakeyaml/tokens/Token;

    move-result-object v0

    .line 990
    .local v0, "tok":Lorg/yaml/snakeyaml/tokens/Token;
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 991
    return-void
.end method

.method private fetchDirective()V
    .registers 3

    .line 605
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->unwindIndent(I)V

    .line 608
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->removePossibleSimpleKey()V

    .line 609
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    .line 612
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanDirective()Lorg/yaml/snakeyaml/tokens/Token;

    move-result-object v0

    .line 613
    .local v0, "tok":Lorg/yaml/snakeyaml/tokens/Token;
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 614
    return-void
.end method

.method private fetchDocumentEnd()V
    .registers 2

    .line 627
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchDocumentIndicator(Z)V

    .line 628
    return-void
.end method

.method private fetchDocumentIndicator(Z)V
    .registers 6
    .param p1, "isDocumentStart"    # Z

    .line 636
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->unwindIndent(I)V

    .line 640
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->removePossibleSimpleKey()V

    .line 641
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    .line 644
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v0

    .line 645
    .local v0, "startMark":Lorg/yaml/snakeyaml/error/Mark;
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward(I)V

    .line 646
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v1

    .line 648
    .local v1, "endMark":Lorg/yaml/snakeyaml/error/Mark;
    if-eqz p1, :cond_24

    .line 649
    new-instance v2, Lorg/yaml/snakeyaml/tokens/DocumentStartToken;

    invoke-direct {v2, v0, v1}, Lorg/yaml/snakeyaml/tokens/DocumentStartToken;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    goto :goto_29

    .line 651
    :cond_24
    new-instance v2, Lorg/yaml/snakeyaml/tokens/DocumentEndToken;

    invoke-direct {v2, v0, v1}, Lorg/yaml/snakeyaml/tokens/DocumentEndToken;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    .line 653
    .local v2, "token":Lorg/yaml/snakeyaml/tokens/Token;
    :goto_29
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 654
    return-void
.end method

.method private fetchDocumentStart()V
    .registers 2

    .line 620
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchDocumentIndicator(Z)V

    .line 621
    return-void
.end method

.method private fetchDouble()V
    .registers 2

    .line 1004
    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchFlowScalar(C)V

    .line 1005
    return-void
.end method

.method private fetchFlowCollectionEnd(Z)V
    .registers 6
    .param p1, "isMappingEnd"    # Z

    .line 719
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->removePossibleSimpleKey()V

    .line 722
    iget v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    .line 725
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    .line 728
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v0

    .line 729
    .local v0, "startMark":Lorg/yaml/snakeyaml/error/Mark;
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    .line 730
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v1

    .line 732
    .local v1, "endMark":Lorg/yaml/snakeyaml/error/Mark;
    if-eqz p1, :cond_25

    .line 733
    new-instance v2, Lorg/yaml/snakeyaml/tokens/FlowMappingEndToken;

    invoke-direct {v2, v0, v1}, Lorg/yaml/snakeyaml/tokens/FlowMappingEndToken;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    goto :goto_2a

    .line 735
    :cond_25
    new-instance v2, Lorg/yaml/snakeyaml/tokens/FlowSequenceEndToken;

    invoke-direct {v2, v0, v1}, Lorg/yaml/snakeyaml/tokens/FlowSequenceEndToken;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    .line 737
    .local v2, "token":Lorg/yaml/snakeyaml/tokens/Token;
    :goto_2a
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 738
    return-void
.end method

.method private fetchFlowCollectionStart(Z)V
    .registers 6
    .param p1, "isMappingStart"    # Z

    .line 678
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->savePossibleSimpleKey()V

    .line 681
    iget v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    .line 684
    iput-boolean v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    .line 687
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v0

    .line 688
    .local v0, "startMark":Lorg/yaml/snakeyaml/error/Mark;
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2, v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward(I)V

    .line 689
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v1

    .line 691
    .local v1, "endMark":Lorg/yaml/snakeyaml/error/Mark;
    if-eqz p1, :cond_24

    .line 692
    new-instance v2, Lorg/yaml/snakeyaml/tokens/FlowMappingStartToken;

    invoke-direct {v2, v0, v1}, Lorg/yaml/snakeyaml/tokens/FlowMappingStartToken;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    goto :goto_29

    .line 694
    :cond_24
    new-instance v2, Lorg/yaml/snakeyaml/tokens/FlowSequenceStartToken;

    invoke-direct {v2, v0, v1}, Lorg/yaml/snakeyaml/tokens/FlowSequenceStartToken;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    .line 696
    .local v2, "token":Lorg/yaml/snakeyaml/tokens/Token;
    :goto_29
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 697
    return-void
.end method

.method private fetchFlowEntry()V
    .registers 5

    .line 748
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    .line 751
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->removePossibleSimpleKey()V

    .line 754
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v0

    .line 755
    .local v0, "startMark":Lorg/yaml/snakeyaml/error/Mark;
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    .line 756
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v1

    .line 757
    .local v1, "endMark":Lorg/yaml/snakeyaml/error/Mark;
    new-instance v2, Lorg/yaml/snakeyaml/tokens/FlowEntryToken;

    invoke-direct {v2, v0, v1}, Lorg/yaml/snakeyaml/tokens/FlowEntryToken;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    .line 758
    .local v2, "token":Lorg/yaml/snakeyaml/tokens/Token;
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 759
    return-void
.end method

.method private fetchFlowMappingEnd()V
    .registers 2

    .line 704
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchFlowCollectionEnd(Z)V

    .line 705
    return-void
.end method

.method private fetchFlowMappingStart()V
    .registers 2

    .line 661
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchFlowCollectionStart(Z)V

    .line 662
    return-void
.end method

.method private fetchFlowScalar(C)V
    .registers 4
    .param p1, "style"    # C

    .line 1016
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->savePossibleSimpleKey()V

    .line 1019
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    .line 1022
    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanFlowScalar(C)Lorg/yaml/snakeyaml/tokens/Token;

    move-result-object v0

    .line 1023
    .local v0, "tok":Lorg/yaml/snakeyaml/tokens/Token;
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1024
    return-void
.end method

.method private fetchFlowSequenceEnd()V
    .registers 2

    .line 700
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchFlowCollectionEnd(Z)V

    .line 701
    return-void
.end method

.method private fetchFlowSequenceStart()V
    .registers 2

    .line 657
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchFlowCollectionStart(Z)V

    .line 658
    return-void
.end method

.method private fetchFolded()V
    .registers 2

    .line 971
    const/16 v0, 0x3e

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchBlockScalar(C)V

    .line 972
    return-void
.end method

.method private fetchKey()V
    .registers 5

    .line 805
    iget v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    if-nez v0, :cond_34

    .line 807
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    if-eqz v0, :cond_25

    .line 812
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->getColumn()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->addIndent(I)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 813
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v0

    .line 814
    .local v0, "mark":Lorg/yaml/snakeyaml/error/Mark;
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    new-instance v2, Lorg/yaml/snakeyaml/tokens/BlockMappingStartToken;

    invoke-direct {v2, v0, v0}, Lorg/yaml/snakeyaml/tokens/BlockMappingStartToken;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_34

    .line 808
    .end local v0    # "mark":Lorg/yaml/snakeyaml/error/Mark;
    :cond_25
    new-instance v0, Lorg/yaml/snakeyaml/scanner/ScannerException;

    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "mapping keys are not allowed here"

    invoke-direct {v0, v2, v2, v3, v1}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v0

    .line 818
    :cond_34
    :goto_34
    iget v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    if-nez v0, :cond_3a

    const/4 v0, 0x1

    goto :goto_3b

    :cond_3a
    const/4 v0, 0x0

    :goto_3b
    iput-boolean v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    .line 821
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->removePossibleSimpleKey()V

    .line 824
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v0

    .line 825
    .local v0, "startMark":Lorg/yaml/snakeyaml/error/Mark;
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    .line 826
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v1

    .line 827
    .local v1, "endMark":Lorg/yaml/snakeyaml/error/Mark;
    new-instance v2, Lorg/yaml/snakeyaml/tokens/KeyToken;

    invoke-direct {v2, v0, v1}, Lorg/yaml/snakeyaml/tokens/KeyToken;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    .line 828
    .local v2, "token":Lorg/yaml/snakeyaml/tokens/Token;
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 829
    return-void
.end method

.method private fetchLiteral()V
    .registers 2

    .line 961
    const/16 v0, 0x7c

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchBlockScalar(C)V

    .line 962
    return-void
.end method

.method private fetchMoreTokens()V
    .registers 8

    .line 287
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanToNextToken()V

    .line 289
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->stalePossibleSimpleKeys()V

    .line 292
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->getColumn()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->unwindIndent(I)V

    .line 295
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v0

    .line 296
    .local v0, "ch":C
    sparse-switch v0, :sswitch_data_104

    goto/16 :goto_92

    .line 341
    :sswitch_1a
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchFlowMappingEnd()V

    .line 342
    return-void

    .line 376
    :sswitch_1e
    iget v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    if-nez v1, :cond_92

    .line 377
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchLiteral()V

    .line 378
    return-void

    .line 333
    :sswitch_26
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchFlowMappingStart()V

    .line 334
    return-void

    .line 337
    :sswitch_2a
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchFlowSequenceEnd()V

    .line 338
    return-void

    .line 329
    :sswitch_2e
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchFlowSequenceStart()V

    .line 330
    return-void

    .line 350
    :sswitch_32
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->checkKey()Z

    move-result v1

    if-eqz v1, :cond_92

    .line 351
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchKey()V

    .line 352
    return-void

    .line 383
    :sswitch_3c
    iget v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    if-nez v1, :cond_92

    .line 384
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchFolded()V

    .line 385
    return-void

    .line 357
    :sswitch_44
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->checkValue()Z

    move-result v1

    if-eqz v1, :cond_92

    .line 358
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchValue()V

    .line 359
    return-void

    .line 321
    :sswitch_4e
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->checkDocumentEnd()Z

    move-result v1

    if-eqz v1, :cond_92

    .line 322
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchDocumentEnd()V

    .line 323
    return-void

    .line 310
    :sswitch_58
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->checkDocumentStart()Z

    move-result v1

    if-eqz v1, :cond_62

    .line 311
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchDocumentStart()V

    .line 312
    return-void

    .line 314
    :cond_62
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->checkBlockEntry()Z

    move-result v1

    if-eqz v1, :cond_92

    .line 315
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchBlockEntry()V

    .line 316
    return-void

    .line 345
    :sswitch_6c
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchFlowEntry()V

    .line 346
    return-void

    .line 364
    :sswitch_70
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchAlias()V

    .line 365
    return-void

    .line 390
    :sswitch_74
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchSingle()V

    .line 391
    return-void

    .line 368
    :sswitch_78
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchAnchor()V

    .line 369
    return-void

    .line 303
    :sswitch_7c
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->checkDirective()Z

    move-result v1

    if-eqz v1, :cond_92

    .line 304
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchDirective()V

    .line 305
    return-void

    .line 394
    :sswitch_86
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchDouble()V

    .line 395
    return-void

    .line 372
    :sswitch_8a
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchTag()V

    .line 373
    return-void

    .line 299
    :sswitch_8e
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchStreamEnd()V

    .line 300
    return-void

    .line 398
    :cond_92
    :goto_92
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->checkPlain()Z

    move-result v1

    if-eqz v1, :cond_9c

    .line 399
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchPlain()V

    .line 400
    return-void

    .line 405
    :cond_9c
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    .line 406
    .local v1, "chRepresentation":Ljava/lang/String;
    sget-object v2, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_aa
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Character;

    .line 407
    .local v3, "s":Ljava/lang/Character;
    sget-object v4, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 408
    .local v4, "v":Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c5

    .line 412
    .end local v3    # "s":Ljava/lang/Character;
    .end local v4    # "v":Ljava/lang/String;
    goto :goto_aa

    .line 409
    .restart local v3    # "s":Ljava/lang/Character;
    .restart local v4    # "v":Ljava/lang/String;
    :cond_c5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\\"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 410
    nop

    .line 413
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "s":Ljava/lang/Character;
    .end local v4    # "v":Ljava/lang/String;
    :cond_d7
    new-instance v2, Lorg/yaml/snakeyaml/scanner/ScannerException;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "found character "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' that cannot start any token"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v5}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v5

    const-string v6, "while scanning for the next token"

    invoke-direct {v2, v6, v3, v4, v5}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v2

    :sswitch_data_104
    .sparse-switch
        0x0 -> :sswitch_8e
        0x21 -> :sswitch_8a
        0x22 -> :sswitch_86
        0x25 -> :sswitch_7c
        0x26 -> :sswitch_78
        0x27 -> :sswitch_74
        0x2a -> :sswitch_70
        0x2c -> :sswitch_6c
        0x2d -> :sswitch_58
        0x2e -> :sswitch_4e
        0x3a -> :sswitch_44
        0x3e -> :sswitch_3c
        0x3f -> :sswitch_32
        0x5b -> :sswitch_2e
        0x5d -> :sswitch_2a
        0x7b -> :sswitch_26
        0x7c -> :sswitch_1e
        0x7d -> :sswitch_1a
    .end sparse-switch
.end method

.method private fetchPlain()V
    .registers 3

    .line 1031
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->savePossibleSimpleKey()V

    .line 1036
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    .line 1039
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanPlain()Lorg/yaml/snakeyaml/tokens/Token;

    move-result-object v0

    .line 1040
    .local v0, "tok":Lorg/yaml/snakeyaml/tokens/Token;
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1041
    return-void
.end method

.method private fetchSingle()V
    .registers 2

    .line 997
    const/16 v0, 0x27

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchFlowScalar(C)V

    .line 998
    return-void
.end method

.method private fetchStreamEnd()V
    .registers 4

    .line 578
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->unwindIndent(I)V

    .line 581
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->removePossibleSimpleKey()V

    .line 582
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    .line 583
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->possibleSimpleKeys:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 586
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v0

    .line 589
    .local v0, "mark":Lorg/yaml/snakeyaml/error/Mark;
    new-instance v1, Lorg/yaml/snakeyaml/tokens/StreamEndToken;

    invoke-direct {v1, v0, v0}, Lorg/yaml/snakeyaml/tokens/StreamEndToken;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    .line 590
    .local v1, "token":Lorg/yaml/snakeyaml/tokens/Token;
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 593
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->done:Z

    .line 594
    return-void
.end method

.method private fetchStreamStart()V
    .registers 4

    .line 569
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v0

    .line 572
    .local v0, "mark":Lorg/yaml/snakeyaml/error/Mark;
    new-instance v1, Lorg/yaml/snakeyaml/tokens/StreamStartToken;

    invoke-direct {v1, v0, v0}, Lorg/yaml/snakeyaml/tokens/StreamStartToken;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    .line 573
    .local v1, "token":Lorg/yaml/snakeyaml/tokens/Token;
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 574
    return-void
.end method

.method private fetchTag()V
    .registers 3

    .line 943
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->savePossibleSimpleKey()V

    .line 946
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    .line 949
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanTag()Lorg/yaml/snakeyaml/tokens/Token;

    move-result-object v0

    .line 950
    .local v0, "tok":Lorg/yaml/snakeyaml/tokens/Token;
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 951
    return-void
.end method

.method private fetchValue()V
    .registers 8

    .line 838
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->possibleSimpleKeys:Ljava/util/Map;

    iget v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/scanner/SimpleKey;

    .line 839
    .local v0, "key":Lorg/yaml/snakeyaml/scanner/SimpleKey;
    const/4 v1, 0x0

    if-eqz v0, :cond_54

    .line 841
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/scanner/SimpleKey;->getTokenNumber()I

    move-result v3

    iget v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokensTaken:I

    sub-int/2addr v3, v4

    new-instance v4, Lorg/yaml/snakeyaml/tokens/KeyToken;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/scanner/SimpleKey;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v5

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/scanner/SimpleKey;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/yaml/snakeyaml/tokens/KeyToken;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 846
    iget v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    if-nez v2, :cond_51

    .line 847
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/scanner/SimpleKey;->getColumn()I

    move-result v2

    invoke-direct {p0, v2}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->addIndent(I)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 848
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/scanner/SimpleKey;->getTokenNumber()I

    move-result v3

    iget v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokensTaken:I

    sub-int/2addr v3, v4

    new-instance v4, Lorg/yaml/snakeyaml/tokens/BlockMappingStartToken;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/scanner/SimpleKey;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v5

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/scanner/SimpleKey;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/yaml/snakeyaml/tokens/BlockMappingStartToken;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 853
    :cond_51
    iput-boolean v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    goto :goto_97

    .line 859
    :cond_54
    iget v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    if-nez v2, :cond_6c

    .line 863
    iget-boolean v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    if-eqz v2, :cond_5d

    goto :goto_6c

    .line 864
    :cond_5d
    new-instance v1, Lorg/yaml/snakeyaml/scanner/ScannerException;

    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "mapping values are not allowed here"

    invoke-direct {v1, v3, v3, v4, v2}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v1

    .line 872
    :cond_6c
    :goto_6c
    iget v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    if-nez v2, :cond_8c

    .line 873
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->getColumn()I

    move-result v2

    invoke-direct {p0, v2}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->addIndent(I)Z

    move-result v2

    if-eqz v2, :cond_8c

    .line 874
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v2

    .line 875
    .local v2, "mark":Lorg/yaml/snakeyaml/error/Mark;
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    new-instance v4, Lorg/yaml/snakeyaml/tokens/BlockMappingStartToken;

    invoke-direct {v4, v2, v2}, Lorg/yaml/snakeyaml/tokens/BlockMappingStartToken;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 880
    .end local v2    # "mark":Lorg/yaml/snakeyaml/error/Mark;
    :cond_8c
    iget v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    if-nez v2, :cond_92

    const/4 v1, 0x1

    nop

    :cond_92
    iput-boolean v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    .line 883
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->removePossibleSimpleKey()V

    .line 886
    :goto_97
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v1

    .line 887
    .local v1, "startMark":Lorg/yaml/snakeyaml/error/Mark;
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    .line 888
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v2

    .line 889
    .local v2, "endMark":Lorg/yaml/snakeyaml/error/Mark;
    new-instance v3, Lorg/yaml/snakeyaml/tokens/ValueToken;

    invoke-direct {v3, v1, v2}, Lorg/yaml/snakeyaml/tokens/ValueToken;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    .line 890
    .local v3, "token":Lorg/yaml/snakeyaml/tokens/Token;
    iget-object v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 891
    return-void
.end method

.method private needMoreTokens()Z
    .registers 5

    .line 269
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->done:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 270
    return v1

    .line 273
    :cond_6
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_10

    .line 274
    return v2

    .line 278
    :cond_10
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->stalePossibleSimpleKeys()V

    .line 279
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->nextPossibleSimpleKey()I

    move-result v0

    iget v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokensTaken:I

    if-ne v0, v3, :cond_1d

    const/4 v1, 0x1

    nop

    :cond_1d
    return v1
.end method

.method private nextPossibleSimpleKey()I
    .registers 2

    .line 428
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->possibleSimpleKeys:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 429
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->possibleSimpleKeys:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/scanner/SimpleKey;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/scanner/SimpleKey;->getTokenNumber()I

    move-result v0

    return v0

    .line 431
    :cond_1d
    const/4 v0, -0x1

    return v0
.end method

.method private removePossibleSimpleKey()V
    .registers 7

    .line 505
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->possibleSimpleKeys:Ljava/util/Map;

    iget v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/scanner/SimpleKey;

    .line 506
    .local v0, "key":Lorg/yaml/snakeyaml/scanner/SimpleKey;
    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/scanner/SimpleKey;->isRequired()Z

    move-result v1

    if-nez v1, :cond_17

    goto :goto_2b

    .line 507
    :cond_17
    new-instance v1, Lorg/yaml/snakeyaml/scanner/ScannerException;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/scanner/SimpleKey;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v2

    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v3

    const-string v4, "while scanning a simple key"

    const-string v5, "could not found expected \':\'"

    invoke-direct {v1, v4, v2, v5, v3}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v1

    .line 510
    :cond_2b
    :goto_2b
    return-void
.end method

.method private savePossibleSimpleKey()V
    .registers 11

    .line 480
    iget v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    if-nez v0, :cond_10

    iget v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->indent:I

    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->getColumn()I

    move-result v1

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 482
    .local v0, "required":Z
    :goto_11
    iget-boolean v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    if-nez v1, :cond_20

    if-nez v0, :cond_18

    goto :goto_20

    .line 486
    :cond_18
    new-instance v1, Lorg/yaml/snakeyaml/error/YAMLException;

    const-string v2, "A simple key is required only if it is the first token in the current line"

    invoke-direct {v1, v2}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 492
    :cond_20
    :goto_20
    iget-boolean v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    if-eqz v1, :cond_5c

    .line 493
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->removePossibleSimpleKey()V

    .line 494
    iget v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokensTaken:I

    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int v8, v1, v2

    .line 495
    .local v8, "tokenNumber":I
    new-instance v9, Lorg/yaml/snakeyaml/scanner/SimpleKey;

    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->getIndex()I

    move-result v4

    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->getLine()I

    move-result v5

    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->getColumn()I

    move-result v6

    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v7

    move-object v1, v9

    move v2, v8

    move v3, v0

    invoke-direct/range {v1 .. v7}, Lorg/yaml/snakeyaml/scanner/SimpleKey;-><init>(IZIIILorg/yaml/snakeyaml/error/Mark;)V

    .line 497
    .local v1, "key":Lorg/yaml/snakeyaml/scanner/SimpleKey;
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->possibleSimpleKeys:Ljava/util/Map;

    iget v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    .end local v1    # "key":Lorg/yaml/snakeyaml/scanner/SimpleKey;
    .end local v8    # "tokenNumber":I
    :cond_5c
    return-void
.end method

.method private scanAnchor(Z)Lorg/yaml/snakeyaml/tokens/Token;
    .registers 12
    .param p1, "isAnchor"    # Z

    .line 1421
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v0

    .line 1422
    .local v0, "startMark":Lorg/yaml/snakeyaml/error/Mark;
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v1

    .line 1423
    .local v1, "indicator":C
    const/16 v2, 0x2a

    if-ne v1, v2, :cond_13

    const-string v2, "alias"

    goto :goto_15

    :cond_13
    const-string v2, "anchor"

    .line 1424
    .local v2, "name":Ljava/lang/String;
    :goto_15
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    .line 1425
    const/4 v3, 0x0

    .line 1426
    .local v3, "length":I
    iget-object v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v4, v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)C

    move-result v4

    .line 1427
    .local v4, "ch":C
    :goto_21
    sget-object v5, Lorg/yaml/snakeyaml/scanner/Constant;->ALPHA:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v5, v4}, Lorg/yaml/snakeyaml/scanner/Constant;->has(C)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 1428
    add-int/lit8 v3, v3, 0x1

    .line 1429
    iget-object v5, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v5, v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)C

    move-result v4

    goto :goto_21

    .line 1431
    :cond_32
    if-eqz v3, :cond_9f

    .line 1436
    iget-object v5, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v5, v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->prefixForward(I)Ljava/lang/String;

    move-result-object v5

    .line 1437
    .local v5, "value":Ljava/lang/String;
    iget-object v6, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v6}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v4

    .line 1438
    sget-object v6, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_T_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    const-string v7, "?:,]}%@`"

    invoke-virtual {v6, v4, v7}, Lorg/yaml/snakeyaml/scanner/Constant;->hasNo(CLjava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5e

    .line 1443
    iget-object v6, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v6}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v6

    .line 1445
    .local v6, "endMark":Lorg/yaml/snakeyaml/error/Mark;
    if-eqz p1, :cond_58

    .line 1446
    new-instance v7, Lorg/yaml/snakeyaml/tokens/AnchorToken;

    invoke-direct {v7, v5, v0, v6}, Lorg/yaml/snakeyaml/tokens/AnchorToken;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    goto :goto_5d

    .line 1448
    :cond_58
    new-instance v7, Lorg/yaml/snakeyaml/tokens/AliasToken;

    invoke-direct {v7, v5, v0, v6}, Lorg/yaml/snakeyaml/tokens/AliasToken;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    .line 1450
    .local v7, "tok":Lorg/yaml/snakeyaml/tokens/Token;
    :goto_5d
    return-object v7

    .line 1439
    .end local v6    # "endMark":Lorg/yaml/snakeyaml/error/Mark;
    .end local v7    # "tok":Lorg/yaml/snakeyaml/tokens/Token;
    :cond_5e
    new-instance v6, Lorg/yaml/snakeyaml/scanner/ScannerException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "while scanning an "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "expected alphabetic or numeric character, but found "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v9}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v9}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v9

    invoke-direct {v6, v7, v0, v8, v9}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v6

    .line 1432
    .end local v5    # "value":Ljava/lang/String;
    :cond_9f
    new-instance v5, Lorg/yaml/snakeyaml/scanner/ScannerException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "while scanning an "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "expected alphabetic or numeric character, but found but found "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v8}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v8

    invoke-direct {v5, v6, v0, v7, v8}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v5
.end method

.method private scanBlockScalar(C)Lorg/yaml/snakeyaml/tokens/Token;
    .registers 23
    .param p1, "style"    # C

    .line 1556
    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/16 v2, 0x3e

    move/from16 v9, p1

    if-ne v9, v2, :cond_b

    .line 1557
    const/4 v2, 0x1

    goto :goto_c

    .line 1559
    :cond_b
    const/4 v2, 0x0

    .line 1561
    .local v2, "folded":Z
    :goto_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v3

    .line 1562
    .local v10, "chunks":Ljava/lang/StringBuilder;
    iget-object v3, v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v11

    .line 1564
    .local v11, "startMark":Lorg/yaml/snakeyaml/error/Mark;
    iget-object v3, v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    .line 1565
    invoke-direct {v0, v11}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanBlockScalarIndicators(Lorg/yaml/snakeyaml/error/Mark;)Lorg/yaml/snakeyaml/scanner/ScannerImpl$Chomping;

    move-result-object v12

    .line 1566
    .local v12, "chompi":Lorg/yaml/snakeyaml/scanner/ScannerImpl$Chomping;
    invoke-virtual {v12}, Lorg/yaml/snakeyaml/scanner/ScannerImpl$Chomping;->getIncrement()I

    move-result v13

    .line 1567
    .local v13, "increment":I
    invoke-direct {v0, v11}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanBlockScalarIgnoredLine(Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;

    .line 1570
    iget v3, v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->indent:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    .line 1571
    .local v3, "minIndent":I
    if-ge v3, v4, :cond_2f

    .line 1572
    const/4 v3, 0x1

    .line 1574
    .end local v3    # "minIndent":I
    .local v14, "minIndent":I
    :cond_2f
    move v14, v3

    const/4 v3, 0x0

    .line 1575
    .local v3, "breaks":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1576
    .local v5, "maxIndent":I
    const/4 v6, 0x0

    .line 1578
    .local v6, "indent":I
    const/4 v7, -0x1

    if-ne v13, v7, :cond_55

    .line 1579
    invoke-direct/range {p0 .. p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanBlockScalarIndentation()[Ljava/lang/Object;

    move-result-object v8

    .line 1580
    .local v8, "brme":[Ljava/lang/Object;
    aget-object v15, v8, v1

    move-object v3, v15

    check-cast v3, Ljava/lang/String;

    .line 1581
    aget-object v15, v8, v4

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1582
    const/4 v15, 0x2

    aget-object v15, v8, v15

    check-cast v15, Lorg/yaml/snakeyaml/error/Mark;

    .line 1583
    .local v15, "endMark":Lorg/yaml/snakeyaml/error/Mark;
    invoke-static {v14, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1584
    .end local v8    # "brme":[Ljava/lang/Object;
    nop

    .line 1588
    .end local v5    # "maxIndent":I
    .end local v6    # "indent":I
    .local v8, "indent":I
    .local v16, "maxIndent":I
    :goto_51
    move/from16 v16, v5

    move v8, v6

    goto :goto_67

    .line 1585
    .end local v8    # "indent":I
    .end local v15    # "endMark":Lorg/yaml/snakeyaml/error/Mark;
    .end local v16    # "maxIndent":I
    .restart local v5    # "maxIndent":I
    .restart local v6    # "indent":I
    :cond_55
    add-int v8, v14, v13

    add-int/lit8 v6, v8, -0x1

    .line 1586
    invoke-direct {v0, v6}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanBlockScalarBreaks(I)[Ljava/lang/Object;

    move-result-object v8

    .line 1587
    .local v8, "brme":[Ljava/lang/Object;
    aget-object v15, v8, v1

    move-object v3, v15

    check-cast v3, Ljava/lang/String;

    .line 1588
    aget-object v15, v8, v4

    check-cast v15, Lorg/yaml/snakeyaml/error/Mark;

    goto :goto_51

    .end local v5    # "maxIndent":I
    .end local v6    # "indent":I
    .local v8, "indent":I
    .restart local v15    # "endMark":Lorg/yaml/snakeyaml/error/Mark;
    .restart local v16    # "maxIndent":I
    :goto_67
    move-object v5, v15

    .line 1591
    .end local v15    # "endMark":Lorg/yaml/snakeyaml/error/Mark;
    .local v5, "endMark":Lorg/yaml/snakeyaml/error/Mark;
    const-string v6, ""

    .line 1594
    .local v6, "lineBreak":Ljava/lang/String;
    :goto_6a
    iget-object v15, v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v15}, Lorg/yaml/snakeyaml/reader/StreamReader;->getColumn()I

    move-result v15

    if-ne v15, v8, :cond_106

    iget-object v15, v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v15}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v15

    if-eqz v15, :cond_106

    .line 1595
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1596
    const-string v15, " \t"

    iget-object v4, v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v4}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v4

    invoke-virtual {v15, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ne v4, v7, :cond_8d

    const/4 v4, 0x1

    goto :goto_8e

    :cond_8d
    const/4 v4, 0x0

    .line 1597
    .local v4, "leadingNonSpace":Z
    :goto_8e
    const/4 v15, 0x0

    .line 1598
    .local v15, "length":I
    :goto_8f
    sget-object v7, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_OR_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    iget-object v1, v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1, v15}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)C

    move-result v1

    invoke-virtual {v7, v1}, Lorg/yaml/snakeyaml/scanner/Constant;->hasNo(C)Z

    move-result v1

    if-eqz v1, :cond_a2

    .line 1599
    add-int/lit8 v15, v15, 0x1

    .line 1597
    const/4 v1, 0x0

    const/4 v7, -0x1

    goto :goto_8f

    .line 1601
    :cond_a2
    iget-object v1, v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1, v15}, Lorg/yaml/snakeyaml/reader/StreamReader;->prefixForward(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1602
    invoke-direct/range {p0 .. p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanLineBreak()Ljava/lang/String;

    move-result-object v6

    .line 1603
    invoke-direct {v0, v8}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanBlockScalarBreaks(I)[Ljava/lang/Object;

    move-result-object v1

    .line 1604
    .local v1, "brme":[Ljava/lang/Object;
    const/4 v7, 0x0

    aget-object v19, v1, v7

    move-object/from16 v3, v19

    check-cast v3, Ljava/lang/String;

    .line 1605
    const/16 v17, 0x1

    aget-object v19, v1, v17

    move-object/from16 v5, v19

    check-cast v5, Lorg/yaml/snakeyaml/error/Mark;

    .line 1606
    iget-object v7, v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v7}, Lorg/yaml/snakeyaml/reader/StreamReader;->getColumn()I

    move-result v7

    if-ne v7, v8, :cond_106

    iget-object v7, v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v7}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v7

    if-eqz v7, :cond_106

    .line 1611
    if-eqz v2, :cond_fb

    const-string v7, "\n"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_fb

    if-eqz v4, :cond_fb

    const-string v7, " \t"

    move-object/from16 v20, v1

    .end local v1    # "brme":[Ljava/lang/Object;
    .local v20, "brme":[Ljava/lang/Object;
    iget-object v1, v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v1

    invoke-virtual {v7, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v7, -0x1

    if-ne v1, v7, :cond_fe

    .line 1613
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_101

    .line 1614
    const-string v1, " "

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_101

    .line 1617
    .end local v20    # "brme":[Ljava/lang/Object;
    .restart local v1    # "brme":[Ljava/lang/Object;
    :cond_fb
    move-object/from16 v20, v1

    const/4 v7, -0x1

    .end local v1    # "brme":[Ljava/lang/Object;
    .restart local v20    # "brme":[Ljava/lang/Object;
    :cond_fe
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1624
    .end local v4    # "leadingNonSpace":Z
    .end local v15    # "length":I
    .end local v20    # "brme":[Ljava/lang/Object;
    :cond_101
    :goto_101
    nop

    .line 1591
    const/4 v1, 0x0

    const/4 v4, 0x1

    goto/16 :goto_6a

    .line 1626
    :cond_106
    move-object v15, v3

    move-object/from16 v17, v5

    move-object v1, v6

    .end local v3    # "breaks":Ljava/lang/String;
    .end local v5    # "endMark":Lorg/yaml/snakeyaml/error/Mark;
    .end local v6    # "lineBreak":Ljava/lang/String;
    .local v1, "lineBreak":Ljava/lang/String;
    .local v15, "breaks":Ljava/lang/String;
    .local v17, "endMark":Lorg/yaml/snakeyaml/error/Mark;
    invoke-virtual {v12}, Lorg/yaml/snakeyaml/scanner/ScannerImpl$Chomping;->chompTailIsNotFalse()Z

    move-result v3

    if-eqz v3, :cond_113

    .line 1627
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1629
    :cond_113
    invoke-virtual {v12}, Lorg/yaml/snakeyaml/scanner/ScannerImpl$Chomping;->chompTailIsTrue()Z

    move-result v3

    if-eqz v3, :cond_11c

    .line 1630
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1633
    :cond_11c
    new-instance v18, Lorg/yaml/snakeyaml/tokens/ScalarToken;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v3, v18

    move-object v6, v11

    move-object/from16 v7, v17

    move/from16 v19, v8

    .end local v8    # "indent":I
    .local v19, "indent":I
    move/from16 v8, p1

    invoke-direct/range {v3 .. v8}, Lorg/yaml/snakeyaml/tokens/ScalarToken;-><init>(Ljava/lang/String;ZLorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;C)V

    return-object v18
.end method

.method private scanBlockScalarBreaks(I)[Ljava/lang/Object;
    .registers 10
    .param p1, "indent"    # I

    .line 1772
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1773
    .local v0, "chunks":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v1

    .line 1774
    .local v1, "endMark":Lorg/yaml/snakeyaml/error/Mark;
    const/4 v2, 0x0

    .line 1775
    .local v2, "ff":I
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->getColumn()I

    move-result v3

    .line 1778
    .local v3, "col":I
    :goto_12
    const/16 v4, 0x20

    if-ge v3, p1, :cond_23

    iget-object v5, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v5, v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)C

    move-result v5

    if-ne v5, v4, :cond_23

    .line 1779
    add-int/lit8 v2, v2, 0x1

    .line 1780
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 1782
    :cond_23
    if-lez v2, :cond_2a

    .line 1783
    iget-object v5, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v5, v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward(I)V

    .line 1787
    :cond_2a
    const/4 v5, 0x0

    .line 1788
    .local v5, "lineBreak":Ljava/lang/String;
    :cond_2b
    :goto_2b
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanLineBreak()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_5d

    .line 1789
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1790
    iget-object v6, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v6}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v1

    .line 1793
    const/4 v2, 0x0

    .line 1794
    iget-object v6, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v6}, Lorg/yaml/snakeyaml/reader/StreamReader;->getColumn()I

    move-result v3

    .line 1795
    :goto_46
    if-ge v3, p1, :cond_55

    iget-object v6, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v6, v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)C

    move-result v6

    if-ne v6, v4, :cond_55

    .line 1796
    add-int/lit8 v2, v2, 0x1

    .line 1797
    add-int/lit8 v3, v3, 0x1

    goto :goto_46

    .line 1799
    :cond_55
    if-lez v2, :cond_2b

    .line 1800
    iget-object v6, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v6, v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward(I)V

    goto :goto_2b

    .line 1804
    :cond_5d
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x1

    aput-object v1, v4, v6

    return-object v4
.end method

.method private scanBlockScalarIgnoredLine(Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;
    .registers 9
    .param p1, "startMark"    # Lorg/yaml/snakeyaml/error/Mark;

    .line 1706
    const/4 v0, 0x0

    .line 1708
    .local v0, "ff":I
    :goto_1
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1, v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_e

    .line 1709
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1711
    :cond_e
    if-lez v0, :cond_15

    .line 1712
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1, v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward(I)V

    .line 1715
    :cond_15
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v1

    const/16 v2, 0x23

    if-ne v1, v2, :cond_38

    .line 1716
    const/4 v0, 0x0

    .line 1717
    :goto_20
    sget-object v1, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_OR_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2, v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)C

    move-result v2

    invoke-virtual {v1, v2}, Lorg/yaml/snakeyaml/scanner/Constant;->hasNo(C)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 1718
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 1720
    :cond_31
    if-lez v0, :cond_38

    .line 1721
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1, v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward(I)V

    .line 1726
    :cond_38
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v1

    .line 1727
    .local v1, "ch":C
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanLineBreak()Ljava/lang/String;

    move-result-object v2

    .line 1728
    .local v2, "lineBreak":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_6a

    if-nez v1, :cond_4b

    goto :goto_6a

    .line 1729
    :cond_4b
    new-instance v3, Lorg/yaml/snakeyaml/scanner/ScannerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "expected a comment or a line break, but found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v5}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v5

    const-string v6, "while scanning a block scalar"

    invoke-direct {v3, v6, p1, v4, v5}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v3

    .line 1732
    :cond_6a
    :goto_6a
    return-object v2
.end method

.method private scanBlockScalarIndentation()[Ljava/lang/Object;
    .registers 7

    .line 1744
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1745
    .local v0, "chunks":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 1746
    .local v1, "maxIndent":I
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v2

    .line 1750
    .local v2, "endMark":Lorg/yaml/snakeyaml/error/Mark;
    :cond_c
    :goto_c
    sget-object v3, Lorg/yaml/snakeyaml/scanner/Constant;->LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    iget-object v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v4}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v4

    const-string v5, " \r"

    invoke-virtual {v3, v4, v5}, Lorg/yaml/snakeyaml/scanner/Constant;->has(CLjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 1751
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_34

    .line 1754
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanLineBreak()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1755
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v2

    goto :goto_c

    .line 1760
    :cond_34
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    .line 1761
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->getColumn()I

    move-result v3

    if-le v3, v1, :cond_c

    .line 1762
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->getColumn()I

    move-result v1

    goto :goto_c

    .line 1767
    :cond_48
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v2, v3, v4

    return-object v3
.end method

.method private scanBlockScalarIndicators(Lorg/yaml/snakeyaml/error/Mark;)Lorg/yaml/snakeyaml/scanner/ScannerImpl$Chomping;
    .registers 9
    .param p1, "startMark"    # Lorg/yaml/snakeyaml/error/Mark;

    .line 1653
    const/4 v0, 0x0

    .line 1654
    .local v0, "chomping":Ljava/lang/Boolean;
    const/4 v1, -0x1

    .line 1655
    .local v1, "increment":I
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v2

    .line 1656
    .local v2, "ch":C
    const/16 v3, 0x2d

    const/16 v4, 0x2b

    if-eq v2, v3, :cond_4d

    if-ne v2, v4, :cond_11

    goto :goto_4d

    .line 1673
    :cond_11
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_85

    .line 1674
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1675
    if-eqz v1, :cond_3d

    .line 1680
    iget-object v5, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v5}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    .line 1681
    iget-object v5, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v5}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v2

    .line 1682
    if-eq v2, v3, :cond_30

    if-ne v2, v4, :cond_85

    .line 1683
    :cond_30
    if-ne v2, v4, :cond_35

    .line 1684
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_37

    .line 1686
    :cond_35
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1688
    :goto_37
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    goto :goto_85

    .line 1676
    :cond_3d
    new-instance v3, Lorg/yaml/snakeyaml/scanner/ScannerException;

    iget-object v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v4}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v4

    const-string v5, "while scanning a block scalar"

    const-string v6, "expected indentation indicator in the range 1-9, but found 0"

    invoke-direct {v3, v5, p1, v6, v4}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v3

    .line 1657
    :cond_4d
    :goto_4d
    if-ne v2, v4, :cond_52

    .line 1658
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_54

    .line 1660
    :cond_52
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1662
    :goto_54
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    .line 1663
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v2

    .line 1664
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_85

    .line 1665
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1666
    if-eqz v1, :cond_75

    .line 1671
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    goto :goto_85

    .line 1667
    :cond_75
    new-instance v3, Lorg/yaml/snakeyaml/scanner/ScannerException;

    iget-object v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v4}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v4

    const-string v5, "while scanning a block scalar"

    const-string v6, "expected indentation indicator in the range 1-9, but found 0"

    invoke-direct {v3, v5, p1, v6, v4}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v3

    .line 1691
    :cond_85
    :goto_85
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v2

    .line 1692
    sget-object v3, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v3, v2}, Lorg/yaml/snakeyaml/scanner/Constant;->hasNo(C)Z

    move-result v3

    if-nez v3, :cond_99

    .line 1697
    new-instance v3, Lorg/yaml/snakeyaml/scanner/ScannerImpl$Chomping;

    invoke-direct {v3, v0, v1}, Lorg/yaml/snakeyaml/scanner/ScannerImpl$Chomping;-><init>(Ljava/lang/Boolean;I)V

    return-object v3

    .line 1693
    :cond_99
    new-instance v3, Lorg/yaml/snakeyaml/scanner/ScannerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "expected chomping or indentation indicators, but found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v5}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v5

    const-string v6, "while scanning a block scalar"

    invoke-direct {v3, v6, p1, v4, v5}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v3
.end method

.method private scanDirective()Lorg/yaml/snakeyaml/tokens/Token;
    .registers 8

    .line 1216
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v0

    .line 1218
    .local v0, "startMark":Lorg/yaml/snakeyaml/error/Mark;
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    .line 1219
    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanDirectiveName(Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;

    move-result-object v1

    .line 1220
    .local v1, "name":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1221
    .local v2, "value":Ljava/util/List;, "Ljava/util/List<*>;"
    const-string v3, "YAML"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 1222
    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanYamlDirectiveValue(Lorg/yaml/snakeyaml/error/Mark;)Ljava/util/List;

    move-result-object v2

    .line 1223
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v3

    goto :goto_55

    .line 1224
    :cond_23
    const-string v3, "TAG"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 1225
    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanTagDirectiveValue(Lorg/yaml/snakeyaml/error/Mark;)Ljava/util/List;

    move-result-object v2

    .line 1226
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v3

    goto :goto_55

    .line 1228
    :cond_36
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v3

    .line 1229
    .local v3, "endMark":Lorg/yaml/snakeyaml/error/Mark;
    const/4 v4, 0x0

    .line 1230
    .local v4, "ff":I
    :goto_3d
    sget-object v5, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_OR_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    iget-object v6, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v6, v4}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)C

    move-result v6

    invoke-virtual {v5, v6}, Lorg/yaml/snakeyaml/scanner/Constant;->hasNo(C)Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 1231
    add-int/lit8 v4, v4, 0x1

    goto :goto_3d

    .line 1233
    :cond_4e
    if-lez v4, :cond_55

    .line 1234
    iget-object v5, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v5, v4}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward(I)V

    .line 1237
    .end local v4    # "ff":I
    :cond_55
    :goto_55
    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanDirectiveIgnoredLine(Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;

    .line 1238
    new-instance v4, Lorg/yaml/snakeyaml/tokens/DirectiveToken;

    invoke-direct {v4, v1, v2, v0, v3}, Lorg/yaml/snakeyaml/tokens/DirectiveToken;-><init>(Ljava/lang/String;Ljava/util/List;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    return-object v4
.end method

.method private scanDirectiveIgnoredLine(Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;
    .registers 9
    .param p1, "startMark"    # Lorg/yaml/snakeyaml/error/Mark;

    .line 1384
    const/4 v0, 0x0

    .line 1385
    .local v0, "ff":I
    :goto_1
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1, v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_e

    .line 1386
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1388
    :cond_e
    if-lez v0, :cond_15

    .line 1389
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1, v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward(I)V

    .line 1391
    :cond_15
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v1

    const/16 v2, 0x23

    if-ne v1, v2, :cond_36

    .line 1392
    const/4 v0, 0x0

    .line 1393
    :goto_20
    sget-object v1, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_OR_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2, v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)C

    move-result v2

    invoke-virtual {v1, v2}, Lorg/yaml/snakeyaml/scanner/Constant;->hasNo(C)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 1394
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 1396
    :cond_31
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1, v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward(I)V

    .line 1398
    :cond_36
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v1

    .line 1399
    .local v1, "ch":C
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanLineBreak()Ljava/lang/String;

    move-result-object v2

    .line 1400
    .local v2, "lineBreak":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_75

    if-nez v1, :cond_49

    goto :goto_75

    .line 1401
    :cond_49
    new-instance v3, Lorg/yaml/snakeyaml/scanner/ScannerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "expected a comment or a line break, but found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v5}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v5

    const-string v6, "while scanning a directive"

    invoke-direct {v3, v6, p1, v4, v5}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v3

    .line 1405
    :cond_75
    :goto_75
    return-object v2
.end method

.method private scanDirectiveName(Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;
    .registers 9
    .param p1, "startMark"    # Lorg/yaml/snakeyaml/error/Mark;

    .line 1249
    const/4 v0, 0x0

    .line 1253
    .local v0, "length":I
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1, v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)C

    move-result v1

    .line 1254
    .local v1, "ch":C
    :goto_7
    sget-object v2, Lorg/yaml/snakeyaml/scanner/Constant;->ALPHA:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v2, v1}, Lorg/yaml/snakeyaml/scanner/Constant;->has(C)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1255
    add-int/lit8 v0, v0, 0x1

    .line 1256
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2, v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)C

    move-result v1

    goto :goto_7

    .line 1259
    :cond_18
    if-eqz v0, :cond_5b

    .line 1264
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2, v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->prefixForward(I)Ljava/lang/String;

    move-result-object v2

    .line 1265
    .local v2, "value":Ljava/lang/String;
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v1

    .line 1266
    sget-object v3, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v3, v1}, Lorg/yaml/snakeyaml/scanner/Constant;->hasNo(C)Z

    move-result v3

    if-nez v3, :cond_2f

    .line 1271
    return-object v2

    .line 1267
    :cond_2f
    new-instance v3, Lorg/yaml/snakeyaml/scanner/ScannerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "expected alphabetic or numeric character, but found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v5}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v5

    const-string v6, "while scanning a directive"

    invoke-direct {v3, v6, p1, v4, v5}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v3

    .line 1260
    .end local v2    # "value":Ljava/lang/String;
    :cond_5b
    new-instance v2, Lorg/yaml/snakeyaml/scanner/ScannerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "expected alphabetic or numeric character, but found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v4}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v4

    const-string v5, "while scanning a directive"

    invoke-direct {v2, v5, p1, v3, v4}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v2
.end method

.method private scanFlowScalar(C)Lorg/yaml/snakeyaml/tokens/Token;
    .registers 14
    .param p1, "style"    # C

    .line 1827
    const/16 v0, 0x22

    if-ne p1, v0, :cond_6

    .line 1828
    const/4 v0, 0x1

    goto :goto_7

    .line 1830
    :cond_6
    const/4 v0, 0x0

    .line 1832
    .local v0, "_double":Z
    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1833
    .local v1, "chunks":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v2

    .line 1834
    .local v2, "startMark":Lorg/yaml/snakeyaml/error/Mark;
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v9

    .line 1835
    .local v9, "quote":C
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    .line 1836
    invoke-direct {p0, v0, v2}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanFlowScalarNonSpaces(ZLorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1837
    :goto_24
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v3

    if-eq v3, v9, :cond_3b

    .line 1838
    invoke-direct {p0, v2}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanFlowScalarSpaces(Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1839
    invoke-direct {p0, v0, v2}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanFlowScalarNonSpaces(ZLorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_24

    .line 1841
    :cond_3b
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    .line 1842
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v10

    .line 1843
    .local v10, "endMark":Lorg/yaml/snakeyaml/error/Mark;
    new-instance v11, Lorg/yaml/snakeyaml/tokens/ScalarToken;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v3, v11

    move-object v6, v2

    move-object v7, v10

    move v8, p1

    invoke-direct/range {v3 .. v8}, Lorg/yaml/snakeyaml/tokens/ScalarToken;-><init>(Ljava/lang/String;ZLorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;C)V

    return-object v11
.end method

.method private scanFlowScalarBreaks(Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;
    .registers 8
    .param p1, "startMark"    # Lorg/yaml/snakeyaml/error/Mark;

    .line 1943
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1947
    .local v0, "chunks":Ljava/lang/StringBuilder;
    :goto_5
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->prefix(I)Ljava/lang/String;

    move-result-object v1

    .line 1948
    .local v1, "prefix":Ljava/lang/String;
    const-string v3, "---"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    const-string v3, "..."

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    :cond_1c
    sget-object v3, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_T_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    iget-object v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v4, v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)C

    move-result v2

    invoke-virtual {v3, v2}, Lorg/yaml/snakeyaml/scanner/Constant;->has(C)Z

    move-result v2

    if-nez v2, :cond_52

    .line 1954
    :cond_2a
    :goto_2a
    const-string v2, " \t"

    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3f

    .line 1955
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    goto :goto_2a

    .line 1959
    :cond_3f
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanLineBreak()Ljava/lang/String;

    move-result-object v2

    .line 1960
    .local v2, "lineBreak":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4d

    .line 1961
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1965
    .end local v1    # "prefix":Ljava/lang/String;
    .end local v2    # "lineBreak":Ljava/lang/String;
    goto :goto_5

    .line 1963
    .restart local v1    # "prefix":Ljava/lang/String;
    .restart local v2    # "lineBreak":Ljava/lang/String;
    :cond_4d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1950
    .end local v2    # "lineBreak":Ljava/lang/String;
    :cond_52
    new-instance v2, Lorg/yaml/snakeyaml/scanner/ScannerException;

    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v3

    const-string v4, "while scanning a quoted scalar"

    const-string v5, "found unexpected document separator"

    invoke-direct {v2, v4, p1, v5, v3}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v2
.end method

.method private scanFlowScalarNonSpaces(ZLorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;
    .registers 11
    .param p1, "doubleQuoted"    # Z
    .param p2, "startMark"    # Lorg/yaml/snakeyaml/error/Mark;

    .line 1851
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1855
    .local v0, "chunks":Ljava/lang/StringBuilder;
    :goto_5
    const/4 v1, 0x0

    .line 1856
    .local v1, "length":I
    :goto_6
    sget-object v2, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_T_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3, v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)C

    move-result v3

    const-string v4, "\'\"\\"

    invoke-virtual {v2, v3, v4}, Lorg/yaml/snakeyaml/scanner/Constant;->hasNo(CLjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1857
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1859
    :cond_19
    if-eqz v1, :cond_24

    .line 1860
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2, v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->prefixForward(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1864
    :cond_24
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v2

    .line 1865
    .local v2, "ch":C
    const/16 v3, 0x27

    if-nez p1, :cond_46

    if-ne v2, v3, :cond_46

    iget-object v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)C

    move-result v4

    if-ne v4, v3, :cond_46

    .line 1866
    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1867
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward(I)V

    goto/16 :goto_115

    .line 1868
    :cond_46
    if-eqz p1, :cond_4a

    if-eq v2, v3, :cond_55

    :cond_4a
    if-nez p1, :cond_5f

    const-string v3, "\"\\"

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_5f

    .line 1869
    :cond_55
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1870
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    goto/16 :goto_115

    .line 1871
    :cond_5f
    if-eqz p1, :cond_143

    const/16 v3, 0x5c

    if-ne v2, v3, :cond_143

    .line 1872
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    .line 1873
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v2

    .line 1874
    sget-object v3, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_92

    .line 1878
    sget-object v3, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1879
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    goto/16 :goto_115

    .line 1880
    :cond_92
    sget-object v3, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->ESCAPE_CODES:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_104

    .line 1883
    sget-object v3, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->ESCAPE_CODES:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1884
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    .line 1885
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3, v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->prefix(I)Ljava/lang/String;

    move-result-object v3

    .line 1886
    .local v3, "hex":Ljava/lang/String;
    sget-object v4, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->NOT_HEXA:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-nez v4, :cond_dd

    .line 1892
    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .line 1893
    .local v4, "decimal":I
    new-instance v5, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([C)V

    .line 1894
    .local v5, "unicode":Ljava/lang/String;
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1895
    iget-object v6, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v6, v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward(I)V

    .line 1896
    .end local v3    # "hex":Ljava/lang/String;
    .end local v4    # "decimal":I
    .end local v5    # "unicode":Ljava/lang/String;
    goto :goto_115

    .line 1887
    .restart local v3    # "hex":Ljava/lang/String;
    :cond_dd
    new-instance v4, Lorg/yaml/snakeyaml/scanner/ScannerException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "expected escape sequence of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " hexadecimal numbers, but found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v6}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v6

    const-string v7, "while scanning a double-quoted scalar"

    invoke-direct {v4, v7, p2, v5, v6}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v4

    .line 1896
    .end local v3    # "hex":Ljava/lang/String;
    :cond_104
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanLineBreak()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_117

    .line 1897
    invoke-direct {p0, p2}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanFlowScalarBreaks(Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1906
    .end local v1    # "length":I
    .end local v2    # "ch":C
    :goto_115
    goto/16 :goto_5

    .line 1899
    .restart local v1    # "length":I
    .restart local v2    # "ch":C
    :cond_117
    new-instance v3, Lorg/yaml/snakeyaml/scanner/ScannerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "found unknown escape character "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v5}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v5

    const-string v6, "while scanning a double-quoted scalar"

    invoke-direct {v3, v6, p2, v4, v5}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v3

    .line 1904
    :cond_143
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private scanFlowScalarSpaces(Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;
    .registers 10
    .param p1, "startMark"    # Lorg/yaml/snakeyaml/error/Mark;

    .line 1911
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1912
    .local v0, "chunks":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 1915
    .local v1, "length":I
    :goto_6
    const-string v2, " \t"

    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3, v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_18

    .line 1916
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1918
    :cond_18
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2, v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->prefixForward(I)Ljava/lang/String;

    move-result-object v2

    .line 1919
    .local v2, "whitespaces":Ljava/lang/String;
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v3

    .line 1920
    .local v3, "ch":C
    if-eqz v3, :cond_57

    .line 1926
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanLineBreak()Ljava/lang/String;

    move-result-object v4

    .line 1927
    .local v4, "lineBreak":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_4f

    .line 1928
    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanFlowScalarBreaks(Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;

    move-result-object v5

    .line 1929
    .local v5, "breaks":Ljava/lang/String;
    const-string v6, "\n"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_40

    .line 1930
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4b

    .line 1931
    :cond_40
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_4b

    .line 1932
    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1934
    :cond_4b
    :goto_4b
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1935
    .end local v5    # "breaks":Ljava/lang/String;
    goto :goto_52

    .line 1936
    :cond_4f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1938
    :goto_52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 1922
    .end local v4    # "lineBreak":Ljava/lang/String;
    :cond_57
    new-instance v4, Lorg/yaml/snakeyaml/scanner/ScannerException;

    iget-object v5, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v5}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v5

    const-string v6, "while scanning a quoted scalar"

    const-string v7, "found unexpected end of stream"

    invoke-direct {v4, v6, p1, v7, v5}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v4
.end method

.method private scanLineBreak()Ljava/lang/String;
    .registers 5

    .line 2242
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v0

    .line 2243
    .local v0, "ch":C
    const/16 v1, 0xa

    const/16 v2, 0xd

    if-eq v0, v2, :cond_29

    if-eq v0, v1, :cond_29

    const/16 v3, 0x85

    if-ne v0, v3, :cond_13

    goto :goto_29

    .line 2250
    :cond_13
    const/16 v1, 0x2028

    if-eq v0, v1, :cond_1f

    const/16 v1, 0x2029

    if-ne v0, v1, :cond_1c

    goto :goto_1f

    .line 2254
    :cond_1c
    const-string v1, ""

    return-object v1

    .line 2251
    :cond_1f
    :goto_1f
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    .line 2252
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2244
    :cond_29
    :goto_29
    if-ne v0, v2, :cond_3b

    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)C

    move-result v2

    if-ne v1, v2, :cond_3b

    .line 2245
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward(I)V

    goto :goto_40

    .line 2247
    :cond_3b
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    .line 2249
    :goto_40
    const-string v1, "\n"

    return-object v1
.end method

.method private scanPlain()Lorg/yaml/snakeyaml/tokens/Token;
    .registers 15

    .line 1980
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1981
    .local v0, "chunks":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v1

    .line 1982
    .local v1, "startMark":Lorg/yaml/snakeyaml/error/Mark;
    move-object v2, v1

    .line 1983
    .local v2, "endMark":Lorg/yaml/snakeyaml/error/Mark;
    iget v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->indent:I

    const/4 v4, 0x1

    add-int/lit8 v8, v3, 0x1

    .line 1984
    .local v8, "indent":I
    const-string v3, ""

    move-object v9, v2

    .end local v2    # "endMark":Lorg/yaml/snakeyaml/error/Mark;
    .local v3, "spaces":Ljava/lang/String;
    .local v9, "endMark":Lorg/yaml/snakeyaml/error/Mark;
    :goto_14
    move-object v10, v3

    .line 1987
    .end local v3    # "spaces":Ljava/lang/String;
    .local v10, "spaces":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1989
    .local v2, "length":I
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v3

    const/16 v5, 0x23

    if-ne v3, v5, :cond_22

    .line 1990
    goto/16 :goto_8f

    .line 1993
    :cond_22
    move v11, v2

    .end local v2    # "length":I
    .local v11, "length":I
    :goto_23
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2, v11}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)C

    move-result v12

    .line 1994
    .local v12, "ch":C
    sget-object v2, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_T_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v2, v12}, Lorg/yaml/snakeyaml/scanner/Constant;->has(C)Z

    move-result v2

    const/16 v3, 0x3a

    if-nez v2, :cond_5a

    iget v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    if-nez v2, :cond_49

    if-ne v12, v3, :cond_49

    sget-object v2, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_T_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    iget-object v6, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    add-int/lit8 v7, v11, 0x1

    invoke-virtual {v6, v7}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)C

    move-result v6

    invoke-virtual {v2, v6}, Lorg/yaml/snakeyaml/scanner/Constant;->has(C)Z

    move-result v2

    if-nez v2, :cond_5a

    :cond_49
    iget v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    if-eqz v2, :cond_57

    const-string v2, ",:?[]{}"

    invoke-virtual {v2, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v6, -0x1

    if-eq v2, v6, :cond_57

    .line 1998
    goto :goto_5a

    .line 2000
    :cond_57
    add-int/lit8 v11, v11, 0x1

    goto :goto_23

    .line 2003
    :cond_5a
    :goto_5a
    iget v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    if-eqz v2, :cond_8c

    if-ne v12, v3, :cond_8c

    sget-object v2, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_T_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    add-int/lit8 v6, v11, 0x1

    invoke-virtual {v3, v6}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)C

    move-result v3

    const-string v6, ",[]{}"

    invoke-virtual {v2, v3, v6}, Lorg/yaml/snakeyaml/scanner/Constant;->hasNo(CLjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_73

    goto :goto_8c

    .line 2005
    :cond_73
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2, v11}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward(I)V

    .line 2006
    new-instance v13, Lorg/yaml/snakeyaml/scanner/ScannerException;

    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v6

    const-string v3, "while scanning a plain scalar"

    const-string v5, "found unexpected \':\'"

    const-string v7, "Please check http://pyyaml.org/wiki/YAMLColonInFlowContext for details."

    move-object v2, v13

    move-object v4, v1

    invoke-direct/range {v2 .. v7}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;)V

    throw v13

    .line 2010
    :cond_8c
    :goto_8c
    if-nez v11, :cond_91

    .line 2011
    nop

    .line 2024
    .end local v11    # "length":I
    .end local v12    # "ch":C
    :goto_8f
    move-object v3, v10

    goto :goto_c7

    .line 2013
    .restart local v11    # "length":I
    .restart local v12    # "ch":C
    :cond_91
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    .line 2014
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2015
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2, v11}, Lorg/yaml/snakeyaml/reader/StreamReader;->prefixForward(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2016
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v9

    .line 2017
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanPlainSpaces()Ljava/lang/String;

    move-result-object v3

    .line 2019
    .end local v10    # "spaces":Ljava/lang/String;
    .restart local v3    # "spaces":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_c7

    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v2

    if-eq v2, v5, :cond_c7

    iget v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    if-nez v2, :cond_c5

    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->getColumn()I

    move-result v2

    if-ge v2, v8, :cond_c5

    .line 2021
    goto :goto_c7

    .line 2023
    .end local v11    # "length":I
    .end local v12    # "ch":C
    :cond_c5
    goto/16 :goto_14

    .line 2024
    :cond_c7
    :goto_c7
    new-instance v2, Lorg/yaml/snakeyaml/tokens/ScalarToken;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5, v1, v9, v4}, Lorg/yaml/snakeyaml/tokens/ScalarToken;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;Z)V

    return-object v2
.end method

.method private scanPlainSpaces()Ljava/lang/String;
    .registers 11

    .line 2032
    const/4 v0, 0x0

    .line 2033
    .local v0, "length":I
    :goto_1
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1, v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)C

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_c3

    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1, v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)C

    move-result v1

    const/16 v3, 0x9

    if-ne v1, v3, :cond_17

    goto/16 :goto_c3

    .line 2036
    :cond_17
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1, v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->prefixForward(I)Ljava/lang/String;

    move-result-object v1

    .line 2037
    .local v1, "whitespaces":Ljava/lang/String;
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanLineBreak()Ljava/lang/String;

    move-result-object v3

    .line 2038
    .local v3, "lineBreak":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_c2

    .line 2039
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    .line 2040
    iget-object v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lorg/yaml/snakeyaml/reader/StreamReader;->prefix(I)Ljava/lang/String;

    move-result-object v4

    .line 2041
    .local v4, "prefix":Ljava/lang/String;
    const-string v6, "---"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_bf

    const-string v6, "..."

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_50

    sget-object v6, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_T_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    iget-object v7, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v7, v5}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)C

    move-result v7

    invoke-virtual {v6, v7}, Lorg/yaml/snakeyaml/scanner/Constant;->has(C)Z

    move-result v6

    if-eqz v6, :cond_50

    goto :goto_bf

    .line 2045
    :cond_50
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 2047
    .local v6, "breaks":Ljava/lang/StringBuilder;
    :goto_55
    iget-object v7, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v7}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v7

    if-ne v7, v2, :cond_63

    .line 2048
    iget-object v7, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v7}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    goto :goto_55

    .line 2050
    :cond_63
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanLineBreak()Ljava/lang/String;

    move-result-object v7

    .line 2051
    .local v7, "lb":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_99

    .line 2052
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2053
    iget-object v8, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v8, v5}, Lorg/yaml/snakeyaml/reader/StreamReader;->prefix(I)Ljava/lang/String;

    move-result-object v4

    .line 2054
    const-string v8, "---"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_96

    const-string v8, "..."

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_95

    sget-object v8, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_T_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    iget-object v9, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v9, v5}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)C

    move-result v9

    invoke-virtual {v8, v9}, Lorg/yaml/snakeyaml/scanner/Constant;->has(C)Z

    move-result v8

    if-eqz v8, :cond_95

    goto :goto_96

    .line 2061
    .end local v7    # "lb":Ljava/lang/String;
    :cond_95
    goto :goto_55

    .line 2056
    .restart local v7    # "lb":Ljava/lang/String;
    :cond_96
    :goto_96
    const-string v2, ""

    return-object v2

    .line 2063
    .end local v7    # "lb":Ljava/lang/String;
    :cond_99
    const-string v2, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b1

    .line 2064
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2065
    :cond_b1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_ba

    .line 2066
    const-string v2, " "

    return-object v2

    .line 2068
    :cond_ba
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2043
    .end local v6    # "breaks":Ljava/lang/StringBuilder;
    :cond_bf
    :goto_bf
    const-string v2, ""

    return-object v2

    .line 2070
    .end local v4    # "prefix":Ljava/lang/String;
    :cond_c2
    return-object v1

    .line 2034
    .end local v1    # "whitespaces":Ljava/lang/String;
    .end local v3    # "lineBreak":Ljava/lang/String;
    :cond_c3
    :goto_c3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1
.end method

.method private scanTag()Lorg/yaml/snakeyaml/tokens/Token;
    .registers 9

    .line 1488
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v0

    .line 1491
    .local v0, "startMark":Lorg/yaml/snakeyaml/error/Mark;
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)C

    move-result v1

    .line 1492
    .local v1, "ch":C
    const/4 v2, 0x0

    .line 1493
    .local v2, "handle":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1495
    .local v3, "suffix":Ljava/lang/String;
    const/16 v4, 0x3c

    if-ne v1, v4, :cond_68

    .line 1498
    iget-object v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward(I)V

    .line 1499
    const-string v4, "tag"

    invoke-direct {p0, v4, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanTagUri(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;

    move-result-object v3

    .line 1500
    iget-object v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v4}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v4

    const/16 v5, 0x3e

    if-ne v4, v5, :cond_30

    .line 1507
    iget-object v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v4}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    goto/16 :goto_a9

    .line 1503
    :cond_30
    new-instance v4, Lorg/yaml/snakeyaml/scanner/ScannerException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "expected \'>\', but found \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v6}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v6, "\' ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v6}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v6}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v6

    const-string v7, "while scanning a tag"

    invoke-direct {v4, v7, v0, v5, v6}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v4

    .line 1508
    :cond_68
    sget-object v4, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_T_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v4, v1}, Lorg/yaml/snakeyaml/scanner/Constant;->has(C)Z

    move-result v4

    if-eqz v4, :cond_78

    .line 1511
    const-string v3, "!"

    .line 1512
    iget-object v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v4}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    goto :goto_a9

    .line 1518
    :cond_78
    const/4 v4, 0x1

    .line 1519
    .local v4, "length":I
    const/4 v5, 0x0

    .line 1520
    .local v5, "useHandle":Z
    :goto_7a
    sget-object v6, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v6, v1}, Lorg/yaml/snakeyaml/scanner/Constant;->hasNo(C)Z

    move-result v6

    if-eqz v6, :cond_91

    .line 1521
    const/16 v6, 0x21

    if-ne v1, v6, :cond_88

    .line 1522
    const/4 v5, 0x1

    .line 1523
    goto :goto_91

    .line 1525
    :cond_88
    add-int/lit8 v4, v4, 0x1

    .line 1526
    iget-object v6, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v6, v4}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)C

    move-result v1

    goto :goto_7a

    .line 1528
    :cond_91
    :goto_91
    const-string v2, "!"

    .line 1531
    if-eqz v5, :cond_9c

    .line 1532
    const-string v6, "tag"

    invoke-direct {p0, v6, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanTagHandle(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;

    move-result-object v2

    goto :goto_a3

    .line 1534
    :cond_9c
    const-string v2, "!"

    .line 1535
    iget-object v6, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v6}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    .line 1537
    :goto_a3
    const-string v6, "tag"

    invoke-direct {p0, v6, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanTagUri(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;

    move-result-object v3

    .line 1539
    .end local v4    # "length":I
    .end local v5    # "useHandle":Z
    :goto_a9
    iget-object v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v4}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v1

    .line 1542
    sget-object v4, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v4, v1}, Lorg/yaml/snakeyaml/scanner/Constant;->hasNo(C)Z

    move-result v4

    if-nez v4, :cond_c8

    .line 1546
    new-instance v4, Lorg/yaml/snakeyaml/tokens/TagTuple;

    invoke-direct {v4, v2, v3}, Lorg/yaml/snakeyaml/tokens/TagTuple;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1547
    .local v4, "value":Lorg/yaml/snakeyaml/tokens/TagTuple;
    iget-object v5, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v5}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v5

    .line 1548
    .local v5, "endMark":Lorg/yaml/snakeyaml/error/Mark;
    new-instance v6, Lorg/yaml/snakeyaml/tokens/TagToken;

    invoke-direct {v6, v4, v0, v5}, Lorg/yaml/snakeyaml/tokens/TagToken;-><init>(Lorg/yaml/snakeyaml/tokens/TagTuple;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    return-object v6

    .line 1543
    .end local v4    # "value":Lorg/yaml/snakeyaml/tokens/TagTuple;
    .end local v5    # "endMark":Lorg/yaml/snakeyaml/error/Mark;
    :cond_c8
    new-instance v4, Lorg/yaml/snakeyaml/scanner/ScannerException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "expected \' \', but found \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v6, "\' ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v6}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v6

    const-string v7, "while scanning a tag"

    invoke-direct {v4, v7, v0, v5, v6}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v4
.end method

.method private scanTagDirectiveHandle(Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;
    .registers 8
    .param p1, "startMark"    # Lorg/yaml/snakeyaml/error/Mark;

    .line 1357
    const-string v0, "directive"

    invoke-direct {p0, v0, p1}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanTagHandle(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;

    move-result-object v0

    .line 1358
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v1

    .line 1359
    .local v1, "ch":C
    const/16 v2, 0x20

    if-ne v1, v2, :cond_11

    .line 1363
    return-object v0

    .line 1360
    :cond_11
    new-instance v2, Lorg/yaml/snakeyaml/scanner/ScannerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "expected \' \', but found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v4}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v4}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v4

    const-string v5, "while scanning a directive"

    invoke-direct {v2, v5, p1, v3, v4}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v2
.end method

.method private scanTagDirectivePrefix(Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;
    .registers 7
    .param p1, "startMark"    # Lorg/yaml/snakeyaml/error/Mark;

    .line 1373
    const-string v0, "directive"

    invoke-direct {p0, v0, p1}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanTagUri(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;

    move-result-object v0

    .line 1374
    .local v0, "value":Ljava/lang/String;
    sget-object v1, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v2

    invoke-virtual {v1, v2}, Lorg/yaml/snakeyaml/scanner/Constant;->hasNo(C)Z

    move-result v1

    if-nez v1, :cond_15

    .line 1379
    return-object v0

    .line 1375
    :cond_15
    new-instance v1, Lorg/yaml/snakeyaml/scanner/ScannerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected \' \', but found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v3

    const-string v4, "while scanning a directive"

    invoke-direct {v1, v4, p1, v2, v3}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v1
.end method

.method private scanTagDirectiveValue(Lorg/yaml/snakeyaml/error/Mark;)Ljava/util/List;
    .registers 6
    .param p1, "startMark"    # Lorg/yaml/snakeyaml/error/Mark;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/yaml/snakeyaml/error/Mark;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1334
    :goto_0
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_10

    .line 1335
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    goto :goto_0

    .line 1337
    :cond_10
    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanTagDirectiveHandle(Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;

    move-result-object v0

    .line 1338
    .local v0, "handle":Ljava/lang/String;
    :goto_14
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v2

    if-ne v2, v1, :cond_22

    .line 1339
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    goto :goto_14

    .line 1341
    :cond_22
    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanTagDirectivePrefix(Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;

    move-result-object v1

    .line 1342
    .local v1, "prefix":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1343
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1344
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1345
    return-object v2
.end method

.method private scanTagHandle(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;
    .registers 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "startMark"    # Lorg/yaml/snakeyaml/error/Mark;

    .line 2096
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v0

    .line 2097
    .local v0, "ch":C
    const/16 v1, 0x21

    if-ne v0, v1, :cond_72

    .line 2104
    const/4 v2, 0x1

    .line 2105
    .local v2, "length":I
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3, v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)C

    move-result v0

    .line 2106
    const/16 v3, 0x20

    if-eq v0, v3, :cond_6b

    .line 2111
    :goto_15
    sget-object v3, Lorg/yaml/snakeyaml/scanner/Constant;->ALPHA:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v3, v0}, Lorg/yaml/snakeyaml/scanner/Constant;->has(C)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 2112
    add-int/lit8 v2, v2, 0x1

    .line 2113
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3, v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)C

    move-result v0

    goto :goto_15

    .line 2118
    :cond_26
    if-ne v0, v1, :cond_2b

    .line 2123
    add-int/lit8 v2, v2, 0x1

    goto :goto_6b

    .line 2119
    :cond_2b
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1, v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward(I)V

    .line 2120
    new-instance v1, Lorg/yaml/snakeyaml/scanner/ScannerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "while scanning a "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "expected \'!\', but found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v5}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v5

    invoke-direct {v1, v3, p2, v4, v5}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v1

    .line 2125
    :cond_6b
    :goto_6b
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1, v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->prefixForward(I)Ljava/lang/String;

    move-result-object v1

    .line 2126
    .local v1, "value":Ljava/lang/String;
    return-object v1

    .line 2098
    .end local v1    # "value":Ljava/lang/String;
    .end local v2    # "length":I
    :cond_72
    new-instance v1, Lorg/yaml/snakeyaml/scanner/ScannerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "while scanning a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "expected \'!\', but found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v4}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v4

    invoke-direct {v1, v2, p2, v3, v4}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v1
.end method

.method private scanTagUri(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;
    .registers 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "startMark"    # Lorg/yaml/snakeyaml/error/Mark;

    .line 2147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2151
    .local v0, "chunks":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 2152
    .local v1, "length":I
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2, v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)C

    move-result v2

    .line 2153
    .local v2, "ch":C
    :goto_c
    sget-object v3, Lorg/yaml/snakeyaml/scanner/Constant;->URI_CHARS:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v3, v2}, Lorg/yaml/snakeyaml/scanner/Constant;->has(C)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 2154
    const/16 v3, 0x25

    if-ne v2, v3, :cond_2a

    .line 2155
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3, v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->prefixForward(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2156
    const/4 v1, 0x0

    .line 2157
    invoke-direct {p0, p1, p2}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanUriEscapes(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2c

    .line 2159
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    .line 2161
    :goto_2c
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3, v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)C

    move-result v2

    goto :goto_c

    .line 2165
    :cond_33
    if-eqz v1, :cond_3f

    .line 2166
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3, v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->prefixForward(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2167
    const/4 v1, 0x0

    .line 2169
    :cond_3f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_4a

    .line 2174
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 2171
    :cond_4a
    new-instance v3, Lorg/yaml/snakeyaml/scanner/ScannerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "while scanning a "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "expected URI, but found "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v6}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v6

    invoke-direct {v3, v4, p2, v5, v6}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v3
.end method

.method private scanToNextToken()V
    .registers 6

    .line 1172
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->getIndex()I

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v0

    const v1, 0xfeff

    if-ne v0, v1, :cond_18

    .line 1173
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    .line 1175
    :cond_18
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1176
    .local v1, "found":Z
    :goto_1a
    if-nez v1, :cond_68

    .line 1177
    const/4 v2, 0x0

    .line 1180
    .local v2, "ff":I
    :goto_1d
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3, v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)C

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_2a

    .line 1181
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 1183
    :cond_2a
    if-lez v2, :cond_31

    .line 1184
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3, v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward(I)V

    .line 1190
    :cond_31
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v3

    const/16 v4, 0x23

    if-ne v3, v4, :cond_54

    .line 1191
    const/4 v2, 0x0

    .line 1192
    :goto_3c
    sget-object v3, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_OR_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    iget-object v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v4, v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lorg/yaml/snakeyaml/scanner/Constant;->hasNo(C)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 1193
    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    .line 1195
    :cond_4d
    if-lez v2, :cond_54

    .line 1196
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3, v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward(I)V

    .line 1201
    :cond_54
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanLineBreak()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_66

    .line 1202
    iget v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    if-nez v3, :cond_67

    .line 1205
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    goto :goto_67

    .line 1208
    :cond_66
    const/4 v1, 0x1

    .line 1210
    .end local v2    # "ff":I
    :cond_67
    :goto_67
    goto :goto_1a

    .line 1211
    :cond_68
    return-void
.end method

.method private scanUriEscapes(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;
    .registers 12
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "startMark"    # Lorg/yaml/snakeyaml/error/Mark;

    .line 2191
    const/4 v0, 0x1

    const/4 v1, 0x1

    .line 2192
    .local v1, "length":I
    :goto_2
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    mul-int/lit8 v3, v1, 0x3

    invoke-virtual {v2, v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)C

    move-result v2

    const/16 v3, 0x25

    if-ne v2, v3, :cond_11

    .line 2193
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2199
    :cond_11
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v2

    .line 2200
    .local v2, "beginningMark":Lorg/yaml/snakeyaml/error/Mark;
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 2201
    .local v4, "buff":Ljava/nio/ByteBuffer;
    :goto_1b
    iget-object v5, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v5}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v5

    if-ne v5, v3, :cond_a4

    .line 2202
    iget-object v5, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v5}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    .line 2204
    :try_start_28
    iget-object v5, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lorg/yaml/snakeyaml/reader/StreamReader;->prefix(I)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x10

    invoke-static {v5, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    int-to-byte v5, v5

    .line 2205
    .local v5, "code":B
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
    :try_end_39
    .catch Ljava/lang/NumberFormatException; {:try_start_28 .. :try_end_39} :catch_40

    .line 2212
    .end local v5    # "code":B
    nop

    .line 2213
    iget-object v5, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v5, v6}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward(I)V

    goto :goto_1b

    .line 2206
    :catch_40
    move-exception v3

    .line 2207
    .local v3, "nfe":Ljava/lang/NumberFormatException;
    new-instance v5, Lorg/yaml/snakeyaml/scanner/ScannerException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "while scanning a "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "expected URI escape sequence of 2 hexadecimal numbers, but found "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v8}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v8}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ") and "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v8, v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v8, v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)C

    move-result v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v7, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v7}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v7

    invoke-direct {v5, v6, p2, v0, v7}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v5

    .line 2215
    .end local v3    # "nfe":Ljava/lang/NumberFormatException;
    :cond_a4
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 2217
    :try_start_a7
    invoke-static {v4}, Lorg/yaml/snakeyaml/util/UriEncoder;->decode(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0
    :try_end_ab
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_a7 .. :try_end_ab} :catch_ac

    return-object v0

    .line 2218
    :catch_ac
    move-exception v0

    .line 2219
    .local v0, "e":Ljava/nio/charset/CharacterCodingException;
    new-instance v3, Lorg/yaml/snakeyaml/scanner/ScannerException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "while scanning a "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "expected URI in UTF-8: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/nio/charset/CharacterCodingException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, p2, v6, v2}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v3
.end method

.method private scanYamlDirectiveNumber(Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/Integer;
    .registers 7
    .param p1, "startMark"    # Lorg/yaml/snakeyaml/error/Mark;

    .line 1307
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v0

    .line 1308
    .local v0, "ch":C
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 1312
    const/4 v1, 0x0

    .line 1313
    .local v1, "length":I
    :goto_d
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2, v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1314
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 1316
    :cond_1c
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2, v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->prefixForward(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1317
    .local v2, "value":Ljava/lang/Integer;
    return-object v2

    .line 1309
    .end local v1    # "length":I
    .end local v2    # "value":Ljava/lang/Integer;
    :cond_2b
    new-instance v1, Lorg/yaml/snakeyaml/scanner/ScannerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected a digit, but found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v3

    const-string v4, "while scanning a directive"

    invoke-direct {v1, v4, p1, v2, v3}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v1
.end method

.method private scanYamlDirectiveValue(Lorg/yaml/snakeyaml/error/Mark;)Ljava/util/List;
    .registers 8
    .param p1, "startMark"    # Lorg/yaml/snakeyaml/error/Mark;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/yaml/snakeyaml/error/Mark;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1276
    :goto_0
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_10

    .line 1277
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    goto :goto_0

    .line 1279
    :cond_10
    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanYamlDirectiveNumber(Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/Integer;

    move-result-object v0

    .line 1280
    .local v0, "major":Ljava/lang/Integer;
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v1

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_7a

    .line 1285
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    .line 1286
    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanYamlDirectiveNumber(Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/Integer;

    move-result-object v1

    .line 1287
    .local v1, "minor":Ljava/lang/Integer;
    sget-object v2, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v3

    invoke-virtual {v2, v3}, Lorg/yaml/snakeyaml/scanner/Constant;->hasNo(C)Z

    move-result v2

    if-nez v2, :cond_42

    .line 1292
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1293
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1294
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1295
    return-object v2

    .line 1288
    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_42
    new-instance v2, Lorg/yaml/snakeyaml/scanner/ScannerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "expected a digit or \' \', but found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v4}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v4}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v4}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v4

    const-string v5, "while scanning a directive"

    invoke-direct {v2, v5, p1, v3, v4}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v2

    .line 1281
    .end local v1    # "minor":Ljava/lang/Integer;
    :cond_7a
    new-instance v1, Lorg/yaml/snakeyaml/scanner/ScannerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected a digit or \'.\', but found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v3

    const-string v4, "while scanning a directive"

    invoke-direct {v1, v4, p1, v2, v3}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v1
.end method

.method private stalePossibleSimpleKeys()V
    .registers 8

    .line 445
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->possibleSimpleKeys:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_57

    .line 446
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->possibleSimpleKeys:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 447
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/yaml/snakeyaml/scanner/SimpleKey;>;"
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_57

    .line 448
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/yaml/snakeyaml/scanner/SimpleKey;

    .line 449
    .local v1, "key":Lorg/yaml/snakeyaml/scanner/SimpleKey;
    invoke-virtual {v1}, Lorg/yaml/snakeyaml/scanner/SimpleKey;->getLine()I

    move-result v2

    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->getLine()I

    move-result v3

    if-ne v2, v3, :cond_39

    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->getIndex()I

    move-result v2

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/scanner/SimpleKey;->getIndex()I

    move-result v3

    sub-int/2addr v2, v3

    const/16 v3, 0x400

    if-le v2, v3, :cond_42

    .line 455
    :cond_39
    invoke-virtual {v1}, Lorg/yaml/snakeyaml/scanner/SimpleKey;->isRequired()Z

    move-result v2

    if-nez v2, :cond_43

    .line 461
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 463
    .end local v1    # "key":Lorg/yaml/snakeyaml/scanner/SimpleKey;
    :cond_42
    goto :goto_12

    .line 458
    .restart local v1    # "key":Lorg/yaml/snakeyaml/scanner/SimpleKey;
    :cond_43
    new-instance v2, Lorg/yaml/snakeyaml/scanner/ScannerException;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/scanner/SimpleKey;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v3

    iget-object v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v4}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v4

    const-string v5, "while scanning a simple key"

    const-string v6, "could not found expected \':\'"

    invoke-direct {v2, v5, v3, v6, v4}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v2

    .line 465
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/yaml/snakeyaml/scanner/SimpleKey;>;"
    .end local v1    # "key":Lorg/yaml/snakeyaml/scanner/SimpleKey;
    :cond_57
    return-void
.end method

.method private unwindIndent(I)V
    .registers 5
    .param p1, "col"    # I

    .line 537
    iget v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    if-eqz v0, :cond_5

    .line 538
    return-void

    .line 542
    :cond_5
    :goto_5
    iget v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->indent:I

    if-le v0, p1, :cond_28

    .line 543
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v0

    .line 544
    .local v0, "mark":Lorg/yaml/snakeyaml/error/Mark;
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->indents:Lorg/yaml/snakeyaml/util/ArrayStack;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/util/ArrayStack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->indent:I

    .line 545
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    new-instance v2, Lorg/yaml/snakeyaml/tokens/BlockEndToken;

    invoke-direct {v2, v0, v0}, Lorg/yaml/snakeyaml/tokens/BlockEndToken;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 546
    .end local v0    # "mark":Lorg/yaml/snakeyaml/error/Mark;
    goto :goto_5

    .line 547
    :cond_28
    return-void
.end method


# virtual methods
.method public varargs checkToken([Lorg/yaml/snakeyaml/tokens/Token$ID;)Z
    .registers 7
    .param p1, "choices"    # [Lorg/yaml/snakeyaml/tokens/Token$ID;

    .line 223
    :goto_0
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->needMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 224
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchMoreTokens()V

    goto :goto_0

    .line 226
    :cond_a
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_30

    .line 227
    array-length v0, p1

    const/4 v2, 0x1

    if-nez v0, :cond_18

    .line 228
    return v2

    .line 232
    :cond_18
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/tokens/Token;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/tokens/Token;->getTokenId()Lorg/yaml/snakeyaml/tokens/Token$ID;

    move-result-object v0

    .line 233
    .local v0, "first":Lorg/yaml/snakeyaml/tokens/Token$ID;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_25
    array-length v4, p1

    if-ge v3, v4, :cond_30

    .line 234
    aget-object v4, p1, v3

    if-ne v0, v4, :cond_2d

    .line 235
    return v2

    .line 233
    :cond_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 239
    .end local v0    # "first":Lorg/yaml/snakeyaml/tokens/Token$ID;
    .end local v3    # "i":I
    :cond_30
    return v1
.end method

.method public getToken()Lorg/yaml/snakeyaml/tokens/Token;
    .registers 3

    .line 256
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    .line 257
    iget v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokensTaken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokensTaken:I

    .line 258
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/tokens/Token;

    return-object v0

    .line 260
    :cond_18
    const/4 v0, 0x0

    return-object v0
.end method

.method public peekToken()Lorg/yaml/snakeyaml/tokens/Token;
    .registers 3

    .line 246
    :goto_0
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->needMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 247
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchMoreTokens()V

    goto :goto_0

    .line 249
    :cond_a
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/tokens/Token;

    return-object v0
.end method
