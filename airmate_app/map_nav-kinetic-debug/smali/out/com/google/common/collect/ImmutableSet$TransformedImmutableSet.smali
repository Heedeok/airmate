.class abstract Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;
.super Lcom/google/common/collect/ImmutableSet;
.source "ImmutableSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "TransformedImmutableSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableSet<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final hashCode:I

.field final source:Lcom/google/common/collect/ImmutableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableCollection<",
            "TD;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableCollection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableCollection<",
            "TD;>;)V"
        }
    .end annotation

    .line 468
    .local p0, "this":Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;, "Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet<TD;TE;>;"
    .local p1, "source":Lcom/google/common/collect/ImmutableCollection;, "Lcom/google/common/collect/ImmutableCollection<TD;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSet;-><init>()V

    .line 469
    iput-object p1, p0, Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;->source:Lcom/google/common/collect/ImmutableCollection;

    .line 470
    invoke-static {p0}, Lcom/google/common/collect/Sets;->hashCodeImpl(Ljava/util/Set;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;->hashCode:I

    .line 471
    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/ImmutableCollection;I)V
    .registers 3
    .param p2, "hashCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableCollection<",
            "TD;>;I)V"
        }
    .end annotation

    .line 473
    .local p0, "this":Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;, "Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet<TD;TE;>;"
    .local p1, "source":Lcom/google/common/collect/ImmutableCollection;, "Lcom/google/common/collect/ImmutableCollection<TD;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSet;-><init>()V

    .line 474
    iput-object p1, p0, Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;->source:Lcom/google/common/collect/ImmutableCollection;

    .line 475
    iput p2, p0, Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;->hashCode:I

    .line 476
    return-void
.end method


# virtual methods
.method public final hashCode()I
    .registers 2

    .line 526
    .local p0, "this":Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;, "Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet<TD;TE;>;"
    iget v0, p0, Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;->hashCode:I

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 486
    .local p0, "this":Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;, "Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet<TD;TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method isHashCodeFast()Z
    .registers 2

    .line 530
    .local p0, "this":Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;, "Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet<TD;TE;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator<",
            "TE;>;"
        }
    .end annotation

    .line 490
    .local p0, "this":Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;, "Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet<TD;TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;->source:Lcom/google/common/collect/ImmutableCollection;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    .line 491
    .local v0, "backingIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TD;>;"
    new-instance v1, Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet$1;-><init>(Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .line 464
    .local p0, "this":Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;, "Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet<TD;TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .line 482
    .local p0, "this":Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;, "Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet<TD;TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;->source:Lcom/google/common/collect/ImmutableCollection;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    .line 505
    .local p0, "this":Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;, "Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet<TD;TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 509
    .local p0, "this":Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;, "Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet<TD;TE;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;->size()I

    move-result v0

    .line 510
    .local v0, "size":I
    array-length v1, p1

    if-ge v1, v0, :cond_c

    .line 511
    invoke-static {p1, v0}, Lcom/google/common/collect/ObjectArrays;->newArray([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    goto :goto_12

    .line 512
    :cond_c
    array-length v1, p1

    if-le v1, v0, :cond_12

    .line 513
    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 517
    :cond_12
    :goto_12
    move-object v1, p1

    .line 518
    .local v1, "objectArray":[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 519
    .local v2, "i":I
    iget-object v3, p0, Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;->source:Lcom/google/common/collect/ImmutableCollection;

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableCollection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 520
    .local v4, "d":Ljava/lang/Object;, "TD;"
    add-int/lit8 v5, v2, 0x1

    .local v5, "i":I
    invoke-virtual {p0, v4}, Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v1, v2

    .line 519
    move v2, v5

    goto :goto_1a

    .line 522
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "d":Ljava/lang/Object;, "TD;"
    .end local v5    # "i":I
    :cond_2e
    return-object p1
.end method

.method abstract transform(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)TE;"
        }
    .end annotation
.end method
