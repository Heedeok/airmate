.class public Lorg/ros/internal/node/client/Registrar;
.super Ljava/lang/Object;
.source "Registrar.java"

# interfaces
.implements Lorg/ros/internal/node/topic/TopicParticipantManagerListener;
.implements Lorg/ros/internal/node/service/ServiceManagerListener;


# static fields
.field private static final DEBUG:Z = true

.field private static final SHUTDOWN_TIMEOUT:I = 0x5

.field private static final SHUTDOWN_TIMEOUT_UNITS:Ljava/util/concurrent/TimeUnit;

.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field private final executorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private final masterClient:Lorg/ros/internal/node/client/MasterClient;

.field private nodeIdentifier:Lorg/ros/internal/node/server/NodeIdentifier;

.field private final retryingExecutorService:Lorg/ros/concurrent/RetryingExecutorService;

.field private running:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 54
    const-class v0, Lorg/ros/internal/node/client/Registrar;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/ros/internal/node/client/Registrar;->log:Lorg/apache/commons/logging/Log;

    .line 57
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lorg/ros/internal/node/client/Registrar;->SHUTDOWN_TIMEOUT_UNITS:Ljava/util/concurrent/TimeUnit;

    return-void
.end method

.method public constructor <init>(Lorg/ros/internal/node/client/MasterClient;Ljava/util/concurrent/ScheduledExecutorService;)V
    .registers 6
    .param p1, "masterClient"    # Lorg/ros/internal/node/client/MasterClient;
    .param p2, "executorService"    # Ljava/util/concurrent/ScheduledExecutorService;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lorg/ros/internal/node/client/Registrar;->masterClient:Lorg/ros/internal/node/client/MasterClient;

    .line 75
    iput-object p2, p0, Lorg/ros/internal/node/client/Registrar;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 76
    new-instance v0, Lorg/ros/concurrent/RetryingExecutorService;

    invoke-direct {v0, p2}, Lorg/ros/concurrent/RetryingExecutorService;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    iput-object v0, p0, Lorg/ros/internal/node/client/Registrar;->retryingExecutorService:Lorg/ros/concurrent/RetryingExecutorService;

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/ros/internal/node/client/Registrar;->nodeIdentifier:Lorg/ros/internal/node/server/NodeIdentifier;

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/ros/internal/node/client/Registrar;->running:Z

    .line 80
    sget-object v0, Lorg/ros/internal/node/client/Registrar;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MasterXmlRpcEndpoint URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/ros/internal/node/client/MasterClient;->getRemoteUri()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 82
    return-void
.end method

.method static synthetic access$000(Lorg/ros/internal/node/client/Registrar;)Lorg/ros/internal/node/client/MasterClient;
    .registers 2
    .param p0, "x0"    # Lorg/ros/internal/node/client/Registrar;

    .line 51
    iget-object v0, p0, Lorg/ros/internal/node/client/Registrar;->masterClient:Lorg/ros/internal/node/client/MasterClient;

    return-object v0
.end method

.method static synthetic access$100(Lorg/ros/internal/node/client/Registrar;Ljava/util/concurrent/Callable;)Z
    .registers 3
    .param p0, "x0"    # Lorg/ros/internal/node/client/Registrar;
    .param p1, "x1"    # Ljava/util/concurrent/Callable;

    .line 51
    invoke-direct {p0, p1}, Lorg/ros/internal/node/client/Registrar;->callMaster(Ljava/util/concurrent/Callable;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lorg/ros/internal/node/client/Registrar;)Lorg/ros/internal/node/server/NodeIdentifier;
    .registers 2
    .param p0, "x0"    # Lorg/ros/internal/node/client/Registrar;

    .line 51
    iget-object v0, p0, Lorg/ros/internal/node/client/Registrar;->nodeIdentifier:Lorg/ros/internal/node/server/NodeIdentifier;

    return-object v0
.end method

