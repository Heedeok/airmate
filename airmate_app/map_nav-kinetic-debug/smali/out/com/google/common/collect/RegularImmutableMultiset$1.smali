.class Lcom/google/common/collect/RegularImmutableMultiset$1;
.super Lcom/google/common/collect/ImmutableMultiset$EntrySet;
.source "RegularImmutableMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/RegularImmutableMultiset;->createEntrySet()Lcom/google/common/collect/ImmutableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/RegularImmutableMultiset;


# direct methods
.method constructor <init>(Lcom/google/common/collect/RegularImmutableMultiset;)V
    .registers 2

    .line 75
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMultiset$1;, "Lcom/google/common/collect/RegularImmutableMultiset.1;"
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableMultiset$1;->this$0:Lcom/google/common/collect/RegularImmutableMultiset;

    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableMultiset$EntrySet;-><init>(Lcom/google/common/collect/ImmutableMultiset;)V

    return-void
.end method


# virtual methods
.method createAsList()Lcom/google/common/collect/ImmutableList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TE;>;>;"
        }
    .end annotation

    .line 89
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMultiset$1;, "Lcom/google/common/collect/RegularImmutableMultiset.1;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMultiset$1;->this$0:Lcom/google/common/collect/RegularImmutableMultiset;

    invoke-static {v0}, Lcom/google/common/collect/RegularImmutableMultiset;->access$000(Lcom/google/common/collect/RegularImmutableMultiset;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 90
    .local v0, "entryList":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Ljava/util/Map$Entry<TE;Ljava/lang/Integer;>;>;"
    new-instance v1, Lcom/google/common/collect/RegularImmutableMultiset$1$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/RegularImmutableMultiset$1$1;-><init>(Lcom/google/common/collect/RegularImmutableMultiset$1;Lcom/google/common/collect/ImmutableList;)V

    return-object v1
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

    .line 83
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMultiset$1;, "Lcom/google/common/collect/RegularImmutableMultiset.1;"
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableMultiset$1;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .line 75
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMultiset$1;, "Lcom/google/common/collect/RegularImmutableMultiset.1;"
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableMultiset$1;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .line 78
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMultiset$1;, "Lcom/google/common/collect/RegularImmutableMultiset.1;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMultiset$1;->this$0:Lcom/google/common/collect/RegularImmutableMultiset;

    invoke-static {v0}, Lcom/google/common/collect/RegularImmutableMultiset;->access$000(Lcom/google/common/collect/RegularImmutableMultiset;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->size()I

    move-result v0

    return v0
.end method
