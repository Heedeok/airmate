.class Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;
.super Ljava/lang/Object;
.source "CursorableLinkedList.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/pool/impl/CursorableLinkedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListIter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field _cur:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<",
            "TE;>;"
        }
    .end annotation
.end field

.field _expectedModCount:I

.field _lastReturned:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<",
            "TE;>;"
        }
    .end annotation
.end field

.field _nextIndex:I

.field final synthetic this$0:Lorg/apache/commons/pool/impl/CursorableLinkedList;


# direct methods
.method constructor <init>(Lorg/apache/commons/pool/impl/CursorableLinkedList;I)V
    .registers 6
    .param p2, "index"    # I

    .line 1016
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;, "Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>.ListIter;"
    iput-object p1, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;->this$0:Lorg/apache/commons/pool/impl/CursorableLinkedList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1011
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    .line 1012
    iput-object v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;->_lastReturned:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    .line 1013
    iget-object v1, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;->this$0:Lorg/apache/commons/pool/impl/CursorableLinkedList;

    iget v1, v1, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_modCount:I

    iput v1, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;->_expectedModCount:I

    .line 1014
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;->_nextIndex:I

    .line 1017
    if-nez p2, :cond_25

    .line 1018
    new-instance v2, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    iget-object p1, p1, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_head:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {p1}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->next()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object p1

    invoke-direct {v2, v0, p1, v0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;-><init>(Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;Ljava/lang/Object;)V

    iput-object v2, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    .line 1019
    iput v1, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;->_nextIndex:I

    goto :goto_4c

    .line 1020
    :cond_25
    iget v1, p1, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_size:I

    if-ne p2, v1, :cond_3b

    .line 1021
    new-instance v1, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    iget-object v2, p1, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_head:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v2}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v2

    invoke-direct {v1, v2, v0, v0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;-><init>(Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;Ljava/lang/Object;)V

    iput-object v1, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    .line 1022
    iget p1, p1, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_size:I

    iput p1, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;->_nextIndex:I

    goto :goto_4c

    .line 1024
    :cond_3b
    invoke-virtual {p1, p2}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->getListableAt(I)Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object p1

    .line 1025
    .local p1, "temp":Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;, "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<TE;>;"
    new-instance v1, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {p1}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v2

    invoke-direct {v1, v2, p1, v0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;-><init>(Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;Ljava/lang/Object;)V

    iput-object v1, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    .line 1026
    iput p2, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;->_nextIndex:I

    .line 1028
    .end local p1    # "temp":Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;, "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<TE;>;"
    :goto_4c
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1108
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;, "Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>.ListIter;"
    .local p1, "o":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;->checkForComod()V

    .line 1109
    iget-object v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    iget-object v1, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;->this$0:Lorg/apache/commons/pool/impl/CursorableLinkedList;

    iget-object v2, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v2}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v3}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->next()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p1}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->insertListable(Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;Ljava/lang/Object;)Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->setPrev(Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;)V

    .line 1110
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;->_lastReturned:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    .line 1111
    iget v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;->_nextIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;->_nextIndex:I

    .line 1112
    iget v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;->_expectedModCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;->_expectedModCount:I

    .line 1113
    return-void
.end method

.method protected checkForComod()V
    .registers 3

    .line 1116
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;, "Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>.ListIter;"
    iget v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;->_expectedModCount:I

    iget-object v1, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;->this$0:Lorg/apache/commons/pool/impl/CursorableLinkedList;

    iget v1, v1, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_modCount:I

    if-ne v0, v1, :cond_9

    .line 1119
    return-void

    .line 1117
    :cond_9
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .registers 3

    .line 1045
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;, "Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>.ListIter;"
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;->checkForComod()V

    .line 1046
    iget-object v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->next()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;->this$0:Lorg/apache/commons/pool/impl/CursorableLinkedList;

    iget-object v1, v1, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_head:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v1}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v1

    if-eq v0, v1, :cond_1d

    const/4 v0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    return v0
.end method

