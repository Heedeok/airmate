.class public Lorg/apache/xmlrpc/util/ThreadPool;
.super Ljava/lang/Object;
.source "ThreadPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlrpc/util/ThreadPool$Poolable;,
        Lorg/apache/xmlrpc/util/ThreadPool$InterruptableTask;,
        Lorg/apache/xmlrpc/util/ThreadPool$Task;
    }
.end annotation


# instance fields
.field private final maxSize:I

.field private num:I

.field private final runningThreads:Ljava/util/List;

.field private final threadGroup:Ljava/lang/ThreadGroup;

.field private final waitingTasks:Ljava/util/List;

.field private final waitingThreads:Ljava/util/List;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 4
    .param p1, "pMaxSize"    # I
    .param p2, "pName"    # Ljava/lang/String;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlrpc/util/ThreadPool;->waitingThreads:Ljava/util/List;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlrpc/util/ThreadPool;->runningThreads:Ljava/util/List;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlrpc/util/ThreadPool;->waitingTasks:Ljava/util/List;

    .line 124
    iput p1, p0, Lorg/apache/xmlrpc/util/ThreadPool;->maxSize:I

    .line 125
    new-instance v0, Ljava/lang/ThreadGroup;

    invoke-direct {v0, p2}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/xmlrpc/util/ThreadPool;->threadGroup:Ljava/lang/ThreadGroup;

    .line 126
    return-void
.end method

.method static synthetic access$300(Lorg/apache/xmlrpc/util/ThreadPool;Lorg/apache/xmlrpc/util/ThreadPool$Poolable;)V
    .registers 2
    .param p0, "x0"    # Lorg/apache/xmlrpc/util/ThreadPool;
    .param p1, "x1"    # Lorg/apache/xmlrpc/util/ThreadPool$Poolable;

    .line 28
    invoke-direct {p0, p1}, Lorg/apache/xmlrpc/util/ThreadPool;->remove(Lorg/apache/xmlrpc/util/ThreadPool$Poolable;)V

    return-void
.end method

.method private declared-synchronized getPoolable(Lorg/apache/xmlrpc/util/ThreadPool$Task;Z)Lorg/apache/xmlrpc/util/ThreadPool$Poolable;
    .registers 7
    .param p1, "pTask"    # Lorg/apache/xmlrpc/util/ThreadPool$Task;
    .param p2, "pQueue"    # Z

    monitor-enter p0

    .line 179
    :try_start_1
    iget v0, p0, Lorg/apache/xmlrpc/util/ThreadPool;->maxSize:I

    if-eqz v0, :cond_19

    iget-object v0, p0, Lorg/apache/xmlrpc/util/ThreadPool;->runningThreads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lorg/apache/xmlrpc/util/ThreadPool;->maxSize:I

    if-lt v0, v1, :cond_19

    .line 180
    if-eqz p2, :cond_16

    .line 181
    iget-object v0, p0, Lorg/apache/xmlrpc/util/ThreadPool;->waitingTasks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_46

    .line 183
    :cond_16
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 186
    :cond_19
    :try_start_19
    iget-object v0, p0, Lorg/apache/xmlrpc/util/ThreadPool;->waitingThreads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_32

    .line 187
    iget-object v0, p0, Lorg/apache/xmlrpc/util/ThreadPool;->waitingThreads:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/xmlrpc/util/ThreadPool;->waitingThreads:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlrpc/util/ThreadPool$Poolable;

    goto :goto_3f

    .line 189
    :cond_32
    new-instance v0, Lorg/apache/xmlrpc/util/ThreadPool$Poolable;

    iget-object v1, p0, Lorg/apache/xmlrpc/util/ThreadPool;->threadGroup:Ljava/lang/ThreadGroup;

    iget v2, p0, Lorg/apache/xmlrpc/util/ThreadPool;->num:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/xmlrpc/util/ThreadPool;->num:I

    invoke-direct {v0, p0, v1, v2}, Lorg/apache/xmlrpc/util/ThreadPool$Poolable;-><init>(Lorg/apache/xmlrpc/util/ThreadPool;Ljava/lang/ThreadGroup;I)V

    .line 191
    .local v0, "poolable":Lorg/apache/xmlrpc/util/ThreadPool$Poolable;
    :goto_3f
    iget-object v1, p0, Lorg/apache/xmlrpc/util/ThreadPool;->runningThreads:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_44
    .catchall {:try_start_19 .. :try_end_44} :catchall_46

    .line 192
    monitor-exit p0

    return-object v0

    .line 178
    .end local v0    # "poolable":Lorg/apache/xmlrpc/util/ThreadPool$Poolable;
    .end local p1    # "pTask":Lorg/apache/xmlrpc/util/ThreadPool$Task;
    .end local p2    # "pQueue":Z
    :catchall_46
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized remove(Lorg/apache/xmlrpc/util/ThreadPool$Poolable;)V
    .registers 3
    .param p1, "pPoolable"    # Lorg/apache/xmlrpc/util/ThreadPool$Poolable;

    monitor-enter p0

    .line 129
    :try_start_1
    iget-object v0, p0, Lorg/apache/xmlrpc/util/ThreadPool;->runningThreads:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 130
    iget-object v0, p0, Lorg/apache/xmlrpc/util/ThreadPool;->waitingThreads:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 131
    monitor-exit p0

    return-void

    .line 128
    .end local p1    # "pPoolable":Lorg/apache/xmlrpc/util/ThreadPool$Poolable;
    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public addTask(Lorg/apache/xmlrpc/util/ThreadPool$Task;)Z
    .registers 4
    .param p1, "pTask"    # Lorg/apache/xmlrpc/util/ThreadPool$Task;

    .line 202
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/xmlrpc/util/ThreadPool;->getPoolable(Lorg/apache/xmlrpc/util/ThreadPool$Task;Z)Lorg/apache/xmlrpc/util/ThreadPool$Poolable;

    move-result-object v1

    .line 203
    .local v1, "poolable":Lorg/apache/xmlrpc/util/ThreadPool$Poolable;
    if-eqz v1, :cond_b

    .line 204
    invoke-virtual {v1, p1}, Lorg/apache/xmlrpc/util/ThreadPool$Poolable;->start(Lorg/apache/xmlrpc/util/ThreadPool$Task;)V

    .line 205
    return v0

    .line 207
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxThreads()I
    .registers 2

    .line 226
    iget v0, p0, Lorg/apache/xmlrpc/util/ThreadPool;->maxSize:I

    return v0
