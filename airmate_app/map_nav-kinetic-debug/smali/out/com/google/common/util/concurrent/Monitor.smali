.class public final Lcom/google/common/util/concurrent/Monitor;
.super Ljava/lang/Object;
.source "Monitor.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/Monitor$Guard;
    }
.end annotation


# instance fields
.field private final activeGuards:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/common/util/concurrent/Monitor$Guard;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private final fair:Z

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 276
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/Monitor;-><init>(Z)V

    .line 277
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3
    .param p1, "fair"    # Z

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->activeGuards:Ljava/util/ArrayList;

    .line 286
    iput-boolean p1, p0, Lcom/google/common/util/concurrent/Monitor;->fair:Z

    .line 287
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0, p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 288
    return-void
.end method

.method static synthetic access$000(Lcom/google/common/util/concurrent/Monitor;)Ljava/util/concurrent/locks/ReentrantLock;
    .registers 2
    .param p0, "x0"    # Lcom/google/common/util/concurrent/Monitor;

    .line 204
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method private decrementWaiters(Lcom/google/common/util/concurrent/Monitor$Guard;)V
    .registers 4
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation

    .line 813
    iget v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->waiterCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->waiterCount:I

    .line 814
    .local v0, "waiters":I
    if-nez v0, :cond_d

    .line 815
    iget-object v1, p0, Lcom/google/common/util/concurrent/Monitor;->activeGuards:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 817
    :cond_d
    return-void
.end method

.method private incrementWaiters(Lcom/google/common/util/concurrent/Monitor$Guard;)V
    .registers 4
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation

    .line 805
    iget v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->waiterCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->waiterCount:I

    .line 806
    .local v0, "waiters":I
    if-nez v0, :cond_d

    .line 807
    iget-object v1, p0, Lcom/google/common/util/concurrent/Monitor;->activeGuards:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 809
    :cond_d
    return-void
.end method

.method private signalConditionsOfSatisfiedGuards(Lcom/google/common/util/concurrent/Monitor$Guard;)V
    .registers 9
    .param p1, "interruptedGuard"    # Lcom/google/common/util/concurrent/Monitor$Guard;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation

    .line 779
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->activeGuards:Ljava/util/ArrayList;

    .line 780
    .local v0, "guards":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/common/util/concurrent/Monitor$Guard;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 782
    .local v1, "guardCount":I
    const/4 v2, 0x0

    const/4 v3, 0x0

    .local v3, "i":I
    :goto_8
    if-ge v3, v1, :cond_3e

    .line 783
    :try_start_a
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/common/util/concurrent/Monitor$Guard;

    .line 784
    .local v4, "guard":Lcom/google/common/util/concurrent/Monitor$Guard;
    if-ne v4, p1, :cond_18

    iget v5, v4, Lcom/google/common/util/concurrent/Monitor$Guard;->waiterCount:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_18

    .line 787
    goto :goto_24

    .line 789
    :cond_18
    invoke-virtual {v4}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v5

    if-eqz v5, :cond_24

    .line 790
    iget-object v5, v4, Lcom/google/common/util/concurrent/Monitor$Guard;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_23} :catch_27

    .line 791
    return-void

    .line 782
    .end local v4    # "guard":Lcom/google/common/util/concurrent/Monitor$Guard;
    :cond_24
    :goto_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 794
    .end local v3    # "i":I
    :catch_27
    move-exception v3

    .line 795
    .local v3, "throwable":Ljava/lang/Throwable;
    nop

    .local v2, "i":I
    :goto_29
    if-ge v2, v1, :cond_39

    .line 796
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/common/util/concurrent/Monitor$Guard;

    .line 797
    .restart local v4    # "guard":Lcom/google/common/util/concurrent/Monitor$Guard;
    iget-object v5, v4, Lcom/google/common/util/concurrent/Monitor$Guard;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 795
    .end local v4    # "guard":Lcom/google/common/util/concurrent/Monitor$Guard;
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 799
    .end local v2    # "i":I
    :cond_39
    invoke-static {v3}, Lcom/google/common/base/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 800
    .end local v3    # "throwable":Ljava/lang/Throwable;
    :cond_3e
    nop

    .line 801
    return-void
