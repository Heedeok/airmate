.class public Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;
.super Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;
.source "CursorableLinkedList.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/pool/impl/CursorableLinkedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Cursor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/pool/impl/CursorableLinkedList<",
        "TE;>.",
        "ListIter;",
        "Ljava/util/ListIterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field _valid:Z

.field final synthetic this$0:Lorg/apache/commons/pool/impl/CursorableLinkedList;


# direct methods
.method constructor <init>(Lorg/apache/commons/pool/impl/CursorableLinkedList;I)V
    .registers 4
    .param p2, "index"    # I

    .line 1125
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;, "Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>.Cursor;"
    iput-object p1, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;->this$0:Lorg/apache/commons/pool/impl/CursorableLinkedList;

    .line 1126
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;-><init>(Lorg/apache/commons/pool/impl/CursorableLinkedList;I)V

    .line 1123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;->_valid:Z

    .line 1127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;->_valid:Z

    .line 1128
    invoke-virtual {p1, p0}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->registerCursor(Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;)V

    .line 1129
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1143
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;, "Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>.Cursor;"
    .local p1, "o":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;->checkForComod()V

    .line 1144
    iget-object v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;->this$0:Lorg/apache/commons/pool/impl/CursorableLinkedList;

    iget-object v1, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;->_cur:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v1}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;->_cur:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v2}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->next()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->insertListable(Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;Ljava/lang/Object;)Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v0

    .line 1145
    .local v0, "elt":Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;, "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<TE;>;"
    iget-object v1, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;->_cur:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v1, v0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->setPrev(Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;)V

    .line 1146
    iget-object v1, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;->_cur:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->next()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->setNext(Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;)V

    .line 1147
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;->_lastReturned:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    .line 1148
    iget v1, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;->_nextIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;->_nextIndex:I

    .line 1149
    iget v1, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;->_expectedModCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;->_expectedModCount:I

    .line 1150
    return-void
.end method

.method protected checkForComod()V
    .registers 2

    .line 1190
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;, "Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>.Cursor;"
    iget-boolean v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;->_valid:Z

    if-eqz v0, :cond_5

    .line 1193
    return-void

    .line 1191
    :cond_5
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public close()V
    .registers 2

    .line 1208
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;, "Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>.Cursor;"
    iget-boolean v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;->_valid:Z

    if-eqz v0, :cond_c

    .line 1209
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;->_valid:Z

    .line 1210
    iget-object v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;->this$0:Lorg/apache/commons/pool/impl/CursorableLinkedList;

    invoke-virtual {v0, p0}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->unregisterCursor(Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;)V

    .line 1212
    :cond_c
    return-void
.end method

.method public bridge synthetic hasNext()Z
    .registers 2

    .line 1122
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;, "Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>.Cursor;"
    invoke-super {p0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic hasPrevious()Z
    .registers 2

    .line 1122
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;, "Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>.Cursor;"
    invoke-super {p0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method protected invalidate()V
    .registers 2

    .line 1196
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;, "Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>.Cursor;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;->_valid:Z

    .line 1197
    return-void
.end method

.method protected listableChanged(Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<",
            "TE;>;)V"
        }
    .end annotation

    .line 1183
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;, "Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>.Cursor;"
    .local p1, "elt":Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;, "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;->_lastReturned:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    if-ne v0, p1, :cond_7

    .line 1184
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;->_lastReturned:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    .line 1186
    :cond_7
    return-void
.end method

.method protected listableInserted(Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<",
            "TE;>;)V"
        }
    .end annotation

    .line 1169
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;, "Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>.Cursor;"
    .local p1, "elt":Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;, "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;->_cur:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->next()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;->_cur:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v0

    if-nez v0, :cond_16

    .line 1170
    iget-object v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;->_cur:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v0, p1}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->setNext(Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;)V

    goto :goto_27

    .line 1171
    :cond_16
    iget-object v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;->_cur:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v1

    if-ne v0, v1, :cond_27

    .line 1172
    iget-object v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;->_cur:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v0, p1}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->setNext(Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;)V

    .line 1174
    :cond_27
    :goto_27
    iget-object v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;->_cur:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->next()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->next()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v1

    if-ne v0, v1, :cond_38

    .line 1175
    iget-object v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;->_cur:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v0, p1}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->setPrev(Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;)V

    .line 1177
    :cond_38
    iget-object v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;->_lastReturned:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    if-ne v0, p1, :cond_3f

    .line 1178
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;->_lastReturned:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    .line 1180
    :cond_3f
    return-void
.end method

.method protected listableRemoved(Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<",
            "TE;>;)V"
        }
    .end annotation

    .line 1153
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;, "Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>.Cursor;"
    .local p1, "elt":Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;, "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;->this$0:Lorg/apache/commons/pool/impl/CursorableLinkedList;

    iget-object v0, v0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_head:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_11

    .line 1154
    iget-object v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;->_cur:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v0, v1}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->setNext(Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;)V

    goto :goto_22

    .line 1155
    :cond_11
    iget-object v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;->_cur:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->next()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v0

    if-ne v0, p1, :cond_22

    .line 1156
    iget-object v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;->_cur:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {p1}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->next()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->setNext(Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;)V

    .line 1158
    :cond_22
    :goto_22
    iget-object v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;->this$0:Lorg/apache/commons/pool/impl/CursorableLinkedList;

    iget-object v0, v0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_head:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->next()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v0

    if-nez v0, :cond_32

    .line 1159
    iget-object v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;->_cur:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v0, v1}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->setPrev(Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;)V

    goto :goto_43

    .line 1160
    :cond_32
    iget-object v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;->_cur:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v0

    if-ne v0, p1, :cond_43

    .line 1161
    iget-object v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;->_cur:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {p1}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->setPrev(Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;)V

    .line 1163
    :cond_43
    :goto_43
    iget-object v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;->_lastReturned:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    if-ne v0, p1, :cond_49

    .line 1164
    iput-object v1, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;->_lastReturned:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    .line 1166
    :cond_49
    return-void
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 1122
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;, "Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>.Cursor;"
    invoke-super {p0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public nextIndex()I
    .registers 2

    .line 1138
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;, "Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>.Cursor;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic previous()Ljava/lang/Object;
    .registers 2

    .line 1122
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;, "Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>.Cursor;"
    invoke-super {p0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public previousIndex()I
    .registers 2

    .line 1133
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;, "Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>.Cursor;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic remove()V
    .registers 1

    .line 1122
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;, "Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>.Cursor;"
    invoke-super {p0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;->remove()V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .line 1122
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;, "Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>.Cursor;"
    invoke-super {p0, p1}, Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;->set(Ljava/lang/Object;)V

    return-void
.end method
