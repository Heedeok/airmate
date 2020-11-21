.class public Lorg/ros/internal/node/response/ObjectResultFactory;
.super Ljava/lang/Object;
.source "ObjectResultFactory.java"

# interfaces
.implements Lorg/ros/internal/node/response/ResultFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ros/internal/node/response/ResultFactory<",
        "Ljava/lang/Object;",
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
.method public newFromValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p1, "value"    # Ljava/lang/Object;

    .line 26
    return-object p1
.end method
