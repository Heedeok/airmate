.class public abstract Lorg/ros/internal/node/BaseClientHandshake;
.super Ljava/lang/Object;
.source "BaseClientHandshake.java"

# interfaces
.implements Lorg/ros/internal/transport/ClientHandshake;


# instance fields
.field private errorMessage:Ljava/lang/String;

.field protected final outgoingConnectionHeader:Lorg/ros/internal/transport/ConnectionHeader;


# direct methods
.method public constructor <init>(Lorg/ros/internal/transport/ConnectionHeader;)V
    .registers 2
    .param p1, "outgoingConnectionHeader"    # Lorg/ros/internal/transport/ConnectionHeader;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/ros/internal/node/BaseClientHandshake;->outgoingConnectionHeader:Lorg/ros/internal/transport/ConnectionHeader;

    .line 35
    return-void
.end method


# virtual methods
.method public getErrorMessage()Ljava/lang/String;
    .registers 2

    .line 44
    iget-object v0, p0, Lorg/ros/internal/node/BaseClientHandshake;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getOutgoingConnectionHeader()Lorg/ros/internal/transport/ConnectionHeader;
    .registers 2

    .line 39
    iget-object v0, p0, Lorg/ros/internal/node/BaseClientHandshake;->outgoingConnectionHeader:Lorg/ros/internal/transport/ConnectionHeader;

    return-object v0
.end method

.method protected setErrorMessage(Ljava/lang/String;)V
    .registers 2
    .param p1, "errorMessage"    # Ljava/lang/String;

    .line 48
    iput-object p1, p0, Lorg/ros/internal/node/BaseClientHandshake;->errorMessage:Ljava/lang/String;

    .line 49
    return-void
.end method
