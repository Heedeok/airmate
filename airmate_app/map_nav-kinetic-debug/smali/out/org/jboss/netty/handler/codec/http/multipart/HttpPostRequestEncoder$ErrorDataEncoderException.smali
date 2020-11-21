.class public Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;
.super Ljava/lang/Exception;
.source "HttpPostRequestEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorDataEncoderException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x45ab806f6116e1b1L


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 963
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 964
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "arg0"    # Ljava/lang/String;

    .line 970
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 971
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Throwable;

    .line 985
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 986
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "arg0"    # Ljava/lang/Throwable;

    .line 977
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 978
    return-void
.end method
