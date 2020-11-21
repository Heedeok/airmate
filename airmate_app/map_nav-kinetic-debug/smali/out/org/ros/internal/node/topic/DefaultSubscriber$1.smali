.class Lorg/ros/internal/node/topic/DefaultSubscriber$1;
.super Lorg/ros/node/topic/DefaultSubscriberListener;
.source "DefaultSubscriber.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ros/internal/node/topic/DefaultSubscriber;-><init>(Lorg/ros/internal/node/server/NodeIdentifier;Lorg/ros/internal/node/topic/TopicDeclaration;Lorg/ros/message/MessageDeserializer;Ljava/util/concurrent/ScheduledExecutorService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ros/node/topic/DefaultSubscriberListener<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ros/internal/node/topic/DefaultSubscriber;


# direct methods
.method constructor <init>(Lorg/ros/internal/node/topic/DefaultSubscriber;)V
    .registers 2
    .param p1, "this$0"    # Lorg/ros/internal/node/topic/DefaultSubscriber;

    .line 92
    .local p0, "this":Lorg/ros/internal/node/topic/DefaultSubscriber$1;, "Lorg/ros/internal/node/topic/DefaultSubscriber$1;"
    iput-object p1, p0, Lorg/ros/internal/node/topic/DefaultSubscriber$1;->this$0:Lorg/ros/internal/node/topic/DefaultSubscriber;

    invoke-direct {p0}, Lorg/ros/node/topic/DefaultSubscriberListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onMasterRegistrationFailure(Ljava/lang/Object;)V
    .registers 2

    .line 92
    .local p0, "this":Lorg/ros/internal/node/topic/DefaultSubscriber$1;, "Lorg/ros/internal/node/topic/DefaultSubscriber$1;"
    check-cast p1, Lorg/ros/node/topic/Subscriber;

    invoke-virtual {p0, p1}, Lorg/ros/internal/node/topic/DefaultSubscriber$1;->onMasterRegistrationFailure(Lorg/ros/node/topic/Subscriber;)V

    return-void
.end method

.method public onMasterRegistrationFailure(Lorg/ros/node/topic/Subscriber;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/node/topic/Subscriber<",
            "TT;>;)V"
        }
    .end annotation

    .line 100
    .local p0, "this":Lorg/ros/internal/node/topic/DefaultSubscriber$1;, "Lorg/ros/internal/node/topic/DefaultSubscriber$1;"
    .local p1, "registrant":Lorg/ros/node/topic/Subscriber;, "Lorg/ros/node/topic/Subscriber<TT;>;"
    invoke-static {}, Lorg/ros/internal/node/topic/DefaultSubscriber;->access$000()Lorg/apache/commons/logging/Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subscriber registration failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/ros/internal/node/topic/DefaultSubscriber$1;->this$0:Lorg/ros/internal/node/topic/DefaultSubscriber;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 101
    return-void
.end method

.method public bridge synthetic onMasterRegistrationSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 92
    .local p0, "this":Lorg/ros/internal/node/topic/DefaultSubscriber$1;, "Lorg/ros/internal/node/topic/DefaultSubscriber$1;"
    check-cast p1, Lorg/ros/node/topic/Subscriber;

    invoke-virtual {p0, p1}, Lorg/ros/internal/node/topic/DefaultSubscriber$1;->onMasterRegistrationSuccess(Lorg/ros/node/topic/Subscriber;)V

    return-void
.end method

.method public onMasterRegistrationSuccess(Lorg/ros/node/topic/Subscriber;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/node/topic/Subscriber<",
            "TT;>;)V"
        }
    .end annotation

    .line 95
    .local p0, "this":Lorg/ros/internal/node/topic/DefaultSubscriber$1;, "Lorg/ros/internal/node/topic/DefaultSubscriber$1;"
    .local p1, "registrant":Lorg/ros/node/topic/Subscriber;, "Lorg/ros/node/topic/Subscriber<TT;>;"
    invoke-static {}, Lorg/ros/internal/node/topic/DefaultSubscriber;->access$000()Lorg/apache/commons/logging/Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subscriber registered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/ros/internal/node/topic/DefaultSubscriber$1;->this$0:Lorg/ros/internal/node/topic/DefaultSubscriber;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 96
    return-void
.end method

.method public bridge synthetic onMasterUnregistrationFailure(Ljava/lang/Object;)V
    .registers 2

    .line 92
    .local p0, "this":Lorg/ros/internal/node/topic/DefaultSubscriber$1;, "Lorg/ros/internal/node/topic/DefaultSubscriber$1;"
    check-cast p1, Lorg/ros/node/topic/Subscriber;

    invoke-virtual {p0, p1}, Lorg/ros/internal/node/topic/DefaultSubscriber$1;->onMasterUnregistrationFailure(Lorg/ros/node/topic/Subscriber;)V

    return-void
.end method

.method public onMasterUnregistrationFailure(Lorg/ros/node/topic/Subscriber;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/node/topic/Subscriber<",
            "TT;>;)V"
        }
    .end annotation

    .line 110
    .local p0, "this":Lorg/ros/internal/node/topic/DefaultSubscriber$1;, "Lorg/ros/internal/node/topic/DefaultSubscriber$1;"
    .local p1, "registrant":Lorg/ros/node/topic/Subscriber;, "Lorg/ros/node/topic/Subscriber<TT;>;"
    invoke-static {}, Lorg/ros/internal/node/topic/DefaultSubscriber;->access$000()Lorg/apache/commons/logging/Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subscriber unregistration failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/ros/internal/node/topic/DefaultSubscriber$1;->this$0:Lorg/ros/internal/node/topic/DefaultSubscriber;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 111
    return-void
.end method

.method public bridge synthetic onMasterUnregistrationSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 92
    .local p0, "this":Lorg/ros/internal/node/topic/DefaultSubscriber$1;, "Lorg/ros/internal/node/topic/DefaultSubscriber$1;"
    check-cast p1, Lorg/ros/node/topic/Subscriber;

    invoke-virtual {p0, p1}, Lorg/ros/internal/node/topic/DefaultSubscriber$1;->onMasterUnregistrationSuccess(Lorg/ros/node/topic/Subscriber;)V

    return-void
.end method

.method public onMasterUnregistrationSuccess(Lorg/ros/node/topic/Subscriber;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/node/topic/Subscriber<",
            "TT;>;)V"
        }
    .end annotation

    .line 105
    .local p0, "this":Lorg/ros/internal/node/topic/DefaultSubscriber$1;, "Lorg/ros/internal/node/topic/DefaultSubscriber$1;"
    .local p1, "registrant":Lorg/ros/node/topic/Subscriber;, "Lorg/ros/node/topic/Subscriber<TT;>;"
    invoke-static {}, Lorg/ros/internal/node/topic/DefaultSubscriber;->access$000()Lorg/apache/commons/logging/Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subscriber unregistered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/ros/internal/node/topic/DefaultSubscriber$1;->this$0:Lorg/ros/internal/node/topic/DefaultSubscriber;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 106
    return-void
.end method
