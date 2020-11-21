.class public Lorg/apache/xmlrpc/common/XmlRpcLoadException;
.super Lorg/apache/xmlrpc/XmlRpcException;
.source "XmlRpcLoadException.java"


# static fields
.field private static final serialVersionUID:J = 0x3837313936333433L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "pMessage"    # Ljava/lang/String;

    .line 34
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/xmlrpc/XmlRpcException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    return-void
.end method
