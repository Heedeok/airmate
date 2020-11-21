.class public Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$IncompatibleDataDecoderException;
.super Ljava/lang/Exception;
.source "HttpPostRequestDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IncompatibleDataDecoderException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0xd3ab03d2c5fcb1bL


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2128
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 2129
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "arg0"    # Ljava/lang/String;

    .line 2135
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 2136
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Throwable;

    .line 2150
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2151
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "arg0"    # Ljava/lang/Throwable;

    .line 2142
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 2143
    return-void
.end method
