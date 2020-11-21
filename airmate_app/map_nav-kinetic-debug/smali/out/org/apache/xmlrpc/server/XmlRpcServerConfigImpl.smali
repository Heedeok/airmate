.class public Lorg/apache/xmlrpc/server/XmlRpcServerConfigImpl;
.super Lorg/apache/xmlrpc/XmlRpcConfigImpl;
.source "XmlRpcServerConfigImpl.java"

# interfaces
.implements Lorg/apache/xmlrpc/server/XmlRpcServerConfig;
.implements Lorg/apache/xmlrpc/server/XmlRpcHttpServerConfig;


# instance fields
.field private isEnabledForExceptions:Z

.field private isKeepAliveEnabled:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Lorg/apache/xmlrpc/XmlRpcConfigImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public isEnabledForExceptions()Z
    .registers 2

    .line 47
    iget-boolean v0, p0, Lorg/apache/xmlrpc/server/XmlRpcServerConfigImpl;->isEnabledForExceptions:Z

    return v0
.end method

.method public isKeepAliveEnabled()Z
    .registers 2

    .line 38
    iget-boolean v0, p0, Lorg/apache/xmlrpc/server/XmlRpcServerConfigImpl;->isKeepAliveEnabled:Z

    return v0
.end method

.method public setEnabledForExceptions(Z)V
    .registers 2
    .param p1, "pEnabledForExceptions"    # Z

    .line 44
    iput-boolean p1, p0, Lorg/apache/xmlrpc/server/XmlRpcServerConfigImpl;->isEnabledForExceptions:Z

    .line 45
    return-void
.end method

.method public setKeepAliveEnabled(Z)V
    .registers 2
    .param p1, "pKeepAliveEnabled"    # Z

    .line 35
    iput-boolean p1, p0, Lorg/apache/xmlrpc/server/XmlRpcServerConfigImpl;->isKeepAliveEnabled:Z

    .line 36
    return-void
.end method
