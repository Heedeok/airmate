.class public Lorg/ros/internal/message/context/MessageContextProvider;
.super Ljava/lang/Object;
.source "MessageContextProvider.java"


# instance fields
.field private final cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/ros/message/MessageDeclaration;",
            "Lorg/ros/internal/message/context/MessageContext;",
            ">;"
        }
    .end annotation
.end field

.field private final messageFactory:Lorg/ros/message/MessageFactory;


# direct methods
.method public constructor <init>(Lorg/ros/message/MessageFactory;)V
    .registers 3
    .param p1, "messageFactory"    # Lorg/ros/message/MessageFactory;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iput-object p1, p0, Lorg/ros/internal/message/context/MessageContextProvider;->messageFactory:Lorg/ros/message/MessageFactory;

    .line 40
    invoke-static {}, Lcom/google/common/collect/Maps;->newConcurrentMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/internal/message/context/MessageContextProvider;->cache:Ljava/util/Map;

    .line 41
    return-void
.end method


# virtual methods
.method public get(Lorg/ros/message/MessageDeclaration;)Lorg/ros/internal/message/context/MessageContext;
    .registers 7
    .param p1, "messageDeclaration"    # Lorg/ros/message/MessageDeclaration;

    .line 44
    iget-object v0, p0, Lorg/ros/internal/message/context/MessageContextProvider;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ros/internal/message/context/MessageContext;

    .line 45
    .local v0, "messageContext":Lorg/ros/internal/message/context/MessageContext;
    if-nez v0, :cond_2c

    .line 46
    new-instance v1, Lorg/ros/internal/message/context/MessageContext;

    iget-object v2, p0, Lorg/ros/internal/message/context/MessageContextProvider;->messageFactory:Lorg/ros/message/MessageFactory;

    invoke-direct {v1, p1, v2}, Lorg/ros/internal/message/context/MessageContext;-><init>(Lorg/ros/message/MessageDeclaration;Lorg/ros/message/MessageFactory;)V

    move-object v0, v1

    .line 47
    new-instance v1, Lorg/ros/internal/message/context/MessageContextBuilder;

    invoke-direct {v1, v0}, Lorg/ros/internal/message/context/MessageContextBuilder;-><init>(Lorg/ros/internal/message/context/MessageContext;)V

    .line 48
    .local v1, "visitor":Lorg/ros/internal/message/definition/MessageDefinitionParser$MessageDefinitionVisitor;
    new-instance v2, Lorg/ros/internal/message/definition/MessageDefinitionParser;

    invoke-direct {v2, v1}, Lorg/ros/internal/message/definition/MessageDefinitionParser;-><init>(Lorg/ros/internal/message/definition/MessageDefinitionParser$MessageDefinitionVisitor;)V

    .line 49
    .local v2, "messageDefinitionParser":Lorg/ros/internal/message/definition/MessageDefinitionParser;
    invoke-virtual {p1}, Lorg/ros/message/MessageDeclaration;->getType()Ljava/lang/String;

    move-result-object v3

    .line 50
    invoke-virtual {p1}, Lorg/ros/message/MessageDeclaration;->getDefinition()Ljava/lang/String;

    move-result-object v4

    .line 49
    invoke-virtual {v2, v3, v4}, Lorg/ros/internal/message/definition/MessageDefinitionParser;->parse(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v3, p0, Lorg/ros/internal/message/context/MessageContextProvider;->cache:Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .end local v1    # "visitor":Lorg/ros/internal/message/definition/MessageDefinitionParser$MessageDefinitionVisitor;
    .end local v2    # "messageDefinitionParser":Lorg/ros/internal/message/definition/MessageDefinitionParser;
    :cond_2c
    return-object v0
.end method
