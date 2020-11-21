.class public abstract Lcom/google/common/base/CharMatcher;
.super Ljava/lang/Object;
.source "CharMatcher.java"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/CharMatcher$LookupTable;,
        Lcom/google/common/base/CharMatcher$Or;,
        Lcom/google/common/base/CharMatcher$And;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Predicate<",
        "Ljava/lang/Character;",
        ">;"
    }
.end annotation


# static fields
.field public static final ANY:Lcom/google/common/base/CharMatcher;

.field public static final ASCII:Lcom/google/common/base/CharMatcher;

.field public static final BREAKING_WHITESPACE:Lcom/google/common/base/CharMatcher;

.field public static final DIGIT:Lcom/google/common/base/CharMatcher;

.field public static final INVISIBLE:Lcom/google/common/base/CharMatcher;

.field public static final JAVA_DIGIT:Lcom/google/common/base/CharMatcher;

.field public static final JAVA_ISO_CONTROL:Lcom/google/common/base/CharMatcher;

.field public static final JAVA_LETTER:Lcom/google/common/base/CharMatcher;

.field public static final JAVA_LETTER_OR_DIGIT:Lcom/google/common/base/CharMatcher;

.field public static final JAVA_LOWER_CASE:Lcom/google/common/base/CharMatcher;

.field public static final JAVA_UPPER_CASE:Lcom/google/common/base/CharMatcher;

.field public static final NONE:Lcom/google/common/base/CharMatcher;

.field public static final SINGLE_WIDTH:Lcom/google/common/base/CharMatcher;

