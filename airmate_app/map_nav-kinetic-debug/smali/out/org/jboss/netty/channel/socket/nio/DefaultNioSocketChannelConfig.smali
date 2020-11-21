.class Lorg/jboss/netty/channel/socket/nio/DefaultNioSocketChannelConfig;
.super Lorg/jboss/netty/channel/socket/DefaultSocketChannelConfig;
.source "DefaultNioSocketChannelConfig.java"

# interfaces
.implements Lorg/jboss/netty/channel/socket/nio/NioSocketChannelConfig;


# static fields
.field private static final DEFAULT_PREDICTOR_FACTORY:Lorg/jboss/netty/channel/ReceiveBufferSizePredictorFactory;

.field private static final logger:Lorg/jboss/netty/logging/InternalLogger;


# instance fields
.field private volatile predictor:Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;

.field private volatile predictorFactory:Lorg/jboss/netty/channel/ReceiveBufferSizePredictorFactory;

.field private volatile writeBufferHighWaterMark:I

.field private volatile writeBufferLowWaterMark:I

.field private volatile writeSpinCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 36
    const-class v0, Lorg/jboss/netty/channel/socket/nio/DefaultNioSocketChannelConfig;

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/channel/socket/nio/DefaultNioSocketChannelConfig;->logger:Lorg/jboss/netty/logging/InternalLogger;

    .line 39
    new-instance v0, Lorg/jboss/netty/channel/AdaptiveReceiveBufferSizePredictorFactory;

    invoke-direct {v0}, Lorg/jboss/netty/channel/AdaptiveReceiveBufferSizePredictorFactory;-><init>()V

    sput-object v0, Lorg/jboss/netty/channel/socket/nio/DefaultNioSocketChannelConfig;->DEFAULT_PREDICTOR_FACTORY:Lorg/jboss/netty/channel/ReceiveBufferSizePredictorFactory;

    return-void
.end method

.method constructor <init>(Ljava/net/Socket;)V
    .registers 3
    .param p1, "socket"    # Ljava/net/Socket;

    .line 49
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/socket/DefaultSocketChannelConfig;-><init>(Ljava/net/Socket;)V

    .line 42
    const/high16 v0, 0x10000

    iput v0, p0, Lorg/jboss/netty/channel/socket/nio/DefaultNioSocketChannelConfig;->writeBufferHighWaterMark:I

    .line 43
    const v0, 0x8000

    iput v0, p0, Lorg/jboss/netty/channel/socket/nio/DefaultNioSocketChannelConfig;->writeBufferLowWaterMark:I

    .line 45
    sget-object v0, Lorg/jboss/netty/channel/socket/nio/DefaultNioSocketChannelConfig;->DEFAULT_PREDICTOR_FACTORY:Lorg/jboss/netty/channel/ReceiveBufferSizePredictorFactory;

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/DefaultNioSocketChannelConfig;->predictorFactory:Lorg/jboss/netty/channel/ReceiveBufferSizePredictorFactory;

    .line 46
    const/16 v0, 0x10

    iput v0, p0, Lorg/jboss/netty/channel/socket/nio/DefaultNioSocketChannelConfig;->writeSpinCount:I

    .line 50
    return-void
.end method

