.class public Lorg/apache/xmlrpc/XmlRpcException;
.super Ljava/lang/Exception;
.source "XmlRpcException.java"


# static fields
.field private static final serialVersionUID:J = 0x2d39343732333032L


# instance fields
.field public final code:I

.field public final linkedException:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 4
    .param p1, "pCode"    # I
    .param p2, "pMessage"    # Ljava/lang/String;

    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/xmlrpc/XmlRpcException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "pCode"    # I
    .param p2, "pMessage"    # Ljava/lang/String;
    .param p3, "pLinkedException"    # Ljava/lang/Throwable;

    .line 79
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 80
    iput p1, p0, Lorg/apache/xmlrpc/XmlRpcException;->code:I

    .line 81
    iput-object p3, p0, Lorg/apache/xmlrpc/XmlRpcException;->linkedException:Ljava/lang/Throwable;

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "pMessage"    # Ljava/lang/String;

    .line 69
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/xmlrpc/XmlRpcException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "pMessage"    # Ljava/lang/String;
    .param p2, "pLinkedException"    # Ljava/lang/Throwable;

    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/xmlrpc/XmlRpcException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .registers 2

    .line 101
    iget-object v0, p0, Lorg/apache/xmlrpc/XmlRpcException;->linkedException:Ljava/lang/Throwable;

    return-object v0
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .registers 3
    .param p1, "pStream"    # Ljava/io/PrintStream;

    .line 85
    invoke-super {p0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 86
    iget-object v0, p0, Lorg/apache/xmlrpc/XmlRpcException;->linkedException:Ljava/lang/Throwable;

    if-eqz v0, :cond_11

    .line 87
    const-string v0, "Caused by:"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lorg/apache/xmlrpc/XmlRpcException;->linkedException:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 90
    :cond_11
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "pWriter"    # Ljava/io/PrintWriter;

    .line 93
    invoke-super {p0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 94
    iget-object v0, p0, Lorg/apache/xmlrpc/XmlRpcException;->linkedException:Ljava/lang/Throwable;

    if-eqz v0, :cond_11

    .line 95
    const-string v0, "Caused by:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lorg/apache/xmlrpc/XmlRpcException;->linkedException:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 98
    :cond_11
    return-void
.end method
