.class Lcom/google/common/collect/ConcurrentHashMultiset$1;
.super Lcom/google/common/collect/ForwardingSet;
.source "ConcurrentHashMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ConcurrentHashMultiset;->createElementSet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ForwardingSet<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/ConcurrentHashMultiset;

.field final synthetic val$delegate:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ConcurrentHashMultiset;Ljava/util/Set;)V
    .registers 3

    .line 452
    .local p0, "this":Lcom/google/common/collect/ConcurrentHashMultiset$1;, "Lcom/google/common/collect/ConcurrentHashMultiset.1;"
    iput-object p1, p0, Lcom/google/common/collect/ConcurrentHashMultiset$1;->this$0:Lcom/google/common/collect/ConcurrentHashMultiset;

    iput-object p2, p0, Lcom/google/common/collect/ConcurrentHashMultiset$1;->val$delegate:Ljava/util/Set;

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingSet;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .line 452
    .local p0, "this":Lcom/google/common/collect/ConcurrentHashMultiset$1;, "Lcom/google/common/collect/ConcurrentHashMultiset.1;"
    invoke-virtual {p0}, Lcom/google/common/collect/ConcurrentHashMultiset$1;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .registers 2

    .line 452
    .local p0, "this":Lcom/google/common/collect/ConcurrentHashMultiset$1;, "Lcom/google/common/collect/ConcurrentHashMultiset.1;"
    invoke-virtual {p0}, Lcom/google/common/collect/ConcurrentHashMultiset$1;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 454
    .local p0, "this":Lcom/google/common/collect/ConcurrentHashMultiset$1;, "Lcom/google/common/collect/ConcurrentHashMultiset.1;"
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset$1;->val$delegate:Ljava/util/Set;

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "object"    # Ljava/lang/Object;

    .line 458
    .local p0, "this":Lcom/google/common/collect/ConcurrentHashMultiset$1;, "Lcom/google/common/collect/ConcurrentHashMultiset.1;"
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/google/common/collect/ConcurrentHashMultiset$1;->val$delegate:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_7} :catch_a
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_7} :catch_8

    return v1

    .line 461
    :catch_8
    move-exception v1

    .line 462
    .local v1, "e":Ljava/lang/ClassCastException;
    return v0

    .line 459
    .end local v1    # "e":Ljava/lang/ClassCastException;
    :catch_a
    move-exception v1

    .line 460
    .local v1, "e":Ljava/lang/NullPointerException;
    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 466
    .local p0, "this":Lcom/google/common/collect/ConcurrentHashMultiset$1;, "Lcom/google/common/collect/ConcurrentHashMultiset.1;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ConcurrentHashMultiset$1;->standardRemoveAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method
