.class Lcom/google/common/util/concurrent/Futures$ListFuture;
.super Lcom/google/common/util/concurrent/AbstractFuture;
.source "Futures.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Futures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/AbstractFuture<",
        "Ljava/util/List<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field final allMustSucceed:Z

.field futures:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "+",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;>;"
        }
    .end annotation
.end field

.field final remaining:Ljava/util/concurrent/atomic/AtomicInteger;

.field values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableList;ZLjava/util/concurrent/Executor;)V
    .registers 6
    .param p2, "allMustSucceed"    # Z
    .param p3, "listenerExecutor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList<",
            "+",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;>;Z",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 1086
    .local p0, "this":Lcom/google/common/util/concurrent/Futures$ListFuture;, "Lcom/google/common/util/concurrent/Futures$ListFuture<TV;>;"
    .local p1, "futures":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<+Lcom/google/common/util/concurrent/ListenableFuture<+TV;>;>;"
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture;-><init>()V

    .line 1087
    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->futures:Lcom/google/common/collect/ImmutableList;

    .line 1088
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->values:Ljava/util/List;

    .line 1089
    iput-boolean p2, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->allMustSucceed:Z

    .line 1090
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->remaining:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1092
    invoke-direct {p0, p3}, Lcom/google/common/util/concurrent/Futures$ListFuture;->init(Ljava/util/concurrent/Executor;)V

    .line 1093
    return-void
.end method

.method static synthetic access$200(Lcom/google/common/util/concurrent/Futures$ListFuture;ILjava/util/concurrent/Future;)V
    .registers 3
    .param p0, "x0"    # Lcom/google/common/util/concurrent/Futures$ListFuture;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/util/concurrent/Future;

    .line 1069
    invoke-direct {p0, p1, p2}, Lcom/google/common/util/concurrent/Futures$ListFuture;->setOneValue(ILjava/util/concurrent/Future;)V

    return-void
.end method

