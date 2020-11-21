.class Lorg/apache/commons/pool/impl/CursorableLinkedList;
.super Ljava/lang/Object;
.source "CursorableLinkedList.java"

# interfaces
.implements Ljava/util/List;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;,
        Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;,
        Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/List<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x7aa12cb4b4f67ac1L


# instance fields
.field protected transient _cursors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lorg/apache/commons/pool/impl/CursorableLinkedList<",
            "TE;>.Cursor;>;>;"
        }
    .end annotation
.end field

.field protected transient _head:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<",
            "TE;>;"
        }
    .end annotation
.end field

.field protected transient _modCount:I

.field protected transient _size:I


# direct methods
.method constructor <init>()V
    .registers 4

    .line 64
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableLinkedList;, "Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 945
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_size:I

    .line 959
    new-instance v1, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;-><init>(Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;Ljava/lang/Object;)V

    iput-object v1, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_head:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    .line 962
    iput v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_modCount:I

    .line 968
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_cursors:Ljava/util/List;

    .line 1122
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 5
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 931
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableLinkedList;, "Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 932
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_size:I

    .line 933
    iput v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_modCount:I

    .line 934
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_cursors:Ljava/util/List;

    .line 935
    new-instance v1, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;-><init>(Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;Ljava/lang/Object;)V

    iput-object v1, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_head:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    .line 936
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    .line 937
    .local v1, "size":I
    nop

    .local v0, "i":I
    :goto_1c
    if-ge v0, v1, :cond_28

    .line 938
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->add(Ljava/lang/Object;)Z

    .line 937
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 940
    .end local v0    # "i":I
    :cond_28
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 920
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableLinkedList;, "Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 921
    iget v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_size:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 922
    iget-object v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_head:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->next()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v0

    .line 923
    .local v0, "cur":Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;, "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<TE;>;"
    :goto_e
    if-eqz v0, :cond_1c

    .line 924
    invoke-virtual {v0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 925
    invoke-virtual {v0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->next()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v0

    goto :goto_e

    .line 927
    :cond_1c
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .registers 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 98
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableLinkedList;, "Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    iget v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_size:I

    if-ne p1, v0, :cond_8

    .line 99
    invoke-virtual {p0, p2}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_25

    .line 101
    :cond_8
    if-ltz p1, :cond_26

    iget v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_size:I

    if-gt p1, v0, :cond_26

    .line 104
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    move-object v0, v1

    goto :goto_1b

    :cond_17
    invoke-virtual {p0, p1}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->getListableAt(I)Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v0

    .line 105
    .local v0, "succ":Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;, "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<TE;>;"
    :goto_1b
    if-nez v0, :cond_1e

    goto :goto_22

    :cond_1e
    invoke-virtual {v0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v1

    .line 106
    .local v1, "pred":Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;, "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<TE;>;"
    :goto_22
    invoke-virtual {p0, v1, v0, p2}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->insertListable(Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;Ljava/lang/Object;)Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    .line 108
    .end local v0    # "succ":Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;, "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<TE;>;"
    .end local v1    # "pred":Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;, "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<TE;>;"
    :goto_25
    return-void

    .line 102
    :cond_26
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " < 0 or "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public add(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 78
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableLinkedList;, "Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>;"
    .local p1, "o":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_head:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->insertListable(Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;Ljava/lang/Object;)Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 7
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 164
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableLinkedList;, "Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>;"
    .local p2, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 165
    const/4 v0, 0x0

    return v0

    .line 166
    :cond_8
    iget v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_size:I

    if-eq v0, p1, :cond_32

    iget v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_size:I

    if-nez v0, :cond_11

    goto :goto_32

    .line 169
    :cond_11
    invoke-virtual {p0, p1}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->getListableAt(I)Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v0

    .line 170
    .local v0, "succ":Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;, "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<TE;>;"
    if-nez v0, :cond_19

    const/4 v1, 0x0

    goto :goto_1d

    :cond_19
    invoke-virtual {v0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v1

    .line 171
    .local v1, "pred":Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;, "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<TE;>;"
    :goto_1d
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 172
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    .line 173
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v1, v0, v3}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->insertListable(Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;Ljava/lang/Object;)Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v1

    goto :goto_21

    .line 175
    :cond_30
    const/4 v3, 0x1

    return v3

    .line 167
    .end local v0    # "succ":Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;, "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<TE;>;"
    .end local v1    # "pred":Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;, "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<TE;>;"
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    :cond_32
    :goto_32
    invoke-virtual {p0, p2}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 128
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableLinkedList;, "Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 129
    const/4 v0, 0x0

    return v0

    .line 131
    :cond_8
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 132
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 133
    iget-object v1, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_head:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v1}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->insertListable(Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;Ljava/lang/Object;)Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    goto :goto_c

    .line 135
    :cond_21
    const/4 v1, 0x1

    return v1
.end method

.method public addFirst(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 187
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableLinkedList;, "Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>;"
    .local p1, "o":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_head:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->next()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, p1}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->insertListable(Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;Ljava/lang/Object;)Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    .line 188
    const/4 v0, 0x1

    return v0
.end method

.method public addLast(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 199
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableLinkedList;, "Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>;"
    .local p1, "o":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_head:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->insertListable(Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;Ljava/lang/Object;)Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    .line 200
    const/4 v0, 0x1

    return v0
.end method

.method protected broadcastListableChanged(Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<",
            "TE;>;)V"
        }
    .end annotation

    .line 873
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableLinkedList;, "Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>;"
    .local p1, "elt":Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;, "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_cursors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 874
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>.Cursor;>;>;"
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 875
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 876
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>.Cursor;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;

    .line 877
    .local v2, "cursor":Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;, "Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>.Cursor;"
    if-nez v2, :cond_1e

    .line 878
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_21

    .line 880
    :cond_1e
    invoke-virtual {v2, p1}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;->listableChanged(Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;)V

    .line 882
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>.Cursor;>;"
    .end local v2    # "cursor":Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;, "Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>.Cursor;"
    :goto_21
    goto :goto_6

    .line 883
    :cond_22
    return-void
.end method

.method protected broadcastListableInserted(Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<",
            "TE;>;)V"
        }
    .end annotation

    .line 907
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableLinkedList;, "Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>;"
    .local p1, "elt":Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;, "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_cursors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 908
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>.Cursor;>;>;"
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 909
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 910
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>.Cursor;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;

    .line 911
    .local v2, "cursor":Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;, "Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>.Cursor;"
    if-nez v2, :cond_1e

    .line 912
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_21

    .line 914
    :cond_1e
    invoke-virtual {v2, p1}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;->listableInserted(Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;)V

    .line 916
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>.Cursor;>;"
    .end local v2    # "cursor":Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;, "Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>.Cursor;"
    :goto_21
    goto :goto_6

    .line 917
    :cond_22
    return-void
.end method

.method protected broadcastListableRemoved(Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<",
            "TE;>;)V"
        }
    .end annotation

    .line 890
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableLinkedList;, "Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>;"
    .local p1, "elt":Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;, "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_cursors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 891
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>.Cursor;>;>;"
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 892
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 893
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>.Cursor;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;

    .line 894
    .local v2, "cursor":Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;, "Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>.Cursor;"
    if-nez v2, :cond_1e

    .line 895
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_21

    .line 897
    :cond_1e
    invoke-virtual {v2, p1}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;->listableRemoved(Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;)V

    .line 899
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>.Cursor;>;"
    .end local v2    # "cursor":Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;, "Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>.Cursor;"
    :goto_21
    goto :goto_6

    .line 900
    :cond_22
    return-void
.end method

.method public clear()V
    .registers 3

    .line 217
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableLinkedList;, "Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 218
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 219
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 220
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    .line 222
    :cond_11
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 234
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableLinkedList;, "Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_head:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->next()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v0

    .local v0, "elt":Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;, "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<TE;>;"
    const/4 v1, 0x0

    .local v1, "past":Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;, "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<TE;>;"
    :goto_7
    if-eqz v0, :cond_2d

    iget-object v2, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_head:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v2}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v2

    if-eq v1, v2, :cond_2d

    .line 235
    if-nez p1, :cond_19

    invoke-virtual {v0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_25

    :cond_19
    if-eqz p1, :cond_27

    invoke-virtual {v0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 237
    :cond_25
    const/4 v2, 0x1

    return v2

    .line 234
    :cond_27
    move-object v1, v0

    invoke-virtual {v0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->next()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v0

    goto :goto_7

    .line 240
    .end local v0    # "elt":Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;, "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<TE;>;"
    .end local v1    # "past":Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;, "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<TE;>;"
    :cond_2d
    const/4 v0, 0x0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 252
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableLinkedList;, "Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 253
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 254
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 255
    const/4 v1, 0x0

    return v1

    .line 258
    :cond_16
    const/4 v1, 0x1

    return v1
.end method

.method public cursor()Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/pool/impl/CursorableLinkedList<",
            "TE;>.Cursor;"
        }
    .end annotation

    .line 287
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableLinkedList;, "Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>;"
    new-instance v0, Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;-><init>(Lorg/apache/commons/pool/impl/CursorableLinkedList;I)V

    return-object v0
.end method

.method public cursor(I)Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;
    .registers 3
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/apache/commons/pool/impl/CursorableLinkedList<",
            "TE;>.Cursor;"
        }
    .end annotation

    .line 307
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableLinkedList;, "Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>;"
    new-instance v0, Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;-><init>(Lorg/apache/commons/pool/impl/CursorableLinkedList;I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 326
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableLinkedList;, "Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 327
    return v0

    .line 328
    :cond_4
    instance-of v1, p1, Ljava/util/List;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 329
    return v2

    .line 331
    :cond_a
    move-object v1, p1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 332
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    iget-object v3, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_head:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v3}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->next()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v3

    .local v3, "elt":Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;, "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<TE;>;"
    const/4 v4, 0x0

    .local v4, "past":Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;, "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<TE;>;"
    :goto_18
    if-eqz v3, :cond_4b

    iget-object v5, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_head:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v5}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v5

    if-eq v4, v5, :cond_4b

    .line 333
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4a

    invoke-virtual {v3}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_44

    goto :goto_4a

    :cond_35
    invoke-virtual {v3}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_44

    goto :goto_4a

    .line 332
    :cond_44
    move-object v4, v3

    invoke-virtual {v3}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->next()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v3

    goto :goto_18

    .line 334
    :cond_4a
    :goto_4a
    return v2

    .line 337
    .end local v3    # "elt":Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;, "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<TE;>;"
    .end local v4    # "past":Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;, "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<TE;>;"
    :cond_4b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    xor-int/2addr v0, v2

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

    .line 350
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableLinkedList;, "Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->getListableAt(I)Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getFirst()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 358
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableLinkedList;, "Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>;"
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_head:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->next()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 359
    :catch_b
    move-exception v0

    .line 360
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public getLast()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 369
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableLinkedList;, "Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>;"
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_head:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 370
    :catch_b
    move-exception v0

    .line 371
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method protected getListableAt(I)Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;
    .registers 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<",
            "TE;>;"
        }
    .end annotation

    .line 792
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableLinkedList;, "Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>;"
    if-ltz p1, :cond_31

    iget v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_size:I

    if-ge p1, v0, :cond_31

    .line 795
    iget v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_size:I

    div-int/lit8 v0, v0, 0x2

    if-gt p1, v0, :cond_1d

    .line 796
    iget-object v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_head:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->next()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v0

    .line 797
    .local v0, "elt":Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;, "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<TE;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    if-ge v1, p1, :cond_1c

    .line 798
    invoke-virtual {v0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->next()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v0

    .line 797
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 800
    .end local v1    # "i":I
    :cond_1c
    return-object v0

    .line 802
    .end local v0    # "elt":Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;, "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<TE;>;"
    :cond_1d
    iget-object v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_head:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v0

    .line 803
    .restart local v0    # "elt":Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;, "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<TE;>;"
    iget v1, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_size:I

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_27
    if-le v1, p1, :cond_30

    .line 804
    invoke-virtual {v0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v0

    .line 803
    add-int/lit8 v1, v1, -0x1

    goto :goto_27

    .line 806
    .end local v1    # "i":I
    :cond_30
    return-object v0

    .line 793
    .end local v0    # "elt":Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;, "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<TE;>;"
    :cond_31
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " < 0 or "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .registers 6

    .line 398
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableLinkedList;, "Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>;"
    const/4 v0, 0x1

    .line 399
    .local v0, "hash":I
    iget-object v1, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_head:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v1}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->next()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v1

    .local v1, "elt":Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;, "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<TE;>;"
    const/4 v2, 0x0

    .local v2, "past":Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;, "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<TE;>;"
    :goto_8
    if-eqz v1, :cond_2c

    iget-object v3, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_head:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v3}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v3

    if-eq v2, v3, :cond_2c

    .line 400
    mul-int/lit8 v3, v0, 0x1f

    invoke-virtual {v1}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1c

    const/4 v4, 0x0

    goto :goto_24

    :cond_1c
    invoke-virtual {v1}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_24
    add-int v0, v3, v4

    .line 399
    move-object v2, v1

    invoke-virtual {v1}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->next()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v1

    goto :goto_8

    .line 402
    .end local v1    # "elt":Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;, "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<TE;>;"
    .end local v2    # "past":Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;, "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<TE;>;"
    :cond_2c
    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 417
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableLinkedList;, "Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>;"
    const/4 v0, 0x0

    .line 421
    .local v0, "ndx":I
    const/4 v1, 0x0

    if-nez p1, :cond_1f

    .line 422
    iget-object v2, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_head:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    .local v1, "past":Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;, "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<TE;>;"
    .local v2, "elt":Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;, "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<TE;>;"
    :goto_6
    invoke-virtual {v2}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->next()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v2

    if-eqz v2, :cond_3e

    iget-object v3, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_head:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v3}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v3

    if-eq v1, v3, :cond_3e

    .line 423
    invoke-virtual {v2}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1b

    .line 424
    return v0

    .line 426
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    .line 422
    move-object v1, v2

    goto :goto_6

    .line 430
    .end local v1    # "past":Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;, "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<TE;>;"
    .end local v2    # "elt":Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;, "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<TE;>;"
    :cond_1f
    iget-object v2, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_head:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    .restart local v1    # "past":Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;, "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<TE;>;"
    .restart local v2    # "elt":Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;, "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<TE;>;"
    :goto_21
    invoke-virtual {v2}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->next()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v2

    if-eqz v2, :cond_3e

    iget-object v3, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_head:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v3}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v3

    if-eq v1, v3, :cond_3e

    .line 431
    invoke-virtual {v2}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 432
    return v0

    .line 434
    :cond_3a
    add-int/lit8 v0, v0, 0x1

    .line 430
    move-object v1, v2

    goto :goto_21

    .line 437
    .end local v1    # "past":Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;, "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<TE;>;"
    .end local v2    # "elt":Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;, "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<TE;>;"
    :cond_3e
    const/4 v1, -0x1

    return v1
