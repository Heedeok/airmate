.class public Lorg/ros/internal/node/response/UriListResultFactory;
.super Ljava/lang/Object;
.source "UriListResultFactory.java"

# interfaces
.implements Lorg/ros/internal/node/response/ResultFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ros/internal/node/response/ResultFactory<",
        "Ljava/util/List<",
        "Ljava/net/URI;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic newFromValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 33
    invoke-virtual {p0, p1}, Lorg/ros/internal/node/response/UriListResultFactory;->newFromValue(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public newFromValue(Ljava/lang/Object;)Ljava/util/List;
    .registers 8
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/URI;",
            ">;"
        }
    .end annotation

    .line 37
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 38
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 39
    .local v1, "uris":Ljava/util/List;, "Ljava/util/List<Ljava/net/URI;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 41
    .local v3, "uri":Ljava/lang/Object;
    :try_start_19
    new-instance v4, Ljava/net/URI;

    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_24
    .catch Ljava/net/URISyntaxException; {:try_start_19 .. :try_end_24} :catch_26

    .line 44
    nop

    .line 45
    .end local v3    # "uri":Ljava/lang/Object;
    goto :goto_f

    .line 42
    .restart local v3    # "uri":Ljava/lang/Object;
    :catch_26
    move-exception v2

    .line 43
    .local v2, "e":Ljava/net/URISyntaxException;
    new-instance v4, Lorg/ros/exception/RosRuntimeException;

    invoke-direct {v4, v2}, Lorg/ros/exception/RosRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 46
    .end local v2    # "e":Ljava/net/URISyntaxException;
    .end local v3    # "uri":Ljava/lang/Object;
    :cond_2d
    return-object v1
.end method
