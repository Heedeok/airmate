.class Lcom/google/common/collect/Multimaps$FilteredMultimap$Keys;
.super Lcom/google/common/collect/Multimaps$Keys;
.source "Multimaps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multimaps$FilteredMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Keys"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Multimaps$FilteredMultimap$Keys$EntrySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Multimaps$Keys<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/Multimaps$FilteredMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multimaps$FilteredMultimap;)V
    .registers 2

    .line 2648
    .local p0, "this":Lcom/google/common/collect/Multimaps$FilteredMultimap$Keys;, "Lcom/google/common/collect/Multimaps$FilteredMultimap<TK;TV;>.Keys;"
    iput-object p1, p0, Lcom/google/common/collect/Multimaps$FilteredMultimap$Keys;->this$0:Lcom/google/common/collect/Multimaps$FilteredMultimap;

    invoke-direct {p0}, Lcom/google/common/collect/Multimaps$Keys;-><init>()V

    .line 2678
    return-void
.end method


# virtual methods
.method createEntrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TK;>;>;"
        }
    .end annotation

    .line 2675
    .local p0, "this":Lcom/google/common/collect/Multimaps$FilteredMultimap$Keys;, "Lcom/google/common/collect/Multimaps$FilteredMultimap<TK;TV;>.Keys;"
    new-instance v0, Lcom/google/common/collect/Multimaps$FilteredMultimap$Keys$EntrySet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Multimaps$FilteredMultimap$Keys$EntrySet;-><init>(Lcom/google/common/collect/Multimaps$FilteredMultimap$Keys;)V

    return-object v0
.end method

.method multimap()Lcom/google/common/collect/Multimap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2650
    .local p0, "this":Lcom/google/common/collect/Multimaps$FilteredMultimap$Keys;, "Lcom/google/common/collect/Multimaps$FilteredMultimap<TK;TV;>.Keys;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$FilteredMultimap$Keys;->this$0:Lcom/google/common/collect/Multimaps$FilteredMultimap;

    return-object v0
.end method

.method public remove(Ljava/lang/Object;I)I
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "occurrences"    # I

    .line 2654
    .local p0, "this":Lcom/google/common/collect/Multimaps$FilteredMultimap$Keys;, "Lcom/google/common/collect/Multimaps$FilteredMultimap<TK;TV;>.Keys;"
    const/4 v0, 0x0

    if-ltz p2, :cond_5

    const/4 v1, 0x1

    goto :goto_6

    :cond_5
    const/4 v1, 0x0

    :goto_6
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 2655
    iget-object v1, p0, Lcom/google/common/collect/Multimaps$FilteredMultimap$Keys;->this$0:Lcom/google/common/collect/Multimaps$FilteredMultimap;

    iget-object v1, v1, Lcom/google/common/collect/Multimaps$FilteredMultimap;->unfiltered:Lcom/google/common/collect/Multimap;

    invoke-interface {v1}, Lcom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 2656
    .local v1, "values":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-nez v1, :cond_1a

    .line 2657
    return v0

    .line 2659
    :cond_1a
    const/4 v0, 0x0

    .line 2660
    .local v0, "priorCount":I
    const/4 v2, 0x0

    .line 2661
    .local v2, "removed":I
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2662
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TV;>;"
    :cond_20
    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 2663
    iget-object v4, p0, Lcom/google/common/collect/Multimaps$FilteredMultimap$Keys;->this$0:Lcom/google/common/collect/Multimaps$FilteredMultimap;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Lcom/google/common/collect/Multimaps$FilteredMultimap;->satisfiesPredicate(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 2664
    add-int/lit8 v0, v0, 0x1

    .line 2665
    if-ge v2, p2, :cond_20

    .line 2666
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 2667
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 2671
    :cond_3c
    return v0
.end method
