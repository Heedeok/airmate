.class Lcom/google/common/collect/ImmutableMultimap$Builder$1;
.super Ljava/lang/Object;
.source "ImmutableMultimap.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ImmutableMultimap$Builder;->build()Lcom/google/common/collect/ImmutableMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function<",
        "Ljava/util/Map$Entry<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/ImmutableMultimap$Builder;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMultimap$Builder;)V
    .registers 2

    .line 265
    .local p0, "this":Lcom/google/common/collect/ImmutableMultimap$Builder$1;, "Lcom/google/common/collect/ImmutableMultimap$Builder.1;"
    iput-object p1, p0, Lcom/google/common/collect/ImmutableMultimap$Builder$1;->this$0:Lcom/google/common/collect/ImmutableMultimap$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 265
    .local p0, "this":Lcom/google/common/collect/ImmutableMultimap$Builder$1;, "Lcom/google/common/collect/ImmutableMultimap$Builder.1;"
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableMultimap$Builder$1;->apply(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public apply(Ljava/util/Map$Entry;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;)TK;"
        }
    .end annotation

    .line 268
    .local p0, "this":Lcom/google/common/collect/ImmutableMultimap$Builder$1;, "Lcom/google/common/collect/ImmutableMultimap$Builder.1;"
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Ljava/util/Collection<TV;>;>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
