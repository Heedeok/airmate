.class public Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;
.super Ljava/lang/Object;
.source "DefaultChannelGroupFuture.java"

# interfaces
.implements Lorg/jboss/netty/channel/group/ChannelGroupFuture;


# static fields
.field private static final logger:Lorg/jboss/netty/logging/InternalLogger;


# instance fields
.field private final childListener:Lorg/jboss/netty/channel/ChannelFutureListener;

.field private done:Z

.field failureCount:I

.field private firstListener:Lorg/jboss/netty/channel/group/ChannelGroupFutureListener;

.field final futures:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/jboss/netty/channel/ChannelFuture;",
            ">;"
        }
    .end annotation
.end field

.field private final group:Lorg/jboss/netty/channel/group/ChannelGroup;

.field private otherListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jboss/netty/channel/group/ChannelGroupFutureListener;",
            ">;"
        }
    .end annotation
.end field

.field successCount:I

.field private waiters:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 41
    const-class v0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->logger:Lorg/jboss/netty/logging/InternalLogger;

    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/channel/group/ChannelGroup;Ljava/util/Collection;)V
    .registers 7
    .param p1, "group"    # Lorg/jboss/netty/channel/group/ChannelGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/channel/group/ChannelGroup;",
            "Ljava/util/Collection<",
            "Lorg/jboss/netty/channel/ChannelFuture;",
            ">;)V"
        }
    .end annotation

    .line 77
    .local p2, "futures":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jboss/netty/channel/ChannelFuture;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture$1;

    invoke-direct {v0, p0}, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture$1;-><init>(Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;)V

    iput-object v0, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->childListener:Lorg/jboss/netty/channel/ChannelFutureListener;

    .line 78
    if-eqz p1, :cond_67

    .line 81
    if-eqz p2, :cond_5f

    .line 85
    iput-object p1, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->group:Lorg/jboss/netty/channel/group/ChannelGroup;

    .line 87
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 88
    .local v0, "futureMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/jboss/netty/channel/ChannelFuture;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jboss/netty/channel/ChannelFuture;

    .line 89
    .local v2, "f":Lorg/jboss/netty/channel/ChannelFuture;
    invoke-interface {v2}, Lorg/jboss/netty/channel/ChannelFuture;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v3

    invoke-interface {v3}, Lorg/jboss/netty/channel/Channel;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .end local v2    # "f":Lorg/jboss/netty/channel/ChannelFuture;
    goto :goto_19

    .line 92
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_31
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->futures:Ljava/util/Map;

    .line 94
    iget-object v1, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->futures:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_41
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jboss/netty/channel/ChannelFuture;

    .line 95
    .restart local v2    # "f":Lorg/jboss/netty/channel/ChannelFuture;
    iget-object v3, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->childListener:Lorg/jboss/netty/channel/ChannelFutureListener;

    invoke-interface {v2, v3}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    .line 96
    .end local v2    # "f":Lorg/jboss/netty/channel/ChannelFuture;
    goto :goto_41

    .line 99
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_53
    iget-object v1, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->futures:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 100
    invoke-virtual {p0}, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->setDone()Z

    .line 102
    :cond_5e
    return-void

    .line 82
    .end local v0    # "futureMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/jboss/netty/channel/ChannelFuture;>;"
    :cond_5f
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "futures"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_67
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "group"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Lorg/jboss/netty/channel/group/ChannelGroup;Ljava/util/Map;)V
    .registers 6
    .param p1, "group"    # Lorg/jboss/netty/channel/group/ChannelGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/channel/group/ChannelGroup;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/jboss/netty/channel/ChannelFuture;",
            ">;)V"
        }
    .end annotation

    .line 104
    .local p2, "futures":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/jboss/netty/channel/ChannelFuture;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture$1;

    invoke-direct {v0, p0}, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture$1;-><init>(Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;)V

    iput-object v0, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->childListener:Lorg/jboss/netty/channel/ChannelFutureListener;

    .line 105
    iput-object p1, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->group:Lorg/jboss/netty/channel/group/ChannelGroup;

    .line 106
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->futures:Ljava/util/Map;

    .line 107
    iget-object v0, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->futures:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jboss/netty/channel/ChannelFuture;

    .line 108
    .local v1, "f":Lorg/jboss/netty/channel/ChannelFuture;
    iget-object v2, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->childListener:Lorg/jboss/netty/channel/ChannelFutureListener;

    invoke-interface {v1, v2}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    .line 109
    .end local v1    # "f":Lorg/jboss/netty/channel/ChannelFuture;
    goto :goto_1c

    .line 112
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_2e
    iget-object v0, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->futures:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 113
    invoke-virtual {p0}, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->setDone()Z

    .line 115
    :cond_39
    return-void
