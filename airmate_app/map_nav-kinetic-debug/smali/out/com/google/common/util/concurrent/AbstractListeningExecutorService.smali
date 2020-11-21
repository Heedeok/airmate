.class abstract Lcom/google/common/util/concurrent/AbstractListeningExecutorService;
.super Ljava/lang/Object;
.source "AbstractListeningExecutorService.java"

# interfaces
.implements Lcom/google/common/util/concurrent/ListeningExecutorService;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private doInvokeAny(Ljava/util/Collection;ZJ)Ljava/lang/Object;
    .registers 23
    .param p2, "timed"    # Z
    .param p3, "nanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;ZJ)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 65
    .local p1, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v2

    .line 66
    .local v2, "ntasks":I
    const/4 v3, 0x1

    if-lez v2, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v4, v0

    .line 68
    .local v4, "futures":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/Future<TT;>;>;"
    new-instance v0, Ljava/util/concurrent/ExecutorCompletionService;

    move-object/from16 v5, p0

    invoke-direct {v0, v5}, Ljava/util/concurrent/ExecutorCompletionService;-><init>(Ljava/util/concurrent/Executor;)V

    move-object v6, v0

    .line 79
    .local v6, "ecs":Ljava/util/concurrent/ExecutorCompletionService;, "Ljava/util/concurrent/ExecutorCompletionService<TT;>;"
    const/4 v0, 0x0

    .line 80
    .local v0, "ee":Ljava/util/concurrent/ExecutionException;
    if-eqz p2, :cond_28

    :try_start_1e
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    goto :goto_2a

    .line 126
    .end local v0    # "ee":Ljava/util/concurrent/ExecutionException;
    :catchall_23
    move-exception v0

    move-wide/from16 v10, p3

    goto/16 :goto_bd

    .line 80
    .restart local v0    # "ee":Ljava/util/concurrent/ExecutionException;
    :cond_28
    const-wide/16 v7, 0x0

    .line 81
    .local v7, "lastTime":J
    :goto_2a
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 84
    .local v9, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/concurrent/Callable<TT;>;>;"
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/concurrent/Callable;

    invoke-virtual {v6, v10}, Ljava/util/concurrent/ExecutorCompletionService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3b
    .catchall {:try_start_1e .. :try_end_3b} :catchall_23

    .line 85
    add-int/lit8 v2, v2, -0x1

    .line 86
    move-wide/from16 v10, p3

    move-wide v12, v7

    move-object v7, v0

    const/4 v0, 0x1

    .line 89
    .end local p3    # "nanos":J
    .local v0, "active":I
    .local v7, "ee":Ljava/util/concurrent/ExecutionException;
    .local v10, "nanos":J
    .local v12, "lastTime":J
    :goto_42
    :try_start_42
    invoke-virtual {v6}, Ljava/util/concurrent/ExecutorCompletionService;->poll()Ljava/util/concurrent/Future;

    move-result-object v8

    .line 90
    .local v8, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    if-nez v8, :cond_8b

    .line 91
    if-lez v2, :cond_5c

    .line 92
    add-int/lit8 v2, v2, -0x1

    .line 93
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/concurrent/Callable;

    invoke-virtual {v6, v14}, Ljava/util/concurrent/ExecutorCompletionService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v14

    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_8b

    .line 95
    :cond_5c
    if-nez v0, :cond_69

    .line 96
    nop

    .line 121
    .end local v8    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    if-nez v7, :cond_68

    .line 122
    new-instance v8, Ljava/util/concurrent/ExecutionException;

    const/4 v14, 0x0

    invoke-direct {v8, v14}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    move-object v7, v8

    .line 124
    :cond_68
    throw v7

    .line 97
    .restart local v8    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    :cond_69
    if-eqz p2, :cond_86

    .line 98
    sget-object v14, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v10, v11, v14}, Ljava/util/concurrent/ExecutorCompletionService;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;

    move-result-object v14

    move-object v8, v14

    .line 99
    if-eqz v8, :cond_80

    .line 102
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    .line 103
    .local v14, "now":J
    const/16 v16, 0x0

    sub-long v16, v14, v12

    sub-long v10, v10, v16

    .line 104
    move-wide v12, v14

    .line 105
    .end local v14    # "now":J
    goto :goto_8b

    .line 100
    :cond_80
    new-instance v14, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v14}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v14

    .line 106
    :cond_86
    invoke-virtual {v6}, Ljava/util/concurrent/ExecutorCompletionService;->take()Ljava/util/concurrent/Future;

    move-result-object v14
    :try_end_8a
    .catchall {:try_start_42 .. :try_end_8a} :catchall_bc

    move-object v8, v14

    .line 109
    :cond_8b
    :goto_8b
    if-eqz v8, :cond_bb

    .line 110
    add-int/lit8 v14, v0, -0x1

    .line 112
    .end local v0    # "active":I
    .local v14, "active":I
    :try_start_8f
    invoke-interface {v8}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0
    :try_end_93
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_8f .. :try_end_93} :catch_b4
    .catch Ljava/lang/RuntimeException; {:try_start_8f .. :try_end_93} :catch_aa
    .catchall {:try_start_8f .. :try_end_93} :catchall_bc

    .line 126
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :goto_97
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_a9

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v1, v16

    check-cast v1, Ljava/util/concurrent/Future;

    .line 127
    .local v1, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    invoke-interface {v1, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_97

    .end local v1    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    .end local v15    # "i$":Ljava/util/Iterator;
    :cond_a9
    return-object v0

    .line 115
    :catch_aa
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 116
    .local v0, "rex":Ljava/lang/RuntimeException;
    :try_start_ad
    new-instance v1, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V
    :try_end_b2
    .catchall {:try_start_ad .. :try_end_b2} :catchall_bc

    move-object v0, v1

    goto :goto_b9

    .line 113
    .end local v0    # "rex":Ljava/lang/RuntimeException;
    :catch_b4
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 114
    .local v0, "eex":Ljava/util/concurrent/ExecutionException;
    nop

    .line 117
    .end local v7    # "ee":Ljava/util/concurrent/ExecutionException;
    .local v0, "ee":Ljava/util/concurrent/ExecutionException;
    nop

    .line 119
    .end local v8    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    .end local v14    # "active":I
    .local v0, "active":I
    .restart local v7    # "ee":Ljava/util/concurrent/ExecutionException;
    :goto_b9
    move-object v7, v0

    move v0, v14

    :cond_bb
    goto :goto_42

    .line 126
    .end local v0    # "active":I
    .end local v7    # "ee":Ljava/util/concurrent/ExecutionException;
    .end local v9    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/concurrent/Callable<TT;>;>;"
    .end local v12    # "lastTime":J
    :catchall_bc
    move-exception v0

    :goto_bd
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_c1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/concurrent/Future;

    .line 127
    .local v7, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    invoke-interface {v7, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_c1

    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v7    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    :cond_d1
    throw v0
.end method


# virtual methods
.method public invokeAll(Ljava/util/Collection;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;)",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 149
    .local p1, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    if-eqz p1, :cond_78

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 153
    .local v0, "futures":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/Future<TT;>;>;"
    const/4 v1, 0x0

    .line 155
    .local v1, "done":Z
    const/4 v2, 0x1

    :try_start_d
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Callable;

    .line 156
    .local v4, "t":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    invoke-static {v4}, Lcom/google/common/util/concurrent/ListenableFutureTask;->create(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFutureTask;

    move-result-object v5

    .line 157
    .local v5, "f":Lcom/google/common/util/concurrent/ListenableFutureTask;, "Lcom/google/common/util/concurrent/ListenableFutureTask<TT;>;"
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    invoke-virtual {p0, v5}, Lcom/google/common/util/concurrent/AbstractListeningExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 159
    .end local v4    # "t":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    .end local v5    # "f":Lcom/google/common/util/concurrent/ListenableFutureTask;, "Lcom/google/common/util/concurrent/ListenableFutureTask<TT;>;"
    goto :goto_11

    .line 160
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_28
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_2c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_47

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Future;

    .line 161
    .local v4, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    invoke-interface {v4}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v5
    :try_end_3c
    .catchall {:try_start_d .. :try_end_3c} :catchall_60

    if-nez v5, :cond_46

    .line 163
    :try_start_3e
    invoke-interface {v4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_41
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3e .. :try_end_41} :catch_44
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3e .. :try_end_41} :catch_42
    .catchall {:try_start_3e .. :try_end_41} :catchall_60

    .line 166
    .end local v4    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    :goto_41
    goto :goto_46

    .line 165
    .restart local v4    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    :catch_42
    move-exception v5

    goto :goto_46

    .line 164
    :catch_44
    move-exception v5

    goto :goto_41

    .line 166
    .end local v4    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    :cond_46
    :goto_46
    goto :goto_2c

    .line 169
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_47
    const/4 v1, 0x1

    .line 170
    nop

    .line 172
    if-nez v1, :cond_5f

    .line 173
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_4f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Future;

    .line 174
    .restart local v4    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    invoke-interface {v4, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_4f

    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    :cond_5f
    return-object v0

    .line 172
    :catchall_60
    move-exception v3

    if-nez v1, :cond_77

    .line 173
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_67
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_77

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/Future;

    .line 174
    .local v5, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    invoke-interface {v5, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_67

    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    :cond_77
    throw v3

    .line 150
    .end local v0    # "futures":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/Future<TT;>;>;"
    .end local v1    # "done":Z
    :cond_78
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;
    .registers 26
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 183
    .local p1, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    move-object/from16 v1, p4

    if-eqz p1, :cond_12d

    if-eqz v1, :cond_12d

    .line 186
    move-wide/from16 v2, p2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    .line 187
    .local v4, "nanos":J
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v6

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    move-object v6, v0

    .line 188
    .local v6, "futures":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/Future<TT;>;>;"
    const/4 v0, 0x0

    move v7, v0

    .line 190
    .local v7, "done":Z
    const/4 v8, 0x1

    :try_start_19
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/concurrent/Callable;

    .line 191
    .local v9, "t":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    invoke-static {v9}, Lcom/google/common/util/concurrent/ListenableFutureTask;->create(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFutureTask;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 194
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v9    # "t":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    :cond_31
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    .line 198
    .local v9, "lastTime":J
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/concurrent/Future<TT;>;>;"
    :goto_39
    move-object v11, v0

    .line 199
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/concurrent/Future<TT;>;>;"
    .local v11, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/concurrent/Future<TT;>;>;"
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-wide/16 v12, 0x0

    if-eqz v0, :cond_78

    .line 200
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    check-cast v0, Ljava/lang/Runnable;
    :try_end_4a
    .catchall {:try_start_19 .. :try_end_4a} :catchall_113

    move-object/from16 v14, p0

    :try_start_4c
    invoke-virtual {v14, v0}, Lcom/google/common/util/concurrent/AbstractListeningExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 201
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v15
    :try_end_53
    .catchall {:try_start_4c .. :try_end_53} :catchall_111

    .line 202
    .local v15, "now":J
    const/4 v0, 0x0

    sub-long v17, v15, v9

    sub-long v4, v4, v17

    .line 203
    move-wide v9, v15

    .line 204
    cmp-long v0, v4, v12

    if-gtz v0, :cond_75

    .line 205
    nop

    .line 229
    if-nez v7, :cond_74

    .line 230
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_64
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_74

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/concurrent/Future;

    .line 231
    .local v12, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    invoke-interface {v12, v8}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_64

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v12    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    :cond_74
    return-object v6

    .line 207
    .end local v15    # "now":J
    :cond_75
    nop

    .line 198
    move-object v0, v11

    goto :goto_39

    .line 209
    :cond_78
    move-object/from16 v14, p0

    :try_start_7a
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_7e
    move-object v15, v0

    .end local v0    # "i$":Ljava/util/Iterator;
    .local v15, "i$":Ljava/util/Iterator;
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f8

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    move-object/from16 v19, v0

    .line 210
    .local v19, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0
    :try_end_91
    .catchall {:try_start_7a .. :try_end_91} :catchall_111

    if-nez v0, :cond_f3

    .line 211
    cmp-long v0, v4, v12

    if-gtz v0, :cond_af

    .line 212
    nop

    .line 229
    if-nez v7, :cond_ae

    .line 230
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_9e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_ae

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/concurrent/Future;

    .line 231
    .restart local v12    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    invoke-interface {v12, v8}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_9e

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v12    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    :cond_ae
    return-object v6

    .line 215
    :cond_af
    :try_start_af
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;
    :try_end_b1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_af .. :try_end_b1} :catch_e4
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_af .. :try_end_b1} :catch_e0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_af .. :try_end_b1} :catch_bd
    .catchall {:try_start_af .. :try_end_b1} :catchall_111

    move-object/from16 v12, v19

    .end local v19    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    .restart local v12    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    :try_start_b3
    invoke-interface {v12, v4, v5, v0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_b6
    .catch Ljava/util/concurrent/CancellationException; {:try_start_b3 .. :try_end_b6} :catch_bb
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_b3 .. :try_end_b6} :catch_b9
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_b3 .. :try_end_b6} :catch_b7
    .catchall {:try_start_b3 .. :try_end_b6} :catchall_111

    goto :goto_e7

    .line 218
    :catch_b7
    move-exception v0

    goto :goto_c0

    .line 217
    :catch_b9
    move-exception v0

    goto :goto_e3

    .line 216
    :catch_bb
    move-exception v0

    goto :goto_e7

    .line 218
    .end local v12    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    .restart local v19    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    :catch_bd
    move-exception v0

    move-object/from16 v12, v19

    .line 219
    .end local v19    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    .local v0, "toe":Ljava/util/concurrent/TimeoutException;
    .restart local v12    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    :goto_c0
    nop

    .line 229
    if-nez v7, :cond_dd

    .line 230
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_c7
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_dd

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v20, v0

    .end local v0    # "toe":Ljava/util/concurrent/TimeoutException;
    .local v20, "toe":Ljava/util/concurrent/TimeoutException;
    move-object/from16 v0, v16

    check-cast v0, Ljava/util/concurrent/Future;

    .line 231
    .local v0, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    invoke-interface {v0, v8}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 230
    move-object/from16 v0, v20

    goto :goto_c7

    .line 231
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v20    # "toe":Ljava/util/concurrent/TimeoutException;
    .local v0, "toe":Ljava/util/concurrent/TimeoutException;
    :cond_dd
    move-object/from16 v20, v0

    .end local v0    # "toe":Ljava/util/concurrent/TimeoutException;
    .restart local v20    # "toe":Ljava/util/concurrent/TimeoutException;
    return-object v6

    .line 217
    .end local v12    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    .end local v20    # "toe":Ljava/util/concurrent/TimeoutException;
    .restart local v19    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    :catch_e0
    move-exception v0

    move-object/from16 v12, v19

    .end local v19    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    .restart local v12    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    :goto_e3
    goto :goto_e7

    .line 216
    .end local v12    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    .restart local v19    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    :catch_e4
    move-exception v0

    move-object/from16 v12, v19

    .line 220
    .end local v19    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    .restart local v12    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    :goto_e7
    nop

    .line 221
    :try_start_e8
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v16
    :try_end_ec
    .catchall {:try_start_e8 .. :try_end_ec} :catchall_111

    .line 222
    .local v16, "now":J
    const/4 v0, 0x0

    sub-long v18, v16, v9

    sub-long v4, v4, v18

    .line 223
    move-wide/from16 v9, v16

    .line 224
    .end local v12    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    .end local v16    # "now":J
    :cond_f3
    nop

    .line 209
    move-object v0, v15

    const-wide/16 v12, 0x0

    goto :goto_7e

    .line 226
    .end local v15    # "i$":Ljava/util/Iterator;
    :cond_f8
    const/4 v0, 0x1

    .line 227
    .end local v7    # "done":Z
    .local v0, "done":Z
    nop

    .line 229
    if-nez v0, :cond_110

    .line 230
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_100
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_110

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/concurrent/Future;

    .line 231
    .restart local v12    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    invoke-interface {v12, v8}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_100

    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v12    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    :cond_110
    return-object v6

    .line 229
    .end local v0    # "done":Z
    .end local v9    # "lastTime":J
    .end local v11    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/concurrent/Future<TT;>;>;"
    .local v7, "done":Z
    :catchall_111
    move-exception v0

    goto :goto_116

    :catchall_113
    move-exception v0

    move-object/from16 v14, p0

    :goto_116
    if-nez v7, :cond_12c

    .line 230
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_11c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_12c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/concurrent/Future;

    .line 231
    .local v10, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    invoke-interface {v10, v8}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_11c

    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    :cond_12c
    throw v0

    .line 184
    .end local v4    # "nanos":J
    .end local v6    # "futures":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/Future<TT;>;>;"
    .end local v7    # "done":Z
    :cond_12d
    move-object/from16 v14, p0

    move-wide/from16 v2, p2

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public invokeAny(Ljava/util/Collection;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 135
    .local p1, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    :try_start_3
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/common/util/concurrent/AbstractListeningExecutorService;->doInvokeAny(Ljava/util/Collection;ZJ)Ljava/lang/Object;

    move-result-object v0
    :try_end_7
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_7} :catch_8

    return-object v0

    .line 136
    :catch_8
    move-exception v0

    .line 137
    .local v0, "cannotHappen":Ljava/util/concurrent/TimeoutException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public invokeAny(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 8
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 144
    .local p1, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/google/common/util/concurrent/AbstractListeningExecutorService;->doInvokeAny(Ljava/util/Collection;ZJ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public submit(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 3
    .param p1, "task"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 43
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/common/util/concurrent/ListenableFutureTask;->create(Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFutureTask;

    move-result-object v0

    .line 44
    .local v0, "ftask":Lcom/google/common/util/concurrent/ListenableFutureTask;, "Lcom/google/common/util/concurrent/ListenableFutureTask<Ljava/lang/Void;>;"
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractListeningExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 45
    return-object v0
.end method

.method public submit(Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 4
    .param p1, "task"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 49
    .local p2, "result":Ljava/lang/Object;, "TT;"
    invoke-static {p1, p2}, Lcom/google/common/util/concurrent/ListenableFutureTask;->create(Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFutureTask;

    move-result-object v0

    .line 50
    .local v0, "ftask":Lcom/google/common/util/concurrent/ListenableFutureTask;, "Lcom/google/common/util/concurrent/ListenableFutureTask<TT;>;"
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractListeningExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 51
    return-object v0
.end method

.method public submit(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 55
    .local p1, "task":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    invoke-static {p1}, Lcom/google/common/util/concurrent/ListenableFutureTask;->create(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFutureTask;

    move-result-object v0

    .line 56
    .local v0, "ftask":Lcom/google/common/util/concurrent/ListenableFutureTask;, "Lcom/google/common/util/concurrent/ListenableFutureTask<TT;>;"
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractListeningExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 57
    return-object v0
.end method

.method public bridge synthetic submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Runnable;

    .line 41
    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/AbstractListeningExecutorService;->submit(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .registers 4
    .param p1, "x0"    # Ljava/lang/Runnable;
    .param p2, "x1"    # Ljava/lang/Object;

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/google/common/util/concurrent/AbstractListeningExecutorService;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .registers 3
    .param p1, "x0"    # Ljava/util/concurrent/Callable;

    .line 41
    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/AbstractListeningExecutorService;->submit(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
