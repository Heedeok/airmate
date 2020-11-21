.class public Lorg/ros/master/client/SystemState;
.super Ljava/lang/Object;
.source "SystemState.java"


# instance fields
.field private final topics:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/ros/master/client/TopicSystemState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/ros/master/client/TopicSystemState;",
            ">;)V"
        }
    .end annotation

    .line 33
    .local p1, "topics":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/ros/master/client/TopicSystemState;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/ros/master/client/SystemState;->topics:Ljava/util/Collection;

    .line 35
    return-void
.end method


# virtual methods
.method public getTopics()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/ros/master/client/TopicSystemState;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lorg/ros/master/client/SystemState;->topics:Ljava/util/Collection;

    return-object v0
.end method