.method private setWriteBufferHighWaterMark0(I)V
    .registers 5
    .param p1, "writeBufferHighWaterMark"    # I

    .line 106
    if-ltz p1, :cond_5

    .line 110
    iput p1, p0, Lorg/jboss/netty/channel/socket/nio/DefaultNioSocketChannelConfig;->writeBufferHighWaterMark:I

    .line 111
    return-void

    .line 107
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeBufferHighWaterMark: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setWriteBufferLowWaterMark0(I)V
    .registers 5
    .param p1, "writeBufferLowWaterMark"    # I

    .line 128
    if-ltz p1, :cond_5

    .line 132
    iput p1, p0, Lorg/jboss/netty/channel/socket/nio/DefaultNioSocketChannelConfig;->writeBufferLowWaterMark:I

    .line 133
    return-void

    .line 129
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeBufferLowWaterMark: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getReceiveBufferSizePredictor()Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;
    .registers 6

    .line 148
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/DefaultNioSocketChannelConfig;->predictor:Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;

    .line 149
    .local v0, "predictor":Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;
    if-nez v0, :cond_33

    .line 151
    :try_start_4
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/DefaultNioSocketChannelConfig;->getReceiveBufferSizePredictorFactory()Lorg/jboss/netty/channel/ReceiveBufferSizePredictorFactory;

    move-result-object v1

    invoke-interface {v1}, Lorg/jboss/netty/channel/ReceiveBufferSizePredictorFactory;->getPredictor()Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;

    move-result-object v1

    move-object v0, v1

    iput-object v1, p0, Lorg/jboss/netty/channel/socket/nio/DefaultNioSocketChannelConfig;->predictor:Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_f} :catch_10

    .line 157
    goto :goto_33

    .line 152
    :catch_10
    move-exception v1

    .line 153
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/jboss/netty/channel/ChannelException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to create a new "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v4, Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 159
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_33
    :goto_33
    return-object v0
.end method

.method public getReceiveBufferSizePredictorFactory()Lorg/jboss/netty/channel/ReceiveBufferSizePredictorFactory;
    .registers 2

    .line 171
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/DefaultNioSocketChannelConfig;->predictorFactory:Lorg/jboss/netty/channel/ReceiveBufferSizePredictorFactory;

    return-object v0
.end method

.method public getWriteBufferHighWaterMark()I
    .registers 2

    .line 92
    iget v0, p0, Lorg/jboss/netty/channel/socket/nio/DefaultNioSocketChannelConfig;->writeBufferHighWaterMark:I

    return v0
.end method

.method public getWriteBufferLowWaterMark()I
    .registers 2

    .line 114
    iget v0, p0, Lorg/jboss/netty/channel/socket/nio/DefaultNioSocketChannelConfig;->writeBufferLowWaterMark:I

    return v0
.end method

.method public getWriteSpinCount()I
    .registers 2

    .line 136
    iget v0, p0, Lorg/jboss/netty/channel/socket/nio/DefaultNioSocketChannelConfig;->writeSpinCount:I

    return v0
.end method

