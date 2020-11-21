.class abstract Lcom/google/common/base/Splitter$SplittingIterator;
.super Lcom/google/common/base/AbstractIterator;
.source "Splitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Splitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "SplittingIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/base/AbstractIterator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field limit:I

.field offset:I

.field final omitEmptyStrings:Z

.field final toSplit:Ljava/lang/CharSequence;

.field final trimmer:Lcom/google/common/base/CharMatcher;


# direct methods
.method protected constructor <init>(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "splitter"    # Lcom/google/common/base/Splitter;
    .param p2, "toSplit"    # Ljava/lang/CharSequence;

    .line 492
    invoke-direct {p0}, Lcom/google/common/base/AbstractIterator;-><init>()V

    .line 489
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    .line 493
    invoke-static {p1}, Lcom/google/common/base/Splitter;->access$200(Lcom/google/common/base/Splitter;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/base/Splitter$SplittingIterator;->trimmer:Lcom/google/common/base/CharMatcher;

    .line 494
    invoke-static {p1}, Lcom/google/common/base/Splitter;->access$300(Lcom/google/common/base/Splitter;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/common/base/Splitter$SplittingIterator;->omitEmptyStrings:Z

    .line 495
    invoke-static {p1}, Lcom/google/common/base/Splitter;->access$400(Lcom/google/common/base/Splitter;)I

    move-result v0

    iput v0, p0, Lcom/google/common/base/Splitter$SplittingIterator;->limit:I

    .line 496
    iput-object p2, p0, Lcom/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    .line 497
    return-void
.end method


# virtual methods
.method protected bridge synthetic computeNext()Ljava/lang/Object;
    .registers 2

    .line 470
    invoke-virtual {p0}, Lcom/google/common/base/Splitter$SplittingIterator;->computeNext()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected computeNext()Ljava/lang/String;
    .registers 10

    .line 506
    iget v0, p0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    .line 507
    .local v0, "nextStart":I
    :cond_2
    :goto_2
    iget v1, p0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_99

    .line 508
    move v1, v0

    .line 511
    .local v1, "start":I
    iget v3, p0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    invoke-virtual {p0, v3}, Lcom/google/common/base/Splitter$SplittingIterator;->separatorStart(I)I

    move-result v3

    .line 512
    .local v3, "separatorPosition":I
    if-ne v3, v2, :cond_19

    .line 513
    iget-object v4, p0, Lcom/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 514
    .local v4, "end":I
    iput v2, p0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    goto :goto_20

    .line 516
    .end local v4    # "end":I
    :cond_19
    move v4, v3

    .line 517
    .restart local v4    # "end":I
    invoke-virtual {p0, v3}, Lcom/google/common/base/Splitter$SplittingIterator;->separatorEnd(I)I

    move-result v5

    iput v5, p0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    .line 519
    :goto_20
    iget v5, p0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    const/4 v6, 0x1

    if-ne v5, v0, :cond_37

    .line 527
    iget v5, p0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    add-int/2addr v5, v6

    iput v5, p0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    .line 528
    iget v5, p0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    iget-object v6, p0, Lcom/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lt v5, v6, :cond_2

    .line 529
    iput v2, p0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    goto :goto_2

    .line 534
    :cond_37
    :goto_37
    if-ge v1, v4, :cond_4a

    iget-object v5, p0, Lcom/google/common/base/Splitter$SplittingIterator;->trimmer:Lcom/google/common/base/CharMatcher;

    iget-object v7, p0, Lcom/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    invoke-interface {v7, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-virtual {v5, v7}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v5

    if-eqz v5, :cond_4a

    .line 535
    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    .line 537
    :cond_4a
    :goto_4a
    if-le v4, v1, :cond_5f

    iget-object v5, p0, Lcom/google/common/base/Splitter$SplittingIterator;->trimmer:Lcom/google/common/base/CharMatcher;

    iget-object v7, p0, Lcom/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    add-int/lit8 v8, v4, -0x1

    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-virtual {v5, v7}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v5

    if-eqz v5, :cond_5f

    .line 538
    add-int/lit8 v4, v4, -0x1

    goto :goto_4a

    .line 541
    :cond_5f
    iget-boolean v5, p0, Lcom/google/common/base/Splitter$SplittingIterator;->omitEmptyStrings:Z

    if-eqz v5, :cond_68

    if-ne v1, v4, :cond_68

    .line 543
    iget v0, p0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    .line 544
    goto :goto_2

    .line 547
    :cond_68
    iget v5, p0, Lcom/google/common/base/Splitter$SplittingIterator;->limit:I

    if-ne v5, v6, :cond_89

    .line 551
    iget-object v5, p0, Lcom/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 552
    iput v2, p0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    .line 554
    :goto_74
    if-le v4, v1, :cond_8e

    iget-object v2, p0, Lcom/google/common/base/Splitter$SplittingIterator;->trimmer:Lcom/google/common/base/CharMatcher;

    iget-object v5, p0, Lcom/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    add-int/lit8 v6, v4, -0x1

    invoke-interface {v5, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {v2, v5}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v2

    if-eqz v2, :cond_8e

    .line 555
    add-int/lit8 v4, v4, -0x1

    goto :goto_74

    .line 558
    :cond_89
    iget v2, p0, Lcom/google/common/base/Splitter$SplittingIterator;->limit:I

    sub-int/2addr v2, v6

    iput v2, p0, Lcom/google/common/base/Splitter$SplittingIterator;->limit:I

    .line 561
    :cond_8e
    iget-object v2, p0, Lcom/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    invoke-interface {v2, v1, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 563
    .end local v1    # "start":I
    .end local v3    # "separatorPosition":I
    .end local v4    # "end":I
    :cond_99
    invoke-virtual {p0}, Lcom/google/common/base/Splitter$SplittingIterator;->endOfData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method abstract separatorEnd(I)I
.end method

.method abstract separatorStart(I)I
.end method
