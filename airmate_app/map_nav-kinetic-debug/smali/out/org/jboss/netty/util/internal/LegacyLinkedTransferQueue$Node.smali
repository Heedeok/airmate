.class final Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;
.super Ljava/lang/Object;
.source "LegacyLinkedTransferQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Node"
.end annotation


# static fields
.field private static final itemUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final nextUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;",
            "Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final isData:Z

.field volatile item:Ljava/lang/Object;

.field volatile next:Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;

.field volatile waiter:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 542
    const-class v0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;

    const-class v1, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;

    const-string v2, "next"

    invoke-static {v0, v1, v2}, Lorg/jboss/netty/util/internal/AtomicFieldUpdaterUtil;->newRefUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;->nextUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 544
    const-class v0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;

    const-class v1, Ljava/lang/Object;

    const-string v2, "item"

    invoke-static {v0, v1, v2}, Lorg/jboss/netty/util/internal/AtomicFieldUpdaterUtil;->newRefUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;->itemUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Z)V
    .registers 3
    .param p1, "item"    # Ljava/lang/Object;
    .param p2, "isData"    # Z

    .line 475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 476
    iput-object p1, p0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;->item:Ljava/lang/Object;

    .line 477
    iput-boolean p2, p0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;->isData:Z

    .line 478
    return-void
.end method


# virtual methods
.method cannotPrecede(Z)Z
    .registers 7
    .param p1, "haveData"    # Z

    .line 524
    iget-boolean v0, p0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;->isData:Z

    .line 526
    .local v0, "d":Z
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, p1, :cond_13

    iget-object v3, p0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;->item:Ljava/lang/Object;

    move-object v4, v3

    .local v4, "x":Ljava/lang/Object;
    if-eq v3, p0, :cond_13

    if-eqz v4, :cond_f

    const/4 v3, 0x1

    goto :goto_10

    :cond_f
    const/4 v3, 0x0

    :goto_10
    if-ne v3, v0, :cond_13

    goto :goto_14

    .end local v4    # "x":Ljava/lang/Object;
    :cond_13
    const/4 v1, 0x0

    :goto_14
    return v1
.end method

.method casItem(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .param p1, "cmp"    # Ljava/lang/Object;
    .param p2, "val"    # Ljava/lang/Object;

    .line 457
    invoke-static {}, Lorg/jboss/netty/util/internal/AtomicFieldUpdaterUtil;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 458
    sget-object v0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;->itemUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 460
    :cond_d
    monitor-enter p0

    .line 461
    :try_start_e
    iget-object v0, p0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;->item:Ljava/lang/Object;

    if-ne v0, p1, :cond_17

    .line 462
    iput-object p2, p0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;->item:Ljava/lang/Object;

    .line 463
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 465
    :cond_17
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 467
    :catchall_1a
    move-exception v0

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method casNext(Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;)Z
    .registers 4
    .param p1, "cmp"    # Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;
    .param p2, "val"    # Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;

    .line 441
    invoke-static {}, Lorg/jboss/netty/util/internal/AtomicFieldUpdaterUtil;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 442
    sget-object v0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;->nextUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 444
    :cond_d
    monitor-enter p0

    .line 445
    :try_start_e
    iget-object v0, p0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;->next:Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;

    if-ne v0, p1, :cond_17

    .line 446
    iput-object p2, p0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;->next:Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;

    .line 447
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 449
    :cond_17
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 451
    :catchall_1a
    move-exception v0

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method forgetContents()V
    .registers 2

    .line 498
    iput-object p0, p0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;->item:Ljava/lang/Object;

    .line 499
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;->waiter:Ljava/lang/Thread;

    .line 500
    return-void
.end method

.method forgetNext()V
    .registers 1

    .line 485
    iput-object p0, p0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;->next:Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;

    .line 486
    return-void
.end method

.method isMatched()Z
    .registers 6

    .line 507
    iget-object v0, p0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;->item:Ljava/lang/Object;

    .line 508
    .local v0, "x":Ljava/lang/Object;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, p0, :cond_11

    if-nez v0, :cond_a

    const/4 v3, 0x1

    goto :goto_b

    :cond_a
    const/4 v3, 0x0

    :goto_b
    iget-boolean v4, p0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;->isData:Z

    if-ne v3, v4, :cond_10

    goto :goto_11

    :cond_10
    goto :goto_12

    :cond_11
    :goto_11
    const/4 v1, 0x1

    :goto_12
    return v1
.end method

.method isUnmatchedRequest()Z
    .registers 2

    .line 515
    iget-boolean v0, p0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;->isData:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;->item:Ljava/lang/Object;

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method tryMatchData()Z
    .registers 3

    .line 534
    iget-object v0, p0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;->item:Ljava/lang/Object;

    .line 535
    .local v0, "x":Ljava/lang/Object;
    if-eqz v0, :cond_14

    if-eq v0, p0, :cond_14

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;->casItem(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 536
    iget-object v1, p0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;->waiter:Ljava/lang/Thread;

    invoke-static {v1}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 537
    const/4 v1, 0x1

    return v1

    .line 539
    :cond_14
    const/4 v1, 0x0

    return v1
.end method
