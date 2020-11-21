.class public Lorg/ros/internal/node/server/ParameterServer;
.super Ljava/lang/Object;
.source "ParameterServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ros/internal/node/server/ParameterServer$Updater;
    }
.end annotation


# static fields
.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field private final masterName:Lorg/ros/namespace/GraphName;

.field private final subscribers:Lcom/google/common/collect/Multimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Multimap<",
            "Lorg/ros/namespace/GraphName;",
            "Lorg/ros/internal/node/server/NodeIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field private final tree:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 44
    const-class v0, Lorg/ros/internal/node/server/ParameterServer;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/ros/internal/node/server/ParameterServer;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {}, Lcom/google/common/collect/Maps;->newConcurrentMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/internal/node/server/ParameterServer;->tree:Ljava/util/Map;

    .line 52
    invoke-static {}, Lcom/google/common/collect/HashMultimap;->create()Lcom/google/common/collect/HashMultimap;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Multimaps;->synchronizedMultimap(Lcom/google/common/collect/Multimap;)Lcom/google/common/collect/Multimap;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/internal/node/server/ParameterServer;->subscribers:Lcom/google/common/collect/Multimap;

    .line 53
    const-string v0, "/master"

    invoke-static {v0}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/internal/node/server/ParameterServer;->masterName:Lorg/ros/namespace/GraphName;

    .line 54
    return-void
.end method

.method private getGraphNameParts(Lorg/ros/namespace/GraphName;)Ljava/util/Stack;
    .registers 5
    .param p1, "name"    # Lorg/ros/namespace/GraphName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/namespace/GraphName;",
            ")",
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 61
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 62
    .local v0, "parts":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    move-object v1, p1

    .line 63
    .local v1, "tip":Lorg/ros/namespace/GraphName;
    :goto_6
    invoke-virtual {v1}, Lorg/ros/namespace/GraphName;->isRoot()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 64
    invoke-virtual {v1}, Lorg/ros/namespace/GraphName;->getBasename()Lorg/ros/namespace/GraphName;

    move-result-object v2

    invoke-virtual {v2}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-virtual {v1}, Lorg/ros/namespace/GraphName;->getParent()Lorg/ros/namespace/GraphName;

    move-result-object v1

    goto :goto_6

    .line 67
    :cond_1c
    return-object v0
.end method

