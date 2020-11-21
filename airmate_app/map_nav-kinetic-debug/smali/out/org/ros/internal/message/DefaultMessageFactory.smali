.class public Lorg/ros/internal/message/DefaultMessageFactory;
.super Ljava/lang/Object;
.source "DefaultMessageFactory.java"

# interfaces
.implements Lorg/ros/message/MessageFactory;


# instance fields
.field private final messageDefinitionProvider:Lorg/ros/message/MessageDefinitionProvider;

.field private final messageInterfaceClassProvider:Lorg/ros/internal/message/DefaultMessageInterfaceClassProvider;

.field private final messageProxyFactory:Lorg/ros/internal/message/MessageProxyFactory;


# direct methods
.method public constructor <init>(Lorg/ros/message/MessageDefinitionProvider;)V
    .registers 4
    .param p1, "messageDefinitionProvider"    # Lorg/ros/message/MessageDefinitionProvider;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/ros/internal/message/DefaultMessageFactory;->messageDefinitionProvider:Lorg/ros/message/MessageDefinitionProvider;

    .line 36
    new-instance v0, Lorg/ros/internal/message/DefaultMessageInterfaceClassProvider;

    invoke-direct {v0}, Lorg/ros/internal/message/DefaultMessageInterfaceClassProvider;-><init>()V

    iput-object v0, p0, Lorg/ros/internal/message/DefaultMessageFactory;->messageInterfaceClassProvider:Lorg/ros/internal/message/DefaultMessageInterfaceClassProvider;

    .line 37
    new-instance v0, Lorg/ros/internal/message/MessageProxyFactory;

    invoke-virtual {p0}, Lorg/ros/internal/message/DefaultMessageFactory;->getMessageInterfaceClassProvider()Lorg/ros/internal/message/DefaultMessageInterfaceClassProvider;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/ros/internal/message/MessageProxyFactory;-><init>(Lorg/ros/internal/message/MessageInterfaceClassProvider;Lorg/ros/message/MessageFactory;)V

    iput-object v0, p0, Lorg/ros/internal/message/DefaultMessageFactory;->messageProxyFactory:Lorg/ros/internal/message/MessageProxyFactory;

    .line 38
    return-void
.end method


# virtual methods
.method getMessageInterfaceClassProvider()Lorg/ros/internal/message/DefaultMessageInterfaceClassProvider;
    .registers 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .line 49
    iget-object v0, p0, Lorg/ros/internal/message/DefaultMessageFactory;->messageInterfaceClassProvider:Lorg/ros/internal/message/DefaultMessageInterfaceClassProvider;

    return-object v0
.end method

.method public newFromType(Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .param p1, "messageType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lorg/ros/internal/message/DefaultMessageFactory;->messageDefinitionProvider:Lorg/ros/message/MessageDefinitionProvider;

    invoke-interface {v0, p1}, Lorg/ros/message/MessageDefinitionProvider;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "messageDefinition":Ljava/lang/String;
    invoke-static {p1, v0}, Lorg/ros/message/MessageDeclaration;->of(Ljava/lang/String;Ljava/lang/String;)Lorg/ros/message/MessageDeclaration;

    move-result-object v1

    .line 44
    .local v1, "messageDeclaration":Lorg/ros/message/MessageDeclaration;
    iget-object v2, p0, Lorg/ros/internal/message/DefaultMessageFactory;->messageProxyFactory:Lorg/ros/internal/message/MessageProxyFactory;

    invoke-virtual {v2, v1}, Lorg/ros/internal/message/MessageProxyFactory;->newMessageProxy(Lorg/ros/message/MessageDeclaration;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method
