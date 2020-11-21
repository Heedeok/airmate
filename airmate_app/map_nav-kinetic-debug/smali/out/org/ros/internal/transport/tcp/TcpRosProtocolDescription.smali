.class public Lorg/ros/internal/transport/tcp/TcpRosProtocolDescription;
.super Lorg/ros/internal/transport/ProtocolDescription;
.source "TcpRosProtocolDescription.java"


# direct methods
.method public constructor <init>(Lorg/ros/address/AdvertiseAddress;)V
    .registers 3
    .param p1, "address"    # Lorg/ros/address/AdvertiseAddress;

    .line 29
    const-string v0, "TCPROS"

    invoke-direct {p0, v0, p1}, Lorg/ros/internal/transport/ProtocolDescription;-><init>(Ljava/lang/String;Lorg/ros/address/AdvertiseAddress;)V

    .line 30
    return-void
.end method
