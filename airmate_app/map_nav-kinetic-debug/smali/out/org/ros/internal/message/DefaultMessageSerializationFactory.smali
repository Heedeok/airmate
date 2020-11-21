.class public Lorg/ros/internal/message/DefaultMessageSerializationFactory;
.super Ljava/lang/Object;
.source "DefaultMessageSerializationFactory.java"

# interfaces
.implements Lorg/ros/message/MessageSerializationFactory;


# instance fields
.field private final serviceRequestMessageFactory:Lorg/ros/internal/message/service/ServiceRequestMessageFactory;

.field private final serviceResponseMessageFactory:Lorg/ros/internal/message/service/ServiceResponseMessageFactory;

.field private final topicMessageFactory:Lorg/ros/message/MessageFactory;


# direct methods
.method public constructor <init>(Lorg/ros/message/MessageDefinitionProvider;)V
    .registers 3
    .param p1, "messageDefinitionProvider"    # Lorg/ros/message/MessageDefinitionProvider;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lorg/ros/internal/message/DefaultMessageFactory;

    invoke-direct {v0, p1}, Lorg/ros/internal/message/DefaultMessageFactory;-><init>(Lorg/ros/message/MessageDefinitionProvider;)V

    iput-object v0, p0, Lorg/ros/internal/message/DefaultMessageSerializationFactory;->topicMessageFactory:Lorg/ros/message/MessageFactory;

    .line 39
    new-instance v0, Lorg/ros/internal/message/service/ServiceRequestMessageFactory;

    invoke-direct {v0, p1}, Lorg/ros/internal/message/service/ServiceRequestMessageFactory;-><init>(Lorg/ros/message/MessageDefinitionProvider;)V

    iput-object v0, p0, Lorg/ros/internal/message/DefaultMessageSerializationFactory;->serviceRequestMessageFactory:Lorg/ros/internal/message/service/ServiceRequestMessageFactory;

    .line 40
    new-instance v0, Lorg/ros/internal/message/service/ServiceResponseMessageFactory;

    invoke-direct {v0, p1}, Lorg/ros/internal/message/service/ServiceResponseMessageFactory;-><init>(Lorg/ros/message/MessageDefinitionProvider;)V

    iput-object v0, p0, Lorg/ros/internal/message/DefaultMessageSerializationFactory;->serviceResponseMessageFactory:Lorg/ros/internal/message/service/ServiceResponseMessageFactory;

    .line 41
    return-void
.end method


# virtual methods
.method public newMessageDeserializer(Ljava/lang/String;)Lorg/ros/message/MessageDeserializer;
    .registers 5
    .param p1, "messageType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lorg/ros/message/MessageDeserializer<",
            "TT;>;"
        }
    .end annotation

    .line 51
    new-instance v0, Lorg/ros/internal/message/DefaultMessageDeserializer;

    invoke-static {p1}, Lorg/ros/message/MessageIdentifier;->of(Ljava/lang/String;)Lorg/ros/message/MessageIdentifier;

    move-result-object v1

    iget-object v2, p0, Lorg/ros/internal/message/DefaultMessageSerializationFactory;->topicMessageFactory:Lorg/ros/message/MessageFactory;

    invoke-direct {v0, v1, v2}, Lorg/ros/internal/message/DefaultMessageDeserializer;-><init>(Lorg/ros/message/MessageIdentifier;Lorg/ros/message/MessageFactory;)V

    return-object v0
.end method

.method public newMessageSerializer(Ljava/lang/String;)Lorg/ros/message/MessageSerializer;
    .registers 3
    .param p1, "messageType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lorg/ros/message/MessageSerializer<",
            "TT;>;"
        }
    .end annotation

    .line 46
    new-instance v0, Lorg/ros/internal/message/DefaultMessageSerializer;

    invoke-direct {v0}, Lorg/ros/internal/message/DefaultMessageSerializer;-><init>()V

    return-object v0
.end method

.method public newServiceRequestDeserializer(Ljava/lang/String;)Lorg/ros/message/MessageDeserializer;
    .registers 5
    .param p1, "serviceType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lorg/ros/message/MessageDeserializer<",
            "TT;>;"
        }
    .end annotation

    .line 64
    new-instance v0, Lorg/ros/internal/message/DefaultMessageDeserializer;

    invoke-static {p1}, Lorg/ros/message/MessageIdentifier;->of(Ljava/lang/String;)Lorg/ros/message/MessageIdentifier;

    move-result-object v1

    iget-object v2, p0, Lorg/ros/internal/message/DefaultMessageSerializationFactory;->serviceRequestMessageFactory:Lorg/ros/internal/message/service/ServiceRequestMessageFactory;

    invoke-direct {v0, v1, v2}, Lorg/ros/internal/message/DefaultMessageDeserializer;-><init>(Lorg/ros/message/MessageIdentifier;Lorg/ros/message/MessageFactory;)V

    return-object v0
.end method

.method public newServiceRequestSerializer(Ljava/lang/String;)Lorg/ros/message/MessageSerializer;
    .registers 3
    .param p1, "serviceType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lorg/ros/message/MessageSerializer<",
            "TT;>;"
        }
    .end annotation

    .line 58
    new-instance v0, Lorg/ros/internal/message/DefaultMessageSerializer;

    invoke-direct {v0}, Lorg/ros/internal/message/DefaultMessageSerializer;-><init>()V

    return-object v0
.end method

.method public newServiceResponseDeserializer(Ljava/lang/String;)Lorg/ros/message/MessageDeserializer;
    .registers 5
    .param p1, "serviceType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lorg/ros/message/MessageDeserializer<",
            "TT;>;"
        }
    .end annotation

    .line 77
    new-instance v0, Lorg/ros/internal/message/DefaultMessageDeserializer;

    invoke-static {p1}, Lorg/ros/message/MessageIdentifier;->of(Ljava/lang/String;)Lorg/ros/message/MessageIdentifier;

    move-result-object v1

    iget-object v2, p0, Lorg/ros/internal/message/DefaultMessageSerializationFactory;->serviceResponseMessageFactory:Lorg/ros/internal/message/service/ServiceResponseMessageFactory;

    invoke-direct {v0, v1, v2}, Lorg/ros/internal/message/DefaultMessageDeserializer;-><init>(Lorg/ros/message/MessageIdentifier;Lorg/ros/message/MessageFactory;)V

    return-object v0
.end method

.method public newServiceResponseSerializer(Ljava/lang/String;)Lorg/ros/message/MessageSerializer;
    .registers 3
    .param p1, "serviceType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lorg/ros/message/MessageSerializer<",
            "TT;>;"
        }
    .end annotation

    .line 71
    new-instance v0, Lorg/ros/internal/message/DefaultMessageSerializer;

    invoke-direct {v0}, Lorg/ros/internal/message/DefaultMessageSerializer;-><init>()V

    return-object v0
.end method
