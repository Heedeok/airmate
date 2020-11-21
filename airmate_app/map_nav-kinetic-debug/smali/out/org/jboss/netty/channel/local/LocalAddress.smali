.class public final Lorg/jboss/netty/channel/local/LocalAddress;
.super Ljava/net/SocketAddress;
.source "LocalAddress.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/net/SocketAddress;",
        "Ljava/lang/Comparable<",
        "Lorg/jboss/netty/channel/local/LocalAddress;",
        ">;"
    }
.end annotation


# static fields
.field public static final EPHEMERAL:Ljava/lang/String; = "ephemeral"

.field private static final serialVersionUID:J = -0x31fcbd20210f4ec5L


# instance fields
.field private final ephemeral:Z

.field private final id:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "id"    # I

    .line 45
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jboss/netty/channel/local/LocalAddress;-><init>(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "id"    # Ljava/lang/String;

    .line 51
    invoke-direct {p0}, Ljava/net/SocketAddress;-><init>()V

    .line 52
    if-eqz p1, :cond_26

    .line 55
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 56
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1e

    .line 59
    iput-object p1, p0, Lorg/jboss/netty/channel/local/LocalAddress;->id:Ljava/lang/String;

    .line 60
    const-string v0, "ephemeral"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/jboss/netty/channel/local/LocalAddress;->ephemeral:Z

    .line 61
    return-void

    .line 57
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "empty id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_26
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "id"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 32
    move-object v0, p1

    check-cast v0, Lorg/jboss/netty/channel/local/LocalAddress;

    invoke-virtual {p0, v0}, Lorg/jboss/netty/channel/local/LocalAddress;->compareTo(Lorg/jboss/netty/channel/local/LocalAddress;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/jboss/netty/channel/local/LocalAddress;)I
    .registers 6
    .param p1, "o"    # Lorg/jboss/netty/channel/local/LocalAddress;

    .line 104
    iget-boolean v0, p0, Lorg/jboss/netty/channel/local/LocalAddress;->ephemeral:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_25

    .line 105
    iget-boolean v0, p1, Lorg/jboss/netty/channel/local/LocalAddress;->ephemeral:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_24

    .line 106
    if-ne p0, p1, :cond_e

    .line 107
    const/4 v0, 0x0

    return v0

    .line 110
    :cond_e
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 111
    .local v0, "a":I
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    .line 112
    .local v3, "b":I
    if-ge v0, v3, :cond_19

    .line 113
    return v1

    .line 114
    :cond_19
    if-le v0, v3, :cond_1c

    .line 115
    return v2

    .line 117
    :cond_1c
    new-instance v1, Ljava/lang/Error;

    const-string v2, "Two different ephemeral addresses have same identityHashCode."

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 122
    .end local v0    # "a":I
    .end local v3    # "b":I
    :cond_24
    return v2

    .line 125
    :cond_25
    iget-boolean v0, p1, Lorg/jboss/netty/channel/local/LocalAddress;->ephemeral:Z

    if-eqz v0, :cond_2a

    .line 126
    return v1

    .line 128
    :cond_2a
    invoke-virtual {p0}, Lorg/jboss/netty/channel/local/LocalAddress;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jboss/netty/channel/local/LocalAddress;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 88
    instance-of v0, p1, Lorg/jboss/netty/channel/local/LocalAddress;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 89
    return v1

    .line 92
    :cond_6
    iget-boolean v0, p0, Lorg/jboss/netty/channel/local/LocalAddress;->ephemeral:Z

    if-eqz v0, :cond_f

    .line 93
    if-ne p0, p1, :cond_e

    const/4 v1, 0x1

    nop

    :cond_e
    return v1

    .line 95
    :cond_f
    invoke-virtual {p0}, Lorg/jboss/netty/channel/local/LocalAddress;->getId()Ljava/lang/String;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lorg/jboss/netty/channel/local/LocalAddress;

    invoke-virtual {v1}, Lorg/jboss/netty/channel/local/LocalAddress;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 67
    iget-object v0, p0, Lorg/jboss/netty/channel/local/LocalAddress;->id:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 79
    iget-boolean v0, p0, Lorg/jboss/netty/channel/local/LocalAddress;->ephemeral:Z

    if-eqz v0, :cond_9

    .line 80
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 82
    :cond_9
    iget-object v0, p0, Lorg/jboss/netty/channel/local/LocalAddress;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEphemeral()Z
    .registers 2

    .line 74
    iget-boolean v0, p0, Lorg/jboss/netty/channel/local/LocalAddress;->ephemeral:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "local:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jboss/netty/channel/local/LocalAddress;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