.end method

.method protected insertListable(Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;Ljava/lang/Object;)Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;
    .registers 6
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

    .line 742
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableLinkedList;, "Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>;"
    .local p1, "before":Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;, "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<TE;>;"
    .local p2, "after":Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;, "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<TE;>;"
    .local p3, "value":Ljava/lang/Object;, "TE;"
    iget v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_modCount:I

    .line 743
    iget v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_size:I

    .line 744
    new-instance v0, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;-><init>(Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;Ljava/lang/Object;)V

    .line 745
    .local v0, "elt":Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;, "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<TE;>;"
    if-eqz p1, :cond_17

    .line 746
    invoke-virtual {p1, v0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->setNext(Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;)V

    goto :goto_1c

    .line 748
    :cond_17
    iget-object v1, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_head:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v1, v0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->setNext(Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;)V

    .line 751
    :goto_1c
    if-eqz p2, :cond_22

    .line 752
    invoke-virtual {p2, v0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->setPrev(Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;)V

    goto :goto_27

    .line 754
    :cond_22
    iget-object v1, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_head:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v1, v0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->setPrev(Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;)V

    .line 756
    :goto_27
    invoke-virtual {p0, v0}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->broadcastListableInserted(Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;)V

    .line 757
    return-object v0
.end method

.method protected invalidateCursors()V
    .registers 4

    .line 854
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableLinkedList;, "Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_cursors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 855
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>.Cursor;>;>;"
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 856
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 857
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>.Cursor;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;

    .line 858
    .local v2, "cursor":Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;, "Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>.Cursor;"
    if-eqz v2, :cond_20

    .line 860
    invoke-virtual {v2}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;->invalidate()V

    .line 861
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    .line 863
    :cond_20
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 864
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>.Cursor;>;"
    .end local v2    # "cursor":Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;, "Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>.Cursor;"
    goto :goto_6

    .line 865
    :cond_24
    return-void
.end method

.method public isEmpty()Z
    .registers 2

    .line 445
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableLinkedList;, "Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>;"
    iget v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_size:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
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

    .line 453
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableLinkedList;, "Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 468
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableLinkedList;, "Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>;"
    iget v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_size:I

    add-int/lit8 v0, v0, -0x1

    .line 472
    .local v0, "ndx":I
    const/4 v1, 0x0

    if-nez p1, :cond_22

    .line 473
    iget-object v2, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_head:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    .local v1, "past":Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;, "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<TE;>;"
    .local v2, "elt":Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;, "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<TE;>;"
    :goto_9
    invoke-virtual {v2}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v2

    if-eqz v2, :cond_41

    iget-object v3, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_head:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v3}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->next()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v3

    if-eq v1, v3, :cond_41

    .line 474
    invoke-virtual {v2}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1e

    .line 475
    return v0

    .line 477
    :cond_1e
    add-int/lit8 v0, v0, -0x1

    .line 473
    move-object v1, v2

    goto :goto_9

    .line 480
    .end local v1    # "past":Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;, "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<TE;>;"
    .end local v2    # "elt":Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;, "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<TE;>;"
    :cond_22
    iget-object v2, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_head:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    .restart local v1    # "past":Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;, "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<TE;>;"
    .restart local v2    # "elt":Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;, "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<TE;>;"
    :goto_24
    invoke-virtual {v2}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v2

    if-eqz v2, :cond_41

    iget-object v3, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_head:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v3}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->next()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v3

    if-eq v1, v3, :cond_41

    .line 481
    invoke-virtual {v2}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 482
    return v0

    .line 484
    :cond_3d
    add-int/lit8 v0, v0, -0x1

    .line 480
    move-object v1, v2

    goto :goto_24

    .line 487
    .end local v1    # "past":Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;, "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<TE;>;"
    .end local v2    # "elt":Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;, "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<TE;>;"
    :cond_41
    const/4 v1, -0x1

    return v1
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

    .line 495
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableLinkedList;, "Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .registers 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 503
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableLinkedList;, "Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>;"
    if-ltz p1, :cond_c

    iget v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_size:I

    if-gt p1, v0, :cond_c

    .line 506
    new-instance v0, Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/pool/impl/CursorableLinkedList$ListIter;-><init>(Lorg/apache/commons/pool/impl/CursorableLinkedList;I)V

    return-object v0

    .line 504
    :cond_c
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " < 0 or > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected registerCursor(Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool/impl/CursorableLinkedList<",
            "TE;>.Cursor;)V"
        }
    .end annotation

    .line 817
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableLinkedList;, "Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>;"
    .local p1, "cur":Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;, "Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>.Cursor;"
    iget-object v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_cursors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>.Cursor;>;>;"
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 818
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 819
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>.Cursor;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1b

    .line 820
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 822
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>.Cursor;>;"
    :cond_1b
    goto :goto_6

    .line 824
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>.Cursor;>;>;"
    :cond_1c
    iget-object v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_cursors:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 825
    return-void
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 545
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableLinkedList;, "Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->getListableAt(I)Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v0

    .line 546
    .local v0, "elt":Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;, "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<TE;>;"
    invoke-virtual {v0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object v1

    .line 547
    .local v1, "ret":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v0}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->removeListable(Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;)V

    .line 548
    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 520
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableLinkedList;, "Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_head:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->next()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v0

    .local v0, "elt":Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;, "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<TE;>;"
    const/4 v1, 0x0

    .local v1, "past":Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;, "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<TE;>;"
    :goto_7
    if-eqz v0, :cond_34

    iget-object v2, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_head:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v2}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v2

    if-eq v1, v2, :cond_34

    .line 521
    const/4 v2, 0x1

    if-nez p1, :cond_1e

    invoke-virtual {v0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1e

    .line 522
    invoke-virtual {p0, v0}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->removeListable(Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;)V

    .line 523
    return v2

    .line 524
    :cond_1e
    if-eqz p1, :cond_2e

    invoke-virtual {v0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 525
    invoke-virtual {p0, v0}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->removeListable(Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;)V

    .line 526
    return v2

    .line 520
    :cond_2e
    move-object v1, v0

    invoke-virtual {v0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->next()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v0

    goto :goto_7

    .line 529
    .end local v0    # "elt":Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;, "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<TE;>;"
    .end local v1    # "past":Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;, "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<TE;>;"
    :cond_34
    const/4 v0, 0x0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 560
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableLinkedList;, "Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-eqz v0, :cond_26

    iget v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_size:I

    if-nez v0, :cond_b

    goto :goto_26

    .line 563
    :cond_b
    const/4 v0, 0x0

    .line 564
    .local v0, "changed":Z
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 565
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_10
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 566
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 567
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 568
    const/4 v0, 0x1

    goto :goto_10

    .line 571
    :cond_25
    return v0

    .line 561
    .end local v0    # "changed":Z
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_26
    :goto_26
    const/4 v0, 0x0

    return v0
.end method

.method public removeFirst()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 579
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableLinkedList;, "Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_head:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->next()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 580
    iget-object v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_head:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->next()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object v0

    .line 581
    .local v0, "val":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_head:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v1}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->next()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->removeListable(Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;)V

    .line 582
    return-object v0

    .line 584
    .end local v0    # "val":Ljava/lang/Object;, "TE;"
    :cond_1c
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public removeLast()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 592
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableLinkedList;, "Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_head:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 593
    iget-object v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_head:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object v0

    .line 594
    .local v0, "val":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_head:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v1}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->removeListable(Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;)V

    .line 595
    return-object v0

    .line 597
    .end local v0    # "val":Ljava/lang/Object;, "TE;"
    :cond_1c
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
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

    .line 766
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableLinkedList;, "Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>;"
    .local p1, "elt":Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;, "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<TE;>;"
    iget v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_modCount:I

    .line 767
    iget v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_size:I

    .line 768
    iget-object v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_head:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->next()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v0

    if-ne v0, p1, :cond_1d

    .line 769
    iget-object v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_head:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {p1}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->next()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->setNext(Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;)V

    .line 771
    :cond_1d
    invoke-virtual {p1}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->next()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 772
    invoke-virtual {p1}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->next()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->setPrev(Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;)V

    .line 774
    :cond_2e
    iget-object v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_head:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v0

    if-ne v0, p1, :cond_3f

    .line 775
    iget-object v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_head:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {p1}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->setPrev(Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;)V

    .line 777
    :cond_3f
    invoke-virtual {p1}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v0

    if-eqz v0, :cond_50

    .line 778
    invoke-virtual {p1}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->next()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->setNext(Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;)V

    .line 780
    :cond_50
    invoke-virtual {p0, p1}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->broadcastListableRemoved(Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;)V

    .line 781
    return-void
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 612
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableLinkedList;, "Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    .line 613
    .local v0, "changed":Z
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 614
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_5
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 615
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 616
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 617
    const/4 v0, 0x1

    goto :goto_5

    .line 620
    :cond_1a
    return v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 639
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableLinkedList;, "Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->getListableAt(I)Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v0

    .line 640
    .local v0, "elt":Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;, "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<TE;>;"
    invoke-virtual {v0, p2}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 641
    .local v1, "val":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v0}, Lorg/apache/commons/pool/impl/CursorableLinkedList;->broadcastListableChanged(Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;)V

    .line 642
    return-object v1
