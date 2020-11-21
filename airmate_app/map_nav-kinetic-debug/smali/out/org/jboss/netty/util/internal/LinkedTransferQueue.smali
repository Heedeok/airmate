.class public Lorg/jboss/netty/util/internal/LinkedTransferQueue;
.super Ljava/util/AbstractQueue;
.source "LinkedTransferQueue.java"

# interfaces
.implements Ljava/util/concurrent/BlockingQueue;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/util/internal/LinkedTransferQueue$Itr;,
        Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
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

.field private static final UNSAFE:Lsun/misc/Unsafe;

.field private static final headOffset:J

.field private static final serialVersionUID:J = -0x2cbacc91e0a3c166L

.field private static final sweepVotesOffset:J

.field private static final tailOffset:J


# instance fields
.field volatile transient head:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

.field private volatile transient sweepVotes:I

.field private volatile transient tail:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 407
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
    sput-boolean v1, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->MP:Z

    .line 1403
    :try_start_f
    invoke-static {}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->UNSAFE:Lsun/misc/Unsafe;

    .line 1404
    const-class v0, Lorg/jboss/netty/util/internal/LinkedTransferQueue;

    .line 1405
    .local v0, "k":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v1, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->UNSAFE:Lsun/misc/Unsafe;

    const-string v2, "head"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->headOffset:J

    .line 1407
    sget-object v1, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->UNSAFE:Lsun/misc/Unsafe;

    const-string v2, "tail"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->tailOffset:J

    .line 1409
    sget-object v1, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->UNSAFE:Lsun/misc/Unsafe;

    const-string v2, "sweepVotes"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->sweepVotesOffset:J
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_41} :catch_43

    .line 1413
    .end local v0    # "k":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 1414
    return-void

    .line 1411
    :catch_43
    move-exception v0

    .line 1412
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .registers 1

    .line 1058
    .local p0, "this":Lorg/jboss/netty/util/internal/LinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LinkedTransferQueue<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 1059
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

    .line 1071
    .local p0, "this":Lorg/jboss/netty/util/internal/LinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LinkedTransferQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;-><init>()V

    .line 1072
    invoke-virtual {p0, p1}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->addAll(Ljava/util/Collection;)Z

    .line 1073
    return-void
.end method

