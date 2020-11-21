.class final Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$WriteThroughEntry;
.super Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$SimpleEntry;
.source "ConcurrentWeakKeyHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "WriteThroughEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$SimpleEntry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap;


# direct methods
.method constructor <init>(Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 1347
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$WriteThroughEntry;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap<TK;TV;>.WriteThroughEntry;"
    .local p2, "k":Ljava/lang/Object;, "TK;"
    .local p3, "v":Ljava/lang/Object;, "TV;"
    iput-object p1, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$WriteThroughEntry;->this$0:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap;

    .line 1348
    invoke-direct {p0, p2, p3}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1349
    return-void
.end method


# virtual methods
.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 1362
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$WriteThroughEntry;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap<TK;TV;>.WriteThroughEntry;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_10

    .line 1365
    invoke-super {p0, p1}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$SimpleEntry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1366
    .local v0, "v":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$WriteThroughEntry;->this$0:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap;

    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$WriteThroughEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1367
    return-object v0

    .line 1363
    .end local v0    # "v":Ljava/lang/Object;, "TV;"
    :cond_10
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method
