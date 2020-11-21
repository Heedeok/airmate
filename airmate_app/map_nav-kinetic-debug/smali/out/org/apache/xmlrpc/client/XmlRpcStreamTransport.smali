.class public abstract Lorg/apache/xmlrpc/client/XmlRpcStreamTransport;
.super Lorg/apache/xmlrpc/client/XmlRpcTransportImpl;
.source "XmlRpcStreamTransport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$GzipReqWriter;,
        Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$ReqWriterImpl;,
        Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$ReqWriter;
    }
.end annotation


# direct methods
.method protected constructor <init>(Lorg/apache/xmlrpc/client/XmlRpcClient;)V
    .registers 2
    .param p1, "pClient"    # Lorg/apache/xmlrpc/client/XmlRpcClient;

    .line 102
    invoke-direct {p0, p1}, Lorg/apache/xmlrpc/client/XmlRpcTransportImpl;-><init>(Lorg/apache/xmlrpc/client/XmlRpcClient;)V

    .line 103
    return-void
.end method


# virtual methods
.method protected abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/client/XmlRpcClientException;
        }
    .end annotation
.end method

.method protected abstract getInputStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation
.end method

.method protected isCompressingRequest(Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;)Z
    .registers 3
    .param p1, "pConfig"    # Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;

    .line 122
    invoke-interface {p1}, Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;->isEnabledForExtensions()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 123
    invoke-interface {p1}, Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;->isGzipCompressing()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 122
    :goto_f
    return v0
.end method

.method protected abstract isResponseGzipCompressed(Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;)Z
.end method

