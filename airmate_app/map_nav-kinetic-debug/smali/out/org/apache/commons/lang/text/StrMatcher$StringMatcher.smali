.class final Lorg/apache/commons/lang/text/StrMatcher$StringMatcher;
.super Lorg/apache/commons/lang/text/StrMatcher;
.source "StrMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang/text/StrMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StringMatcher"
.end annotation


# instance fields
.field private chars:[C


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "str"    # Ljava/lang/String;

    .line 349
    invoke-direct {p0}, Lorg/apache/commons/lang/text/StrMatcher;-><init>()V

    .line 350
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang/text/StrMatcher$StringMatcher;->chars:[C

    .line 351
    return-void
.end method


# virtual methods
.method public isMatch([CIII)I
    .registers 10
    .param p1, "buffer"    # [C
    .param p2, "pos"    # I
    .param p3, "bufferStart"    # I
    .param p4, "bufferEnd"    # I

    .line 363
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrMatcher$StringMatcher;->chars:[C

    array-length v0, v0

    .line 364
    .local v0, "len":I
    add-int v1, p2, v0

    const/4 v2, 0x0

    if-le v1, p4, :cond_9

    .line 365
    return v2

    .line 367
    :cond_9
    move v1, p2

    const/4 p2, 0x0

    .local v1, "pos":I
    .local p2, "i":I
    :goto_b
    iget-object v3, p0, Lorg/apache/commons/lang/text/StrMatcher$StringMatcher;->chars:[C

    array-length v3, v3

    if-ge p2, v3, :cond_1e

    .line 368
    iget-object v3, p0, Lorg/apache/commons/lang/text/StrMatcher$StringMatcher;->chars:[C

    aget-char v3, v3, p2

    aget-char v4, p1, v1

    if-eq v3, v4, :cond_19

    .line 369
    return v2

    .line 367
    :cond_19
    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 372
    .end local p2    # "i":I
    :cond_1e
    return v0
.end method
