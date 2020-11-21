.class public abstract Lorg/apache/xmlrpc/server/XmlRpcStreamServer;
.super Lorg/apache/xmlrpc/server/XmlRpcServer;
.source "XmlRpcStreamServer.java"

# interfaces
.implements Lorg/apache/xmlrpc/common/XmlRpcStreamRequestProcessor;


# static fields
.field private static final log:Lorg/apache/commons/logging/Log;

.field private static final theErrorLogger:Lorg/apache/xmlrpc/server/XmlRpcErrorLogger;


# instance fields
.field private errorLogger:Lorg/apache/xmlrpc/server/XmlRpcErrorLogger;

.field private writerFactory:Lorg/apache/xmlrpc/serializer/XmlWriterFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 56
    const-class v0, Lorg/apache/xmlrpc/server/XmlRpcStreamServer;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlrpc/server/XmlRpcStreamServer;->log:Lorg/apache/commons/logging/Log;

    .line 58
    new-instance v0, Lorg/apache/xmlrpc/server/XmlRpcErrorLogger;

    invoke-direct {v0}, Lorg/apache/xmlrpc/server/XmlRpcErrorLogger;-><init>()V

    sput-object v0, Lorg/apache/xmlrpc/server/XmlRpcStreamServer;->theErrorLogger:Lorg/apache/xmlrpc/server/XmlRpcErrorLogger;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 54
    invoke-direct {p0}, Lorg/apache/xmlrpc/server/XmlRpcServer;-><init>()V

    .line 57
    new-instance v0, Lorg/apache/xmlrpc/serializer/DefaultXMLWriterFactory;

    invoke-direct {v0}, Lorg/apache/xmlrpc/serializer/DefaultXMLWriterFactory;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlrpc/server/XmlRpcStreamServer;->writerFactory:Lorg/apache/xmlrpc/serializer/XmlWriterFactory;

    .line 59
    sget-object v0, Lorg/apache/xmlrpc/server/XmlRpcStreamServer;->theErrorLogger:Lorg/apache/xmlrpc/server/XmlRpcErrorLogger;

    iput-object v0, p0, Lorg/apache/xmlrpc/server/XmlRpcStreamServer;->errorLogger:Lorg/apache/xmlrpc/server/XmlRpcErrorLogger;

    return-void
.end method

