.class public Lorg/apache/xmlrpc/server/ReflectiveXmlRpcHandler;
.super Ljava/lang/Object;
.source "ReflectiveXmlRpcHandler.java"

# interfaces
.implements Lorg/apache/xmlrpc/XmlRpcHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlrpc/server/ReflectiveXmlRpcHandler$MethodData;
    }
.end annotation


# instance fields
.field private final clazz:Ljava/lang/Class;

.field private final mapping:Lorg/apache/xmlrpc/server/AbstractReflectiveHandlerMapping;

.field private final methods:[Lorg/apache/xmlrpc/server/ReflectiveXmlRpcHandler$MethodData;

.field private final requestProcessorFactory:Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory$RequestProcessorFactory;


# direct methods
.method public constructor <init>(Lorg/apache/xmlrpc/server/AbstractReflectiveHandlerMapping;Lorg/apache/xmlrpc/common/TypeConverterFactory;Ljava/lang/Class;Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory$RequestProcessorFactory;[Ljava/lang/reflect/Method;)V
    .registers 10
    .param p1, "pMapping"    # Lorg/apache/xmlrpc/server/AbstractReflectiveHandlerMapping;
    .param p2, "pTypeConverterFactory"    # Lorg/apache/xmlrpc/common/TypeConverterFactory;
    .param p3, "pClass"    # Ljava/lang/Class;
    .param p4, "pFactory"    # Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory$RequestProcessorFactory;
    .param p5, "pMethods"    # [Ljava/lang/reflect/Method;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lorg/apache/xmlrpc/server/ReflectiveXmlRpcHandler;->mapping:Lorg/apache/xmlrpc/server/AbstractReflectiveHandlerMapping;

    .line 69
    iput-object p3, p0, Lorg/apache/xmlrpc/server/ReflectiveXmlRpcHandler;->clazz:Ljava/lang/Class;

    .line 70
    array-length v0, p5

    new-array v0, v0, [Lorg/apache/xmlrpc/server/ReflectiveXmlRpcHandler$MethodData;

    iput-object v0, p0, Lorg/apache/xmlrpc/server/ReflectiveXmlRpcHandler;->methods:[Lorg/apache/xmlrpc/server/ReflectiveXmlRpcHandler$MethodData;

    .line 71
    iput-object p4, p0, Lorg/apache/xmlrpc/server/ReflectiveXmlRpcHandler;->requestProcessorFactory:Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory$RequestProcessorFactory;

    .line 72
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    iget-object v1, p0, Lorg/apache/xmlrpc/server/ReflectiveXmlRpcHandler;->methods:[Lorg/apache/xmlrpc/server/ReflectiveXmlRpcHandler$MethodData;

    array-length v1, v1

    if-ge v0, v1, :cond_22

    .line 73
    iget-object v1, p0, Lorg/apache/xmlrpc/server/ReflectiveXmlRpcHandler;->methods:[Lorg/apache/xmlrpc/server/ReflectiveXmlRpcHandler$MethodData;

    new-instance v2, Lorg/apache/xmlrpc/server/ReflectiveXmlRpcHandler$MethodData;

    aget-object v3, p5, v0

    invoke-direct {v2, v3, p2}, Lorg/apache/xmlrpc/server/ReflectiveXmlRpcHandler$MethodData;-><init>(Ljava/lang/reflect/Method;Lorg/apache/xmlrpc/common/TypeConverterFactory;)V

    aput-object v2, v1, v0

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 75
    .end local v0    # "i":I
    :cond_22
    return-void
.end method

.method private getInstance(Lorg/apache/xmlrpc/XmlRpcRequest;)Ljava/lang/Object;
    .registers 3
    .param p1, "pRequest"    # Lorg/apache/xmlrpc/XmlRpcRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lorg/apache/xmlrpc/server/ReflectiveXmlRpcHandler;->requestProcessorFactory:Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory$RequestProcessorFactory;

    invoke-interface {v0, p1}, Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory$RequestProcessorFactory;->getRequestProcessor(Lorg/apache/xmlrpc/XmlRpcRequest;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .param p1, "pInstance"    # Ljava/lang/Object;
    .param p2, "pMethod"    # Ljava/lang/reflect/Method;
    .param p3, "pArgs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    .line 115
    :try_start_0
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_4} :catch_71
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_4} :catch_47
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 124
    :catch_5
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    .line 126
    .local v1, "t":Ljava/lang/Throwable;
    instance-of v2, v1, Lorg/apache/xmlrpc/XmlRpcException;

    if-eqz v2, :cond_12

    .line 127
    move-object v2, v1

    check-cast v2, Lorg/apache/xmlrpc/XmlRpcException;

    throw v2

    .line 129
    :cond_12
    new-instance v2, Lorg/apache/xmlrpc/common/XmlRpcInvocationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to invoke method "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " in class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/apache/xmlrpc/server/ReflectiveXmlRpcHandler;->clazz:Ljava/lang/Class;

    .line 131
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/apache/xmlrpc/common/XmlRpcInvocationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 120
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v1    # "t":Ljava/lang/Throwable;
    :catch_47
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Lorg/apache/xmlrpc/XmlRpcException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal argument for method "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " in class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/xmlrpc/server/ReflectiveXmlRpcHandler;->clazz:Ljava/lang/Class;

    .line 123
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/xmlrpc/XmlRpcException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 116
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_71
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Lorg/apache/xmlrpc/XmlRpcException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal access to method "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " in class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/xmlrpc/server/ReflectiveXmlRpcHandler;->clazz:Ljava/lang/Class;

    .line 119
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/xmlrpc/XmlRpcException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public execute(Lorg/apache/xmlrpc/XmlRpcRequest;)Ljava/lang/Object;
    .registers 13
    .param p1, "pRequest"    # Lorg/apache/xmlrpc/XmlRpcRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lorg/apache/xmlrpc/server/ReflectiveXmlRpcHandler;->mapping:Lorg/apache/xmlrpc/server/AbstractReflectiveHandlerMapping;

    invoke-virtual {v0}, Lorg/apache/xmlrpc/server/AbstractReflectiveHandlerMapping;->getAuthenticationHandler()Lorg/apache/xmlrpc/server/AbstractReflectiveHandlerMapping$AuthenticationHandler;

    move-result-object v0

    .line 83
    .local v0, "authHandler":Lorg/apache/xmlrpc/server/AbstractReflectiveHandlerMapping$AuthenticationHandler;
    if-eqz v0, :cond_17

    invoke-interface {v0, p1}, Lorg/apache/xmlrpc/server/AbstractReflectiveHandlerMapping$AuthenticationHandler;->isAuthorized(Lorg/apache/xmlrpc/XmlRpcRequest;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_17

    .line 84
    :cond_f
    new-instance v1, Lorg/apache/xmlrpc/common/XmlRpcNotAuthorizedException;

    const-string v2, "Not authorized"

    invoke-direct {v1, v2}, Lorg/apache/xmlrpc/common/XmlRpcNotAuthorizedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 86
    :cond_17
    :goto_17
    invoke-interface {p1}, Lorg/apache/xmlrpc/XmlRpcRequest;->getParameterCount()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Object;

    .line 87
    .local v1, "args":[Ljava/lang/Object;
    const/4 v2, 0x0

    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1f
    array-length v4, v1

    if-ge v3, v4, :cond_2b

    .line 88
    invoke-interface {p1, v3}, Lorg/apache/xmlrpc/XmlRpcRequest;->getParameter(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v1, v3

    .line 87
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 90
    .end local v3    # "j":I
    :cond_2b
    invoke-direct {p0, p1}, Lorg/apache/xmlrpc/server/ReflectiveXmlRpcHandler;->getInstance(Lorg/apache/xmlrpc/XmlRpcRequest;)Ljava/lang/Object;

    move-result-object v3

    .line 91
    .local v3, "instance":Ljava/lang/Object;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_30
    iget-object v5, p0, Lorg/apache/xmlrpc/server/ReflectiveXmlRpcHandler;->methods:[Lorg/apache/xmlrpc/server/ReflectiveXmlRpcHandler$MethodData;

    array-length v5, v5

    if-ge v4, v5, :cond_70

    .line 92
    iget-object v5, p0, Lorg/apache/xmlrpc/server/ReflectiveXmlRpcHandler;->methods:[Lorg/apache/xmlrpc/server/ReflectiveXmlRpcHandler$MethodData;

    aget-object v5, v5, v4

    .line 93
    .local v5, "methodData":Lorg/apache/xmlrpc/server/ReflectiveXmlRpcHandler$MethodData;
    iget-object v6, v5, Lorg/apache/xmlrpc/server/ReflectiveXmlRpcHandler$MethodData;->typeConverters:[Lorg/apache/xmlrpc/common/TypeConverter;

    .line 94
    .local v6, "converters":[Lorg/apache/xmlrpc/common/TypeConverter;
    array-length v7, v1

    array-length v8, v6

    if-ne v7, v8, :cond_6d

    .line 95
    const/4 v7, 0x1

    .line 96
    .local v7, "matching":Z
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_41
    array-length v9, v1

    if-ge v8, v9, :cond_53

    .line 97
    aget-object v9, v6, v8

    aget-object v10, v1, v8

    invoke-interface {v9, v10}, Lorg/apache/xmlrpc/common/TypeConverter;->isConvertable(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_50

    .line 98
    const/4 v7, 0x0

    .line 99
    goto :goto_53

    .line 96
    :cond_50
    add-int/lit8 v8, v8, 0x1

    goto :goto_41

    .line 102
    .end local v8    # "j":I
    :cond_53
    :goto_53
    if-eqz v7, :cond_6d

    .line 103
    nop

    .local v2, "j":I
    :goto_56
    array-length v8, v1

    if-ge v2, v8, :cond_66

    .line 104
    aget-object v8, v6, v2

    aget-object v9, v1, v2

    invoke-interface {v8, v9}, Lorg/apache/xmlrpc/common/TypeConverter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v1, v2

    .line 103
    add-int/lit8 v2, v2, 0x1

    goto :goto_56

    .line 106
    .end local v2    # "j":I
    :cond_66
    iget-object v2, v5, Lorg/apache/xmlrpc/server/ReflectiveXmlRpcHandler$MethodData;->method:Ljava/lang/reflect/Method;

    invoke-direct {p0, v3, v2, v1}, Lorg/apache/xmlrpc/server/ReflectiveXmlRpcHandler;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 91
    .end local v5    # "methodData":Lorg/apache/xmlrpc/server/ReflectiveXmlRpcHandler$MethodData;
    .end local v6    # "converters":[Lorg/apache/xmlrpc/common/TypeConverter;
    .end local v7    # "matching":Z
    :cond_6d
    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    .line 110
    .end local v4    # "i":I
    :cond_70
    new-instance v2, Lorg/apache/xmlrpc/XmlRpcException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No method "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/apache/xmlrpc/XmlRpcRequest;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " matching arguments: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lorg/apache/xmlrpc/metadata/Util;->getSignature([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/apache/xmlrpc/XmlRpcException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
