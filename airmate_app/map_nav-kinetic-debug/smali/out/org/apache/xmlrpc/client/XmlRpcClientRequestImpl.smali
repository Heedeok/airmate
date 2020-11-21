.class public Lorg/apache/xmlrpc/client/XmlRpcClientRequestImpl;
.super Ljava/lang/Object;
.source "XmlRpcClientRequestImpl.java"

# interfaces
.implements Lorg/apache/xmlrpc/XmlRpcRequest;


# static fields
.field private static final ZERO_PARAMS:[Ljava/lang/Object;


# instance fields
.field private final config:Lorg/apache/xmlrpc/XmlRpcRequestConfig;

.field private final methodName:Ljava/lang/String;

.field private final params:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lorg/apache/xmlrpc/client/XmlRpcClientRequestImpl;->ZERO_PARAMS:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlrpc/XmlRpcRequestConfig;Ljava/lang/String;Ljava/util/List;)V
    .registers 5
    .param p1, "pConfig"    # Lorg/apache/xmlrpc/XmlRpcRequestConfig;
    .param p2, "pMethodName"    # Ljava/lang/String;
    .param p3, "pParams"    # Ljava/util/List;

    .line 63
    if-nez p3, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    :cond_4
    invoke-interface {p3}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    :goto_8
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/xmlrpc/client/XmlRpcClientRequestImpl;-><init>(Lorg/apache/xmlrpc/XmlRpcRequestConfig;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlrpc/XmlRpcRequestConfig;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6
    .param p1, "pConfig"    # Lorg/apache/xmlrpc/XmlRpcRequestConfig;
    .param p2, "pMethodName"    # Ljava/lang/String;
    .param p3, "pParams"    # [Ljava/lang/Object;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/apache/xmlrpc/client/XmlRpcClientRequestImpl;->config:Lorg/apache/xmlrpc/XmlRpcRequestConfig;

    .line 45
    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcClientRequestImpl;->config:Lorg/apache/xmlrpc/XmlRpcRequestConfig;

    if-eqz v0, :cond_20

    .line 48
    iput-object p2, p0, Lorg/apache/xmlrpc/client/XmlRpcClientRequestImpl;->methodName:Ljava/lang/String;

    .line 49
    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcClientRequestImpl;->methodName:Ljava/lang/String;

    if-eqz v0, :cond_18

    .line 52
    if-nez p3, :cond_14

    sget-object v0, Lorg/apache/xmlrpc/client/XmlRpcClientRequestImpl;->ZERO_PARAMS:[Ljava/lang/Object;

    goto :goto_15

    :cond_14
    move-object v0, p3

    :goto_15
    iput-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcClientRequestImpl;->params:[Ljava/lang/Object;

    .line 53
    return-void

    .line 50
    :cond_18
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The method name must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_20
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The request configuration must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getConfig()Lorg/apache/xmlrpc/XmlRpcRequestConfig;
    .registers 2

    .line 72
    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcClientRequestImpl;->config:Lorg/apache/xmlrpc/XmlRpcRequestConfig;

    return-object v0
.end method

.method public getMethodName()Ljava/lang/String;
    .registers 2

    .line 66
    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcClientRequestImpl;->methodName:Ljava/lang/String;

    return-object v0
.end method

.method public getParameter(I)Ljava/lang/Object;
    .registers 3
    .param p1, "pIndex"    # I

    .line 70
    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcClientRequestImpl;->params:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getParameterCount()I
    .registers 2

    .line 68
    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcClientRequestImpl;->params:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method
