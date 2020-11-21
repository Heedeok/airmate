.class public Lorg/jboss/netty/channel/FixedReceiveBufferSizePredictorFactory;
.super Ljava/lang/Object;
.source "FixedReceiveBufferSizePredictorFactory.java"

# interfaces
.implements Lorg/jboss/netty/channel/ReceiveBufferSizePredictorFactory;


# instance fields
.field private final predictor:Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "bufferSize"    # I

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lorg/jboss/netty/channel/FixedReceiveBufferSizePredictor;

    invoke-direct {v0, p1}, Lorg/jboss/netty/channel/FixedReceiveBufferSizePredictor;-><init>(I)V

    iput-object v0, p0, Lorg/jboss/netty/channel/FixedReceiveBufferSizePredictorFactory;->predictor:Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;

    .line 34
    return-void
.end method


# virtual methods
.method public getPredictor()Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lorg/jboss/netty/channel/FixedReceiveBufferSizePredictorFactory;->predictor:Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;

    return-object v0
.end method
