.class public Lorg/ros/internal/message/definition/MessageDefinitionProviderChain;
.super Ljava/lang/Object;
.source "MessageDefinitionProviderChain.java"

# interfaces
.implements Lorg/ros/message/MessageDefinitionProvider;


# instance fields
.field private final messageDefinitionProviders:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/ros/message/MessageDefinitionProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/internal/message/definition/MessageDefinitionProviderChain;->messageDefinitionProviders:Ljava/util/Collection;

    .line 38
    return-void
.end method


# virtual methods
.method public addMessageDefinitionProvider(Lorg/ros/message/MessageDefinitionProvider;)V
    .registers 3
    .param p1, "messageDefinitionProvider"    # Lorg/ros/message/MessageDefinitionProvider;

    .line 41
    iget-object v0, p0, Lorg/ros/internal/message/definition/MessageDefinitionProviderChain;->messageDefinitionProviders:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 42
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "messageType"    # Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lorg/ros/internal/message/definition/MessageDefinitionProviderChain;->messageDefinitionProviders:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ros/message/MessageDefinitionProvider;

    .line 47
    .local v1, "messageDefinitionProvider":Lorg/ros/message/MessageDefinitionProvider;
    invoke-interface {v1, p1}, Lorg/ros/message/MessageDefinitionProvider;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 48
    invoke-interface {v1, p1}, Lorg/ros/message/MessageDefinitionProvider;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 50
    .end local v1    # "messageDefinitionProvider":Lorg/ros/message/MessageDefinitionProvider;
    :cond_1d
    goto :goto_6

    .line 51
    :cond_1e
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No message definition available for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMessageIdentifiersByPackage(Ljava/lang/String;)Ljava/util/Collection;
    .registers 6
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

    .line 76
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    .line 77
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Lorg/ros/message/MessageIdentifier;>;"
    iget-object v1, p0, Lorg/ros/internal/message/definition/MessageDefinitionProviderChain;->messageDefinitionProviders:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ros/message/MessageDefinitionProvider;

    .line 78
    .local v2, "messageDefinitionProvider":Lorg/ros/message/MessageDefinitionProvider;
    nop

    .line 79
    invoke-interface {v2, p1}, Lorg/ros/message/MessageDefinitionProvider;->getMessageIdentifiersByPackage(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v3

    .line 80
    .local v3, "messageIdentifiers":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/ros/message/MessageIdentifier;>;"
    if-eqz v3, :cond_20

    .line 81
    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 83
    .end local v2    # "messageDefinitionProvider":Lorg/ros/message/MessageDefinitionProvider;
    .end local v3    # "messageIdentifiers":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/ros/message/MessageIdentifier;>;"
    :cond_20
    goto :goto_a

    .line 84
    :cond_21
    return-object v0
.end method

.method public getPackages()Ljava/util/Collection;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 66
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    .line 67
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/ros/internal/message/definition/MessageDefinitionProviderChain;->messageDefinitionProviders:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ros/message/MessageDefinitionProvider;

    .line 68
    .local v2, "messageDefinitionProvider":Lorg/ros/message/MessageDefinitionProvider;
    invoke-interface {v2}, Lorg/ros/message/MessageDefinitionProvider;->getPackages()Ljava/util/Collection;

    move-result-object v3

    .line 69
    .local v3, "packages":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 70
    .end local v2    # "messageDefinitionProvider":Lorg/ros/message/MessageDefinitionProvider;
    .end local v3    # "packages":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    goto :goto_a

    .line 71
    :cond_1e
    return-object v0
.end method

.method public has(Ljava/lang/String;)Z
    .registers 5
    .param p1, "messageType"    # Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lorg/ros/internal/message/definition/MessageDefinitionProviderChain;->messageDefinitionProviders:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ros/message/MessageDefinitionProvider;

    .line 57
    .local v1, "messageDefinitionProvider":Lorg/ros/message/MessageDefinitionProvider;
    invoke-interface {v1, p1}, Lorg/ros/message/MessageDefinitionProvider;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 58
    const/4 v0, 0x1

    return v0

    .line 60
    .end local v1    # "messageDefinitionProvider":Lorg/ros/message/MessageDefinitionProvider;
    :cond_1a
    goto :goto_6

    .line 61
    :cond_1b
    const/4 v0, 0x0

    return v0
.end method
