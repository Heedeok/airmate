.class abstract Lcom/google/common/collect/TransformedImmutableList;
.super Lcom/google/common/collect/ImmutableList;
.source "TransformedImmutableList.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/TransformedImmutableList$TransformedView;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableList<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final transient backingList:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "TD;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList<",
            "TD;>;)V"
        }
    .end annotation

    .line 48
    .local p0, "this":Lcom/google/common/collect/TransformedImmutableList;, "Lcom/google/common/collect/TransformedImmutableList<TD;TE;>;"
    .local p1, "backingList":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<TD;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableList;-><init>()V

    .line 49
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Lcom/google/common/collect/TransformedImmutableList;->backingList:Lcom/google/common/collect/ImmutableList;

    .line 50
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 67
    .local p0, "this":Lcom/google/common/collect/TransformedImmutableList;, "Lcom/google/common/collect/TransformedImmutableList<TD;TE;>;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 68
    return v0

    .line 70
    :cond_4
    instance-of v1, p1, Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_27

    .line 71
    move-object v1, p1

    check-cast v1, Ljava/util/List;

    .line 72
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-virtual {p0}, Lcom/google/common/collect/TransformedImmutableList;->size()I

    move-result v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_25

    invoke-virtual {p0}, Lcom/google/common/collect/TransformedImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/common/collect/Iterators;->elementsEqual(Ljava/util/Iterator;Ljava/util/Iterator;)Z

    move-result v3

    if-eqz v3, :cond_25

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    :goto_26
    return v0

    .line 75
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_27
    return v2
.end method

.method public get(I)Ljava/lang/Object;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 55
    .local p0, "this":Lcom/google/common/collect/TransformedImmutableList;, "Lcom/google/common/collect/TransformedImmutableList<TD;TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/TransformedImmutableList;->backingList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/TransformedImmutableList;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 79
    .local p0, "this":Lcom/google/common/collect/TransformedImmutableList;, "Lcom/google/common/collect/TransformedImmutableList<TD;TE;>;"
    invoke-static {p0}, Lcom/google/common/collect/Lists;->hashCodeImpl(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method isPartialView()Z
    .registers 2

    .line 83
    .local p0, "this":Lcom/google/common/collect/TransformedImmutableList;, "Lcom/google/common/collect/TransformedImmutableList<TD;TE;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public size()I
    .registers 2

    .line 59
    .local p0, "this":Lcom/google/common/collect/TransformedImmutableList;, "Lcom/google/common/collect/TransformedImmutableList<TD;TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/TransformedImmutableList;->backingList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    return v0
.end method

.method public subList(II)Lcom/google/common/collect/ImmutableList;
    .registers 5
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 63
    .local p0, "this":Lcom/google/common/collect/TransformedImmutableList;, "Lcom/google/common/collect/TransformedImmutableList<TD;TE;>;"
    new-instance v0, Lcom/google/common/collect/TransformedImmutableList$TransformedView;

    iget-object v1, p0, Lcom/google/common/collect/TransformedImmutableList;->backingList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, p1, p2}, Lcom/google/common/collect/ImmutableList;->subList(II)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/TransformedImmutableList$TransformedView;-><init>(Lcom/google/common/collect/TransformedImmutableList;Lcom/google/common/collect/ImmutableList;)V

    return-object v0
.end method

.method public bridge synthetic subList(II)Ljava/util/List;
    .registers 4
    .param p1, "x0"    # I
    .param p2, "x1"    # I

    .line 33
    .local p0, "this":Lcom/google/common/collect/TransformedImmutableList;, "Lcom/google/common/collect/TransformedImmutableList<TD;TE;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/TransformedImmutableList;->subList(II)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method abstract transform(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)TE;"
        }
    .end annotation
.end method
