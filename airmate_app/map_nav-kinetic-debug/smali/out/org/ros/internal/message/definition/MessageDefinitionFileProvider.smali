.class public Lorg/ros/internal/message/definition/MessageDefinitionFileProvider;
.super Ljava/lang/Object;
.source "MessageDefinitionFileProvider.java"

# interfaces
.implements Lorg/ros/message/MessageDefinitionProvider;


# instance fields
.field private final definitions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final messageIdentifiers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lorg/ros/message/MessageIdentifier;",
            ">;>;"
        }
    .end annotation
.end field

.field private final stringFileProvider:Lorg/ros/internal/message/StringFileProvider;


# direct methods
.method public constructor <init>(Lorg/ros/internal/message/StringFileProvider;)V
    .registers 3
    .param p1, "stringFileProvider"    # Lorg/ros/internal/message/StringFileProvider;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/ros/internal/message/definition/MessageDefinitionFileProvider;->stringFileProvider:Lorg/ros/internal/message/StringFileProvider;

    .line 44
    invoke-static {}, Lcom/google/common/collect/Maps;->newConcurrentMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/internal/message/definition/MessageDefinitionFileProvider;->messageIdentifiers:Ljava/util/Map;

    .line 45
    invoke-static {}, Lcom/google/common/collect/Maps;->newConcurrentMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/internal/message/definition/MessageDefinitionFileProvider;->definitions:Ljava/util/Map;

    .line 46
    return-void
.end method

.method private addDefinition(Ljava/io/File;Ljava/lang/String;)V
    .registers 7
    .param p1, "file"    # Ljava/io/File;
    .param p2, "definition"    # Ljava/lang/String;

    .line 64
    invoke-static {p1}, Lorg/ros/internal/message/definition/MessageDefinitionFileProvider;->fileToMessageIdentifier(Ljava/io/File;)Lorg/ros/message/MessageIdentifier;

    move-result-object v0

    .line 65
    .local v0, "topicType":Lorg/ros/message/MessageIdentifier;
    iget-object v1, p0, Lorg/ros/internal/message/definition/MessageDefinitionFileProvider;->definitions:Ljava/util/Map;

    invoke-virtual {v0}, Lorg/ros/message/MessageIdentifier;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 67
    return-void

    .line 69
    :cond_11
    iget-object v1, p0, Lorg/ros/internal/message/definition/MessageDefinitionFileProvider;->definitions:Ljava/util/Map;

    invoke-virtual {v0}, Lorg/ros/message/MessageIdentifier;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v1, p0, Lorg/ros/internal/message/definition/MessageDefinitionFileProvider;->messageIdentifiers:Ljava/util/Map;

    invoke-virtual {v0}, Lorg/ros/message/MessageIdentifier;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 71
    iget-object v1, p0, Lorg/ros/internal/message/definition/MessageDefinitionFileProvider;->messageIdentifiers:Ljava/util/Map;

    invoke-virtual {v0}, Lorg/ros/message/MessageIdentifier;->getPackage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :cond_34
    iget-object v1, p0, Lorg/ros/internal/message/definition/MessageDefinitionFileProvider;->messageIdentifiers:Ljava/util/Map;

    invoke-virtual {v0}, Lorg/ros/message/MessageIdentifier;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 74
    return-void
.end method

.method private static fileToMessageIdentifier(Ljava/io/File;)Lorg/ros/message/MessageIdentifier;
    .registers 5
    .param p0, "file"    # Ljava/io/File;

    .line 57
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "filename":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/commons/io/FilenameUtils;->getBaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, "name":Ljava/lang/String;
    invoke-static {v0}, Lorg/ros/internal/message/definition/MessageDefinitionFileProvider;->getParent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/ros/internal/message/definition/MessageDefinitionFileProvider;->getParentBaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 60
    .local v2, "pkg":Ljava/lang/String;
    invoke-static {v2, v1}, Lorg/ros/message/MessageIdentifier;->of(Ljava/lang/String;Ljava/lang/String;)Lorg/ros/message/MessageIdentifier;

    move-result-object v3

    return-object v3
.end method

.method private static getParent(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "filename"    # Ljava/lang/String;

    .line 49
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getFullPathNoEndSeparator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static getParentBaseName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "filename"    # Ljava/lang/String;

    .line 53
    invoke-static {p0}, Lorg/ros/internal/message/definition/MessageDefinitionFileProvider;->getParent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/io/FilenameUtils;->getBaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addDirectory(Ljava/io/File;)V
    .registers 3
    .param p1, "directory"    # Ljava/io/File;

    .line 92
    iget-object v0, p0, Lorg/ros/internal/message/definition/MessageDefinitionFileProvider;->stringFileProvider:Lorg/ros/internal/message/StringFileProvider;

    invoke-virtual {v0, p1}, Lorg/ros/internal/message/StringFileProvider;->addDirectory(Ljava/io/File;)V

    .line 93
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "type"    # Ljava/lang/String;

    .line 107
    iget-object v0, p0, Lorg/ros/internal/message/definition/MessageDefinitionFileProvider;->definitions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

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

    .line 102
    iget-object v0, p0, Lorg/ros/internal/message/definition/MessageDefinitionFileProvider;->messageIdentifiers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0
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

    .line 97
    iget-object v0, p0, Lorg/ros/internal/message/definition/MessageDefinitionFileProvider;->messageIdentifiers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public has(Ljava/lang/String;)Z
    .registers 3
    .param p1, "type"    # Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lorg/ros/internal/message/definition/MessageDefinitionFileProvider;->definitions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public update()V
    .registers 5

    .line 82
    iget-object v0, p0, Lorg/ros/internal/message/definition/MessageDefinitionFileProvider;->stringFileProvider:Lorg/ros/internal/message/StringFileProvider;

    invoke-virtual {v0}, Lorg/ros/internal/message/StringFileProvider;->update()V

    .line 83
    iget-object v0, p0, Lorg/ros/internal/message/definition/MessageDefinitionFileProvider;->stringFileProvider:Lorg/ros/internal/message/StringFileProvider;

    invoke-virtual {v0}, Lorg/ros/internal/message/StringFileProvider;->getStrings()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 84
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/io/File;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lorg/ros/internal/message/definition/MessageDefinitionFileProvider;->addDefinition(Ljava/io/File;Ljava/lang/String;)V

    .line 85
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/io/File;Ljava/lang/String;>;"
    goto :goto_13

    .line 86
    :cond_2f
    return-void
.end method
