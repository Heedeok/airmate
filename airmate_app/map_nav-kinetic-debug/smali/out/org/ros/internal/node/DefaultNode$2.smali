.class Lorg/ros/internal/node/DefaultNode$2;
.super Lorg/ros/node/topic/DefaultPublisherListener;
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
        "Lorg/ros/node/topic/DefaultPublisherListener<",
        "Lrosgraph_msgs/Log;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ros/internal/node/DefaultNode;

.field final synthetic val$rosoutLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lorg/ros/internal/node/DefaultNode;Ljava/util/concurrent/CountDownLatch;)V
    .registers 3
    .param p1, "this$0"    # Lorg/ros/internal/node/DefaultNode;

    .line 188
    iput-object p1, p0, Lorg/ros/internal/node/DefaultNode$2;->this$0:Lorg/ros/internal/node/DefaultNode;

    iput-object p2, p0, Lorg/ros/internal/node/DefaultNode$2;->val$rosoutLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Lorg/ros/node/topic/DefaultPublisherListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onMasterRegistrationSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 188
    check-cast p1, Lorg/ros/node/topic/Publisher;

    invoke-virtual {p0, p1}, Lorg/ros/internal/node/DefaultNode$2;->onMasterRegistrationSuccess(Lorg/ros/node/topic/Publisher;)V

    return-void
.end method

.method public onMasterRegistrationSuccess(Lorg/ros/node/topic/Publisher;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/node/topic/Publisher<",
            "Lrosgraph_msgs/Log;",
            ">;)V"
        }
    .end annotation

    .line 191
    .local p1, "registrant":Lorg/ros/node/topic/Publisher;, "Lorg/ros/node/topic/Publisher<Lrosgraph_msgs/Log;>;"
    iget-object v0, p0, Lorg/ros/internal/node/DefaultNode$2;->val$rosoutLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 192
    return-void
.end method
