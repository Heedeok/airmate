.class public abstract Lcom/google/common/base/Equivalence;
.super Ljava/lang/Object;
.source "Equivalence.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/Equivalence$EquivalentToPredicate;,
        Lcom/google/common/base/Equivalence$Wrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 45
    .local p0, "this":Lcom/google/common/base/Equivalence;, "Lcom/google/common/base/Equivalence<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract doEquivalent(Ljava/lang/Object;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation
.end method

.method protected abstract doHash(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method public final equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 66
    .local p0, "this":Lcom/google/common/base/Equivalence;, "Lcom/google/common/base/Equivalence<TT;>;"
    .local p1, "a":Ljava/lang/Object;, "TT;"
    .local p2, "b":Ljava/lang/Object;, "TT;"
    if-ne p1, p2, :cond_4

    .line 67
    const/4 v0, 0x1

    return v0

    .line 69
    :cond_4
    if-eqz p1, :cond_e

    if-nez p2, :cond_9

    goto :goto_e

    .line 72
    :cond_9
    invoke-virtual {p0, p1, p2}, Lcom/google/common/base/Equivalence;->doEquivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 70
    :cond_e
    :goto_e
    const/4 v0, 0x0

    return v0
.end method

.method public final equivalentTo(Ljava/lang/Object;)Lcom/google/common/base/Predicate;
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/google/common/base/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 257
    .local p0, "this":Lcom/google/common/base/Equivalence;, "Lcom/google/common/base/Equivalence<TT;>;"
    .local p1, "target":Ljava/lang/Object;, "TT;"
    new-instance v0, Lcom/google/common/base/Equivalence$EquivalentToPredicate;

    invoke-direct {v0, p0, p1}, Lcom/google/common/base/Equivalence$EquivalentToPredicate;-><init>(Lcom/google/common/base/Equivalence;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final hash(Ljava/lang/Object;)I
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 102
    .local p0, "this":Lcom/google/common/base/Equivalence;, "Lcom/google/common/base/Equivalence<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_4

    .line 103
    const/4 v0, 0x0

    return v0

    .line 105
    :cond_4
    invoke-virtual {p0, p1}, Lcom/google/common/base/Equivalence;->doHash(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final onResultOf(Lcom/google/common/base/Function;)Lcom/google/common/base/Equivalence;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/Function<",
            "TF;+TT;>;)",
            "Lcom/google/common/base/Equivalence<",
            "TF;>;"
        }
    .end annotation

    .line 141
    .local p0, "this":Lcom/google/common/base/Equivalence;, "Lcom/google/common/base/Equivalence<TT;>;"
    .local p1, "function":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<TF;+TT;>;"
    new-instance v0, Lcom/google/common/base/FunctionalEquivalence;

    invoke-direct {v0, p1, p0}, Lcom/google/common/base/FunctionalEquivalence;-><init>(Lcom/google/common/base/Function;Lcom/google/common/base/Equivalence;)V

    return-object v0
.end method

.method public final pairwise()Lcom/google/common/base/Equivalence;
    .registers 2
    .annotation build Lcom/google/common/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>()",
            "Lcom/google/common/base/Equivalence<",
            "Ljava/lang/Iterable<",
            "TS;>;>;"
        }
    .end annotation

    .line 247
    .local p0, "this":Lcom/google/common/base/Equivalence;, "Lcom/google/common/base/Equivalence<TT;>;"
    new-instance v0, Lcom/google/common/base/PairwiseEquivalence;

    invoke-direct {v0, p0}, Lcom/google/common/base/PairwiseEquivalence;-><init>(Lcom/google/common/base/Equivalence;)V

    return-object v0
.end method

.method public final wrap(Ljava/lang/Object;)Lcom/google/common/base/Equivalence$Wrapper;
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>(TS;)",
            "Lcom/google/common/base/Equivalence$Wrapper<",
            "TS;>;"
        }
    .end annotation

    .line 152
    .local p0, "this":Lcom/google/common/base/Equivalence;, "Lcom/google/common/base/Equivalence<TT;>;"
    .local p1, "reference":Ljava/lang/Object;, "TS;"
    new-instance v0, Lcom/google/common/base/Equivalence$Wrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/common/base/Equivalence$Wrapper;-><init>(Lcom/google/common/base/Equivalence;Ljava/lang/Object;Lcom/google/common/base/Equivalence$1;)V

    return-object v0
.end method
