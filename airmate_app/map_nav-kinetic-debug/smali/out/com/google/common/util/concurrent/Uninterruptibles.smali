.class public final Lcom/google/common/util/concurrent/Uninterruptibles;
.super Ljava/lang/Object;
.source "Uninterruptibles.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static awaitUninterruptibly(Ljava/util/concurrent/CountDownLatch;)V
    .registers 4
    .param p0, "latch"    # Ljava/util/concurrent/CountDownLatch;

    .line 51
    const/4 v0, 0x0

    .line 55
    .local v0, "interrupted":Z
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_4} :catch_19
    .catchall {:try_start_1 .. :try_end_4} :catchall_e

    .line 62
    if-eqz v0, :cond_d

    .line 63
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_d
    return-void

    .line 62
    :catchall_e
    move-exception v1

    if-eqz v0, :cond_18

    .line 63
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    :cond_18
    throw v1

    .line 57
    :catch_19
    move-exception v1

    .line 58
    .local v1, "e":Ljava/lang/InterruptedException;
    const/4 v0, 0x1

    .line 59
    .end local v1    # "e":Ljava/lang/InterruptedException;
    goto :goto_1
.end method

.method public static awaitUninterruptibly(Ljava/util/concurrent/CountDownLatch;JLjava/util/concurrent/TimeUnit;)Z
    .registers 13
    .param p0, "latch"    # Ljava/util/concurrent/CountDownLatch;
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 75
    const/4 v0, 0x0

    .line 77
    .local v0, "interrupted":Z
    :try_start_1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    .line 78
    .local v1, "remainingNanos":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_25

    const/4 v5, 0x0

    add-long/2addr v3, v1

    .line 83
    .local v3, "end":J
    :goto_b
    :try_start_b
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v1, v2, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v5
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_11} :catch_1b
    .catchall {:try_start_b .. :try_end_11} :catchall_25

    .line 90
    if-eqz v0, :cond_1a

    .line 91
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    :cond_1a
    return v5

    .line 84
    :catch_1b
    move-exception v5

    .line 85
    .local v5, "e":Ljava/lang/InterruptedException;
    const/4 v0, 0x1

    .line 86
    :try_start_1d
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6
    :try_end_21
    .catchall {:try_start_1d .. :try_end_21} :catchall_25

    const/4 v8, 0x0

    sub-long v1, v3, v6

    .line 87
    .end local v5    # "e":Ljava/lang/InterruptedException;
    goto :goto_b

    .line 90
    .end local v1    # "remainingNanos":J
    .end local v3    # "end":J
    :catchall_25
    move-exception v1

    if-eqz v0, :cond_2f

    .line 91
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    :cond_2f
    throw v1
.end method

.method public static getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 128
    .local p0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TV;>;"
    const/4 v0, 0x0

    .line 132
    .local v0, "interrupted":Z
    :goto_1
    :try_start_1
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_5} :catch_1a
    .catchall {:try_start_1 .. :try_end_5} :catchall_f

    .line 138
    if-eqz v0, :cond_e

    .line 139
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    :cond_e
    return-object v1

    .line 138
    :catchall_f
    move-exception v1

    if-eqz v0, :cond_19

    .line 139
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    :cond_19
    throw v1

    .line 133
    :catch_1a
    move-exception v1

    .line 134
    .local v1, "e":Ljava/lang/InterruptedException;
    const/4 v0, 0x1

    .line 135
    .end local v1    # "e":Ljava/lang/InterruptedException;
    goto :goto_1
.end method

.method public static getUninterruptibly(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 13
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TV;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 156
    .local p0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TV;>;"
    const/4 v0, 0x0

    .line 158
    .local v0, "interrupted":Z
    :try_start_1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    .line 159
    .local v1, "remainingNanos":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_25

    const/4 v5, 0x0

    add-long/2addr v3, v1

    .line 164
    .local v3, "end":J
    :goto_b
    :try_start_b
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v1, v2, v5}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v5
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_11} :catch_1b
    .catchall {:try_start_b .. :try_end_11} :catchall_25

    .line 171
    if-eqz v0, :cond_1a

    .line 172
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    :cond_1a
    return-object v5

    .line 165
    :catch_1b
    move-exception v5

    .line 166
    .local v5, "e":Ljava/lang/InterruptedException;
    const/4 v0, 0x1

    .line 167
    :try_start_1d
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6
    :try_end_21
    .catchall {:try_start_1d .. :try_end_21} :catchall_25

    const/4 v8, 0x0

    sub-long v1, v3, v6

    .line 168
    .end local v5    # "e":Ljava/lang/InterruptedException;
    goto :goto_b

    .line 171
    .end local v1    # "remainingNanos":J
    .end local v3    # "end":J
    :catchall_25
    move-exception v1

    if-eqz v0, :cond_2f

    .line 172
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    :cond_2f
    throw v1
.end method

