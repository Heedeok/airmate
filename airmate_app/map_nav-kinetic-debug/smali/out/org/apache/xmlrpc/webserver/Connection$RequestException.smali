.class abstract Lorg/apache/xmlrpc/webserver/Connection$RequestException;
.super Ljava/io/IOException;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlrpc/webserver/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "RequestException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1d557ce49e300efdL


# instance fields
.field private final requestData:Lorg/apache/xmlrpc/webserver/RequestData;


# direct methods
.method constructor <init>(Lorg/apache/xmlrpc/webserver/RequestData;Ljava/lang/String;)V
    .registers 3
    .param p1, "pData"    # Lorg/apache/xmlrpc/webserver/RequestData;
    .param p2, "pMessage"    # Ljava/lang/String;

    .line 66
    invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 67
    iput-object p1, p0, Lorg/apache/xmlrpc/webserver/Connection$RequestException;->requestData:Lorg/apache/xmlrpc/webserver/RequestData;

    .line 68
    return-void
.end method

.method static synthetic access$000(Lorg/apache/xmlrpc/webserver/Connection$RequestException;)Lorg/apache/xmlrpc/webserver/RequestData;
    .registers 2
    .param p0, "x0"    # Lorg/apache/xmlrpc/webserver/Connection$RequestException;

    .line 61
    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/Connection$RequestException;->requestData:Lorg/apache/xmlrpc/webserver/RequestData;

    return-object v0
.end method


# virtual methods
.method getRequestData()Lorg/apache/xmlrpc/webserver/RequestData;
    .registers 2

    .line 69
    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/Connection$RequestException;->requestData:Lorg/apache/xmlrpc/webserver/RequestData;

    return-object v0
.end method
