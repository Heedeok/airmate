.class public abstract Lorg/apache/commons/lang/text/StrMatcher;
.super Ljava/lang/Object;
.source "StrMatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang/text/StrMatcher$TrimMatcher;,
        Lorg/apache/commons/lang/text/StrMatcher$NoMatcher;,
        Lorg/apache/commons/lang/text/StrMatcher$StringMatcher;,
        Lorg/apache/commons/lang/text/StrMatcher$CharMatcher;,
        Lorg/apache/commons/lang/text/StrMatcher$CharSetMatcher;
    }
.end annotation


# static fields
.field private static final COMMA_MATCHER:Lorg/apache/commons/lang/text/StrMatcher;

.field private static final DOUBLE_QUOTE_MATCHER:Lorg/apache/commons/lang/text/StrMatcher;

.field private static final NONE_MATCHER:Lorg/apache/commons/lang/text/StrMatcher;

.field private static final QUOTE_MATCHER:Lorg/apache/commons/lang/text/StrMatcher;

.field private static final SINGLE_QUOTE_MATCHER:Lorg/apache/commons/lang/text/StrMatcher;

.field private static final SPACE_MATCHER:Lorg/apache/commons/lang/text/StrMatcher;

.field private static final SPLIT_MATCHER:Lorg/apache/commons/lang/text/StrMatcher;

.field private static final TAB_MATCHER:Lorg/apache/commons/lang/text/StrMatcher;

