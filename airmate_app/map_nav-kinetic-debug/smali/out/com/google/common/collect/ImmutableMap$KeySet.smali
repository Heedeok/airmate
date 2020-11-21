.class Lcom/google/common/collect/ImmutableMap$KeySet;
.super Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;
.source "ImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/ImmutableMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMap;)V
    .registers 2

    .line 427
    .local p0, "this":Lcom/google/common/collect/ImmutableMap$KeySet;, "Lcom/google/common/collect/ImmutableMap<TK;TV;>.KeySet;"
    iput-object p1, p0, Lcom/google/common/collect/ImmutableMap$KeySet;->this$0:Lcom/google/common/collect/ImmutableMap;

    .line 428
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;-><init>(Lcom/google/common/collect/ImmutableCollection;)V

    .line 429
    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/ImmutableMap;I)V
    .registers 3
    .param p2, "hashCode"    # I

    .line 431
    .local p0, "this":Lcom/google/common/collect/ImmutableMap$KeySet;, "Lcom/google/common/collect/ImmutableMap<TK;TV;>.KeySet;"
    iput-object p1, p0, Lcom/google/common/collect/ImmutableMap$KeySet;->this$0:Lcom/google/common/collect/ImmutableMap;

    .line 432
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;-><init>(Lcom/google/common/collect/ImmutableCollection;I)V

    .line 433
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 442
    .local p0, "this":Lcom/google/common/collect/ImmutableMap$KeySet;, "Lcom/google/common/collect/ImmutableMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap$KeySet;->this$0:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method createAsList()Lcom/google/common/collect/ImmutableList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "TK;>;"
        }
    .end annotation

    .line 453
    .local p0, "this":Lcom/google/common/collect/ImmutableMap$KeySet;, "Lcom/google/common/collect/ImmutableMap<TK;TV;>.KeySet;"
    new-instance v0, Lcom/google/common/collect/ImmutableMap$KeySet$1;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableMap$KeySet;->this$0:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/ImmutableMap$KeySet$1;-><init>(Lcom/google/common/collect/ImmutableMap$KeySet;Lcom/google/common/collect/ImmutableList;)V

    return-object v0
.end method

.method isPartialView()Z
    .registers 2

    .line 447
    .local p0, "this":Lcom/google/common/collect/ImmutableMap$KeySet;, "Lcom/google/common/collect/ImmutableMap<TK;TV;>.KeySet;"
    const/4 v0, 0x1

    return v0
.end method

.method bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 426
    .local p0, "this":Lcom/google/common/collect/ImmutableMap$KeySet;, "Lcom/google/common/collect/ImmutableMap<TK;TV;>.KeySet;"
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableMap$KeySet;->transform(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method transform(Ljava/util/Map$Entry;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)TK;"
        }
    .end annotation

    .line 437
    .local p0, "this":Lcom/google/common/collect/ImmutableMap$KeySet;, "Lcom/google/common/collect/ImmutableMap<TK;TV;>.KeySet;"
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .registers 3

    .line 462
    .local p0, "this":Lcom/google/common/collect/ImmutableMap$KeySet;, "Lcom/google/common/collect/ImmutableMap<TK;TV;>.KeySet;"
    new-instance v0, Lcom/google/common/collect/ImmutableMap$KeySetSerializedForm;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableMap$KeySet;->this$0:Lcom/google/common/collect/ImmutableMap;

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableMap$KeySetSerializedForm;-><init>(Lcom/google/common/collect/ImmutableMap;)V

    return-object v0
.end method
