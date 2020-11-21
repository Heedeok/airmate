.class final Lcom/google/common/cache/LocalCache$KeySet;
.super Ljava/util/AbstractSet;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/cache/LocalCache;


# direct methods
.method constructor <init>(Lcom/google/common/cache/LocalCache;)V
    .registers 2

    .line 4484
    .local p0, "this":Lcom/google/common/cache/LocalCache$KeySet;, "Lcom/google/common/cache/LocalCache<TK;TV;>.KeySet;"
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$KeySet;->this$0:Lcom/google/common/cache/LocalCache;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 4513
    .local p0, "this":Lcom/google/common/cache/LocalCache$KeySet;, "Lcom/google/common/cache/LocalCache<TK;TV;>.KeySet;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$KeySet;->this$0:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->clear()V

    .line 4514
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 4503
    .local p0, "this":Lcom/google/common/cache/LocalCache$KeySet;, "Lcom/google/common/cache/LocalCache<TK;TV;>.KeySet;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$KeySet;->this$0:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0, p1}, Lcom/google/common/cache/LocalCache;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 4498
    .local p0, "this":Lcom/google/common/cache/LocalCache$KeySet;, "Lcom/google/common/cache/LocalCache<TK;TV;>.KeySet;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$KeySet;->this$0:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 4488
    .local p0, "this":Lcom/google/common/cache/LocalCache$KeySet;, "Lcom/google/common/cache/LocalCache<TK;TV;>.KeySet;"
    new-instance v0, Lcom/google/common/cache/LocalCache$KeyIterator;

    iget-object v1, p0, Lcom/google/common/cache/LocalCache$KeySet;->this$0:Lcom/google/common/cache/LocalCache;

    invoke-direct {v0, v1}, Lcom/google/common/cache/LocalCache$KeyIterator;-><init>(Lcom/google/common/cache/LocalCache;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 4508
    .local p0, "this":Lcom/google/common/cache/LocalCache$KeySet;, "Lcom/google/common/cache/LocalCache<TK;TV;>.KeySet;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$KeySet;->this$0:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0, p1}, Lcom/google/common/cache/LocalCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public size()I
    .registers 2

    .line 4493
    .local p0, "this":Lcom/google/common/cache/LocalCache$KeySet;, "Lcom/google/common/cache/LocalCache<TK;TV;>.KeySet;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$KeySet;->this$0:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->size()I

    move-result v0

    return v0
.end method
