.class Lorg/apache/xmlrpc/util/ThreadPool$Poolable;
.super Ljava/lang/Object;
.source "ThreadPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlrpc/util/ThreadPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Poolable"
.end annotation


# instance fields
.field private volatile shuttingDown:Z

.field private task:Lorg/apache/xmlrpc/util/ThreadPool$Task;

.field final synthetic this$0:Lorg/apache/xmlrpc/util/ThreadPool;

.field private thread:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Lorg/apache/xmlrpc/util/ThreadPool;Ljava/lang/ThreadGroup;I)V
    .registers 7
    .param p2, "pGroup"    # Ljava/lang/ThreadGroup;
    .param p3, "pNum"    # I

    .line 51
    iput-object p1, p0, Lorg/apache/xmlrpc/util/ThreadPool$Poolable;->this$0:Lorg/apache/xmlrpc/util/ThreadPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lorg/apache/xmlrpc/util/ThreadPool$Poolable$1;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/ThreadGroup;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p2, v1, p1}, Lorg/apache/xmlrpc/util/ThreadPool$Poolable$1;-><init>(Lorg/apache/xmlrpc/util/ThreadPool$Poolable;Ljava/lang/ThreadGroup;Ljava/lang/String;Lorg/apache/xmlrpc/util/ThreadPool;)V

    iput-object v0, p0, Lorg/apache/xmlrpc/util/ThreadPool$Poolable;->thread:Ljava/lang/Thread;

    .line 80
    iget-object p1, p0, Lorg/apache/xmlrpc/util/ThreadPool$Poolable;->thread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 81
    return-void
.end method

.method static synthetic access$000(Lorg/apache/xmlrpc/util/ThreadPool$Poolable;)Z
    .registers 2
    .param p0, "x0"    # Lorg/apache/xmlrpc/util/ThreadPool$Poolable;

    .line 47
    iget-boolean v0, p0, Lorg/apache/xmlrpc/util/ThreadPool$Poolable;->shuttingDown:Z

    return v0
.end method

.method static synthetic access$100(Lorg/apache/xmlrpc/util/ThreadPool$Poolable;)Lorg/apache/xmlrpc/util/ThreadPool$Task;
    .registers 2
    .param p0, "x0"    # Lorg/apache/xmlrpc/util/ThreadPool$Poolable;

    .line 47
    invoke-direct {p0}, Lorg/apache/xmlrpc/util/ThreadPool$Poolable;->getTask()Lorg/apache/xmlrpc/util/ThreadPool$Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/xmlrpc/util/ThreadPool$Poolable;)V
    .registers 1
    .param p0, "x0"    # Lorg/apache/xmlrpc/util/ThreadPool$Poolable;

    .line 47
    invoke-direct {p0}, Lorg/apache/xmlrpc/util/ThreadPool$Poolable;->resetTask()V

    return-void
.end method

.method private getTask()Lorg/apache/xmlrpc/util/ThreadPool$Task;
    .registers 2

    .line 98
    iget-object v0, p0, Lorg/apache/xmlrpc/util/ThreadPool$Poolable;->task:Lorg/apache/xmlrpc/util/ThreadPool$Task;

    return-object v0
.end method

.method private resetTask()V
    .registers 2

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlrpc/util/ThreadPool$Poolable;->task:Lorg/apache/xmlrpc/util/ThreadPool$Task;

    .line 102
    return-void
.end method


# virtual methods
.method declared-synchronized shutdown()V
    .registers 4

    monitor-enter p0

    .line 83
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lorg/apache/xmlrpc/util/ThreadPool$Poolable;->shuttingDown:Z

    .line 84
    invoke-direct {p0}, Lorg/apache/xmlrpc/util/ThreadPool$Poolable;->getTask()Lorg/apache/xmlrpc/util/ThreadPool$Task;

    move-result-object v0

    .line 85
    .local v0, "t":Lorg/apache/xmlrpc/util/ThreadPool$Task;
    if-eqz v0, :cond_16

    instance-of v1, v0, Lorg/apache/xmlrpc/util/ThreadPool$InterruptableTask;
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_27

    if-eqz v1, :cond_16

    .line 87
    :try_start_e
    move-object v1, v0

    check-cast v1, Lorg/apache/xmlrpc/util/ThreadPool$InterruptableTask;

    invoke-interface {v1}, Lorg/apache/xmlrpc/util/ThreadPool$InterruptableTask;->shutdown()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_14} :catch_15
    .catchall {:try_start_e .. :try_end_14} :catchall_27

    .line 90
    goto :goto_16

    .line 88
    :catch_15
    move-exception v1

    .line 92
    :cond_16
    :goto_16
    const/4 v1, 0x0

    :try_start_17
    iput-object v1, p0, Lorg/apache/xmlrpc/util/ThreadPool$Poolable;->task:Lorg/apache/xmlrpc/util/ThreadPool$Task;

    .line 93
    iget-object v1, p0, Lorg/apache/xmlrpc/util/ThreadPool$Poolable;->thread:Ljava/lang/Thread;

    monitor-enter v1
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_27

    .line 94
    :try_start_1c
    iget-object v2, p0, Lorg/apache/xmlrpc/util/ThreadPool$Poolable;->thread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 95
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_1c .. :try_end_22} :catchall_24

    .line 96
    monitor-exit p0

    return-void

    .line 95
    :catchall_24
    move-exception v2

    :try_start_25
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    :try_start_26
    throw v2
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_27

    .line 82
    .end local v0    # "t":Lorg/apache/xmlrpc/util/ThreadPool$Task;
    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method start(Lorg/apache/xmlrpc/util/ThreadPool$Task;)V
    .registers 4
    .param p1, "pTask"    # Lorg/apache/xmlrpc/util/ThreadPool$Task;

    .line 104
    iput-object p1, p0, Lorg/apache/xmlrpc/util/ThreadPool$Poolable;->task:Lorg/apache/xmlrpc/util/ThreadPool$Task;

    .line 105
    iget-object v0, p0, Lorg/apache/xmlrpc/util/ThreadPool$Poolable;->thread:Ljava/lang/Thread;

    monitor-enter v0

    .line 106
    :try_start_5
    iget-object v1, p0, Lorg/apache/xmlrpc/util/ThreadPool$Poolable;->thread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 107
    monitor-exit v0

    .line 108
    return-void

    .line 107
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw v1
.end method
