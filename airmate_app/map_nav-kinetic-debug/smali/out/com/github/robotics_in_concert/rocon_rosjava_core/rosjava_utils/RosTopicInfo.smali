.class public Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/RosTopicInfo;
.super Ljava/lang/Object;
.source "RosTopicInfo.java"


# instance fields
.field private master:Lorg/ros/master/client/MasterStateClient;


# direct methods
.method public constructor <init>(Lorg/ros/node/Node;)V
    .registers 4
    .param p1, "caller"    # Lorg/ros/node/Node;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lorg/ros/master/client/MasterStateClient;

    invoke-interface {p1}, Lorg/ros/node/Node;->getMasterUri()Ljava/net/URI;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/ros/master/client/MasterStateClient;-><init>(Lorg/ros/node/Node;Ljava/net/URI;)V

    iput-object v0, p0, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/RosTopicInfo;->master:Lorg/ros/master/client/MasterStateClient;

    .line 24
    return-void
.end method


# virtual methods
.method public findTopic(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "type"    # Ljava/lang/String;

    .line 75
    const-wide/high16 v0, 0x402e000000000000L    # 15.0

    invoke-virtual {p0, p1, v0, v1}, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/RosTopicInfo;->findTopics(Ljava/lang/String;D)Ljava/util/List;

    move-result-object v0

    .line 76
    .local v0, "topic_names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_15

    .line 80
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 78
    :cond_15
    new-instance v1, Lorg/ros/exception/RosRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "couldn\'t find a unique topic of type  ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/ros/exception/RosRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public findTopics(Ljava/lang/String;D)Ljava/util/List;
    .registers 14
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "timeout"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 36
    const-wide/16 v0, 0x0

    .line 37
    .local v0, "duration":D
    const-wide v2, 0x3fb999999999999aL    # 0.1

    .line 38
    .local v2, "period":D
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .local v4, "topics":Ljava/util/List;, "Ljava/util/List<Lorg/ros/master/client/TopicType;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .local v5, "topic_names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_11
    iget-object v6, p0, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/RosTopicInfo;->master:Lorg/ros/master/client/MasterStateClient;

    invoke-virtual {v6}, Lorg/ros/master/client/MasterStateClient;->getTopicTypes()Ljava/util/List;

    move-result-object v4

    .line 42
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_1b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_39

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/ros/master/client/TopicType;

    .line 44
    .local v7, "topic":Lorg/ros/master/client/TopicType;
    invoke-virtual {v7}, Lorg/ros/master/client/TopicType;->getMessageType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_38

    .line 45
    invoke-virtual {v7}, Lorg/ros/master/client/TopicType;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    .end local v7    # "topic":Lorg/ros/master/client/TopicType;
    :cond_38
    goto :goto_1b

    .line 48
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_39
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_41

    .line 49
    nop

    .line 61
    return-object v5

    .line 52
    :cond_41
    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double v8, v2, v6

    double-to-int v8, v8

    int-to-long v8, v8

    :try_start_4a
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4d} :catch_73

    .line 55
    nop

    .line 56
    mul-double v6, v6, v2

    const/4 v8, 0x0

    add-double/2addr v0, v6

    .line 57
    cmpl-double v6, v0, p2

    if-gtz v6, :cond_57

    goto :goto_11

    .line 58
    :cond_57
    new-instance v6, Lorg/ros/exception/RosRuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "timed out looking for topics of type ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/ros/exception/RosRuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 53
    :catch_73
    move-exception v6

    .line 54
    .local v6, "e":Ljava/lang/Exception;
    new-instance v7, Lorg/ros/exception/RosRuntimeException;

    invoke-direct {v7, v6}, Lorg/ros/exception/RosRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method
