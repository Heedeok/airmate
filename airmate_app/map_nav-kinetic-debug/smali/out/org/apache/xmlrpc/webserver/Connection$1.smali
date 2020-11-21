.class Lorg/apache/xmlrpc/webserver/Connection$1;
.super Ljava/io/BufferedInputStream;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/xmlrpc/webserver/Connection;-><init>(Lorg/apache/xmlrpc/webserver/WebServer;Lorg/apache/xmlrpc/server/XmlRpcStreamServer;Ljava/net/Socket;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/xmlrpc/webserver/Connection;


# direct methods
.method constructor <init>(Lorg/apache/xmlrpc/webserver/Connection;Ljava/io/InputStream;)V
    .registers 3
    .param p1, "this$0"    # Lorg/apache/xmlrpc/webserver/Connection;
    .param p2, "x0"    # Ljava/io/InputStream;

    .line 121
    iput-object p1, p0, Lorg/apache/xmlrpc/webserver/Connection$1;->this$0:Lorg/apache/xmlrpc/webserver/Connection;

    invoke-direct {p0, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    return-void
.end method