.field public static final WHITESPACE:Lcom/google/common/base/CharMatcher;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 66
    const-string v0, "\t\n\u000b\u000c\r \u0085\u1680\u2028\u2029\u205f\u3000"

    invoke-static {v0}, Lcom/google/common/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    const/16 v1, 0x2000

    const/16 v2, 0x2006

    invoke-static {v1, v2}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    const/16 v2, 0x2008

    const/16 v3, 0x200a

    invoke-static {v2, v3}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    const-string v2, "CharMatcher.BREAKING_WHITESPACE"

    invoke-virtual {v0, v2}, Lcom/google/common/base/CharMatcher;->withToString(Ljava/lang/String;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/CharMatcher;->precomputed()Lcom/google/common/base/CharMatcher;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/CharMatcher;->BREAKING_WHITESPACE:Lcom/google/common/base/CharMatcher;

    .line 76
    const/16 v0, 0x7f

    const/4 v2, 0x0

    invoke-static {v2, v0}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v3

    const-string v4, "CharMatcher.ASCII"

    invoke-virtual {v3, v4}, Lcom/google/common/base/CharMatcher;->withToString(Ljava/lang/String;)Lcom/google/common/base/CharMatcher;

    move-result-object v3

    sput-object v3, Lcom/google/common/base/CharMatcher;->ASCII:Lcom/google/common/base/CharMatcher;

    .line 86
    const/16 v3, 0x30

    const/16 v4, 0x39

    invoke-static {v3, v4}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v3

    .line 87
    .local v3, "digit":Lcom/google/common/base/CharMatcher;
    const-string v4, "\u0660\u06f0\u07c0\u0966\u09e6\u0a66\u0ae6\u0b66\u0be6\u0c66\u0ce6\u0d66\u0e50\u0ed0\u0f20\u1040\u1090\u17e0\u1810\u1946\u19d0\u1b50\u1bb0\u1c40\u1c50\ua620\ua8d0\ua900\uaa50\uff10"

    .line 91
    .local v4, "zeroes":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .local v5, "arr$":[C
    array-length v6, v5

    move-object v7, v3

    const/4 v3, 0x0

    .local v3, "i$":I
    .local v6, "len$":I
    .local v7, "digit":Lcom/google/common/base/CharMatcher;
    :goto_4a
    if-ge v3, v6, :cond_5c

    aget-char v8, v5, v3

    .line 92
    .local v8, "base":C
    add-int/lit8 v9, v8, 0x9

    int-to-char v9, v9

    invoke-static {v8, v9}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v7

    .line 91
    .end local v8    # "base":C
    add-int/lit8 v3, v3, 0x1

    goto :goto_4a

    .line 94
    .end local v3    # "i$":I
    .end local v5    # "arr$":[C
    .end local v6    # "len$":I
    :cond_5c
    const-string v3, "CharMatcher.DIGIT"

    invoke-virtual {v7, v3}, Lcom/google/common/base/CharMatcher;->withToString(Ljava/lang/String;)Lcom/google/common/base/CharMatcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/base/CharMatcher;->precomputed()Lcom/google/common/base/CharMatcher;

    move-result-object v3

    sput-object v3, Lcom/google/common/base/CharMatcher;->DIGIT:Lcom/google/common/base/CharMatcher;

    .line 101
    .end local v4    # "zeroes":Ljava/lang/String;
    .end local v7    # "digit":Lcom/google/common/base/CharMatcher;
    new-instance v3, Lcom/google/common/base/CharMatcher$1;

    invoke-direct {v3}, Lcom/google/common/base/CharMatcher$1;-><init>()V

    sput-object v3, Lcom/google/common/base/CharMatcher;->JAVA_DIGIT:Lcom/google/common/base/CharMatcher;

    .line 116
    new-instance v3, Lcom/google/common/base/CharMatcher$2;

    invoke-direct {v3}, Lcom/google/common/base/CharMatcher$2;-><init>()V

    sput-object v3, Lcom/google/common/base/CharMatcher;->JAVA_LETTER:Lcom/google/common/base/CharMatcher;

    .line 130
    new-instance v3, Lcom/google/common/base/CharMatcher$3;

    invoke-direct {v3}, Lcom/google/common/base/CharMatcher$3;-><init>()V

    sput-object v3, Lcom/google/common/base/CharMatcher;->JAVA_LETTER_OR_DIGIT:Lcom/google/common/base/CharMatcher;

    .line 144
    new-instance v3, Lcom/google/common/base/CharMatcher$4;

    invoke-direct {v3}, Lcom/google/common/base/CharMatcher$4;-><init>()V

    sput-object v3, Lcom/google/common/base/CharMatcher;->JAVA_UPPER_CASE:Lcom/google/common/base/CharMatcher;

    .line 158
    new-instance v3, Lcom/google/common/base/CharMatcher$5;

    invoke-direct {v3}, Lcom/google/common/base/CharMatcher$5;-><init>()V

    sput-object v3, Lcom/google/common/base/CharMatcher;->JAVA_LOWER_CASE:Lcom/google/common/base/CharMatcher;

    .line 172
    const/16 v3, 0x1f

    invoke-static {v2, v3}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v3

    const/16 v4, 0x9f

    invoke-static {v0, v4}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v3

    const-string v4, "CharMatcher.JAVA_ISO_CONTROL"

    invoke-virtual {v3, v4}, Lcom/google/common/base/CharMatcher;->withToString(Ljava/lang/String;)Lcom/google/common/base/CharMatcher;

    move-result-object v3

    sput-object v3, Lcom/google/common/base/CharMatcher;->JAVA_ISO_CONTROL:Lcom/google/common/base/CharMatcher;

    .line 181
    const/16 v3, 0x20

    invoke-static {v2, v3}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v3

    const/16 v4, 0xa0

    invoke-static {v0, v4}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    const/16 v3, 0xad

    invoke-static {v3}, Lcom/google/common/base/CharMatcher;->is(C)Lcom/google/common/base/CharMatcher;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    const/16 v3, 0x603

    const/16 v4, 0x600

    invoke-static {v4, v3}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    const-string v3, "\u06dd\u070f\u1680\u17b4\u17b5\u180e"

    invoke-static {v3}, Lcom/google/common/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/google/common/base/CharMatcher;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    const/16 v3, 0x200f

    invoke-static {v1, v3}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    const/16 v1, 0x2028

    const/16 v3, 0x202f

    invoke-static {v1, v3}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    const/16 v1, 0x205f

    const/16 v3, 0x2064

    invoke-static {v1, v3}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    const/16 v1, 0x206a

    const/16 v3, 0x206f

    invoke-static {v1, v3}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    const/16 v1, 0x3000

    invoke-static {v1}, Lcom/google/common/base/CharMatcher;->is(C)Lcom/google/common/base/CharMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    const v1, 0xd800

    const v3, 0xf8ff

    invoke-static {v1, v3}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    const-string v1, "\ufeff\ufff9\ufffa\ufffb"

    invoke-static {v1}, Lcom/google/common/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/google/common/base/CharMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    const-string v1, "CharMatcher.INVISIBLE"

    invoke-virtual {v0, v1}, Lcom/google/common/base/CharMatcher;->withToString(Ljava/lang/String;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/CharMatcher;->precomputed()Lcom/google/common/base/CharMatcher;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/CharMatcher;->INVISIBLE:Lcom/google/common/base/CharMatcher;

    .line 204
    const/16 v0, 0x4f9

    invoke-static {v2, v0}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    const/16 v1, 0x5be

    invoke-static {v1}, Lcom/google/common/base/CharMatcher;->is(C)Lcom/google/common/base/CharMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    const/16 v1, 0x5d0

    const/16 v2, 0x5ea

    invoke-static {v1, v2}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    const/16 v1, 0x5f3

    invoke-static {v1}, Lcom/google/common/base/CharMatcher;->is(C)Lcom/google/common/base/CharMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    const/16 v1, 0x5f4

    invoke-static {v1}, Lcom/google/common/base/CharMatcher;->is(C)Lcom/google/common/base/CharMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    const/16 v1, 0x6ff

    invoke-static {v4, v1}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    const/16 v1, 0x750

    const/16 v2, 0x77f

    invoke-static {v1, v2}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    const/16 v1, 0xe00

    const/16 v2, 0xe7f

    invoke-static {v1, v2}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    const/16 v1, 0x1e00

    const/16 v2, 0x20af

    invoke-static {v1, v2}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    const/16 v1, 0x2100

    const/16 v2, 0x213a

    invoke-static {v1, v2}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    const v1, 0xfb50

    const v2, 0xfdff

    invoke-static {v1, v2}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    const v1, 0xfe70

    const v2, 0xfeff

    invoke-static {v1, v2}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    const v1, 0xff61

    const v2, 0xffdc

    invoke-static {v1, v2}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    const-string v1, "CharMatcher.SINGLE_WIDTH"

    invoke-virtual {v0, v1}, Lcom/google/common/base/CharMatcher;->withToString(Ljava/lang/String;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/CharMatcher;->precomputed()Lcom/google/common/base/CharMatcher;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/CharMatcher;->SINGLE_WIDTH:Lcom/google/common/base/CharMatcher;

    .line 221
    new-instance v0, Lcom/google/common/base/CharMatcher$6;

    invoke-direct {v0}, Lcom/google/common/base/CharMatcher$6;-><init>()V

    sput-object v0, Lcom/google/common/base/CharMatcher;->ANY:Lcom/google/common/base/CharMatcher;

    .line 305
    new-instance v0, Lcom/google/common/base/CharMatcher$7;

    invoke-direct {v0}, Lcom/google/common/base/CharMatcher$7;-><init>()V

    sput-object v0, Lcom/google/common/base/CharMatcher;->NONE:Lcom/google/common/base/CharMatcher;

    .line 1254
    new-instance v0, Lcom/google/common/base/CharMatcher$17;

    invoke-direct {v0}, Lcom/google/common/base/CharMatcher$17;-><init>()V

    sput-object v0, Lcom/google/common/base/CharMatcher;->WHITESPACE:Lcom/google/common/base/CharMatcher;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .line 590
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static anyOf(Ljava/lang/CharSequence;)Lcom/google/common/base/CharMatcher;
    .registers 4
    .param p0, "sequence"    # Ljava/lang/CharSequence;

    .line 467
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_34

    .line 491
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 492
    .local v0, "chars":[C
    invoke-static {v0}, Ljava/util/Arrays;->sort([C)V

    .line 494
    new-instance v1, Lcom/google/common/base/CharMatcher$11;

    invoke-direct {v1, v0}, Lcom/google/common/base/CharMatcher$11;-><init>([C)V

    return-object v1

    .line 473
    .end local v0    # "chars":[C
    :pswitch_19
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 474
    .local v0, "match1":C
    const/4 v1, 0x1

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 475
    .local v1, "match2":C
    new-instance v2, Lcom/google/common/base/CharMatcher$10;

    invoke-direct {v2, v0, v1}, Lcom/google/common/base/CharMatcher$10;-><init>(CC)V

    return-object v2

    .line 471
    .end local v0    # "match1":C
    .end local v1    # "match2":C
    :pswitch_28
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/CharMatcher;->is(C)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    return-object v0

    .line 469
    :pswitch_31
    sget-object v0, Lcom/google/common/base/CharMatcher;->NONE:Lcom/google/common/base/CharMatcher;

    return-object v0

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_31
        :pswitch_28
        :pswitch_19
    .end packed-switch
.end method

.method public static forPredicate(Lcom/google/common/base/Predicate;)Lcom/google/common/base/CharMatcher;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Predicate<",
            "-",
            "Ljava/lang/Character;",
            ">;)",
            "Lcom/google/common/base/CharMatcher;"
        }
    .end annotation

    .line 563
    .local p0, "predicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<-Ljava/lang/Character;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    instance-of v0, p0, Lcom/google/common/base/CharMatcher;

    if-eqz v0, :cond_b

    .line 565
    move-object v0, p0

    check-cast v0, Lcom/google/common/base/CharMatcher;

    return-object v0

    .line 567
    :cond_b
    new-instance v0, Lcom/google/common/base/CharMatcher$13;

    invoke-direct {v0, p0}, Lcom/google/common/base/CharMatcher$13;-><init>(Lcom/google/common/base/Predicate;)V

    return-object v0
.end method

.method public static inRange(CC)Lcom/google/common/base/CharMatcher;
    .registers 3
    .param p0, "startInclusive"    # C
    .param p1, "endInclusive"    # C

    .line 527
    if-lt p1, p0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 528
    new-instance v0, Lcom/google/common/base/CharMatcher$12;

    invoke-direct {v0, p0, p1}, Lcom/google/common/base/CharMatcher$12;-><init>(CC)V

    return-object v0
.end method

.method public static is(C)Lcom/google/common/base/CharMatcher;
    .registers 2
    .param p0, "match"    # C

    .line 392
    new-instance v0, Lcom/google/common/base/CharMatcher$8;

    invoke-direct {v0, p0}, Lcom/google/common/base/CharMatcher$8;-><init>(C)V

    return-object v0
.end method

.method public static isNot(C)Lcom/google/common/base/CharMatcher;
    .registers 2
    .param p0, "match"    # C

    .line 436
    new-instance v0, Lcom/google/common/base/CharMatcher$9;

    invoke-direct {v0, p0}, Lcom/google/common/base/CharMatcher$9;-><init>(C)V

    return-object v0
.end method

.method public static noneOf(Ljava/lang/CharSequence;)Lcom/google/common/base/CharMatcher;
    .registers 2
    .param p0, "sequence"    # Ljava/lang/CharSequence;

    .line 516
    invoke-static {p0}, Lcom/google/common/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/CharMatcher;->negate()Lcom/google/common/base/CharMatcher;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public and(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;
    .registers 6
    .param p1, "other"    # Lcom/google/common/base/CharMatcher;

    .line 635
    new-instance v0, Lcom/google/common/base/CharMatcher$And;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/common/base/CharMatcher;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/base/CharMatcher;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/base/CharMatcher$And;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public apply(Ljava/lang/Character;)Z
    .registers 3
    .param p1, "character"    # Ljava/lang/Character;

    .line 1231
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 55
    move-object v0, p1

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {p0, v0}, Lcom/google/common/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public collapseFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;
    .registers 9
    .param p1, "sequence"    # Ljava/lang/CharSequence;
    .param p2, "replacement"    # C
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .line 1170
    invoke-virtual {p0, p1}, Lcom/google/common/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;)I

    move-result v0

    .line 1171
    .local v0, "first":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    .line 1172
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1176
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1179
    .local v1, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    .line 1180
    .local v2, "in":Z
    add-int/lit8 v3, v0, 0x1

    .local v3, "i":I
    :goto_24
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v3, v4, :cond_42

    .line 1181
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 1182
    .local v4, "c":C
    invoke-virtual {p0, v4}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 1183
    if-nez v2, :cond_3f

    .line 1184
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1185
    const/4 v2, 0x1

    goto :goto_3f

    .line 1188
    :cond_3b
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1189
    const/4 v2, 0x0

    .line 1180
    .end local v4    # "c":C
    :cond_3f
    :goto_3f
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 1192
    .end local v3    # "i":I
    :cond_42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public countIn(Ljava/lang/CharSequence;)I
    .registers 5
    .param p1, "sequence"    # Ljava/lang/CharSequence;

    .line 932
    const/4 v0, 0x0

    .line 933
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_17

    .line 934
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 935
    add-int/lit8 v0, v0, 0x1

    .line 933
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 938
    .end local v1    # "i":I
    :cond_17
    return v0
.end method

.method public indexIn(Ljava/lang/CharSequence;)I
    .registers 5
    .param p1, "sequence"    # Ljava/lang/CharSequence;

    .line 874
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 875
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_15

    .line 876
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 877
    return v1

    .line 875
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 880
    .end local v1    # "i":I
    :cond_15
    const/4 v1, -0x1

    return v1
.end method

.method public indexIn(Ljava/lang/CharSequence;I)I
    .registers 6
    .param p1, "sequence"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I

    .line 899
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 900
    .local v0, "length":I
    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndex(II)I

    .line 901
    move v1, p2

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_18

    .line 902
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 903
    return v1

    .line 901
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 906
    .end local v1    # "i":I
    :cond_18
    const/4 v1, -0x1

    return v1
.end method

.method public lastIndexIn(Ljava/lang/CharSequence;)I
    .registers 4
    .param p1, "sequence"    # Ljava/lang/CharSequence;

    .line 920
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_16

    .line 921
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 922
    return v0

    .line 920
    :cond_13
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 925
    .end local v0    # "i":I
    :cond_16
    const/4 v0, -0x1

    return v0
.end method

.method public abstract matches(C)Z
.end method

.method public matchesAllOf(Ljava/lang/CharSequence;)Z
    .registers 5
    .param p1, "sequence"    # Ljava/lang/CharSequence;

    .line 840
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_17

    .line 841
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v2

    if-nez v2, :cond_14

    .line 842
    const/4 v1, 0x0

    return v1

    .line 840
    :cond_14
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 845
    .end local v0    # "i":I
    :cond_17
    return v1
.end method

.method public matchesAnyOf(Ljava/lang/CharSequence;)Z
    .registers 3
    .param p1, "sequence"    # Ljava/lang/CharSequence;

    .line 826
    invoke-virtual {p0, p1}, Lcom/google/common/base/CharMatcher;->matchesNoneOf(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public matchesNoneOf(Ljava/lang/CharSequence;)Z
    .registers 4
    .param p1, "sequence"    # Ljava/lang/CharSequence;

    .line 860
    invoke-virtual {p0, p1}, Lcom/google/common/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public negate()Lcom/google/common/base/CharMatcher;
    .registers 3

    .line 603
    move-object v0, p0

    .line 604
    .local v0, "original":Lcom/google/common/base/CharMatcher;
    new-instance v1, Lcom/google/common/base/CharMatcher$14;

    invoke-direct {v1, p0, v0}, Lcom/google/common/base/CharMatcher$14;-><init>(Lcom/google/common/base/CharMatcher;Lcom/google/common/base/CharMatcher;)V

    return-object v1
.end method

.method public or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;
    .registers 6
    .param p1, "other"    # Lcom/google/common/base/CharMatcher;

    .line 671
    new-instance v0, Lcom/google/common/base/CharMatcher$Or;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/common/base/CharMatcher;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/base/CharMatcher;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/base/CharMatcher$Or;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public precomputed()Lcom/google/common/base/CharMatcher;
    .registers 2

    .line 719
    invoke-static {p0}, Lcom/google/common/base/Platform;->precomputeCharMatcher(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    return-object v0
.end method

.method precomputedInternal()Lcom/google/common/base/CharMatcher;
    .registers 4

    .line 734
    new-instance v0, Lcom/google/common/base/CharMatcher$LookupTable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/base/CharMatcher$LookupTable;-><init>(Lcom/google/common/base/CharMatcher$1;)V

    .line 735
    .local v0, "table":Lcom/google/common/base/CharMatcher$LookupTable;
    invoke-virtual {p0, v0}, Lcom/google/common/base/CharMatcher;->setBits(Lcom/google/common/base/CharMatcher$LookupTable;)V

    .line 736
    move-object v1, p0

    .line 738
    .local v1, "outer":Lcom/google/common/base/CharMatcher;
    new-instance v2, Lcom/google/common/base/CharMatcher$15;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/common/base/CharMatcher$15;-><init>(Lcom/google/common/base/CharMatcher;Lcom/google/common/base/CharMatcher$LookupTable;Lcom/google/common/base/CharMatcher;)V

    return-object v2
.end method

.method public removeFrom(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 9
    .param p1, "sequence"    # Ljava/lang/CharSequence;
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .line 951
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 952
    .local v0, "string":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/common/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;)I

    move-result v1

    .line 953
    .local v1, "pos":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_c

    .line 954
    return-object v0

    .line 957
    :cond_c
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 958
    .local v2, "chars":[C
    const/4 v3, 0x1

    move v4, v1

    const/4 v1, 0x1

    .line 962
    .local v1, "spread":I
    .local v4, "pos":I
    :goto_13
    add-int/2addr v4, v3

    .line 964
    :goto_14
    array-length v5, v2

    if-ne v4, v5, :cond_21

    .line 965
    nop

    .line 975
    new-instance v3, Ljava/lang/String;

    const/4 v5, 0x0

    sub-int v6, v4, v1

    invoke-direct {v3, v2, v5, v6}, Ljava/lang/String;-><init>([CII)V

    return-object v3

    .line 967
    :cond_21
    aget-char v5, v2, v4

    invoke-virtual {p0, v5}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 968
    nop

    .line 973
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 970
    :cond_2d
    sub-int v5, v4, v1

    aget-char v6, v2, v4

    aput-char v6, v2, v5

    .line 971
    add-int/lit8 v4, v4, 0x1

    goto :goto_14
.end method

.method public replaceFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;
    .registers 8
    .param p1, "sequence"    # Ljava/lang/CharSequence;
    .param p2, "replacement"    # C
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .line 1010
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1011
    .local v0, "string":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/common/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;)I

    move-result v1

    .line 1012
    .local v1, "pos":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_c

    .line 1013
    return-object v0

    .line 1015
    :cond_c
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 1016
    .local v2, "chars":[C
    aput-char p2, v2, v1

    .line 1017
    add-int/lit8 v3, v1, 0x1

    .local v3, "i":I
    :goto_14
    array-length v4, v2

    if-ge v3, v4, :cond_24

    .line 1018
    aget-char v4, v2, v3

    invoke-virtual {p0, v4}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 1019
    aput-char p2, v2, v3

    .line 1017
    :cond_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 1022
    .end local v3    # "i":I
    :cond_24
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    return-object v3
.end method

.method public replaceFrom(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 11
    .param p1, "sequence"    # Ljava/lang/CharSequence;
    .param p2, "replacement"    # Ljava/lang/CharSequence;
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .line 1043
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1044
    .local v0, "replacementLen":I
    if-nez v0, :cond_b

    .line 1045
    invoke-virtual {p0, p1}, Lcom/google/common/base/CharMatcher;->removeFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1047
    :cond_b
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_18

    .line 1048
    invoke-interface {p2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/google/common/base/CharMatcher;->replaceFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1051
    :cond_18
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1052
    .local v2, "string":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/google/common/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;)I

    move-result v3

    .line 1053
    .local v3, "pos":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_24

    .line 1054
    return-object v2

    .line 1057
    :cond_24
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    .line 1058
    .local v5, "len":I
    new-instance v6, Ljava/lang/StringBuilder;

    mul-int/lit8 v7, v5, 0x3

    div-int/lit8 v7, v7, 0x2

    add-int/lit8 v7, v7, 0x10

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1060
    .local v6, "buf":Ljava/lang/StringBuilder;
    nop

    .line 1062
    .local v1, "oldpos":I
    :cond_34
    invoke-virtual {v6, v2, v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1063
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1064
    add-int/lit8 v1, v3, 0x1

    .line 1065
    invoke-virtual {p0, v2, v1}, Lcom/google/common/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 1066
    if-ne v3, v4, :cond_34

    .line 1068
    invoke-virtual {v6, v2, v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1069
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public retainFrom(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 3
    .param p1, "sequence"    # Ljava/lang/CharSequence;
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .line 988
    invoke-virtual {p0}, Lcom/google/common/base/CharMatcher;->negate()Lcom/google/common/base/CharMatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/base/CharMatcher;->removeFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method setBits(Lcom/google/common/base/CharMatcher$LookupTable;)V
    .registers 5
    .param p1, "table"    # Lcom/google/common/base/CharMatcher$LookupTable;

    .line 783
    const/4 v0, 0x0

    .line 785
    .local v0, "c":C
    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 786
    invoke-virtual {p1, v0}, Lcom/google/common/base/CharMatcher$LookupTable;->set(C)V

    .line 788
    :cond_a
    add-int/lit8 v1, v0, 0x1

    int-to-char v1, v1

    .local v1, "c":C
    const v2, 0xffff

    if-ne v0, v2, :cond_14

    .line 789
    .end local v0    # "c":C
    nop

    .line 792
    return-void

    .line 783
    :cond_14
    move v0, v1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1240
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trimAndCollapseFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;
    .registers 9
    .param p1, "sequence"    # Ljava/lang/CharSequence;
    .param p2, "replacement"    # C
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .line 1202
    invoke-virtual {p0}, Lcom/google/common/base/CharMatcher;->negate()Lcom/google/common/base/CharMatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;)I

    move-result v0

    .line 1203
    .local v0, "first":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    .line 1204
    const-string v1, ""

    return-object v1

    .line 1206
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1207
    .local v1, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 1208
    .local v2, "inMatchingGroup":Z
    move v3, v2

    move v2, v0

    .local v2, "i":I
    .local v3, "inMatchingGroup":Z
    :goto_1a
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v2, v4, :cond_38

    .line 1209
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 1210
    .local v4, "c":C
    invoke-virtual {p0, v4}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 1211
    const/4 v3, 0x1

    goto :goto_35

    .line 1213
    :cond_2c
    if-eqz v3, :cond_32

    .line 1214
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1215
    const/4 v3, 0x0

    .line 1217
    :cond_32
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1208
    .end local v4    # "c":C
    :goto_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 1220
    .end local v2    # "i":I
    :cond_38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public trimFrom(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 6
    .param p1, "sequence"    # Ljava/lang/CharSequence;
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .line 1088
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1092
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "first":I
    :goto_5
    if-ge v1, v0, :cond_15

    .line 1093
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v2

    if-nez v2, :cond_12

    .line 1094
    goto :goto_15

    .line 1092
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1097
    :cond_15
    :goto_15
    add-int/lit8 v2, v0, -0x1

    .local v2, "last":I
    :goto_17
    if-le v2, v1, :cond_27

    .line 1098
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v3

    if-nez v3, :cond_24

    .line 1099
    goto :goto_27

    .line 1097
    :cond_24
    add-int/lit8 v2, v2, -0x1

    goto :goto_17

    .line 1103
    :cond_27
    :goto_27
    add-int/lit8 v3, v2, 0x1

    invoke-interface {p1, v1, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public trimLeadingFrom(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 5
    .param p1, "sequence"    # Ljava/lang/CharSequence;
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .line 1116
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1119
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "first":I
    :goto_5
    if-ge v1, v0, :cond_15

    .line 1120
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v2

    if-nez v2, :cond_12

    .line 1121
    goto :goto_15

    .line 1119
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1125
    :cond_15
    :goto_15
    invoke-interface {p1, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public trimTrailingFrom(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 6
    .param p1, "sequence"    # Ljava/lang/CharSequence;
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .line 1138
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1141
    .local v0, "len":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "last":I
    :goto_6
    if-ltz v1, :cond_16

    .line 1142
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v2

    if-nez v2, :cond_13

    .line 1143
    goto :goto_16

    .line 1141
    :cond_13
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 1147
    :cond_16
    :goto_16
    const/4 v2, 0x0

    add-int/lit8 v3, v1, 0x1

    invoke-interface {p1, v2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method withToString(Ljava/lang/String;)Lcom/google/common/base/CharMatcher;
    .registers 4
    .param p1, "toString"    # Ljava/lang/String;

    .line 756
    move-object v0, p0

    .line 757
    .local v0, "delegate":Lcom/google/common/base/CharMatcher;
    new-instance v1, Lcom/google/common/base/CharMatcher$16;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/common/base/CharMatcher$16;-><init>(Lcom/google/common/base/CharMatcher;Lcom/google/common/base/CharMatcher;Ljava/lang/String;)V

    return-object v1
.end method
