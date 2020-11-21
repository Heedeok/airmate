.class public final Lorg/apache/commons/net/daytime/DaytimeTCPClient;
.super Lorg/apache/commons/net/SocketClient;
.source "DaytimeTCPClient.java"


# static fields
.field public static final DEFAULT_PORT:I = 0xd


# instance fields
.field private __buffer:[C


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 55
    invoke-direct {p0}, Lorg/apache/commons/net/SocketClient;-><init>()V

    .line 48
    const/16 v0, 0x40

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/apache/commons/net/daytime/DaytimeTCPClient;->__buffer:[C

    .line 56
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/daytime/DaytimeTCPClient;->setDefaultPort(I)V

    .line 57
    return-void
.end method


# virtual methods
.method public getTime()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/commons/net/daytime/DaytimeTCPClient;->__buffer:[C

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 78
    .local v0, "result":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v3, p0, Lorg/apache/commons/net/daytime/DaytimeTCPClient;->_input_:Ljava/io/InputStream;

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 82
    .local v1, "reader":Ljava/io/BufferedReader;
    :goto_14
    iget-object v2, p0, Lorg/apache/commons/net/daytime/DaytimeTCPClient;->__buffer:[C

    iget-object v3, p0, Lorg/apache/commons/net/daytime/DaytimeTCPClient;->__buffer:[C

    array-length v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/BufferedReader;->read([CII)I

    move-result v2

    .line 83
    .local v2, "read":I
    if-gtz v2, :cond_26

    .line 84
    nop

    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 85
    :cond_26
    iget-object v3, p0, Lorg/apache/commons/net/daytime/DaytimeTCPClient;->__buffer:[C

    invoke-virtual {v0, v3, v4, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_14
.end method
