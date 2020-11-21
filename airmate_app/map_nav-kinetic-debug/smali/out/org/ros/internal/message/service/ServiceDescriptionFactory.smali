.class public Lorg/ros/internal/message/service/ServiceDescriptionFactory;
.super Ljava/lang/Object;
.source "ServiceDescriptionFactory.java"


# instance fields
.field private final md5Generator:Lorg/ros/internal/message/Md5Generator;

.field private final messageDefinitionProvider:Lorg/ros/message/MessageDefinitionProvider;


# direct methods
.method public constructor <init>(Lorg/ros/message/MessageDefinitionProvider;)V
    .registers 3
    .param p1, "messageDefinitionProvider"    # Lorg/ros/message/MessageDefinitionProvider;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/ros/internal/message/service/ServiceDescriptionFactory;->messageDefinitionProvider:Lorg/ros/message/MessageDefinitionProvider;

    .line 32
    new-instance v0, Lorg/ros/internal/message/Md5Generator;

    invoke-direct {v0, p1}, Lorg/ros/internal/message/Md5Generator;-><init>(Lorg/ros/message/MessageDefinitionProvider;)V

    iput-object v0, p0, Lorg/ros/internal/message/service/ServiceDescriptionFactory;->md5Generator:Lorg/ros/internal/message/Md5Generator;

    .line 33
    return-void
.end method


# virtual methods
.method public hasType(Ljava/lang/String;)Z
    .registers 3
    .param p1, "serviceType"    # Ljava/lang/String;

    .line 42
    iget-object v0, p0, Lorg/ros/internal/message/service/ServiceDescriptionFactory;->messageDefinitionProvider:Lorg/ros/message/MessageDefinitionProvider;

    invoke-interface {v0, p1}, Lorg/ros/message/MessageDefinitionProvider;->has(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public newFromType(Ljava/lang/String;)Lorg/ros/internal/message/service/ServiceDescription;
    .registers 5
    .param p1, "serviceType"    # Ljava/lang/String;

    .line 36
    iget-object v0, p0, Lorg/ros/internal/message/service/ServiceDescriptionFactory;->messageDefinitionProvider:Lorg/ros/message/MessageDefinitionProvider;

    invoke-interface {v0, p1}, Lorg/ros/message/MessageDefinitionProvider;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "serviceDefinition":Ljava/lang/String;
    iget-object v1, p0, Lorg/ros/internal/message/service/ServiceDescriptionFactory;->md5Generator:Lorg/ros/internal/message/Md5Generator;

    invoke-virtual {v1, p1}, Lorg/ros/internal/message/Md5Generator;->generate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, "md5Checksum":Ljava/lang/String;
    new-instance v2, Lorg/ros/internal/message/service/ServiceDescription;

    invoke-direct {v2, p1, v0, v1}, Lorg/ros/internal/message/service/ServiceDescription;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method
