.class Lcom/google/common/collect/ImmutableMap$KeySet$1;
.super Lcom/google/common/collect/TransformedImmutableList;
.source "ImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ImmutableMap$KeySet;->createAsList()Lcom/google/common/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/TransformedImmutableList<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/ImmutableMap$KeySet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMap$KeySet;Lcom/google/common/collect/ImmutableList;)V
    .registers 3

    .line 453
    .local p0, "this":Lcom/google/common/collect/ImmutableMap$KeySet$1;, "Lcom/google/common/collect/ImmutableMap$KeySet.1;"
    .local p2, "x0":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Ljava/util/Map$Entry<TK;TV;>;>;"
    iput-object p1, p0, Lcom/google/common/collect/ImmutableMap$KeySet$1;->this$1:Lcom/google/common/collect/ImmutableMap$KeySet;

    invoke-direct {p0, p2}, Lcom/google/common/collect/TransformedImmutableList;-><init>(Lcom/google/common/collect/ImmutableList;)V

    return-void
.end method


# virtual methods
.method bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 453
    .local p0, "this":Lcom/google/common/collect/ImmutableMap$KeySet$1;, "Lcom/google/common/collect/ImmutableMap$KeySet.1;"
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableMap$KeySet$1;->transform(Ljava/util/Map$Entry;)Ljava/lang/Object;

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

    .line 456
    .local p0, "this":Lcom/google/common/collect/ImmutableMap$KeySet$1;, "Lcom/google/common/collect/ImmutableMap$KeySet.1;"
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method