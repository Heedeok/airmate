.class final Lorg/jboss/netty/handler/codec/compression/ZlibUtil;
.super Ljava/lang/Object;
.source "ZlibUtil.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method static convertWrapperType(Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;)Ljava/lang/Enum;
    .registers 3
    .param p0, "wrapper"    # Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;",
            ")",
            "Ljava/lang/Enum<",
            "*>;"
        }
    .end annotation

    .line 37
    sget-object v0, Lorg/jboss/netty/handler/codec/compression/ZlibUtil$1;->$SwitchMap$org$jboss$netty$handler$codec$compression$ZlibWrapper:[I

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1e

    .line 51
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0

    .line 48
    :pswitch_11
    sget-object v0, Lorg/jboss/netty/util/internal/jzlib/JZlib;->W_ZLIB_OR_NONE:Ljava/lang/Enum;

    .line 49
    .local v0, "convertedWrapperType":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    goto :goto_1d

    .line 45
    .end local v0    # "convertedWrapperType":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    :pswitch_14
    sget-object v0, Lorg/jboss/netty/util/internal/jzlib/JZlib;->W_GZIP:Ljava/lang/Enum;

    .line 46
    .restart local v0    # "convertedWrapperType":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    goto :goto_1d

    .line 42
    .end local v0    # "convertedWrapperType":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    :pswitch_17
    sget-object v0, Lorg/jboss/netty/util/internal/jzlib/JZlib;->W_ZLIB:Ljava/lang/Enum;

    .line 43
    .restart local v0    # "convertedWrapperType":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    goto :goto_1d

    .line 39
    .end local v0    # "convertedWrapperType":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    :pswitch_1a
    sget-object v0, Lorg/jboss/netty/util/internal/jzlib/JZlib;->W_NONE:Ljava/lang/Enum;

    .line 40
    .restart local v0    # "convertedWrapperType":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    nop

    .line 53
    :goto_1d
    return-object v0

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
    .end packed-switch
.end method

.method static exception(Lorg/jboss/netty/util/internal/jzlib/ZStream;Ljava/lang/String;I)Lorg/jboss/netty/handler/codec/compression/CompressionException;
    .registers 7
    .param p0, "z"    # Lorg/jboss/netty/util/internal/jzlib/ZStream;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "resultCode"    # I

    .line 31
    new-instance v0, Lorg/jboss/netty/handler/codec/compression/CompressionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    if-eqz v2, :cond_2f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_31

    :cond_2f
    const-string v2, ""

    :goto_31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/compression/CompressionException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static fail(Lorg/jboss/netty/util/internal/jzlib/ZStream;Ljava/lang/String;I)V
    .registers 4
    .param p0, "z"    # Lorg/jboss/netty/util/internal/jzlib/ZStream;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "resultCode"    # I

    .line 27
    invoke-static {p0, p1, p2}, Lorg/jboss/netty/handler/codec/compression/ZlibUtil;->exception(Lorg/jboss/netty/util/internal/jzlib/ZStream;Ljava/lang/String;I)Lorg/jboss/netty/handler/codec/compression/CompressionException;

    move-result-object v0

    throw v0
.end method