.end method

.method public declared-synchronized getNumThreads()I
    .registers 2

    monitor-enter p0

    .line 231
    :try_start_1
    iget v0, p0, Lorg/apache/xmlrpc/util/ThreadPool;->num:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method repool(Lorg/apache/xmlrpc/util/ThreadPool$Poolable;)V
    .registers 7
    .param p1, "pPoolable"    # Lorg/apache/xmlrpc/util/ThreadPool$Poolable;

    .line 134
    const/4 v0, 0x0

    .line 135
    .local v0, "discarding":Z
    const/4 v1, 0x0

    .line 136
    .local v1, "task":Lorg/apache/xmlrpc/util/ThreadPool$Task;
    const/4 v2, 0x0

    .line 137
    .local v2, "poolable":Lorg/apache/xmlrpc/util/ThreadPool$Poolable;
    monitor-enter p0

    .line 138
    :try_start_4
    iget-object v3, p0, Lorg/apache/xmlrpc/util/ThreadPool;->runningThreads:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 139
    iget v3, p0, Lorg/apache/xmlrpc/util/ThreadPool;->maxSize:I

    if-eqz v3, :cond_23

    iget-object v3, p0, Lorg/apache/xmlrpc/util/ThreadPool;->runningThreads:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lorg/apache/xmlrpc/util/ThreadPool;->waitingThreads:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Lorg/apache/xmlrpc/util/ThreadPool;->maxSize:I

    if-lt v3, v4, :cond_23

    .line 140
    const/4 v0, 0x1

    goto :goto_49

    .line 142
    :cond_23
    iget-object v3, p0, Lorg/apache/xmlrpc/util/ThreadPool;->waitingThreads:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    iget-object v3, p0, Lorg/apache/xmlrpc/util/ThreadPool;->waitingTasks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_49

    .line 144
    iget-object v3, p0, Lorg/apache/xmlrpc/util/ThreadPool;->waitingTasks:Ljava/util/List;

    iget-object v4, p0, Lorg/apache/xmlrpc/util/ThreadPool;->waitingTasks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xmlrpc/util/ThreadPool$Task;

    move-object v1, v3

    .line 145
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lorg/apache/xmlrpc/util/ThreadPool;->getPoolable(Lorg/apache/xmlrpc/util/ThreadPool$Task;Z)Lorg/apache/xmlrpc/util/ThreadPool$Poolable;

    move-result-object v3

    move-object v2, v3

    goto :goto_49

    .line 149
    :cond_48
    const/4 v0, 0x1

    .line 151
    :cond_49
    :goto_49
    if-eqz v0, :cond_4e

    .line 152
    invoke-direct {p0, p1}, Lorg/apache/xmlrpc/util/ThreadPool;->remove(Lorg/apache/xmlrpc/util/ThreadPool$Poolable;)V

    .line 154
    :cond_4e
    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_4 .. :try_end_4f} :catchall_5a

    .line 155
    if-eqz v2, :cond_54

    .line 156
    invoke-virtual {v2, v1}, Lorg/apache/xmlrpc/util/ThreadPool$Poolable;->start(Lorg/apache/xmlrpc/util/ThreadPool$Task;)V

    .line 158
    :cond_54
    if-eqz v0, :cond_59

    .line 159
    invoke-virtual {p1}, Lorg/apache/xmlrpc/util/ThreadPool$Poolable;->shutdown()V

    .line 161
    :cond_59
    return-void

    .line 154
    :catchall_5a
    move-exception v3

    :try_start_5b
    monitor-exit p0
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    throw v3
.end method

