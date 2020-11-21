.class public Lorg/apache/commons/net/finger/FingerClient;
.super Lorg/apache/commons/net/SocketClient;
.source "FingerClient.java"


# static fields
.field public static final DEFAULT_PORT:I = 0x4f

.field private static final __LONG_FLAG:Ljava/lang/String; = "/W "


# instance fields
.field private transient __buffer:[C

.field private transient __query:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 71
    invoke-direct {p0}, Lorg/apache/commons/net/SocketClient;-><init>()V

    .line 63
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/net/finger/FingerClient;->__query:Ljava/lang/StringBuffer;

    .line 64
    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/apache/commons/net/finger/FingerClient;->__buffer:[C

    .line 72
    const/16 v0, 0x4f

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/finger/FingerClient;->setDefaultPort(I)V

    .line 73
    return-void
.end method


# virtual methods
.method public getInputStream(Z)Ljava/io/InputStream;
    .registers 3
    .param p1, "longOutput"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/finger/FingerClient;->getInputStream(ZLjava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream(ZLjava/lang/String;)Ljava/io/InputStream;
    .registers 4
    .param p1, "longOutput"    # Z
    .param p2, "username"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/net/finger/FingerClient;->getInputStream(ZLjava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream(ZLjava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 10
    .param p1, "longOutput"    # Z
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lorg/apache/commons/net/finger/FingerClient;->__query:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 164
    if-eqz p1, :cond_f

    .line 165
    iget-object v0, p0, Lorg/apache/commons/net/finger/FingerClient;->__query:Ljava/lang/StringBuffer;

    const-string v2, "/W "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 166
    :cond_f
    iget-object v0, p0, Lorg/apache/commons/net/finger/FingerClient;->__query:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 167
    iget-object v0, p0, Lorg/apache/commons/net/finger/FingerClient;->__query:Ljava/lang/StringBuffer;

    const-string v2, "\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 169
    if-nez p3, :cond_28

    iget-object v0, p0, Lorg/apache/commons/net/finger/FingerClient;->__query:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_32

    :cond_28
    iget-object v0, p0, Lorg/apache/commons/net/finger/FingerClient;->__query:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 172
    .local v0, "encodedQuery":[B
    :goto_32
    new-instance v2, Ljava/io/DataOutputStream;

    new-instance v3, Ljava/io/BufferedOutputStream;

    iget-object v4, p0, Lorg/apache/commons/net/finger/FingerClient;->_output_:Ljava/io/OutputStream;

    const/16 v5, 0x400

    invoke-direct {v3, v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 173
    .local v2, "output":Ljava/io/DataOutputStream;
    array-length v3, v0

    invoke-virtual {v2, v0, v1, v3}, Ljava/io/DataOutputStream;->write([BII)V

    .line 174
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 176
    iget-object v1, p0, Lorg/apache/commons/net/finger/FingerClient;->_input_:Ljava/io/InputStream;

    return-object v1
.end method

.method public query(Z)Ljava/lang/String;
    .registers 3
    .param p1, "longOutput"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/finger/FingerClient;->query(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public query(ZLjava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "longOutput"    # Z
    .param p2, "username"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/commons/net/finger/FingerClient;->__buffer:[C

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 92
    .local v0, "result":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/finger/FingerClient;->getInputStream(ZLjava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 98
    .local v1, "input":Ljava/io/BufferedReader;
    :goto_16
    iget-object v2, p0, Lorg/apache/commons/net/finger/FingerClient;->__buffer:[C

    iget-object v3, p0, Lorg/apache/commons/net/finger/FingerClient;->__buffer:[C

    array-length v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/BufferedReader;->read([CII)I

    move-result v2

    .line 99
    .local v2, "read":I
    if-gtz v2, :cond_2b

    .line 100
    nop

    .line 104
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 106
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 101
    :cond_2b
    iget-object v3, p0, Lorg/apache/commons/net/finger/FingerClient;->__buffer:[C

    invoke-virtual {v0, v3, v4, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_16
.end method
