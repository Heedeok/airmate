.class public Lorg/ros/internal/node/response/IntegerResultFactory;
.super Ljava/lang/Object;
.source "IntegerResultFactory.java"

# interfaces
.implements Lorg/ros/internal/node/response/ResultFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ros/internal/node/response/ResultFactory<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newFromValue(Ljava/lang/Object;)Ljava/lang/Integer;
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;

    .line 26
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public bridge synthetic newFromValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 22
    invoke-virtual {p0, p1}, Lorg/ros/internal/node/response/IntegerResultFactory;->newFromValue(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
