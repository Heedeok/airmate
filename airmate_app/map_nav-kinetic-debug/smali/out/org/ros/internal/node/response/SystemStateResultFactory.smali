.class public Lorg/ros/internal/node/response/SystemStateResultFactory;
.super Ljava/lang/Object;
.source "SystemStateResultFactory.java"

# interfaces
.implements Lorg/ros/internal/node/response/ResultFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ros/internal/node/response/ResultFactory<",
        "Lorg/ros/master/client/SystemState;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getPublishers(Ljava/lang/Object;)Ljava/util/Map;
    .registers 12
    .param p1, "pubPairs"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 87
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    .line 89
    .local v0, "topicToPublishers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    move-object v1, p1

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 90
    .local v2, "topicData":Ljava/lang/Object;
    move-object v3, v2

    check-cast v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    check-cast v3, Ljava/lang/String;

    .line 92
    .local v3, "topicName":Ljava/lang/String;
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v5

    .line 93
    .local v5, "publishers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v6, v2

    check-cast v6, [Ljava/lang/Object;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    check-cast v6, [Ljava/lang/Object;

    .line 94
    .local v6, "publisherData":[Ljava/lang/Object;
    array-length v7, v6

    :goto_2e
    if-ge v4, v7, :cond_3c

    aget-object v8, v6, v4

    .line 95
    .local v8, "publisher":Ljava/lang/Object;
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 94
    .end local v8    # "publisher":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    goto :goto_2e

    .line 98
    :cond_3c
    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .end local v2    # "topicData":Ljava/lang/Object;
    .end local v3    # "topicName":Ljava/lang/String;
    .end local v5    # "publishers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "publisherData":[Ljava/lang/Object;
    goto :goto_f

    .line 101
    :cond_40
    return-object v0
.end method

.method private getSubscribers(Ljava/lang/Object;)Ljava/util/Map;
    .registers 12
    .param p1, "subPairs"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 115
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    .line 117
    .local v0, "topicToSubscribers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    move-object v1, p1

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 118
    .local v2, "topicData":Ljava/lang/Object;
    move-object v3, v2

    check-cast v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    check-cast v3, Ljava/lang/String;

    .line 120
    .local v3, "topicName":Ljava/lang/String;
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v5

    .line 121
    .local v5, "subscribers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v6, v2

    check-cast v6, [Ljava/lang/Object;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    check-cast v6, [Ljava/lang/Object;

    .line 122
    .local v6, "subscriberData":[Ljava/lang/Object;
    array-length v7, v6

    :goto_2e
    if-ge v4, v7, :cond_3c

    aget-object v8, v6, v4

    .line 123
    .local v8, "subscriber":Ljava/lang/Object;
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 122
    .end local v8    # "subscriber":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    goto :goto_2e

    .line 126
    :cond_3c
    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .end local v2    # "topicData":Ljava/lang/Object;
    .end local v3    # "topicName":Ljava/lang/String;
    .end local v5    # "subscribers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "subscriberData":[Ljava/lang/Object;
    goto :goto_f

    .line 129
    :cond_40
    return-object v0
.end method


# virtual methods
.method public bridge synthetic newFromValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 37
    invoke-virtual {p0, p1}, Lorg/ros/internal/node/response/SystemStateResultFactory;->newFromValue(Ljava/lang/Object;)Lorg/ros/master/client/SystemState;

    move-result-object p1

    return-object p1
.end method

.method public newFromValue(Ljava/lang/Object;)Lorg/ros/master/client/SystemState;
    .registers 12
    .param p1, "value"    # Ljava/lang/Object;

    .line 41
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    .line 43
    .local v0, "vals":[Ljava/lang/Object;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-direct {p0, v1}, Lorg/ros/internal/node/response/SystemStateResultFactory;->getPublishers(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    .line 44
    .local v1, "publisherMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-direct {p0, v2}, Lorg/ros/internal/node/response/SystemStateResultFactory;->getSubscribers(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    .line 46
    .local v2, "subscriberMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v3

    .line 48
    .local v3, "topics":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/ros/master/client/TopicSystemState;>;"
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 49
    .local v5, "publisherData":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 51
    .local v6, "topicName":Ljava/lang/String;
    invoke-interface {v2, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    .line 54
    .local v7, "subscriberNodes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v7, :cond_3b

    .line 55
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v7

    .line 58
    :cond_3b
    new-instance v8, Lorg/ros/master/client/TopicSystemState;

    .line 59
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    invoke-direct {v8, v6, v9, v7}, Lorg/ros/master/client/TopicSystemState;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V

    .line 58
    invoke-interface {v3, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .end local v5    # "publisherData":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v6    # "topicName":Ljava/lang/String;
    .end local v7    # "subscriberNodes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_1d

    .line 63
    :cond_4a
    nop

    .line 64
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 63
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_53
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_78

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 66
    .local v5, "subscriberData":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v6

    .line 67
    .local v6, "noPublishers":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 68
    .local v7, "topicName":Ljava/lang/String;
    new-instance v8, Lorg/ros/master/client/TopicSystemState;

    .line 69
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    invoke-direct {v8, v7, v6, v9}, Lorg/ros/master/client/TopicSystemState;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V

    .line 68
    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .end local v5    # "subscriberData":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v6    # "noPublishers":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v7    # "topicName":Ljava/lang/String;
    goto :goto_53

    .line 74
    :cond_78
    new-instance v4, Lorg/ros/master/client/SystemState;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/ros/master/client/SystemState;-><init>(Ljava/util/Collection;)V

    return-object v4
.end method
