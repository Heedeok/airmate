.class Lcom/google/common/collect/LinkedListMultimap$MultisetView$2;
.super Lcom/google/common/collect/TransformedIterator;
.source "LinkedListMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/LinkedListMultimap$MultisetView;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/TransformedIterator<",
        "Lcom/google/common/collect/LinkedListMultimap$Node<",
        "TK;TV;>;TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/LinkedListMultimap$MultisetView;


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedListMultimap$MultisetView;Ljava/util/Iterator;)V
    .registers 3

    .line 752
    .local p0, "this":Lcom/google/common/collect/LinkedListMultimap$MultisetView$2;, "Lcom/google/common/collect/LinkedListMultimap$MultisetView.2;"
    .local p2, "x0":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lcom/google/common/collect/LinkedListMultimap$Node<TK;TV;>;>;"
    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$MultisetView$2;->this$1:Lcom/google/common/collect/LinkedListMultimap$MultisetView;

    invoke-direct {p0, p2}, Lcom/google/common/collect/TransformedIterator;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method transform(Lcom/google/common/collect/LinkedListMultimap$Node;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/LinkedListMultimap$Node<",
            "TK;TV;>;)TK;"
        }
    .end annotation

    .line 755
    .local p0, "this":Lcom/google/common/collect/LinkedListMultimap$MultisetView$2;, "Lcom/google/common/collect/LinkedListMultimap$MultisetView.2;"
    .local p1, "node":Lcom/google/common/collect/LinkedListMultimap$Node;, "Lcom/google/common/collect/LinkedListMultimap$Node<TK;TV;>;"
    iget-object v0, p1, Lcom/google/common/collect/LinkedListMultimap$Node;->key:Ljava/lang/Object;

    return-object v0
.end method

.method bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 752
    .local p0, "this":Lcom/google/common/collect/LinkedListMultimap$MultisetView$2;, "Lcom/google/common/collect/LinkedListMultimap$MultisetView.2;"
    move-object v0, p1

    check-cast v0, Lcom/google/common/collect/LinkedListMultimap$Node;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/LinkedListMultimap$MultisetView$2;->transform(Lcom/google/common/collect/LinkedListMultimap$Node;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
