.class Lorg/ros/internal/node/topic/DefaultPublisher$1;
.super Lorg/ros/node/topic/DefaultPublisherListener;
.source "DefaultPublisher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ros/internal/node/topic/DefaultPublisher;-><init>(Lorg/ros/internal/node/server/NodeIdentifier;Lorg/ros/internal/node/topic/TopicDeclaration;Lorg/ros/message/MessageSerializer;Lorg/ros/message/MessageFactory;Ljava/util/concurrent/ScheduledExecutorService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ros/node/topic/DefaultPublisherListener<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ros/internal/node/topic/DefaultPublisher;


# direct methods
.method constructor <init>(Lorg/ros/internal/node/topic/DefaultPublisher;)V
    .registers 2
    .param p1, "this$0"    # Lorg/ros/internal/node/topic/DefaultPublisher;

    .line 75
    .local p0, "this":Lorg/ros/internal/node/topic/DefaultPublisher$1;, "Lorg/ros/internal/node/topic/DefaultPublisher$1;"
    iput-object p1, p0, Lorg/ros/internal/node/topic/DefaultPublisher$1;->this$0:Lorg/ros/internal/node/topic/DefaultPublisher;

    invoke-direct {p0}, Lorg/ros/node/topic/DefaultPublisherListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onMasterRegistrationFailure(Ljava/lang/Object;)V
    .registers 2

    .line 75
    .local p0, "this":Lorg/ros/internal/node/topic/DefaultPublisher$1;, "Lorg/ros/internal/node/topic/DefaultPublisher$1;"
    check-cast p1, Lorg/ros/node/topic/Publisher;

    invoke-virtual {p0, p1}, Lorg/ros/internal/node/topic/DefaultPublisher$1;->onMasterRegistrationFailure(Lorg/ros/node/topic/Publisher;)V

    return-void
.end method

.method public onMasterRegistrationFailure(Lorg/ros/node/topic/Publisher;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/node/topic/Publisher<",
            "TT;>;)V"
        }
    .end annotation

    .line 83
    .local p0, "this":Lorg/ros/internal/node/topic/DefaultPublisher$1;, "Lorg/ros/internal/node/topic/DefaultPublisher$1;"
    .local p1, "registrant":Lorg/ros/node/topic/Publisher;, "Lorg/ros/node/topic/Publisher<TT;>;"
    invoke-static {}, Lorg/ros/internal/node/topic/DefaultPublisher;->access$000()Lorg/apache/commons/logging/Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Publisher registration failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/ros/internal/node/topic/DefaultPublisher$1;->this$0:Lorg/ros/internal/node/topic/DefaultPublisher;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 84
    return-void
.end method

.method public bridge synthetic onMasterRegistrationSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 75
    .local p0, "this":Lorg/ros/internal/node/topic/DefaultPublisher$1;, "Lorg/ros/internal/node/topic/DefaultPublisher$1;"
    check-cast p1, Lorg/ros/node/topic/Publisher;

    invoke-virtual {p0, p1}, Lorg/ros/internal/node/topic/DefaultPublisher$1;->onMasterRegistrationSuccess(Lorg/ros/node/topic/Publisher;)V

    return-void
.end method

.method public onMasterRegistrationSuccess(Lorg/ros/node/topic/Publisher;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/node/topic/Publisher<",
            "TT;>;)V"
        }
    .end annotation

    .line 78
    .local p0, "this":Lorg/ros/internal/node/topic/DefaultPublisher$1;, "Lorg/ros/internal/node/topic/DefaultPublisher$1;"
    .local p1, "registrant":Lorg/ros/node/topic/Publisher;, "Lorg/ros/node/topic/Publisher<TT;>;"
    invoke-static {}, Lorg/ros/internal/node/topic/DefaultPublisher;->access$000()Lorg/apache/commons/logging/Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Publisher registered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/ros/internal/node/topic/DefaultPublisher$1;->this$0:Lorg/ros/internal/node/topic/DefaultPublisher;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 79
    return-void
.end method

.method public bridge synthetic onMasterUnregistrationFailure(Ljava/lang/Object;)V
    .registers 2

    .line 75
    .local p0, "this":Lorg/ros/internal/node/topic/DefaultPublisher$1;, "Lorg/ros/internal/node/topic/DefaultPublisher$1;"
    check-cast p1, Lorg/ros/node/topic/Publisher;

    invoke-virtual {p0, p1}, Lorg/ros/internal/node/topic/DefaultPublisher$1;->onMasterUnregistrationFailure(Lorg/ros/node/topic/Publisher;)V

    return-void
.end method

.method public onMasterUnregistrationFailure(Lorg/ros/node/topic/Publisher;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/node/topic/Publisher<",
            "TT;>;)V"
        }
    .end annotation

    .line 93
    .local p0, "this":Lorg/ros/internal/node/topic/DefaultPublisher$1;, "Lorg/ros/internal/node/topic/DefaultPublisher$1;"
    .local p1, "registrant":Lorg/ros/node/topic/Publisher;, "Lorg/ros/node/topic/Publisher<TT;>;"
    invoke-static {}, Lorg/ros/internal/node/topic/DefaultPublisher;->access$000()Lorg/apache/commons/logging/Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Publisher unregistration failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/ros/internal/node/topic/DefaultPublisher$1;->this$0:Lorg/ros/internal/node/topic/DefaultPublisher;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 94
    return-void
.end method

.method public bridge synthetic onMasterUnregistrationSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 75
    .local p0, "this":Lorg/ros/internal/node/topic/DefaultPublisher$1;, "Lorg/ros/internal/node/topic/DefaultPublisher$1;"
    check-cast p1, Lorg/ros/node/topic/Publisher;

    invoke-virtual {p0, p1}, Lorg/ros/internal/node/topic/DefaultPublisher$1;->onMasterUnregistrationSuccess(Lorg/ros/node/topic/Publisher;)V

    return-void
.end method

.method public onMasterUnregistrationSuccess(Lorg/ros/node/topic/Publisher;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/node/topic/Publisher<",
            "TT;>;)V"
        }
    .end annotation

    .line 88
    .local p0, "this":Lorg/ros/internal/node/topic/DefaultPublisher$1;, "Lorg/ros/internal/node/topic/DefaultPublisher$1;"
    .local p1, "registrant":Lorg/ros/node/topic/Publisher;, "Lorg/ros/node/topic/Publisher<TT;>;"
    invoke-static {}, Lorg/ros/internal/node/topic/DefaultPublisher;->access$000()Lorg/apache/commons/logging/Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Publisher unregistered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/ros/internal/node/topic/DefaultPublisher$1;->this$0:Lorg/ros/internal/node/topic/DefaultPublisher;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 89
    return-void
.end method
