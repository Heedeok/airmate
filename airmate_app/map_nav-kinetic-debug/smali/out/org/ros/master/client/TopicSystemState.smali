.class public Lorg/ros/master/client/TopicSystemState;
.super Ljava/lang/Object;
.source "TopicSystemState.java"


# instance fields
.field private final publishers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final subscribers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final topicName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V
    .registers 4
    .param p1, "topicName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 44
    .local p2, "publishers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p3, "subscribers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/ros/master/client/TopicSystemState;->topicName:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lorg/ros/master/client/TopicSystemState;->publishers:Ljava/util/Set;

    .line 47
    iput-object p3, p0, Lorg/ros/master/client/TopicSystemState;->subscribers:Ljava/util/Set;

    .line 48
    return-void
.end method


# virtual methods
.method public getPublishers()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lorg/ros/master/client/TopicSystemState;->publishers:Ljava/util/Set;

    return-object v0
.end method

.method public getSubscribers()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lorg/ros/master/client/TopicSystemState;->subscribers:Ljava/util/Set;

    return-object v0
.end method

.method public getTopicName()Ljava/lang/String;
    .registers 2

    .line 54
    iget-object v0, p0, Lorg/ros/master/client/TopicSystemState;->topicName:Ljava/lang/String;

    return-object v0
.end method
