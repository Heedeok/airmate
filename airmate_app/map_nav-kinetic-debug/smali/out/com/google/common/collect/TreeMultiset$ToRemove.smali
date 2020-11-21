.class final Lcom/google/common/collect/TreeMultiset$ToRemove;
.super Ljava/lang/Object;
.source "TreeMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/TreeMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ToRemove"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field element:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 314
    .local p0, "this":Lcom/google/common/collect/TreeMultiset$ToRemove;, "Lcom/google/common/collect/TreeMultiset$ToRemove<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/TreeMultiset$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/google/common/collect/TreeMultiset$1;

    .line 314
    .local p0, "this":Lcom/google/common/collect/TreeMultiset$ToRemove;, "Lcom/google/common/collect/TreeMultiset$ToRemove<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$ToRemove;-><init>()V

    return-void
.end method


# virtual methods
.method getAndClear()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 323
    .local p0, "this":Lcom/google/common/collect/TreeMultiset$ToRemove;, "Lcom/google/common/collect/TreeMultiset$ToRemove<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$ToRemove;->element:Lcom/google/common/base/Optional;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 324
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$ToRemove;->element:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->orNull()Ljava/lang/Object;

    move-result-object v0

    .line 325
    .local v0, "returnValue":Ljava/lang/Object;, "TE;"
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/common/collect/TreeMultiset$ToRemove;->element:Lcom/google/common/base/Optional;

    .line 326
    return-object v0
.end method

.method setAndGet(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 318
    .local p0, "this":Lcom/google/common/collect/TreeMultiset$ToRemove;, "Lcom/google/common/collect/TreeMultiset$ToRemove<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    invoke-static {p1}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$ToRemove;->element:Lcom/google/common/base/Optional;

    .line 319
    return-object p1
.end method
