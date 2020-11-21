.class public abstract Lorg/apache/xmlrpc/server/AbstractReflectiveHandlerMapping;
.super Ljava/lang/Object;
.source "AbstractReflectiveHandlerMapping.java"

# interfaces
.implements Lorg/apache/xmlrpc/metadata/XmlRpcListableHandlerMapping;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlrpc/server/AbstractReflectiveHandlerMapping$AuthenticationHandler;
    }
.end annotation


# instance fields
.field private authenticationHandler:Lorg/apache/xmlrpc/server/AbstractReflectiveHandlerMapping$AuthenticationHandler;

.field protected handlerMap:Ljava/util/Map;

.field private requestProcessorFactoryFactory:Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory;

.field private typeConverterFactory:Lorg/apache/xmlrpc/common/TypeConverterFactory;

.field private voidMethodEnabled:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;

    invoke-direct {v0}, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlrpc/server/AbstractReflectiveHandlerMapping;->typeConverterFactory:Lorg/apache/xmlrpc/common/TypeConverterFactory;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlrpc/server/AbstractReflectiveHandlerMapping;->handlerMap:Ljava/util/Map;

    .line 60
    new-instance v0, Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory$RequestSpecificProcessorFactoryFactory;

    invoke-direct {v0}, Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory$RequestSpecificProcessorFactoryFactory;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlrpc/server/AbstractReflectiveHandlerMapping;->requestProcessorFactoryFactory:Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory;

    return-void
.end method


# virtual methods
.method public getAuthenticationHandler()Lorg/apache/xmlrpc/server/AbstractReflectiveHandlerMapping$AuthenticationHandler;
    .registers 2

    .line 93
    iget-object v0, p0, Lorg/apache/xmlrpc/server/AbstractReflectiveHandlerMapping;->authenticationHandler:Lorg/apache/xmlrpc/server/AbstractReflectiveHandlerMapping$AuthenticationHandler;

    return-object v0
.end method