.method private awaitMatch(Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;Ljava/lang/Object;ZJ)Ljava/lang/Object;
    .registers 26
    .param p1, "s"    # Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    .param p2, "pred"    # Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    .param p4, "timed"    # Z
    .param p5, "nanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;",
            "Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;",
            "TE;ZJ)TE;"
        }
    .end annotation

    .line 704
    .local p0, "this":Lorg/jboss/netty/util/internal/LinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LinkedTransferQueue<TE;>;"
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

    .line 705
    .local v5, "lastTime":J
    :goto_10
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    .line 706
    .local v7, "w":Ljava/lang/Thread;
    const/4 v8, -0x1

    .line 707
    .local v8, "spins":I
    const/4 v9, 0x0

    move-wide v10, v5

    move-wide/from16 v5, p5

    .line 710
    .end local p5    # "nanos":J
    .local v5, "nanos":J
    .local v9, "randomYields":Lorg/jboss/netty/util/internal/ThreadLocalRandom;
    .local v10, "lastTime":J
    :goto_19
    iget-object v12, v0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    .line 711
    .local v12, "item":Ljava/lang/Object;
    if-eq v12, v2, :cond_25

    .line 713
    invoke-virtual/range {p1 .. p1}, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->forgetContents()V

    .line 714
    invoke-static {v12}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 716
    :cond_25
    invoke-virtual {v7}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v13

    if-nez v13, :cond_35

    if-eqz p4, :cond_32

    cmp-long v13, v5, v3

    if-gtz v13, :cond_32

    goto :goto_35

    .line 722
    :cond_32
    move-object/from16 v13, p0

    goto :goto_41

    .line 716
    :cond_35
    :goto_35
    invoke-virtual {v0, v2, v0}, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->casItem(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_32

    .line 718
    move-object/from16 v13, p0

    invoke-virtual {v13, v1, v0}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->unsplice(Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;)V

    .line 719
    return-object v2

    .line 722
    :goto_41
    if-gez v8, :cond_51

    .line 723
    iget-boolean v14, v0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->isData:Z

    invoke-static {v1, v14}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->spinsFor(Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;Z)I

    move-result v14

    move v8, v14

    if-lez v14, :cond_80

    .line 724
    invoke-static {}, Lorg/jboss/netty/util/internal/ThreadLocalRandom;->current()Lorg/jboss/netty/util/internal/ThreadLocalRandom;

    move-result-object v9

    goto :goto_80

    .line 727
    :cond_51
    if-lez v8, :cond_61

    .line 728
    add-int/lit8 v8, v8, -0x1

    .line 729
    const/16 v14, 0x40

    invoke-virtual {v9, v14}, Lorg/jboss/netty/util/internal/ThreadLocalRandom;->nextInt(I)I

    move-result v14

    if-nez v14, :cond_80

    .line 731
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_80

    .line 734
    :cond_61
    iget-object v14, v0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->waiter:Ljava/lang/Thread;

    if-nez v14, :cond_68

    .line 735
    iput-object v7, v0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->waiter:Ljava/lang/Thread;

    goto :goto_80

    .line 737
    :cond_68
    if-eqz p4, :cond_7d

    .line 738
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    .line 739
    .local v14, "now":J
    sub-long v16, v14, v10

    sub-long v16, v5, v16

    move-wide/from16 v5, v16

    cmp-long v18, v16, v3

    if-lez v18, :cond_7b

    .line 743
    invoke-static {v5, v6}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    .line 746
    :cond_7b
    move-wide v10, v14

    .line 747
    .end local v14    # "now":J
    goto :goto_80

    .line 752
    :cond_7d
    invoke-static {}, Ljava/util/concurrent/locks/LockSupport;->park()V

    .line 755
    .end local v12    # "item":Ljava/lang/Object;
    :cond_80
    :goto_80
    goto :goto_19
.end method

.method private casHead(Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;)Z
    .registers 9
    .param p1, "cmp"    # Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    .param p2, "val"    # Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    .line 567
    .local p0, "this":Lorg/jboss/netty/util/internal/LinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LinkedTransferQueue<TE;>;"
    sget-object v0, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->headOffset:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private casSweepVotes(II)Z
    .registers 9
    .param p1, "cmp"    # I
    .param p2, "val"    # I

    .line 571
    .local p0, "this":Lorg/jboss/netty/util/internal/LinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LinkedTransferQueue<TE;>;"
    sget-object v0, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->sweepVotesOffset:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    return v0
.end method

.method private casTail(Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;)Z
    .registers 9
    .param p1, "cmp"    # Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    .param p2, "val"    # Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    .line 563
    .local p0, "this":Lorg/jboss/netty/util/internal/LinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LinkedTransferQueue<TE;>;"
    sget-object v0, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->tailOffset:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
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

    .line 585
    return-object p0
.end method

.method private countOfMode(Z)I
    .registers 5
    .param p1, "data"    # Z

    .line 826
    .local p0, "this":Lorg/jboss/netty/util/internal/LinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LinkedTransferQueue<TE;>;"
    const/4 v0, 0x0

    .line 827
    .local v0, "count":I
    iget-object v1, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->head:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    .local v1, "p":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    :goto_3
    if-eqz v1, :cond_23

    .line 828
    invoke-virtual {v1}, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->isMatched()Z

    move-result v2

    if-nez v2, :cond_19

    .line 829
    iget-boolean v2, v1, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->isData:Z

    if-eq v2, p1, :cond_11

    .line 830
    const/4 v2, 0x0

    return v2

    .line 832
    :cond_11
    add-int/lit8 v0, v0, 0x1

    const v2, 0x7fffffff

    if-ne v0, v2, :cond_19

    .line 833
    goto :goto_23

    .line 836
    :cond_19
    iget-object v2, v1, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->next:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    .line 837
    .local v2, "n":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    if-eq v2, v1, :cond_1f

    .line 838
    move-object v1, v2

    goto :goto_22

    .line 840
    :cond_1f
    const/4 v0, 0x0

    .line 841
    iget-object v1, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->head:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    .line 843
    .end local v2    # "n":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    :goto_22
    goto :goto_3

    .line 844
    .end local v1    # "p":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    :cond_23
    :goto_23
    return v0
.end method

.method private findAndRemove(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "e"    # Ljava/lang/Object;

    .line 1031
    .local p0, "this":Lorg/jboss/netty/util/internal/LinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LinkedTransferQueue<TE;>;"
    if-eqz p1, :cond_2f

    .line 1032
    const/4 v0, 0x0

    .local v0, "pred":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    iget-object v1, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->head:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    .local v1, "p":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    :goto_5
    if-eqz v1, :cond_2f

    .line 1033
    iget-object v2, v1, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    .line 1034
    .local v2, "item":Ljava/lang/Object;
    iget-boolean v3, v1, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->isData:Z

    if-eqz v3, :cond_22

    .line 1035
    if-eqz v2, :cond_25

    if-eq v2, v1, :cond_25

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-virtual {v1}, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->tryMatchData()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 1037
    invoke-virtual {p0, v0, v1}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->unsplice(Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;)V

    .line 1038
    const/4 v3, 0x1

    return v3

    .line 1041
    :cond_22
    if-nez v2, :cond_25

    .line 1042
    goto :goto_2f

    .line 1044
    :cond_25
    move-object v0, v1

    .line 1045
    iget-object v3, v1, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->next:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    move-object v1, v3

    if-ne v3, v0, :cond_2e

    .line 1046
    const/4 v0, 0x0

    .line 1047
    iget-object v1, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->head:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    .line 1049
    .end local v2    # "item":Ljava/lang/Object;
    :cond_2e
    goto :goto_5

    .line 1051
    .end local v0    # "pred":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    .end local v1    # "p":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
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

    .line 807
    .local p0, "this":Lorg/jboss/netty/util/internal/LinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LinkedTransferQueue<TE;>;"
    iget-object v0, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->head:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    .local v0, "p":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    :goto_2
    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    .line 808
    iget-object v2, v0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    .line 809
    .local v2, "item":Ljava/lang/Object;
    iget-boolean v3, v0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->isData:Z

    if-eqz v3, :cond_14

    .line 810
    if-eqz v2, :cond_17

    if-eq v2, v0, :cond_17

    .line 811
    invoke-static {v2}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 814
    :cond_14
    if-nez v2, :cond_17

    .line 815
    return-object v1

    .line 807
    .end local v2    # "item":Ljava/lang/Object;
    :cond_17
    invoke-virtual {p0, v0}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->succ(Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;)Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    move-result-object v0

    goto :goto_2

    .line 818
    .end local v0    # "p":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    :cond_1c
    return-object v1
.end method

.method private firstOfMode(Z)Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    .registers 5
    .param p1, "isData"    # Z

    .line 794
    .local p0, "this":Lorg/jboss/netty/util/internal/LinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LinkedTransferQueue<TE;>;"
    iget-object v0, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->head:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    .local v0, "p":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    :goto_2
    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 795
    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->isMatched()Z

    move-result v2

    if-nez v2, :cond_12

    .line 796
    iget-boolean v2, v0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->isData:Z

    if-ne v2, p1, :cond_11

    move-object v1, v0

    nop

    :cond_11
    return-object v1

    .line 794
    :cond_12
    invoke-virtual {p0, v0}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->succ(Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;)Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    move-result-object v0

    goto :goto_2

    .line 799
    .end local v0    # "p":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    :cond_17
    return-object v1
.end method

.method static getUnsafe()Lsun/misc/Unsafe;
    .registers 5

    .line 1425
    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 1426
    :catch_5
    move-exception v0

    .line 1428
    .local v0, "se":Ljava/lang/SecurityException;
    :try_start_6
    new-instance v1, Lorg/jboss/netty/util/internal/LinkedTransferQueue$1;

    invoke-direct {v1}, Lorg/jboss/netty/util/internal/LinkedTransferQueue$1;-><init>()V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/misc/Unsafe;
    :try_end_11
    .catch Ljava/security/PrivilegedActionException; {:try_start_6 .. :try_end_11} :catch_12

    return-object v1

    .line 1437
    :catch_12
    move-exception v1

    .line 1438
    .local v1, "e":Ljava/security/PrivilegedActionException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    const-string v4, "Could not initialize intrinsics"

    invoke-direct {v2, v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
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

    .line 1384
    .local p0, "this":Lorg/jboss/netty/util/internal/LinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LinkedTransferQueue<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1386
    :goto_3
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 1387
    .local v0, "item":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_b

    .line 1388
    nop

    .line 1393
    .end local v0    # "item":Ljava/lang/Object;, "TE;"
    return-void

    .line 1390
    .restart local v0    # "item":Ljava/lang/Object;, "TE;"
    :cond_b
    invoke-virtual {p0, v0}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->offer(Ljava/lang/Object;)Z

    .line 1392
    .end local v0    # "item":Ljava/lang/Object;, "TE;"
    goto :goto_3
.end method

.method private static spinsFor(Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;Z)I
    .registers 3
    .param p0, "pred"    # Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    .param p1, "haveData"    # Z

    .line 763
    sget-boolean v0, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->MP:Z

    if-eqz v0, :cond_1d

    if-eqz p0, :cond_1d

    .line 764
    iget-boolean v0, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->isData:Z

    if-eq v0, p1, :cond_d

    .line 765
    const/16 v0, 0xc0

    return v0

    .line 767
    :cond_d
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->isMatched()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 768
    const/16 v0, 0x80

    return v0

    .line 770
    :cond_16
    iget-object v0, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->waiter:Ljava/lang/Thread;

    if-nez v0, :cond_1d

    .line 771
    const/16 v0, 0x40

    return v0

    .line 774
    :cond_1d
    const/4 v0, 0x0

    return v0
.end method

.method private sweep()V
    .registers 5

    .line 1012
    .local p0, "this":Lorg/jboss/netty/util/internal/LinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LinkedTransferQueue<TE;>;"
    iget-object v0, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->head:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    .local v0, "p":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    :goto_2
    if-eqz v0, :cond_20

    iget-object v1, v0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->next:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    move-object v2, v1

    .local v2, "s":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    if-eqz v1, :cond_20

    .line 1013
    invoke-virtual {v2}, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->isMatched()Z

    move-result v1

    if-nez v1, :cond_11

    .line 1015
    move-object v0, v2

    goto :goto_2

    .line 1016
    :cond_11
    iget-object v1, v2, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->next:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    move-object v3, v1

    .local v3, "n":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    if-nez v1, :cond_17

    .line 1017
    goto :goto_20

    .line 1018
    :cond_17
    if-ne v2, v3, :cond_1c

    .line 1020
    iget-object v0, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->head:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    goto :goto_2

    .line 1022
    :cond_1c
    invoke-virtual {v0, v2, v3}, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->casNext(Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;)Z

    goto :goto_2

    .line 1025
    .end local v0    # "p":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    .end local v2    # "s":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    .end local v3    # "n":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    :cond_20
    :goto_20
    return-void
.end method

.method private tryAppend(Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;Z)Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    .registers 9
    .param p1, "s"    # Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    .param p2, "haveData"    # Z

    .line 662
    .local p0, "this":Lorg/jboss/netty/util/internal/LinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LinkedTransferQueue<TE;>;"
    iget-object v0, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->tail:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    move-object v1, v0

    .line 664
    .local v0, "p":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    .local v1, "t":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    :goto_3
    const/4 v2, 0x0

    if-nez v0, :cond_12

    iget-object v3, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->head:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    move-object v0, v3

    if-nez v3, :cond_12

    .line 665
    invoke-direct {p0, v2, p1}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->casHead(Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 667
    return-object p1

    .line 670
    :cond_12
    invoke-virtual {v0, p2}, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->cannotPrecede(Z)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 671
    return-object v2

    .line 672
    :cond_19
    iget-object v3, v0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->next:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    move-object v4, v3

    .local v4, "n":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    if-eqz v3, :cond_2e

    .line 673
    if-eq v0, v1, :cond_28

    iget-object v3, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->tail:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    move-object v5, v3

    .local v5, "u":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    if-eq v1, v3, :cond_28

    move-object v1, v5

    move-object v2, v5

    goto :goto_2c

    .end local v5    # "u":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    :cond_28
    if-eq v0, v4, :cond_2c

    move-object v2, v4

    nop

    :cond_2c
    :goto_2c
    move-object v0, v2

    goto :goto_36

    .line 675
    :cond_2e
    invoke-virtual {v0, v2, p1}, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->casNext(Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;)Z

    move-result v2

    if-nez v2, :cond_37

    .line 676
    iget-object v0, v0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->next:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    .line 688
    .end local v4    # "n":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    :cond_36
    :goto_36
    goto :goto_3

    .line 678
    .restart local v4    # "n":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    :cond_37
    if-eq v0, v1, :cond_55

    .line 682
    :goto_39
    iget-object v2, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->tail:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    if-ne v2, v1, :cond_43

    invoke-direct {p0, v1, p1}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->casTail(Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;)Z

    move-result v2

    if-nez v2, :cond_55

    :cond_43
    iget-object v2, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->tail:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    move-object v1, v2

    if-eqz v2, :cond_55

    iget-object v2, v1, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->next:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    move-object p1, v2

    if-eqz v2, :cond_55

    iget-object v2, p1, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->next:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    move-object p1, v2

    if-eqz v2, :cond_55

    if-eq p1, v1, :cond_55

    .line 683
    goto :goto_39

    .line 686
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

    .line 1368
    .local p0, "this":Lorg/jboss/netty/util/internal/LinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LinkedTransferQueue<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1369
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1370
    .local v1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1371
    .end local v1    # "e":Ljava/lang/Object;, "TE;"
    goto :goto_7

    .line 1373
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_15
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1374
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

    .line 599
    .local p0, "this":Lorg/jboss/netty/util/internal/LinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LinkedTransferQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    move-object v7, p0

    move-object v8, p1

    move v9, p2

    move/from16 v10, p3

    if-eqz v9, :cond_10

    if-eqz v8, :cond_a

    goto :goto_10

    .line 600
    :cond_a
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 602
    :cond_10
    :goto_10
    const/4 v0, 0x0

    .line 607
    .local v0, "s":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    :goto_11
    iget-object v1, v7, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->head:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    move-object v2, v1

    .local v1, "p":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    .local v2, "h":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    :goto_14
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_6e

    .line 608
    iget-boolean v5, v1, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->isData:Z

    .line 609
    .local v5, "isData":Z
    iget-object v6, v1, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    .line 610
    .local v6, "item":Ljava/lang/Object;
    if-eq v6, v1, :cond_63

    if-eqz v6, :cond_22

    const/4 v11, 0x1

    goto :goto_23

    :cond_22
    const/4 v11, 0x0

    :goto_23
    if-ne v11, v5, :cond_63

    .line 611
    if-ne v5, v9, :cond_28

    .line 612
    goto :goto_6e

    .line 614
    :cond_28
    invoke-virtual {v1, v6, p1}, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->casItem(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_63

    .line 615
    move-object v3, v2

    move-object v2, v1

    .local v2, "q":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    .local v3, "h":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    :goto_30
    if-eq v2, v3, :cond_59

    .line 616
    iget-object v4, v2, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->next:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    .line 617
    .local v4, "n":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    iget-object v11, v7, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->head:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    if-ne v11, v3, :cond_47

    if-nez v4, :cond_3c

    move-object v11, v2

    goto :goto_3d

    :cond_3c
    move-object v11, v4

    :goto_3d
    invoke-direct {p0, v3, v11}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->casHead(Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;)Z

    move-result v11

    if-eqz v11, :cond_47

    .line 618
    invoke-virtual {v3}, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->forgetNext()V

    .line 619
    goto :goto_59

    .line 621
    :cond_47
    iget-object v11, v7, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->head:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    move-object v3, v11

    if-eqz v11, :cond_59

    iget-object v11, v3, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->next:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    move-object v2, v11

    if-eqz v11, :cond_59

    invoke-virtual {v2}, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->isMatched()Z

    move-result v11

    if-nez v11, :cond_58

    .line 624
    goto :goto_59

    .line 626
    .end local v4    # "n":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    :cond_58
    goto :goto_30

    .line 627
    .end local v2    # "q":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    :cond_59
    :goto_59
    iget-object v2, v1, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->waiter:Ljava/lang/Thread;

    invoke-static {v2}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 628
    invoke-static {v6}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 631
    .end local v3    # "h":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    .local v2, "h":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    :cond_63
    iget-object v3, v1, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->next:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    .line 632
    .local v3, "n":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    if-eq v1, v3, :cond_69

    move-object v4, v3

    goto :goto_6c

    :cond_69
    iget-object v4, v7, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->head:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    move-object v2, v4

    :goto_6c
    move-object v1, v4

    .line 633
    .end local v3    # "n":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    .end local v5    # "isData":Z
    .end local v6    # "item":Ljava/lang/Object;
    goto :goto_14

    .line 635
    .end local v1    # "p":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    .end local v2    # "h":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    :cond_6e
    :goto_6e
    if-eqz v10, :cond_94

    .line 636
    if-nez v0, :cond_78

    .line 637
    new-instance v1, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    invoke-direct {v1, p1, p2}, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;-><init>(Ljava/lang/Object;Z)V

    move-object v0, v1

    .line 639
    .end local v0    # "s":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    .local v11, "s":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    :cond_78
    move-object v11, v0

    invoke-direct {p0, v11, p2}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->tryAppend(Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;Z)Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    move-result-object v12

    .line 640
    .local v12, "pred":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    if-nez v12, :cond_82

    .line 642
    nop

    .line 602
    move-object v0, v11

    goto :goto_11

    .line 644
    :cond_82
    if-eq v10, v4, :cond_95

    .line 645
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

    invoke-direct/range {v0 .. v6}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->awaitMatch(Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;Ljava/lang/Object;ZJ)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 648
    .end local v11    # "s":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    .end local v12    # "pred":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    .restart local v0    # "s":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    :cond_94
    move-object v11, v0

    .end local v0    # "s":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    .restart local v11    # "s":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
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

    .line 1122
    .local p0, "this":Lorg/jboss/netty/util/internal/LinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LinkedTransferQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    .line 1123
    const/4 v0, 0x1

    return v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 1330
    .local p0, "this":Lorg/jboss/netty/util/internal/LinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LinkedTransferQueue<TE;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1331
    return v0

    .line 1333
    :cond_4
    iget-object v1, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->head:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    .local v1, "p":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    :goto_6
    if-eqz v1, :cond_22

    .line 1334
    iget-object v2, v1, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    .line 1335
    .local v2, "item":Ljava/lang/Object;
    iget-boolean v3, v1, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->isData:Z

    if-eqz v3, :cond_1a

    .line 1336
    if-eqz v2, :cond_1d

    if-eq v2, v1, :cond_1d

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 1337
    const/4 v0, 0x1

    return v0

    .line 1340
    :cond_1a
    if-nez v2, :cond_1d

    .line 1341
    goto :goto_22

    .line 1333
    .end local v2    # "item":Ljava/lang/Object;
    :cond_1d
    invoke-virtual {p0, v1}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->succ(Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;)Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    move-result-object v1

    goto :goto_6

    .line 1344
    .end local v1    # "p":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    :cond_22
    :goto_22
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

    .line 1209
    .local p0, "this":Lorg/jboss/netty/util/internal/LinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LinkedTransferQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    if-eqz p1, :cond_19

    .line 1212
    if-eq p1, p0, :cond_13

    .line 1215
    const/4 v0, 0x0

    .line 1216
    .local v0, "n":I
    :goto_5
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    .local v2, "e":Ljava/lang/Object;, "TE;"
    if-eqz v1, :cond_12

    .line 1217
    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1218
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1220
    .end local v2    # "e":Ljava/lang/Object;, "TE;"
    :cond_12
    return v0

    .line 1213
    .end local v0    # "n":I
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1210
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

    .line 1228
    .local p0, "this":Lorg/jboss/netty/util/internal/LinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LinkedTransferQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    if-eqz p1, :cond_1b

    .line 1231
    if-eq p1, p0, :cond_15

    .line 1234
    const/4 v0, 0x0

    .line 1235
    .local v0, "n":I
    :goto_5
    if-ge v0, p2, :cond_14

    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    .local v2, "e":Ljava/lang/Object;, "TE;"
    if-eqz v1, :cond_14

    .line 1236
    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1237
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1239
    .end local v2    # "e":Ljava/lang/Object;, "TE;"
    :cond_14
    return v0

    .line 1232
    .end local v0    # "n":I
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1229
    :cond_1b
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public getWaitingConsumerCount()I
    .registers 2

    .line 1301
    .local p0, "this":Lorg/jboss/netty/util/internal/LinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LinkedTransferQueue<TE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->countOfMode(Z)I

    move-result v0

    return v0
.end method

.method public hasWaitingConsumer()Z
    .registers 3

    .line 1280
    .local p0, "this":Lorg/jboss/netty/util/internal/LinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LinkedTransferQueue<TE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->firstOfMode(Z)Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    move-result-object v1

    if-eqz v1, :cond_9

    const/4 v0, 0x1

    nop

    :cond_9
    return v0
.end method

.method public isEmpty()Z
    .registers 4

    .line 1271
    .local p0, "this":Lorg/jboss/netty/util/internal/LinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LinkedTransferQueue<TE;>;"
    iget-object v0, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->head:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    .local v0, "p":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    :goto_2
    const/4 v1, 0x1

    if-eqz v0, :cond_14

    .line 1272
    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->isMatched()Z

    move-result v2

    if-nez v2, :cond_f

    .line 1273
    iget-boolean v2, v0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->isData:Z

    xor-int/2addr v1, v2

    return v1

    .line 1271
    :cond_f
    invoke-virtual {p0, v0}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->succ(Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;)Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    move-result-object v0

    goto :goto_2

    .line 1276
    .end local v0    # "p":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
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

    .line 1257
    .local p0, "this":Lorg/jboss/netty/util/internal/LinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LinkedTransferQueue<TE;>;"
    new-instance v0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Itr;

    invoke-direct {v0, p0}, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Itr;-><init>(Lorg/jboss/netty/util/internal/LinkedTransferQueue;)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1108
    .local p0, "this":Lorg/jboss/netty/util/internal/LinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LinkedTransferQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    .line 1109
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

    .line 1096
    .local p0, "this":Lorg/jboss/netty/util/internal/LinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LinkedTransferQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    .line 1097
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

    .line 1261
    .local p0, "this":Lorg/jboss/netty/util/internal/LinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LinkedTransferQueue<TE;>;"
    invoke-direct {p0}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->firstDataItem()Ljava/lang/Object;

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

    .line 1201
    .local p0, "this":Lorg/jboss/netty/util/internal/LinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LinkedTransferQueue<TE;>;"
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

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

    .line 1193
    .local p0, "this":Lorg/jboss/netty/util/internal/LinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LinkedTransferQueue<TE;>;"
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    move-result-object v0

    .line 1194
    .local v0, "e":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_1b

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_1b

    .line 1197
    :cond_15
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 1195
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

    .line 1082
    .local p0, "this":Lorg/jboss/netty/util/internal/LinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LinkedTransferQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    .line 1083
    return-void
.end method

.method public remainingCapacity()I
    .registers 2

    .line 1356
    .local p0, "this":Lorg/jboss/netty/util/internal/LinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LinkedTransferQueue<TE;>;"
    const v0, 0x7fffffff

    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 1317
    .local p0, "this":Lorg/jboss/netty/util/internal/LinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LinkedTransferQueue<TE;>;"
    invoke-direct {p0, p1}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->findAndRemove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .registers 2

    .line 1297
    .local p0, "this":Lorg/jboss/netty/util/internal/LinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LinkedTransferQueue<TE;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->countOfMode(Z)I

    move-result v0

    return v0
.end method

.method final succ(Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;)Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    .registers 4
    .param p1, "p"    # Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    .line 785
    .local p0, "this":Lorg/jboss/netty/util/internal/LinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LinkedTransferQueue<TE;>;"
    iget-object v0, p1, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->next:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    .line 786
    .local v0, "next":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    if-ne p1, v0, :cond_7

    iget-object v1, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->head:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

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

    .line 1184
    .local p0, "this":Lorg/jboss/netty/util/internal/LinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LinkedTransferQueue<TE;>;"
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    move-result-object v0

    .line 1185
    .local v0, "e":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_d

    .line 1186
    return-object v0

    .line 1188
    :cond_d
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 1189
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

    .line 1152
    .local p0, "this":Lorg/jboss/netty/util/internal/LinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LinkedTransferQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v2, 0x1

    const/4 v3, 0x2

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_d

    .line 1156
    return-void

    .line 1153
    :cond_d
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 1154
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

    .line 1137
    .local p0, "this":Lorg/jboss/netty/util/internal/LinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LinkedTransferQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

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

    .line 1174
    .local p0, "this":Lorg/jboss/netty/util/internal/LinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LinkedTransferQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    const/4 v2, 0x1

    const/4 v3, 0x3

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_10

    .line 1175
    const/4 v0, 0x1

    return v0

    .line 1177
    :cond_10
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_18

    .line 1178
    const/4 v0, 0x0

    return v0

    .line 1180
    :cond_18
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method final unsplice(Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;)V
    .registers 7
    .param p1, "pred"    # Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    .param p2, "s"    # Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    .line 958
    .local p0, "this":Lorg/jboss/netty/util/internal/LinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LinkedTransferQueue<TE;>;"
    invoke-virtual {p2}, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->forgetContents()V

    .line 966
    if-eqz p1, :cond_62

    if-eq p1, p2, :cond_62

    iget-object v0, p1, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->next:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    if-ne v0, p2, :cond_62

    .line 967
    iget-object v0, p2, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->next:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    .line 968
    .local v0, "n":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    if-eqz v0, :cond_1d

    if-eq v0, p2, :cond_62

    invoke-virtual {p1, p2, v0}, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->casNext(Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;)Z

    move-result v1

    if-eqz v1, :cond_62

    invoke-virtual {p1}, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->isMatched()Z

    move-result v1

    if-eqz v1, :cond_62

    .line 971
    :cond_1d
    :goto_1d
    iget-object v1, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->head:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    .line 972
    .local v1, "h":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    if-eq v1, p1, :cond_61

    if-eq v1, p2, :cond_61

    if-nez v1, :cond_26

    goto :goto_61

    .line 976
    :cond_26
    invoke-virtual {v1}, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->isMatched()Z

    move-result v2

    if-nez v2, :cond_50

    .line 977
    nop

    .line 989
    .end local v1    # "h":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    iget-object v1, p1, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->next:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    if-eq v1, p1, :cond_62

    iget-object v1, p2, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->next:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    if-eq v1, p2, :cond_62

    .line 991
    :goto_35
    iget v1, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->sweepVotes:I

    .line 992
    .local v1, "v":I
    const/16 v2, 0x20

    if-ge v1, v2, :cond_44

    .line 993
    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v1, v2}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->casSweepVotes(II)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 994
    goto :goto_62

    .line 997
    :cond_44
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->casSweepVotes(II)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 998
    invoke-direct {p0}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->sweep()V

    .line 999
    goto :goto_62

    .line 1001
    .end local v1    # "v":I
    :cond_4f
    goto :goto_35

    .line 979
    .local v1, "h":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    :cond_50
    iget-object v2, v1, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->next:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    .line 980
    .local v2, "hn":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    if-nez v2, :cond_55

    .line 982
    return-void

    .line 984
    :cond_55
    if-eq v2, v1, :cond_60

    invoke-direct {p0, v1, v2}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->casHead(Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;)Z

    move-result v3

    if-eqz v3, :cond_60

    .line 986
    invoke-virtual {v1}, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->forgetNext()V

    .line 988
    .end local v1    # "h":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    .end local v2    # "hn":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    :cond_60
    goto :goto_1d

    .line 974
    .restart local v1    # "h":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    :cond_61
    :goto_61
    return-void

    .line 1005
    .end local v0    # "n":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    .end local v1    # "h":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    :cond_62
    :goto_62
    return-void
.end method
