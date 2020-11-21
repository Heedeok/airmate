.class synthetic Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel$1;
.super Ljava/lang/Object;
.source "NioDatagramChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$jboss$netty$channel$socket$InternetProtocolFamily:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 79
    invoke-static {}, Lorg/jboss/netty/channel/socket/InternetProtocolFamily;->values()[Lorg/jboss/netty/channel/socket/InternetProtocolFamily;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel$1;->$SwitchMap$org$jboss$netty$channel$socket$InternetProtocolFamily:[I

    :try_start_9
    sget-object v0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel$1;->$SwitchMap$org$jboss$netty$channel$socket$InternetProtocolFamily:[I

    sget-object v1, Lorg/jboss/netty/channel/socket/InternetProtocolFamily;->IPv4:Lorg/jboss/netty/channel/socket/InternetProtocolFamily;

    invoke-virtual {v1}, Lorg/jboss/netty/channel/socket/InternetProtocolFamily;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_15

    goto :goto_16

    :catch_15
    move-exception v0

    :goto_16
    :try_start_16
    sget-object v0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel$1;->$SwitchMap$org$jboss$netty$channel$socket$InternetProtocolFamily:[I

    sget-object v1, Lorg/jboss/netty/channel/socket/InternetProtocolFamily;->IPv6:Lorg/jboss/netty/channel/socket/InternetProtocolFamily;

    invoke-virtual {v1}, Lorg/jboss/netty/channel/socket/InternetProtocolFamily;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_21} :catch_22

    goto :goto_23

    :catch_22
    move-exception v0

    :goto_23
    return-void
.end method
