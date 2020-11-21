.class abstract Lcom/google/common/collect/ImmutableMap$EntrySet;
.super Lcom/google/common/collect/ImmutableSet;
.source "ImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/ImmutableMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMap;)V
    .registers 2

    .line 372
    .local p0, "this":Lcom/google/common/collect/ImmutableMap$EntrySet;, "Lcom/google/common/collect/ImmutableMap<TK;TV;>.EntrySet;"
    iput-object p1, p0, Lcom/google/common/collect/ImmutableMap$EntrySet;->this$0:Lcom/google/common/collect/ImmutableMap;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSet;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 380
    .local p0, "this":Lcom/google/common/collect/ImmutableMap$EntrySet;, "Lcom/google/common/collect/ImmutableMap<TK;TV;>.EntrySet;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    .line 381
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 382
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v2, p0, Lcom/google/common/collect/ImmutableMap$EntrySet;->this$0:Lcom/google/common/collect/ImmutableMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 383
    .local v2, "value":Ljava/lang/Object;, "TV;"
    if-eqz v2, :cond_20

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    const/4 v1, 0x1

    nop

    :cond_20
    return v1

    .line 385
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v2    # "value":Ljava/lang/Object;, "TV;"
    :cond_21
    return v1
.end method

.method isPartialView()Z
    .registers 2

    .line 390
    .local p0, "this":Lcom/google/common/collect/ImmutableMap$EntrySet;, "Lcom/google/common/collect/ImmutableMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap$EntrySet;->this$0:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->isPartialView()Z

    move-result v0

    return v0
.end method

.method public size()I
    .registers 2

    .line 375
    .local p0, "this":Lcom/google/common/collect/ImmutableMap$EntrySet;, "Lcom/google/common/collect/ImmutableMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap$EntrySet;->this$0:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->size()I

    move-result v0

    return v0
.end method

.method writeReplace()Ljava/lang/Object;
    .registers 3

    .line 395
    .local p0, "this":Lcom/google/common/collect/ImmutableMap$EntrySet;, "Lcom/google/common/collect/ImmutableMap<TK;TV;>.EntrySet;"
    new-instance v0, Lcom/google/common/collect/ImmutableMap$EntrySetSerializedForm;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableMap$EntrySet;->this$0:Lcom/google/common/collect/ImmutableMap;

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableMap$EntrySetSerializedForm;-><init>(Lcom/google/common/collect/ImmutableMap;)V

    return-object v0
.end method
