.class public Lorg/ros/internal/node/response/TopicTypeListResultFactory;
.super Ljava/lang/Object;
.source "TopicTypeListResultFactory.java"

# interfaces
.implements Lorg/ros/internal/node/response/ResultFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ros/internal/node/response/ResultFactory<",
        "Ljava/util/List<",
        "Lorg/ros/master/client/TopicType;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic newFromValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 31
    invoke-virtual {p0, p1}, Lorg/ros/internal/node/response/TopicTypeListResultFactory;->newFromValue(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public newFromValue(Ljava/lang/Object;)Ljava/util/List;
    .registers 12
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Lorg/ros/master/client/TopicType;",
            ">;"
        }
    .end annotation

    .line 36
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 38
    .local v0, "topics":Ljava/util/List;, "Ljava/util/List<Lorg/ros/master/client/TopicType;>;"
    move-object v1, p1

    check-cast v1, [Ljava/lang/Object;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_a
    if-ge v4, v2, :cond_28

    aget-object v5, v1, v4

    .line 39
    .local v5, "pair":Ljava/lang/Object;
    new-instance v6, Lorg/ros/master/client/TopicType;

    move-object v7, v5

    check-cast v7, [Ljava/lang/Object;

    aget-object v7, v7, v3

    check-cast v7, Ljava/lang/String;

    move-object v8, v5

    check-cast v8, [Ljava/lang/Object;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    check-cast v8, Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Lorg/ros/master/client/TopicType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    .end local v5    # "pair":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 43
    :cond_28
    return-object v0
.end method