.method private getSubtreeNames(Lorg/ros/namespace/GraphName;Ljava/util/Map;Ljava/util/Set;)Ljava/util/Set;
    .registers 9
    .param p1, "parent"    # Lorg/ros/namespace/GraphName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/namespace/GraphName;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Set<",
            "Lorg/ros/namespace/GraphName;",
            ">;)",
            "Ljava/util/Set<",
            "Lorg/ros/namespace/GraphName;",
            ">;"
        }
    .end annotation

    .line 223
    .local p2, "subtree":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p3, "names":Ljava/util/Set;, "Ljava/util/Set<Lorg/ros/namespace/GraphName;>;"
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 224
    .local v1, "name":Ljava/lang/String;
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 225
    .local v2, "possibleSubtree":Ljava/lang/Object;
    instance-of v3, v2, Ljava/util/Map;

    if-eqz v3, :cond_2f

    .line 226
    invoke-static {v1}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/ros/namespace/GraphName;->join(Lorg/ros/namespace/GraphName;)Lorg/ros/namespace/GraphName;

    move-result-object v3

    move-object v4, v2

    check-cast v4, Ljava/util/Map;

    invoke-direct {p0, v3, v4, p3}, Lorg/ros/internal/node/server/ParameterServer;->getSubtreeNames(Lorg/ros/namespace/GraphName;Ljava/util/Map;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_3a

    .line 229
    :cond_2f
    invoke-static {v1}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/ros/namespace/GraphName;->join(Lorg/ros/namespace/GraphName;)Lorg/ros/namespace/GraphName;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 231
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "possibleSubtree":Ljava/lang/Object;
    :goto_3a
    goto :goto_8

    .line 232
    :cond_3b
    return-object p3
.end method

.method private setValue(Lorg/ros/namespace/GraphName;Ljava/lang/Object;)V
    .registers 7
    .param p1, "name"    # Lorg/ros/namespace/GraphName;
    .param p2, "value"    # Ljava/lang/Object;

    .line 86
    invoke-virtual {p1}, Lorg/ros/namespace/GraphName;->isGlobal()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 87
    invoke-direct {p0, p1}, Lorg/ros/internal/node/server/ParameterServer;->getGraphNameParts(Lorg/ros/namespace/GraphName;)Ljava/util/Stack;

    move-result-object v0

    .line 88
    .local v0, "parts":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/ros/internal/node/server/ParameterServer;->tree:Ljava/util/Map;

    .line 89
    .local v1, "subtree":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_d
    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v2

    if-nez v2, :cond_42

    .line 90
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 91
    .local v2, "part":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 92
    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_41

    .line 93
    :cond_23
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/util/Map;

    if-eqz v3, :cond_39

    .line 94
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Ljava/util/Map;

    goto :goto_41

    .line 96
    :cond_39
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v3

    .line 97
    .local v3, "newSubtree":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    move-object v1, v3

    .line 100
    .end local v2    # "part":Ljava/lang/String;
    .end local v3    # "newSubtree":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_41
    goto :goto_d

    .line 101
    :cond_42
    return-void
.end method

.method private update(Lorg/ros/namespace/GraphName;Ljava/lang/Object;Lorg/ros/internal/node/server/ParameterServer$Updater;)V
    .registers 10
    .param p1, "name"    # Lorg/ros/namespace/GraphName;
    .param p3, "updater"    # Lorg/ros/internal/node/server/ParameterServer$Updater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/ros/namespace/GraphName;",
            "TT;",
            "Lorg/ros/internal/node/server/ParameterServer$Updater;",
            ")V"
        }
    .end annotation

    .line 108
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1, p2}, Lorg/ros/internal/node/server/ParameterServer;->setValue(Lorg/ros/namespace/GraphName;Ljava/lang/Object;)V

    .line 109
    iget-object v0, p0, Lorg/ros/internal/node/server/ParameterServer;->subscribers:Lcom/google/common/collect/Multimap;

    monitor-enter v0

    .line 110
    :try_start_6
    iget-object v1, p0, Lorg/ros/internal/node/server/ParameterServer;->subscribers:Lcom/google/common/collect/Multimap;

    invoke-interface {v1, p1}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ros/internal/node/server/NodeIdentifier;

    .line 111
    .local v2, "nodeIdentifier":Lorg/ros/internal/node/server/NodeIdentifier;
    new-instance v3, Lorg/ros/internal/node/client/SlaveClient;

    iget-object v4, p0, Lorg/ros/internal/node/server/ParameterServer;->masterName:Lorg/ros/namespace/GraphName;

    invoke-virtual {v2}, Lorg/ros/internal/node/server/NodeIdentifier;->getUri()Ljava/net/URI;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/ros/internal/node/client/SlaveClient;-><init>(Lorg/ros/namespace/GraphName;Ljava/net/URI;)V
    :try_end_27
    .catchall {:try_start_6 .. :try_end_27} :catchall_34

    .line 113
    .local v3, "client":Lorg/ros/internal/node/client/SlaveClient;
    :try_start_27
    invoke-interface {p3, v3}, Lorg/ros/internal/node/server/ParameterServer$Updater;->update(Lorg/ros/internal/node/client/SlaveClient;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2a} :catch_2b
    .catchall {:try_start_27 .. :try_end_2a} :catchall_34

    .line 116
    goto :goto_31

    .line 114
    :catch_2b
    move-exception v4

    .line 115
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2c
    sget-object v5, Lorg/ros/internal/node/server/ParameterServer;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v5, v4}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    .line 117
    .end local v2    # "nodeIdentifier":Lorg/ros/internal/node/server/NodeIdentifier;
    .end local v3    # "client":Lorg/ros/internal/node/client/SlaveClient;
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_31
    goto :goto_10

    .line 118
    :cond_32
    monitor-exit v0

    .line 119
    return-void

    .line 118
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_2c .. :try_end_36} :catchall_34

    throw v1
