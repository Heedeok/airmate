.class final Lcom/google/common/base/CharMatcher$17;
.super Lcom/google/common/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private final table:[C


# direct methods
.method constructor <init>()V
    .registers 2

    .line 1254
    invoke-direct {p0}, Lcom/google/common/base/CharMatcher;-><init>()V

    .line 1280
    const/16 v0, 0x4f

    new-array v0, v0, [C

    fill-array-data v0, :array_e

    iput-object v0, p0, Lcom/google/common/base/CharMatcher$17;->table:[C

    return-void

    nop

    :array_e
    .array-data 2
        0x1s
        0x0s
        0xa0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x9s
        0xas
        0xbs
        0xcs
        0xds
        0x0s
        0x0s
        0x2028s
        0x2029s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x202fs
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x20s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x3000s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x85s
        0x2000s
        0x2001s
        0x2002s
        0x2003s
        0x2004s
        0x2005s
        0x2006s
        0x2007s
        0x2008s
        0x2009s
        0x200as
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x205fs
        0x1680s
        0x0s
        0x0s
        0x180es
        0x0s
        0x0s
        0x0s
    .end array-data
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 1254
    move-object v0, p1

    check-cast v0, Ljava/lang/Character;

    invoke-super {p0, v0}, Lcom/google/common/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public matches(C)Z
    .registers 4
    .param p1, "c"    # C

    .line 1286
    iget-object v0, p0, Lcom/google/common/base/CharMatcher$17;->table:[C

    rem-int/lit8 v1, p1, 0x4f

    aget-char v0, v0, v1

    if-ne v0, p1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public precomputed()Lcom/google/common/base/CharMatcher;
    .registers 1

    .line 1290
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1294
    const-string v0, "CharMatcher.WHITESPACE"

    return-object v0
.end method
