.class public abstract Lorg/apache/xmlrpc/client/XmlRpcTransportImpl;
.super Ljava/lang/Object;
.source "XmlRpcTransportImpl.java"

# interfaces
.implements Lorg/apache/xmlrpc/client/XmlRpcTransport;


# instance fields
.field private final client:Lorg/apache/xmlrpc/client/XmlRpcClient;


# direct methods
.method protected constructor <init>(Lorg/apache/xmlrpc/client/XmlRpcClient;)V
    .registers 2
    .param p1, "pClient"    # Lorg/apache/xmlrpc/client/XmlRpcClient;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/apache/xmlrpc/client/XmlRpcTransportImpl;->client:Lorg/apache/xmlrpc/client/XmlRpcClient;

    .line 32
    return-void
.end method


# virtual methods
.method public getClient()Lorg/apache/xmlrpc/client/XmlRpcClient;
    .registers 2

    .line 37
    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcTransportImpl;->client:Lorg/apache/xmlrpc/client/XmlRpcClient;

    return-object v0
.end method
