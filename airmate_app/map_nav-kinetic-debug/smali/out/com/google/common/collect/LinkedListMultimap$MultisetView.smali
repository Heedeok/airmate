.class Lcom/google/common/collect/LinkedListMultimap$MultisetView;
.super Lcom/google/common/collect/AbstractMultiset;
.source "LinkedListMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/LinkedListMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultisetView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractMultiset<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/LinkedListMultimap;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/LinkedListMultimap;)V
    .registers 2

    .line 715
    .local p0, "this":Lcom/google/common/collect/LinkedListMultimap$MultisetView;, "Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.MultisetView;"
    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$MultisetView;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractMultiset;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/LinkedListMultimap;Lcom/google/common/collect/LinkedListMultimap$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/common/collect/LinkedListMultimap;
    .param p2, "x1"    # Lcom/google/common/collect/LinkedListMultimap$1;

    .line 715
    .local p0, "this":Lcom/google/common/collect/LinkedListMultimap$MultisetView;, "Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.MultisetView;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/LinkedListMultimap$MultisetView;-><init>(Lcom/google/common/collect/LinkedListMultimap;)V

    return-void
.end method


# virtual methods
.method public count(Ljava/lang/Object;)I
    .registers 3
    .param p1, "element"    # Ljava/lang/Object;

    .line 723
    .local p0, "this":Lcom/google/common/collect/LinkedListMultimap$MultisetView;, "Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.MultisetView;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$MultisetView;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$600(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method distinctElements()I
    .registers 2

    .line 748
    .local p0, "this":Lcom/google/common/collect/LinkedListMultimap$MultisetView;, "Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.MultisetView;"
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap$MultisetView;->elementSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public elementSet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 774
    .local p0, "this":Lcom/google/common/collect/LinkedListMultimap$MultisetView;, "Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.MultisetView;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$MultisetView;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    invoke-virtual {v0}, Lcom/google/common/collect/LinkedListMultimap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method entryIterator()Ljava/util/Iterator;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TK;>;>;"
        }
    .end annotation

    .line 728
    .local p0, "this":Lcom/google/common/collect/LinkedListMultimap$MultisetView;, "Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.MultisetView;"
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap$MultisetView$1;

    new-instance v1, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;

    iget-object v2, p0, Lcom/google/common/collect/LinkedListMultimap$MultisetView;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;-><init>(Lcom/google/common/collect/LinkedListMultimap;Lcom/google/common/collect/LinkedListMultimap$1;)V

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/LinkedListMultimap$MultisetView$1;-><init>(Lcom/google/common/collect/LinkedListMultimap$MultisetView;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 778
    .local p0, "this":Lcom/google/common/collect/LinkedListMultimap$MultisetView;, "Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.MultisetView;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$MultisetView;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$600(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/Multiset;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 782
    .local p0, "this":Lcom/google/common/collect/LinkedListMultimap$MultisetView;, "Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.MultisetView;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$MultisetView;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$600(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/Multiset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 752
    .local p0, "this":Lcom/google/common/collect/LinkedListMultimap$MultisetView;, "Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.MultisetView;"
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap$MultisetView$2;

    new-instance v1, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;

    iget-object v2, p0, Lcom/google/common/collect/LinkedListMultimap$MultisetView;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {v1, v2}, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;-><init>(Lcom/google/common/collect/LinkedListMultimap;)V

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/LinkedListMultimap$MultisetView$2;-><init>(Lcom/google/common/collect/LinkedListMultimap$MultisetView;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;I)I
    .registers 6
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "occurrences"    # I

    .line 762
    .local p0, "this":Lcom/google/common/collect/LinkedListMultimap$MultisetView;, "Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.MultisetView;"
    if-ltz p2, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 763
    invoke-virtual {p0, p1}, Lcom/google/common/collect/LinkedListMultimap$MultisetView;->count(Ljava/lang/Object;)I

    move-result v0

    .line 764
    .local v0, "oldCount":I
    new-instance v1, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;

    iget-object v2, p0, Lcom/google/common/collect/LinkedListMultimap$MultisetView;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {v1, v2, p1}, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;-><init>(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V

    .line 765
    .local v1, "values":Ljava/util/Iterator;, "Ljava/util/Iterator<TV;>;"
    :goto_13
    add-int/lit8 v2, p2, -0x1

    .local v2, "occurrences":I
    if-lez p2, :cond_25

    .end local p2    # "occurrences":I
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_25

    .line 766
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 767
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 764
    move p2, v2

    goto :goto_13

    .line 769
    :cond_25
    return v0
.end method

.method public size()I
    .registers 2

    .line 718
    .local p0, "this":Lcom/google/common/collect/LinkedListMultimap$MultisetView;, "Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.MultisetView;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$MultisetView;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$600(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Multiset;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 786
    .local p0, "this":Lcom/google/common/collect/LinkedListMultimap$MultisetView;, "Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.MultisetView;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$MultisetView;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$600(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/Multiset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
