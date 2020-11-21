.class public Lorg/ros/internal/loader/CommandLineLoader;
.super Ljava/lang/Object;
.source "CommandLineLoader.java"


# instance fields
.field private final argv:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final environment:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final nodeArguments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private nodeClassName:Ljava/lang/String;

.field private final remappingArguments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final remappings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/ros/namespace/GraphName;",
            "Lorg/ros/namespace/GraphName;",
            ">;"
        }
    .end annotation
.end field

.field private final specialRemappings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 66
    .local p1, "argv":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Ljava/lang/System;->getenv()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/ros/internal/loader/CommandLineLoader;-><init>(Ljava/util/List;Ljava/util/Map;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 78
    .local p1, "argv":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "environment":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 80
    iput-object p1, p0, Lorg/ros/internal/loader/CommandLineLoader;->argv:Ljava/util/List;

    .line 81
    iput-object p2, p0, Lorg/ros/internal/loader/CommandLineLoader;->environment:Ljava/util/Map;

    .line 82
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/internal/loader/CommandLineLoader;->nodeArguments:Ljava/util/List;

    .line 83
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/internal/loader/CommandLineLoader;->remappingArguments:Ljava/util/List;

    .line 84
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/internal/loader/CommandLineLoader;->remappings:Ljava/util/Map;

    .line 85
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/internal/loader/CommandLineLoader;->specialRemappings:Ljava/util/Map;

    .line 86
    invoke-direct {p0}, Lorg/ros/internal/loader/CommandLineLoader;->parseArgv()V

    .line 87
    return-void
.end method

.method private buildParentResolver()Lorg/ros/namespace/NameResolver;
    .registers 4

    .line 150
    invoke-static {}, Lorg/ros/namespace/GraphName;->root()Lorg/ros/namespace/GraphName;

    move-result-object v0

    .line 151
    .local v0, "namespace":Lorg/ros/namespace/GraphName;
    iget-object v1, p0, Lorg/ros/internal/loader/CommandLineLoader;->specialRemappings:Ljava/util/Map;

    const-string v2, "__ns"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 152
    iget-object v1, p0, Lorg/ros/internal/loader/CommandLineLoader;->specialRemappings:Ljava/util/Map;

    const-string v2, "__ns"

    .line 153
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v1

    invoke-virtual {v1}, Lorg/ros/namespace/GraphName;->toGlobal()Lorg/ros/namespace/GraphName;

    move-result-object v0

    goto :goto_3d

    .line 154
    :cond_21
    iget-object v1, p0, Lorg/ros/internal/loader/CommandLineLoader;->environment:Ljava/util/Map;

    const-string v2, "ROS_NAMESPACE"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 155
    iget-object v1, p0, Lorg/ros/internal/loader/CommandLineLoader;->environment:Ljava/util/Map;

    const-string v2, "ROS_NAMESPACE"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v1

    invoke-virtual {v1}, Lorg/ros/namespace/GraphName;->toGlobal()Lorg/ros/namespace/GraphName;

    move-result-object v0

    .line 157
    :cond_3d
    :goto_3d
    new-instance v1, Lorg/ros/namespace/NameResolver;

    iget-object v2, p0, Lorg/ros/internal/loader/CommandLineLoader;->remappings:Ljava/util/Map;

    invoke-direct {v1, v0, v2}, Lorg/ros/namespace/NameResolver;-><init>(Lorg/ros/namespace/GraphName;Ljava/util/Map;)V

    return-object v1
.end method

.method private getHost()Ljava/lang/String;
    .registers 4

    .line 171
    invoke-static {}, Lorg/ros/address/InetAddressFactory;->newLoopback()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "host":Ljava/lang/String;
    iget-object v1, p0, Lorg/ros/internal/loader/CommandLineLoader;->specialRemappings:Ljava/util/Map;

    const-string v2, "__ip"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 173
    iget-object v1, p0, Lorg/ros/internal/loader/CommandLineLoader;->specialRemappings:Ljava/util/Map;

    const-string v2, "__ip"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    goto :goto_49

    .line 174
    :cond_1e
    iget-object v1, p0, Lorg/ros/internal/loader/CommandLineLoader;->environment:Ljava/util/Map;

    const-string v2, "ROS_IP"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 175
    iget-object v1, p0, Lorg/ros/internal/loader/CommandLineLoader;->environment:Ljava/util/Map;

    const-string v2, "ROS_IP"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    goto :goto_49

    .line 176
    :cond_34
    iget-object v1, p0, Lorg/ros/internal/loader/CommandLineLoader;->environment:Ljava/util/Map;

    const-string v2, "ROS_HOSTNAME"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 177
    iget-object v1, p0, Lorg/ros/internal/loader/CommandLineLoader;->environment:Ljava/util/Map;

    const-string v2, "ROS_HOSTNAME"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    .line 179
    :cond_49
    :goto_49
    return-object v0
.end method

.method private getMasterUri()Ljava/net/URI;
    .registers 6

    .line 193
    sget-object v0, Lorg/ros/node/NodeConfiguration;->DEFAULT_MASTER_URI:Ljava/net/URI;

    .line 195
    .local v0, "uri":Ljava/net/URI;
    :try_start_2
    iget-object v1, p0, Lorg/ros/internal/loader/CommandLineLoader;->specialRemappings:Ljava/util/Map;

    const-string v2, "__master"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 196
    new-instance v1, Ljava/net/URI;

    iget-object v2, p0, Lorg/ros/internal/loader/CommandLineLoader;->specialRemappings:Ljava/util/Map;

    const-string v3, "__master"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_37

    .line 197
    :cond_1d
    iget-object v1, p0, Lorg/ros/internal/loader/CommandLineLoader;->environment:Ljava/util/Map;

    const-string v2, "ROS_MASTER_URI"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 198
    new-instance v1, Ljava/net/URI;

    iget-object v2, p0, Lorg/ros/internal/loader/CommandLineLoader;->environment:Ljava/util/Map;

    const-string v3, "ROS_MASTER_URI"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_36
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_36} :catch_38

    move-object v0, v1

    .line 200
    :cond_37
    :goto_37
    return-object v0

    .line 201
    :catch_38
    move-exception v1

    .line 202
    .local v1, "e":Ljava/net/URISyntaxException;
    new-instance v2, Lorg/ros/exception/RosRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid master URI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/ros/exception/RosRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getRosPackagePath()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lorg/ros/internal/loader/CommandLineLoader;->environment:Ljava/util/Map;

    const-string v1, "ROS_PACKAGE_PATH"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 218
    iget-object v0, p0, Lorg/ros/internal/loader/CommandLineLoader;->environment:Ljava/util/Map;

    const-string v1, "ROS_PACKAGE_PATH"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 219
    .local v0, "rosPackagePath":Ljava/lang/String;
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 220
    .local v1, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    sget-object v2, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_20
    if-ge v4, v3, :cond_2f

    aget-object v5, v2, v4

    .line 221
    .local v5, "path":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    .end local v5    # "path":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .line 223
    :cond_2f
    return-object v1

    .line 225
    .end local v0    # "rosPackagePath":Ljava/lang/String;
    .end local v1    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    :cond_30
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private getRosRoot()Ljava/io/File;
    .registers 4

    .line 207
    iget-object v0, p0, Lorg/ros/internal/loader/CommandLineLoader;->environment:Ljava/util/Map;

    const-string v1, "ROS_ROOT"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 208
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/ros/internal/loader/CommandLineLoader;->environment:Ljava/util/Map;

    const-string v2, "ROS_ROOT"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 212
    :cond_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method private parseArgv()V
    .registers 4

    .line 90
    iget-object v0, p0, Lorg/ros/internal/loader/CommandLineLoader;->argv:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/ros/internal/loader/CommandLineLoader;->nodeClassName:Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lorg/ros/internal/loader/CommandLineLoader;->argv:Ljava/util/List;

    iget-object v1, p0, Lorg/ros/internal/loader/CommandLineLoader;->argv:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 92
    .local v1, "argument":Ljava/lang/String;
    const-string v2, ":="

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 93
    iget-object v2, p0, Lorg/ros/internal/loader/CommandLineLoader;->remappingArguments:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3b

    .line 95
    :cond_36
    iget-object v2, p0, Lorg/ros/internal/loader/CommandLineLoader;->nodeArguments:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    .end local v1    # "argument":Ljava/lang/String;
    :goto_3b
    goto :goto_1c

    .line 98
    :cond_3c
    return-void
