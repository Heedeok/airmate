.class Lcom/google/common/collect/Multisets$SetMultiset;
.super Lcom/google/common/collect/ForwardingCollection;
.source "Multisets.java"

# interfaces
.implements Lcom/google/common/collect/Multiset;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multisets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SetMultiset"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Multisets$SetMultiset$ElementSet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ForwardingCollection<",
        "TE;>;",
        "Lcom/google/common/collect/Multiset<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final delegate:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation
.end field

.field transient elementSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation
.end field

.field transient entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "TE;>;)V"
        }
    .end annotation

    .line 346
    .local p0, "this":Lcom/google/common/collect/Multisets$SetMultiset;, "Lcom/google/common/collect/Multisets$SetMultiset<TE;>;"
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingCollection;-><init>()V

    .line 347
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lcom/google/common/collect/Multisets$SetMultiset;->delegate:Ljava/util/Set;

    .line 348
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)I
    .registers 4
    .param p2, "occurrences"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .line 361
    .local p0, "this":Lcom/google/common/collect/Multisets$SetMultiset;, "Lcom/google/common/collect/Multisets$SetMultiset<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public add(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 409
    .local p0, "this":Lcom/google/common/collect/Multisets$SetMultiset;, "Lcom/google/common/collect/Multisets$SetMultiset<TE;>;"
    .local p1, "o":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 413
    .local p0, "this":Lcom/google/common/collect/Multisets$SetMultiset;, "Lcom/google/common/collect/Multisets$SetMultiset<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public count(Ljava/lang/Object;)I
    .registers 3
    .param p1, "element"    # Ljava/lang/Object;

    .line 356
    .local p0, "this":Lcom/google/common/collect/Multisets$SetMultiset;, "Lcom/google/common/collect/Multisets$SetMultiset<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/Multisets$SetMultiset;->delegate:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .line 342
    .local p0, "this":Lcom/google/common/collect/Multisets$SetMultiset;, "Lcom/google/common/collect/Multisets$SetMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$SetMultiset;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .registers 2

    .line 342
    .local p0, "this":Lcom/google/common/collect/Multisets$SetMultiset;, "Lcom/google/common/collect/Multisets$SetMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$SetMultiset;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 351
    .local p0, "this":Lcom/google/common/collect/Multisets$SetMultiset;, "Lcom/google/common/collect/Multisets$SetMultiset<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/Multisets$SetMultiset;->delegate:Ljava/util/Set;

    return-object v0
.end method

.method public elementSet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 377
    .local p0, "this":Lcom/google/common/collect/Multisets$SetMultiset;, "Lcom/google/common/collect/Multisets$SetMultiset<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/Multisets$SetMultiset;->elementSet:Ljava/util/Set;

    .line 378
    .local v0, "es":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    if-nez v0, :cond_c

    new-instance v1, Lcom/google/common/collect/Multisets$SetMultiset$ElementSet;

    invoke-direct {v1, p0}, Lcom/google/common/collect/Multisets$SetMultiset$ElementSet;-><init>(Lcom/google/common/collect/Multisets$SetMultiset;)V

    iput-object v1, p0, Lcom/google/common/collect/Multisets$SetMultiset;->elementSet:Ljava/util/Set;

    goto :goto_d

    :cond_c
    move-object v1, v0

    :goto_d
    return-object v1
.end method