.method private callMaster(Ljava/util/concurrent/Callable;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "Lorg/ros/internal/node/response/Response<",
            "TT;>;>;)Z"
        }
    .end annotation

    .line 108
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Lorg/ros/internal/node/response/Response<TT;>;>;"
    iget-object v0, p0, Lorg/ros/internal/node/client/Registrar;->nodeIdentifier:Lorg/ros/internal/node/server/NodeIdentifier;

    const-string v1, "Registrar not started."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    :try_start_7
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ros/internal/node/response/Response;

    .line 113
    .local v0, "response":Lorg/ros/internal/node/response/Response;, "Lorg/ros/internal/node/response/Response<TT;>;"
    sget-object v1, Lorg/ros/internal/node/client/Registrar;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1, v0}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 115
    invoke-virtual {v0}, Lorg/ros/internal/node/response/Response;->isSuccess()Z

    move-result v1
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_16} :catch_18

    move v0, v1

    .line 123
    .local v0, "success":Z
    goto :goto_21

    .line 116
    .end local v0    # "success":Z
    :catch_18
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lorg/ros/internal/node/client/Registrar;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "Exception caught while communicating with master."

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 122
    const/4 v0, 0x0

    .line 124
    .local v0, "success":Z
    :goto_21
    return v0
.end method