.end method


# virtual methods
.method public delete(Lorg/ros/namespace/GraphName;)V
    .registers 6
    .param p1, "name"    # Lorg/ros/namespace/GraphName;

    .line 177
    invoke-virtual {p1}, Lorg/ros/namespace/GraphName;->isGlobal()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 178
    invoke-direct {p0, p1}, Lorg/ros/internal/node/server/ParameterServer;->getGraphNameParts(Lorg/ros/namespace/GraphName;)Ljava/util/Stack;

    move-result-object v0

    .line 179
    .local v0, "parts":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/ros/internal/node/server/ParameterServer;->tree:Ljava/util/Map;

    .line 180
    .local v1, "subtree":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_d
    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v2

    if-nez v2, :cond_35

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 181
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 182
    .local v2, "part":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 183
    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_34

    .line 185
    :cond_2d
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Ljava/util/Map;

    .line 187
    .end local v2    # "part":Ljava/lang/String;
    :goto_34
    goto :goto_d

    .line 188
    :cond_35
    return-void
.end method

.method public get(Lorg/ros/namespace/GraphName;)Ljava/lang/Object;
    .registers 6
    .param p1, "name"    # Lorg/ros/namespace/GraphName;

    .line 72
    invoke-virtual {p1}, Lorg/ros/namespace/GraphName;->isGlobal()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 73
    invoke-direct {p0, p1}, Lorg/ros/internal/node/server/ParameterServer;->getGraphNameParts(Lorg/ros/namespace/GraphName;)Ljava/util/Stack;

    move-result-object v0

    .line 74
    .local v0, "parts":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/ros/internal/node/server/ParameterServer;->tree:Ljava/util/Map;

    .line 75
    .local v1, "possibleSubtree":Ljava/lang/Object;
    :goto_d
    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v2

    if-nez v2, :cond_27

    if-eqz v1, :cond_27

    .line 76
    instance-of v2, v1, Ljava/util/Map;

    if-nez v2, :cond_1b

    .line 77
    const/4 v2, 0x0

    return-object v2

    .line 79
    :cond_1b
    move-object v2, v1

    check-cast v2, Ljava/util/Map;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_d

    .line 81
    :cond_27
    return-object v1
.end method