.method public setOption(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 71
    invoke-super {p0, p1, p2}, Lorg/jboss/netty/channel/socket/DefaultSocketChannelConfig;->setOption(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 72
    return v1

    .line 75
    :cond_8
    const-string v0, "writeBufferHighWaterMark"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 76
    invoke-static {p2}, Lorg/jboss/netty/util/internal/ConversionUtil;->toInt(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/jboss/netty/channel/socket/nio/DefaultNioSocketChannelConfig;->setWriteBufferHighWaterMark0(I)V

    goto :goto_55

    .line 77
    :cond_18
    const-string v0, "writeBufferLowWaterMark"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 78
    invoke-static {p2}, Lorg/jboss/netty/util/internal/ConversionUtil;->toInt(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/jboss/netty/channel/socket/nio/DefaultNioSocketChannelConfig;->setWriteBufferLowWaterMark0(I)V

    goto :goto_55

    .line 79
    :cond_28
    const-string v0, "writeSpinCount"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 80
    invoke-static {p2}, Lorg/jboss/netty/util/internal/ConversionUtil;->toInt(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jboss/netty/channel/socket/nio/DefaultNioSocketChannelConfig;->setWriteSpinCount(I)V

    goto :goto_55

    .line 81
    :cond_38
    const-string v0, "receiveBufferSizePredictorFactory"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 82
    move-object v0, p2

    check-cast v0, Lorg/jboss/netty/channel/ReceiveBufferSizePredictorFactory;

    invoke-virtual {p0, v0}, Lorg/jboss/netty/channel/socket/nio/DefaultNioSocketChannelConfig;->setReceiveBufferSizePredictorFactory(Lorg/jboss/netty/channel/ReceiveBufferSizePredictorFactory;)V

    goto :goto_55

    .line 83
    :cond_47
    const-string v0, "receiveBufferSizePredictor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 84
    move-object v0, p2

    check-cast v0, Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;

    invoke-virtual {p0, v0}, Lorg/jboss/netty/channel/socket/nio/DefaultNioSocketChannelConfig;->setReceiveBufferSizePredictor(Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;)V

    .line 88
    :goto_55
    return v1

    .line 86
    :cond_56
    const/4 v0, 0x0

    return v0
.end method

.method public setOptions(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 54
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-super {p0, p1}, Lorg/jboss/netty/channel/socket/DefaultSocketChannelConfig;->setOptions(Ljava/util/Map;)V

    .line 55
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/DefaultNioSocketChannelConfig;->getWriteBufferHighWaterMark()I

    move-result v0

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/DefaultNioSocketChannelConfig;->getWriteBufferLowWaterMark()I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 57
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/DefaultNioSocketChannelConfig;->getWriteBufferHighWaterMark()I

    move-result v0

    ushr-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lorg/jboss/netty/channel/socket/nio/DefaultNioSocketChannelConfig;->setWriteBufferLowWaterMark0(I)V

    .line 58
    sget-object v0, Lorg/jboss/netty/channel/socket/nio/DefaultNioSocketChannelConfig;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v0}, Lorg/jboss/netty/logging/InternalLogger;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 60
    sget-object v0, Lorg/jboss/netty/channel/socket/nio/DefaultNioSocketChannelConfig;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v1, "writeBufferLowWaterMark cannot be greater than writeBufferHighWaterMark; setting to the half of the writeBufferHighWaterMark."

    invoke-interface {v0, v1}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;)V

    .line 67
    :cond_25
    return-void
.end method

.method public setReceiveBufferSizePredictor(Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;)V
    .registers 4
    .param p1, "predictor"    # Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;

    .line 164
    if-eqz p1, :cond_5

    .line 167
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/DefaultNioSocketChannelConfig;->predictor:Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;

    .line 168
    return-void

    .line 165
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "predictor"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setReceiveBufferSizePredictorFactory(Lorg/jboss/netty/channel/ReceiveBufferSizePredictorFactory;)V
    .registers 4
    .param p1, "predictorFactory"    # Lorg/jboss/netty/channel/ReceiveBufferSizePredictorFactory;

    .line 175
    if-eqz p1, :cond_5

    .line 178
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/DefaultNioSocketChannelConfig;->predictorFactory:Lorg/jboss/netty/channel/ReceiveBufferSizePredictorFactory;

    .line 179
    return-void

    .line 176
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "predictorFactory"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setWriteBufferHighWaterMark(I)V
    .registers 5
    .param p1, "writeBufferHighWaterMark"    # I

    .line 96
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/DefaultNioSocketChannelConfig;->getWriteBufferLowWaterMark()I

    move-result v0

    if-lt p1, v0, :cond_a

    .line 102
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/socket/nio/DefaultNioSocketChannelConfig;->setWriteBufferHighWaterMark0(I)V

    .line 103
    return-void

    .line 97
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeBufferHighWaterMark cannot be less than writeBufferLowWaterMark ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/DefaultNioSocketChannelConfig;->getWriteBufferLowWaterMark()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setWriteBufferLowWaterMark(I)V
    .registers 5
    .param p1, "writeBufferLowWaterMark"    # I

    .line 118
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/DefaultNioSocketChannelConfig;->getWriteBufferHighWaterMark()I

    move-result v0

    if-gt p1, v0, :cond_a

    .line 124
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/socket/nio/DefaultNioSocketChannelConfig;->setWriteBufferLowWaterMark0(I)V

    .line 125
    return-void

    .line 119
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeBufferLowWaterMark cannot be greater than writeBufferHighWaterMark ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/DefaultNioSocketChannelConfig;->getWriteBufferHighWaterMark()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setWriteSpinCount(I)V
    .registers 4
    .param p1, "writeSpinCount"    # I

    .line 140
    if-lez p1, :cond_5

    .line 144
    iput p1, p0, Lorg/jboss/netty/channel/socket/nio/DefaultNioSocketChannelConfig;->writeSpinCount:I

    .line 145
    return-void

    .line 141
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "writeSpinCount must be a positive integer."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
