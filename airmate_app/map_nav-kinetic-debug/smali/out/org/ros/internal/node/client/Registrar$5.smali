.class Lorg/ros/internal/node/client/Registrar$5;
.super Ljava/lang/Object;
.source "Registrar.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ros/internal/node/client/Registrar;->onSubscriberAdded(Lorg/ros/internal/node/topic/DefaultSubscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ros/internal/node/client/Registrar;

.field final synthetic val$subscriber:Lorg/ros/internal/node/topic/DefaultSubscriber;


# direct methods
.method constructor <init>(Lorg/ros/internal/node/client/Registrar;Lorg/ros/internal/node/topic/DefaultSubscriber;)V
    .registers 3
    .param p1, "this$0"    # Lorg/ros/internal/node/client/Registrar;

    .line 196
    iput-object p1, p0, Lorg/ros/internal/node/client/Registrar$5;->this$0:Lorg/ros/internal/node/client/Registrar;

    iput-object p2, p0, Lorg/ros/internal/node/client/Registrar$5;->val$subscriber:Lorg/ros/internal/node/topic/DefaultSubscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 199
    invoke-static {}, Lorg/ros/concurrent/Holder;->newEmpty()Lorg/ros/concurrent/Holder;

    move-result-object v0

    .line 200
    .local v0, "holder":Lorg/ros/concurrent/Holder;, "Lorg/ros/concurrent/Holder<Lorg/ros/internal/node/response/Response<Ljava/util/List<Ljava/net/URI;>;>;>;"
    iget-object v1, p0, Lorg/ros/internal/node/client/Registrar$5;->this$0:Lorg/ros/internal/node/client/Registrar;

    new-instance v2, Lorg/ros/internal/node/client/Registrar$5$1;

    invoke-direct {v2, p0, v0}, Lorg/ros/internal/node/client/Registrar$5$1;-><init>(Lorg/ros/internal/node/client/Registrar$5;Lorg/ros/concurrent/Holder;)V

    invoke-static {v1, v2}, Lorg/ros/internal/node/client/Registrar;->access$100(Lorg/ros/internal/node/client/Registrar;Ljava/util/concurrent/Callable;)Z

    move-result v1

    .line 206
    .local v1, "success":Z
    if-eqz v1, :cond_33

    .line 207
    nop

    .line 208
    invoke-virtual {v0}, Lorg/ros/concurrent/Holder;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ros/internal/node/response/Response;

    invoke-virtual {v2}, Lorg/ros/internal/node/response/Response;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    iget-object v3, p0, Lorg/ros/internal/node/client/Registrar$5;->val$subscriber:Lorg/ros/internal/node/topic/DefaultSubscriber;

    .line 209
    invoke-virtual {v3}, Lorg/ros/internal/node/topic/DefaultSubscriber;->getTopicDeclaration()Lorg/ros/internal/node/topic/TopicDeclaration;

    move-result-object v3

    .line 208
    invoke-static {v2, v3}, Lorg/ros/internal/node/topic/PublisherIdentifier;->newCollectionFromUris(Ljava/util/Collection;Lorg/ros/internal/node/topic/TopicDeclaration;)Ljava/util/Collection;

    move-result-object v2

    .line 210
    .local v2, "publisherIdentifiers":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/ros/internal/node/topic/PublisherIdentifier;>;"
    iget-object v3, p0, Lorg/ros/internal/node/client/Registrar$5;->val$subscriber:Lorg/ros/internal/node/topic/DefaultSubscriber;

    invoke-virtual {v3, v2}, Lorg/ros/internal/node/topic/DefaultSubscriber;->updatePublishers(Ljava/util/Collection;)V

    .line 211
    iget-object v3, p0, Lorg/ros/internal/node/client/Registrar$5;->val$subscriber:Lorg/ros/internal/node/topic/DefaultSubscriber;

    invoke-virtual {v3}, Lorg/ros/internal/node/topic/DefaultSubscriber;->signalOnMasterRegistrationSuccess()V

    .line 212
    .end local v2    # "publisherIdentifiers":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/ros/internal/node/topic/PublisherIdentifier;>;"
    goto :goto_38

    .line 213
    :cond_33
    iget-object v2, p0, Lorg/ros/internal/node/client/Registrar$5;->val$subscriber:Lorg/ros/internal/node/topic/DefaultSubscriber;

    invoke-virtual {v2}, Lorg/ros/internal/node/topic/DefaultSubscriber;->signalOnMasterRegistrationFailure()V

    .line 215
    :goto_38
    xor-int/lit8 v2, v1, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 196
    invoke-virtual {p0}, Lorg/ros/internal/node/client/Registrar$5;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
