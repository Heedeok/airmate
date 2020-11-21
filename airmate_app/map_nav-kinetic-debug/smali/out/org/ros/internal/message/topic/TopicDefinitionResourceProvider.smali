.class public Lorg/ros/internal/message/topic/TopicDefinitionResourceProvider;
.super Ljava/lang/Object;
.source "TopicDefinitionResourceProvider.java"

# interfaces
.implements Lorg/ros/message/MessageDefinitionProvider;


# instance fields
.field private final stringResourceProvider:Lorg/ros/internal/message/StringResourceProvider;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lorg/ros/internal/message/StringResourceProvider;

    invoke-direct {v0}, Lorg/ros/internal/message/StringResourceProvider;-><init>()V

    iput-object v0, p0, Lorg/ros/internal/message/topic/TopicDefinitionResourceProvider;->stringResourceProvider:Lorg/ros/internal/message/StringResourceProvider;

    .line 36
    return-void
.end method

.method private topicTypeToResourceName(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "topicType"    # Ljava/lang/String;

    .line 39
    invoke-static {p1}, Lorg/ros/message/MessageIdentifier;->of(Ljava/lang/String;)Lorg/ros/message/MessageIdentifier;

    move-result-object v0

    .line 40
    .local v0, "messageIdentifier":Lorg/ros/message/MessageIdentifier;
    const-string v1, "/%s/msg/%s.msg"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/ros/message/MessageIdentifier;->getPackage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 41
    invoke-virtual {v0}, Lorg/ros/message/MessageIdentifier;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 40
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "topicType"    # Ljava/lang/String;
    .param p2, "topicDefinition"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .line 56
    iget-object v0, p0, Lorg/ros/internal/message/topic/TopicDefinitionResourceProvider;->stringResourceProvider:Lorg/ros/internal/message/StringResourceProvider;

    invoke-direct {p0, p1}, Lorg/ros/internal/message/topic/TopicDefinitionResourceProvider;->topicTypeToResourceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lorg/ros/internal/message/StringResourceProvider;->addStringToCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "topicType"    # Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lorg/ros/internal/message/topic/TopicDefinitionResourceProvider;->stringResourceProvider:Lorg/ros/internal/message/StringResourceProvider;

    invoke-direct {p0, p1}, Lorg/ros/internal/message/topic/TopicDefinitionResourceProvider;->topicTypeToResourceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ros/internal/message/StringResourceProvider;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageIdentifiersByPackage(Ljava/lang/String;)Ljava/util/Collection;
    .registers 3
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Lorg/ros/message/MessageIdentifier;",
            ">;"
        }
    .end annotation

    .line 66
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPackages()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 61
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public has(Ljava/lang/String;)Z
    .registers 4
    .param p1, "topicType"    # Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lorg/ros/internal/message/topic/TopicDefinitionResourceProvider;->stringResourceProvider:Lorg/ros/internal/message/StringResourceProvider;

    invoke-direct {p0, p1}, Lorg/ros/internal/message/topic/TopicDefinitionResourceProvider;->topicTypeToResourceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ros/internal/message/StringResourceProvider;->has(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
