.class public Lorg/ros/internal/message/service/ServiceResponseMessageFactory;
.super Ljava/lang/Object;
.source "ServiceResponseMessageFactory.java"

# interfaces
.implements Lorg/ros/message/MessageFactory;


# instance fields
.field private final messageFactory:Lorg/ros/message/MessageFactory;

.field private final messageProxyFactory:Lorg/ros/internal/message/MessageProxyFactory;

.field private final serviceDescriptionFactory:Lorg/ros/internal/message/service/ServiceDescriptionFactory;


# direct methods
.method public constructor <init>(Lorg/ros/message/MessageDefinitionProvider;)V
    .registers 5
    .param p1, "messageDefinitionProvider"    # Lorg/ros/message/MessageDefinitionProvider;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lorg/ros/internal/message/service/ServiceDescriptionFactory;

    invoke-direct {v0, p1}, Lorg/ros/internal/message/service/ServiceDescriptionFactory;-><init>(Lorg/ros/message/MessageDefinitionProvider;)V

    iput-object v0, p0, Lorg/ros/internal/message/service/ServiceResponseMessageFactory;->serviceDescriptionFactory:Lorg/ros/internal/message/service/ServiceDescriptionFactory;

    .line 37
    new-instance v0, Lorg/ros/internal/message/DefaultMessageFactory;

    invoke-direct {v0, p1}, Lorg/ros/internal/message/DefaultMessageFactory;-><init>(Lorg/ros/message/MessageDefinitionProvider;)V

    iput-object v0, p0, Lorg/ros/internal/message/service/ServiceResponseMessageFactory;->messageFactory:Lorg/ros/message/MessageFactory;

    .line 38
    new-instance v0, Lorg/ros/internal/message/MessageProxyFactory;

    new-instance v1, Lorg/ros/internal/message/DefaultMessageInterfaceClassProvider;

    invoke-direct {v1}, Lorg/ros/internal/message/DefaultMessageInterfaceClassProvider;-><init>()V

    iget-object v2, p0, Lorg/ros/internal/message/service/ServiceResponseMessageFactory;->messageFactory:Lorg/ros/message/MessageFactory;

    invoke-direct {v0, v1, v2}, Lorg/ros/internal/message/MessageProxyFactory;-><init>(Lorg/ros/internal/message/MessageInterfaceClassProvider;Lorg/ros/message/MessageFactory;)V

    iput-object v0, p0, Lorg/ros/internal/message/service/ServiceResponseMessageFactory;->messageProxyFactory:Lorg/ros/internal/message/MessageProxyFactory;

    .line 40
    return-void
.end method


# virtual methods
.method public newFromType(Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .param p1, "serviceType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lorg/ros/internal/message/service/ServiceResponseMessageFactory;->serviceDescriptionFactory:Lorg/ros/internal/message/service/ServiceDescriptionFactory;

    invoke-virtual {v0, p1}, Lorg/ros/internal/message/service/ServiceDescriptionFactory;->newFromType(Ljava/lang/String;)Lorg/ros/internal/message/service/ServiceDescription;

    move-result-object v0

    .line 45
    .local v0, "serviceDescription":Lorg/ros/internal/message/service/ServiceDescription;
    nop

    .line 46
    invoke-virtual {v0}, Lorg/ros/internal/message/service/ServiceDescription;->getResponseType()Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-virtual {v0}, Lorg/ros/internal/message/service/ServiceDescription;->getResponseDefinition()Ljava/lang/String;

    move-result-object v2

    .line 46
    invoke-static {v1, v2}, Lorg/ros/message/MessageDeclaration;->of(Ljava/lang/String;Ljava/lang/String;)Lorg/ros/message/MessageDeclaration;

    move-result-object v1

    .line 48
    .local v1, "messageDeclaration":Lorg/ros/message/MessageDeclaration;
    iget-object v2, p0, Lorg/ros/internal/message/service/ServiceResponseMessageFactory;->messageProxyFactory:Lorg/ros/internal/message/MessageProxyFactory;

    invoke-virtual {v2, v1}, Lorg/ros/internal/message/MessageProxyFactory;->newMessageProxy(Lorg/ros/message/MessageDeclaration;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method
