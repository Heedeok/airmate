.class public Lorg/ros/internal/message/service/ServiceDefinitionResourceProvider;
.super Ljava/lang/Object;
.source "ServiceDefinitionResourceProvider.java"

# interfaces
.implements Lorg/ros/message/MessageDefinitionProvider;


# instance fields
.field private final stringResourceProvider:Lorg/ros/internal/message/StringResourceProvider;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lorg/ros/internal/message/StringResourceProvider;

    invoke-direct {v0}, Lorg/ros/internal/message/StringResourceProvider;-><init>()V

    iput-object v0, p0, Lorg/ros/internal/message/service/ServiceDefinitionResourceProvider;->stringResourceProvider:Lorg/ros/internal/message/StringResourceProvider;

    .line 36
    return-void
.end method

.method private serviceTypeToResourceName(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "serviceType"    # Ljava/lang/String;

    .line 39
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service type must be fully qualified: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 41
    const-string v0, "/"

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "packageAndType":[Ljava/lang/String;
    const-string v2, "/%s/srv/%s.srv"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v4, v0, v3

    aput-object v4, v1, v3

    const/4 v3, 0x1

    aget-object v4, v0, v3

    aput-object v4, v1, v3

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "serviceType"    # Ljava/lang/String;
    .param p2, "serviceDefinition"    # Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lorg/ros/internal/message/service/ServiceDefinitionResourceProvider;->stringResourceProvider:Lorg/ros/internal/message/StringResourceProvider;

    invoke-direct {p0, p1}, Lorg/ros/internal/message/service/ServiceDefinitionResourceProvider;->serviceTypeToResourceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lorg/ros/internal/message/StringResourceProvider;->addStringToCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "serviceType"    # Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lorg/ros/internal/message/service/ServiceDefinitionResourceProvider;->stringResourceProvider:Lorg/ros/internal/message/StringResourceProvider;

    invoke-direct {p0, p1}, Lorg/ros/internal/message/service/ServiceDefinitionResourceProvider;->serviceTypeToResourceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ros/internal/message/StringResourceProvider;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageIdentifiersByPackage(Ljava/lang/String;)Ljava/util/Collection;
    .registers 3
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

    .line 67
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPackages()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 62
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public has(Ljava/lang/String;)Z
    .registers 4
    .param p1, "serviceType"    # Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lorg/ros/internal/message/service/ServiceDefinitionResourceProvider;->stringResourceProvider:Lorg/ros/internal/message/StringResourceProvider;

    invoke-direct {p0, p1}, Lorg/ros/internal/message/service/ServiceDefinitionResourceProvider;->serviceTypeToResourceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ros/internal/message/StringResourceProvider;->has(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
