.class abstract Lcom/google/common/collect/ImmutableMultiset$EntrySet;
.super Lcom/google/common/collect/ImmutableSet;
.source "ImmutableMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableSet<",
        "Lcom/google/common/collect/Multiset$Entry<",
        "TE;>;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/ImmutableMultiset;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMultiset;)V
    .registers 2

    .line 342
    .local p0, "this":Lcom/google/common/collect/ImmutableMultiset$EntrySet;, "Lcom/google/common/collect/ImmutableMultiset<TE;>.EntrySet;"
    iput-object p1, p0, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->this$0:Lcom/google/common/collect/ImmutableMultiset;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSet;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 350
    .local p0, "this":Lcom/google/common/collect/ImmutableMultiset$EntrySet;, "Lcom/google/common/collect/ImmutableMultiset<TE;>.EntrySet;"
    instance-of v0, p1, Lcom/google/common/collect/Multiset$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    .line 351
    move-object v0, p1

    check-cast v0, Lcom/google/common/collect/Multiset$Entry;

    .line 352
    .local v0, "entry":Lcom/google/common/collect/Multiset$Entry;, "Lcom/google/common/collect/Multiset$Entry<*>;"
    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v2

    if-gtz v2, :cond_f

    .line 353
    return v1

    .line 355
    :cond_f
    iget-object v2, p0, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->this$0:Lcom/google/common/collect/ImmutableMultiset;

    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableMultiset;->count(Ljava/lang/Object;)I

    move-result v2

    .line 356
    .local v2, "count":I
    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v3

    if-ne v2, v3, :cond_21

    const/4 v1, 0x1

    nop

    :cond_21
    return v1

    .line 358
    .end local v0    # "entry":Lcom/google/common/collect/Multiset$Entry;, "Lcom/google/common/collect/Multiset$Entry<*>;"
    .end local v2    # "count":I
    :cond_22
    return v1
.end method

.method public hashCode()I
    .registers 2

    .line 395
    .local p0, "this":Lcom/google/common/collect/ImmutableMultiset$EntrySet;, "Lcom/google/common/collect/ImmutableMultiset<TE;>.EntrySet;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->this$0:Lcom/google/common/collect/ImmutableMultiset;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMultiset;->hashCode()I

    move-result v0

    return v0
.end method

.method isPartialView()Z
    .registers 2

    .line 345
    .local p0, "this":Lcom/google/common/collect/ImmutableMultiset$EntrySet;, "Lcom/google/common/collect/ImmutableMultiset<TE;>.EntrySet;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->this$0:Lcom/google/common/collect/ImmutableMultiset;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMultiset;->isPartialView()Z

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 3

    .line 367
    .local p0, "this":Lcom/google/common/collect/ImmutableMultiset$EntrySet;, "Lcom/google/common/collect/ImmutableMultiset<TE;>.EntrySet;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 368
    .local v0, "newArray":[Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 377
    .local p0, "this":Lcom/google/common/collect/ImmutableMultiset$EntrySet;, "Lcom/google/common/collect/ImmutableMultiset<TE;>.EntrySet;"
    .local p1, "other":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->size()I

    move-result v0

    .line 378
    .local v0, "size":I
    array-length v1, p1

    if-ge v1, v0, :cond_c

    .line 379
    invoke-static {p1, v0}, Lcom/google/common/collect/ObjectArrays;->newArray([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    goto :goto_12

    .line 380
    :cond_c
    array-length v1, p1

    if-le v1, v0, :cond_12

    .line 381
    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 385
    :cond_12
    :goto_12
    move-object v1, p1

    .line 386
    .local v1, "otherAsObjectArray":[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 387
    .local v2, "index":I
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/common/collect/Multiset$Entry;

    .line 388
    .local v4, "element":Lcom/google/common/collect/Multiset$Entry;, "Lcom/google/common/collect/Multiset$Entry<*>;"
    add-int/lit8 v5, v2, 0x1

    .local v5, "index":I
    aput-object v4, v1, v2

    .line 387
    move v2, v5

    goto :goto_18

    .line 390
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "element":Lcom/google/common/collect/Multiset$Entry;, "Lcom/google/common/collect/Multiset$Entry<*>;"
    .end local v5    # "index":I
    :cond_2a
    return-object p1
.end method

.method writeReplace()Ljava/lang/Object;
    .registers 3

    .line 402
    .local p0, "this":Lcom/google/common/collect/ImmutableMultiset$EntrySet;, "Lcom/google/common/collect/ImmutableMultiset<TE;>.EntrySet;"
    new-instance v0, Lcom/google/common/collect/ImmutableMultiset$EntrySetSerializedForm;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->this$0:Lcom/google/common/collect/ImmutableMultiset;

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableMultiset$EntrySetSerializedForm;-><init>(Lcom/google/common/collect/ImmutableMultiset;)V

    return-object v0
.end method
