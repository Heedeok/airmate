.class Lorg/ros/master/uri/SwitchableMasterUriProvider$ProviderRequest;
.super Ljava/lang/Object;
.source "SwitchableMasterUriProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ros/master/uri/SwitchableMasterUriProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProviderRequest"
.end annotation


# instance fields
.field private latch:Ljava/util/concurrent/CountDownLatch;

.field private provider:Lorg/ros/master/uri/MasterUriProvider;


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lorg/ros/master/uri/SwitchableMasterUriProvider$ProviderRequest;->latch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method synthetic constructor <init>(Lorg/ros/master/uri/SwitchableMasterUriProvider$1;)V
    .registers 2
    .param p1, "x0"    # Lorg/ros/master/uri/SwitchableMasterUriProvider$1;

    .line 148
    invoke-direct {p0}, Lorg/ros/master/uri/SwitchableMasterUriProvider$ProviderRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public getMasterUri()Ljava/net/URI;
    .registers 4

    .line 170
    :try_start_0
    iget-object v0, p0, Lorg/ros/master/uri/SwitchableMasterUriProvider$ProviderRequest;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 171
    iget-object v0, p0, Lorg/ros/master/uri/SwitchableMasterUriProvider$ProviderRequest;->provider:Lorg/ros/master/uri/MasterUriProvider;

    invoke-interface {v0}, Lorg/ros/master/uri/MasterUriProvider;->getMasterUri()Ljava/net/URI;

    move-result-object v0
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_b} :catch_c

    return-object v0

    .line 172
    :catch_c
    move-exception v0

    .line 173
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Lorg/ros/exception/RosRuntimeException;

    const-string v2, "URI provider interrupted"

    invoke-direct {v1, v2, v0}, Lorg/ros/exception/RosRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setProvider(Lorg/ros/master/uri/MasterUriProvider;)V
    .registers 3
    .param p1, "provider"    # Lorg/ros/master/uri/MasterUriProvider;

    .line 184
    iput-object p1, p0, Lorg/ros/master/uri/SwitchableMasterUriProvider$ProviderRequest;->provider:Lorg/ros/master/uri/MasterUriProvider;

    .line 185
    iget-object v0, p0, Lorg/ros/master/uri/SwitchableMasterUriProvider$ProviderRequest;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 186
    return-void
.end method
