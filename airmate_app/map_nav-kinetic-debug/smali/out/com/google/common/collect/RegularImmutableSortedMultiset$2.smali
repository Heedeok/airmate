.class Lcom/google/common/collect/RegularImmutableSortedMultiset$2;
.super Lcom/google/common/collect/ImmutableMultiset$EntrySet;
.source "RegularImmutableSortedMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/RegularImmutableSortedMultiset;->createEntrySet()Lcom/google/common/collect/ImmutableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/RegularImmutableSortedMultiset;


# direct methods
.method constructor <init>(Lcom/google/common/collect/RegularImmutableSortedMultiset;)V
    .registers 2

    .line 100
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSortedMultiset$2;, "Lcom/google/common/collect/RegularImmutableSortedMultiset.2;"
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset$2;->this$0:Lcom/google/common/collect/RegularImmutableSortedMultiset;

    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableMultiset$EntrySet;-><init>(Lcom/google/common/collect/ImmutableMultiset;)V

    return-void
.end method


# virtual methods
.method createAsList()Lcom/google/common/collect/ImmutableList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TE;>;>;"
        }
    .end annotation

    .line 115
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSortedMultiset$2;, "Lcom/google/common/collect/RegularImmutableSortedMultiset.2;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset$2;->this$0:Lcom/google/common/collect/RegularImmutableSortedMultiset;

    iget-object v0, v0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->entries:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator<",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TE;>;>;"
        }
    .end annotation

    .line 108
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSortedMultiset$2;, "Lcom/google/common/collect/RegularImmutableSortedMultiset.2;"
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedMultiset$2;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .line 100
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSortedMultiset$2;, "Lcom/google/common/collect/RegularImmutableSortedMultiset.2;"
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedMultiset$2;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .line 103
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSortedMultiset$2;, "Lcom/google/common/collect/RegularImmutableSortedMultiset.2;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset$2;->this$0:Lcom/google/common/collect/RegularImmutableSortedMultiset;

    iget-object v0, v0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->entries:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    return v0
.end method
