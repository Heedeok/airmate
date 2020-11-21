.class public interface abstract Lorg/ros/message/MessageDefinitionProvider;
.super Ljava/lang/Object;
.source "MessageDefinitionProvider.java"


# virtual methods
.method public abstract get(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getMessageIdentifiersByPackage(Ljava/lang/String;)Ljava/util/Collection;
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
.end method

.method public abstract getPackages()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract has(Ljava/lang/String;)Z
.end method