.end method

.method private await0(JZ)Z
    .registers 19
    .param p1, "timeoutNanos"    # J
    .param p3, "interruptable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 268
    move-object v1, p0

    if-eqz p3, :cond_10

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_10

    .line 269
    :cond_a
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 272
    :cond_10
    :goto_10
    const-wide/16 v5, 0x0

    cmp-long v0, p1, v5

    if-gtz v0, :cond_18

    move-wide v7, v5

    goto :goto_1c

    :cond_18
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    .line 273
    .local v7, "startTime":J
    :goto_1c
    move-wide/from16 v9, p1

    .line 274
    .local v9, "waitTime":J
    const/4 v0, 0x0

    move v11, v0

    .line 277
    .local v11, "interrupted":Z
    :try_start_20
    monitor-enter p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_c5

    .line 278
    :try_start_21
    iget-boolean v0, v1, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->done:Z

    if-eqz v0, :cond_32

    .line 279
    iget-boolean v0, v1, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->done:Z

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_21 .. :try_end_28} :catchall_b9

    .line 312
    if-eqz v11, :cond_31

    .line 313
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    .line 279
    :cond_31
    return v0

    .line 280
    :cond_32
    cmp-long v0, v9, v5

    if-gtz v0, :cond_43

    .line 281
    :try_start_36
    iget-boolean v0, v1, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->done:Z

    monitor-exit p0
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_b9

    .line 313
    if-eqz v11, :cond_42

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    .line 281
    :cond_42
    return v0

    .line 284
    :cond_43
    :try_start_43
    invoke-static {}, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->checkDeadLock()V

    .line 285
    iget v0, v1, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->waiters:I

    const/4 v12, 0x1

    add-int/2addr v0, v12

    iput v0, v1, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->waiters:I
    :try_end_4c
    .catchall {:try_start_43 .. :try_end_4c} :catchall_b9

    .line 289
    :cond_4c
    const-wide/32 v13, 0xf4240

    :try_start_4f
    div-long v5, v9, v13

    rem-long v13, v9, v13

    long-to-int v0, v13

    invoke-virtual {p0, v5, v6, v0}, Ljava/lang/Object;->wait(JI)V
    :try_end_57
    .catch Ljava/lang/InterruptedException; {:try_start_4f .. :try_end_57} :catch_5a
    .catchall {:try_start_4f .. :try_end_57} :catchall_58

    .line 296
    goto :goto_5f

    .line 308
    :catchall_58
    move-exception v0

    goto :goto_a5

    .line 290
    :catch_5a
    move-exception v0

    .line 291
    .local v0, "e":Ljava/lang/InterruptedException;
    if-nez p3, :cond_a4

    .line 294
    const/4 v0, 0x1

    .line 298
    move v11, v0

    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_5f
    :try_start_5f
    iget-boolean v0, v1, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->done:Z
    :try_end_61
    .catchall {:try_start_5f .. :try_end_61} :catchall_58

    if-eqz v0, :cond_7c

    .line 299
    nop

    .line 313
    move-object v5, p0

    .local v5, "this":Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;
    move-wide/from16 v2, p1

    .end local p1    # "timeoutNanos":J
    .local v2, "timeoutNanos":J
    move/from16 v4, p3

    .end local p3    # "interruptable":Z
    .local v4, "interruptable":Z
    move-wide v6, v7

    .end local v7    # "startTime":J
    .local v6, "startTime":J
    move-wide v8, v9

    .end local v9    # "waitTime":J
    .local v8, "waitTime":J
    move v10, v11

    .end local v11    # "interrupted":Z
    .local v10, "interrupted":Z
    :try_start_6c
    iget v0, v5, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->waiters:I

    sub-int/2addr v0, v12

    iput v0, v5, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->waiters:I

    .line 299
    monitor-exit p0
    :try_end_72
    .catchall {:try_start_6c .. :try_end_72} :catchall_b4

    .line 313
    if-eqz v10, :cond_7b

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 299
    :cond_7b
    return v12

    .line 301
    .end local v2    # "timeoutNanos":J
    .end local v4    # "interruptable":Z
    .end local v5    # "this":Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;
    .end local v6    # "startTime":J
    .end local v8    # "waitTime":J
    .end local v10    # "interrupted":Z
    .restart local v7    # "startTime":J
    .restart local v9    # "waitTime":J
    .restart local v11    # "interrupted":Z
    .restart local p1    # "timeoutNanos":J
    .restart local p3    # "interruptable":Z
    :cond_7c
    :try_start_7c
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    const/4 v0, 0x0

    sub-long/2addr v5, v7

    sub-long v9, p1, v5

    .line 302
    const-wide/16 v5, 0x0

    cmp-long v0, v9, v5

    if-gtz v0, :cond_4c

    .line 303
    iget-boolean v0, v1, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->done:Z
    :try_end_8c
    .catchall {:try_start_7c .. :try_end_8c} :catchall_58

    .line 313
    move v5, v11

    .end local v11    # "interrupted":Z
    .local v5, "interrupted":Z
    :try_start_8d
    iget v6, v1, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->waiters:I

    sub-int/2addr v6, v12

    iput v6, v1, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->waiters:I

    .line 303
    monitor-exit p0
    :try_end_93
    .catchall {:try_start_8d .. :try_end_93} :catchall_9d

    .line 313
    if-eqz v5, :cond_9c

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    .line 303
    :cond_9c
    return v0

    .line 310
    :catchall_9d
    move-exception v0

    move-wide/from16 v2, p1

    move/from16 v4, p3

    move v11, v5

    goto :goto_be

    .line 292
    .end local v5    # "interrupted":Z
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v11    # "interrupted":Z
    :cond_a4
    :try_start_a4
    throw v0
    :try_end_a5
    .catchall {:try_start_a4 .. :try_end_a5} :catchall_58

    .line 308
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_a5
    nop

    .line 313
    move-object v5, p0

    .local v5, "this":Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;
    move-wide/from16 v2, p1

    .end local p1    # "timeoutNanos":J
    .restart local v2    # "timeoutNanos":J
    move/from16 v4, p3

    .end local p3    # "interruptable":Z
    .restart local v4    # "interruptable":Z
    move-wide v6, v7

    .end local v7    # "startTime":J
    .restart local v6    # "startTime":J
    move-wide v8, v9

    .end local v9    # "waitTime":J
    .restart local v8    # "waitTime":J
    move v10, v11

    .end local v11    # "interrupted":Z
    .restart local v10    # "interrupted":Z
    :try_start_ae
    iget v11, v5, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->waiters:I

    sub-int/2addr v11, v12

    iput v11, v5, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->waiters:I

    .line 308
    throw v0
    :try_end_b4
    .catchall {:try_start_ae .. :try_end_b4} :catchall_b4

    .line 310
    :catchall_b4
    move-exception v0

    move v11, v10

    move-wide v9, v8

    move-wide v7, v6

    goto :goto_bf

    .end local v2    # "timeoutNanos":J
    .end local v4    # "interruptable":Z
    .end local v5    # "this":Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;
    .end local v6    # "startTime":J
    .end local v8    # "waitTime":J
    .end local v10    # "interrupted":Z
    .restart local v7    # "startTime":J
    .restart local v9    # "waitTime":J
    .restart local v11    # "interrupted":Z
    .restart local p1    # "timeoutNanos":J
    .restart local p3    # "interruptable":Z
    :catchall_b9
    move-exception v0

    move-wide/from16 v2, p1

    move/from16 v4, p3

    .end local p1    # "timeoutNanos":J
    .end local p3    # "interruptable":Z
    .restart local v2    # "timeoutNanos":J
    .restart local v4    # "interruptable":Z
    .restart local v5    # "this":Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;
    :goto_be
    move-object v5, v1

    :goto_bf
    :try_start_bf
    monitor-exit p0
    :try_end_c0
    .catchall {:try_start_bf .. :try_end_c0} :catchall_c3

    :try_start_c0
    throw v0
    :try_end_c1
    .catchall {:try_start_c0 .. :try_end_c1} :catchall_c1

    .line 312
    :catchall_c1
    move-exception v0

    goto :goto_cb

    .line 310
    :catchall_c3
    move-exception v0

    goto :goto_bf

    .line 312
    .end local v2    # "timeoutNanos":J
    .end local v4    # "interruptable":Z
    .end local v5    # "this":Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;
    .restart local p1    # "timeoutNanos":J
    .restart local p3    # "interruptable":Z
    :catchall_c5
    move-exception v0

    move-wide/from16 v2, p1

    move/from16 v4, p3

    move-object v5, v1

    .line 313
    .end local p1    # "timeoutNanos":J
    .end local p3    # "interruptable":Z
    .restart local v2    # "timeoutNanos":J
    .restart local v4    # "interruptable":Z
    .restart local v5    # "this":Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;
    :goto_cb
    move-wide v6, v7

    .end local v7    # "startTime":J
    .restart local v6    # "startTime":J
    move-wide v8, v9

    .end local v9    # "waitTime":J
    .restart local v8    # "waitTime":J
    move v10, v11

    .end local v11    # "interrupted":Z
    .restart local v10    # "interrupted":Z
    if-eqz v10, :cond_d7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Thread;->interrupt()V

    .line 312
    :cond_d7
    throw v0
