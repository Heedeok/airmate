.class public Lorg/ros/internal/node/service/Service;
.super Ljava/lang/Object;
.source "Service.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ros/internal/node/service/Service$Response;,
        Lorg/ros/internal/node/service/Service$Request;
    }
.end annotation


# instance fields
.field private final request:Lorg/ros/internal/node/service/Service$Request;

.field private final response:Lorg/ros/internal/node/service/Service$Response;


# direct methods
.method public constructor <init>(Lorg/ros/internal/node/service/Service$Request;Lorg/ros/internal/node/service/Service$Response;)V
    .registers 3
    .param p1, "request"    # Lorg/ros/internal/node/service/Service$Request;
    .param p2, "response"    # Lorg/ros/internal/node/service/Service$Response;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/ros/internal/node/service/Service;->request:Lorg/ros/internal/node/service/Service$Request;

    .line 37
    iput-object p2, p0, Lorg/ros/internal/node/service/Service;->response:Lorg/ros/internal/node/service/Service$Response;

    .line 38
    return-void
.end method


# virtual methods
.method public getRequest()Lorg/ros/internal/node/service/Service$Request;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/ros/internal/node/service/Service$Request;",
            ">()TT;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lorg/ros/internal/node/service/Service;->request:Lorg/ros/internal/node/service/Service$Request;

    return-object v0
.end method

.method public getResponse()Lorg/ros/internal/node/service/Service$Response;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/ros/internal/node/service/Service$Response;",
            ">()TT;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lorg/ros/internal/node/service/Service;->response:Lorg/ros/internal/node/service/Service$Response;

    return-object v0
.end method