.method public declared-synchronized shutdown()V
    .registers 3

    monitor-enter p0

    .line 213
    :goto_1
    :try_start_1
    iget-object v0, p0, Lorg/apache/xmlrpc/util/ThreadPool;->waitingThreads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 214
    iget-object v0, p0, Lorg/apache/xmlrpc/util/ThreadPool;->waitingThreads:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/xmlrpc/util/ThreadPool;->waitingThreads:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlrpc/util/ThreadPool$Poolable;

    .line 215
    .local v0, "poolable":Lorg/apache/xmlrpc/util/ThreadPool$Poolable;
    invoke-virtual {v0}, Lorg/apache/xmlrpc/util/ThreadPool$Poolable;->shutdown()V

    .line 216
    .end local v0    # "poolable":Lorg/apache/xmlrpc/util/ThreadPool$Poolable;
    goto :goto_1

    .line 217
    :cond_1d
    :goto_1d
    iget-object v0, p0, Lorg/apache/xmlrpc/util/ThreadPool;->runningThreads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_39

    .line 218
    iget-object v0, p0, Lorg/apache/xmlrpc/util/ThreadPool;->runningThreads:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/xmlrpc/util/ThreadPool;->runningThreads:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlrpc/util/ThreadPool$Poolable;

    .line 219
    .restart local v0    # "poolable":Lorg/apache/xmlrpc/util/ThreadPool$Poolable;
    invoke-virtual {v0}, Lorg/apache/xmlrpc/util/ThreadPool$Poolable;->shutdown()V
    :try_end_38
    .catchall {:try_start_1 .. :try_end_38} :catchall_3b

    .line 220
    .end local v0    # "poolable":Lorg/apache/xmlrpc/util/ThreadPool$Poolable;
    goto :goto_1d

    .line 221
    :cond_39
    monitor-exit p0

    return-void

    .line 212
    :catchall_3b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startTask(Lorg/apache/xmlrpc/util/ThreadPool$Task;)Z
    .registers 4
    .param p1, "pTask"    # Lorg/apache/xmlrpc/util/ThreadPool$Task;

    .line 170
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/xmlrpc/util/ThreadPool;->getPoolable(Lorg/apache/xmlrpc/util/ThreadPool$Task;Z)Lorg/apache/xmlrpc/util/ThreadPool$Poolable;

    move-result-object v1

    .line 171
    .local v1, "poolable":Lorg/apache/xmlrpc/util/ThreadPool$Poolable;
    if-nez v1, :cond_8

    .line 172
    return v0

    .line 174
    :cond_8
    invoke-virtual {v1, p1}, Lorg/apache/xmlrpc/util/ThreadPool$Poolable;->start(Lorg/apache/xmlrpc/util/ThreadPool$Task;)V

    .line 175
    const/4 v0, 0x1

    return v0
.end method
