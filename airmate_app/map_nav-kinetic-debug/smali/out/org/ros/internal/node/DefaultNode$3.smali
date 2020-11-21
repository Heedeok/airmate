.class Lorg/ros/internal/node/DefaultNode$3;
.super Lorg/ros/node/topic/DefaultSubscriberListener;
.source "DefaultNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ros/internal/node/DefaultNode;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ros/node/topic/DefaultSubscriberListener<",
        "Lrosgraph_msgs/Clock;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ros/internal/node/DefaultNode;

.field final synthetic val$timeLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lorg/ros/internal/node/DefaultNode;Ljava/util/concurrent/CountDownLatch;)V
    .registers 3
    .param p1, "this$0"    # Lorg/ros/internal/node/DefaultNode;

    .line 218
    iput-object p1, p0, Lorg/ros/internal/node/DefaultNode$3;->this$0:Lorg/ros/internal/node/DefaultNode;

    iput-object p2, p0, Lorg/ros/internal/node/DefaultNode$3;->val$timeLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Lorg/ros/node/topic/DefaultSubscriberListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onMasterRegistrationSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 218
    check-cast p1, Lorg/ros/node/topic/Subscriber;

    invoke-virtual {p0, p1}, Lorg/ros/internal/node/DefaultNode$3;->onMasterRegistrationSuccess(Lorg/ros/node/topic/Subscriber;)V

    return-void
.end method

.method public onMasterRegistrationSuccess(Lorg/ros/node/topic/Subscriber;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/node/topic/Subscriber<",
            "Lrosgraph_msgs/Clock;",
            ">;)V"
        }
    .end annotation

    .line 221
    .local p1, "subscriber":Lorg/ros/node/topic/Subscriber;, "Lorg/ros/node/topic/Subscriber<Lrosgraph_msgs/Clock;>;"
    iget-object v0, p0, Lorg/ros/internal/node/DefaultNode$3;->val$timeLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 222
    return-void
.end method