.end method

.method private parseRemappingArguments()V
    .registers 7

    .line 127
    iget-object v0, p0, Lorg/ros/internal/loader/CommandLineLoader;->remappingArguments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_62

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 128
    .local v1, "remapping":Ljava/lang/String;
    const-string v2, ":="

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 129
    const-string v2, ":="

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 130
    .local v2, "remap":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x2

    if-gt v3, v4, :cond_4b

    .line 133
    const-string v3, "__"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_39

    .line 134
    iget-object v3, p0, Lorg/ros/internal/loader/CommandLineLoader;->specialRemappings:Ljava/util/Map;

    aget-object v5, v2, v5

    aget-object v4, v2, v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4a

    .line 136
    :cond_39
    iget-object v3, p0, Lorg/ros/internal/loader/CommandLineLoader;->remappings:Ljava/util/Map;

    aget-object v5, v2, v5

    invoke-static {v5}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v5

    aget-object v4, v2, v4

    invoke-static {v4}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .end local v1    # "remapping":Ljava/lang/String;
    .end local v2    # "remap":[Ljava/lang/String;
    :goto_4a
    goto :goto_6

    .line 131
    .restart local v1    # "remapping":Ljava/lang/String;
    .restart local v2    # "remap":[Ljava/lang/String;
    :cond_4b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid remapping argument: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    .end local v1    # "remapping":Ljava/lang/String;
    .end local v2    # "remap":[Ljava/lang/String;
    :cond_62
    return-void