.method public hasPrevious()Z
    .registers 3

    .line 1072
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;, "Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>.ListIter;"
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;->checkForComod()V

    .line 1073
    iget-object v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->next()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;->this$0:Lorg/apache/commons/pool/impl/CursorableLinkedList;

    iget-object v1, v1, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_head:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v1}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->next()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v1

    if-eq v0, v1, :cond_1d

    const/4 v0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1050
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;, "Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>.ListIter;"
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;->checkForComod()V

    .line 1051
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1054
    iget-object v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->next()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object v0

    .line 1055
    .local v0, "ret":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v1}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->next()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;->_lastReturned:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    .line 1056
    iget-object v1, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    iget-object v2, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v2}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->next()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->setPrev(Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;)V

    .line 1057
    iget-object v1, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    iget-object v2, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v2}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->next()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->next()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->setNext(Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;)V

    .line 1058
    iget v1, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;->_nextIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;->_nextIndex:I

    .line 1059
    return-object v0

    .line 1052
    .end local v0    # "ret":Ljava/lang/Object;, "TE;"
    :cond_3c
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public nextIndex()I
    .registers 2

    .line 1086
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;, "Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>.ListIter;"
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;->checkForComod()V

    .line 1087
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;->hasNext()Z

    move-result v0

    if-nez v0, :cond_10

    .line 1088
    iget-object v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;->this$0:Lorg/apache/commons/pool/impl/CursorableLinkedList;

    invoke-virtual {v0}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->size()I

    move-result v0

    return v0

    .line 1090
    :cond_10
    iget v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;->_nextIndex:I

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1031
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;, "Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>.ListIter;"
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;->checkForComod()V

    .line 1032
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1035
    iget-object v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object v0

    .line 1036
    .local v0, "ret":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v1}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;->_lastReturned:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    .line 1037
    iget-object v1, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    iget-object v2, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v2}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->setNext(Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;)V

    .line 1038
    iget-object v1, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    iget-object v2, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v2}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->setPrev(Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;)V

    .line 1039
    iget v1, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;->_nextIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;->_nextIndex:I

    .line 1040
    return-object v0

    .line 1033
    .end local v0    # "ret":Ljava/lang/Object;, "TE;"
    :cond_3c
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public previousIndex()I
    .registers 2

    .line 1064
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;, "Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>.ListIter;"
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;->checkForComod()V

    .line 1065
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;->hasPrevious()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1066
    const/4 v0, -0x1

    return v0

    .line 1068
    :cond_b
    iget v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;->_nextIndex:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .registers 5

    .line 1094
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;, "Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>.ListIter;"
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;->checkForComod()V

    .line 1095
    iget-object v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;->_lastReturned:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    if-eqz v0, :cond_50

    .line 1098
    iget-object v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    iget-object v1, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;->_lastReturned:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    iget-object v2, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;->this$0:Lorg/apache/commons/pool/impl/CursorableLinkedList;

    iget-object v2, v2, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_head:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v2}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_18

    move-object v1, v3

    goto :goto_1e

    :cond_18
    iget-object v1, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;->_lastReturned:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v1}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->next()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v1

    :goto_1e
    invoke-virtual {v0, v1}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->setNext(Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;)V

    .line 1099
    iget-object v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    iget-object v1, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;->_lastReturned:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    iget-object v2, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;->this$0:Lorg/apache/commons/pool/impl/CursorableLinkedList;

    iget-object v2, v2, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_head:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v2}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->next()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v2

    if-ne v1, v2, :cond_31

    move-object v1, v3

    goto :goto_37

    :cond_31
    iget-object v1, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;->_lastReturned:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v1}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v1

    :goto_37
    invoke-virtual {v0, v1}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->setPrev(Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;)V

    .line 1100
    iget-object v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;->this$0:Lorg/apache/commons/pool/impl/CursorableLinkedList;

    iget-object v1, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;->_lastReturned:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v0, v1}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->removeListable(Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;)V

    .line 1101
    iput-object v3, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;->_lastReturned:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    .line 1102
    iget v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;->_nextIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;->_nextIndex:I

    .line 1103
    iget v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;->_expectedModCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;->_expectedModCount:I

    .line 1105
    return-void

    .line 1096
    :cond_50
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public set(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1077
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;, "Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>.ListIter;"
    .local p1, "o":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;->checkForComod()V

    .line 1079
    :try_start_3
    iget-object v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;->_lastReturned:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v0, p1}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->setValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_8} :catch_a

    .line 1082
    nop

    .line 1083
    return-void

    .line 1080
    :catch_a
    move-exception v0

    .line 1081
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method
