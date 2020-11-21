.class final Lorg/jboss/netty/util/internal/ConcurrentHashMap$EntrySet;
.super Ljava/util/AbstractSet;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/util/internal/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jboss/netty/util/internal/ConcurrentHashMap;


# direct methods
.method constructor <init>(Lorg/jboss/netty/util/internal/ConcurrentHashMap;)V
    .registers 2

    .line 1361
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentHashMap$EntrySet;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap<TK;TV;>.EntrySet;"
    iput-object p1, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$EntrySet;->this$0:Lorg/jboss/netty/util/internal/ConcurrentHashMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 1398
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentHashMap$EntrySet;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$EntrySet;->this$0:Lorg/jboss/netty/util/internal/ConcurrentHashMap;

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->clear()V

    .line 1399
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 1369
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentHashMap$EntrySet;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap<TK;TV;>.EntrySet;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1370
    return v1

    .line 1372
    :cond_6
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 1373
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v2, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$EntrySet;->this$0:Lorg/jboss/netty/util/internal/ConcurrentHashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1374
    .local v2, "v":Ljava/lang/Object;, "TV;"
    if-eqz v2, :cond_21

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    const/4 v1, 0x1

    nop

    :cond_21
    return v1
.end method

.method public isEmpty()Z
    .registers 2

    .line 1393
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentHashMap$EntrySet;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$EntrySet;->this$0:Lorg/jboss/netty/util/internal/ConcurrentHashMap;

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1364
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentHashMap$EntrySet;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap<TK;TV;>.EntrySet;"
    new-instance v0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$EntryIterator;

    iget-object v1, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$EntrySet;->this$0:Lorg/jboss/netty/util/internal/ConcurrentHashMap;

    invoke-direct {v0, v1}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$EntryIterator;-><init>(Lorg/jboss/netty/util/internal/ConcurrentHashMap;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 1379
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentHashMap$EntrySet;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap<TK;TV;>.EntrySet;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_6

    .line 1380
    const/4 v0, 0x0

    return v0

    .line 1382
    :cond_6
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 1383
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v1, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$EntrySet;->this$0:Lorg/jboss/netty/util/internal/ConcurrentHashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public size()I
    .registers 2

    .line 1388
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentHashMap$EntrySet;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$EntrySet;->this$0:Lorg/jboss/netty/util/internal/ConcurrentHashMap;

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->size()I

    move-result v0

    return v0
.end method
