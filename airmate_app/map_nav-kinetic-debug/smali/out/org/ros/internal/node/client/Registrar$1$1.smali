.class Lorg/ros/internal/node/client/Registrar$1$1;
.super Ljava/lang/Object;
.source "Registrar.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ros/internal/node/client/Registrar$1;->call()Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lorg/ros/internal/node/response/Response<",
        "Ljava/util/List<",
        "Ljava/net/URI;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/ros/internal/node/client/Registrar$1;


# direct methods
.method constructor <init>(Lorg/ros/internal/node/client/Registrar$1;)V
    .registers 2
    .param p1, "this$1"    # Lorg/ros/internal/node/client/Registrar$1;

    .line 135
    iput-object p1, p0, Lorg/ros/internal/node/client/Registrar$1$1;->this$1:Lorg/ros/internal/node/client/Registrar$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 135
    invoke-virtual {p0}, Lorg/ros/internal/node/client/Registrar$1$1;->call()Lorg/ros/internal/node/response/Response;

    move-result-object v0

    return-object v0
.end method

.method public call()Lorg/ros/internal/node/response/Response;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ros/internal/node/response/Response<",
            "Ljava/util/List<",
            "Ljava/net/URI;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lorg/ros/internal/node/client/Registrar$1$1;->this$1:Lorg/ros/internal/node/client/Registrar$1;

    iget-object v0, v0, Lorg/ros/internal/node/client/Registrar$1;->this$0:Lorg/ros/internal/node/client/Registrar;

    invoke-static {v0}, Lorg/ros/internal/node/client/Registrar;->access$000(Lorg/ros/internal/node/client/Registrar;)Lorg/ros/internal/node/client/MasterClient;

    move-result-object v0

    iget-object v1, p0, Lorg/ros/internal/node/client/Registrar$1$1;->this$1:Lorg/ros/internal/node/client/Registrar$1;

    iget-object v1, v1, Lorg/ros/internal/node/client/Registrar$1;->val$publisher:Lorg/ros/internal/node/topic/DefaultPublisher;

    invoke-virtual {v1}, Lorg/ros/internal/node/topic/DefaultPublisher;->toDeclaration()Lorg/ros/internal/node/topic/PublisherDeclaration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ros/internal/node/client/MasterClient;->registerPublisher(Lorg/ros/internal/node/topic/PublisherDeclaration;)Lorg/ros/internal/node/response/Response;

    move-result-object v0

    return-object v0
.end method
