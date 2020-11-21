.class Lorg/ros/address/AdvertiseAddress$1;
.super Ljava/lang/Object;
.source "AdvertiseAddress.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ros/address/AdvertiseAddress;->setStaticPort(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ros/address/AdvertiseAddress;

.field final synthetic val$port:I


# direct methods
.method constructor <init>(Lorg/ros/address/AdvertiseAddress;I)V
    .registers 3
    .param p1, "this$0"    # Lorg/ros/address/AdvertiseAddress;

    .line 70
    iput-object p1, p0, Lorg/ros/address/AdvertiseAddress$1;->this$0:Lorg/ros/address/AdvertiseAddress;

    iput p2, p0, Lorg/ros/address/AdvertiseAddress$1;->val$port:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 73
    iget v0, p0, Lorg/ros/address/AdvertiseAddress$1;->val$port:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 70
    invoke-virtual {p0}, Lorg/ros/address/AdvertiseAddress$1;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