.end method

.method private waitInterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;Z)V
    .registers 7
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;
    .param p2, "signalBeforeWaiting"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation

    .line 822
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v0

    if-nez v0, :cond_37

    .line 823
    if-eqz p2, :cond_c

    .line 824
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/Monitor;->signalConditionsOfSatisfiedGuards(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    .line 826
    :cond_c
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->incrementWaiters(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    .line 828
    :try_start_f
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->condition:Ljava/util/concurrent/locks/Condition;
    :try_end_11
    .catchall {:try_start_f .. :try_end_11} :catchall_32

    .line 831
    .local v0, "condition":Ljava/util/concurrent/locks/Condition;
    :cond_11
    :try_start_11
    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_14} :catch_1f
    .catchall {:try_start_11 .. :try_end_14} :catchall_32

    .line 840
    nop

    .line 841
    :try_start_15
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v1
    :try_end_19
    .catchall {:try_start_15 .. :try_end_19} :catchall_32

    if-eqz v1, :cond_11

    .line 843
    .end local v0    # "condition":Ljava/util/concurrent/locks/Condition;
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->decrementWaiters(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    .line 844
    goto :goto_37

    .line 832
    .restart local v0    # "condition":Ljava/util/concurrent/locks/Condition;
    :catch_1f
    move-exception v1

    .line 834
    .local v1, "interrupt":Ljava/lang/InterruptedException;
    :try_start_20
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->signalConditionsOfSatisfiedGuards(Lcom/google/common/util/concurrent/Monitor$Guard;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_23} :catch_25
    .catchall {:try_start_20 .. :try_end_23} :catchall_32

    .line 838
    nop

    .line 839
    :try_start_24
    throw v1

    .line 835
    :catch_25
    move-exception v2

    .line 836
    .local v2, "throwable":Ljava/lang/Throwable;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 837
    invoke-static {v2}, Lcom/google/common/base/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
    :try_end_32
    .catchall {:try_start_24 .. :try_end_32} :catchall_32

    .line 843
    .end local v0    # "condition":Ljava/util/concurrent/locks/Condition;
    .end local v1    # "interrupt":Ljava/lang/InterruptedException;
    .end local v2    # "throwable":Ljava/lang/Throwable;
    :catchall_32
    move-exception v0

    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->decrementWaiters(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    throw v0

    .line 846
    :cond_37
    :goto_37
    return-void
.end method

.method private waitInterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;JZ)Z
    .registers 9
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;
    .param p2, "remainingNanos"    # J
    .param p4, "signalBeforeWaiting"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation

    .line 869
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v0

    if-nez v0, :cond_44

    .line 870
    if-eqz p4, :cond_c

    .line 871
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/Monitor;->signalConditionsOfSatisfiedGuards(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    .line 873
    :cond_c
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->incrementWaiters(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    .line 875
    :try_start_f
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->condition:Ljava/util/concurrent/locks/Condition;
    :try_end_11
    .catchall {:try_start_f .. :try_end_11} :catchall_3f

    .line 877
    .local v0, "condition":Ljava/util/concurrent/locks/Condition;
    :cond_11
    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-gtz v3, :cond_1c

    .line 878
    const/4 v1, 0x0

    .line 893
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->decrementWaiters(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    return v1

    .line 881
    :cond_1c
    :try_start_1c
    invoke-interface {v0, p2, p3}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v1
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_1c .. :try_end_20} :catch_2c
    .catchall {:try_start_1c .. :try_end_20} :catchall_3f

    move-wide p2, v1

    .line 890
    nop

    .line 891
    :try_start_22
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v1
    :try_end_26
    .catchall {:try_start_22 .. :try_end_26} :catchall_3f

    if-eqz v1, :cond_11

    .line 893
    .end local v0    # "condition":Ljava/util/concurrent/locks/Condition;
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->decrementWaiters(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    .line 894
    goto :goto_44

    .line 882
    .restart local v0    # "condition":Ljava/util/concurrent/locks/Condition;
    :catch_2c
    move-exception v1

    .line 884
    .local v1, "interrupt":Ljava/lang/InterruptedException;
    :try_start_2d
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->signalConditionsOfSatisfiedGuards(Lcom/google/common/util/concurrent/Monitor$Guard;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_30} :catch_32
    .catchall {:try_start_2d .. :try_end_30} :catchall_3f

    .line 888
    nop

    .line 889
    :try_start_31
    throw v1

    .line 885
    :catch_32
    move-exception v2

    .line 886
    .local v2, "throwable":Ljava/lang/Throwable;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 887
    invoke-static {v2}, Lcom/google/common/base/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
    :try_end_3f
    .catchall {:try_start_31 .. :try_end_3f} :catchall_3f

    .line 893
    .end local v0    # "condition":Ljava/util/concurrent/locks/Condition;
    .end local v1    # "interrupt":Ljava/lang/InterruptedException;
    .end local v2    # "throwable":Ljava/lang/Throwable;
    :catchall_3f
    move-exception v0

    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->decrementWaiters(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    throw v0

    .line 896
    :cond_44
    :goto_44
    const/4 v0, 0x1

    return v0
.end method

.method private waitUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;Z)V
    .registers 5
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;
    .param p2, "signalBeforeWaiting"    # Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation

    .line 850
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v0

    if-nez v0, :cond_23

    .line 851
    if-eqz p2, :cond_c

    .line 852
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/Monitor;->signalConditionsOfSatisfiedGuards(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    .line 854
    :cond_c
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->incrementWaiters(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    .line 856
    :try_start_f
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->condition:Ljava/util/concurrent/locks/Condition;

    .line 858
    .local v0, "condition":Ljava/util/concurrent/locks/Condition;
    :cond_11
    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->awaitUninterruptibly()V

    .line 859
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v1
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_1e

    if-eqz v1, :cond_11

    .line 861
    .end local v0    # "condition":Ljava/util/concurrent/locks/Condition;
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->decrementWaiters(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    .line 862
    goto :goto_23

    .line 861
    :catchall_1e
    move-exception v0

    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->decrementWaiters(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    throw v0

    .line 864
    :cond_23
    :goto_23
    return-void
.end method

.method private waitUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;JZ)Z
    .registers 16
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;
    .param p2, "timeoutNanos"    # J
    .param p4, "signalBeforeWaiting"    # Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation

    .line 902
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v0

    if-nez v0, :cond_71

    .line 903
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 904
    .local v0, "startNanos":J
    if-eqz p4, :cond_10

    .line 905
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/google/common/util/concurrent/Monitor;->signalConditionsOfSatisfiedGuards(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    .line 907
    :cond_10
    const/4 v2, 0x0

    move v3, v2

    .line 909
    .local v3, "interruptIgnored":Z
    :try_start_12
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->incrementWaiters(Lcom/google/common/util/concurrent/Monitor$Guard;)V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_66

    .line 911
    :try_start_15
    iget-object v4, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->condition:Ljava/util/concurrent/locks/Condition;
    :try_end_17
    .catchall {:try_start_15 .. :try_end_17} :catchall_61

    .line 912
    .local v4, "condition":Ljava/util/concurrent/locks/Condition;
    move-wide v5, p2

    .line 914
    .local v5, "remainingNanos":J
    :cond_18
    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-gtz v9, :cond_2c

    .line 915
    nop

    .line 931
    :try_start_1f
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->decrementWaiters(Lcom/google/common/util/concurrent/Monitor$Guard;)V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_66

    .line 934
    if-eqz v3, :cond_2b

    .line 935
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V

    :cond_2b
    return v2

    .line 918
    :cond_2c
    :try_start_2c
    invoke-interface {v4, v5, v6}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v7
    :try_end_30
    .catch Ljava/lang/InterruptedException; {:try_start_2c .. :try_end_30} :catch_32
    .catchall {:try_start_2c .. :try_end_30} :catchall_61

    move-wide v5, v7

    .line 928
    goto :goto_40

    .line 919
    :catch_32
    move-exception v7

    .line 921
    .local v7, "ignored":Ljava/lang/InterruptedException;
    :try_start_33
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->signalConditionsOfSatisfiedGuards(Lcom/google/common/util/concurrent/Monitor$Guard;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_36} :catch_54
    .catchall {:try_start_33 .. :try_end_36} :catchall_61

    .line 925
    nop

    .line 926
    const/4 v3, 0x1

    .line 927
    :try_start_38
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    const/4 v10, 0x0

    sub-long/2addr v8, v0

    sub-long v5, p2, v8

    .line 929
    .end local v7    # "ignored":Ljava/lang/InterruptedException;
    :goto_40
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v7
    :try_end_44
    .catchall {:try_start_38 .. :try_end_44} :catchall_61

    if-eqz v7, :cond_18

    .line 931
    .end local v4    # "condition":Ljava/util/concurrent/locks/Condition;
    .end local v5    # "remainingNanos":J
    :try_start_46
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->decrementWaiters(Lcom/google/common/util/concurrent/Monitor$Guard;)V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_66

    .line 932
    nop

    .line 934
    if-eqz v3, :cond_71

    .line 935
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_71

    .line 922
    .restart local v4    # "condition":Ljava/util/concurrent/locks/Condition;
    .restart local v5    # "remainingNanos":J
    .restart local v7    # "ignored":Ljava/lang/InterruptedException;
    :catch_54
    move-exception v2

    .line 923
    .local v2, "throwable":Ljava/lang/Throwable;
    :try_start_55
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->interrupt()V

    .line 924
    invoke-static {v2}, Lcom/google/common/base/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v8

    throw v8
    :try_end_61
    .catchall {:try_start_55 .. :try_end_61} :catchall_61

    .line 931
    .end local v2    # "throwable":Ljava/lang/Throwable;
    .end local v4    # "condition":Ljava/util/concurrent/locks/Condition;
    .end local v5    # "remainingNanos":J
    .end local v7    # "ignored":Ljava/lang/InterruptedException;
    :catchall_61
    move-exception v2

    :try_start_62
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->decrementWaiters(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    throw v2
    :try_end_66
    .catchall {:try_start_62 .. :try_end_66} :catchall_66

    .line 934
    :catchall_66
    move-exception v2

    if-eqz v3, :cond_70

    .line 935
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    :cond_70
    throw v2

    .line 939
    .end local v0    # "startNanos":J
    .end local v3    # "interruptIgnored":Z
    :cond_71
    :goto_71
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public enter()V
    .registers 2

    .line 294
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 295
    return-void
.end method

.method public enter(JLjava/util/concurrent/TimeUnit;)Z
    .registers 16
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 310
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 311
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    iget-boolean v1, p0, Lcom/google/common/util/concurrent/Monitor;->fair:Z

    if-nez v1, :cond_e

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 312
    const/4 v1, 0x1

    return v1

    .line 314
    :cond_e
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 315
    .local v1, "startNanos":J
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v3

    .line 316
    .local v3, "timeoutNanos":J
    move-wide v5, v3

    .line 317
    .local v5, "remainingNanos":J
    const/4 v7, 0x0

    .line 321
    .local v7, "interruptIgnored":Z
    :goto_18
    :try_start_18
    sget-object v8, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v5, v6, v8}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v8
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_1e} :catch_2a
    .catchall {:try_start_18 .. :try_end_1e} :catchall_28

    .line 328
    if-eqz v7, :cond_27

    .line 329
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->interrupt()V

    :cond_27
    return v8

    .line 328
    :catchall_28
    move-exception v8

    goto :goto_35

    .line 322
    :catch_2a
    move-exception v8

    .line 323
    .local v8, "ignored":Ljava/lang/InterruptedException;
    const/4 v7, 0x1

    .line 324
    :try_start_2c
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9
    :try_end_30
    .catchall {:try_start_2c .. :try_end_30} :catchall_28

    const/4 v11, 0x0

    sub-long/2addr v9, v1

    sub-long v5, v3, v9

    .line 325
    .end local v8    # "ignored":Ljava/lang/InterruptedException;
    goto :goto_18

    .line 328
    :goto_35
    if-eqz v7, :cond_3e

    .line 329
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->interrupt()V

    :cond_3e
    throw v8
.end method

.method public enterIf(Lcom/google/common/util/concurrent/Monitor$Guard;)Z
    .registers 5
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;

    .line 488
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-ne v0, p0, :cond_1c

    .line 491
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 492
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 493
    const/4 v1, 0x0

    .line 495
    .local v1, "satisfied":Z
    :try_start_a
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v2
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_15

    move v1, v2

    .line 497
    if-nez v1, :cond_14

    .line 498
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 501
    :cond_14
    return v1

    .line 497
    :catchall_15
    move-exception v2

    if-nez v1, :cond_1b

    .line 498
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_1b
    throw v2

    .line 489
    .end local v0    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v1    # "satisfied":Z
    :cond_1c
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0
.end method

.method public enterIf(Lcom/google/common/util/concurrent/Monitor$Guard;JLjava/util/concurrent/TimeUnit;)Z
    .registers 8
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;
    .param p2, "time"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 534
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-ne v0, p0, :cond_21

    .line 537
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 538
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {p0, p2, p3, p4}, Lcom/google/common/util/concurrent/Monitor;->enter(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    .line 539
    return v2

    .line 541
    :cond_e
    move v1, v2

    .line 543
    .local v1, "satisfied":Z
    :try_start_f
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v2
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_1a

    move v1, v2

    .line 545
    if-nez v1, :cond_19

    .line 546
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 549
    :cond_19
    return v1

    .line 545
    :catchall_1a
    move-exception v2

    if-nez v1, :cond_20

    .line 546
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_20
    throw v2

    .line 535
    .end local v0    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v1    # "satisfied":Z
    :cond_21
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0
.end method

.method public enterIfInterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;)Z
    .registers 5
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 511
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-ne v0, p0, :cond_1c

    .line 514
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 515
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 516
    const/4 v1, 0x0

    .line 518
    .local v1, "satisfied":Z
    :try_start_a
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v2
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_15

    move v1, v2

    .line 520
    if-nez v1, :cond_14

    .line 521
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 524
    :cond_14
    return v1

    .line 520
    :catchall_15
    move-exception v2

    if-nez v1, :cond_1b

    .line 521
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_1b
    throw v2

    .line 512
    .end local v0    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v1    # "satisfied":Z
    :cond_1c
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0
.end method

.method public enterIfInterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;JLjava/util/concurrent/TimeUnit;)Z
    .registers 8
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;
    .param p2, "time"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 560
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-ne v0, p0, :cond_21

    .line 563
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 564
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0, p2, p3, p4}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    .line 565
    return v2

    .line 567
    :cond_e
    move v1, v2

    .line 569
    .local v1, "satisfied":Z
    :try_start_f
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v2
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_1a

    move v1, v2

    .line 571
    if-nez v1, :cond_19

    .line 572
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 575
    :cond_19
    return v1

    .line 571
    :catchall_1a
    move-exception v2

    if-nez v1, :cond_20

    .line 572
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_20
    throw v2

    .line 561
    .end local v0    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v1    # "satisfied":Z
    :cond_21
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0
.end method

.method public enterInterruptibly()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 301
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 302
    return-void
.end method

.method public enterInterruptibly(JLjava/util/concurrent/TimeUnit;)Z
    .registers 5
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 340
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public enterWhen(Lcom/google/common/util/concurrent/Monitor$Guard;)V
    .registers 6
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 358
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-ne v0, p0, :cond_1f

    .line 361
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 362
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    .line 363
    .local v1, "reentrant":Z
    const/4 v2, 0x0

    .line 364
    .local v2, "success":Z
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 366
    :try_start_e
    invoke-direct {p0, p1, v1}, Lcom/google/common/util/concurrent/Monitor;->waitInterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;Z)V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_18

    .line 367
    const/4 v2, 0x1

    .line 369
    if-nez v2, :cond_17

    .line 370
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 373
    :cond_17
    return-void

    .line 369
    :catchall_18
    move-exception v3

    if-nez v2, :cond_1e

    .line 370
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_1e
    throw v3

    .line 359
    .end local v0    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v1    # "reentrant":Z
    .end local v2    # "success":Z
    :cond_1f
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0
.end method

.method public enterWhen(Lcom/google/common/util/concurrent/Monitor$Guard;JLjava/util/concurrent/TimeUnit;)Z
    .registers 15
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;
    .param p2, "time"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 404
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-ne v0, p0, :cond_43

    .line 407
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 408
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    .line 410
    .local v1, "reentrant":Z
    iget-boolean v2, p0, Lcom/google/common/util/concurrent/Monitor;->fair:Z

    const/4 v3, 0x0

    if-nez v2, :cond_1a

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 411
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    goto :goto_30

    .line 413
    :cond_1a
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 414
    .local v4, "startNanos":J
    invoke-virtual {v0, p2, p3, p4}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 415
    return v3

    .line 417
    :cond_25
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    sub-long/2addr v8, v4

    sub-long v4, v6, v8

    .line 419
    .local v4, "remainingNanos":J
    :goto_30
    move v2, v3

    .line 421
    .local v2, "satisfied":Z
    :try_start_31
    invoke-direct {p0, p1, v4, v5, v1}, Lcom/google/common/util/concurrent/Monitor;->waitInterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;JZ)Z

    move-result v3
    :try_end_35
    .catchall {:try_start_31 .. :try_end_35} :catchall_3c

    move v2, v3

    .line 423
    if-nez v2, :cond_3b

    .line 424
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 427
    :cond_3b
    return v2

    .line 423
    :catchall_3c
    move-exception v3

    if-nez v2, :cond_42

    .line 424
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_42
    throw v3

    .line 405
    .end local v0    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v1    # "reentrant":Z
    .end local v2    # "satisfied":Z
    .end local v4    # "remainingNanos":J
    :cond_43
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0
.end method

.method public enterWhenUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;)V
    .registers 6
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;

    .line 379
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-ne v0, p0, :cond_1f

    .line 382
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 383
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    .line 384
    .local v1, "reentrant":Z
    const/4 v2, 0x0

    .line 385
    .local v2, "success":Z
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 387
    :try_start_e
    invoke-direct {p0, p1, v1}, Lcom/google/common/util/concurrent/Monitor;->waitUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;Z)V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_18

    .line 388
    const/4 v2, 0x1

    .line 390
    if-nez v2, :cond_17

    .line 391
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 394
    :cond_17
    return-void

    .line 390
    :catchall_18
    move-exception v3

    if-nez v2, :cond_1e

    .line 391
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_1e
    throw v3

    .line 380
    .end local v0    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v1    # "reentrant":Z
    .end local v2    # "success":Z
    :cond_1f
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0
.end method

.method public enterWhenUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;JLjava/util/concurrent/TimeUnit;)Z
    .registers 23
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;
    .param p2, "time"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 437
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-object/from16 v5, p4

    iget-object v0, v2, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-ne v0, v1, :cond_91

    .line 440
    iget-object v6, v1, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 441
    .local v6, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v7

    .line 442
    .local v7, "reentrant":Z
    const/4 v8, 0x0

    move v9, v8

    .line 445
    .local v9, "interruptIgnored":Z
    :try_start_14
    iget-boolean v0, v1, Lcom/google/common/util/concurrent/Monitor;->fair:Z

    if-nez v0, :cond_24

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 446
    invoke-virtual {v5, v3, v4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v10

    .line 465
    move-wide v14, v10

    goto :goto_3e

    .line 448
    :cond_24
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    .line 449
    .local v10, "startNanos":J
    invoke-virtual {v5, v3, v4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v12
    :try_end_2c
    .catchall {:try_start_14 .. :try_end_2c} :catchall_86

    .line 450
    .local v12, "timeoutNanos":J
    move-wide v14, v12

    .line 453
    .local v14, "remainingNanos":J
    :goto_2d
    :try_start_2d
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v14, v15, v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_33
    .catch Ljava/lang/InterruptedException; {:try_start_2d .. :try_end_33} :catch_7a
    .catchall {:try_start_2d .. :try_end_33} :catchall_6f

    if-eqz v0, :cond_5b

    .line 461
    :try_start_35
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v16
    :try_end_39
    .catchall {:try_start_35 .. :try_end_39} :catchall_86

    const/4 v0, 0x0

    sub-long v16, v16, v10

    sub-long v14, v12, v16

    .line 465
    .end local v10    # "startNanos":J
    .end local v12    # "timeoutNanos":J
    :goto_3e
    nop

    .line 467
    .local v8, "satisfied":Z
    :try_start_3f
    invoke-direct {v1, v2, v14, v15, v7}, Lcom/google/common/util/concurrent/Monitor;->waitUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;JZ)Z

    move-result v0
    :try_end_43
    .catchall {:try_start_3f .. :try_end_43} :catchall_53

    .line 469
    .end local v8    # "satisfied":Z
    .local v0, "satisfied":Z
    if-nez v0, :cond_48

    .line 470
    :try_start_45
    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_86

    .line 473
    :cond_48
    nop

    .line 475
    if-eqz v9, :cond_52

    .line 476
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->interrupt()V

    :cond_52
    return v0

    .line 469
    .end local v0    # "satisfied":Z
    .restart local v8    # "satisfied":Z
    :catchall_53
    move-exception v0

    move-object v10, v0

    if-nez v8, :cond_5a

    .line 470
    :try_start_57
    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_5a
    throw v10

    .line 456
    .end local v8    # "satisfied":Z
    .restart local v10    # "startNanos":J
    .restart local v12    # "timeoutNanos":J
    :cond_5b
    nop

    .line 461
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v16
    :try_end_60
    .catchall {:try_start_57 .. :try_end_60} :catchall_86

    const/4 v0, 0x0

    sub-long v16, v16, v10

    sub-long v14, v12, v16

    .line 475
    if-eqz v9, :cond_6e

    .line 476
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_6e
    return v8

    .line 461
    :catchall_6f
    move-exception v0

    :try_start_70
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v16

    const/4 v8, 0x0

    sub-long v16, v16, v10

    sub-long v14, v12, v16

    throw v0

    .line 458
    :catch_7a
    move-exception v0

    .line 459
    .local v0, "ignored":Ljava/lang/InterruptedException;
    const/4 v9, 0x1

    .line 461
    .end local v0    # "ignored":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v16
    :try_end_80
    .catchall {:try_start_70 .. :try_end_80} :catchall_86

    const/4 v0, 0x0

    sub-long v16, v16, v10

    sub-long v14, v12, v16

    .line 462
    goto :goto_2d

    .line 475
    .end local v10    # "startNanos":J
    .end local v12    # "timeoutNanos":J
    .end local v14    # "remainingNanos":J
    :catchall_86
    move-exception v0

    if-eqz v9, :cond_90

    .line 476
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->interrupt()V

    :cond_90
    throw v0

    .line 438
    .end local v6    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v7    # "reentrant":Z
    .end local v9    # "interruptIgnored":Z
    :cond_91
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0
.end method

.method public getOccupiedDepth()I
    .registers 2

    .line 708
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->getHoldCount()I

    move-result v0

    return v0
.end method

.method public getQueueLength()I
    .registers 2

    .line 718
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->getQueueLength()I

    move-result v0

    return v0
.end method

.method public getWaitQueueLength(Lcom/google/common/util/concurrent/Monitor$Guard;)I
    .registers 4
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;

    .line 766
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-ne v0, p0, :cond_18

    .line 769
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 771
    :try_start_9
    iget v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->waiterCount:I
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_11

    .line 773
    iget-object v1, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_11
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 767
    :cond_18
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0
.end method

.method public hasQueuedThread(Ljava/lang/Thread;)Z
    .registers 3
    .param p1, "thread"    # Ljava/lang/Thread;

    .line 738
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/locks/ReentrantLock;->hasQueuedThread(Ljava/lang/Thread;)Z

    move-result v0

    return v0
.end method

.method public hasQueuedThreads()Z
    .registers 2

    .line 728
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->hasQueuedThreads()Z

    move-result v0

    return v0
.end method

.method public hasWaiters(Lcom/google/common/util/concurrent/Monitor$Guard;)Z
    .registers 4
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;

    .line 748
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-ne v0, p0, :cond_1d

    .line 751
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 753
    :try_start_9
    iget v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->waiterCount:I
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_16

    if-lez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    .line 755
    :goto_10
    iget-object v1, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_16
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 749
    :cond_1d
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0
.end method

.method public isFair()Z
    .registers 2

    .line 684
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isFair()Z

    move-result v0

    return v0
.end method

.method public isOccupied()Z
    .registers 2

    .line 692
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v0

    return v0
.end method

.method public isOccupiedByCurrentThread()Z
    .registers 2

    .line 700
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    return v0
.end method

.method public leave()V
    .registers 3

    .line 669
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 670
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 674
    const/4 v1, 0x0

    :try_start_9
    invoke-direct {p0, v1}, Lcom/google/common/util/concurrent/Monitor;->signalConditionsOfSatisfiedGuards(Lcom/google/common/util/concurrent/Monitor$Guard;)V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_11

    .line 676
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 677
    nop

    .line 678
    return-void

    .line 676
    :catchall_11
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    .line 671
    :cond_16
    new-instance v1, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v1}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v1
.end method

.method public tryEnter()Z
    .registers 2

    .line 351
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    return v0
.end method

.method public tryEnterIf(Lcom/google/common/util/concurrent/Monitor$Guard;)Z
    .registers 5
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;

    .line 587
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-ne v0, p0, :cond_21

    .line 590
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 591
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    .line 592
    return v2

    .line 594
    :cond_e
    move v1, v2

    .line 596
    .local v1, "satisfied":Z
    :try_start_f
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v2
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_1a

    move v1, v2

    .line 598
    if-nez v1, :cond_19

    .line 599
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 602
    :cond_19
    return v1

    .line 598
    :catchall_1a
    move-exception v2

    if-nez v1, :cond_20

    .line 599
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_20
    throw v2

    .line 588
    .end local v0    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v1    # "satisfied":Z
    :cond_21
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0
.end method

.method public waitFor(Lcom/google/common/util/concurrent/Monitor$Guard;)V
    .registers 3
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 610
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-ne v0, p0, :cond_17

    .line 613
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 616
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/common/util/concurrent/Monitor;->waitInterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;Z)V

    .line 617
    return-void

    .line 614
    :cond_11
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0

    .line 611
    :cond_17
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0
.end method

.method public waitFor(Lcom/google/common/util/concurrent/Monitor$Guard;JLjava/util/concurrent/TimeUnit;)Z
    .registers 8
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;
    .param p2, "time"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 640
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-ne v0, p0, :cond_1c

    .line 643
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 646
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/common/util/concurrent/Monitor;->waitInterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;JZ)Z

    move-result v0

    return v0

    .line 644
    :cond_16
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0

    .line 641
    :cond_1c
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0
.end method

.method public waitForUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;)V
    .registers 3
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;

    .line 624
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-ne v0, p0, :cond_17

    .line 627
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 630
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/common/util/concurrent/Monitor;->waitUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;Z)V

    .line 631
    return-void

    .line 628
    :cond_11
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0

    .line 625
    :cond_17
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0
.end method

.method public waitForUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;JLjava/util/concurrent/TimeUnit;)Z
    .registers 8
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;
    .param p2, "time"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 656
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-ne v0, p0, :cond_1c

    .line 659
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 662
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/common/util/concurrent/Monitor;->waitUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;JZ)Z

    move-result v0

    return v0

    .line 660
    :cond_16
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0

    .line 657
    :cond_1c
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0
.end method
