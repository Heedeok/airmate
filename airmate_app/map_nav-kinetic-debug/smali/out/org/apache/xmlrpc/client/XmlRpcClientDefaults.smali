.class public Lorg/apache/xmlrpc/client/XmlRpcClientDefaults;
.super Ljava/lang/Object;
.source "XmlRpcClientDefaults.java"


# static fields
.field private static final xmlWriterFactory:Lorg/apache/xmlrpc/serializer/XmlWriterFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 29
    new-instance v0, Lorg/apache/xmlrpc/serializer/DefaultXMLWriterFactory;

    invoke-direct {v0}, Lorg/apache/xmlrpc/serializer/DefaultXMLWriterFactory;-><init>()V

    sput-object v0, Lorg/apache/xmlrpc/client/XmlRpcClientDefaults;->xmlWriterFactory:Lorg/apache/xmlrpc/serializer/XmlWriterFactory;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newTransportFactory(Lorg/apache/xmlrpc/client/XmlRpcClient;)Lorg/apache/xmlrpc/client/XmlRpcTransportFactory;
    .registers 4
    .param p0, "pClient"    # Lorg/apache/xmlrpc/client/XmlRpcClient;

    .line 36
    :try_start_0
    new-instance v0, Lorg/apache/xmlrpc/client/XmlRpcSun15HttpTransportFactory;

    invoke-direct {v0, p0}, Lorg/apache/xmlrpc/client/XmlRpcSun15HttpTransportFactory;-><init>(Lorg/apache/xmlrpc/client/XmlRpcClient;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_6

    return-object v0

    .line 37
    :catch_6
    move-exception v0

    .line 39
    .local v0, "t1":Ljava/lang/Throwable;
    :try_start_7
    new-instance v1, Lorg/apache/xmlrpc/client/XmlRpcSun14HttpTransportFactory;

    invoke-direct {v1, p0}, Lorg/apache/xmlrpc/client/XmlRpcSun14HttpTransportFactory;-><init>(Lorg/apache/xmlrpc/client/XmlRpcClient;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_c} :catch_d

    return-object v1

    .line 40
    :catch_d
    move-exception v1

    .line 41
    .local v1, "t2":Ljava/lang/Throwable;
    new-instance v2, Lorg/apache/xmlrpc/client/XmlRpcSunHttpTransportFactory;

    invoke-direct {v2, p0}, Lorg/apache/xmlrpc/client/XmlRpcSunHttpTransportFactory;-><init>(Lorg/apache/xmlrpc/client/XmlRpcClient;)V

    return-object v2
.end method

.method public static newXmlRpcClientConfig()Lorg/apache/xmlrpc/client/XmlRpcClientConfig;
    .registers 1

    .line 50
    new-instance v0, Lorg/apache/xmlrpc/client/XmlRpcClientConfigImpl;

    invoke-direct {v0}, Lorg/apache/xmlrpc/client/XmlRpcClientConfigImpl;-><init>()V

    return-object v0
.end method

.method public static newXmlWriterFactory()Lorg/apache/xmlrpc/serializer/XmlWriterFactory;
    .registers 1

    .line 57
    sget-object v0, Lorg/apache/xmlrpc/client/XmlRpcClientDefaults;->xmlWriterFactory:Lorg/apache/xmlrpc/serializer/XmlWriterFactory;

    return-object v0
.end method
