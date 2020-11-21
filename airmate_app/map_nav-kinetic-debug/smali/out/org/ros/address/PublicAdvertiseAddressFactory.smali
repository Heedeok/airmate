.class public Lorg/ros/address/PublicAdvertiseAddressFactory;
.super Ljava/lang/Object;
.source "PublicAdvertiseAddressFactory.java"

# interfaces
.implements Lorg/ros/address/AdvertiseAddressFactory;


# instance fields
.field private final host:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 29
    invoke-static {}, Lorg/ros/address/InetAddressFactory;->newNonLoopback()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/ros/address/PublicAdvertiseAddressFactory;-><init>(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "host"    # Ljava/lang/String;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/ros/address/PublicAdvertiseAddressFactory;->host:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public newDefault()Lorg/ros/address/AdvertiseAddress;
    .registers 3

    .line 38
    new-instance v0, Lorg/ros/address/AdvertiseAddress;

    iget-object v1, p0, Lorg/ros/address/PublicAdvertiseAddressFactory;->host:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/ros/address/AdvertiseAddress;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
