.class public Lorg/ros/internal/node/response/TopicListResultFactory;
.super Ljava/lang/Object;
.source "TopicListResultFactory.java"

# interfaces
.implements Lorg/ros/internal/node/response/ResultFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ros/internal/node/response/ResultFactory<",
        "Ljava/util/List<",
        "Lorg/ros/internal/node/topic/TopicDeclaration;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic newFromValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 36
    invoke-virtual {p0, p1}, Lorg/ros/internal/node/response/TopicListResultFactory;->newFromValue(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public newFromValue(Ljava/lang/Object;)Ljava/util/List;
    .registers 11
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Lorg/ros/internal/node/topic/TopicDeclaration;",
            ">;"
        }
    .end annotation

    .line 40
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 41
    .local v0, "descriptions":Ljava/util/List;, "Ljava/util/List<Lorg/ros/internal/node/topic/TopicDeclaration;>;"
    move-object v1, p1

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 42
    .local v1, "topics":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 43
    .local v3, "topic":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    check-cast v4, Ljava/lang/String;

    .line 44
    .local v4, "name":Ljava/lang/String;
    move-object v5, v3

    check-cast v5, [Ljava/lang/Object;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    check-cast v5, Ljava/lang/String;

    .line 45
    .local v5, "type":Ljava/lang/String;
    invoke-static {v4}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v6

    new-instance v7, Lorg/ros/internal/message/topic/TopicDescription;

    const/4 v8, 0x0

    invoke-direct {v7, v5, v8, v8}, Lorg/ros/internal/message/topic/TopicDescription;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6, v7}, Lorg/ros/internal/node/topic/TopicDeclaration;->newFromTopicName(Lorg/ros/namespace/GraphName;Lorg/ros/internal/message/topic/TopicDescription;)Lorg/ros/internal/node/topic/TopicDeclaration;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    .end local v3    # "topic":Ljava/lang/Object;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "type":Ljava/lang/String;
    goto :goto_f

    .line 48
    :cond_3b
    return-object v0
.end method
