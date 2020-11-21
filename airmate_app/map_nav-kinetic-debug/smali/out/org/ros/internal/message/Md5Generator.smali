.class public Lorg/ros/internal/message/Md5Generator;
.super Ljava/lang/Object;
.source "Md5Generator.java"


# instance fields
.field private final messageDefinitionProvider:Lorg/ros/message/MessageDefinitionProvider;


# direct methods
.method public constructor <init>(Lorg/ros/message/MessageDefinitionProvider;)V
    .registers 2
    .param p1, "messageDefinitionProvider"    # Lorg/ros/message/MessageDefinitionProvider;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/ros/internal/message/Md5Generator;->messageDefinitionProvider:Lorg/ros/message/MessageDefinitionProvider;

    .line 41
    return-void
.end method

.method private generateText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p1, "messageType"    # Ljava/lang/String;
    .param p2, "messageDefinition"    # Ljava/lang/String;

    .line 55
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 56
    .local v0, "constants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 57
    .local v1, "variables":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Lorg/ros/internal/message/Md5Generator$1;

    invoke-direct {v2, p0, v1, v0}, Lorg/ros/internal/message/Md5Generator$1;-><init>(Lorg/ros/internal/message/Md5Generator;Ljava/util/List;Ljava/util/List;)V

    .line 85
    .local v2, "visitor":Lorg/ros/internal/message/definition/MessageDefinitionParser$MessageDefinitionVisitor;
    new-instance v3, Lorg/ros/internal/message/definition/MessageDefinitionParser;

    invoke-direct {v3, v2}, Lorg/ros/internal/message/definition/MessageDefinitionParser;-><init>(Lorg/ros/internal/message/definition/MessageDefinitionParser$MessageDefinitionVisitor;)V

    .line 86
    .local v3, "messageDefinitionParser":Lorg/ros/internal/message/definition/MessageDefinitionParser;
    invoke-virtual {v3, p1, p2}, Lorg/ros/internal/message/definition/MessageDefinitionParser;->parse(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v4, ""

    .line 88
    .local v4, "text":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_37

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 89
    .local v6, "constant":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 90
    .end local v6    # "constant":Ljava/lang/String;
    goto :goto_1b

    .line 91
    :cond_37
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_57

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 92
    .local v6, "variable":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 93
    .end local v6    # "variable":Ljava/lang/String;
    goto :goto_3b

    .line 94
    :cond_57
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method public generate(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "messageType"    # Ljava/lang/String;

    .line 44
    iget-object v0, p0, Lorg/ros/internal/message/Md5Generator;->messageDefinitionProvider:Lorg/ros/message/MessageDefinitionProvider;

    invoke-interface {v0, p1}, Lorg/ros/message/MessageDefinitionProvider;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "messageDefinition":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No definition for message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const/4 v1, -0x1

    invoke-static {v0, v1}, Lorg/ros/internal/message/definition/MessageDefinitionTupleParser;->parse(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 47
    .local v1, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .local v2, "text":Ljava/lang/StringBuilder;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_28
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 49
    .local v4, "part":Ljava/lang/String;
    invoke-direct {p0, p1, v4}, Lorg/ros/internal/message/Md5Generator;->generateText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .end local v4    # "part":Ljava/lang/String;
    goto :goto_28

    .line 51
    :cond_3c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/codec/digest/DigestUtils;->md5Hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