.method private submit(Ljava/util/concurrent/Callable;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 99
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Boolean;>;"
    iget-boolean v0, p0, Lorg/ros/internal/node/client/Registrar;->running:Z

    if-eqz v0, :cond_b

    .line 100
    iget-object v0, p0, Lorg/ros/internal/node/client/Registrar;->retryingExecutorService:Lorg/ros/concurrent/RetryingExecutorService;

    invoke-virtual {v0, p1}, Lorg/ros/concurrent/RetryingExecutorService;->submit(Ljava/util/concurrent/Callable;)V

    .line 101
    const/4 v0, 0x1

    return v0

    .line 103
    :cond_b
    sget-object v0, Lorg/ros/internal/node/client/Registrar;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "Registrar no longer running, request ignored."

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 104
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public onPublisherAdded(Lorg/ros/internal/node/topic/DefaultPublisher;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/internal/node/topic/DefaultPublisher<",
            "*>;)V"
        }
    .end annotation

    .line 130
    .local p1, "publisher":Lorg/ros/internal/node/topic/DefaultPublisher;, "Lorg/ros/internal/node/topic/DefaultPublisher<*>;"
    sget-object v0, Lorg/ros/internal/node/client/Registrar;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registering publisher: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 132
    new-instance v0, Lorg/ros/internal/node/client/Registrar$1;

    invoke-direct {v0, p0, p1}, Lorg/ros/internal/node/client/Registrar$1;-><init>(Lorg/ros/internal/node/client/Registrar;Lorg/ros/internal/node/topic/DefaultPublisher;)V

    invoke-direct {p0, v0}, Lorg/ros/internal/node/client/Registrar;->submit(Ljava/util/concurrent/Callable;)Z

    move-result v0

    .line 149
    .local v0, "submitted":Z
    if-nez v0, :cond_2b

    .line 150
    iget-object v1, p0, Lorg/ros/internal/node/client/Registrar;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lorg/ros/internal/node/client/Registrar$2;

    invoke-direct {v2, p0, p1}, Lorg/ros/internal/node/client/Registrar$2;-><init>(Lorg/ros/internal/node/client/Registrar;Lorg/ros/internal/node/topic/DefaultPublisher;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 157
    :cond_2b
    return-void
.end method

.method public onPublisherRemoved(Lorg/ros/internal/node/topic/DefaultPublisher;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/internal/node/topic/DefaultPublisher<",
            "*>;)V"
        }
    .end annotation

    .line 162
    .local p1, "publisher":Lorg/ros/internal/node/topic/DefaultPublisher;, "Lorg/ros/internal/node/topic/DefaultPublisher<*>;"
    sget-object v0, Lorg/ros/internal/node/client/Registrar;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unregistering publisher: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 164
    new-instance v0, Lorg/ros/internal/node/client/Registrar$3;

    invoke-direct {v0, p0, p1}, Lorg/ros/internal/node/client/Registrar$3;-><init>(Lorg/ros/internal/node/client/Registrar;Lorg/ros/internal/node/topic/DefaultPublisher;)V

    invoke-direct {p0, v0}, Lorg/ros/internal/node/client/Registrar;->submit(Ljava/util/concurrent/Callable;)Z

    move-result v0

    .line 181
    .local v0, "submitted":Z
    if-nez v0, :cond_2b

    .line 182
    iget-object v1, p0, Lorg/ros/internal/node/client/Registrar;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lorg/ros/internal/node/client/Registrar$4;

    invoke-direct {v2, p0, p1}, Lorg/ros/internal/node/client/Registrar$4;-><init>(Lorg/ros/internal/node/client/Registrar;Lorg/ros/internal/node/topic/DefaultPublisher;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 189
    :cond_2b
    return-void
.end method

.method public onServiceServerAdded(Lorg/ros/internal/node/service/DefaultServiceServer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/internal/node/service/DefaultServiceServer<",
            "**>;)V"
        }
    .end annotation

    .line 263
    .local p1, "serviceServer":Lorg/ros/internal/node/service/DefaultServiceServer;, "Lorg/ros/internal/node/service/DefaultServiceServer<**>;"
    sget-object v0, Lorg/ros/internal/node/client/Registrar;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registering service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 265
    new-instance v0, Lorg/ros/internal/node/client/Registrar$9;

    invoke-direct {v0, p0, p1}, Lorg/ros/internal/node/client/Registrar$9;-><init>(Lorg/ros/internal/node/client/Registrar;Lorg/ros/internal/node/service/DefaultServiceServer;)V

    invoke-direct {p0, v0}, Lorg/ros/internal/node/client/Registrar;->submit(Ljava/util/concurrent/Callable;)Z

    move-result v0

    .line 282
    .local v0, "submitted":Z
    if-nez v0, :cond_2b

    .line 283
    iget-object v1, p0, Lorg/ros/internal/node/client/Registrar;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lorg/ros/internal/node/client/Registrar$10;

    invoke-direct {v2, p0, p1}, Lorg/ros/internal/node/client/Registrar$10;-><init>(Lorg/ros/internal/node/client/Registrar;Lorg/ros/internal/node/service/DefaultServiceServer;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 290
    :cond_2b
    return-void
.end method

.method public onServiceServerRemoved(Lorg/ros/internal/node/service/DefaultServiceServer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/internal/node/service/DefaultServiceServer<",
            "**>;)V"
        }
    .end annotation

    .line 295
    .local p1, "serviceServer":Lorg/ros/internal/node/service/DefaultServiceServer;, "Lorg/ros/internal/node/service/DefaultServiceServer<**>;"
    sget-object v0, Lorg/ros/internal/node/client/Registrar;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unregistering service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 297
    new-instance v0, Lorg/ros/internal/node/client/Registrar$11;

    invoke-direct {v0, p0, p1}, Lorg/ros/internal/node/client/Registrar$11;-><init>(Lorg/ros/internal/node/client/Registrar;Lorg/ros/internal/node/service/DefaultServiceServer;)V

    invoke-direct {p0, v0}, Lorg/ros/internal/node/client/Registrar;->submit(Ljava/util/concurrent/Callable;)Z

    move-result v0

    .line 314
    .local v0, "submitted":Z
    if-nez v0, :cond_2b

    .line 315
    iget-object v1, p0, Lorg/ros/internal/node/client/Registrar;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lorg/ros/internal/node/client/Registrar$12;

    invoke-direct {v2, p0, p1}, Lorg/ros/internal/node/client/Registrar$12;-><init>(Lorg/ros/internal/node/client/Registrar;Lorg/ros/internal/node/service/DefaultServiceServer;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 322
    :cond_2b
    return-void
.end method

.method public onSubscriberAdded(Lorg/ros/internal/node/topic/DefaultSubscriber;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/internal/node/topic/DefaultSubscriber<",
            "*>;)V"
        }
    .end annotation

    .line 194
    .local p1, "subscriber":Lorg/ros/internal/node/topic/DefaultSubscriber;, "Lorg/ros/internal/node/topic/DefaultSubscriber<*>;"
    sget-object v0, Lorg/ros/internal/node/client/Registrar;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registering subscriber: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 196
    new-instance v0, Lorg/ros/internal/node/client/Registrar$5;

    invoke-direct {v0, p0, p1}, Lorg/ros/internal/node/client/Registrar$5;-><init>(Lorg/ros/internal/node/client/Registrar;Lorg/ros/internal/node/topic/DefaultSubscriber;)V

    invoke-direct {p0, v0}, Lorg/ros/internal/node/client/Registrar;->submit(Ljava/util/concurrent/Callable;)Z

    move-result v0

    .line 218
    .local v0, "submitted":Z
    if-nez v0, :cond_2b

    .line 219
    iget-object v1, p0, Lorg/ros/internal/node/client/Registrar;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lorg/ros/internal/node/client/Registrar$6;

    invoke-direct {v2, p0, p1}, Lorg/ros/internal/node/client/Registrar$6;-><init>(Lorg/ros/internal/node/client/Registrar;Lorg/ros/internal/node/topic/DefaultSubscriber;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 226
    :cond_2b
    return-void
.end method

.method public onSubscriberRemoved(Lorg/ros/internal/node/topic/DefaultSubscriber;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/internal/node/topic/DefaultSubscriber<",
            "*>;)V"
        }
    .end annotation

    .line 231
    .local p1, "subscriber":Lorg/ros/internal/node/topic/DefaultSubscriber;, "Lorg/ros/internal/node/topic/DefaultSubscriber<*>;"
    sget-object v0, Lorg/ros/internal/node/client/Registrar;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unregistering subscriber: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 233
    new-instance v0, Lorg/ros/internal/node/client/Registrar$7;

    invoke-direct {v0, p0, p1}, Lorg/ros/internal/node/client/Registrar$7;-><init>(Lorg/ros/internal/node/client/Registrar;Lorg/ros/internal/node/topic/DefaultSubscriber;)V

    invoke-direct {p0, v0}, Lorg/ros/internal/node/client/Registrar;->submit(Ljava/util/concurrent/Callable;)Z

    move-result v0

    .line 250
    .local v0, "submitted":Z
    if-nez v0, :cond_2b

    .line 251
    iget-object v1, p0, Lorg/ros/internal/node/client/Registrar;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lorg/ros/internal/node/client/Registrar$8;

    invoke-direct {v2, p0, p1}, Lorg/ros/internal/node/client/Registrar$8;-><init>(Lorg/ros/internal/node/client/Registrar;Lorg/ros/internal/node/topic/DefaultSubscriber;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 258
    :cond_2b
    return-void
.end method

.method public setRetryDelay(JLjava/util/concurrent/TimeUnit;)V
    .registers 5
    .param p1, "delay"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 95
    iget-object v0, p0, Lorg/ros/internal/node/client/Registrar;->retryingExecutorService:Lorg/ros/concurrent/RetryingExecutorService;

    invoke-virtual {v0, p1, p2, p3}, Lorg/ros/concurrent/RetryingExecutorService;->setRetryDelay(JLjava/util/concurrent/TimeUnit;)V

    .line 96
    return-void
.end method

.method public shutdown()V
    .registers 5

    .line 351
    iget-boolean v0, p0, Lorg/ros/internal/node/client/Registrar;->running:Z

    if-nez v0, :cond_5

    .line 352
    return-void

    .line 354
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/ros/internal/node/client/Registrar;->running:Z

    .line 356
    :try_start_8
    iget-object v0, p0, Lorg/ros/internal/node/client/Registrar;->retryingExecutorService:Lorg/ros/concurrent/RetryingExecutorService;

    const-wide/16 v1, 0x5

    sget-object v3, Lorg/ros/internal/node/client/Registrar;->SHUTDOWN_TIMEOUT_UNITS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lorg/ros/concurrent/RetryingExecutorService;->shutdown(JLjava/util/concurrent/TimeUnit;)V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_11} :catch_13

    .line 359
    nop

    .line 360
    return-void

    .line 357
    :catch_13
    move-exception v0

    .line 358
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Lorg/ros/exception/RosRuntimeException;

    invoke-direct {v1, v0}, Lorg/ros/exception/RosRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public start(Lorg/ros/internal/node/server/NodeIdentifier;)V
    .registers 5
    .param p1, "nodeIdentifier"    # Lorg/ros/internal/node/server/NodeIdentifier;

    .line 333
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    iget-object v0, p0, Lorg/ros/internal/node/client/Registrar;->nodeIdentifier:Lorg/ros/internal/node/server/NodeIdentifier;

    const/4 v1, 0x1

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    const-string v2, "Registrar already started."

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 335
    iput-object p1, p0, Lorg/ros/internal/node/client/Registrar;->nodeIdentifier:Lorg/ros/internal/node/server/NodeIdentifier;

    .line 336
    iput-boolean v1, p0, Lorg/ros/internal/node/client/Registrar;->running:Z

    .line 337
    return-void
.end method
