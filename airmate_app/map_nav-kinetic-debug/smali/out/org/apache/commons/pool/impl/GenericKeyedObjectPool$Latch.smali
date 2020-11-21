.class final Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;
.super Ljava/lang/Object;
.source "GenericKeyedObjectPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Latch"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "LK:Ljava/lang/Object;",
        "LV:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final _key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "T",
            "LK;"
        }
    .end annotation
.end field

.field private _mayCreate:Z

.field private _pair:Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<",
            "T",
            "LV;",
            ">;"
        }
    .end annotation
.end field

.field private _pool:Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<",
            "TK;TV;>.ObjectQueue;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;


# direct methods
.method private constructor <init>(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "LK;",
            ")V"
        }
    .end annotation

    .line 2492
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>.Latch<TLK;TLV;>;"
    .local p2, "key":Ljava/lang/Object;, "TLK;"
    iput-object p1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;->this$0:Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2486
    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;->_mayCreate:Z

    .line 2493
    iput-object p2, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;->_key:Ljava/lang/Object;

    .line 2494
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;Ljava/lang/Object;Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$1;)V
    .registers 4
    .param p1, "x0"    # Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$1;

    .line 2474
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>.Latch<TLK;TLV;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;-><init>(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;)Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;
    .registers 2
    .param p0, "x0"    # Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;

    .line 2474
    invoke-direct {p0}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;->getPair()Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;Z)V
    .registers 2
    .param p0, "x0"    # Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;
    .param p1, "x1"    # Z

    .line 2474
    invoke-direct {p0, p1}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;->setMayCreate(Z)V

    return-void
.end method

.method static synthetic access$200(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;)Z
    .registers 2
    .param p0, "x0"    # Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;

    .line 2474
    invoke-direct {p0}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;->mayCreate()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;)Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;
    .registers 2
    .param p0, "x0"    # Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;

    .line 2474
    invoke-direct {p0}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;->getPool()Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;

    .line 2474
    invoke-direct {p0}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;->getkey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;)V
    .registers 2
    .param p0, "x0"    # Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;
    .param p1, "x1"    # Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;

    .line 2474
    invoke-direct {p0, p1}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;->setPair(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;)V

    return-void
.end method

.method static synthetic access$600(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;)V
    .registers 1
    .param p0, "x0"    # Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;

    .line 2474
    invoke-direct {p0}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;->reset()V

    return-void
.end method

.method static synthetic access$800(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;)V
    .registers 2
    .param p0, "x0"    # Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;
    .param p1, "x1"    # Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;

    .line 2474
    invoke-direct {p0, p1}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;->setPool(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;)V

    return-void
.end method

.method private declared-synchronized getPair()Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<",
            "T",
            "LV;",
            ">;"
        }
    .end annotation

    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>.Latch<TLK;TLV;>;"
    monitor-enter p0

    .line 2526
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;->_pair:Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getPool()Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<",
            "TK;TV;>.ObjectQueue;"
        }
    .end annotation

    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>.Latch<TLK;TLV;>;"
    monitor-enter p0

    .line 2509
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;->_pool:Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getkey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()T",
            "LK;"
        }
    .end annotation

    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>.Latch<TLK;TLV;>;"
    monitor-enter p0

    .line 2501
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;->_key:Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized mayCreate()Z
    .registers 2

    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>.Latch<TLK;TLV;>;"
    monitor-enter p0

    .line 2542
    :try_start_1
    iget-boolean v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;->_mayCreate:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized reset()V
    .registers 2

    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>.Latch<TLK;TLV;>;"
    monitor-enter p0

    .line 2559
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;->_pair:Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;

    .line 2560
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;->_mayCreate:Z
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 2561
    monitor-exit p0

    return-void

    .line 2558
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setMayCreate(Z)V
    .registers 2
    .param p1, "mayCreate"    # Z

    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>.Latch<TLK;TLV;>;"
    monitor-enter p0

    .line 2551
    :try_start_1
    iput-boolean p1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;->_mayCreate:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 2552
    monitor-exit p0

    return-void

    .line 2550
    .end local p1    # "mayCreate":Z
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized setPair(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<",
            "T",
            "LV;",
            ">;)V"
        }
    .end annotation

    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>.Latch<TLK;TLV;>;"
    .local p1, "pair":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TLV;>;"
    monitor-enter p0

    .line 2534
    :try_start_1
    iput-object p1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;->_pair:Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 2535
    monitor-exit p0

    return-void

    .line 2533
    .end local p1    # "pair":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TLV;>;"
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized setPool(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<",
            "TK;TV;>.ObjectQueue;)V"
        }
    .end annotation

    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>.Latch<TLK;TLV;>;"
    .local p1, "pool":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>.ObjectQueue;"
    monitor-enter p0

    .line 2517
    :try_start_1
    iput-object p1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Latch;->_pool:Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 2518
    monitor-exit p0

    return-void

    .line 2516
    .end local p1    # "pool":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>.ObjectQueue;"
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method