.end method

.method private static checkDeadLock()V
    .registers 2

    .line 319
    sget-object v0, Lorg/jboss/netty/util/internal/DeadLockProofWorker;->PARENT:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_9

    .line 325
    return-void

    .line 320
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "await*() in I/O thread causes a dead lock or sudden performance drop. Use addListener() instead or call await*() from a different thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private notifyListener(Lorg/jboss/netty/channel/group/ChannelGroupFutureListener;)V
    .registers 6
    .param p1, "l"    # Lorg/jboss/netty/channel/group/ChannelGroupFutureListener;

    .line 365
    :try_start_0
    invoke-interface {p1, p0}, Lorg/jboss/netty/channel/group/ChannelGroupFutureListener;->operationComplete(Lorg/jboss/netty/channel/group/ChannelGroupFuture;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 372
    goto :goto_2e

    .line 366
    :catch_4
    move-exception v0

    .line 367
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v1}, Lorg/jboss/netty/logging/InternalLogger;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 368
    sget-object v1, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->logger:Lorg/jboss/netty/logging/InternalLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "An exception was thrown by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v3, Lorg/jboss/netty/channel/ChannelFutureListener;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 373
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_2e
    :goto_2e
    return-void
.end method

.method private notifyListeners()V
    .registers 4

    .line 350
    iget-object v0, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->firstListener:Lorg/jboss/netty/channel/group/ChannelGroupFutureListener;

    if-eqz v0, :cond_28

    .line 351
    iget-object v0, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->firstListener:Lorg/jboss/netty/channel/group/ChannelGroupFutureListener;

    invoke-direct {p0, v0}, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->notifyListener(Lorg/jboss/netty/channel/group/ChannelGroupFutureListener;)V

    .line 352
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->firstListener:Lorg/jboss/netty/channel/group/ChannelGroupFutureListener;

    .line 354
    iget-object v1, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->otherListeners:Ljava/util/List;

    if-eqz v1, :cond_28

    .line 355
    iget-object v1, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->otherListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jboss/netty/channel/group/ChannelGroupFutureListener;

    .line 356
    .local v2, "l":Lorg/jboss/netty/channel/group/ChannelGroupFutureListener;
    invoke-direct {p0, v2}, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->notifyListener(Lorg/jboss/netty/channel/group/ChannelGroupFutureListener;)V

    .line 357
    .end local v2    # "l":Lorg/jboss/netty/channel/group/ChannelGroupFutureListener;
    goto :goto_16

    .line 358
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_26
    iput-object v0, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->otherListeners:Ljava/util/List;

    .line 361
    :cond_28
    return-void
