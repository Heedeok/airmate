.class Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;
.super Ljava/lang/Object;
.source "GenericKeyedObjectPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ObjectQueue"
.end annotation


# instance fields
.field private activeCount:I

.field private internalProcessingCount:I

.field private final queue:Lorg/apache/commons/pool/impl/CursorableLinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/pool/impl/CursorableLinkedList<",
            "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;


# direct methods
.method private constructor <init>(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;)V
    .registers 3

    .line 2231
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>.ObjectQueue;"
    iput-object p1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->this$0:Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2233
    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->activeCount:I

    .line 2236
    new-instance v0, Lorg/apache/commons/pool/impl/CursorableLinkedList;

    invoke-direct {v0}, Lorg/apache/commons/pool/impl/CursorableLinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->queue:Lorg/apache/commons/pool/impl/CursorableLinkedList;

    .line 2239
    iput p1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->internalProcessingCount:I

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$1;)V
    .registers 3
    .param p1, "x0"    # Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;
    .param p2, "x1"    # Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$1;

    .line 2231
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>.ObjectQueue;"
    invoke-direct {p0, p1}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;-><init>(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;)V

    return-void
.end method

.method static synthetic access$1000(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;)I
    .registers 2
    .param p0, "x0"    # Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;

    .line 2231
    iget v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->activeCount:I

    return v0
.end method

.method static synthetic access$1100(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;)I
    .registers 2
    .param p0, "x0"    # Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;

    .line 2231
    iget v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->internalProcessingCount:I

    return v0
.end method

.method static synthetic access$900(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;)Lorg/apache/commons/pool/impl/CursorableLinkedList;
    .registers 2
    .param p0, "x0"    # Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;

    .line 2231
    iget-object v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->queue:Lorg/apache/commons/pool/impl/CursorableLinkedList;

    return-object v0
.end method


# virtual methods
.method decrementActiveCount()V
    .registers 3

    .line 2251
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>.ObjectQueue;"
    iget-object v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->this$0:Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;

    monitor-enter v0

    .line 2252
    :try_start_3
    iget-object v1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->this$0:Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;

    invoke-static {v1}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->access$1410(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;)I

    .line 2253
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_14

    .line 2254
    iget v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->activeCount:I

    if-lez v0, :cond_13

    .line 2255
    iget v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->activeCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->activeCount:I

    .line 2257
    :cond_13
    return-void

    .line 2253
    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v1
.end method

.method decrementInternalProcessingCount()V
    .registers 3

    .line 2269
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>.ObjectQueue;"
    iget-object v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->this$0:Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;

    monitor-enter v0

    .line 2270
    :try_start_3
    iget-object v1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->this$0:Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;

    invoke-static {v1}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->access$1510(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;)I

    .line 2271
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_10

    .line 2272
    iget v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->internalProcessingCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->internalProcessingCount:I

    .line 2273
    return-void

    .line 2271
    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v1
.end method

.method incrementActiveCount()V
    .registers 3

    .line 2243
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>.ObjectQueue;"
    iget-object v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->this$0:Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;

    monitor-enter v0

    .line 2244
    :try_start_3
    iget-object v1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->this$0:Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;

    invoke-static {v1}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->access$1408(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;)I

    .line 2245
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_10

    .line 2246
    iget v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->activeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->activeCount:I

    .line 2247
    return-void

    .line 2245
    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v1
.end method

.method incrementInternalProcessingCount()V
    .registers 3

    .line 2261
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>.ObjectQueue;"
    iget-object v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->this$0:Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;

    monitor-enter v0

    .line 2262
    :try_start_3
    iget-object v1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->this$0:Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;

    invoke-static {v1}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->access$1508(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;)I

    .line 2263
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_10

    .line 2264
    iget v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->internalProcessingCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectQueue;->internalProcessingCount:I

    .line 2265
    return-void

    .line 2263
    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v1
.end method
