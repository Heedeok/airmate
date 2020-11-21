.class public Lorg/ros/internal/node/topic/RepeatingPublisher;
.super Ljava/lang/Object;
.source "RepeatingPublisher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ros/internal/node/topic/RepeatingPublisher$RepeatingPublisherLoop;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field private final executorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private final frequency:I

.field private final message:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field private final publisher:Lorg/ros/node/topic/Publisher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ros/node/topic/Publisher<",
            "TMessageType;>;"
        }
    .end annotation
.end field

.field private final runnable:Lorg/ros/internal/node/topic/RepeatingPublisher$RepeatingPublisherLoop;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ros/internal/node/topic/RepeatingPublisher<",
            "TMessageType;>.RepeatingPublisher",
            "Loop;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 36
    const-class v0, Lorg/ros/internal/node/topic/RepeatingPublisher;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/ros/internal/node/topic/RepeatingPublisher;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(Lorg/ros/node/topic/Publisher;Ljava/lang/Object;ILjava/util/concurrent/ScheduledExecutorService;)V
    .registers 7
    .param p3, "frequency"    # I
    .param p4, "executorService"    # Ljava/util/concurrent/ScheduledExecutorService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/node/topic/Publisher<",
            "TMessageType;>;TMessageType;I",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")V"
        }
    .end annotation

    .line 66
    .local p0, "this":Lorg/ros/internal/node/topic/RepeatingPublisher;, "Lorg/ros/internal/node/topic/RepeatingPublisher<TMessageType;>;"
    .local p1, "publisher":Lorg/ros/node/topic/Publisher;, "Lorg/ros/node/topic/Publisher<TMessageType;>;"
    .local p2, "message":Ljava/lang/Object;, "TMessageType;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lorg/ros/internal/node/topic/RepeatingPublisher;->publisher:Lorg/ros/node/topic/Publisher;

    .line 68
    iput-object p2, p0, Lorg/ros/internal/node/topic/RepeatingPublisher;->message:Ljava/lang/Object;

    .line 69
    iput p3, p0, Lorg/ros/internal/node/topic/RepeatingPublisher;->frequency:I

    .line 70
    iput-object p4, p0, Lorg/ros/internal/node/topic/RepeatingPublisher;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 71
    new-instance v0, Lorg/ros/internal/node/topic/RepeatingPublisher$RepeatingPublisherLoop;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/ros/internal/node/topic/RepeatingPublisher$RepeatingPublisherLoop;-><init>(Lorg/ros/internal/node/topic/RepeatingPublisher;Lorg/ros/internal/node/topic/RepeatingPublisher$1;)V

    iput-object v0, p0, Lorg/ros/internal/node/topic/RepeatingPublisher;->runnable:Lorg/ros/internal/node/topic/RepeatingPublisher$RepeatingPublisherLoop;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lorg/ros/internal/node/topic/RepeatingPublisher;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lorg/ros/internal/node/topic/RepeatingPublisher;

    .line 33
    iget-object v0, p0, Lorg/ros/internal/node/topic/RepeatingPublisher;->message:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lorg/ros/internal/node/topic/RepeatingPublisher;)Lorg/ros/node/topic/Publisher;
    .registers 2
    .param p0, "x0"    # Lorg/ros/internal/node/topic/RepeatingPublisher;

    .line 33
    iget-object v0, p0, Lorg/ros/internal/node/topic/RepeatingPublisher;->publisher:Lorg/ros/node/topic/Publisher;

    return-object v0
.end method

.method static synthetic access$200(Lorg/ros/internal/node/topic/RepeatingPublisher;)I
    .registers 2
    .param p0, "x0"    # Lorg/ros/internal/node/topic/RepeatingPublisher;

    .line 33
    iget v0, p0, Lorg/ros/internal/node/topic/RepeatingPublisher;->frequency:I

    return v0
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .line 80
    .local p0, "this":Lorg/ros/internal/node/topic/RepeatingPublisher;, "Lorg/ros/internal/node/topic/RepeatingPublisher<TMessageType;>;"
    iget-object v0, p0, Lorg/ros/internal/node/topic/RepeatingPublisher;->runnable:Lorg/ros/internal/node/topic/RepeatingPublisher$RepeatingPublisherLoop;

    invoke-virtual {v0}, Lorg/ros/internal/node/topic/RepeatingPublisher$RepeatingPublisherLoop;->isRunning()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 81
    iget-object v0, p0, Lorg/ros/internal/node/topic/RepeatingPublisher;->runnable:Lorg/ros/internal/node/topic/RepeatingPublisher$RepeatingPublisherLoop;

    invoke-virtual {v0}, Lorg/ros/internal/node/topic/RepeatingPublisher$RepeatingPublisherLoop;->cancel()V

    .line 82
    return-void
.end method

.method public start()V
    .registers 3

    .line 75
    .local p0, "this":Lorg/ros/internal/node/topic/RepeatingPublisher;, "Lorg/ros/internal/node/topic/RepeatingPublisher<TMessageType;>;"
    iget-object v0, p0, Lorg/ros/internal/node/topic/RepeatingPublisher;->runnable:Lorg/ros/internal/node/topic/RepeatingPublisher$RepeatingPublisherLoop;

    invoke-virtual {v0}, Lorg/ros/internal/node/topic/RepeatingPublisher$RepeatingPublisherLoop;->isRunning()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 76
    iget-object v0, p0, Lorg/ros/internal/node/topic/RepeatingPublisher;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lorg/ros/internal/node/topic/RepeatingPublisher;->runnable:Lorg/ros/internal/node/topic/RepeatingPublisher$RepeatingPublisherLoop;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 77
    return-void
.end method
