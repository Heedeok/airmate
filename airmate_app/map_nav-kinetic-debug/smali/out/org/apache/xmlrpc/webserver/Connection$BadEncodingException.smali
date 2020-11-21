.class Lorg/apache/xmlrpc/webserver/Connection$BadEncodingException;
.super Lorg/apache/xmlrpc/webserver/Connection$RequestException;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlrpc/webserver/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BadEncodingException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x251d774fc6ed8ce0L


# direct methods
.method constructor <init>(Lorg/apache/xmlrpc/webserver/RequestData;Ljava/lang/String;)V
    .registers 3
    .param p1, "pData"    # Lorg/apache/xmlrpc/webserver/RequestData;
    .param p2, "pTransferEncoding"    # Ljava/lang/String;

    .line 75
    invoke-direct {p0, p1, p2}, Lorg/apache/xmlrpc/webserver/Connection$RequestException;-><init>(Lorg/apache/xmlrpc/webserver/RequestData;Ljava/lang/String;)V

    .line 76
    return-void
.end method