.method public entrySet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TE;>;>;"
        }
    .end annotation

    .line 384
    .local p0, "this":Lcom/google/common/collect/Multisets$SetMultiset;, "Lcom/google/common/collect/Multisets$SetMultiset<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/Multisets$SetMultiset;->entrySet:Ljava/util/Set;

    .line 385
    .local v0, "es":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/common/collect/Multiset$Entry<TE;>;>;"
    if-nez v0, :cond_c

    .line 386
    new-instance v1, Lcom/google/common/collect/Multisets$SetMultiset$1;

    invoke-direct {v1, p0}, Lcom/google/common/collect/Multisets$SetMultiset$1;-><init>(Lcom/google/common/collect/Multisets$SetMultiset;)V

    iput-object v1, p0, Lcom/google/common/collect/Multisets$SetMultiset;->entrySet:Ljava/util/Set;

    move-object v0, v1

    .line 405
    :cond_c
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 436
    .local p0, "this":Lcom/google/common/collect/Multisets$SetMultiset;, "Lcom/google/common/collect/Multisets$SetMultiset<TE;>;"
    instance-of v0, p1, Lcom/google/common/collect/Multiset;

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    .line 437
    move-object v0, p1

    check-cast v0, Lcom/google/common/collect/Multiset;

    .line 438
    .local v0, "that":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<*>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$SetMultiset;->size()I

    move-result v2

    invoke-interface {v0}, Lcom/google/common/collect/Multiset;->size()I

    move-result v3

    if-ne v2, v3, :cond_20

    iget-object v2, p0, Lcom/google/common/collect/Multisets$SetMultiset;->delegate:Ljava/util/Set;

    invoke-interface {v0}, Lcom/google/common/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/4 v1, 0x1

    nop

    :cond_20
    return v1

    .line 440
    .end local v0    # "that":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<*>;"
    :cond_21
    return v1
.end method

.method public hashCode()I
    .registers 5

    .line 444
    .local p0, "this":Lcom/google/common/collect/Multisets$SetMultiset;, "Lcom/google/common/collect/Multisets$SetMultiset<TE;>;"
    const/4 v0, 0x0

    .line 445
    .local v0, "sum":I
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$SetMultiset;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 446
    .local v2, "e":Ljava/lang/Object;, "TE;"
    if-nez v2, :cond_13

    const/4 v3, 0x0

    goto :goto_17

    :cond_13
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_17
    xor-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    goto :goto_5

    .line 448
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "e":Ljava/lang/Object;, "TE;"
    :cond_1b
    return v0
.end method

.method public remove(Ljava/lang/Object;I)I
    .registers 4
    .param p1, "element"    # Ljava/lang/Object;
    .param p2, "occurrences"    # I

    .line 366
    .local p0, "this":Lcom/google/common/collect/Multisets$SetMultiset;, "Lcom/google/common/collect/Multisets$SetMultiset<TE;>;"
    if-nez p2, :cond_7

    .line 367
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multisets$SetMultiset;->count(Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 369
    :cond_7
    if-lez p2, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 370
    iget-object v0, p0, Lcom/google/common/collect/Multisets$SetMultiset;->delegate:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setCount(Ljava/lang/Object;I)I
    .registers 4
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .line 418
    .local p0, "this":Lcom/google/common/collect/Multisets$SetMultiset;, "Lcom/google/common/collect/Multisets$SetMultiset<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    const-string v0, "count"

    invoke-static {p2, v0}, Lcom/google/common/collect/Multisets;->checkNonnegative(ILjava/lang/String;)V

    .line 420
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multisets$SetMultiset;->count(Ljava/lang/Object;)I

    move-result v0

    if-ne p2, v0, :cond_c

    .line 421
    return p2

    .line 422
    :cond_c
    if-nez p2, :cond_13

    .line 423
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multisets$SetMultiset;->remove(Ljava/lang/Object;)Z

    .line 424
    const/4 v0, 0x1

    return v0

    .line 426
    :cond_13
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setCount(Ljava/lang/Object;II)Z
    .registers 5
    .param p2, "oldCount"    # I
    .param p3, "newCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;II)Z"
        }
    .end annotation

    .line 432
    .local p0, "this":Lcom/google/common/collect/Multisets$SetMultiset;, "Lcom/google/common/collect/Multisets$SetMultiset<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/collect/Multisets;->setCountImpl(Lcom/google/common/collect/Multiset;Ljava/lang/Object;II)Z

    move-result v0

    return v0
.end method
