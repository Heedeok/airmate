.class public Lorg/ros/address/AdvertiseAddress;
.super Ljava/lang/Object;
.source "AdvertiseAddress.java"


# instance fields
.field private final host:Ljava/lang/String;

.field private portCallable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "host"    # Ljava/lang/String;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iput-object p1, p0, Lorg/ros/address/AdvertiseAddress;->host:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public static newPrivate()Lorg/ros/address/AdvertiseAddress;
    .registers 1

    .line 46
    new-instance v0, Lorg/ros/address/PrivateAdvertiseAddressFactory;

    invoke-direct {v0}, Lorg/ros/address/PrivateAdvertiseAddressFactory;-><init>()V

    invoke-virtual {v0}, Lorg/ros/address/PrivateAdvertiseAddressFactory;->newDefault()Lorg/ros/address/AdvertiseAddress;

    move-result-object v0

    return-object v0
.end method

.method public static newPublic()Lorg/ros/address/AdvertiseAddress;
    .registers 1

    .line 57
    new-instance v0, Lorg/ros/address/PublicAdvertiseAddressFactory;

    invoke-direct {v0}, Lorg/ros/address/PublicAdvertiseAddressFactory;-><init>()V

    invoke-virtual {v0}, Lorg/ros/address/PublicAdvertiseAddressFactory;->newDefault()Lorg/ros/address/AdvertiseAddress;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 143
    iget-object v0, p0, Lorg/ros/address/AdvertiseAddress;->portCallable:Ljava/util/concurrent/Callable;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const/4 v0, 0x1

    if-ne p0, p1, :cond_9

    .line 145
    return v0

    .line 146
    :cond_9
    const/4 v1, 0x0

    if-nez p1, :cond_d

    .line 147
    return v1

    .line 148
    :cond_d
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_18

    .line 149
    return v1

    .line 150
    :cond_18
    move-object v2, p1

    check-cast v2, Lorg/ros/address/AdvertiseAddress;

    .line 151
    .local v2, "other":Lorg/ros/address/AdvertiseAddress;
    iget-object v3, p0, Lorg/ros/address/AdvertiseAddress;->host:Ljava/lang/String;

    if-nez v3, :cond_24

    .line 152
    iget-object v3, v2, Lorg/ros/address/AdvertiseAddress;->host:Ljava/lang/String;

    if-eqz v3, :cond_2f

    .line 153
    return v1

    .line 154
    :cond_24
    iget-object v3, p0, Lorg/ros/address/AdvertiseAddress;->host:Ljava/lang/String;

    iget-object v4, v2, Lorg/ros/address/AdvertiseAddress;->host:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    .line 155
    return v1

    .line 157
    :cond_2f
    :try_start_2f
    iget-object v3, p0, Lorg/ros/address/AdvertiseAddress;->portCallable:Ljava/util/concurrent/Callable;

    invoke-interface {v3}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, v2, Lorg/ros/address/AdvertiseAddress;->portCallable:Ljava/util/concurrent/Callable;

    invoke-interface {v4}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v4
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_3b} :catch_40

    if-eq v3, v4, :cond_3e

    .line 158
    return v1

    .line 161
    :cond_3e
    nop

    .line 162
    return v0

    .line 159
    :catch_40
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/ros/exception/RosRuntimeException;

    invoke-direct {v1, v0}, Lorg/ros/exception/RosRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getHost()Ljava/lang/String;
    .registers 2

    .line 66
    iget-object v0, p0, Lorg/ros/address/AdvertiseAddress;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .registers 3

    .line 80
    :try_start_0
    iget-object v0, p0, Lorg/ros/address/AdvertiseAddress;->portCallable:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 81
    :catch_d
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/ros/exception/RosRuntimeException;

    invoke-direct {v1, v0}, Lorg/ros/exception/RosRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public hashCode()I
    .registers 5

    .line 129
    iget-object v0, p0, Lorg/ros/address/AdvertiseAddress;->portCallable:Ljava/util/concurrent/Callable;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const/16 v0, 0x1f

    .line 131
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 132
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/ros/address/AdvertiseAddress;->host:Ljava/lang/String;

    if-nez v3, :cond_10

    const/4 v3, 0x0

    goto :goto_16

    :cond_10
    iget-object v3, p0, Lorg/ros/address/AdvertiseAddress;->host:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_16
    add-int/2addr v2, v3

    .line 134
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    :try_start_19
    iget-object v3, p0, Lorg/ros/address/AdvertiseAddress;->portCallable:Ljava/util/concurrent/Callable;

    invoke-interface {v3}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_25} :catch_28

    add-int/2addr v1, v3

    .line 137
    .end local v2    # "result":I
    .restart local v1    # "result":I
    nop

    .line 138
    return v1

    .line 135
    .end local v1    # "result":I
    .restart local v2    # "result":I
    :catch_28
    move-exception v1

    .line 136
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Lorg/ros/exception/RosRuntimeException;

    invoke-direct {v3, v1}, Lorg/ros/exception/RosRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public isLoopbackAddress()Z
    .registers 2

    .line 114
    invoke-virtual {p0}, Lorg/ros/address/AdvertiseAddress;->toInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    return v0
