.class public Lorg/apache/xmlrpc/metadata/ReflectiveXmlRpcMetaDataHandler;
.super Lorg/apache/xmlrpc/server/ReflectiveXmlRpcHandler;
.source "ReflectiveXmlRpcMetaDataHandler.java"

# interfaces
.implements Lorg/apache/xmlrpc/metadata/XmlRpcMetaDataHandler;


# instance fields
.field private final methodHelp:Ljava/lang/String;

.field private final signatures:[[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/xmlrpc/server/AbstractReflectiveHandlerMapping;Lorg/apache/xmlrpc/common/TypeConverterFactory;Ljava/lang/Class;Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory$RequestProcessorFactory;[Ljava/lang/reflect/Method;[[Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "pMapping"    # Lorg/apache/xmlrpc/server/AbstractReflectiveHandlerMapping;
    .param p2, "pTypeConverterFactory"    # Lorg/apache/xmlrpc/common/TypeConverterFactory;
    .param p3, "pClass"    # Ljava/lang/Class;
    .param p4, "pFactory"    # Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory$RequestProcessorFactory;
    .param p5, "pMethods"    # [Ljava/lang/reflect/Method;
    .param p6, "pSignatures"    # [[Ljava/lang/String;
    .param p7, "pMethodHelp"    # Ljava/lang/String;

    .line 54
    invoke-direct/range {p0 .. p5}, Lorg/apache/xmlrpc/server/ReflectiveXmlRpcHandler;-><init>(Lorg/apache/xmlrpc/server/AbstractReflectiveHandlerMapping;Lorg/apache/xmlrpc/common/TypeConverterFactory;Ljava/lang/Class;Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory$RequestProcessorFactory;[Ljava/lang/reflect/Method;)V

    .line 55
    iput-object p6, p0, Lorg/apache/xmlrpc/metadata/ReflectiveXmlRpcMetaDataHandler;->signatures:[[Ljava/lang/String;

    .line 56
    iput-object p7, p0, Lorg/apache/xmlrpc/metadata/ReflectiveXmlRpcMetaDataHandler;->methodHelp:Ljava/lang/String;

    .line 57
    return-void
.end method


# virtual methods
.method public getMethodHelp()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lorg/apache/xmlrpc/metadata/ReflectiveXmlRpcMetaDataHandler;->methodHelp:Ljava/lang/String;

    return-object v0
.end method

.method public getSignatures()[[Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lorg/apache/xmlrpc/metadata/ReflectiveXmlRpcMetaDataHandler;->signatures:[[Ljava/lang/String;

    return-object v0
.end method
