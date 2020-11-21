.class public abstract Lorg/ros/internal/transport/tcp/AbstractNamedChannelHandler;
.super Lorg/jboss/netty/channel/SimpleChannelHandler;
.source "AbstractNamedChannelHandler.java"

# interfaces
.implements Lorg/ros/internal/transport/tcp/NamedChannelHandler;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Lorg/jboss/netty/channel/SimpleChannelHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    .line 29
    const-string v0, "NamedChannelHandler<%s, %s>"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/ros/internal/transport/tcp/AbstractNamedChannelHandler;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
