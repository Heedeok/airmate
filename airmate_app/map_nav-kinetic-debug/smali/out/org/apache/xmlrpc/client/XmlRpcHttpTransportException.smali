.class public Lorg/apache/xmlrpc/client/XmlRpcHttpTransportException;
.super Lorg/apache/xmlrpc/XmlRpcException;
.source "XmlRpcHttpTransportException.java"


# static fields
.field private static final serialVersionUID:J = -0x603a7dc74adfe16bL


# instance fields
.field private final status:I

.field private final statusMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 5
    .param p1, "pCode"    # I
    .param p2, "pMessage"    # Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HTTP server returned unexpected status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/xmlrpc/client/XmlRpcHttpTransportException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "httpStatusCode"    # I
    .param p2, "httpStatusMessage"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;

    .line 35
    invoke-direct {p0, p3}, Lorg/apache/xmlrpc/XmlRpcException;-><init>(Ljava/lang/String;)V

    .line 36
    iput p1, p0, Lorg/apache/xmlrpc/client/XmlRpcHttpTransportException;->status:I

    .line 37
    iput-object p2, p0, Lorg/apache/xmlrpc/client/XmlRpcHttpTransportException;->statusMessage:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public getStatusCode()I
    .registers 2

    .line 46
    iget v0, p0, Lorg/apache/xmlrpc/client/XmlRpcHttpTransportException;->status:I

    return v0
.end method

.method public getStatusMessage()Ljava/lang/String;
    .registers 2

    .line 55
    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcHttpTransportException;->statusMessage:Ljava/lang/String;

    return-object v0
.end method