.method public getHandler(Ljava/lang/String;)Lorg/apache/xmlrpc/XmlRpcHandler;
    .registers 6
    .param p1, "pHandlerName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/server/XmlRpcNoSuchHandlerException;,
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lorg/apache/xmlrpc/server/AbstractReflectiveHandlerMapping;->handlerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlrpc/XmlRpcHandler;

    .line 213
    .local v0, "result":Lorg/apache/xmlrpc/XmlRpcHandler;
    if-eqz v0, :cond_b

    .line 216
    return-object v0

    .line 214
    :cond_b
    new-instance v1, Lorg/apache/xmlrpc/server/XmlRpcNoSuchHandlerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No such handler: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/xmlrpc/server/XmlRpcNoSuchHandlerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getListMethods()[Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 221
    .local v0, "list":Ljava/util/List;
    iget-object v1, p0, Lorg/apache/xmlrpc/server/AbstractReflectiveHandlerMapping;->handlerMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 222
    .local v1, "iter":Ljava/util/Iterator;
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 223
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 224
    .local v2, "entry":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lorg/apache/xmlrpc/metadata/XmlRpcMetaDataHandler;

    if-eqz v3, :cond_2a

    .line 225
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    .end local v2    # "entry":Ljava/util/Map$Entry;
    :cond_2a
    goto :goto_f

    .line 229
    .end local v1    # "iter":Ljava/util/Iterator;
    :cond_2b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method protected getMethodHelp(Ljava/lang/Class;[Ljava/lang/reflect/Method;)Ljava/lang/String;
    .registers 4
    .param p1, "pClass"    # Ljava/lang/Class;
    .param p2, "pMethods"    # [Ljava/lang/reflect/Method;

    .line 202
    invoke-static {p1, p2}, Lorg/apache/xmlrpc/metadata/Util;->getMethodHelp(Ljava/lang/Class;[Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMethodHelp(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "pHandlerName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    .line 233
    invoke-virtual {p0, p1}, Lorg/apache/xmlrpc/server/AbstractReflectiveHandlerMapping;->getHandler(Ljava/lang/String;)Lorg/apache/xmlrpc/XmlRpcHandler;

    move-result-object v0

    .line 234
    .local v0, "h":Lorg/apache/xmlrpc/XmlRpcHandler;
    instance-of v1, v0, Lorg/apache/xmlrpc/metadata/XmlRpcMetaDataHandler;

    if-eqz v1, :cond_10

    .line 235
    move-object v1, v0

    check-cast v1, Lorg/apache/xmlrpc/metadata/XmlRpcMetaDataHandler;

    invoke-interface {v1}, Lorg/apache/xmlrpc/metadata/XmlRpcMetaDataHandler;->getMethodHelp()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 236
    :cond_10
    new-instance v1, Lorg/apache/xmlrpc/server/XmlRpcNoSuchHandlerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No help available for method: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/xmlrpc/server/XmlRpcNoSuchHandlerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getMethodSignature(Ljava/lang/String;)[[Ljava/lang/String;
    .registers 6
    .param p1, "pHandlerName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    .line 241
    invoke-virtual {p0, p1}, Lorg/apache/xmlrpc/server/AbstractReflectiveHandlerMapping;->getHandler(Ljava/lang/String;)Lorg/apache/xmlrpc/XmlRpcHandler;

    move-result-object v0

    .line 242
    .local v0, "h":Lorg/apache/xmlrpc/XmlRpcHandler;
    instance-of v1, v0, Lorg/apache/xmlrpc/metadata/XmlRpcMetaDataHandler;

    if-eqz v1, :cond_10

    .line 243
    move-object v1, v0

    check-cast v1, Lorg/apache/xmlrpc/metadata/XmlRpcMetaDataHandler;

    invoke-interface {v1}, Lorg/apache/xmlrpc/metadata/XmlRpcMetaDataHandler;->getSignatures()[[Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 244
    :cond_10
    new-instance v1, Lorg/apache/xmlrpc/server/XmlRpcNoSuchHandlerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No metadata available for method: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/xmlrpc/server/XmlRpcNoSuchHandlerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getRequestProcessorFactoryFactory()Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory;
    .registers 2

    .line 87
    iget-object v0, p0, Lorg/apache/xmlrpc/server/AbstractReflectiveHandlerMapping;->requestProcessorFactoryFactory:Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory;

    return-object v0
.end method

.method protected getSignature([Ljava/lang/reflect/Method;)[[Ljava/lang/String;
    .registers 3
    .param p1, "pMethods"    # [Ljava/lang/reflect/Method;

    .line 195
    invoke-static {p1}, Lorg/apache/xmlrpc/metadata/Util;->getSignature([Ljava/lang/reflect/Method;)[[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTypeConverterFactory()Lorg/apache/xmlrpc/common/TypeConverterFactory;
    .registers 2

    .line 74
    iget-object v0, p0, Lorg/apache/xmlrpc/server/AbstractReflectiveHandlerMapping;->typeConverterFactory:Lorg/apache/xmlrpc/common/TypeConverterFactory;

    return-object v0
.end method

.method protected isHandlerMethod(Ljava/lang/reflect/Method;)Z
    .registers 5
    .param p1, "pMethod"    # Ljava/lang/reflect/Method;

    .line 103
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 104
    return v1

    .line 106
    :cond_c
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 107
    return v1

    .line 109
    :cond_17
    invoke-virtual {p0}, Lorg/apache/xmlrpc/server/AbstractReflectiveHandlerMapping;->isVoidMethodEnabled()Z

    move-result v0

    if-nez v0, :cond_26

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_26

    .line 110
    return v1

    .line 112
    :cond_26
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Ljava/lang/Object;

    if-ne v0, v2, :cond_2f

    .line 113
    return v1

    .line 115
    :cond_2f
    const/4 v0, 0x1

    return v0
.end method

.method public isVoidMethodEnabled()Z
    .registers 2

    .line 254
    iget-boolean v0, p0, Lorg/apache/xmlrpc/server/AbstractReflectiveHandlerMapping;->voidMethodEnabled:Z

    return v0
.end method

.method protected newXmlRpcHandler(Ljava/lang/Class;[Ljava/lang/reflect/Method;)Lorg/apache/xmlrpc/XmlRpcHandler;
    .registers 15
    .param p1, "pClass"    # Ljava/lang/Class;
    .param p2, "pMethods"    # [Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    .line 181
    invoke-virtual {p0, p2}, Lorg/apache/xmlrpc/server/AbstractReflectiveHandlerMapping;->getSignature([Ljava/lang/reflect/Method;)[[Ljava/lang/String;

    move-result-object v8

    .line 182
    .local v8, "sig":[[Ljava/lang/String;
    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlrpc/server/AbstractReflectiveHandlerMapping;->getMethodHelp(Ljava/lang/Class;[Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v9

    .line 183
    .local v9, "help":Ljava/lang/String;
    iget-object v0, p0, Lorg/apache/xmlrpc/server/AbstractReflectiveHandlerMapping;->requestProcessorFactoryFactory:Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory;

    invoke-interface {v0, p1}, Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory;->getRequestProcessorFactory(Ljava/lang/Class;)Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory$RequestProcessorFactory;

    move-result-object v10

    .line 184
    .local v10, "factory":Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory$RequestProcessorFactory;
    if-eqz v8, :cond_22

    if-nez v9, :cond_13

    goto :goto_22

    .line 188
    :cond_13
    new-instance v11, Lorg/apache/xmlrpc/metadata/ReflectiveXmlRpcMetaDataHandler;

    iget-object v2, p0, Lorg/apache/xmlrpc/server/AbstractReflectiveHandlerMapping;->typeConverterFactory:Lorg/apache/xmlrpc/common/TypeConverterFactory;

    move-object v0, v11

    move-object v1, p0

    move-object v3, p1

    move-object v4, v10

    move-object v5, p2

    move-object v6, v8

    move-object v7, v9

    invoke-direct/range {v0 .. v7}, Lorg/apache/xmlrpc/metadata/ReflectiveXmlRpcMetaDataHandler;-><init>(Lorg/apache/xmlrpc/server/AbstractReflectiveHandlerMapping;Lorg/apache/xmlrpc/common/TypeConverterFactory;Ljava/lang/Class;Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory$RequestProcessorFactory;[Ljava/lang/reflect/Method;[[Ljava/lang/String;Ljava/lang/String;)V

    return-object v11

    .line 185
    :cond_22
    :goto_22
    new-instance v0, Lorg/apache/xmlrpc/server/ReflectiveXmlRpcHandler;

    iget-object v3, p0, Lorg/apache/xmlrpc/server/AbstractReflectiveHandlerMapping;->typeConverterFactory:Lorg/apache/xmlrpc/common/TypeConverterFactory;

    move-object v1, v0

    move-object v2, p0

    move-object v4, p1

    move-object v5, v10

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/apache/xmlrpc/server/ReflectiveXmlRpcHandler;-><init>(Lorg/apache/xmlrpc/server/AbstractReflectiveHandlerMapping;Lorg/apache/xmlrpc/common/TypeConverterFactory;Ljava/lang/Class;Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory$RequestProcessorFactory;[Ljava/lang/reflect/Method;)V

    return-object v0
.end method

.method protected registerPublicMethods(Ljava/lang/String;Ljava/lang/Class;)V
    .registers 12
    .param p1, "pKey"    # Ljava/lang/String;
    .param p2, "pType"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    .line 145
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 146
    .local v0, "map":Ljava/util/Map;
    invoke-virtual {p2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 147
    .local v1, "methods":[Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b
    array-length v4, v1

    if-ge v3, v4, :cond_63

    .line 148
    aget-object v4, v1, v3

    .line 149
    .local v4, "method":Ljava/lang/reflect/Method;
    invoke-virtual {p0, v4}, Lorg/apache/xmlrpc/server/AbstractReflectiveHandlerMapping;->isHandlerMethod(Ljava/lang/reflect/Method;)Z

    move-result v5

    if-nez v5, :cond_17

    .line 150
    goto :goto_60

    .line 152
    :cond_17
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_34

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_36

    :cond_34
    const-string v6, ""

    :goto_36
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 154
    .local v5, "name":Ljava/lang/String;
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/reflect/Method;

    .line 155
    .local v6, "oldMArray":[Ljava/lang/reflect/Method;
    const/4 v7, 0x1

    if-nez v6, :cond_52

    .line 156
    new-array v7, v7, [Ljava/lang/reflect/Method;

    aput-object v4, v7, v2

    goto :goto_5d

    .line 158
    :cond_52
    array-length v8, v6

    add-int/2addr v8, v7

    new-array v7, v8, [Ljava/lang/reflect/Method;

    .line 159
    .local v7, "mArray":[Ljava/lang/reflect/Method;
    array-length v8, v6

    invoke-static {v6, v2, v7, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    array-length v8, v6

    aput-object v4, v7, v8

    .line 162
    :goto_5d
    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .end local v4    # "method":Ljava/lang/reflect/Method;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "oldMArray":[Ljava/lang/reflect/Method;
    .end local v7    # "mArray":[Ljava/lang/reflect/Method;
    :goto_60
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 165
    .end local v3    # "i":I
    :cond_63
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "iter":Ljava/util/Iterator;
    :goto_6b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8d

    .line 166
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 167
    .local v3, "entry":Ljava/util/Map$Entry;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 168
    .local v4, "name":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/reflect/Method;

    .line 169
    .local v5, "mArray":[Ljava/lang/reflect/Method;
    iget-object v6, p0, Lorg/apache/xmlrpc/server/AbstractReflectiveHandlerMapping;->handlerMap:Ljava/util/Map;

    invoke-virtual {p0, p2, v5}, Lorg/apache/xmlrpc/server/AbstractReflectiveHandlerMapping;->newXmlRpcHandler(Ljava/lang/Class;[Ljava/lang/reflect/Method;)Lorg/apache/xmlrpc/XmlRpcHandler;

    move-result-object v7

    invoke-interface {v6, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .end local v3    # "entry":Ljava/util/Map$Entry;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "mArray":[Ljava/lang/reflect/Method;
    goto :goto_6b

    .line 171
    .end local v2    # "iter":Ljava/util/Iterator;
    :cond_8d
    return-void
.end method

.method public setAuthenticationHandler(Lorg/apache/xmlrpc/server/AbstractReflectiveHandlerMapping$AuthenticationHandler;)V
    .registers 2
    .param p1, "pAuthenticationHandler"    # Lorg/apache/xmlrpc/server/AbstractReflectiveHandlerMapping$AuthenticationHandler;

    .line 99
    iput-object p1, p0, Lorg/apache/xmlrpc/server/AbstractReflectiveHandlerMapping;->authenticationHandler:Lorg/apache/xmlrpc/server/AbstractReflectiveHandlerMapping$AuthenticationHandler;

    .line 100
    return-void
.end method

.method public setRequestProcessorFactoryFactory(Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory;)V
    .registers 2
    .param p1, "pFactory"    # Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory;

    .line 81
    iput-object p1, p0, Lorg/apache/xmlrpc/server/AbstractReflectiveHandlerMapping;->requestProcessorFactoryFactory:Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory;

    .line 82
    return-void
.end method

.method public setTypeConverterFactory(Lorg/apache/xmlrpc/common/TypeConverterFactory;)V
    .registers 2
    .param p1, "pFactory"    # Lorg/apache/xmlrpc/common/TypeConverterFactory;

    .line 67
    iput-object p1, p0, Lorg/apache/xmlrpc/server/AbstractReflectiveHandlerMapping;->typeConverterFactory:Lorg/apache/xmlrpc/common/TypeConverterFactory;

    .line 68
    return-void
.end method

.method public setVoidMethodEnabled(Z)V
    .registers 2
    .param p1, "pVoidMethodEnabled"    # Z

    .line 263
    iput-boolean p1, p0, Lorg/apache/xmlrpc/server/AbstractReflectiveHandlerMapping;->voidMethodEnabled:Z

    .line 264
    return-void
.end method
