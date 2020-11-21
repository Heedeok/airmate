.class public Lorg/apache/xmlrpc/common/LocalStreamConnection;
.super Ljava/lang/Object;
.source "LocalStreamConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlrpc/common/LocalStreamConnection$LocalServerStreamConnection;
    }
.end annotation


# instance fields
.field private final config:Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;

.field private final request:Ljava/io/InputStream;

.field private final response:Ljava/io/ByteArrayOutputStream;

.field private final serverStreamConnection:Lorg/apache/xmlrpc/common/ServerStreamConnection;


# direct methods
.method public constructor <init>(Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;Ljava/io/InputStream;)V
    .registers 5
    .param p1, "pConfig"    # Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;
    .param p2, "pRequest"    # Ljava/io/InputStream;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlrpc/common/LocalStreamConnection;->response:Ljava/io/ByteArrayOutputStream;

    .line 57
    iput-object p1, p0, Lorg/apache/xmlrpc/common/LocalStreamConnection;->config:Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;

    .line 58
    iput-object p2, p0, Lorg/apache/xmlrpc/common/LocalStreamConnection;->request:Ljava/io/InputStream;

    .line 59
    new-instance v0, Lorg/apache/xmlrpc/common/LocalStreamConnection$LocalServerStreamConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/xmlrpc/common/LocalStreamConnection$LocalServerStreamConnection;-><init>(Lorg/apache/xmlrpc/common/LocalStreamConnection;Lorg/apache/xmlrpc/common/LocalStreamConnection$1;)V

    iput-object v0, p0, Lorg/apache/xmlrpc/common/LocalStreamConnection;->serverStreamConnection:Lorg/apache/xmlrpc/common/ServerStreamConnection;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lorg/apache/xmlrpc/common/LocalStreamConnection;)Ljava/io/InputStream;
    .registers 2
    .param p0, "x0"    # Lorg/apache/xmlrpc/common/LocalStreamConnection;

    .line 31
    iget-object v0, p0, Lorg/apache/xmlrpc/common/LocalStreamConnection;->request:Ljava/io/InputStream;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/xmlrpc/common/LocalStreamConnection;)Ljava/io/ByteArrayOutputStream;
    .registers 2
    .param p0, "x0"    # Lorg/apache/xmlrpc/common/LocalStreamConnection;

    .line 31
    iget-object v0, p0, Lorg/apache/xmlrpc/common/LocalStreamConnection;->response:Ljava/io/ByteArrayOutputStream;

    return-object v0
.end method


# virtual methods
.method public getConfig()Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;
    .registers 2

    .line 71
    iget-object v0, p0, Lorg/apache/xmlrpc/common/LocalStreamConnection;->config:Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;

    return-object v0
.end method

.method public getRequest()Ljava/io/InputStream;
    .registers 2

    .line 65
    iget-object v0, p0, Lorg/apache/xmlrpc/common/LocalStreamConnection;->request:Ljava/io/InputStream;

    return-object v0
.end method

.method public getResponse()Ljava/io/ByteArrayOutputStream;
    .registers 2

    .line 78
    iget-object v0, p0, Lorg/apache/xmlrpc/common/LocalStreamConnection;->response:Ljava/io/ByteArrayOutputStream;

    return-object v0
.end method

.method public getServerStreamConnection()Lorg/apache/xmlrpc/common/ServerStreamConnection;
    .registers 2

    .line 84
    iget-object v0, p0, Lorg/apache/xmlrpc/common/LocalStreamConnection;->serverStreamConnection:Lorg/apache/xmlrpc/common/ServerStreamConnection;

    return-object v0
.end method
