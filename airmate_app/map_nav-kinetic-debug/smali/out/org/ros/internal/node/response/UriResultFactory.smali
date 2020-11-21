.class public Lorg/ros/internal/node/response/UriResultFactory;
.super Ljava/lang/Object;
.source "UriResultFactory.java"

# interfaces
.implements Lorg/ros/internal/node/response/ResultFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ros/internal/node/response/ResultFactory<",
        "Ljava/net/URI;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic newFromValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 27
    invoke-virtual {p0, p1}, Lorg/ros/internal/node/response/UriResultFactory;->newFromValue(Ljava/lang/Object;)Ljava/net/URI;

    move-result-object p1

    return-object p1
.end method

.method public newFromValue(Ljava/lang/Object;)Ljava/net/URI;
    .registers 4
    .param p1, "value"    # Ljava/lang/Object;

    .line 32
    :try_start_0
    new-instance v0, Ljava/net/URI;

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 33
    :catch_9
    move-exception v0

    .line 34
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v1, Lorg/ros/exception/RosRuntimeException;

    invoke-direct {v1, v0}, Lorg/ros/exception/RosRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