.method public getNames()Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/ros/namespace/GraphName;",
            ">;"
        }
    .end annotation

    .line 236
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    .line 237
    .local v0, "names":Ljava/util/Set;, "Ljava/util/Set<Lorg/ros/namespace/GraphName;>;"
    invoke-static {}, Lorg/ros/namespace/GraphName;->root()Lorg/ros/namespace/GraphName;

    move-result-object v1

    iget-object v2, p0, Lorg/ros/internal/node/server/ParameterServer;->tree:Ljava/util/Map;

    invoke-direct {p0, v1, v2, v0}, Lorg/ros/internal/node/server/ParameterServer;->getSubtreeNames(Lorg/ros/namespace/GraphName;Ljava/util/Map;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public has(Lorg/ros/namespace/GraphName;)Z
    .registers 6
    .param p1, "name"    # Lorg/ros/namespace/GraphName;

    .line 208
    invoke-virtual {p1}, Lorg/ros/namespace/GraphName;->isGlobal()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 209
    invoke-direct {p0, p1}, Lorg/ros/internal/node/server/ParameterServer;->getGraphNameParts(Lorg/ros/namespace/GraphName;)Ljava/util/Stack;

    move-result-object v0

    .line 210
    .local v0, "parts":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/ros/internal/node/server/ParameterServer;->tree:Ljava/util/Map;

    .line 211
    .local v1, "subtree":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_d
    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v2

    if-nez v2, :cond_31

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 212
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 213
    .local v2, "part":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v3

    if-nez v3, :cond_30

    .line 214
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Ljava/util/Map;

    .line 216
    .end local v2    # "part":Ljava/lang/String;
    :cond_30
    goto :goto_d

    .line 217
    :cond_31
    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v2

    return v2
.end method

.method public search(Lorg/ros/namespace/GraphName;Lorg/ros/namespace/GraphName;)Ljava/lang/Object;
    .registers 6
    .param p1, "namespace"    # Lorg/ros/namespace/GraphName;
    .param p2, "name"    # Lorg/ros/namespace/GraphName;

    .line 191
    move-object v0, p1

    .line 192
    .local v0, "search":Lorg/ros/namespace/GraphName;
    invoke-virtual {p2}, Lorg/ros/namespace/GraphName;->toRelative()Lorg/ros/namespace/GraphName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ros/namespace/GraphName;->join(Lorg/ros/namespace/GraphName;)Lorg/ros/namespace/GraphName;

    move-result-object v1

    .line 193
    .local v1, "result":Lorg/ros/namespace/GraphName;
    invoke-virtual {p0, v1}, Lorg/ros/internal/node/server/ParameterServer;->has(Lorg/ros/namespace/GraphName;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 194
    return-object v1

    .line 196
    :cond_10
    invoke-virtual {v0}, Lorg/ros/namespace/GraphName;->isRoot()Z

    move-result v2

    if-nez v2, :cond_29

    .line 197
    invoke-virtual {v0}, Lorg/ros/namespace/GraphName;->getParent()Lorg/ros/namespace/GraphName;

    move-result-object v0

    .line 198
    invoke-virtual {p2}, Lorg/ros/namespace/GraphName;->toRelative()Lorg/ros/namespace/GraphName;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/ros/namespace/GraphName;->join(Lorg/ros/namespace/GraphName;)Lorg/ros/namespace/GraphName;

    move-result-object v1

    .line 199
    invoke-virtual {p0, v1}, Lorg/ros/internal/node/server/ParameterServer;->has(Lorg/ros/namespace/GraphName;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 200
    return-object v1

    .line 203
    :cond_29
    const/4 v2, 0x0

    return-object v2
.end method

.method public set(Lorg/ros/namespace/GraphName;D)V
    .registers 6
    .param p1, "name"    # Lorg/ros/namespace/GraphName;
    .param p2, "value"    # D

    .line 140
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    new-instance v1, Lorg/ros/internal/node/server/ParameterServer$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/ros/internal/node/server/ParameterServer$3;-><init>(Lorg/ros/internal/node/server/ParameterServer;Lorg/ros/namespace/GraphName;D)V

    invoke-direct {p0, p1, v0, v1}, Lorg/ros/internal/node/server/ParameterServer;->update(Lorg/ros/namespace/GraphName;Ljava/lang/Object;Lorg/ros/internal/node/server/ParameterServer$Updater;)V

    .line 146
    return-void
.end method

.method public set(Lorg/ros/namespace/GraphName;I)V
    .registers 5
    .param p1, "name"    # Lorg/ros/namespace/GraphName;
    .param p2, "value"    # I

    .line 131
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lorg/ros/internal/node/server/ParameterServer$2;

    invoke-direct {v1, p0, p1, p2}, Lorg/ros/internal/node/server/ParameterServer$2;-><init>(Lorg/ros/internal/node/server/ParameterServer;Lorg/ros/namespace/GraphName;I)V

    invoke-direct {p0, p1, v0, v1}, Lorg/ros/internal/node/server/ParameterServer;->update(Lorg/ros/namespace/GraphName;Ljava/lang/Object;Lorg/ros/internal/node/server/ParameterServer$Updater;)V

    .line 137
    return-void
.end method

.method public set(Lorg/ros/namespace/GraphName;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Lorg/ros/namespace/GraphName;
    .param p2, "value"    # Ljava/lang/String;

    .line 149
    new-instance v0, Lorg/ros/internal/node/server/ParameterServer$4;

    invoke-direct {v0, p0, p1, p2}, Lorg/ros/internal/node/server/ParameterServer$4;-><init>(Lorg/ros/internal/node/server/ParameterServer;Lorg/ros/namespace/GraphName;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, v0}, Lorg/ros/internal/node/server/ParameterServer;->update(Lorg/ros/namespace/GraphName;Ljava/lang/Object;Lorg/ros/internal/node/server/ParameterServer$Updater;)V

    .line 155
    return-void
.end method

.method public set(Lorg/ros/namespace/GraphName;Ljava/util/List;)V
    .registers 4
    .param p1, "name"    # Lorg/ros/namespace/GraphName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/namespace/GraphName;",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .line 158
    .local p2, "value":Ljava/util/List;, "Ljava/util/List<*>;"
    new-instance v0, Lorg/ros/internal/node/server/ParameterServer$5;

    invoke-direct {v0, p0, p1, p2}, Lorg/ros/internal/node/server/ParameterServer$5;-><init>(Lorg/ros/internal/node/server/ParameterServer;Lorg/ros/namespace/GraphName;Ljava/util/List;)V

    invoke-direct {p0, p1, p2, v0}, Lorg/ros/internal/node/server/ParameterServer;->update(Lorg/ros/namespace/GraphName;Ljava/lang/Object;Lorg/ros/internal/node/server/ParameterServer$Updater;)V

    .line 164
    return-void
.end method

.method public set(Lorg/ros/namespace/GraphName;Ljava/util/Map;)V
    .registers 4
    .param p1, "name"    # Lorg/ros/namespace/GraphName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/namespace/GraphName;",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    .line 167
    .local p2, "value":Ljava/util/Map;, "Ljava/util/Map<**>;"
    new-instance v0, Lorg/ros/internal/node/server/ParameterServer$6;

    invoke-direct {v0, p0, p1, p2}, Lorg/ros/internal/node/server/ParameterServer$6;-><init>(Lorg/ros/internal/node/server/ParameterServer;Lorg/ros/namespace/GraphName;Ljava/util/Map;)V

    invoke-direct {p0, p1, p2, v0}, Lorg/ros/internal/node/server/ParameterServer;->update(Lorg/ros/namespace/GraphName;Ljava/lang/Object;Lorg/ros/internal/node/server/ParameterServer$Updater;)V

    .line 173
    return-void
.end method

.method public set(Lorg/ros/namespace/GraphName;Z)V
    .registers 5
    .param p1, "name"    # Lorg/ros/namespace/GraphName;
    .param p2, "value"    # Z

    .line 122
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    new-instance v1, Lorg/ros/internal/node/server/ParameterServer$1;

    invoke-direct {v1, p0, p1, p2}, Lorg/ros/internal/node/server/ParameterServer$1;-><init>(Lorg/ros/internal/node/server/ParameterServer;Lorg/ros/namespace/GraphName;Z)V

    invoke-direct {p0, p1, v0, v1}, Lorg/ros/internal/node/server/ParameterServer;->update(Lorg/ros/namespace/GraphName;Ljava/lang/Object;Lorg/ros/internal/node/server/ParameterServer$Updater;)V

    .line 128
    return-void
.end method

.method public subscribe(Lorg/ros/namespace/GraphName;Lorg/ros/internal/node/server/NodeIdentifier;)V
    .registers 4
    .param p1, "name"    # Lorg/ros/namespace/GraphName;
    .param p2, "nodeIdentifier"    # Lorg/ros/internal/node/server/NodeIdentifier;

    .line 57
    iget-object v0, p0, Lorg/ros/internal/node/server/ParameterServer;->subscribers:Lcom/google/common/collect/Multimap;

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    return-void
.end method