.method private executeMulticall(Lorg/apache/xmlrpc/XmlRpcRequest;)[Ljava/lang/Object;
    .registers 14
    .param p1, "pRequest"    # Lorg/apache/xmlrpc/XmlRpcRequest;

    .line 262
    invoke-interface {p1}, Lorg/apache/xmlrpc/XmlRpcRequest;->getParameterCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_9

    .line 263
    return-object v1

    .line 265
    :cond_9
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/apache/xmlrpc/XmlRpcRequest;->getParameter(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    .line 266
    .local v3, "reqs":[Ljava/lang/Object;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 267
    .local v4, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-interface {p1}, Lorg/apache/xmlrpc/XmlRpcRequest;->getConfig()Lorg/apache/xmlrpc/XmlRpcRequestConfig;

    move-result-object v5

    .line 269
    .local v5, "pConfig":Lorg/apache/xmlrpc/XmlRpcRequestConfig;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1a
    array-length v7, v3

    if-ge v6, v7, :cond_4a

    .line 270
    move-object v7, v1

    .line 273
    .local v7, "result":Ljava/lang/Object;
    :try_start_1e
    aget-object v8, v3, v6

    check-cast v8, Ljava/util/HashMap;

    .line 274
    .local v8, "req":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v9, "methodName"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 275
    .local v9, "methodName":Ljava/lang/String;
    const-string v10, "params"

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/Object;

    check-cast v10, [Ljava/lang/Object;

    .line 276
    .local v10, "params":[Ljava/lang/Object;
    new-instance v11, Lorg/apache/xmlrpc/server/XmlRpcStreamServer$2;

    invoke-direct {v11, p0, v5, v9, v10}, Lorg/apache/xmlrpc/server/XmlRpcStreamServer$2;-><init>(Lorg/apache/xmlrpc/server/XmlRpcStreamServer;Lorg/apache/xmlrpc/XmlRpcRequestConfig;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v11}, Lorg/apache/xmlrpc/server/XmlRpcStreamServer;->execute(Lorg/apache/xmlrpc/XmlRpcRequest;)Ljava/lang/Object;

    move-result-object v11
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_3d} :catch_3f

    move-object v7, v11

    .line 301
    .end local v8    # "req":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v9    # "methodName":Ljava/lang/String;
    .end local v10    # "params":[Ljava/lang/Object;
    goto :goto_44

    .line 297
    :catch_3f
    move-exception v8

    .line 298
    .local v8, "t":Ljava/lang/Throwable;
    invoke-virtual {p0, v8}, Lorg/apache/xmlrpc/server/XmlRpcStreamServer;->logError(Ljava/lang/Throwable;)V

    .line 300
    const/4 v7, 0x0

    .line 302
    .end local v8    # "t":Ljava/lang/Throwable;
    :goto_44
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    .end local v7    # "result":Ljava/lang/Object;
    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    .line 304
    .end local v6    # "i":I
    :cond_4a
    new-array v1, v2, [Ljava/lang/Object;

    aput-object v4, v1, v0

    move-object v0, v1

    .line 305
    .local v0, "retobj":[Ljava/lang/Object;
    return-object v0
.end method


# virtual methods
.method protected convertThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 2
    .param p1, "pError"    # Ljava/lang/Throwable;

    .line 107
    return-object p1
.end method

.method public execute(Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;Lorg/apache/xmlrpc/common/ServerStreamConnection;)V
    .registers 12
    .param p1, "pConfig"    # Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;
    .param p2, "pConnection"    # Lorg/apache/xmlrpc/common/ServerStreamConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    .line 194
    sget-object v0, Lorg/apache/xmlrpc/server/XmlRpcStreamServer;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "execute: ->"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 198
    const/4 v0, 0x0

    .line 200
    .local v0, "istream":Ljava/io/InputStream;
    :try_start_8
    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlrpc/server/XmlRpcStreamServer;->getInputStream(Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;Lorg/apache/xmlrpc/common/ServerStreamConnection;)Ljava/io/InputStream;

    move-result-object v1

    move-object v0, v1

    .line 201
    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlrpc/server/XmlRpcStreamServer;->getRequest(Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;Ljava/io/InputStream;)Lorg/apache/xmlrpc/XmlRpcRequest;

    move-result-object v1

    .line 202
    .local v1, "request":Lorg/apache/xmlrpc/XmlRpcRequest;
    invoke-interface {v1}, Lorg/apache/xmlrpc/XmlRpcRequest;->getMethodName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "system.multicall"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 203
    invoke-direct {p0, v1}, Lorg/apache/xmlrpc/server/XmlRpcStreamServer;->executeMulticall(Lorg/apache/xmlrpc/XmlRpcRequest;)[Ljava/lang/Object;

    move-result-object v2

    goto :goto_26

    .line 205
    :cond_22
    invoke-virtual {p0, v1}, Lorg/apache/xmlrpc/server/XmlRpcStreamServer;->execute(Lorg/apache/xmlrpc/XmlRpcRequest;)Ljava/lang/Object;

    move-result-object v2

    .line 207
    .local v2, "result":Ljava/lang/Object;
    :goto_26
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 208
    const/4 v0, 0x0

    .line 209
    const/4 v3, 0x0

    .line 210
    .local v3, "error":Ljava/lang/Throwable;
    sget-object v4, Lorg/apache/xmlrpc/server/XmlRpcStreamServer;->log:Lorg/apache/commons/logging/Log;

    const-string v5, "execute: Request performed successfully"

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_32} :catch_3d
    .catchall {:try_start_8 .. :try_end_32} :catchall_3a

    .line 216
    .end local v1    # "request":Lorg/apache/xmlrpc/XmlRpcRequest;
    if-eqz v0, :cond_46

    :goto_34
    :try_start_34
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_37} :catch_38
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_ba
    .catchall {:try_start_34 .. :try_end_37} :catchall_b8

    goto :goto_46

    :catch_38
    move-exception v1

    goto :goto_46

    .end local v2    # "result":Ljava/lang/Object;
    .end local v3    # "error":Ljava/lang/Throwable;
    :catchall_3a
    move-exception v1

    goto/16 :goto_b2

    .line 211
    :catch_3d
    move-exception v1

    .line 212
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_3e
    invoke-virtual {p0, v1}, Lorg/apache/xmlrpc/server/XmlRpcStreamServer;->logError(Ljava/lang/Throwable;)V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_3a

    .line 213
    const/4 v2, 0x0

    .line 214
    .restart local v2    # "result":Ljava/lang/Object;
    move-object v3, v1

    .line 216
    .end local v1    # "t":Ljava/lang/Throwable;
    .restart local v3    # "error":Ljava/lang/Throwable;
    if-eqz v0, :cond_46

    goto :goto_34

    .line 217
    :cond_46
    :goto_46
    move-object v1, v2

    .end local v2    # "result":Ljava/lang/Object;
    .local v1, "result":Ljava/lang/Object;
    move-object v2, v3

    .line 218
    .end local v3    # "error":Ljava/lang/Throwable;
    .local v2, "error":Ljava/lang/Throwable;
    :try_start_48
    invoke-virtual {p0, p1}, Lorg/apache/xmlrpc/server/XmlRpcStreamServer;->isContentLengthRequired(Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;)Z

    move-result v3

    .line 221
    .local v3, "contentLengthRequired":Z
    if-eqz v3, :cond_55

    .line 222
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 223
    .local v4, "baos":Ljava/io/ByteArrayOutputStream;
    move-object v5, v4

    goto :goto_5a

    .line 225
    .end local v4    # "baos":Ljava/io/ByteArrayOutputStream;
    :cond_55
    const/4 v4, 0x0

    .line 226
    .restart local v4    # "baos":Ljava/io/ByteArrayOutputStream;
    invoke-interface {p2}, Lorg/apache/xmlrpc/common/ServerStreamConnection;->newOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    .line 228
    .local v5, "ostream":Ljava/io/OutputStream;
    :goto_5a
    invoke-virtual {p0, p2, p1, v5}, Lorg/apache/xmlrpc/server/XmlRpcStreamServer;->getOutputStream(Lorg/apache/xmlrpc/common/ServerStreamConnection;Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v6
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_5e} :catch_ba
    .catchall {:try_start_48 .. :try_end_5e} :catchall_b8

    move-object v5, v6

    .line 230
    if-nez v2, :cond_67

    .line 231
    :try_start_61
    invoke-virtual {p0, p1, v5, v1}, Lorg/apache/xmlrpc/server/XmlRpcStreamServer;->writeResponse(Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;Ljava/io/OutputStream;Ljava/lang/Object;)V

    goto :goto_6a

    .line 238
    :catchall_65
    move-exception v6

    goto :goto_aa

    .line 233
    :cond_67
    invoke-virtual {p0, p1, v5, v2}, Lorg/apache/xmlrpc/server/XmlRpcStreamServer;->writeError(Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;Ljava/io/OutputStream;Ljava/lang/Throwable;)V

    .line 235
    :goto_6a
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_6d
    .catchall {:try_start_61 .. :try_end_6d} :catchall_65

    .line 236
    const/4 v5, 0x0

    .line 238
    if-eqz v5, :cond_75

    :try_start_70
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_73
    .catch Ljava/lang/Throwable; {:try_start_70 .. :try_end_73} :catch_74
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_ba
    .catchall {:try_start_70 .. :try_end_73} :catchall_b8

    goto :goto_75

    :catch_74
    move-exception v6

    .line 240
    :cond_75
    :goto_75
    if-eqz v4, :cond_97

    .line 241
    :try_start_77
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v6

    invoke-virtual {p0, p1, p2, v6}, Lorg/apache/xmlrpc/server/XmlRpcStreamServer;->getOutputStream(Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;Lorg/apache/xmlrpc/common/ServerStreamConnection;I)Ljava/io/OutputStream;

    move-result-object v6
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7f} :catch_ba
    .catchall {:try_start_77 .. :try_end_7f} :catchall_b8

    .line 243
    .local v6, "dest":Ljava/io/OutputStream;
    :try_start_7f
    invoke-virtual {v4, v6}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 244
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_85
    .catchall {:try_start_7f .. :try_end_85} :catchall_8e

    .line 245
    const/4 v6, 0x0

    .line 247
    if-eqz v6, :cond_97

    :try_start_88
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_8b
    .catch Ljava/lang/Throwable; {:try_start_88 .. :try_end_8b} :catch_8c
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_8b} :catch_ba
    .catchall {:try_start_88 .. :try_end_8b} :catchall_b8

    goto :goto_97

    :catch_8c
    move-exception v7

    goto :goto_97

    :catchall_8e
    move-exception v7

    if-eqz v6, :cond_96

    :try_start_91
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_94
    .catch Ljava/lang/Throwable; {:try_start_91 .. :try_end_94} :catch_95
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_94} :catch_ba
    .catchall {:try_start_91 .. :try_end_94} :catchall_b8

    goto :goto_96

    :catch_95
    move-exception v8

    .line 248
    :cond_96
    :goto_96
    :try_start_96
    throw v7

    .line 250
    .end local v6    # "dest":Ljava/io/OutputStream;
    :cond_97
    :goto_97
    invoke-interface {p2}, Lorg/apache/xmlrpc/common/ServerStreamConnection;->close()V
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_9a} :catch_ba
    .catchall {:try_start_96 .. :try_end_9a} :catchall_b8

    .line 251
    const/4 p2, 0x0

    .line 256
    .end local v0    # "istream":Ljava/io/InputStream;
    .end local v1    # "result":Ljava/lang/Object;
    .end local v2    # "error":Ljava/lang/Throwable;
    .end local v3    # "contentLengthRequired":Z
    .end local v4    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "ostream":Ljava/io/OutputStream;
    if-eqz p2, :cond_a2

    :try_start_9d
    invoke-interface {p2}, Lorg/apache/xmlrpc/common/ServerStreamConnection;->close()V
    :try_end_a0
    .catch Ljava/lang/Throwable; {:try_start_9d .. :try_end_a0} :catch_a1

    goto :goto_a2

    :catch_a1
    move-exception v0

    .line 258
    :cond_a2
    :goto_a2
    sget-object v0, Lorg/apache/xmlrpc/server/XmlRpcStreamServer;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "execute: <-"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 259
    return-void

    .line 238
    .restart local v0    # "istream":Ljava/io/InputStream;
    .restart local v1    # "result":Ljava/lang/Object;
    .restart local v2    # "error":Ljava/lang/Throwable;
    .restart local v3    # "contentLengthRequired":Z
    .restart local v4    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "ostream":Ljava/io/OutputStream;
    :goto_aa
    if-eqz v5, :cond_b1

    :try_start_ac
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_af
    .catch Ljava/lang/Throwable; {:try_start_ac .. :try_end_af} :catch_b0
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_af} :catch_ba
    .catchall {:try_start_ac .. :try_end_af} :catchall_b8

    goto :goto_b1

    :catch_b0
    move-exception v7

    .line 239
    :cond_b1
    :goto_b1
    :try_start_b1
    throw v6
    :try_end_b2
    .catch Ljava/io/IOException; {:try_start_b1 .. :try_end_b2} :catch_ba
    .catchall {:try_start_b1 .. :try_end_b2} :catchall_b8

    .line 216
    .end local v1    # "result":Ljava/lang/Object;
    .end local v2    # "error":Ljava/lang/Throwable;
    .end local v3    # "contentLengthRequired":Z
    .end local v4    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "ostream":Ljava/io/OutputStream;
    :goto_b2
    if-eqz v0, :cond_bd

    :try_start_b4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_b7
    .catch Ljava/lang/Throwable; {:try_start_b4 .. :try_end_b7} :catch_bc
    .catch Ljava/io/IOException; {:try_start_b4 .. :try_end_b7} :catch_ba
    .catchall {:try_start_b4 .. :try_end_b7} :catchall_b8

    goto :goto_bd

    .line 256
    .end local v0    # "istream":Ljava/io/InputStream;
    :catchall_b8
    move-exception v0

    goto :goto_da

    .line 252
    :catch_ba
    move-exception v0

    goto :goto_be

    .line 216
    .restart local v0    # "istream":Ljava/io/InputStream;
    :catch_bc
    move-exception v2

    .line 217
    :cond_bd
    :goto_bd
    :try_start_bd
    throw v1
    :try_end_be
    .catch Ljava/io/IOException; {:try_start_bd .. :try_end_be} :catch_ba
    .catchall {:try_start_bd .. :try_end_be} :catchall_b8

    .line 252
    .end local v0    # "istream":Ljava/io/InputStream;
    :goto_be
    nop

    .line 253
    .local v0, "e":Ljava/io/IOException;
    :try_start_bf
    new-instance v1, Lorg/apache/xmlrpc/XmlRpcException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "I/O error while processing request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/xmlrpc/XmlRpcException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_da
    .catchall {:try_start_bf .. :try_end_da} :catchall_b8

    .line 256
    .end local v0    # "e":Ljava/io/IOException;
    :goto_da
    if-eqz p2, :cond_e1

    :try_start_dc
    invoke-interface {p2}, Lorg/apache/xmlrpc/common/ServerStreamConnection;->close()V
    :try_end_df
    .catch Ljava/lang/Throwable; {:try_start_dc .. :try_end_df} :catch_e0

    goto :goto_e1

    :catch_e0
    move-exception v1

    .line 257
    :cond_e1
    :goto_e1
    throw v0