.end method

.method public size()I
    .registers 2

    .line 650
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableLinkedList;, "Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>;"
    iget v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_size:I

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .registers 4
    .param p1, "i"    # I
    .param p2, "j"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 722
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableLinkedList;, "Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>;"
    if-ltz p1, :cond_15

    iget v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_size:I

    if-gt p2, v0, :cond_15

    if-gt p1, p2, :cond_15

    .line 724
    if-nez p1, :cond_f

    iget v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_size:I

    if-ne p2, v0, :cond_f

    .line 725
    return-object p0

    .line 727
    :cond_f
    new-instance v0, Lorg/apache/commons/pool/impl/CursorableSubList;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/pool/impl/CursorableSubList;-><init>(Lorg/apache/commons/pool/impl/CursorableLinkedList;II)V

    return-object v0

    .line 723
    :cond_15
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 7

    .line 661
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableLinkedList;, "Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>;"
    iget v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_size:I

    new-array v0, v0, [Ljava/lang/Object;

    .line 662
    .local v0, "array":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 663
    .local v1, "i":I
    iget-object v2, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_head:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v2}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->next()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v2

    .local v2, "elt":Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;, "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<TE;>;"
    const/4 v3, 0x0

    .local v3, "past":Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;, "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<TE;>;"
    :goto_c
    if-eqz v2, :cond_25

    iget-object v4, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_head:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v4}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v4

    if-eq v3, v4, :cond_25

    .line 664
    add-int/lit8 v4, v1, 0x1

    .local v4, "i":I
    invoke-virtual {v2}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v0, v1

    .line 663
    .end local v1    # "i":I
    move-object v3, v2

    invoke-virtual {v2}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->next()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v2

    move v1, v4

    goto :goto_c

    .line 666
    .end local v2    # "elt":Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;, "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<TE;>;"
    .end local v3    # "past":Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;, "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<TE;>;"
    .end local v4    # "i":I
    .restart local v1    # "i":I
    :cond_25
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 686
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableLinkedList;, "Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    array-length v0, p1

    iget v1, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_size:I

    if-ge v0, v1, :cond_16

    .line 687
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_size:I

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    move-object p1, v0

    check-cast p1, [Ljava/lang/Object;

    .line 689
    :cond_16
    const/4 v0, 0x0

    .line 690
    .local v0, "i":I
    iget-object v1, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_head:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v1}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->next()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v1

    .local v1, "elt":Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;, "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<TE;>;"
    const/4 v2, 0x0

    move v3, v0

    move-object v0, v2

    .local v0, "past":Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;, "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<TE;>;"
    .local v3, "i":I
    :goto_20
    if-eqz v1, :cond_39

    iget-object v4, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_head:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v4}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v4

    if-eq v0, v4, :cond_39

    .line 691
    add-int/lit8 v4, v3, 0x1

    .local v4, "i":I
    invoke-virtual {v1}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, p1, v3

    .line 690
    .end local v3    # "i":I
    move-object v0, v1

    invoke-virtual {v1}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->next()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v1

    move v3, v4

    goto :goto_20

    .line 693
    .end local v0    # "past":Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;, "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<TE;>;"
    .end local v1    # "elt":Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;, "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<TE;>;"
    .end local v4    # "i":I
    .restart local v3    # "i":I
    :cond_39
    array-length v0, p1

    iget v1, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_size:I

    if-le v0, v1, :cond_42

    .line 694
    iget v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_size:I

    aput-object v2, p1, v0

    .line 696
    :cond_42
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 705
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableLinkedList;, "Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>;"
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 706
    .local v0, "buf":Ljava/lang/StringBuffer;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 707
    iget-object v1, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_head:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v1}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->next()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v1

    .local v1, "elt":Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;, "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<TE;>;"
    const/4 v2, 0x0

    .local v2, "past":Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;, "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<TE;>;"
    :goto_11
    if-eqz v1, :cond_35

    iget-object v3, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_head:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v3}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v3

    if-eq v2, v3, :cond_35

    .line 708
    iget-object v3, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_head:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    invoke-virtual {v3}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->next()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v3

    if-eq v3, v1, :cond_28

    .line 709
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 711
    :cond_28
    invoke-virtual {v1}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 707
    move-object v2, v1

    invoke-virtual {v1}, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->next()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    move-result-object v1

    goto :goto_11

    .line 713
    .end local v1    # "elt":Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;, "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<TE;>;"
    .end local v2    # "past":Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;, "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<TE;>;"
    :cond_35
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 714
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected unregisterCursor(Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool/impl/CursorableLinkedList<",
            "TE;>.Cursor;)V"
        }
    .end annotation

    .line 832
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableLinkedList;, "Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>;"
    .local p1, "cur":Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;, "Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>.Cursor;"
    iget-object v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList;->_cursors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>.Cursor;>;>;"
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 833
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 834
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>.Cursor;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;

    .line 835
    .local v2, "cursor":Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;, "Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>.Cursor;"
    if-nez v2, :cond_1e

    .line 839
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_27

    .line 841
    :cond_1e
    if-ne v2, p1, :cond_27

    .line 842
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    .line 843
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 844
    goto :goto_28

    .line 846
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>.Cursor;>;"
    .end local v2    # "cursor":Lorg/apache/commons/pool/impl/CursorableLinkedList$Cursor;, "Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>.Cursor;"
    :cond_27
    :goto_27
    goto :goto_6

    .line 847
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lorg/apache/commons/pool/impl/CursorableLinkedList<TE;>.Cursor;>;>;"
    :cond_28
    :goto_28
    return-void
.end method