.method protected newReqWriter(Lorg/apache/xmlrpc/XmlRpcRequest;)Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$ReqWriter;
    .registers 4
    .param p1, "pRequest"    # Lorg/apache/xmlrpc/XmlRpcRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;,
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 136
    new-instance v0, Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$ReqWriterImpl;

    invoke-direct {v0, p0, p1}, Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$ReqWriterImpl;-><init>(Lorg/apache/xmlrpc/client/XmlRpcStreamTransport;Lorg/apache/xmlrpc/XmlRpcRequest;)V

    .line 137
    .local v0, "reqWriter":Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$ReqWriter;
    invoke-interface {p1}, Lorg/apache/xmlrpc/XmlRpcRequest;->getConfig()Lorg/apache/xmlrpc/XmlRpcRequestConfig;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;

    invoke-virtual {p0, v1}, Lorg/apache/xmlrpc/client/XmlRpcStreamTransport;->isCompressingRequest(Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 138
    new-instance v1, Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$GzipReqWriter;

    invoke-direct {v1, p0, v0}, Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$GzipReqWriter;-><init>(Lorg/apache/xmlrpc/client/XmlRpcStreamTransport;Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$ReqWriter;)V

    move-object v0, v1

    .line 140
    :cond_17
    return-object v0
.end method

.method protected newXMLReader()Lorg/xml/sax/XMLReader;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    .line 176
    invoke-static {}, Lorg/apache/xmlrpc/util/SAXParsers;->newXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    return-object v0
.end method

.method protected readResponse(Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 10
    .param p1, "pConfig"    # Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;
    .param p2, "pStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    .line 180
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 181
    .local v0, "isource":Lorg/xml/sax/InputSource;
    invoke-virtual {p0}, Lorg/apache/xmlrpc/client/XmlRpcStreamTransport;->newXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v1

    .line 184
    .local v1, "xr":Lorg/xml/sax/XMLReader;
    :try_start_9
    new-instance v2, Lorg/apache/xmlrpc/parser/XmlRpcResponseParser;

    invoke-virtual {p0}, Lorg/apache/xmlrpc/client/XmlRpcStreamTransport;->getClient()Lorg/apache/xmlrpc/client/XmlRpcClient;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/xmlrpc/client/XmlRpcClient;->getTypeFactory()Lorg/apache/xmlrpc/common/TypeFactory;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lorg/apache/xmlrpc/parser/XmlRpcResponseParser;-><init>(Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;Lorg/apache/xmlrpc/common/TypeFactory;)V

    .line 185
    .local v2, "xp":Lorg/apache/xmlrpc/parser/XmlRpcResponseParser;
    invoke-interface {v1, v2}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 186
    invoke-interface {v1, v0}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_1c
    .catch Lorg/xml/sax/SAXException; {:try_start_9 .. :try_end_1c} :catch_77
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_1c} :catch_5b

    .line 191
    nop

    .line 190
    nop

    .line 192
    invoke-virtual {v2}, Lorg/apache/xmlrpc/parser/XmlRpcResponseParser;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 193
    invoke-virtual {v2}, Lorg/apache/xmlrpc/parser/XmlRpcResponseParser;->getResult()Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 195
    :cond_29
    invoke-virtual {v2}, Lorg/apache/xmlrpc/parser/XmlRpcResponseParser;->getErrorCause()Ljava/lang/Throwable;

    move-result-object v3

    .line 196
    .local v3, "t":Ljava/lang/Throwable;
    if-eqz v3, :cond_4d

    .line 199
    instance-of v4, v3, Lorg/apache/xmlrpc/XmlRpcException;

    if-nez v4, :cond_49

    .line 202
    instance-of v4, v3, Ljava/lang/RuntimeException;

    if-eqz v4, :cond_3b

    .line 203
    move-object v4, v3

    check-cast v4, Ljava/lang/RuntimeException;

    throw v4

    .line 205
    :cond_3b
    new-instance v4, Lorg/apache/xmlrpc/XmlRpcException;

    invoke-virtual {v2}, Lorg/apache/xmlrpc/parser/XmlRpcResponseParser;->getErrorCode()I

    move-result v5

    invoke-virtual {v2}, Lorg/apache/xmlrpc/parser/XmlRpcResponseParser;->getErrorMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6, v3}, Lorg/apache/xmlrpc/XmlRpcException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 200
    :cond_49
    move-object v4, v3

    check-cast v4, Lorg/apache/xmlrpc/XmlRpcException;

    throw v4

    .line 197
    :cond_4d
    new-instance v4, Lorg/apache/xmlrpc/XmlRpcException;

    invoke-virtual {v2}, Lorg/apache/xmlrpc/parser/XmlRpcResponseParser;->getErrorCode()I

    move-result v5

    invoke-virtual {v2}, Lorg/apache/xmlrpc/parser/XmlRpcResponseParser;->getErrorMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/xmlrpc/XmlRpcException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 189
    .end local v2    # "xp":Lorg/apache/xmlrpc/parser/XmlRpcResponseParser;
    .end local v3    # "t":Ljava/lang/Throwable;
    :catch_5b
    move-exception v2

    .line 190
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Lorg/apache/xmlrpc/client/XmlRpcClientException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read server\'s response: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/apache/xmlrpc/client/XmlRpcClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 187
    .end local v2    # "e":Ljava/io/IOException;
    :catch_77
    move-exception v2

    .line 188
    .local v2, "e":Lorg/xml/sax/SAXException;
    new-instance v3, Lorg/apache/xmlrpc/client/XmlRpcClientException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to parse server\'s response: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/apache/xmlrpc/client/XmlRpcClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public sendRequest(Lorg/apache/xmlrpc/XmlRpcRequest;)Ljava/lang/Object;
    .registers 9
    .param p1, "pRequest"    # Lorg/apache/xmlrpc/XmlRpcRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    .line 147
    invoke-interface {p1}, Lorg/apache/xmlrpc/XmlRpcRequest;->getConfig()Lorg/apache/xmlrpc/XmlRpcRequestConfig;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;

    .line 148
    .local v0, "config":Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;
    const/4 v1, 0x0

    .line 150
    .local v1, "closed":Z
    :try_start_7
    invoke-virtual {p0, p1}, Lorg/apache/xmlrpc/client/XmlRpcStreamTransport;->newReqWriter(Lorg/apache/xmlrpc/XmlRpcRequest;)Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$ReqWriter;

    move-result-object v2

    .line 151
    .local v2, "reqWriter":Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$ReqWriter;
    invoke-virtual {p0, v2}, Lorg/apache/xmlrpc/client/XmlRpcStreamTransport;->writeRequest(Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$ReqWriter;)V

    .line 152
    invoke-virtual {p0}, Lorg/apache/xmlrpc/client/XmlRpcStreamTransport;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 153
    .local v3, "istream":Ljava/io/InputStream;
    invoke-virtual {p0, v0}, Lorg/apache/xmlrpc/client/XmlRpcStreamTransport;->isResponseGzipCompressed(Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 154
    new-instance v4, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v4, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v3, v4

    .line 156
    :cond_1e
    invoke-virtual {p0, v0, v3}, Lorg/apache/xmlrpc/client/XmlRpcStreamTransport;->readResponse(Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v4

    .line 157
    .local v4, "result":Ljava/lang/Object;
    const/4 v1, 0x1

    .line 158
    invoke-virtual {p0}, Lorg/apache/xmlrpc/client/XmlRpcStreamTransport;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_26} :catch_5b
    .catch Lorg/xml/sax/SAXException; {:try_start_7 .. :try_end_26} :catch_31
    .catchall {:try_start_7 .. :try_end_26} :catchall_2f

    .line 159
    nop

    .line 171
    if-nez v1, :cond_2e

    :try_start_29
    invoke-virtual {p0}, Lorg/apache/xmlrpc/client/XmlRpcStreamTransport;->close()V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_2c} :catch_2d

    goto :goto_2e

    :catch_2d
    move-exception v5

    .line 159
    :cond_2e
    :goto_2e
    return-object v4

    .line 171
    .end local v2    # "reqWriter":Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$ReqWriter;
    .end local v3    # "istream":Ljava/io/InputStream;
    .end local v4    # "result":Ljava/lang/Object;
    :catchall_2f
    move-exception v2

    goto :goto_77

    .line 163
    :catch_31
    move-exception v2

    .line 164
    .local v2, "e":Lorg/xml/sax/SAXException;
    :try_start_32
    invoke-virtual {v2}, Lorg/xml/sax/SAXException;->getException()Ljava/lang/Exception;

    move-result-object v3

    .line 165
    .local v3, "ex":Ljava/lang/Exception;
    if-eqz v3, :cond_40

    instance-of v4, v3, Lorg/apache/xmlrpc/XmlRpcException;

    if-eqz v4, :cond_40

    .line 166
    move-object v4, v3

    check-cast v4, Lorg/apache/xmlrpc/XmlRpcException;

    throw v4

    .line 168
    :cond_40
    new-instance v4, Lorg/apache/xmlrpc/XmlRpcException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to generate request: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v2}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lorg/apache/xmlrpc/XmlRpcException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 160
    .end local v2    # "e":Lorg/xml/sax/SAXException;
    .end local v3    # "ex":Ljava/lang/Exception;
    :catch_5b
    move-exception v2

    .line 161
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Lorg/apache/xmlrpc/XmlRpcException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read server\'s response: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/apache/xmlrpc/XmlRpcException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_77
    .catchall {:try_start_32 .. :try_end_77} :catchall_2f

    .line 171
    .end local v2    # "e":Ljava/io/IOException;
    :goto_77
    if-nez v1, :cond_7e

    :try_start_79
    invoke-virtual {p0}, Lorg/apache/xmlrpc/client/XmlRpcStreamTransport;->close()V
    :try_end_7c
    .catch Ljava/lang/Throwable; {:try_start_79 .. :try_end_7c} :catch_7d

    goto :goto_7e

    :catch_7d
    move-exception v3

    .line 172
    :cond_7e
    :goto_7e
    throw v2
.end method

.method protected abstract writeRequest(Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$ReqWriter;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;,
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method
