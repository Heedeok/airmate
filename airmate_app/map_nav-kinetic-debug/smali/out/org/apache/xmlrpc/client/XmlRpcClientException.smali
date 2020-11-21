.class public Lorg/apache/xmlrpc/client/XmlRpcClientException;
.super Lorg/apache/xmlrpc/XmlRpcException;
.source "XmlRpcClientException.java"


# static fields
.field private static final serialVersionUID:J = 0x3135353834373933L


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "pMessage"    # Ljava/lang/String;
    .param p2, "pCause"    # Ljava/lang/Throwable;

    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/xmlrpc/XmlRpcException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    return-void
.end method
