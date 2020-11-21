.class final Lcom/google/common/primitives/AndroidInteger;
.super Ljava/lang/Object;
.source "AndroidInteger.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static tryParse(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 2
    .param p0, "string"    # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 34
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/google/common/primitives/AndroidInteger;->tryParse(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static tryParse(Ljava/lang/String;I)Ljava/lang/Integer;
    .registers 9
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "radix"    # I
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 42
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt p1, v0, :cond_a

    const/4 v3, 0x1

    goto :goto_b

    :cond_a
    const/4 v3, 0x0

    :goto_b
    const-string v4, "Invalid radix %s, min radix is %s"

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v3, v4, v5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 45
    const/16 v3, 0x24

    if-gt p1, v3, :cond_24

    const/4 v4, 0x1

    goto :goto_25

    :cond_24
    const/4 v4, 0x0

    :goto_25
    const-string v5, "Invalid radix %s, max radix is %s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v4, v5, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 47
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "length":I
    const/4 v3, 0x0

    .line 48
    .local v3, "i":I
    const/4 v4, 0x0

    if-nez v0, :cond_41

    .line 49
    return-object v4

    .line 51
    :cond_41
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2d

    if-ne v5, v6, :cond_4b

    const/4 v1, 0x1

    nop

    .line 52
    .local v1, "negative":Z
    :cond_4b
    if-eqz v1, :cond_52

    add-int/lit8 v3, v3, 0x1

    if-ne v3, v0, :cond_52

    .line 53
    return-object v4

    .line 55
    :cond_52
    invoke-static {p0, v3, p1, v1}, Lcom/google/common/primitives/AndroidInteger;->tryParse(Ljava/lang/String;IIZ)Ljava/lang/Integer;

    move-result-object v2

    return-object v2
.end method

.method private static tryParse(Ljava/lang/String;IIZ)Ljava/lang/Integer;
    .registers 11
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "radix"    # I
    .param p3, "negative"    # Z
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 61
    const/high16 v0, -0x80000000

    div-int v1, v0, p2

    .line 62
    .local v1, "max":I
    const/4 v2, 0x0

    .local v2, "result":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 63
    .local v3, "length":I
    :goto_9
    const/4 v4, 0x0

    if-ge p1, v3, :cond_27

    .line 64
    add-int/lit8 v5, p1, 0x1

    .local v5, "offset":I
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .end local p1    # "offset":I
    invoke-static {p1, p2}, Ljava/lang/Character;->digit(CI)I

    move-result p1

    .line 65
    .local p1, "digit":I
    const/4 v6, -0x1

    if-ne p1, v6, :cond_1a

    .line 66
    return-object v4

    .line 68
    :cond_1a
    if-le v1, v2, :cond_1d

    .line 69
    return-object v4

    .line 71
    :cond_1d
    mul-int v6, v2, p2

    sub-int/2addr v6, p1

    .line 72
    .local v6, "next":I
    if-le v6, v2, :cond_23

    .line 73
    return-object v4

    .line 75
    :cond_23
    move v2, v6

    .line 76
    .end local v6    # "next":I
    .end local p1    # "digit":I
    nop

    .line 62
    move p1, v5

    goto :goto_9

    .line 77
    .end local v5    # "offset":I
    .local p1, "offset":I
    :cond_27
    if-nez p3, :cond_2d

    .line 78
    neg-int v2, v2

    .line 79
    if-gez v2, :cond_2d

    .line 80
    return-object v4

    .line 84
    :cond_2d
    const v5, 0x7fffffff

    if-gt v2, v5, :cond_3a

    if-ge v2, v0, :cond_35

    goto :goto_3a

    .line 87
    :cond_35
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 85
    :cond_3a
    :goto_3a
    return-object v4
.end method