.field private static final TRIM_MATCHER:Lorg/apache/commons/lang/text/StrMatcher;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 37
    new-instance v0, Lorg/apache/commons/lang/text/StrMatcher$CharMatcher;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Lorg/apache/commons/lang/text/StrMatcher$CharMatcher;-><init>(C)V

    sput-object v0, Lorg/apache/commons/lang/text/StrMatcher;->COMMA_MATCHER:Lorg/apache/commons/lang/text/StrMatcher;

    .line 41
    new-instance v0, Lorg/apache/commons/lang/text/StrMatcher$CharMatcher;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lorg/apache/commons/lang/text/StrMatcher$CharMatcher;-><init>(C)V

    sput-object v0, Lorg/apache/commons/lang/text/StrMatcher;->TAB_MATCHER:Lorg/apache/commons/lang/text/StrMatcher;

    .line 45
    new-instance v0, Lorg/apache/commons/lang/text/StrMatcher$CharMatcher;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lorg/apache/commons/lang/text/StrMatcher$CharMatcher;-><init>(C)V

    sput-object v0, Lorg/apache/commons/lang/text/StrMatcher;->SPACE_MATCHER:Lorg/apache/commons/lang/text/StrMatcher;

    .line 50
    new-instance v0, Lorg/apache/commons/lang/text/StrMatcher$CharSetMatcher;

    const-string v1, " \t\n\r\u000c"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/lang/text/StrMatcher$CharSetMatcher;-><init>([C)V

    sput-object v0, Lorg/apache/commons/lang/text/StrMatcher;->SPLIT_MATCHER:Lorg/apache/commons/lang/text/StrMatcher;

    .line 54
    new-instance v0, Lorg/apache/commons/lang/text/StrMatcher$TrimMatcher;

    invoke-direct {v0}, Lorg/apache/commons/lang/text/StrMatcher$TrimMatcher;-><init>()V

    sput-object v0, Lorg/apache/commons/lang/text/StrMatcher;->TRIM_MATCHER:Lorg/apache/commons/lang/text/StrMatcher;

    .line 58
    new-instance v0, Lorg/apache/commons/lang/text/StrMatcher$CharMatcher;

    const/16 v1, 0x27

    invoke-direct {v0, v1}, Lorg/apache/commons/lang/text/StrMatcher$CharMatcher;-><init>(C)V

    sput-object v0, Lorg/apache/commons/lang/text/StrMatcher;->SINGLE_QUOTE_MATCHER:Lorg/apache/commons/lang/text/StrMatcher;

    .line 62
    new-instance v0, Lorg/apache/commons/lang/text/StrMatcher$CharMatcher;

    const/16 v1, 0x22

    invoke-direct {v0, v1}, Lorg/apache/commons/lang/text/StrMatcher$CharMatcher;-><init>(C)V

    sput-object v0, Lorg/apache/commons/lang/text/StrMatcher;->DOUBLE_QUOTE_MATCHER:Lorg/apache/commons/lang/text/StrMatcher;

    .line 66
    new-instance v0, Lorg/apache/commons/lang/text/StrMatcher$CharSetMatcher;

    const-string v1, "\'\""

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/lang/text/StrMatcher$CharSetMatcher;-><init>([C)V

    sput-object v0, Lorg/apache/commons/lang/text/StrMatcher;->QUOTE_MATCHER:Lorg/apache/commons/lang/text/StrMatcher;

    .line 70
    new-instance v0, Lorg/apache/commons/lang/text/StrMatcher$NoMatcher;

    invoke-direct {v0}, Lorg/apache/commons/lang/text/StrMatcher$NoMatcher;-><init>()V

    sput-object v0, Lorg/apache/commons/lang/text/StrMatcher;->NONE_MATCHER:Lorg/apache/commons/lang/text/StrMatcher;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    return-void
.end method

.method public static charMatcher(C)Lorg/apache/commons/lang/text/StrMatcher;
    .registers 2
    .param p0, "ch"    # C

    .line 163
    new-instance v0, Lorg/apache/commons/lang/text/StrMatcher$CharMatcher;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang/text/StrMatcher$CharMatcher;-><init>(C)V

    return-object v0
.end method

.method public static charSetMatcher(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrMatcher;
    .registers 3
    .param p0, "chars"    # Ljava/lang/String;

    .line 189
    if-eqz p0, :cond_25

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_25

    .line 192
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b

    .line 193
    new-instance v0, Lorg/apache/commons/lang/text/StrMatcher$CharMatcher;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/commons/lang/text/StrMatcher$CharMatcher;-><init>(C)V

    return-object v0

    .line 195
    :cond_1b
    new-instance v0, Lorg/apache/commons/lang/text/StrMatcher$CharSetMatcher;

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/lang/text/StrMatcher$CharSetMatcher;-><init>([C)V

    return-object v0

    .line 190
    :cond_25
    :goto_25
    sget-object v0, Lorg/apache/commons/lang/text/StrMatcher;->NONE_MATCHER:Lorg/apache/commons/lang/text/StrMatcher;

    return-object v0
.end method

.method public static charSetMatcher([C)Lorg/apache/commons/lang/text/StrMatcher;
    .registers 3
    .param p0, "chars"    # [C

    .line 173
    if-eqz p0, :cond_19

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_19

    .line 176
    :cond_6
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 177
    new-instance v0, Lorg/apache/commons/lang/text/StrMatcher$CharMatcher;

    const/4 v1, 0x0

    aget-char v1, p0, v1

    invoke-direct {v0, v1}, Lorg/apache/commons/lang/text/StrMatcher$CharMatcher;-><init>(C)V

    return-object v0

    .line 179
    :cond_13
    new-instance v0, Lorg/apache/commons/lang/text/StrMatcher$CharSetMatcher;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang/text/StrMatcher$CharSetMatcher;-><init>([C)V

    return-object v0

    .line 174
    :cond_19
    :goto_19
    sget-object v0, Lorg/apache/commons/lang/text/StrMatcher;->NONE_MATCHER:Lorg/apache/commons/lang/text/StrMatcher;

    return-object v0
.end method

.method public static commaMatcher()Lorg/apache/commons/lang/text/StrMatcher;
    .registers 1

    .line 80
    sget-object v0, Lorg/apache/commons/lang/text/StrMatcher;->COMMA_MATCHER:Lorg/apache/commons/lang/text/StrMatcher;

    return-object v0
.end method

.method public static doubleQuoteMatcher()Lorg/apache/commons/lang/text/StrMatcher;
    .registers 1

    .line 135
    sget-object v0, Lorg/apache/commons/lang/text/StrMatcher;->DOUBLE_QUOTE_MATCHER:Lorg/apache/commons/lang/text/StrMatcher;

    return-object v0
.end method

.method public static noneMatcher()Lorg/apache/commons/lang/text/StrMatcher;
    .registers 1

    .line 153
    sget-object v0, Lorg/apache/commons/lang/text/StrMatcher;->NONE_MATCHER:Lorg/apache/commons/lang/text/StrMatcher;

    return-object v0
.end method

.method public static quoteMatcher()Lorg/apache/commons/lang/text/StrMatcher;
    .registers 1

    .line 144
    sget-object v0, Lorg/apache/commons/lang/text/StrMatcher;->QUOTE_MATCHER:Lorg/apache/commons/lang/text/StrMatcher;

    return-object v0
.end method

.method public static singleQuoteMatcher()Lorg/apache/commons/lang/text/StrMatcher;
    .registers 1

    .line 126
    sget-object v0, Lorg/apache/commons/lang/text/StrMatcher;->SINGLE_QUOTE_MATCHER:Lorg/apache/commons/lang/text/StrMatcher;

    return-object v0
.end method

.method public static spaceMatcher()Lorg/apache/commons/lang/text/StrMatcher;
    .registers 1

    .line 98
    sget-object v0, Lorg/apache/commons/lang/text/StrMatcher;->SPACE_MATCHER:Lorg/apache/commons/lang/text/StrMatcher;

    return-object v0
.end method

.method public static splitMatcher()Lorg/apache/commons/lang/text/StrMatcher;
    .registers 1

    .line 108
    sget-object v0, Lorg/apache/commons/lang/text/StrMatcher;->SPLIT_MATCHER:Lorg/apache/commons/lang/text/StrMatcher;

    return-object v0
.end method

.method public static stringMatcher(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrMatcher;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 205
    if-eqz p0, :cond_f

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_f

    .line 208
    :cond_9
    new-instance v0, Lorg/apache/commons/lang/text/StrMatcher$StringMatcher;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang/text/StrMatcher$StringMatcher;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 206
    :cond_f
    :goto_f
    sget-object v0, Lorg/apache/commons/lang/text/StrMatcher;->NONE_MATCHER:Lorg/apache/commons/lang/text/StrMatcher;

    return-object v0
.end method

.method public static tabMatcher()Lorg/apache/commons/lang/text/StrMatcher;
    .registers 1

    .line 89
    sget-object v0, Lorg/apache/commons/lang/text/StrMatcher;->TAB_MATCHER:Lorg/apache/commons/lang/text/StrMatcher;

    return-object v0
.end method

.method public static trimMatcher()Lorg/apache/commons/lang/text/StrMatcher;
    .registers 1

    .line 117
    sget-object v0, Lorg/apache/commons/lang/text/StrMatcher;->TRIM_MATCHER:Lorg/apache/commons/lang/text/StrMatcher;

    return-object v0
.end method


# virtual methods
.method public isMatch([CI)I
    .registers 5
    .param p1, "buffer"    # [C
    .param p2, "pos"    # I

    .line 267
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lorg/apache/commons/lang/text/StrMatcher;->isMatch([CIII)I

    move-result v0

    return v0
.end method

.method public abstract isMatch([CIII)I
.end method
