.class Lcom/google/common/collect/ImmutableMap$Values;
.super Lcom/google/common/collect/ImmutableCollection;
.source "ImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableCollection<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/ImmutableMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMap;)V
    .registers 2

    .line 493
    .local p0, "this":Lcom/google/common/collect/ImmutableMap$Values;, "Lcom/google/common/collect/ImmutableMap<TK;TV;>.Values;"
    iput-object p1, p0, Lcom/google/common/collect/ImmutableMap$Values;->this$0:Lcom/google/common/collect/ImmutableMap;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "object"    # Ljava/lang/Object;

    .line 506
    .local p0, "this":Lcom/google/common/collect/ImmutableMap$Values;, "Lcom/google/common/collect/ImmutableMap<TK;TV;>.Values;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap$Values;->this$0:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method createAsList()Lcom/google/common/collect/ImmutableList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "TV;>;"
        }
    .end annotation

    .line 517
    .local p0, "this":Lcom/google/common/collect/ImmutableMap$Values;, "Lcom/google/common/collect/ImmutableMap<TK;TV;>.Values;"
    new-instance v0, Lcom/google/common/collect/ImmutableMap$Values$1;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableMap$Values;->this$0:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/ImmutableMap$Values$1;-><init>(Lcom/google/common/collect/ImmutableMap$Values;Lcom/google/common/collect/ImmutableList;)V

    return-object v0
.end method

.method isPartialView()Z
    .registers 2

    .line 511
    .local p0, "this":Lcom/google/common/collect/ImmutableMap$Values;, "Lcom/google/common/collect/ImmutableMap<TK;TV;>.Values;"
    const/4 v0, 0x1

    return v0
.end method

.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator<",
            "TV;>;"
        }
    .end annotation

    .line 501
    .local p0, "this":Lcom/google/common/collect/ImmutableMap$Values;, "Lcom/google/common/collect/ImmutableMap<TK;TV;>.Values;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap$Values;->this$0:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->valueIterator(Lcom/google/common/collect/UnmodifiableIterator;)Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .line 493
    .local p0, "this":Lcom/google/common/collect/ImmutableMap$Values;, "Lcom/google/common/collect/ImmutableMap<TK;TV;>.Values;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMap$Values;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .line 496
    .local p0, "this":Lcom/google/common/collect/ImmutableMap$Values;, "Lcom/google/common/collect/ImmutableMap<TK;TV;>.Values;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap$Values;->this$0:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->size()I

    move-result v0

    return v0
.end method

.method writeReplace()Ljava/lang/Object;
    .registers 3

    .line 526
    .local p0, "this":Lcom/google/common/collect/ImmutableMap$Values;, "Lcom/google/common/collect/ImmutableMap<TK;TV;>.Values;"
    new-instance v0, Lcom/google/common/collect/ImmutableMap$ValuesSerializedForm;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableMap$Values;->this$0:Lcom/google/common/collect/ImmutableMap;

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableMap$ValuesSerializedForm;-><init>(Lcom/google/common/collect/ImmutableMap;)V

    return-object v0
.end method
