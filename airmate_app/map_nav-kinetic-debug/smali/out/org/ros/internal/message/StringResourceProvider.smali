.class public Lorg/ros/internal/message/StringResourceProvider;
.super Ljava/lang/Object;
.source "StringResourceProvider.java"


# instance fields
.field private final cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {}, Lcom/google/common/collect/Maps;->newConcurrentMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/internal/message/StringResourceProvider;->cache:Ljava/util/Map;

    .line 39
    return-void
.end method


# virtual methods
.method public addStringToCache(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "resourceName"    # Ljava/lang/String;
    .param p2, "resourceContent"    # Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lorg/ros/internal/message/StringResourceProvider;->cache:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "resourceName"    # Ljava/lang/String;

    .line 42
    invoke-virtual {p0, p1}, Lorg/ros/internal/message/StringResourceProvider;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 45
    iget-object v0, p0, Lorg/ros/internal/message/StringResourceProvider;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 47
    .local v0, "in":Ljava/io/InputStream;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .local v1, "out":Ljava/lang/StringBuilder;
    const-string v2, "US-ASCII"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    .line 49
    .local v2, "charset":Ljava/nio/charset/Charset;
    const/16 v3, 0x2000

    new-array v3, v3, [B

    .line 51
    .local v3, "buffer":[B
    :goto_25
    :try_start_25
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    move v5, v4

    .local v5, "bytesRead":I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_37

    .line 52
    new-instance v4, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v4, v3, v6, v5, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_36} :catch_42

    goto :goto_25

    .line 56
    .end local v5    # "bytesRead":I
    :cond_37
    nop

    .line 57
    iget-object v4, p0, Lorg/ros/internal/message/StringResourceProvider;->cache:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5a

    .line 54
    :catch_42
    move-exception v4

    .line 55
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Lorg/ros/exception/RosMessageRuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to read resource: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Lorg/ros/exception/RosMessageRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 59
    .end local v0    # "in":Ljava/io/InputStream;
    .end local v1    # "out":Ljava/lang/StringBuilder;
    .end local v2    # "charset":Ljava/nio/charset/Charset;
    .end local v3    # "buffer":[B
    .end local v4    # "e":Ljava/io/IOException;
    :cond_5a
    :goto_5a
    iget-object v0, p0, Lorg/ros/internal/message/StringResourceProvider;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 43
    :cond_63
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resource does not exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCachedStrings()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lorg/ros/internal/message/StringResourceProvider;->cache:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public has(Ljava/lang/String;)Z
    .registers 3
    .param p1, "resourceName"    # Ljava/lang/String;

    .line 63
    iget-object v0, p0, Lorg/ros/internal/message/StringResourceProvider;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method