.end method

.method public getErrorLogger()Lorg/apache/xmlrpc/server/XmlRpcErrorLogger;
    .registers 2

    .line 317
    iget-object v0, p0, Lorg/apache/xmlrpc/server/XmlRpcStreamServer;->errorLogger:Lorg/apache/xmlrpc/server/XmlRpcErrorLogger;

    return-object v0
.end method

.method protected getInputStream(Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;Lorg/apache/xmlrpc/common/ServerStreamConnection;)Ljava/io/InputStream;
    .registers 5
    .param p1, "pConfig"    # Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;
    .param p2, "pConnection"    # Lorg/apache/xmlrpc/common/ServerStreamConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    invoke-interface {p2}, Lorg/apache/xmlrpc/common/ServerStreamConnection;->newInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 147
    .local v0, "istream":Ljava/io/InputStream;
    invoke-interface {p1}, Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;->isEnabledForExtensions()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {p1}, Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;->isGzipCompressing()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 148
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v1

    .line 150
    :cond_16
    return-object v0
.end method

.method protected getOutputStream(Lorg/apache/xmlrpc/common/ServerStreamConnection;Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .registers 5
    .param p1, "pConnection"    # Lorg/apache/xmlrpc/common/ServerStreamConnection;
    .param p2, "pConfig"    # Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;
    .param p3, "pStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    invoke-interface {p2}, Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;->isEnabledForExtensions()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {p2}, Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;->isGzipRequesting()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 160
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v0, p3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0

    .line 162
    :cond_12
    return-object p3
.end method

.method protected getOutputStream(Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;Lorg/apache/xmlrpc/common/ServerStreamConnection;I)Ljava/io/OutputStream;
    .registers 5
    .param p1, "pConfig"    # Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;
    .param p2, "pConnection"    # Lorg/apache/xmlrpc/common/ServerStreamConnection;
    .param p3, "pSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    invoke-interface {p2}, Lorg/apache/xmlrpc/common/ServerStreamConnection;->newOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method protected getRequest(Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;Ljava/io/InputStream;)Lorg/apache/xmlrpc/XmlRpcRequest;
    .registers 10
    .param p1, "pConfig"    # Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;
    .param p2, "pStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    .line 63
    new-instance v0, Lorg/apache/xmlrpc/parser/XmlRpcRequestParser;

    invoke-virtual {p0}, Lorg/apache/xmlrpc/server/XmlRpcStreamServer;->getTypeFactory()Lorg/apache/xmlrpc/common/TypeFactory;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/apache/xmlrpc/parser/XmlRpcRequestParser;-><init>(Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;Lorg/apache/xmlrpc/common/TypeFactory;)V

    .line 64
    .local v0, "parser":Lorg/apache/xmlrpc/parser/XmlRpcRequestParser;
    invoke-static {}, Lorg/apache/xmlrpc/util/SAXParsers;->newXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v1

    .line 65
    .local v1, "xr":Lorg/xml/sax/XMLReader;
    invoke-interface {v1, v0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 67
    :try_start_10
    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-direct {v2, p2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v1, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_18
    .catch Lorg/xml/sax/SAXException; {:try_start_10 .. :try_end_18} :catch_3f
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_18} :catch_23

    .line 76
    nop

    .line 77
    invoke-virtual {v0}, Lorg/apache/xmlrpc/parser/XmlRpcRequestParser;->getParams()Ljava/util/List;

    move-result-object v2

    .line 78
    .local v2, "params":Ljava/util/List;
    new-instance v3, Lorg/apache/xmlrpc/server/XmlRpcStreamServer$1;

    invoke-direct {v3, p0, p1, v0, v2}, Lorg/apache/xmlrpc/server/XmlRpcStreamServer$1;-><init>(Lorg/apache/xmlrpc/server/XmlRpcStreamServer;Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;Lorg/apache/xmlrpc/parser/XmlRpcRequestParser;Ljava/util/List;)V

    return-object v3

    .line 74
    .end local v2    # "params":Ljava/util/List;
    :catch_23
    move-exception v2

    .line 75
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Lorg/apache/xmlrpc/XmlRpcException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read XML-RPC request: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/apache/xmlrpc/XmlRpcException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 68
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3f
    move-exception v2

    .line 69
    .local v2, "e":Lorg/xml/sax/SAXException;
    invoke-virtual {v2}, Lorg/xml/sax/SAXException;->getException()Ljava/lang/Exception;

    move-result-object v3

    .line 70
    .local v3, "ex":Ljava/lang/Exception;
    if-eqz v3, :cond_4e

    instance-of v4, v3, Lorg/apache/xmlrpc/XmlRpcException;

    if-eqz v4, :cond_4e

    .line 71
    move-object v4, v3

    check-cast v4, Lorg/apache/xmlrpc/XmlRpcException;

    throw v4

    .line 73
    :cond_4e
    new-instance v4, Lorg/apache/xmlrpc/XmlRpcException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to parse XML-RPC request: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lorg/apache/xmlrpc/XmlRpcException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public getXMLWriterFactory()Lorg/apache/xmlrpc/serializer/XmlWriterFactory;
    .registers 2

    .line 141
    iget-object v0, p0, Lorg/apache/xmlrpc/server/XmlRpcStreamServer;->writerFactory:Lorg/apache/xmlrpc/serializer/XmlWriterFactory;

    return-object v0
.end method

.method protected getXmlRpcWriter(Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;Ljava/io/OutputStream;)Lorg/apache/xmlrpc/serializer/XmlRpcWriter;
    .registers 6
    .param p1, "pConfig"    # Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;
    .param p2, "pStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    .line 89
    invoke-virtual {p0}, Lorg/apache/xmlrpc/server/XmlRpcStreamServer;->getXMLWriterFactory()Lorg/apache/xmlrpc/serializer/XmlWriterFactory;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/xmlrpc/serializer/XmlWriterFactory;->getXmlWriter(Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;Ljava/io/OutputStream;)Lorg/xml/sax/ContentHandler;

    move-result-object v0

    .line 90
    .local v0, "w":Lorg/xml/sax/ContentHandler;
    new-instance v1, Lorg/apache/xmlrpc/serializer/XmlRpcWriter;

    invoke-virtual {p0}, Lorg/apache/xmlrpc/server/XmlRpcStreamServer;->getTypeFactory()Lorg/apache/xmlrpc/common/TypeFactory;

    move-result-object v2

    invoke-direct {v1, p1, v0, v2}, Lorg/apache/xmlrpc/serializer/XmlRpcWriter;-><init>(Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;Lorg/xml/sax/ContentHandler;Lorg/apache/xmlrpc/common/TypeFactory;)V

    return-object v1
.end method

.method protected isContentLengthRequired(Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;)Z
    .registers 3
    .param p1, "pConfig"    # Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;

    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method protected logError(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 309
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    :cond_f
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, "msg":Ljava/lang/String;
    :goto_13
    iget-object v1, p0, Lorg/apache/xmlrpc/server/XmlRpcStreamServer;->errorLogger:Lorg/apache/xmlrpc/server/XmlRpcErrorLogger;

    invoke-virtual {v1, v0, p1}, Lorg/apache/xmlrpc/server/XmlRpcErrorLogger;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 311
    return-void
.end method

.method public setErrorLogger(Lorg/apache/xmlrpc/server/XmlRpcErrorLogger;)V
    .registers 2
    .param p1, "pErrorLogger"    # Lorg/apache/xmlrpc/server/XmlRpcErrorLogger;

    .line 324
    iput-object p1, p0, Lorg/apache/xmlrpc/server/XmlRpcStreamServer;->errorLogger:Lorg/apache/xmlrpc/server/XmlRpcErrorLogger;

    .line 325
    return-void
.end method

.method public setXMLWriterFactory(Lorg/apache/xmlrpc/serializer/XmlWriterFactory;)V
    .registers 2
    .param p1, "pFactory"    # Lorg/apache/xmlrpc/serializer/XmlWriterFactory;

    .line 134
    iput-object p1, p0, Lorg/apache/xmlrpc/server/XmlRpcStreamServer;->writerFactory:Lorg/apache/xmlrpc/serializer/XmlWriterFactory;

    .line 135
    return-void
.end method

.method protected writeError(Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;Ljava/io/OutputStream;Ljava/lang/Throwable;)V
    .registers 11
    .param p1, "pConfig"    # Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;
    .param p2, "pStream"    # Ljava/io/OutputStream;
    .param p3, "pError"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    .line 113
    invoke-virtual {p0, p3}, Lorg/apache/xmlrpc/server/XmlRpcStreamServer;->convertThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    .line 116
    .local v0, "error":Ljava/lang/Throwable;
    instance-of v1, v0, Lorg/apache/xmlrpc/XmlRpcException;

    if-eqz v1, :cond_e

    .line 117
    move-object v1, v0

    check-cast v1, Lorg/apache/xmlrpc/XmlRpcException;

    .line 118
    .local v1, "ex":Lorg/apache/xmlrpc/XmlRpcException;
    iget v1, v1, Lorg/apache/xmlrpc/XmlRpcException;->code:I

    .line 119
    .local v1, "code":I
    goto :goto_f

    .line 120
    .end local v1    # "code":I
    :cond_e
    const/4 v1, 0x0

    .line 122
    .restart local v1    # "code":I
    :goto_f
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 124
    .local v2, "message":Ljava/lang/String;
    :try_start_13
    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlrpc/server/XmlRpcStreamServer;->getXmlRpcWriter(Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;Ljava/io/OutputStream;)Lorg/apache/xmlrpc/serializer/XmlRpcWriter;

    move-result-object v3

    invoke-virtual {v3, p1, v1, v2, v0}, Lorg/apache/xmlrpc/serializer/XmlRpcWriter;->write(Lorg/apache/xmlrpc/XmlRpcRequestConfig;ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1a
    .catch Lorg/xml/sax/SAXException; {:try_start_13 .. :try_end_1a} :catch_1c

    .line 127
    nop

    .line 128
    return-void

    .line 125
    :catch_1c
    move-exception v3

    .line 126
    .local v3, "e":Lorg/xml/sax/SAXException;
    new-instance v4, Lorg/apache/xmlrpc/XmlRpcException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to write XML-RPC response: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lorg/apache/xmlrpc/XmlRpcException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method protected writeResponse(Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;Ljava/io/OutputStream;Ljava/lang/Object;)V
    .registers 8
    .param p1, "pConfig"    # Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;
    .param p2, "pStream"    # Ljava/io/OutputStream;
    .param p3, "pResult"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    .line 96
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlrpc/server/XmlRpcStreamServer;->getXmlRpcWriter(Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;Ljava/io/OutputStream;)Lorg/apache/xmlrpc/serializer/XmlRpcWriter;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lorg/apache/xmlrpc/serializer/XmlRpcWriter;->write(Lorg/apache/xmlrpc/XmlRpcRequestConfig;Ljava/lang/Object;)V
    :try_end_7
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_7} :catch_9

    .line 99
    nop

    .line 100
    return-void

    .line 97
    :catch_9
    move-exception v0

    .line 98
    .local v0, "e":Lorg/xml/sax/SAXException;
    new-instance v1, Lorg/apache/xmlrpc/XmlRpcException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to write XML-RPC response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/xmlrpc/XmlRpcException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