.end method


# virtual methods
.method public addListener(Lorg/jboss/netty/channel/group/ChannelGroupFutureListener;)V
    .registers 5
    .param p1, "listener"    # Lorg/jboss/netty/channel/group/ChannelGroupFutureListener;

    .line 155
    if-eqz p1, :cond_2c

    .line 159
    const/4 v0, 0x0

    .line 160
    .local v0, "notifyNow":Z
    monitor-enter p0

    .line 161
    :try_start_4
    iget-boolean v1, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->done:Z

    if-eqz v1, :cond_a

    .line 162
    const/4 v0, 0x1

    goto :goto_22

    .line 164
    :cond_a
    iget-object v1, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->firstListener:Lorg/jboss/netty/channel/group/ChannelGroupFutureListener;

    if-nez v1, :cond_11

    .line 165
    iput-object p1, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->firstListener:Lorg/jboss/netty/channel/group/ChannelGroupFutureListener;

    goto :goto_22

    .line 167
    :cond_11
    iget-object v1, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->otherListeners:Ljava/util/List;

    if-nez v1, :cond_1d

    .line 168
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->otherListeners:Ljava/util/List;

    .line 170
    :cond_1d
    iget-object v1, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->otherListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    :goto_22
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_4 .. :try_end_23} :catchall_29

    .line 175
    if-eqz v0, :cond_28

    .line 176
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->notifyListener(Lorg/jboss/netty/channel/group/ChannelGroupFutureListener;)V

    .line 178
    :cond_28
    return-void

    .line 173
    :catchall_29
    move-exception v1

    :try_start_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v1

    .line 156
    .end local v0    # "notifyNow":Z
    :cond_2c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "listener"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public await()Lorg/jboss/netty/channel/group/ChannelGroupFuture;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 201
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 205
    monitor-enter p0

    .line 206
    move-object v0, p0

    .local v0, "this":Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;
    :goto_8
    :try_start_8
    iget-boolean v1, v0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->done:Z

    if-nez v1, :cond_28

    .line 207
    invoke-static {}, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->checkDeadLock()V

    .line 208
    iget v1, v0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->waiters:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->waiters:I
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_2a

    .line 210
    :try_start_15
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_20

    .line 211
    nop

    .line 216
    :try_start_19
    iget v1, v0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->waiters:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->waiters:I

    .line 213
    goto :goto_8

    .line 212
    :catchall_20
    move-exception v1

    .line 216
    iget v2, v0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->waiters:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->waiters:I

    .line 212
    throw v1

    .line 215
    :cond_28
    monitor-exit p0

    .line 216
    return-object v0

    .line 215
    :catchall_2a
    move-exception v1

    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_19 .. :try_end_2c} :catchall_2a

    throw v1

    .line 202
    .end local v0    # "this":Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;
    :cond_2d
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method public await(J)Z
    .registers 6
    .param p1, "timeoutMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 225
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->await0(JZ)Z

    move-result v0

    return v0
