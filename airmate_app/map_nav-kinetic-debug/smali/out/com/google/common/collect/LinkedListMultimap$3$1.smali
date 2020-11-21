.class Lcom/google/common/collect/LinkedListMultimap$3$1;
.super Lcom/google/common/collect/TransformedListIterator;
.source "LinkedListMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/LinkedListMultimap$3;->listIterator(I)Ljava/util/ListIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/TransformedListIterator<",
        "Lcom/google/common/collect/LinkedListMultimap$Node<",
        "TK;TV;>;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/LinkedListMultimap$3;

.field final synthetic val$nodes:Lcom/google/common/collect/LinkedListMultimap$NodeIterator;


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedListMultimap$3;Ljava/util/ListIterator;Lcom/google/common/collect/LinkedListMultimap$NodeIterator;)V
    .registers 4

    .line 812
    .local p0, "this":Lcom/google/common/collect/LinkedListMultimap$3$1;, "Lcom/google/common/collect/LinkedListMultimap$3.1;"
    .local p2, "x0":Ljava/util/ListIterator;, "Ljava/util/ListIterator<+Lcom/google/common/collect/LinkedListMultimap$Node<TK;TV;>;>;"
    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$3$1;->this$1:Lcom/google/common/collect/LinkedListMultimap$3;

    iput-object p3, p0, Lcom/google/common/collect/LinkedListMultimap$3$1;->val$nodes:Lcom/google/common/collect/LinkedListMultimap$NodeIterator;

    invoke-direct {p0, p2}, Lcom/google/common/collect/TransformedListIterator;-><init>(Ljava/util/ListIterator;)V

    return-void
.end method


# virtual methods
.method public set(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 820
    .local p0, "this":Lcom/google/common/collect/LinkedListMultimap$3$1;, "Lcom/google/common/collect/LinkedListMultimap$3.1;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$3$1;->val$nodes:Lcom/google/common/collect/LinkedListMultimap$NodeIterator;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->setValue(Ljava/lang/Object;)V

    .line 821
    return-void
.end method

.method transform(Lcom/google/common/collect/LinkedListMultimap$Node;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/LinkedListMultimap$Node<",
            "TK;TV;>;)TV;"
        }
    .end annotation

    .line 815
    .local p0, "this":Lcom/google/common/collect/LinkedListMultimap$3$1;, "Lcom/google/common/collect/LinkedListMultimap$3.1;"
    .local p1, "node":Lcom/google/common/collect/LinkedListMultimap$Node;, "Lcom/google/common/collect/LinkedListMultimap$Node<TK;TV;>;"
    iget-object v0, p1, Lcom/google/common/collect/LinkedListMultimap$Node;->value:Ljava/lang/Object;

    return-object v0
.end method

.method bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 812
    .local p0, "this":Lcom/google/common/collect/LinkedListMultimap$3$1;, "Lcom/google/common/collect/LinkedListMultimap$3.1;"
    move-object v0, p1

    check-cast v0, Lcom/google/common/collect/LinkedListMultimap$Node;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/LinkedListMultimap$3$1;->transform(Lcom/google/common/collect/LinkedListMultimap$Node;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