.end method


# virtual methods
.method public build()Lorg/ros/node/NodeConfiguration;
    .registers 4

    .line 113
    invoke-direct {p0}, Lorg/ros/internal/loader/CommandLineLoader;->parseRemappingArguments()V

    .line 115
    invoke-direct {p0}, Lorg/ros/internal/loader/CommandLineLoader;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/ros/node/NodeConfiguration;->newPublic(Ljava/lang/String;)Lorg/ros/node/NodeConfiguration;

    move-result-object v0

    .line 116
    .local v0, "nodeConfiguration":Lorg/ros/node/NodeConfiguration;
    invoke-direct {p0}, Lorg/ros/internal/loader/CommandLineLoader;->buildParentResolver()Lorg/ros/namespace/NameResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ros/node/NodeConfiguration;->setParentResolver(Lorg/ros/namespace/NameResolver;)Lorg/ros/node/NodeConfiguration;

    .line 117
    invoke-direct {p0}, Lorg/ros/internal/loader/CommandLineLoader;->getRosRoot()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ros/node/NodeConfiguration;->setRosRoot(Ljava/io/File;)Lorg/ros/node/NodeConfiguration;

    .line 118
    invoke-direct {p0}, Lorg/ros/internal/loader/CommandLineLoader;->getRosPackagePath()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ros/node/NodeConfiguration;->setRosPackagePath(Ljava/util/List;)Lorg/ros/node/NodeConfiguration;

    .line 119
    invoke-direct {p0}, Lorg/ros/internal/loader/CommandLineLoader;->getMasterUri()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ros/node/NodeConfiguration;->setMasterUri(Ljava/net/URI;)Lorg/ros/node/NodeConfiguration;

    .line 120
    iget-object v1, p0, Lorg/ros/internal/loader/CommandLineLoader;->specialRemappings:Ljava/util/Map;

    const-string v2, "__name"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 121
    iget-object v1, p0, Lorg/ros/internal/loader/CommandLineLoader;->specialRemappings:Ljava/util/Map;

    const-string v2, "__name"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/ros/node/NodeConfiguration;->setNodeName(Ljava/lang/String;)Lorg/ros/node/NodeConfiguration;

    .line 123
    :cond_3e
    return-object v0
.end method

.method public getNodeArguments()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lorg/ros/internal/loader/CommandLineLoader;->nodeArguments:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNodeClassName()Ljava/lang/String;
    .registers 2

    .line 101
    iget-object v0, p0, Lorg/ros/internal/loader/CommandLineLoader;->nodeClassName:Ljava/lang/String;

    return-object v0
.end method

.method public loadClass(Ljava/lang/String;)Lorg/ros/node/NodeMain;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 239
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 240
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Lorg/ros/node/NodeMain;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ros/node/NodeMain;

    return-object v1
.end method
