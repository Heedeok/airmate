.class Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;
.super Ljava/lang/Object;
.source "CursorableLinkedList.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/pool/impl/CursorableLinkedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Listable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private _next:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<",
            "TE;>;"
        }
    .end annotation
.end field

.field private _prev:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<",
            "TE;>;"
        }
    .end annotation
.end field

.field private _val:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<",
            "TE;>;",
            "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<",
            "TE;>;TE;)V"
        }
    .end annotation

    .line 977
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;, "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<TE;>;"
    .local p1, "prev":Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;, "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<TE;>;"
    .local p2, "next":Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;, "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<TE;>;"
    .local p3, "val":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 973
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->_prev:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    .line 974
    iput-object v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->_next:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    .line 975
    iput-object v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->_val:Ljava/lang/Object;

    .line 978
    iput-object p1, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->_prev:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    .line 979
    iput-object p2, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->_next:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    .line 980
    iput-object p3, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->_val:Ljava/lang/Object;

    .line 981
    return-void
.end method


# virtual methods
.method next()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<",
            "TE;>;"
        }
    .end annotation

    .line 984
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;, "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->_next:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    return-object v0
.end method

.method prev()Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<",
            "TE;>;"
        }
    .end annotation

    .line 988
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;, "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->_prev:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    return-object v0
.end method

.method setNext(Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<",
            "TE;>;)V"
        }
    .end annotation

    .line 996
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;, "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<TE;>;"
    .local p1, "next":Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;, "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<TE;>;"
    iput-object p1, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->_next:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    .line 997
    return-void
.end method

.method setPrev(Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<",
            "TE;>;)V"
        }
    .end annotation

    .line 1000
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;, "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<TE;>;"
    .local p1, "prev":Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;, "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<TE;>;"
    iput-object p1, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->_prev:Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;

    .line 1001
    return-void
.end method

.method setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 1004
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;, "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<TE;>;"
    .local p1, "val":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->_val:Ljava/lang/Object;

    .line 1005
    .local v0, "temp":Ljava/lang/Object;, "TE;"
    iput-object p1, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->_val:Ljava/lang/Object;

    .line 1006
    return-object v0
.end method

.method value()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 992
    .local p0, "this":Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;, "Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/pool/impl/CursorableLinkedList$Listable;->_val:Ljava/lang/Object;

    return-object v0
.end method
