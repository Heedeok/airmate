.class public abstract Lorg/apache/commons/httpclient/methods/multipart/PartBase;
.super Lorg/apache/commons/httpclient/methods/multipart/Part;
.source "PartBase.java"


# instance fields
.field private charSet:Ljava/lang/String;

.field private contentType:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private transferEncoding:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "charSet"    # Ljava/lang/String;
    .param p4, "transferEncoding"    # Ljava/lang/String;

    .line 61
    invoke-direct {p0}, Lorg/apache/commons/httpclient/methods/multipart/Part;-><init>()V

    .line 63
    if-eqz p1, :cond_e

    .line 66
    iput-object p1, p0, Lorg/apache/commons/httpclient/methods/multipart/PartBase;->name:Ljava/lang/String;

    .line 67
    iput-object p2, p0, Lorg/apache/commons/httpclient/methods/multipart/PartBase;->contentType:Ljava/lang/String;

    .line 68
    iput-object p3, p0, Lorg/apache/commons/httpclient/methods/multipart/PartBase;->charSet:Ljava/lang/String;

    .line 69
    iput-object p4, p0, Lorg/apache/commons/httpclient/methods/multipart/PartBase;->transferEncoding:Ljava/lang/String;

    .line 70
    return-void

    .line 64
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Name must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getCharSet()Ljava/lang/String;
    .registers 2

    .line 94
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/multipart/PartBase;->charSet:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .registers 2

    .line 86
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/multipart/PartBase;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 78
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/multipart/PartBase;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTransferEncoding()Ljava/lang/String;
    .registers 2

    .line 102
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/multipart/PartBase;->transferEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public setCharSet(Ljava/lang/String;)V
    .registers 2
    .param p1, "charSet"    # Ljava/lang/String;

    .line 112
    iput-object p1, p0, Lorg/apache/commons/httpclient/methods/multipart/PartBase;->charSet:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .registers 2
    .param p1, "contentType"    # Ljava/lang/String;

    .line 121
    iput-object p1, p0, Lorg/apache/commons/httpclient/methods/multipart/PartBase;->contentType:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 130
    if-eqz p1, :cond_5

    .line 133
    iput-object p1, p0, Lorg/apache/commons/httpclient/methods/multipart/PartBase;->name:Ljava/lang/String;

    .line 134
    return-void

    .line 131
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Name must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTransferEncoding(Ljava/lang/String;)V
    .registers 2
    .param p1, "transferEncoding"    # Ljava/lang/String;

    .line 143
    iput-object p1, p0, Lorg/apache/commons/httpclient/methods/multipart/PartBase;->transferEncoding:Ljava/lang/String;

    .line 144
    return-void
.end method
