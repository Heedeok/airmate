.class public Lorg/ros/internal/message/topic/TopicMessageFactory;
.super Lorg/ros/internal/message/DefaultMessageFactory;
.source "TopicMessageFactory.java"


# direct methods
.method public constructor <init>(Lorg/ros/message/MessageDefinitionProvider;)V
    .registers 2
    .param p1, "messageDefinitionProvider"    # Lorg/ros/message/MessageDefinitionProvider;

    .line 28
    invoke-direct {p0, p1}, Lorg/ros/internal/message/DefaultMessageFactory;-><init>(Lorg/ros/message/MessageDefinitionProvider;)V

    .line 29
    return-void
.end method
