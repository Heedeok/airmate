.class public Lorg/apache/xmlrpc/server/XmlRpcNoSuchHandlerException;
.super Lorg/apache/xmlrpc/XmlRpcException;
.source "XmlRpcNoSuchHandlerException.java"


# static fields
.field private static final serialVersionUID:J = 0x2d33323039313035L


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
