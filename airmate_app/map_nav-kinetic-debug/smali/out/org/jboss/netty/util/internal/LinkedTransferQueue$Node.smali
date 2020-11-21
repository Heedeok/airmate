.class final Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
.super Ljava/lang/Object;
.source "LinkedTransferQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/util/internal/LinkedTransferQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Node"
.end annotation


# static fields
.field private static final UNSAFE:Lsun/misc/Unsafe;

.field private static final itemOffset:J

.field private static final nextOffset:J

.field private static final waiterOffset:J


# instance fields
.field final isData:Z

.field volatile item:Ljava/lang/Object;

.field volatile next:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

.field volatile waiter:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 538
    :try_start_0
    invoke-static {}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->UNSAFE:Lsun/misc/Unsafe;

    .line 539
    const-class v0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    .line 540
    .local v0, "k":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v1, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->UNSAFE:Lsun/misc/Unsafe;

    const-string v2, "item"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->itemOffset:J

    .line 542
    sget-object v1, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->UNSAFE:Lsun/misc/Unsafe;

    const-string v2, "next"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->nextOffset:J

    .line 544
    sget-object v1, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->UNSAFE:Lsun/misc/Unsafe;

    const-string v2, "waiter"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->waiterOffset:J
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_32} :catch_34

    .line 548
    .end local v0    # "k":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 549
    return-void

    .line 546
    :catch_34
    move-exception v0

    .line 547
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor <init>(Ljava/lang/Object;Z)V
    .registers 6
    .param p1, "item"    # Ljava/lang/Object;
    .param p2, "isData"    # Z

    .line 464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 465
    sget-object v0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->itemOffset:J

    invoke-virtual {v0, p0, v1, v2, p1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 466
    iput-boolean p2, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->isData:Z

    .line 467
    return-void
.end method


# virtual methods
.method final cannotPrecede(Z)Z
    .registers 7
    .param p1, "haveData"    # Z

    .line 513
    iget-boolean v0, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->isData:Z

    .line 515
    .local v0, "d":Z
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, p1, :cond_13

    iget-object v3, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

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

.method final casItem(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 9
    .param p1, "cmp"    # Ljava/lang/Object;
    .param p2, "val"    # Ljava/lang/Object;

    .line 457
    sget-object v0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->itemOffset:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method final casNext(Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;)Z
    .registers 9
    .param p1, "cmp"    # Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    .param p2, "val"    # Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    .line 452
    sget-object v0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->nextOffset:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method final forgetContents()V
    .registers 5

    .line 487
    sget-object v0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->itemOffset:J

    invoke-virtual {v0, p0, v1, v2, p0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 488
    sget-object v0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->waiterOffset:J

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v1, v2, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 489
    return-void
.end method

.method final forgetNext()V
    .registers 4

    .line 474
    sget-object v0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->nextOffset:J

    invoke-virtual {v0, p0, v1, v2, p0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 475
    return-void
.end method

.method final isMatched()Z
    .registers 6

    .line 496
    iget-object v0, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    .line 497
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
    iget-boolean v4, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->isData:Z

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

.method final isUnmatchedRequest()Z
    .registers 2

    .line 504
    iget-boolean v0, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->isData:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method final tryMatchData()Z
    .registers 3

    .line 523
    iget-object v0, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    .line 524
    .local v0, "x":Ljava/lang/Object;
    if-eqz v0, :cond_14

    if-eq v0, p0, :cond_14

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->casItem(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 525
    iget-object v1, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->waiter:Ljava/lang/Thread;

    invoke-static {v1}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 526
    const/4 v1, 0x1

    return v1

    .line 528
    :cond_14
    const/4 v1, 0x0

    return v1
.end method
