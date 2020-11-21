.class final Lorg/ros/internal/message/StringFileProvider$StringFileDirectoryWalker;
.super Lorg/apache/commons/io/DirectoryWalker;
.source "StringFileProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ros/internal/message/StringFileProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StringFileDirectoryWalker"
.end annotation


# instance fields
.field private final directories:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/ros/internal/message/StringFileProvider;


# direct methods
.method private constructor <init>(Lorg/ros/internal/message/StringFileProvider;Ljava/io/FileFilter;I)V
    .registers 4
    .param p2, "filter"    # Ljava/io/FileFilter;
    .param p3, "depthLimit"    # I

    .line 52
    iput-object p1, p0, Lorg/ros/internal/message/StringFileProvider$StringFileDirectoryWalker;->this$0:Lorg/ros/internal/message/StringFileProvider;

    .line 53
    invoke-direct {p0, p2, p3}, Lorg/apache/commons/io/DirectoryWalker;-><init>(Ljava/io/FileFilter;I)V

    .line 54
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object p1

    iput-object p1, p0, Lorg/ros/internal/message/StringFileProvider$StringFileDirectoryWalker;->directories:Ljava/util/Set;

    .line 55
    return-void
.end method

.method synthetic constructor <init>(Lorg/ros/internal/message/StringFileProvider;Ljava/io/FileFilter;ILorg/ros/internal/message/StringFileProvider$1;)V
    .registers 5
    .param p1, "x0"    # Lorg/ros/internal/message/StringFileProvider;
    .param p2, "x1"    # Ljava/io/FileFilter;
    .param p3, "x2"    # I
    .param p4, "x3"    # Lorg/ros/internal/message/StringFileProvider$1;

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lorg/ros/internal/message/StringFileProvider$StringFileDirectoryWalker;-><init>(Lorg/ros/internal/message/StringFileProvider;Ljava/io/FileFilter;I)V

    return-void
.end method


# virtual methods
.method protected handleDirectory(Ljava/io/File;ILjava/util/Collection;)Z
    .registers 6
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "depth"    # I
    .param p3, "results"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    .line 63
    .local v0, "canonicalDirectory":Ljava/io/File;
    iget-object v1, p0, Lorg/ros/internal/message/StringFileProvider$StringFileDirectoryWalker;->directories:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 64
    const/4 v1, 0x0

    return v1

    .line 66
    :cond_e
    iget-object v1, p0, Lorg/ros/internal/message/StringFileProvider$StringFileDirectoryWalker;->directories:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 67
    const/4 v1, 0x1

    return v1
.end method

.method protected handleFile(Ljava/io/File;ILjava/util/Collection;)V
    .registers 6
    .param p1, "file"    # Ljava/io/File;
    .param p2, "depth"    # I
    .param p3, "results"    # Ljava/util/Collection;

    .line 75
    :try_start_0
    const-string v0, "US-ASCII"

    invoke-static {p1, v0}, Lorg/apache/commons/io/FileUtils;->readFileToString(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_12

    .line 78
    .local v0, "content":Ljava/lang/String;
    nop

    .line 77
    nop

    .line 79
    iget-object v1, p0, Lorg/ros/internal/message/StringFileProvider$StringFileDirectoryWalker;->this$0:Lorg/ros/internal/message/StringFileProvider;

    invoke-static {v1}, Lorg/ros/internal/message/StringFileProvider;->access$000(Lorg/ros/internal/message/StringFileProvider;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    return-void

    .line 76
    .end local v0    # "content":Ljava/lang/String;
    :catch_12
    move-exception v0

    .line 77
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/ros/exception/RosMessageRuntimeException;

    invoke-direct {v1, v0}, Lorg/ros/exception/RosMessageRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public update(Ljava/io/File;)V
    .registers 4
    .param p1, "directory"    # Ljava/io/File;

    .line 84
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v0}, Lorg/ros/internal/message/StringFileProvider$StringFileDirectoryWalker;->walk(Ljava/io/File;Ljava/util/Collection;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4} :catch_6

    .line 87
    nop

    .line 88
    return-void

    .line 85
    :catch_6
    move-exception v0

    .line 86
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/ros/exception/RosMessageRuntimeException;

    invoke-direct {v1, v0}, Lorg/ros/exception/RosMessageRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
