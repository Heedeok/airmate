.class public Lorg/ros/address/PrivateAdvertiseAddressFactory;
.super Ljava/lang/Object;
.source "PrivateAdvertiseAddressFactory.java"

# interfaces
.implements Lorg/ros/address/AdvertiseAddressFactory;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newDefault()Lorg/ros/address/AdvertiseAddress;
    .registers 3

    .line 26
    new-instance v0, Lorg/ros/address/AdvertiseAddress;

    const-string v1, "127.0.0.1"

    invoke-direct {v0, v1}, Lorg/ros/address/AdvertiseAddress;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
