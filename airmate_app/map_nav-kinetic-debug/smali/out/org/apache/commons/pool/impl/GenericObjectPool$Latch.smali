.class final Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;
.super Ljava/lang/Object;
.source "GenericObjectPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/pool/impl/GenericObjectPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Latch"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private _mayCreate:Z

.field private _pair:Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1860
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;, "Lorg/apache/commons/pool/impl/GenericObjectPool$Latch<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1866
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;->_mayCreate:Z

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/pool/impl/GenericObjectPool$1;)V
    .registers 2
    .param p1, "x0"    # Lorg/apache/commons/pool/impl/GenericObjectPool$1;

    .line 1860
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;, "Lorg/apache/commons/pool/impl/GenericObjectPool$Latch<TT;>;"
    invoke-direct {p0}, Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;)Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;
    .registers 2
    .param p0, "x0"    # Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;

    .line 1860
    invoke-direct {p0}, Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;->getPair()Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;)Z
    .registers 2
    .param p0, "x0"    # Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;

    .line 1860
    invoke-direct {p0}, Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;->mayCreate()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;)V
    .registers 2
    .param p0, "x0"    # Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;
    .param p1, "x1"    # Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;

    .line 1860
    invoke-direct {p0, p1}, Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;->setPair(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;)V

    return-void
.end method

.method static synthetic access$400(Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;)V
    .registers 1
    .param p0, "x0"    # Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;

    .line 1860
    invoke-direct {p0}, Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;->reset()V

    return-void
.end method

.method static synthetic access$500(Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;Z)V
    .registers 2
    .param p0, "x0"    # Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;
    .param p1, "x1"    # Z

    .line 1860
    invoke-direct {p0, p1}, Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;->setMayCreate(Z)V

    return-void
.end method

.method private declared-synchronized getPair()Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<",
            "TT;>;"
        }
    .end annotation

    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;, "Lorg/apache/commons/pool/impl/GenericObjectPool$Latch<TT;>;"
    monitor-enter p0

    .line 1873
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;->_pair:Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;
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

    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;, "Lorg/apache/commons/pool/impl/GenericObjectPool$Latch<TT;>;"
    monitor-enter p0

    .line 1889
    :try_start_1
    iget-boolean v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;->_mayCreate:Z
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

    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;, "Lorg/apache/commons/pool/impl/GenericObjectPool$Latch<TT;>;"
    monitor-enter p0

    .line 1905
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;->_pair:Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;

    .line 1906
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;->_mayCreate:Z
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 1907
    monitor-exit p0

    return-void

    .line 1904
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setMayCreate(Z)V
    .registers 2
    .param p1, "mayCreate"    # Z

    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;, "Lorg/apache/commons/pool/impl/GenericObjectPool$Latch<TT;>;"
    monitor-enter p0

    .line 1897
    :try_start_1
    iput-boolean p1, p0, Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;->_mayCreate:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 1898
    monitor-exit p0

    return-void

    .line 1896
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
            "TT;>;)V"
        }
    .end annotation

    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;, "Lorg/apache/commons/pool/impl/GenericObjectPool$Latch<TT;>;"
    .local p1, "pair":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TT;>;"
    monitor-enter p0

    .line 1881
    :try_start_1
    iput-object p1, p0, Lorg/apache/commons/pool/impl/GenericObjectPool$Latch;->_pair:Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 1882
    monitor-exit p0

    return-void

    .line 1880
    .end local p1    # "pair":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TT;>;"
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method
