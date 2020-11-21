.class final Lcom/google/common/collect/Iterators$7;
.super Lcom/google/common/collect/UnmodifiableIterator;
.source "Iterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Iterators;->partitionImpl(Ljava/util/Iterator;IZ)Lcom/google/common/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/UnmodifiableIterator<",
        "Ljava/util/List<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$iterator:Ljava/util/Iterator;

.field final synthetic val$pad:Z

.field final synthetic val$size:I


# direct methods
.method constructor <init>(Ljava/util/Iterator;IZ)V
    .registers 4

    .line 650
    iput-object p1, p0, Lcom/google/common/collect/Iterators$7;->val$iterator:Ljava/util/Iterator;

    iput p2, p0, Lcom/google/common/collect/Iterators$7;->val$size:I

    iput-boolean p3, p0, Lcom/google/common/collect/Iterators$7;->val$pad:Z

    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .line 653
    iget-object v0, p0, Lcom/google/common/collect/Iterators$7;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 650
    invoke-virtual {p0}, Lcom/google/common/collect/Iterators$7;->next()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 657
    invoke-virtual {p0}, Lcom/google/common/collect/Iterators$7;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 660
    iget v0, p0, Lcom/google/common/collect/Iterators$7;->val$size:I

    new-array v0, v0, [Ljava/lang/Object;

    .line 661
    .local v0, "array":[Ljava/lang/Object;
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 662
    .local v2, "count":I
    :goto_c
    iget v3, p0, Lcom/google/common/collect/Iterators$7;->val$size:I

    if-ge v2, v3, :cond_23

    iget-object v3, p0, Lcom/google/common/collect/Iterators$7;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 663
    iget-object v3, p0, Lcom/google/common/collect/Iterators$7;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v2

    .line 662
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 665
    :cond_23
    move v3, v2

    .local v3, "i":I
    :goto_24
    iget v4, p0, Lcom/google/common/collect/Iterators$7;->val$size:I

    if-ge v3, v4, :cond_2e

    .line 666
    const/4 v4, 0x0

    aput-object v4, v0, v3

    .line 665
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 670
    .end local v3    # "i":I
    :cond_2e
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 672
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-boolean v4, p0, Lcom/google/common/collect/Iterators$7;->val$pad:Z

    if-nez v4, :cond_44

    iget v4, p0, Lcom/google/common/collect/Iterators$7;->val$size:I

    if-ne v2, v4, :cond_3f

    goto :goto_44

    :cond_3f
    invoke-interface {v3, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    goto :goto_45

    :cond_44
    :goto_44
    move-object v1, v3

    :goto_45
    return-object v1

    .line 658
    .end local v0    # "array":[Ljava/lang/Object;
    .end local v2    # "count":I
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_46
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
