.class public Lorg/ros/internal/message/StringFileProvider;
.super Ljava/lang/Object;
.source "StringFileProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ros/internal/message/StringFileProvider$StringFileDirectoryWalker;
    }
.end annotation


# instance fields
.field private final directories:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final stringFileDirectoryWalker:Lorg/ros/internal/message/StringFileProvider$StringFileDirectoryWalker;

.field private final strings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/io/filefilter/IOFileFilter;)V
    .registers 7
    .param p1, "ioFileFilter"    # Lorg/apache/commons/io/filefilter/IOFileFilter;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/internal/message/StringFileProvider;->directories:Ljava/util/Collection;

    .line 93
    invoke-static {}, Lcom/google/common/collect/Maps;->newConcurrentMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/internal/message/StringFileProvider;->strings:Ljava/util/Map;

    .line 94
    invoke-static {}, Lorg/apache/commons/io/filefilter/FileFilterUtils;->directoryFileFilter()Lorg/apache/commons/io/filefilter/IOFileFilter;

    move-result-object v0

    .line 95
    .local v0, "directoryFilter":Lorg/apache/commons/io/filefilter/IOFileFilter;
    invoke-static {v0, p1}, Lorg/apache/commons/io/filefilter/FileFilterUtils;->orFileFilter(Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;

    move-result-object v1

    .line 96
    .local v1, "fileFilter":Ljava/io/FileFilter;
    new-instance v2, Lorg/ros/internal/message/StringFileProvider$StringFileDirectoryWalker;

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-direct {v2, p0, v1, v3, v4}, Lorg/ros/internal/message/StringFileProvider$StringFileDirectoryWalker;-><init>(Lorg/ros/internal/message/StringFileProvider;Ljava/io/FileFilter;ILorg/ros/internal/message/StringFileProvider$1;)V

    iput-object v2, p0, Lorg/ros/internal/message/StringFileProvider;->stringFileDirectoryWalker:Lorg/ros/internal/message/StringFileProvider$StringFileDirectoryWalker;

    .line 97
    return-void
.end method

.method static synthetic access$000(Lorg/ros/internal/message/StringFileProvider;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lorg/ros/internal/message/StringFileProvider;

    .line 42
    iget-object v0, p0, Lorg/ros/internal/message/StringFileProvider;->strings:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public addDirectory(Ljava/io/File;)V
    .registers 3
    .param p1, "directory"    # Ljava/io/File;

    .line 112
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 113
    iget-object v0, p0, Lorg/ros/internal/message/StringFileProvider;->directories:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 114
    return-void
.end method

.method public get(Ljava/io/File;)Ljava/lang/String;
    .registers 5
    .param p1, "file"    # Ljava/io/File;

    .line 121
    invoke-virtual {p0, p1}, Lorg/ros/internal/message/StringFileProvider;->has(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 124
    iget-object v0, p0, Lorg/ros/internal/message/StringFileProvider;->strings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 122
    :cond_f
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File does not exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getStrings()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lorg/ros/internal/message/StringFileProvider;->strings:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public has(Ljava/io/File;)Z
    .registers 3
    .param p1, "file"    # Ljava/io/File;

    .line 128
    iget-object v0, p0, Lorg/ros/internal/message/StringFileProvider;->strings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public update()V
    .registers 4

    .line 100
    iget-object v0, p0, Lorg/ros/internal/message/StringFileProvider;->directories:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 101
    .local v1, "directory":Ljava/io/File;
    iget-object v2, p0, Lorg/ros/internal/message/StringFileProvider;->stringFileDirectoryWalker:Lorg/ros/internal/message/StringFileProvider$StringFileDirectoryWalker;

    invoke-virtual {v2, v1}, Lorg/ros/internal/message/StringFileProvider$StringFileDirectoryWalker;->update(Ljava/io/File;)V

    .line 102
    .end local v1    # "directory":Ljava/io/File;
    goto :goto_6

    .line 103
    :cond_18
    return-void
.end method