.end method

.method public await(JLjava/util/concurrent/TimeUnit;)Z
    .registers 7
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 221
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->await0(JZ)Z

    move-result v0

    return v0
.end method

.method public awaitUninterruptibly()Lorg/jboss/netty/channel/group/ChannelGroupFuture;
    .registers 5

    .line 229
    const/4 v0, 0x0

    .line 230
    .local v0, "interrupted":Z
    monitor-enter p0

    .line 231
    move v1, v0

    move-object v0, p0

    .local v0, "this":Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;
    .local v1, "interrupted":Z
    :goto_4
    :try_start_4
    iget-boolean v2, v0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->done:Z

    if-nez v2, :cond_2a

    .line 232
    invoke-static {}, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->checkDeadLock()V

    .line 233
    iget v2, v0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->waiters:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->waiters:I
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_35

    .line 235
    :try_start_11
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_14} :catch_24
    .catchall {:try_start_11 .. :try_end_14} :catchall_1c

    .line 236
    nop

    .line 248
    :try_start_15
    iget v2, v0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->waiters:I

    :goto_17
    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->waiters:I

    .line 240
    goto :goto_4

    .line 239
    :catchall_1c
    move-exception v2

    .line 248
    iget v3, v0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->waiters:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->waiters:I

    .line 239
    throw v2

    .line 236
    :catch_24
    move-exception v2

    .line 237
    .local v2, "e":Ljava/lang/InterruptedException;
    const/4 v1, 0x1

    .line 238
    .end local v2    # "e":Ljava/lang/InterruptedException;
    nop

    .line 248
    iget v2, v0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->waiters:I

    goto :goto_17

    .line 242
    :cond_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_15 .. :try_end_2b} :catchall_35

    .line 244
    if-eqz v1, :cond_34

    .line 245
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 248
    :cond_34
    return-object v0

    .line 242
    :catchall_35
    move-exception v2

    :try_start_36
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw v2
.end method

.method public awaitUninterruptibly(J)Z
    .registers 6
    .param p1, "timeoutMillis"    # J

    .line 261
    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->await0(JZ)Z

    move-result v0
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_b} :catch_c

    return v0

    .line 262
    :catch_c
    move-exception v0

    .line 263
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1
.end method

.method public awaitUninterruptibly(JLjava/util/concurrent/TimeUnit;)Z
    .registers 7
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 253
    :try_start_0
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->await0(JZ)Z

    move-result v0
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_9} :catch_a

    return v0

    .line 254
    :catch_a
    move-exception v0

    .line 255
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1
.end method

