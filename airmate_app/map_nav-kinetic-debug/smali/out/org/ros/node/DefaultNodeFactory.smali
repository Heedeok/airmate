.class public Lorg/ros/node/DefaultNodeFactory;
.super Ljava/lang/Object;
.source "DefaultNodeFactory.java"

# interfaces
.implements Lorg/ros/node/NodeFactory;


# instance fields
.field private final scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;)V
    .registers 3
    .param p1, "scheduledExecutorService"    # Ljava/util/concurrent/ScheduledExecutorService;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lorg/ros/concurrent/SharedScheduledExecutorService;

    invoke-direct {v0, p1}, Lorg/ros/concurrent/SharedScheduledExecutorService;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    iput-object v0, p0, Lorg/ros/node/DefaultNodeFactory;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 38
    return-void
.end method


# virtual methods
.method public newNode(Lorg/ros/node/NodeConfiguration;)Lorg/ros/node/Node;
    .registers 3
    .param p1, "nodeConfiguration"    # Lorg/ros/node/NodeConfiguration;

    .line 47
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {p0, p1, v0}, Lorg/ros/node/DefaultNodeFactory;->newNode(Lorg/ros/node/NodeConfiguration;Ljava/util/Collection;)Lorg/ros/node/Node;

    move-result-object v0

    return-object v0
.end method

.method public newNode(Lorg/ros/node/NodeConfiguration;Ljava/util/Collection;)Lorg/ros/node/Node;
    .registers 5
    .param p1, "nodeConfiguration"    # Lorg/ros/node/NodeConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/node/NodeConfiguration;",
            "Ljava/util/Collection<",
            "Lorg/ros/node/NodeListener;",
            ">;)",
            "Lorg/ros/node/Node;"
        }
    .end annotation

    .line 42
    .local p2, "listeners":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/ros/node/NodeListener;>;"
    new-instance v0, Lorg/ros/internal/node/DefaultNode;

    iget-object v1, p0, Lorg/ros/node/DefaultNodeFactory;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v0, p1, p2, v1}, Lorg/ros/internal/node/DefaultNode;-><init>(Lorg/ros/node/NodeConfiguration;Ljava/util/Collection;Ljava/util/concurrent/ScheduledExecutorService;)V

    return-object v0
.end method
