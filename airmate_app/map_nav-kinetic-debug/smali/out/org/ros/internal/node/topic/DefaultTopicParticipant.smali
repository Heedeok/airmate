.class public abstract Lorg/ros/internal/node/topic/DefaultTopicParticipant;
.super Ljava/lang/Object;
.source "DefaultTopicParticipant.java"

# interfaces
.implements Lorg/ros/internal/node/topic/TopicParticipant;


# instance fields
.field private final topicDeclaration:Lorg/ros/internal/node/topic/TopicDeclaration;


# direct methods
.method public constructor <init>(Lorg/ros/internal/node/topic/TopicDeclaration;)V
    .registers 2
    .param p1, "topicDeclaration"    # Lorg/ros/internal/node/topic/TopicDeclaration;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/ros/internal/node/topic/DefaultTopicParticipant;->topicDeclaration:Lorg/ros/internal/node/topic/TopicDeclaration;

    .line 36
    return-void
.end method


# virtual methods
.method public getTopicDeclaration()Lorg/ros/internal/node/topic/TopicDeclaration;
    .registers 2

    .line 42
    iget-object v0, p0, Lorg/ros/internal/node/topic/DefaultTopicParticipant;->topicDeclaration:Lorg/ros/internal/node/topic/TopicDeclaration;

    return-object v0
.end method

.method public getTopicDeclarationAsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lorg/ros/internal/node/topic/DefaultTopicParticipant;->topicDeclaration:Lorg/ros/internal/node/topic/TopicDeclaration;

    invoke-virtual {v0}, Lorg/ros/internal/node/topic/TopicDeclaration;->toList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTopicDeclarationHeader()Lorg/ros/internal/transport/ConnectionHeader;
    .registers 2

    .line 63
    iget-object v0, p0, Lorg/ros/internal/node/topic/DefaultTopicParticipant;->topicDeclaration:Lorg/ros/internal/node/topic/TopicDeclaration;

    invoke-virtual {v0}, Lorg/ros/internal/node/topic/TopicDeclaration;->toConnectionHeader()Lorg/ros/internal/transport/ConnectionHeader;

    move-result-object v0

    return-object v0
.end method

.method public getTopicMessageType()Ljava/lang/String;
    .registers 2

    .line 56
    iget-object v0, p0, Lorg/ros/internal/node/topic/DefaultTopicParticipant;->topicDeclaration:Lorg/ros/internal/node/topic/TopicDeclaration;

    invoke-virtual {v0}, Lorg/ros/internal/node/topic/TopicDeclaration;->getMessageType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTopicName()Lorg/ros/namespace/GraphName;
    .registers 2

    .line 51
    iget-object v0, p0, Lorg/ros/internal/node/topic/DefaultTopicParticipant;->topicDeclaration:Lorg/ros/internal/node/topic/TopicDeclaration;

    invoke-virtual {v0}, Lorg/ros/internal/node/topic/TopicDeclaration;->getName()Lorg/ros/namespace/GraphName;

    move-result-object v0

    return-object v0
.end method

.method public abstract signalOnMasterRegistrationFailure()V
.end method

.method public abstract signalOnMasterRegistrationSuccess()V
.end method

.method public abstract signalOnMasterUnregistrationFailure()V
.end method

.method public abstract signalOnMasterUnregistrationSuccess()V
.end method
