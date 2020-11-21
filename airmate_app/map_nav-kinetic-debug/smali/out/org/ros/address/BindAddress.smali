.class public Lorg/ros/address/BindAddress;
.super Ljava/lang/Object;
.source "BindAddress.java"


# instance fields
.field private final address:Ljava/net/InetSocketAddress;


# direct methods
.method private constructor <init>(Ljava/net/InetSocketAddress;)V
    .registers 2
    .param p1, "address"    # Ljava/net/InetSocketAddress;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/ros/address/BindAddress;->address:Ljava/net/InetSocketAddress;

    .line 34
    return-void
.end method

.method public static newPrivate()Lorg/ros/address/BindAddress;
    .registers 1

    .line 59
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/ros/address/BindAddress;->newPrivate(I)Lorg/ros/address/BindAddress;

    move-result-object v0

    return-object v0
.end method

.method public static newPrivate(I)Lorg/ros/address/BindAddress;
    .registers 4
    .param p0, "port"    # I

    .line 55
    new-instance v0, Lorg/ros/address/BindAddress;

    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-static {}, Lorg/ros/address/InetAddressFactory;->newLoopback()Ljava/net/InetAddress;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v0, v1}, Lorg/ros/address/BindAddress;-><init>(Ljava/net/InetSocketAddress;)V

    return-object v0
.end method

.method public static newPublic()Lorg/ros/address/BindAddress;
    .registers 1

    .line 46
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/ros/address/BindAddress;->newPublic(I)Lorg/ros/address/BindAddress;

    move-result-object v0

    return-object v0
.end method

.method public static newPublic(I)Lorg/ros/address/BindAddress;
    .registers 3
    .param p0, "port"    # I

    .line 42
    new-instance v0, Lorg/ros/address/BindAddress;

    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p0}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-direct {v0, v1}, Lorg/ros/address/BindAddress;-><init>(Ljava/net/InetSocketAddress;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 81
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 82
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 83
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    return v1

    .line 84
    :cond_13
    move-object v2, p1

    check-cast v2, Lorg/ros/address/BindAddress;

    .line 85
    .local v2, "other":Lorg/ros/address/BindAddress;
    iget-object v3, p0, Lorg/ros/address/BindAddress;->address:Ljava/net/InetSocketAddress;

    if-nez v3, :cond_1f

    .line 86
    iget-object v3, v2, Lorg/ros/address/BindAddress;->address:Ljava/net/InetSocketAddress;

    if-eqz v3, :cond_2a

    return v1

    .line 87
    :cond_1f
    iget-object v3, p0, Lorg/ros/address/BindAddress;->address:Ljava/net/InetSocketAddress;

    iget-object v4, v2, Lorg/ros/address/BindAddress;->address:Ljava/net/InetSocketAddress;

    invoke-virtual {v3, v4}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    return v1

    .line 88
    :cond_2a
    return v0
.end method

.method public hashCode()I
    .registers 5

    .line 73
    const/16 v0, 0x1f

    .line 74
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 75
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/ros/address/BindAddress;->address:Ljava/net/InetSocketAddress;

    if-nez v3, :cond_b

    const/4 v3, 0x0

    goto :goto_11

    :cond_b
    iget-object v3, p0, Lorg/ros/address/BindAddress;->address:Ljava/net/InetSocketAddress;

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->hashCode()I

    move-result v3

    :goto_11
    add-int/2addr v2, v3

    .line 76
    .end local v1    # "result":I
    .local v2, "result":I
    return v2
.end method

.method public toInetSocketAddress()Ljava/net/InetSocketAddress;
    .registers 2

    .line 68
    iget-object v0, p0, Lorg/ros/address/BindAddress;->address:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BindAddress<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ros/address/BindAddress;->address:Ljava/net/InetSocketAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
