.class Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet$1;
.super Lcom/google/common/collect/UnmodifiableIterator;
.source "ImmutableSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/UnmodifiableIterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;

.field final synthetic val$backingIterator:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;Ljava/util/Iterator;)V
    .registers 3

    .line 491
    .local p0, "this":Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet$1;, "Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet.1;"
    iput-object p1, p0, Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet$1;->this$0:Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;

    iput-object p2, p0, Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet$1;->val$backingIterator:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .line 494
    .local p0, "this":Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet$1;, "Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet.1;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet$1;->val$backingIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 499
    .local p0, "this":Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet$1;, "Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet.1;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet$1;->this$0:Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet$1;->val$backingIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
