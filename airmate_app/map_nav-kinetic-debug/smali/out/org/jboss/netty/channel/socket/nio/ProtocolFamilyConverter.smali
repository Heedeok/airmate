.class final Lorg/jboss/netty/channel/socket/nio/ProtocolFamilyConverter;
.super Ljava/lang/Object;
.source "ProtocolFamilyConverter.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static convert(Lorg/jboss/netty/channel/socket/InternetProtocolFamily;)Ljava/net/ProtocolFamily;
    .registers 3
    .param p0, "family"    # Lorg/jboss/netty/channel/socket/InternetProtocolFamily;

    .line 37
    sget-object v0, Lorg/jboss/netty/channel/socket/nio/ProtocolFamilyConverter$1;->$SwitchMap$org$jboss$netty$channel$socket$InternetProtocolFamily:[I

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/InternetProtocolFamily;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_18

    .line 44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 42
    :pswitch_11
    sget-object v0, Ljava/net/StandardProtocolFamily;->INET6:Ljava/net/StandardProtocolFamily;

    return-object v0

    .line 39
    :pswitch_14
    sget-object v0, Ljava/net/StandardProtocolFamily;->INET:Ljava/net/StandardProtocolFamily;

    return-object v0

    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_14
        :pswitch_11
    .end packed-switch
.end method