.method private init(Ljava/util/concurrent/Executor;)V
    .registers 7
    .param p1, "listenerExecutor"    # Ljava/util/concurrent/Executor;

    .line 1097
    .local p0, "this":Lcom/google/common/util/concurrent/Futures$ListFuture;, "Lcom/google/common/util/concurrent/Futures$ListFuture<TV;>;"
    new-instance v0, Lcom/google/common/util/concurrent/Futures$ListFuture$1;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/Futures$ListFuture$1;-><init>(Lcom/google/common/util/concurrent/Futures$ListFuture;)V

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->sameThreadExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/common/util/concurrent/Futures$ListFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1112
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->futures:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1113
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->values:Ljava/util/List;

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/Futures$ListFuture;->set(Ljava/lang/Object;)Z

    .line 1114
    return-void

    .line 1118
    :cond_1e
    const/4 v0, 0x0

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_20
    iget-object v2, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->futures:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    if-ge v1, v2, :cond_31

    .line 1119
    iget-object v2, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->values:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1118
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 1129
    .end local v1    # "i":I
    :cond_31
    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->futures:Lcom/google/common/collect/ImmutableList;

    .line 1130
    .local v1, "localFutures":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<+Lcom/google/common/util/concurrent/ListenableFuture<+TV;>;>;"
    nop

    .local v0, "i":I
    :goto_34
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4c

    .line 1131
    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 1132
    .local v2, "listenable":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<+TV;>;"
    move v3, v0

    .line 1133
    .local v3, "index":I
    new-instance v4, Lcom/google/common/util/concurrent/Futures$ListFuture$2;

    invoke-direct {v4, p0, v3, v2}, Lcom/google/common/util/concurrent/Futures$ListFuture$2;-><init>(Lcom/google/common/util/concurrent/Futures$ListFuture;ILcom/google/common/util/concurrent/ListenableFuture;)V

    invoke-interface {v2, v4, p1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1130
    .end local v2    # "listenable":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<+TV;>;"
    .end local v3    # "index":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    .line 1140
    .end local v0    # "i":I
    :cond_4c
    return-void
.end method

.method private setOneValue(ILjava/util/concurrent/Future;)V
    .registers 8
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/Future<",
            "+TV;>;)V"
        }
    .end annotation

    .line 1146
    .local p0, "this":Lcom/google/common/util/concurrent/Futures$ListFuture;, "Lcom/google/common/util/concurrent/Futures$ListFuture<TV;>;"
    .local p2, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<+TV;>;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->values:Ljava/util/List;

    .line 1147
    .local v0, "localValues":Ljava/util/List;, "Ljava/util/List<TV;>;"
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Futures$ListFuture;->isDone()Z

    move-result v1

    if-nez v1, :cond_e4

    if-nez v0, :cond_c

    goto/16 :goto_e4

    .line 1157
    :cond_c
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_e
    invoke-interface {p2}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v3

    const-string v4, "Tried to set value from future which is not done"

    invoke-static {v3, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1159
    invoke-static {p2}, Lcom/google/common/util/concurrent/Uninterruptibles;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, p1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_1e
    .catch Ljava/util/concurrent/CancellationException; {:try_start_e .. :try_end_1e} :catch_a0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_e .. :try_end_1e} :catch_7e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_1e} :catch_60
    .catch Ljava/lang/Error; {:try_start_e .. :try_end_1e} :catch_37
    .catchall {:try_start_e .. :try_end_1e} :catchall_34

    .line 1182
    iget-object v3, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->remaining:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v3

    .line 1183
    .local v3, "newRemaining":I
    if-ltz v3, :cond_27

    goto :goto_28

    :cond_27
    const/4 v1, 0x0

    :goto_28
    const-string v2, "Less than 0 remaining futures"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1184
    if-nez v3, :cond_5f

    .line 1185
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->values:Ljava/util/List;

    .line 1186
    if-eqz v0, :cond_58

    goto :goto_50

    .line 1182
    .end local v3    # "newRemaining":I
    :catchall_34
    move-exception v3

    goto/16 :goto_bf

    .line 1178
    :catch_37
    move-exception v3

    .line 1180
    .local v3, "e":Ljava/lang/Error;
    :try_start_38
    invoke-virtual {p0, v3}, Lcom/google/common/util/concurrent/Futures$ListFuture;->setException(Ljava/lang/Throwable;)Z
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_34

    .line 1182
    .end local v3    # "e":Ljava/lang/Error;
    iget-object v3, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->remaining:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v3

    .line 1183
    .local v3, "newRemaining":I
    if-ltz v3, :cond_44

    goto :goto_45

    :cond_44
    const/4 v1, 0x0

    :goto_45
    const-string v2, "Less than 0 remaining futures"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1184
    if-nez v3, :cond_5f

    .line 1185
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->values:Ljava/util/List;

    .line 1186
    if-eqz v0, :cond_58

    .line 1187
    :goto_50
    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/common/util/concurrent/Futures$ListFuture;->set(Ljava/lang/Object;)Z

    goto :goto_5f

    .line 1189
    :cond_58
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Futures$ListFuture;->isDone()Z

    move-result v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 1192
    .end local v3    # "newRemaining":I
    :cond_5f
    :goto_5f
    goto :goto_be

    .line 1174
    :catch_60
    move-exception v3

    .line 1175
    .local v3, "e":Ljava/lang/RuntimeException;
    :try_start_61
    iget-boolean v4, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->allMustSucceed:Z

    if-eqz v4, :cond_68

    .line 1176
    invoke-virtual {p0, v3}, Lcom/google/common/util/concurrent/Futures$ListFuture;->setException(Ljava/lang/Throwable;)Z
    :try_end_68
    .catchall {:try_start_61 .. :try_end_68} :catchall_34

    .line 1182
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :cond_68
    iget-object v3, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->remaining:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v3

    .line 1183
    .local v3, "newRemaining":I
    if-ltz v3, :cond_71

    goto :goto_72

    :cond_71
    const/4 v1, 0x0

    :goto_72
    const-string v2, "Less than 0 remaining futures"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1184
    if-nez v3, :cond_5f

    .line 1185
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->values:Ljava/util/List;

    .line 1186
    if-eqz v0, :cond_58

    goto :goto_50

    .line 1168
    .end local v3    # "newRemaining":I
    :catch_7e
    move-exception v3

    .line 1169
    .local v3, "e":Ljava/util/concurrent/ExecutionException;
    :try_start_7f
    iget-boolean v4, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->allMustSucceed:Z

    if-eqz v4, :cond_8a

    .line 1172
    invoke-virtual {v3}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/common/util/concurrent/Futures$ListFuture;->setException(Ljava/lang/Throwable;)Z
    :try_end_8a
    .catchall {:try_start_7f .. :try_end_8a} :catchall_34

    .line 1182
    .end local v3    # "e":Ljava/util/concurrent/ExecutionException;
    :cond_8a
    iget-object v3, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->remaining:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v3

    .line 1183
    .local v3, "newRemaining":I
    if-ltz v3, :cond_93

    goto :goto_94

    :cond_93
    const/4 v1, 0x0

    :goto_94
    const-string v2, "Less than 0 remaining futures"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1184
    if-nez v3, :cond_5f

    .line 1185
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->values:Ljava/util/List;

    .line 1186
    if-eqz v0, :cond_58

    goto :goto_50

    .line 1160
    .end local v3    # "newRemaining":I
    :catch_a0
    move-exception v3

    .line 1161
    .local v3, "e":Ljava/util/concurrent/CancellationException;
    :try_start_a1
    iget-boolean v4, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->allMustSucceed:Z

    if-eqz v4, :cond_a8

    .line 1166
    invoke-virtual {p0, v2}, Lcom/google/common/util/concurrent/Futures$ListFuture;->cancel(Z)Z
    :try_end_a8
    .catchall {:try_start_a1 .. :try_end_a8} :catchall_34

    .line 1182
    .end local v3    # "e":Ljava/util/concurrent/CancellationException;
    :cond_a8
    iget-object v3, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->remaining:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v3

    .line 1183
    .local v3, "newRemaining":I
    if-ltz v3, :cond_b1

    goto :goto_b2

    :cond_b1
    const/4 v1, 0x0

    :goto_b2
    const-string v2, "Less than 0 remaining futures"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1184
    if-nez v3, :cond_5f

    .line 1185
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->values:Ljava/util/List;

    .line 1186
    if-eqz v0, :cond_58

    goto :goto_50

    .line 1193
    .end local v3    # "newRemaining":I
    :goto_be
    return-void

    .line 1182
    :goto_bf
    iget-object v4, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->remaining:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v4

    .line 1183
    .local v4, "newRemaining":I
    if-ltz v4, :cond_c8

    goto :goto_c9

    :cond_c8
    const/4 v1, 0x0

    :goto_c9
    const-string v2, "Less than 0 remaining futures"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1184
    if-nez v4, :cond_e3

    .line 1185
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->values:Ljava/util/List;

    .line 1186
    if-eqz v0, :cond_dc

    .line 1187
    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/common/util/concurrent/Futures$ListFuture;->set(Ljava/lang/Object;)Z

    goto :goto_e3

    .line 1189
    :cond_dc
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Futures$ListFuture;->isDone()Z

    move-result v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 1192
    .end local v4    # "newRemaining":I
    :cond_e3
    :goto_e3
    throw v3

    .line 1151
    :cond_e4
    :goto_e4
    iget-boolean v1, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->allMustSucceed:Z

    const-string v2, "Future was done before all dependencies completed"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1153
    return-void
.end method
