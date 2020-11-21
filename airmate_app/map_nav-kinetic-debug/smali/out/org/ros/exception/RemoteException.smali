.class public Lorg/ros/exception/RemoteException;
.super Lorg/ros/exception/RosRuntimeException;
.source "RemoteException.java"


# instance fields
.field private final statusCode:Lorg/ros/internal/node/response/StatusCode;


# direct methods
.method public constructor <init>(Lorg/ros/internal/node/response/StatusCode;Ljava/lang/String;)V
    .registers 3
    .param p1, "statusCode"    # Lorg/ros/internal/node/response/StatusCode;
    .param p2, "message"    # Ljava/lang/String;

    .line 29
    invoke-direct {p0, p2}, Lorg/ros/exception/RosRuntimeException;-><init>(Ljava/lang/String;)V

    .line 30
    iput-object p1, p0, Lorg/ros/exception/RemoteException;->statusCode:Lorg/ros/internal/node/response/StatusCode;

    .line 31
    return-void
.end method


# virtual methods
.method public getStatusCode()Lorg/ros/internal/node/response/StatusCode;
    .registers 2

    .line 37
    iget-object v0, p0, Lorg/ros/exception/RemoteException;->statusCode:Lorg/ros/internal/node/response/StatusCode;

    return-object v0
.end method
