.class public Lorg/apache/xmlrpc/client/XmlRpcLocalTransport;
.super Lorg/apache/xmlrpc/client/XmlRpcTransportImpl;
.source "XmlRpcLocalTransport.java"


# direct methods
.method public constructor <init>(Lorg/apache/xmlrpc/client/XmlRpcClient;)V
    .registers 2
    .param p1, "pClient"    # Lorg/apache/xmlrpc/client/XmlRpcClient;

    .line 41
    invoke-direct {p0, p1}, Lorg/apache/xmlrpc/client/XmlRpcTransportImpl;-><init>(Lorg/apache/xmlrpc/client/XmlRpcClient;)V

    .line 42
    return-void
.end method

.method private isExtensionType(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "pObject"    # Ljava/lang/Object;

    .line 45
    const/4 v0, 0x1

    if-nez p1, :cond_4

    .line 46
    return v0

    .line 47
    :cond_4
    instance-of v1, p1, [Ljava/lang/Object;

    const/4 v2, 0x0

    if-eqz v1, :cond_1d

    .line 48
    move-object v1, p1

    check-cast v1, [Ljava/lang/Object;

    .line 49
    .local v1, "objects":[Ljava/lang/Object;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_d
    array-length v4, v1

    if-ge v3, v4, :cond_1c

    .line 50
    aget-object v4, v1, v3

    invoke-direct {p0, v4}, Lorg/apache/xmlrpc/client/XmlRpcLocalTransport;->isExtensionType(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 51
    return v0

    .line 49
    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 54
    .end local v3    # "i":I
    :cond_1c
    return v2

    .line 55
    .end local v1    # "objects":[Ljava/lang/Object;
    :cond_1d
    instance-of v1, p1, Ljava/util/Collection;

    if-eqz v1, :cond_3a

    .line 56
    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iter":Ljava/util/Iterator;
    :cond_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    .line 57
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/xmlrpc/client/XmlRpcLocalTransport;->isExtensionType(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 58
    return v0

    .line 61
    .end local v1    # "iter":Ljava/util/Iterator;
    :cond_39
    return v2

    .line 62
    :cond_3a
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_6d

    .line 63
    move-object v1, p1

    check-cast v1, Ljava/util/Map;

    .line 64
    .local v1, "map":Ljava/util/Map;
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "iter":Ljava/util/Iterator;
    :goto_49
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 65
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 66
    .local v4, "entry":Ljava/util/Map$Entry;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/apache/xmlrpc/client/XmlRpcLocalTransport;->isExtensionType(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6b

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/apache/xmlrpc/client/XmlRpcLocalTransport;->isExtensionType(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6a

    goto :goto_6b

    .line 69
    .end local v4    # "entry":Ljava/util/Map$Entry;
    :cond_6a
    goto :goto_49

    .line 67
    .restart local v4    # "entry":Ljava/util/Map$Entry;
    :cond_6b
    :goto_6b
    return v0

    .line 70
    .end local v3    # "iter":Ljava/util/Iterator;
    .end local v4    # "entry":Ljava/util/Map$Entry;
    :cond_6c
    return v2

    .line 72
    .end local v1    # "map":Ljava/util/Map;
    :cond_6d
    instance-of v1, p1, Ljava/lang/Integer;

    if-nez v1, :cond_82

    instance-of v1, p1, Ljava/util/Date;

    if-nez v1, :cond_82

    instance-of v1, p1, Ljava/lang/String;

    if-nez v1, :cond_82

    instance-of v1, p1, [B

    if-nez v1, :cond_82

    instance-of v1, p1, Ljava/lang/Double;

    if-nez v1, :cond_82

    goto :goto_83

    :cond_82
    const/4 v0, 0x0

    :goto_83
    return v0
.end method


# virtual methods
.method public sendRequest(Lorg/apache/xmlrpc/XmlRpcRequest;)Ljava/lang/Object;
    .registers 8
    .param p1, "pRequest"    # Lorg/apache/xmlrpc/XmlRpcRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    .line 81
    invoke-interface {p1}, Lorg/apache/xmlrpc/XmlRpcRequest;->getConfig()Lorg/apache/xmlrpc/XmlRpcRequestConfig;

    move-result-object v0

    .line 82
    .local v0, "config":Lorg/apache/xmlrpc/XmlRpcConfig;
    invoke-interface {v0}, Lorg/apache/xmlrpc/XmlRpcConfig;->isEnabledForExtensions()Z

    move-result v1

    if-nez v1, :cond_3a

    .line 83
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    invoke-interface {p1}, Lorg/apache/xmlrpc/XmlRpcRequest;->getParameterCount()I

    move-result v2

    if-ge v1, v2, :cond_3a

    .line 84
    invoke-interface {p1, v1}, Lorg/apache/xmlrpc/XmlRpcRequest;->getParameter(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/xmlrpc/client/XmlRpcLocalTransport;->isExtensionType(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 83
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 85
    :cond_1e
    new-instance v2, Lorg/apache/xmlrpc/common/XmlRpcExtensionException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parameter "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " has invalid type, if isEnabledForExtensions() == false"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/xmlrpc/common/XmlRpcExtensionException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 89
    .end local v1    # "i":I
    :cond_3a
    move-object v1, v0

    check-cast v1, Lorg/apache/xmlrpc/client/XmlRpcLocalClientConfig;

    invoke-interface {v1}, Lorg/apache/xmlrpc/client/XmlRpcLocalClientConfig;->getXmlRpcServer()Lorg/apache/xmlrpc/common/XmlRpcRequestProcessor;

    move-result-object v1

    .line 92
    .local v1, "server":Lorg/apache/xmlrpc/common/XmlRpcRequestProcessor;
    :try_start_41
    invoke-interface {v1, p1}, Lorg/apache/xmlrpc/common/XmlRpcRequestProcessor;->execute(Lorg/apache/xmlrpc/XmlRpcRequest;)Ljava/lang/Object;

    move-result-object v2
    :try_end_45
    .catch Lorg/apache/xmlrpc/XmlRpcException; {:try_start_41 .. :try_end_45} :catch_99
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_45} :catch_71

    .line 98
    .local v2, "result":Ljava/lang/Object;
    nop

    .line 97
    nop

    .line 99
    invoke-interface {v0}, Lorg/apache/xmlrpc/XmlRpcConfig;->isEnabledForExtensions()Z

    move-result v3

    if-nez v3, :cond_5c

    .line 100
    invoke-direct {p0, v2}, Lorg/apache/xmlrpc/client/XmlRpcLocalTransport;->isExtensionType(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_54

    goto :goto_5c

    .line 101
    :cond_54
    new-instance v3, Lorg/apache/xmlrpc/common/XmlRpcExtensionException;

    const-string v4, "Result has invalid type, if isEnabledForExtensions() == false"

    invoke-direct {v3, v4}, Lorg/apache/xmlrpc/common/XmlRpcExtensionException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 105
    :cond_5c
    :goto_5c
    if-nez v2, :cond_60

    .line 106
    const/4 v3, 0x0

    return-object v3

    .line 108
    :cond_60
    invoke-interface {v1}, Lorg/apache/xmlrpc/common/XmlRpcRequestProcessor;->getTypeConverterFactory()Lorg/apache/xmlrpc/common/TypeConverterFactory;

    move-result-object v3

    .line 109
    .local v3, "typeConverterFactory":Lorg/apache/xmlrpc/common/TypeConverterFactory;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/xmlrpc/common/TypeConverterFactory;->getTypeConverter(Ljava/lang/Class;)Lorg/apache/xmlrpc/common/TypeConverter;

    move-result-object v4

    .line 110
    .local v4, "typeConverter":Lorg/apache/xmlrpc/common/TypeConverter;
    invoke-interface {v4, v2}, Lorg/apache/xmlrpc/common/TypeConverter;->backConvert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    return-object v5

    .line 95
    .end local v2    # "result":Ljava/lang/Object;
    .end local v3    # "typeConverterFactory":Lorg/apache/xmlrpc/common/TypeConverterFactory;
    .end local v4    # "typeConverter":Lorg/apache/xmlrpc/common/TypeConverter;
    :catch_71
    move-exception v2

    .line 96
    .local v2, "t":Ljava/lang/Throwable;
    new-instance v3, Lorg/apache/xmlrpc/client/XmlRpcClientException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to invoke method "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/apache/xmlrpc/XmlRpcRequest;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/apache/xmlrpc/client/XmlRpcClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 93
    .end local v2    # "t":Ljava/lang/Throwable;
    :catch_99
    move-exception v2

    .line 94
    .local v2, "t":Lorg/apache/xmlrpc/XmlRpcException;
    throw v2
.end method
