.class public Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;
.super Ljava/util/AbstractQueue;
.source "LegacyLinkedTransferQueue.java"

# interfaces
.implements Ljava/util/concurrent/BlockingQueue;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Itr;,
        Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue<",
        "TE;>;",
        "Ljava/util/concurrent/BlockingQueue<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final ASYNC:I = 0x1

.field private static final CHAINED_SPINS:I = 0x40

.field private static final FRONT_SPINS:I = 0x80

.field private static final MP:Z

.field private static final NOW:I = 0x0

.field static final SWEEP_THRESHOLD:I = 0x20

.field private static final SYNC:I = 0x2

.field private static final TIMED:I = 0x3

.field private static final headUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;",
            "Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x2cbacc91e0a3c166L

.field private static final sweepVotesUpdater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<",
            "Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;",
            ">;"
        }
    .end annotation
.end field

.field private static final tailUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;",
            "Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field volatile transient head:Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;

.field volatile transient sweepVotes:I

.field volatile transient tail:Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 396
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    sput-boolean v1, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->MP:Z

    .line 1344
    const-class v0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;

    const-class v1, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;

    const-string v2, "head"

    invoke-static {v0, v1, v2}, Lorg/jboss/netty/util/internal/AtomicFieldUpdaterUtil;->newRefUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->headUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 1347
    const-class v0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;

    const-class v1, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;

    const-string v2, "tail"

    invoke-static {v0, v1, v2}, Lorg/jboss/netty/util/internal/AtomicFieldUpdaterUtil;->newRefUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->tailUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 1350
    const-class v0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;

    const-string v1, "sweepVotes"

    invoke-static {v0, v1}, Lorg/jboss/netty/util/internal/AtomicFieldUpdaterUtil;->newIntUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->sweepVotesUpdater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1032
    .local p0, "this":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 1033
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    .line 1045
    .local p0, "this":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;-><init>()V

    .line 1046
    invoke-virtual {p0, p1}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->addAll(Ljava/util/Collection;)Z

    .line 1047
    return-void
.end method