.method public find(Ljava/lang/Integer;)Lorg/jboss/netty/channel/ChannelFuture;
    .registers 3
    .param p1, "channelId"    # Ljava/lang/Integer;

    .line 122
    iget-object v0, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->futures:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/ChannelFuture;

    return-object v0
.end method

.method public find(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;
    .registers 4
    .param p1, "channel"    # Lorg/jboss/netty/channel/Channel;

    .line 126
    iget-object v0, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->futures:Ljava/util/Map;

    invoke-interface {p1}, Lorg/jboss/netty/channel/Channel;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/ChannelFuture;

    return-object v0
.end method

.method public getGroup()Lorg/jboss/netty/channel/group/ChannelGroup;
    .registers 2

    .line 118
    iget-object v0, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->group:Lorg/jboss/netty/channel/group/ChannelGroup;

    return-object v0
.end method

.method public declared-synchronized isCompleteFailure()Z
    .registers 3

    monitor-enter p0

    .line 150
    :try_start_1
    iget-object v0, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->futures:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    .line 151
    .local v0, "futureCnt":I
    if-eqz v0, :cond_f

    iget v1, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->failureCount:I
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_12

    if-ne v1, v0, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    monitor-exit p0

    return v1

    .line 149
    .end local v0    # "futureCnt":I
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isCompleteSuccess()Z
    .registers 3

    monitor-enter p0

    .line 138
    :try_start_1
    iget v0, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->successCount:I

    iget-object v1, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->futures:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_10

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    monitor-exit p0

    return v0

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isDone()Z
    .registers 2

    monitor-enter p0

    .line 134
    :try_start_1
    iget-boolean v0, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->done:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isPartialFailure()Z
    .registers 3

    monitor-enter p0

    .line 146
    :try_start_1
    iget v0, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->failureCount:I

    if-eqz v0, :cond_11

    iget v0, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->failureCount:I

    iget-object v1, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->futures:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_14

    if-eq v0, v1, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    monitor-exit p0

    return v0

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isPartialSuccess()Z
    .registers 3

    monitor-enter p0

    .line 142
    :try_start_1
    iget v0, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->successCount:I

    if-eqz v0, :cond_11

    iget v0, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->successCount:I

    iget-object v1, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->futures:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_14

    if-eq v0, v1, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    monitor-exit p0

    return v0

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/jboss/netty/channel/ChannelFuture;",
            ">;"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->futures:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public removeListener(Lorg/jboss/netty/channel/group/ChannelGroupFutureListener;)V
    .registers 4
    .param p1, "listener"    # Lorg/jboss/netty/channel/group/ChannelGroupFutureListener;

    .line 181
    if-eqz p1, :cond_35

    .line 185
    monitor-enter p0

    .line 186
    :try_start_3
    iget-boolean v0, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->done:Z

    if-nez v0, :cond_30

    .line 187
    iget-object v0, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->firstListener:Lorg/jboss/netty/channel/group/ChannelGroupFutureListener;

    if-ne p1, v0, :cond_27

    .line 188
    iget-object v0, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->otherListeners:Ljava/util/List;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->otherListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_23

    .line 189
    iget-object v0, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->otherListeners:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/group/ChannelGroupFutureListener;

    iput-object v0, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->firstListener:Lorg/jboss/netty/channel/group/ChannelGroupFutureListener;

    goto :goto_30

    .line 191
    :cond_23
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->firstListener:Lorg/jboss/netty/channel/group/ChannelGroupFutureListener;

    goto :goto_30

    .line 193
    :cond_27
    iget-object v0, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->otherListeners:Ljava/util/List;

    if-eqz v0, :cond_30

    .line 194
    iget-object v0, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->otherListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 197
    :cond_30
    :goto_30
    monitor-exit p0

    .line 198
    return-void

    .line 197
    :catchall_32
    move-exception v0

    monitor-exit p0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw v0

    .line 182
    :cond_35
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "listener"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setDone()Z
    .registers 3

    .line 328
    monitor-enter p0

    .line 330
    :try_start_1
    iget-boolean v0, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->done:Z

    if-eqz v0, :cond_8

    .line 331
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 334
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->done:Z

    .line 335
    iget v1, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->waiters:I

    if-lez v1, :cond_12

    .line 336
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 338
    :cond_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_17

    .line 340
    invoke-direct {p0}, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->notifyListeners()V

    .line 341
    return v0

    .line 338
    :catchall_17
    move-exception v0

    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v0
.end method