.end method

.method public setPortCallable(Ljava/util/concurrent/Callable;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 87
    .local p1, "portCallable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lorg/ros/address/AdvertiseAddress;->portCallable:Ljava/util/concurrent/Callable;

    .line 88
    return-void
.end method

.method public setStaticPort(I)V
    .registers 3
    .param p1, "port"    # I

    .line 70
    new-instance v0, Lorg/ros/address/AdvertiseAddress$1;

    invoke-direct {v0, p0, p1}, Lorg/ros/address/AdvertiseAddress$1;-><init>(Lorg/ros/address/AdvertiseAddress;I)V

    iput-object v0, p0, Lorg/ros/address/AdvertiseAddress;->portCallable:Ljava/util/concurrent/Callable;

    .line 76
    return-void
.end method

.method public toInetAddress()Ljava/net/InetAddress;
    .registers 2

    .line 91
    iget-object v0, p0, Lorg/ros/address/AdvertiseAddress;->host:Ljava/lang/String;

    invoke-static {v0}, Lorg/ros/address/InetAddressFactory;->newFromHostString(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public toInetSocketAddress()Ljava/net/InetSocketAddress;
    .registers 4

    .line 95
    iget-object v0, p0, Lorg/ros/address/AdvertiseAddress;->portCallable:Ljava/util/concurrent/Callable;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :try_start_5
    invoke-virtual {p0}, Lorg/ros/address/AdvertiseAddress;->toInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 98
    .local v0, "address":Ljava/net/InetAddress;
    new-instance v1, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lorg/ros/address/AdvertiseAddress;->portCallable:Ljava/util/concurrent/Callable;

    invoke-interface {v2}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v1, v0, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1a} :catch_1b

    return-object v1

    .line 99
    .end local v0    # "address":Ljava/net/InetAddress;
    :catch_1b
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/ros/exception/RosRuntimeException;

    invoke-direct {v1, v0}, Lorg/ros/exception/RosRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 119
    iget-object v0, p0, Lorg/ros/address/AdvertiseAddress;->portCallable:Ljava/util/concurrent/Callable;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdvertiseAddress<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ros/address/AdvertiseAddress;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ros/address/AdvertiseAddress;->portCallable:Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2b} :catch_2c

    return-object v0

    .line 122
    :catch_2c
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/ros/exception/RosRuntimeException;

    invoke-direct {v1, v0}, Lorg/ros/exception/RosRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toUri(Ljava/lang/String;)Ljava/net/URI;
    .registers 11
    .param p1, "scheme"    # Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lorg/ros/address/AdvertiseAddress;->portCallable:Ljava/util/concurrent/Callable;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    :try_start_5
    new-instance v0, Ljava/net/URI;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/ros/address/AdvertiseAddress;->host:Ljava/lang/String;

    iget-object v1, p0, Lorg/ros/address/AdvertiseAddress;->portCallable:Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v6, "/"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1f} :catch_20

    return-object v0

    .line 108
    :catch_20
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/ros/exception/RosRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/ros/exception/RosRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
