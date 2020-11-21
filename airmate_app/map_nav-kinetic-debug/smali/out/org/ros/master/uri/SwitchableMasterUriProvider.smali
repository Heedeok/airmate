.class public Lorg/ros/master/uri/SwitchableMasterUriProvider;
.super Ljava/lang/Object;
.source "SwitchableMasterUriProvider.java"

# interfaces
.implements Lorg/ros/master/uri/MasterUriProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ros/master/uri/SwitchableMasterUriProvider$ProviderRequest;,
        Lorg/ros/master/uri/SwitchableMasterUriProvider$MasterUriProviderSwitcher;
    }
.end annotation


# instance fields
.field private final mutex:Ljava/lang/Object;

.field private pending:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/ros/master/uri/SwitchableMasterUriProvider$ProviderRequest;",
            ">;"
        }
    .end annotation
.end field

.field private provider:Lorg/ros/master/uri/MasterUriProvider;


# direct methods
.method public constructor <init>(Lorg/ros/master/uri/MasterUriProvider;)V
    .registers 3
    .param p1, "provider"    # Lorg/ros/master/uri/MasterUriProvider;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/master/uri/SwitchableMasterUriProvider;->pending:Ljava/util/List;

    .line 55
    iput-object p1, p0, Lorg/ros/master/uri/SwitchableMasterUriProvider;->provider:Lorg/ros/master/uri/MasterUriProvider;

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/ros/master/uri/SwitchableMasterUriProvider;->mutex:Ljava/lang/Object;

    .line 57
    return-void
.end method


# virtual methods
.method public getMasterUri()Ljava/net/URI;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ros/exception/RosRuntimeException;
        }
    .end annotation

    .line 61
    const/4 v0, 0x0

    .line 62
    .local v0, "providerToUse":Lorg/ros/master/uri/MasterUriProvider;
    const/4 v1, 0x0

    .line 64
    .local v1, "requestToUse":Lorg/ros/master/uri/SwitchableMasterUriProvider$ProviderRequest;
    iget-object v2, p0, Lorg/ros/master/uri/SwitchableMasterUriProvider;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 65
    :try_start_5
    iget-object v3, p0, Lorg/ros/master/uri/SwitchableMasterUriProvider;->provider:Lorg/ros/master/uri/MasterUriProvider;

    if-eqz v3, :cond_d

    .line 66
    iget-object v3, p0, Lorg/ros/master/uri/SwitchableMasterUriProvider;->provider:Lorg/ros/master/uri/MasterUriProvider;

    move-object v0, v3

    goto :goto_19

    .line 68
    :cond_d
    new-instance v3, Lorg/ros/master/uri/SwitchableMasterUriProvider$ProviderRequest;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lorg/ros/master/uri/SwitchableMasterUriProvider$ProviderRequest;-><init>(Lorg/ros/master/uri/SwitchableMasterUriProvider$1;)V

    move-object v1, v3

    .line 69
    iget-object v3, p0, Lorg/ros/master/uri/SwitchableMasterUriProvider;->pending:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    :goto_19
    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_26

    .line 73
    if-eqz v0, :cond_21

    .line 74
    invoke-interface {v0}, Lorg/ros/master/uri/MasterUriProvider;->getMasterUri()Ljava/net/URI;

    move-result-object v2

    return-object v2

    .line 76
    :cond_21
    invoke-virtual {v1}, Lorg/ros/master/uri/SwitchableMasterUriProvider$ProviderRequest;->getMasterUri()Ljava/net/URI;

    move-result-object v2

    return-object v2

    .line 71
    :catchall_26
    move-exception v3

    :try_start_27
    monitor-exit v2
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v3
.end method

.method public getMasterUri(JLjava/util/concurrent/TimeUnit;)Ljava/net/URI;
    .registers 7
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, "providerToUse":Lorg/ros/master/uri/MasterUriProvider;
    iget-object v1, p0, Lorg/ros/master/uri/SwitchableMasterUriProvider;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 87
    :try_start_4
    iget-object v2, p0, Lorg/ros/master/uri/SwitchableMasterUriProvider;->provider:Lorg/ros/master/uri/MasterUriProvider;

    if-eqz v2, :cond_b

    .line 88
    iget-object v2, p0, Lorg/ros/master/uri/SwitchableMasterUriProvider;->provider:Lorg/ros/master/uri/MasterUriProvider;

    move-object v0, v2

    .line 90
    :cond_b
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_1e

    .line 92
    if-eqz v0, :cond_13

    .line 93
    invoke-interface {v0, p1, p2, p3}, Lorg/ros/master/uri/MasterUriProvider;->getMasterUri(JLjava/util/concurrent/TimeUnit;)Ljava/net/URI;

    move-result-object v1

    return-object v1

    .line 96
    :cond_13
    :try_start_13
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_1a} :catch_1b

    .line 99
    goto :goto_1c

    .line 97
    :catch_1b
    move-exception v1

    .line 101
    :goto_1c
    const/4 v1, 0x0

    return-object v1

    .line 90
    :catchall_1e
    move-exception v2

    :try_start_1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v2
.end method

.method public switchProvider(Lorg/ros/master/uri/SwitchableMasterUriProvider$MasterUriProviderSwitcher;)V
    .registers 7
    .param p1, "switcher"    # Lorg/ros/master/uri/SwitchableMasterUriProvider$MasterUriProviderSwitcher;

    .line 112
    iget-object v0, p0, Lorg/ros/master/uri/SwitchableMasterUriProvider;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 113
    :try_start_3
    iget-object v1, p0, Lorg/ros/master/uri/SwitchableMasterUriProvider;->provider:Lorg/ros/master/uri/MasterUriProvider;

    .line 114
    .local v1, "oldProvider":Lorg/ros/master/uri/MasterUriProvider;
    invoke-interface {p1, v1}, Lorg/ros/master/uri/SwitchableMasterUriProvider$MasterUriProviderSwitcher;->switchProvider(Lorg/ros/master/uri/MasterUriProvider;)Lorg/ros/master/uri/MasterUriProvider;

    move-result-object v2

    iput-object v2, p0, Lorg/ros/master/uri/SwitchableMasterUriProvider;->provider:Lorg/ros/master/uri/MasterUriProvider;

    .line 116
    if-nez v1, :cond_2a

    .line 117
    iget-object v2, p0, Lorg/ros/master/uri/SwitchableMasterUriProvider;->pending:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/ros/master/uri/SwitchableMasterUriProvider$ProviderRequest;

    .line 118
    .local v3, "request":Lorg/ros/master/uri/SwitchableMasterUriProvider$ProviderRequest;
    iget-object v4, p0, Lorg/ros/master/uri/SwitchableMasterUriProvider;->provider:Lorg/ros/master/uri/MasterUriProvider;

    invoke-virtual {v3, v4}, Lorg/ros/master/uri/SwitchableMasterUriProvider$ProviderRequest;->setProvider(Lorg/ros/master/uri/MasterUriProvider;)V

    .line 119
    .end local v3    # "request":Lorg/ros/master/uri/SwitchableMasterUriProvider$ProviderRequest;
    goto :goto_13

    .line 120
    :cond_25
    iget-object v2, p0, Lorg/ros/master/uri/SwitchableMasterUriProvider;->pending:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 122
    .end local v1    # "oldProvider":Lorg/ros/master/uri/MasterUriProvider;
    :cond_2a
    monitor-exit v0

    .line 123
    return-void

    .line 122
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v1
.end method
