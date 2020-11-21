.class public Lorg/apache/xmlrpc/common/XmlRpcExtensionException;
.super Lorg/apache/xmlrpc/XmlRpcException;
.source "XmlRpcExtensionException.java"


# static fields
.field private static final serialVersionUID:J = 0x3232373936393235L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "pMessage"    # Ljava/lang/String;

    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlrpc/XmlRpcException;-><init>(ILjava/lang/String;)V

    .line 35
    return-void
.end method