.method private awaitMatch(Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;Ljava/lang/Object;ZJ)Ljava/lang/Object;
    .registers 26
    .param p1, "s"    # Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;
    .param p2, "pred"    # Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;
    .param p4, "timed"    # Z
    .param p5, "nanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;",
            "Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;",
            "TE;ZJ)TE;"
        }
    .end annotation

    .line 732
    .local p0, "this":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue<TE;>;"
    .local p3, "e":Ljava/lang/Object;, "TE;"
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-wide/16 v3, 0x0

    if-eqz p4, :cond_f

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    goto :goto_10

    :cond_f
    move-wide v5, v3

    .line 733
    .local v5, "lastTime":J
    :goto_10
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    .line 734
    .local v7, "w":Ljava/lang/Thread;
    const/4 v8, -0x1

    .line 735
    .local v8, "spins":I
    const/4 v9, 0x0

    move-wide v10, v5

    move-wide/from16 v5, p5

    .line 738
    .end local p5    # "nanos":J
    .local v5, "nanos":J
    .local v9, "randomYields":Lorg/jboss/netty/util/internal/ThreadLocalRandom;
    .local v10, "lastTime":J
    :goto_19
    iget-object v12, v0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;->item:Ljava/lang/Object;

    .line 739
    .local v12, "item":Ljava/lang/Object;
    if-eq v12, v2, :cond_25

    .line 741
    invoke-virtual/range {p1 .. p1}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;->forgetContents()V

    .line 742
    invoke-static {v12}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 744
    :cond_25
    invoke-virtual {v7}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v13

    if-nez v13, :cond_35

    if-eqz p4, :cond_32

    cmp-long v13, v5, v3

    if-gtz v13, :cond_32

    goto :goto_35

    .line 750
    :cond_32
    move-object/from16 v13, p0

    goto :goto_41

    .line 744
    :cond_35
    :goto_35
    invoke-virtual {v0, v2, v0}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;->casItem(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_32

    .line 746
    move-object/from16 v13, p0

    invoke-virtual {v13, v1, v0}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->unsplice(Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;)V

    .line 747
    return-object v2

    .line 750
    :goto_41
    if-gez v8, :cond_51

    .line 751
    iget-boolean v14, v0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;->isData:Z

    invoke-static {v1, v14}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->spinsFor(Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;Z)I

    move-result v14

    move v8, v14

    if-lez v14, :cond_80

    .line 752
    invoke-static {}, Lorg/jboss/netty/util/internal/ThreadLocalRandom;->current()Lorg/jboss/netty/util/internal/ThreadLocalRandom;

    move-result-object v9

    goto :goto_80

    .line 755
    :cond_51
    if-lez v8, :cond_61

    .line 756
    add-int/lit8 v8, v8, -0x1

    .line 757
    const/16 v14, 0x40

    invoke-virtual {v9, v14}, Lorg/jboss/netty/util/internal/ThreadLocalRandom;->nextInt(I)I

    move-result v14

    if-nez v14, :cond_80

    .line 758
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_80

    .line 761
    :cond_61
    iget-object v14, v0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;->waiter:Ljava/lang/Thread;

    if-nez v14, :cond_68

    .line 762
    iput-object v7, v0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;->waiter:Ljava/lang/Thread;

    goto :goto_80

    .line 764
    :cond_68
    if-eqz p4, :cond_7d

    .line 765
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    .line 766
    .local v14, "now":J
    sub-long v16, v14, v10

    sub-long v16, v5, v16

    move-wide/from16 v5, v16

    cmp-long v18, v16, v3

    if-lez v18, :cond_7b

    .line 767
    invoke-static {v5, v6}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    .line 769
    :cond_7b
    move-wide v10, v14

    .line 770
    .end local v14    # "now":J
    goto :goto_80

    .line 772
    :cond_7d
    invoke-static {}, Ljava/util/concurrent/locks/LockSupport;->park()V

    .line 774
    .end local v12    # "item":Ljava/lang/Object;
    :cond_80
    :goto_80
    goto :goto_19
.end method

.method private casHead(Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;)Z
    .registers 4
    .param p1, "cmp"    # Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;
    .param p2, "val"    # Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;

    .line 575
    .local p0, "this":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue<TE;>;"
    invoke-static {}, Lorg/jboss/netty/util/internal/AtomicFieldUpdaterUtil;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 576
    sget-object v0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->headUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 578
    :cond_d
    monitor-enter p0

    .line 579
    :try_start_e
    iget-object v0, p0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->head:Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;

    if-ne v0, p1, :cond_17

    .line 580
    iput-object p2, p0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->head:Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;

    .line 581
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 583
    :cond_17
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 585
    :catchall_1a
    move-exception v0

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method private casSweepVotes(II)Z
    .registers 4
    .param p1, "cmp"    # I
    .param p2, "val"    # I

    .line 590
    .local p0, "this":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue<TE;>;"
    invoke-static {}, Lorg/jboss/netty/util/internal/AtomicFieldUpdaterUtil;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 591
    sget-object v0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->sweepVotesUpdater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    return v0

    .line 593
    :cond_d
    monitor-enter p0

    .line 594
    :try_start_e
    iget v0, p0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->sweepVotes:I

    if-ne v0, p1, :cond_17

    .line 595
    iput p2, p0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->sweepVotes:I

    .line 596
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 598
    :cond_17
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 600
    :catchall_1a
    move-exception v0

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method private casTail(Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;)Z
    .registers 4
    .param p1, "cmp"    # Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;
    .param p2, "val"    # Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;

    .line 560
    .local p0, "this":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue<TE;>;"
    invoke-static {}, Lorg/jboss/netty/util/internal/AtomicFieldUpdaterUtil;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 561
    sget-object v0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->tailUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 563
    :cond_d
    monitor-enter p0

    .line 564
    :try_start_e
    iget-object v0, p0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->tail:Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;

    if-ne v0, p1, :cond_17

    .line 565
    iput-object p2, p0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->tail:Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;

    .line 566
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 568
    :cond_17
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 570
    :catchall_1a
    move-exception v0

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method static cast(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .param p0, "item"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TE;"
        }
    .end annotation

    .line 616
    return-object p0
.end method

.method private countOfMode(Z)I
    .registers 5
    .param p1, "data"    # Z

    .line 845
    .local p0, "this":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue<TE;>;"
    const/4 v0, 0x0

    .line 846
    .local v0, "count":I
    iget-object v1, p0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->head:Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;

    .local v1, "p":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;
    :goto_3
    if-eqz v1, :cond_23

    .line 847
    invoke-virtual {v1}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;->isMatched()Z

    move-result v2

    if-nez v2, :cond_19

    .line 848
    iget-boolean v2, v1, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;->isData:Z

    if-eq v2, p1, :cond_11

    .line 849
    const/4 v2, 0x0

    return v2

    .line 851
    :cond_11
    add-int/lit8 v0, v0, 0x1

    const v2, 0x7fffffff

    if-ne v0, v2, :cond_19

    .line 852
    goto :goto_23

    .line 855
    :cond_19
    iget-object v2, v1, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;->next:Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;

    .line 856
    .local v2, "n":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;
    if-eq v2, v1, :cond_1f

    .line 857
    move-object v1, v2

    goto :goto_22

    .line 859
    :cond_1f
    const/4 v0, 0x0

    .line 860
    iget-object v1, p0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->head:Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;

    .line 862
    .end local v2    # "n":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;
    :goto_22
    goto :goto_3

    .line 863
    .end local v1    # "p":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;
    :cond_23
    :goto_23
    return v0
.end method

.method private findAndRemove(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "e"    # Ljava/lang/Object;

    .line 1005
    .local p0, "this":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue<TE;>;"
    if-eqz p1, :cond_2f

    .line 1006
    const/4 v0, 0x0

    .local v0, "pred":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;
    iget-object v1, p0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->head:Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;

    .local v1, "p":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;
    :goto_5
    if-eqz v1, :cond_2f

    .line 1007
    iget-object v2, v1, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;->item:Ljava/lang/Object;

    .line 1008
    .local v2, "item":Ljava/lang/Object;
    iget-boolean v3, v1, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;->isData:Z

    if-eqz v3, :cond_22

    .line 1009
    if-eqz v2, :cond_25

    if-eq v2, v1, :cond_25

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-virtual {v1}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;->tryMatchData()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 1011
    invoke-virtual {p0, v0, v1}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->unsplice(Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;)V

    .line 1012
    const/4 v3, 0x1

    return v3

    .line 1015
    :cond_22
    if-nez v2, :cond_25

    .line 1016
    goto :goto_2f

    .line 1018
    :cond_25
    move-object v0, v1

    .line 1019
    iget-object v3, v1, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;->next:Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;

    move-object v1, v3

    if-ne v3, v0, :cond_2e

    .line 1020
    const/4 v0, 0x0

    .line 1021
    iget-object v1, p0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->head:Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;

    .line 1023
    .end local v2    # "item":Ljava/lang/Object;
    :cond_2e
    goto :goto_5

    .line 1025
    .end local v0    # "pred":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;
    .end local v1    # "p":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;
    :cond_2f
    :goto_2f
    const/4 v0, 0x0

    return v0
.end method

.method private firstDataItem()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 826
    .local p0, "this":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue<TE;>;"
    iget-object v0, p0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->head:Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;

    .local v0, "p":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;
    :goto_2
    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    .line 827
    iget-object v2, v0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;->item:Ljava/lang/Object;

    .line 828
    .local v2, "item":Ljava/lang/Object;
    iget-boolean v3, v0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;->isData:Z

    if-eqz v3, :cond_14

    .line 829
    if-eqz v2, :cond_17

    if-eq v2, v0, :cond_17

    .line 830
    invoke-static {v2}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 833
    :cond_14
    if-nez v2, :cond_17

    .line 834
    return-object v1

    .line 826
    .end local v2    # "item":Ljava/lang/Object;
    :cond_17
    invoke-virtual {p0, v0}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->succ(Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;)Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;

    move-result-object v0

    goto :goto_2

    .line 837
    .end local v0    # "p":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;
    :cond_1c
    return-object v1
.end method

.method private firstOfMode(Z)Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;
    .registers 5
    .param p1, "isData"    # Z

    .line 813
    .local p0, "this":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue<TE;>;"
    iget-object v0, p0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->head:Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;

    .local v0, "p":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;
    :goto_2
    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 814
    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;->isMatched()Z

    move-result v2

    if-nez v2, :cond_12

    .line 815
    iget-boolean v2, v0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;->isData:Z

    if-ne v2, p1, :cond_11

    move-object v1, v0

    nop

    :cond_11
    return-object v1

    .line 813
    :cond_12
    invoke-virtual {p0, v0}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->succ(Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;)Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;

    move-result-object v0

    goto :goto_2

    .line 818
    .end local v0    # "p":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;
    :cond_17
    return-object v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 3
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1332
    .local p0, "this":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1334
    :goto_3
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 1335
    .local v0, "item":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_b

    .line 1336
    nop

    .line 1341
    .end local v0    # "item":Ljava/lang/Object;, "TE;"
    return-void

    .line 1338
    .restart local v0    # "item":Ljava/lang/Object;, "TE;"
    :cond_b
    invoke-virtual {p0, v0}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->offer(Ljava/lang/Object;)Z

    .line 1340
    .end local v0    # "item":Ljava/lang/Object;, "TE;"
    goto :goto_3
.end method

.method private static spinsFor(Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;Z)I
    .registers 3
    .param p0, "pred"    # Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;
    .param p1, "haveData"    # Z

    .line 782
    sget-boolean v0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->MP:Z

    if-eqz v0, :cond_1d

    if-eqz p0, :cond_1d

    .line 783
    iget-boolean v0, p0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;->isData:Z

    if-eq v0, p1, :cond_d

    .line 784
    const/16 v0, 0xc0

    return v0

    .line 786
    :cond_d
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;->isMatched()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 787
    const/16 v0, 0x80

    return v0

    .line 789
    :cond_16
    iget-object v0, p0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;->waiter:Ljava/lang/Thread;

    if-nez v0, :cond_1d

    .line 790
    const/16 v0, 0x40

    return v0

    .line 793
    :cond_1d
    const/4 v0, 0x0

    return v0
.end method

.method private sweep()V
    .registers 5

    .line 986
    .local p0, "this":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue<TE;>;"
    iget-object v0, p0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->head:Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;

    .local v0, "p":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;
    :goto_2
    if-eqz v0, :cond_20

    iget-object v1, v0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;->next:Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;

    move-object v2, v1

    .local v2, "s":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;
    if-eqz v1, :cond_20

    .line 987
    invoke-virtual {v2}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;->isMatched()Z

    move-result v1

    if-nez v1, :cond_11

    .line 989
    move-object v0, v2

    goto :goto_2

    .line 990
    :cond_11
    iget-object v1, v2, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;->next:Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;

    move-object v3, v1

    .local v3, "n":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;
    if-nez v1, :cond_17

    .line 991
    goto :goto_20

    .line 992
    :cond_17
    if-ne v2, v3, :cond_1c

    .line 994
    iget-object v0, p0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->head:Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;

    goto :goto_2

    .line 996
    :cond_1c
    invoke-virtual {v0, v2, v3}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;->casNext(Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;)Z

    goto :goto_2

    .line 999
    .end local v0    # "p":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;
    .end local v2    # "s":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;
    .end local v3    # "n":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;
    :cond_20
    :goto_20
    return-void
.end method

.method private tryAppend(Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;Z)Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;
    .registers 9
    .param p1, "s"    # Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;
    .param p2, "haveData"    # Z

    .line 691
    .local p0, "this":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue<TE;>;"
    iget-object v0, p0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->tail:Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;

    move-object v1, v0

    .line 693
    .local v0, "p":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;
    .local v1, "t":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;
    :goto_3
    const/4 v2, 0x0

    if-nez v0, :cond_12

    iget-object v3, p0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->head:Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;

    move-object v0, v3

    if-nez v3, :cond_12

    .line 694
    invoke-direct {p0, v2, p1}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->casHead(Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 695
    return-object p1

    .line 698
    :cond_12
    invoke-virtual {v0, p2}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;->cannotPrecede(Z)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 699
    return-object v2

    .line 700
    :cond_19
    iget-object v3, v0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;->next:Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;

    move-object v4, v3

    .local v4, "n":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;
    if-eqz v3, :cond_2e

    .line 701
    if-eq v0, v1, :cond_28

    iget-object v3, p0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->tail:Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;

    move-object v5, v3

    .local v5, "u":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;
    if-eq v1, v3, :cond_28

    move-object v1, v5

    move-object v2, v5

    goto :goto_2c

    .end local v5    # "u":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;
    :cond_28
    if-eq v0, v4, :cond_2c

    move-object v2, v4

    nop

    :cond_2c
    :goto_2c
    move-object v0, v2

    goto :goto_36

    .line 703
    :cond_2e
    invoke-virtual {v0, v2, p1}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;->casNext(Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;)Z

    move-result v2

    if-nez v2, :cond_37

    .line 704
    iget-object v0, v0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;->next:Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;

    .line 716
    .end local v4    # "n":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;
    :cond_36
    :goto_36
    goto :goto_3

    .line 706
    .restart local v4    # "n":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;
    :cond_37
    if-eq v0, v1, :cond_55

    .line 710
    :goto_39
    iget-object v2, p0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->tail:Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;

    if-ne v2, v1, :cond_43

    invoke-direct {p0, v1, p1}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->casTail(Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;)Z

    move-result v2

    if-nez v2, :cond_55

    :cond_43
    iget-object v2, p0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->tail:Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;

    move-object v1, v2

    if-eqz v2, :cond_55

    iget-object v2, v1, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;->next:Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;

    move-object p1, v2

    if-eqz v2, :cond_55

    iget-object v2, p1, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;->next:Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;

    move-object p1, v2

    if-eqz v2, :cond_55

    if-eq p1, v1, :cond_55

    .line 711
    goto :goto_39

    .line 714
    :cond_55
    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1316
    .local p0, "this":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1317
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1318
    .local v1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1319
    .end local v1    # "e":Ljava/lang/Object;, "TE;"
    goto :goto_7

    .line 1321
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_15
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1322
    return-void
.end method

.method private xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;
    .registers 19
    .param p2, "haveData"    # Z
    .param p3, "how"    # I
    .param p4, "nanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZIJ)TE;"
        }
    .end annotation

    .line 630
    .local p0, "this":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    move-object v7, p0

    move-object v8, p1

    move v9, p2

    move/from16 v10, p3

    if-eqz v9, :cond_10

    if-eqz v8, :cond_a

    goto :goto_10

    .line 631
    :cond_a
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 633
    :cond_10
    :goto_10
    const/4 v0, 0x0

    .line 637
    .local v0, "s":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;
    :goto_11
    iget-object v1, v7, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->head:Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;

    move-object v2, v1

    .local v1, "p":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;
    .local v2, "h":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;
    :goto_14
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_6e

    .line 638
    iget-boolean v5, v1, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;->isData:Z

    .line 639
    .local v5, "isData":Z
    iget-object v6, v1, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;->item:Ljava/lang/Object;

    .line 640
    .local v6, "item":Ljava/lang/Object;
    if-eq v6, v1, :cond_63

    if-eqz v6, :cond_22

    const/4 v11, 0x1

    goto :goto_23

    :cond_22
    const/4 v11, 0x0

    :goto_23
    if-ne v11, v5, :cond_63

    .line 641
    if-ne v5, v9, :cond_28

    .line 642
    goto :goto_6e

    .line 644
    :cond_28
    invoke-virtual {v1, v6, p1}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;->casItem(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_63

    .line 645
    move-object v3, v2

    move-object v2, v1

    .local v2, "q":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;
    .local v3, "h":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;
    :goto_30
    if-eq v2, v3, :cond_59

    .line 646
    iget-object v4, v2, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;->next:Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;

    .line 647
    .local v4, "n":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;
    iget-object v11, v7, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->head:Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;

    if-ne v11, v3, :cond_47

    if-nez v4, :cond_3c

    move-object v11, v2

    goto :goto_3d

    :cond_3c
    move-object v11, v4

    :goto_3d
    invoke-direct {p0, v3, v11}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->casHead(Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;)Z

    move-result v11

    if-eqz v11, :cond_47

    .line 648
    invoke-virtual {v3}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;->forgetNext()V

    .line 649
    goto :goto_59

    .line 651
    :cond_47
    iget-object v11, v7, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->head:Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;

    move-object v3, v11

    if-eqz v11, :cond_59

    iget-object v11, v3, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;->next:Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;

    move-object v2, v11

    if-eqz v11, :cond_59

    invoke-virtual {v2}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;->isMatched()Z

    move-result v11

    if-nez v11, :cond_58

    .line 653
    goto :goto_59

    .line 655
    .end local v4    # "n":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;
    :cond_58
    goto :goto_30

    .line 656
    .end local v2    # "q":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;
    :cond_59
    :goto_59
    iget-object v2, v1, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;->waiter:Ljava/lang/Thread;

    invoke-static {v2}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 658
    invoke-static {v6}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 661
    .end local v3    # "h":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;
    .local v2, "h":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;
    :cond_63
    iget-object v3, v1, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;->next:Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;

    .line 662
    .local v3, "n":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;
    if-eq v1, v3, :cond_69

    move-object v4, v3

    goto :goto_6c

    :cond_69
    iget-object v4, v7, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->head:Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;

    move-object v2, v4

    :goto_6c
    move-object v1, v4

    .line 663
    .end local v3    # "n":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;
    .end local v5    # "isData":Z
    .end local v6    # "item":Ljava/lang/Object;
    goto :goto_14

    .line 665
    .end local v1    # "p":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;
    .end local v2    # "h":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;
    :cond_6e
    :goto_6e
    if-eqz v10, :cond_94

    .line 666
    if-nez v0, :cond_78

    .line 667
    new-instance v1, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;

    invoke-direct {v1, p1, p2}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;-><init>(Ljava/lang/Object;Z)V

    move-object v0, v1

    .line 669
    .end local v0    # "s":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;
    .local v11, "s":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;
    :cond_78
    move-object v11, v0

    invoke-direct {p0, v11, p2}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->tryAppend(Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;Z)Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;

    move-result-object v12

    .line 670
    .local v12, "pred":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;
    if-nez v12, :cond_82

    .line 671
    nop

    .line 633
    move-object v0, v11

    goto :goto_11

    .line 673
    :cond_82
    if-eq v10, v4, :cond_95

    .line 674
    const/4 v0, 0x3

    if-ne v10, v0, :cond_88

    goto :goto_89

    :cond_88
    const/4 v4, 0x0

    :goto_89
    move-object v0, p0

    move-object v1, v11

    move-object v2, v12

    move-object v3, p1

    move-wide/from16 v5, p4

    invoke-direct/range {v0 .. v6}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->awaitMatch(Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;Ljava/lang/Object;ZJ)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 677
    .end local v11    # "s":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;
    .end local v12    # "pred":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;
    .restart local v0    # "s":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;
    :cond_94
    move-object v11, v0

    .end local v0    # "s":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;
    .restart local v11    # "s":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;
    :cond_95
    return-object v8
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1096
    .local p0, "this":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    .line 1097
    const/4 v0, 0x1

    return v0
.end method

.method public drainTo(Ljava/util/Collection;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "-TE;>;)I"
        }
    .end annotation

    .line 1183
    .local p0, "this":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    if-eqz p1, :cond_19

    .line 1186
    if-eq p1, p0, :cond_13

    .line 1189
    const/4 v0, 0x0

    .line 1191
    .local v0, "n":I
    :goto_5
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    .local v2, "e":Ljava/lang/Object;, "TE;"
    if-eqz v1, :cond_12

    .line 1192
    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1193
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1195
    :cond_12
    return v0

    .line 1187
    .end local v0    # "n":I
    .end local v2    # "e":Ljava/lang/Object;, "TE;"
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1184
    :cond_19
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public drainTo(Ljava/util/Collection;I)I
    .registers 6
    .param p2, "maxElements"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "-TE;>;I)I"
        }
    .end annotation

    .line 1203
    .local p0, "this":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    if-eqz p1, :cond_1b

    .line 1206
    if-eq p1, p0, :cond_15

    .line 1209
    const/4 v0, 0x0

    .line 1211
    .local v0, "n":I
    :goto_5
    if-ge v0, p2, :cond_14

    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    .local v2, "e":Ljava/lang/Object;, "TE;"
    if-eqz v1, :cond_14

    .line 1212
    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1213
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1215
    .end local v2    # "e":Ljava/lang/Object;, "TE;"
    :cond_14
    return v0

    .line 1207
    .end local v0    # "n":I
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1204
    :cond_1b
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public getWaitingConsumerCount()I
    .registers 2

    .line 1277
    .local p0, "this":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue<TE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->countOfMode(Z)I

    move-result v0

    return v0
.end method

.method public hasWaitingConsumer()Z
    .registers 3

    .line 1256
    .local p0, "this":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue<TE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->firstOfMode(Z)Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;

    move-result-object v1

    if-eqz v1, :cond_9

    const/4 v0, 0x1

    nop

    :cond_9
    return v0
.end method

.method public isEmpty()Z
    .registers 4

    .line 1247
    .local p0, "this":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue<TE;>;"
    iget-object v0, p0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->head:Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;

    .local v0, "p":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;
    :goto_2
    const/4 v1, 0x1

    if-eqz v0, :cond_14

    .line 1248
    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;->isMatched()Z

    move-result v2

    if-nez v2, :cond_f

    .line 1249
    iget-boolean v2, v0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;->isData:Z

    xor-int/2addr v1, v2

    return v1

    .line 1247
    :cond_f
    invoke-virtual {p0, v0}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->succ(Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;)Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;

    move-result-object v0

    goto :goto_2

    .line 1252
    .end local v0    # "p":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;
    :cond_14
    return v1
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

    .line 1233
    .local p0, "this":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue<TE;>;"
    new-instance v0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Itr;

    invoke-direct {v0, p0}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Itr;-><init>(Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1082
    .local p0, "this":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    .line 1083
    const/4 v0, 0x1

    return v0
.end method

.method public offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .registers 11
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    .line 1069
    .local p0, "this":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    .line 1070
    const/4 v0, 0x1

    return v0
.end method

.method public peek()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1237
    .local p0, "this":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue<TE;>;"
    invoke-direct {p0}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->firstDataItem()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1175
    .local p0, "this":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue<TE;>;"
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 10
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1167
    .local p0, "this":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue<TE;>;"
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    move-result-object v0

    .line 1168
    .local v0, "e":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_1b

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_1b

    .line 1171
    :cond_15
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 1169
    :cond_1b
    :goto_1b
    return-object v0
.end method

.method public put(Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1056
    .local p0, "this":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    .line 1057
    return-void
.end method

.method public remainingCapacity()I
    .registers 2

    .line 1304
    .local p0, "this":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue<TE;>;"
    const v0, 0x7fffffff

    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 1293
    .local p0, "this":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue<TE;>;"
    invoke-direct {p0, p1}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->findAndRemove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .registers 2

    .line 1273
    .local p0, "this":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue<TE;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->countOfMode(Z)I

    move-result v0

    return v0
.end method

.method final succ(Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;)Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;
    .registers 4
    .param p1, "p"    # Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;

    .line 804
    .local p0, "this":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue<TE;>;"
    iget-object v0, p1, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;->next:Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;

    .line 805
    .local v0, "next":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;
    if-ne p1, v0, :cond_7

    iget-object v1, p0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->head:Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;

    goto :goto_8

    :cond_7
    move-object v1, v0

    :goto_8
    return-object v1
.end method

.method public take()Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1158
    .local p0, "this":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue<TE;>;"
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    move-result-object v0

    .line 1159
    .local v0, "e":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_d

    .line 1160
    return-object v0

    .line 1162
    :cond_d
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 1163
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1
.end method

.method public transfer(Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1126
    .local p0, "this":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v2, 0x1

    const/4 v3, 0x2

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_d

    .line 1130
    return-void

    .line 1127
    :cond_d
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 1128
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method public tryTransfer(Ljava/lang/Object;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1111
    .local p0, "this":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public tryTransfer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .registers 11
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1148
    .local p0, "this":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    const/4 v2, 0x1

    const/4 v3, 0x3

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_10

    .line 1149
    const/4 v0, 0x1

    return v0

    .line 1151
    :cond_10
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_18

    .line 1152
    const/4 v0, 0x0

    return v0

    .line 1154
    :cond_18
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method final unsplice(Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;)V
    .registers 7
    .param p1, "pred"    # Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;
    .param p2, "s"    # Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;

    .line 935
    .local p0, "this":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue<TE;>;"
    invoke-virtual {p2}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;->forgetContents()V

    .line 943
    if-eqz p1, :cond_62

    if-eq p1, p2, :cond_62

    iget-object v0, p1, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;->next:Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;

    if-ne v0, p2, :cond_62

    .line 944
    iget-object v0, p2, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;->next:Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;

    .line 945
    .local v0, "n":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;
    if-eqz v0, :cond_1d

    if-eq v0, p2, :cond_62

    invoke-virtual {p1, p2, v0}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;->casNext(Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;)Z

    move-result v1

    if-eqz v1, :cond_62

    invoke-virtual {p1}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;->isMatched()Z

    move-result v1

    if-eqz v1, :cond_62

    .line 948
    :cond_1d
    :goto_1d
    iget-object v1, p0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->head:Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;

    .line 949
    .local v1, "h":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;
    if-eq v1, p1, :cond_61

    if-eq v1, p2, :cond_61

    if-nez v1, :cond_26

    goto :goto_61

    .line 952
    :cond_26
    invoke-virtual {v1}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;->isMatched()Z

    move-result v2

    if-nez v2, :cond_50

    .line 953
    nop

    .line 963
    .end local v1    # "h":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;
    iget-object v1, p1, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;->next:Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;

    if-eq v1, p1, :cond_62

    iget-object v1, p2, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;->next:Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;

    if-eq v1, p2, :cond_62

    .line 965
    :goto_35
    iget v1, p0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->sweepVotes:I

    .line 966
    .local v1, "v":I
    const/16 v2, 0x20

    if-ge v1, v2, :cond_44

    .line 967
    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v1, v2}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->casSweepVotes(II)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 968
    goto :goto_62

    .line 971
    :cond_44
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->casSweepVotes(II)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 972
    invoke-direct {p0}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->sweep()V

    .line 973
    goto :goto_62

    .line 975
    .end local v1    # "v":I
    :cond_4f
    goto :goto_35

    .line 955
    .local v1, "h":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;
    :cond_50
    iget-object v2, v1, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;->next:Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;

    .line 956
    .local v2, "hn":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;
    if-nez v2, :cond_55

    .line 957
    return-void

    .line 959
    :cond_55
    if-eq v2, v1, :cond_60

    invoke-direct {p0, v1, v2}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->casHead(Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;)Z

    move-result v3

    if-eqz v3, :cond_60

    .line 960
    invoke-virtual {v1}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;->forgetNext()V

    .line 962
    .end local v1    # "h":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;
    .end local v2    # "hn":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;
    :cond_60
    goto :goto_1d

    .line 950
    .restart local v1    # "h":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;
    :cond_61
    :goto_61
    return-void

    .line 979
    .end local v0    # "n":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;
    .end local v1    # "h":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;
    :cond_62
    :goto_62
    return-void
.end method
