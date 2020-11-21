.class public abstract Lorg/apache/xmlrpc/XmlRpcConfigImpl;
.super Ljava/lang/Object;
.source "XmlRpcConfigImpl.java"

# interfaces
.implements Lorg/apache/xmlrpc/XmlRpcConfig;
.implements Lorg/apache/xmlrpc/common/XmlRpcHttpConfig;


# instance fields
.field private basicEncoding:Ljava/lang/String;

.field private contentLengthOptional:Z

.field private enabledForExtensions:Z

.field private encoding:Ljava/lang/String;

.field private timeZone:Ljava/util/TimeZone;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlrpc/XmlRpcConfigImpl;->timeZone:Ljava/util/TimeZone;

    return-void
.end method


# virtual methods
.method public getBasicEncoding()Ljava/lang/String;
    .registers 2

    .line 54
    iget-object v0, p0, Lorg/apache/xmlrpc/XmlRpcConfigImpl;->basicEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .registers 2

    .line 64
    iget-object v0, p0, Lorg/apache/xmlrpc/XmlRpcConfigImpl;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .registers 2

    .line 80
    iget-object v0, p0, Lorg/apache/xmlrpc/XmlRpcConfigImpl;->timeZone:Ljava/util/TimeZone;

    return-object v0
.end method

.method public isContentLengthOptional()Z
    .registers 2

    .line 67
    iget-boolean v0, p0, Lorg/apache/xmlrpc/XmlRpcConfigImpl;->contentLengthOptional:Z

    return v0
.end method

.method public isEnabledForExtensions()Z
    .registers 2

    .line 35
    iget-boolean v0, p0, Lorg/apache/xmlrpc/XmlRpcConfigImpl;->enabledForExtensions:Z

    return v0
.end method

.method public setBasicEncoding(Ljava/lang/String;)V
    .registers 2
    .param p1, "pEncoding"    # Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lorg/apache/xmlrpc/XmlRpcConfigImpl;->basicEncoding:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setContentLengthOptional(Z)V
    .registers 2
    .param p1, "pContentLengthOptional"    # Z

    .line 76
    iput-boolean p1, p0, Lorg/apache/xmlrpc/XmlRpcConfigImpl;->contentLengthOptional:Z

    .line 77
    return-void
.end method

.method public setEnabledForExtensions(Z)V
    .registers 2
    .param p1, "pExtensions"    # Z

    .line 43
    iput-boolean p1, p0, Lorg/apache/xmlrpc/XmlRpcConfigImpl;->enabledForExtensions:Z

    .line 44
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .registers 2
    .param p1, "pEncoding"    # Ljava/lang/String;

    .line 61
    iput-object p1, p0, Lorg/apache/xmlrpc/XmlRpcConfigImpl;->encoding:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .registers 2
    .param p1, "pTimeZone"    # Ljava/util/TimeZone;

    .line 87
    iput-object p1, p0, Lorg/apache/xmlrpc/XmlRpcConfigImpl;->timeZone:Ljava/util/TimeZone;

    .line 88
    return-void
.end method
