.class public Lorg/apache/xmlrpc/common/XmlRpcInvocationException;
.super Lorg/apache/xmlrpc/XmlRpcException;
.source "XmlRpcInvocationException.java"


# static fields
.field private static final serialVersionUID:J = 0x673f4243a7cf3819L


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "pCode"    # I
    .param p2, "pMessage"    # Ljava/lang/String;
    .param p3, "pLinkedException"    # Ljava/lang/Throwable;

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xmlrpc/XmlRpcException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "pMessage"    # Ljava/lang/String;
    .param p2, "pLinkedException"    # Ljava/lang/Throwable;

    .line 43
    invoke-direct {p0, p1, p2}, Lorg/apache/xmlrpc/XmlRpcException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    return-void
.end method