.method public static joinUninterruptibly(Ljava/lang/Thread;)V
    .registers 4
    .param p0, "toJoin"    # Ljava/lang/Thread;

    .line 100
    const/4 v0, 0x0

    .line 104
    .local v0, "interrupted":Z
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Thread;->join()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_4} :catch_19
    .catchall {:try_start_1 .. :try_end_4} :catchall_e

    .line 111
    if-eqz v0, :cond_d

    .line 112
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_d
    return-void

    .line 111
    :catchall_e
    move-exception v1

    if-eqz v0, :cond_18

    .line 112
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    :cond_18
    throw v1

    .line 106
    :catch_19
    move-exception v1

    .line 107
    .local v1, "e":Ljava/lang/InterruptedException;
    const/4 v0, 0x1

    .line 108
    .end local v1    # "e":Ljava/lang/InterruptedException;
    goto :goto_1
.end method

.method public static joinUninterruptibly(Ljava/lang/Thread;JLjava/util/concurrent/TimeUnit;)V
    .registers 13
    .param p0, "toJoin"    # Ljava/lang/Thread;
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 184
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const/4 v0, 0x0

    .line 187
    .local v0, "interrupted":Z
    :try_start_4
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    .line 188
    .local v1, "remainingNanos":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_27

    const/4 v5, 0x0

    add-long/2addr v3, v1

    .line 192
    .local v3, "end":J
    :goto_e
    :try_start_e
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, p0, v1, v2}, Ljava/util/concurrent/TimeUnit;->timedJoin(Ljava/lang/Thread;J)V
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_13} :catch_1d
    .catchall {:try_start_e .. :try_end_13} :catchall_27

    .line 200
    if-eqz v0, :cond_1c

    .line 201
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    :cond_1c
    return-void

    .line 194
    :catch_1d
    move-exception v5

    .line 195
    .local v5, "e":Ljava/lang/InterruptedException;
    const/4 v0, 0x1

    .line 196
    :try_start_1f
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_27

    const/4 v8, 0x0

    sub-long v1, v3, v6

    .line 197
    .end local v5    # "e":Ljava/lang/InterruptedException;
    goto :goto_e

    .line 200
    .end local v1    # "remainingNanos":J
    .end local v3    # "end":J
    :catchall_27
    move-exception v1

    if-eqz v0, :cond_31

    .line 201
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    :cond_31
    throw v1
.end method

.method public static putUninterruptibly(Ljava/util/concurrent/BlockingQueue;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/BlockingQueue<",
            "TE;>;TE;)V"
        }
    .end annotation

    .line 231
    .local p0, "queue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x0

    .line 235
    .local v0, "interrupted":Z
    :goto_1
    :try_start_1
    invoke-interface {p0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_4} :catch_19
    .catchall {:try_start_1 .. :try_end_4} :catchall_e

    .line 242
    if-eqz v0, :cond_d

    .line 243
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_d
    return-void

    .line 242
    :catchall_e
    move-exception v1

    if-eqz v0, :cond_18

    .line 243
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    :cond_18
    throw v1

    .line 237
    :catch_19
    move-exception v1

    .line 238
    .local v1, "e":Ljava/lang/InterruptedException;
    const/4 v0, 0x1

    .line 239
    .end local v1    # "e":Ljava/lang/InterruptedException;
    goto :goto_1
.end method

.method public static sleepUninterruptibly(JLjava/util/concurrent/TimeUnit;)V
    .registers 12
    .param p0, "sleepFor"    # J
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 254
    const/4 v0, 0x0

    .line 256
    .local v0, "interrupted":Z
    :try_start_1
    invoke-virtual {p2, p0, p1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    .line 257
    .local v1, "remainingNanos":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_24

    const/4 v5, 0x0

    add-long/2addr v3, v1

    .line 261
    .local v3, "end":J
    :goto_b
    :try_start_b
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v1, v2}, Ljava/util/concurrent/TimeUnit;->sleep(J)V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_10} :catch_1a
    .catchall {:try_start_b .. :try_end_10} :catchall_24

    .line 269
    if-eqz v0, :cond_19

    .line 270
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    :cond_19
    return-void

    .line 263
    :catch_1a
    move-exception v5

    .line 264
    .local v5, "e":Ljava/lang/InterruptedException;
    const/4 v0, 0x1

    .line 265
    :try_start_1c
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_24

    const/4 v8, 0x0

    sub-long v1, v3, v6

    .line 266
    .end local v5    # "e":Ljava/lang/InterruptedException;
    goto :goto_b

    .line 269
    .end local v1    # "remainingNanos":J
    .end local v3    # "end":J
    :catchall_24
    move-exception v1

    if-eqz v0, :cond_2e

    .line 270
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    :cond_2e
    throw v1
.end method

.method public static takeUninterruptibly(Ljava/util/concurrent/BlockingQueue;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/BlockingQueue<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 210
    .local p0, "queue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<TE;>;"
    const/4 v0, 0x0

    .line 214
    .local v0, "interrupted":Z
    :goto_1
    :try_start_1
    invoke-interface {p0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_5} :catch_1a
    .catchall {:try_start_1 .. :try_end_5} :catchall_f

    .line 220
    if-eqz v0, :cond_e

    .line 221
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    :cond_e
    return-object v1

    .line 220
    :catchall_f
    move-exception v1

    if-eqz v0, :cond_19

    .line 221
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    :cond_19
    throw v1

    .line 215
    :catch_1a
    move-exception v1

    .line 216
    .local v1, "e":Ljava/lang/InterruptedException;
    const/4 v0, 0x1

    .line 217
    .end local v1    # "e":Ljava/lang/InterruptedException;
    goto :goto_1
.end method
