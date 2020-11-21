.class Lorg/apache/commons/pool/impl/CursorableSubList;
.super Lorg/apache/commons/pool/impl/CursorableLinkedList;
.source "CursorableLinkedList.java"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/pool/impl/CursorableLinkedList<",
        "TE;>;",
        "Ljava/util/List<",
        "TE;>;"
    }
.end annotation


# instance fields
.field protected _list:Lorg/apache/commons/pool/impl/CursorableLinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/pool/impl/CursorableLinkedList<",
            "TE;>;"
        }
    .end annotation
.end field

.field protected _post:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<",
            "TE;>;"
        }
    .end annotation
.end field

.field protected _pre:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/apache/commons/pool/impl/CursorableLinkedList;II)V
    .registers 7
    .param p2, "from"    # I
    .param p3, "to"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool/impl/CursorableLinkedList<",
            "TE;>;II)V"
        }
    .end annotation

    .line 1221
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableSubList;, "Lorg/apache/commons/pool/impl/CursorableSubList<TE;>;"
    .local p1, "list":Lorg/apache/commons/pool/impl/CursorableLinkedList;, "Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>;"
    invoke-direct {p0}, Lorg/apache/commons/pool/impl/CursorableLinkedList;-><init>()V

    .line 1508
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/pool/impl/CursorableSubList;->_list:Lorg/apache/commons/pool/impl/CursorableLinkedList;

    .line 1511
    iput-object v0, p0, Lorg/apache/commons/pool/impl/CursorableSubList;->_pre:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    .line 1514
    iput-object v0, p0, Lorg/apache/commons/pool/impl/CursorableSubList;->_post:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    .line 1222
    if-ltz p2, :cond_90

    invoke-virtual {p1}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->size()I

    move-result v1

    if-lt v1, p3, :cond_90

    .line 1224
    if-gt p2, p3, :cond_8a

    .line 1227
    iput-object p1, p0, Lorg/apache/commons/pool/impl/CursorableSubList;->_list:Lorg/apache/commons/pool/impl/CursorableLinkedList;

    .line 1228
    invoke-virtual {p1}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->size()I

    move-result v1

    if-ge p2, v1, :cond_3e

    .line 1229
    iget-object v1, p0, Lorg/apache/commons/pool/impl/CursorableSubList;->_head:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    iget-object v2, p0, Lorg/apache/commons/pool/impl/CursorableSubList;->_list:Lorg/apache/commons/pool/impl/CursorableLinkedList;

    invoke-virtual {v2, p2}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->getListableAt(I)Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->setNext(Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;)V

    .line 1230
    iget-object v1, p0, Lorg/apache/commons/pool/impl/CursorableSubList;->_head:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v1}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->next()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v1

    if-nez v1, :cond_31

    move-object v1, v0

    goto :goto_3b

    :cond_31
    iget-object v1, p0, Lorg/apache/commons/pool/impl/CursorableSubList;->_head:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v1}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->next()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v1

    :goto_3b
    iput-object v1, p0, Lorg/apache/commons/pool/impl/CursorableSubList;->_pre:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    goto :goto_48

    .line 1232
    :cond_3e
    iget-object v1, p0, Lorg/apache/commons/pool/impl/CursorableSubList;->_list:Lorg/apache/commons/pool/impl/CursorableLinkedList;

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {v1, v2}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->getListableAt(I)Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/pool/impl/CursorableSubList;->_pre:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    .line 1234
    :goto_48
    if-ne p2, p3, :cond_66

    .line 1235
    iget-object v1, p0, Lorg/apache/commons/pool/impl/CursorableSubList;->_head:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v1, v0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->setNext(Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;)V

    .line 1236
    iget-object v1, p0, Lorg/apache/commons/pool/impl/CursorableSubList;->_head:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v1, v0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->setPrev(Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;)V

    .line 1237
    invoke-virtual {p1}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->size()I

    move-result v1

    if-ge p3, v1, :cond_63

    .line 1238
    iget-object v0, p0, Lorg/apache/commons/pool/impl/CursorableSubList;->_list:Lorg/apache/commons/pool/impl/CursorableLinkedList;

    invoke-virtual {v0, p3}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->getListableAt(I)Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/pool/impl/CursorableSubList;->_post:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    goto :goto_7f

    .line 1240
    :cond_63
    iput-object v0, p0, Lorg/apache/commons/pool/impl/CursorableSubList;->_post:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    goto :goto_7f

    .line 1243
    :cond_66
    iget-object v0, p0, Lorg/apache/commons/pool/impl/CursorableSubList;->_head:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    iget-object v1, p0, Lorg/apache/commons/pool/impl/CursorableSubList;->_list:Lorg/apache/commons/pool/impl/CursorableLinkedList;

    add-int/lit8 v2, p3, -0x1

    invoke-virtual {v1, v2}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->getListableAt(I)Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->setPrev(Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;)V

    .line 1244
    iget-object v0, p0, Lorg/apache/commons/pool/impl/CursorableSubList;->_head:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->next()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/pool/impl/CursorableSubList;->_post:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    .line 1246
    :goto_7f
    sub-int v0, p3, p2

    iput v0, p0, Lorg/apache/commons/pool/impl/CursorableSubList;->_size:I

    .line 1247
    iget-object v0, p0, Lorg/apache/commons/pool/impl/CursorableSubList;->_list:Lorg/apache/commons/pool/impl/CursorableLinkedList;

    iget v0, v0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_modCount:I

    iput v0, p0, Lorg/apache/commons/pool/impl/CursorableSubList;->_modCount:I

    .line 1248
    return-void

    .line 1225
    :cond_8a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1223
    :cond_90
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 1402
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableSubList;, "Lorg/apache/commons/pool/impl/CursorableSubList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/CursorableSubList;->checkForComod()V

    .line 1403
    invoke-super {p0, p1, p2}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->add(ILjava/lang/Object;)V

    .line 1404
    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1324
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableSubList;, "Lorg/apache/commons/pool/impl/CursorableSubList<TE;>;"
    .local p1, "o":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/CursorableSubList;->checkForComod()V

    .line 1325
    invoke-super {p0, p1}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 1354
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableSubList;, "Lorg/apache/commons/pool/impl/CursorableSubList<TE;>;"
    .local p2, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/CursorableSubList;->checkForComod()V

    .line 1355
    invoke-super {p0, p1, p2}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->addAll(ILjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 1318
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableSubList;, "Lorg/apache/commons/pool/impl/CursorableSubList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/CursorableSubList;->checkForComod()V

    .line 1319
    invoke-super {p0, p1}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public addFirst(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1330
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableSubList;, "Lorg/apache/commons/pool/impl/CursorableSubList<TE;>;"
    .local p1, "o":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/CursorableSubList;->checkForComod()V

    .line 1331
    invoke-super {p0, p1}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->addFirst(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addLast(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1336
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableSubList;, "Lorg/apache/commons/pool/impl/CursorableSubList<TE;>;"
    .local p1, "o":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/CursorableSubList;->checkForComod()V

    .line 1337
    invoke-super {p0, p1}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->addLast(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected checkForComod()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/ConcurrentModificationException;
        }
    .end annotation

    .line 1500
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableSubList;, "Lorg/apache/commons/pool/impl/CursorableSubList<TE;>;"
    iget v0, p0, Lorg/apache/commons/pool/impl/CursorableSubList;->_modCount:I

    iget-object v1, p0, Lorg/apache/commons/pool/impl/CursorableSubList;->_list:Lorg/apache/commons/pool/impl/CursorableLinkedList;

    iget v1, v1, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_modCount:I

    if-ne v0, v1, :cond_9

    .line 1503
    return-void

    .line 1501
    :cond_9
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public clear()V
    .registers 3

    .line 1254
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableSubList;, "Lorg/apache/commons/pool/impl/CursorableSubList<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/CursorableSubList;->checkForComod()V

    .line 1255
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/CursorableSubList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1256
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1257
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1258
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_7

    .line 1260
    :cond_14
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 1294
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableSubList;, "Lorg/apache/commons/pool/impl/CursorableSubList<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/CursorableSubList;->checkForComod()V

    .line 1295
    invoke-super {p0, p1}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1348
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableSubList;, "Lorg/apache/commons/pool/impl/CursorableSubList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/CursorableSubList;->checkForComod()V

    .line 1349
    invoke-super {p0, p1}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 1378
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableSubList;, "Lorg/apache/commons/pool/impl/CursorableSubList<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/CursorableSubList;->checkForComod()V

    .line 1379
    invoke-super {p0, p1}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1384
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableSubList;, "Lorg/apache/commons/pool/impl/CursorableSubList<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/CursorableSubList;->checkForComod()V

    .line 1385
    invoke-super {p0, p1}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getFirst()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1390
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableSubList;, "Lorg/apache/commons/pool/impl/CursorableSubList<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/CursorableSubList;->checkForComod()V

    .line 1391
    invoke-super {p0}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getLast()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1396
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableSubList;, "Lorg/apache/commons/pool/impl/CursorableSubList<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/CursorableSubList;->checkForComod()V

    .line 1397
    invoke-super {p0}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 1360
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableSubList;, "Lorg/apache/commons/pool/impl/CursorableSubList<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/CursorableSubList;->checkForComod()V

    .line 1361
    invoke-super {p0}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->hashCode()I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 1420
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableSubList;, "Lorg/apache/commons/pool/impl/CursorableSubList<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/CursorableSubList;->checkForComod()V

    .line 1421
    invoke-super {p0, p1}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected insertListable(Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;Ljava/lang/Object;)Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<",
            "TE;>;",
            "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<",
            "TE;>;TE;)",
            "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<",
            "TE;>;"
        }
    .end annotation

    .line 1453
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableSubList;, "Lorg/apache/commons/pool/impl/CursorableSubList<TE;>;"
    .local p1, "before":Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;, "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<TE;>;"
    .local p2, "after":Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;, "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<TE;>;"
    .local p3, "value":Ljava/lang/Object;, "TE;"
    iget v0, p0, Lorg/apache/commons/pool/impl/CursorableSubList;->_modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/pool/impl/CursorableSubList;->_modCount:I

    .line 1454
    iget v0, p0, Lorg/apache/commons/pool/impl/CursorableSubList;->_size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/pool/impl/CursorableSubList;->_size:I

    .line 1455
    iget-object v0, p0, Lorg/apache/commons/pool/impl/CursorableSubList;->_list:Lorg/apache/commons/pool/impl/CursorableLinkedList;

    if-nez p1, :cond_13

    iget-object v1, p0, Lorg/apache/commons/pool/impl/CursorableSubList;->_pre:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    goto :goto_14

    :cond_13
    move-object v1, p1

    :goto_14
    if-nez p2, :cond_19

    iget-object v2, p0, Lorg/apache/commons/pool/impl/CursorableSubList;->_post:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    goto :goto_1a

    :cond_19
    move-object v2, p2

    :goto_1a
    invoke-virtual {v0, v1, v2, p3}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->insertListable(Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;Ljava/lang/Object;)Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v0

    .line 1456
    .local v0, "elt":Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;, "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<TE;>;"
    iget-object v1, p0, Lorg/apache/commons/pool/impl/CursorableSubList;->_head:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v1}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->next()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v1

    if-nez v1, :cond_30

    .line 1457
    iget-object v1, p0, Lorg/apache/commons/pool/impl/CursorableSubList;->_head:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v1, v0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->setNext(Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;)V

    .line 1458
    iget-object v1, p0, Lorg/apache/commons/pool/impl/CursorableSubList;->_head:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v1, v0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->setPrev(Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;)V

    .line 1460
    :cond_30
    iget-object v1, p0, Lorg/apache/commons/pool/impl/CursorableSubList;->_head:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v1}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v1

    if-ne p1, v1, :cond_3d

    .line 1461
    iget-object v1, p0, Lorg/apache/commons/pool/impl/CursorableSubList;->_head:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v1, v0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->setPrev(Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;)V

    .line 1463
    :cond_3d
    iget-object v1, p0, Lorg/apache/commons/pool/impl/CursorableSubList;->_head:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v1}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->next()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v1

    if-ne p2, v1, :cond_4a

    .line 1464
    iget-object v1, p0, Lorg/apache/commons/pool/impl/CursorableSubList;->_head:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v1, v0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->setNext(Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;)V

    .line 1466
    :cond_4a
    invoke-virtual {p0, v0}, Lorg/apache/commons/pool/impl/CursorableSubList;->broadcastListableInserted(Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;)V

    .line 1467
    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 1276
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableSubList;, "Lorg/apache/commons/pool/impl/CursorableSubList<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/CursorableSubList;->checkForComod()V

    .line 1277
    invoke-super {p0}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 1264
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableSubList;, "Lorg/apache/commons/pool/impl/CursorableSubList<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/CursorableSubList;->checkForComod()V

    .line 1265
    invoke-super {p0}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 1426
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableSubList;, "Lorg/apache/commons/pool/impl/CursorableSubList<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/CursorableSubList;->checkForComod()V

    .line 1427
    invoke-super {p0, p1}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 1432
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableSubList;, "Lorg/apache/commons/pool/impl/CursorableSubList<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/CursorableSubList;->checkForComod()V

    .line 1433
    invoke-super {p0}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 1408
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableSubList;, "Lorg/apache/commons/pool/impl/CursorableSubList<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/CursorableSubList;->checkForComod()V

    .line 1409
    invoke-super {p0, p1}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1414
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableSubList;, "Lorg/apache/commons/pool/impl/CursorableSubList<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/CursorableSubList;->checkForComod()V

    .line 1415
    invoke-super {p0, p1}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 1300
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableSubList;, "Lorg/apache/commons/pool/impl/CursorableSubList<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/CursorableSubList;->checkForComod()V

    .line 1301
    invoke-super {p0, p1}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->remove(Ljava/lang/Object;)Z

    move-result v0

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

    .line 1342
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableSubList;, "Lorg/apache/commons/pool/impl/CursorableSubList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/CursorableSubList;->checkForComod()V

    .line 1343
    invoke-super {p0, p1}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public removeFirst()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1306
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableSubList;, "Lorg/apache/commons/pool/impl/CursorableSubList<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/CursorableSubList;->checkForComod()V

    .line 1307
    invoke-super {p0}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public removeLast()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1312
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableSubList;, "Lorg/apache/commons/pool/impl/CursorableSubList<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/CursorableSubList;->checkForComod()V

    .line 1313
    invoke-super {p0}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected removeListable(Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<",
            "TE;>;)V"
        }
    .end annotation

    .line 1475
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableSubList;, "Lorg/apache/commons/pool/impl/CursorableSubList<TE;>;"
    .local p1, "elt":Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;, "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<TE;>;"
    iget v0, p0, Lorg/apache/commons/pool/impl/CursorableSubList;->_modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/pool/impl/CursorableSubList;->_modCount:I

    .line 1476
    iget v0, p0, Lorg/apache/commons/pool/impl/CursorableSubList;->_size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/pool/impl/CursorableSubList;->_size:I

    .line 1477
    iget-object v0, p0, Lorg/apache/commons/pool/impl/CursorableSubList;->_head:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->next()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v0

    if-ne v0, p1, :cond_27

    iget-object v0, p0, Lorg/apache/commons/pool/impl/CursorableSubList;->_head:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v0

    if-ne v0, p1, :cond_27

    .line 1478
    iget-object v0, p0, Lorg/apache/commons/pool/impl/CursorableSubList;->_head:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->setNext(Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;)V

    .line 1479
    iget-object v0, p0, Lorg/apache/commons/pool/impl/CursorableSubList;->_head:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v0, v1}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->setPrev(Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;)V

    .line 1481
    :cond_27
    iget-object v0, p0, Lorg/apache/commons/pool/impl/CursorableSubList;->_head:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->next()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v0

    if-ne v0, p1, :cond_38

    .line 1482
    iget-object v0, p0, Lorg/apache/commons/pool/impl/CursorableSubList;->_head:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {p1}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->next()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->setNext(Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;)V

    .line 1484
    :cond_38
    iget-object v0, p0, Lorg/apache/commons/pool/impl/CursorableSubList;->_head:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v0

    if-ne v0, p1, :cond_49

    .line 1485
    iget-object v0, p0, Lorg/apache/commons/pool/impl/CursorableSubList;->_head:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {p1}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->setPrev(Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;)V

    .line 1487
    :cond_49
    iget-object v0, p0, Lorg/apache/commons/pool/impl/CursorableSubList;->_list:Lorg/apache/commons/pool/impl/CursorableLinkedList;

    invoke-virtual {v0, p1}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->removeListable(Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;)V

    .line 1488
    invoke-virtual {p0, p1}, Lorg/apache/commons/pool/impl/CursorableSubList;->broadcastListableRemoved(Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;)V

    .line 1489
    return-void
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1366
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableSubList;, "Lorg/apache/commons/pool/impl/CursorableSubList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/CursorableSubList;->checkForComod()V

    .line 1367
    invoke-super {p0, p1}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 1372
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableSubList;, "Lorg/apache/commons/pool/impl/CursorableSubList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/CursorableSubList;->checkForComod()V

    .line 1373
    invoke-super {p0, p1, p2}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .line 1270
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableSubList;, "Lorg/apache/commons/pool/impl/CursorableSubList<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/CursorableSubList;->checkForComod()V

    .line 1271
    invoke-super {p0}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->size()I

    move-result v0

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .registers 4
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 1438
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableSubList;, "Lorg/apache/commons/pool/impl/CursorableSubList<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/CursorableSubList;->checkForComod()V

    .line 1439
    invoke-super {p0, p1, p2}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    .line 1282
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableSubList;, "Lorg/apache/commons/pool/impl/CursorableSubList<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/CursorableSubList;->checkForComod()V

    .line 1283
    invoke-super {p0}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 1288
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableSubList;, "Lorg/apache/commons/pool/impl/CursorableSubList<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/CursorableSubList;->checkForComod()V

    .line 1289
    invoke-super {p0, p1}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
