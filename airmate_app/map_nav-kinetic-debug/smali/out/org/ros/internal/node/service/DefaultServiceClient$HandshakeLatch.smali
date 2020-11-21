.class final Lorg/ros/internal/node/service/DefaultServiceClient$HandshakeLatch;
.super Ljava/lang/Object;
.source "DefaultServiceClient.java"

# interfaces
.implements Lorg/ros/internal/transport/ClientHandshakeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ros/internal/node/service/DefaultServiceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HandshakeLatch"
.end annotation


# instance fields
.field private errorMessage:Ljava/lang/String;

.field private latch:Ljava/util/concurrent/CountDownLatch;

.field private success:Z

.field final synthetic this$0:Lorg/ros/internal/node/service/DefaultServiceClient;


# direct methods
.method private constructor <init>(Lorg/ros/internal/node/service/DefaultServiceClient;)V
    .registers 2

    .line 51
    .local p0, "this":Lorg/ros/internal/node/service/DefaultServiceClient$HandshakeLatch;, "Lorg/ros/internal/node/service/DefaultServiceClient<TT;TS;>.HandshakeLatch;"
    iput-object p1, p0, Lorg/ros/internal/node/service/DefaultServiceClient$HandshakeLatch;->this$0:Lorg/ros/internal/node/service/DefaultServiceClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/ros/internal/node/service/DefaultServiceClient;Lorg/ros/internal/node/service/DefaultServiceClient$1;)V
    .registers 3
    .param p1, "x0"    # Lorg/ros/internal/node/service/DefaultServiceClient;
    .param p2, "x1"    # Lorg/ros/internal/node/service/DefaultServiceClient$1;

    .line 51
    .local p0, "this":Lorg/ros/internal/node/service/DefaultServiceClient$HandshakeLatch;, "Lorg/ros/internal/node/service/DefaultServiceClient<TT;TS;>.HandshakeLatch;"
    invoke-direct {p0, p1}, Lorg/ros/internal/node/service/DefaultServiceClient$HandshakeLatch;-><init>(Lorg/ros/internal/node/service/DefaultServiceClient;)V

    return-void
.end method


# virtual methods
.method public await(JLjava/util/concurrent/TimeUnit;)Z
    .registers 5
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 73
    .local p0, "this":Lorg/ros/internal/node/service/DefaultServiceClient$HandshakeLatch;, "Lorg/ros/internal/node/service/DefaultServiceClient<TT;TS;>.HandshakeLatch;"
    iget-object v0, p0, Lorg/ros/internal/node/service/DefaultServiceClient$HandshakeLatch;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 74
    iget-boolean v0, p0, Lorg/ros/internal/node/service/DefaultServiceClient$HandshakeLatch;->success:Z

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .registers 2

    .line 78
    .local p0, "this":Lorg/ros/internal/node/service/DefaultServiceClient$HandshakeLatch;, "Lorg/ros/internal/node/service/DefaultServiceClient<TT;TS;>.HandshakeLatch;"
    iget-object v0, p0, Lorg/ros/internal/node/service/DefaultServiceClient$HandshakeLatch;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public onFailure(Lorg/ros/internal/transport/ConnectionHeader;Ljava/lang/String;)V
    .registers 4
    .param p1, "outgoingConnectionHeader"    # Lorg/ros/internal/transport/ConnectionHeader;
    .param p2, "errorMessage"    # Ljava/lang/String;

    .line 67
    .local p0, "this":Lorg/ros/internal/node/service/DefaultServiceClient$HandshakeLatch;, "Lorg/ros/internal/node/service/DefaultServiceClient<TT;TS;>.HandshakeLatch;"
    iput-object p2, p0, Lorg/ros/internal/node/service/DefaultServiceClient$HandshakeLatch;->errorMessage:Ljava/lang/String;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/ros/internal/node/service/DefaultServiceClient$HandshakeLatch;->success:Z

    .line 69
    iget-object v0, p0, Lorg/ros/internal/node/service/DefaultServiceClient$HandshakeLatch;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 70
    return-void
.end method

.method public onSuccess(Lorg/ros/internal/transport/ConnectionHeader;Lorg/ros/internal/transport/ConnectionHeader;)V
    .registers 4
    .param p1, "outgoingConnectionHeader"    # Lorg/ros/internal/transport/ConnectionHeader;
    .param p2, "incomingConnectionHeader"    # Lorg/ros/internal/transport/ConnectionHeader;

    .line 60
    .local p0, "this":Lorg/ros/internal/node/service/DefaultServiceClient$HandshakeLatch;, "Lorg/ros/internal/node/service/DefaultServiceClient<TT;TS;>.HandshakeLatch;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/ros/internal/node/service/DefaultServiceClient$HandshakeLatch;->success:Z

    .line 61
    iget-object v0, p0, Lorg/ros/internal/node/service/DefaultServiceClient$HandshakeLatch;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 62
    return-void
.end method

.method public reset()V
    .registers 3

    .line 82
    .local p0, "this":Lorg/ros/internal/node/service/DefaultServiceClient$HandshakeLatch;, "Lorg/ros/internal/node/service/DefaultServiceClient<TT;TS;>.HandshakeLatch;"
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lorg/ros/internal/node/service/DefaultServiceClient$HandshakeLatch;->latch:Ljava/util/concurrent/CountDownLatch;

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/ros/internal/node/service/DefaultServiceClient$HandshakeLatch;->success:Z

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/ros/internal/node/service/DefaultServiceClient$HandshakeLatch;->errorMessage:Ljava/lang/String;

    .line 85
    return-void
.end method
