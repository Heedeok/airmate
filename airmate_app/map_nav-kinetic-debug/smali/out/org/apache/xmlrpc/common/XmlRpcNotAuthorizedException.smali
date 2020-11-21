.class public Lorg/apache/xmlrpc/common/XmlRpcNotAuthorizedException;
.super Lorg/apache/xmlrpc/XmlRpcException;
.source "XmlRpcNotAuthorizedException.java"


# static fields
.field private static final serialVersionUID:J = 0x2d38333434323039L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "pMessage"    # Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlrpc/XmlRpcException;-><init>(ILjava/lang/String;)V

    .line 34
    return-void
.end method
