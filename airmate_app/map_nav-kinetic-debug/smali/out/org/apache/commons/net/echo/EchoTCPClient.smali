.class public final Lorg/apache/commons/net/echo/EchoTCPClient;
.super Lorg/apache/commons/net/discard/DiscardTCPClient;
.source "EchoTCPClient.java"


# static fields
.field public static final DEFAULT_PORT:I = 0x7


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 53
    invoke-direct {p0}, Lorg/apache/commons/net/discard/DiscardTCPClient;-><init>()V

    .line 54
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/echo/EchoTCPClient;->setDefaultPort(I)V

    .line 55
    return-void
.end method


# virtual methods
.method public getInputStream()Ljava/io/InputStream;
    .registers 2

    .line 69
    iget-object v0, p0, Lorg/apache/commons/net/echo/EchoTCPClient;->_input_:Ljava/io/InputStream;

    return-object v0
.end method
