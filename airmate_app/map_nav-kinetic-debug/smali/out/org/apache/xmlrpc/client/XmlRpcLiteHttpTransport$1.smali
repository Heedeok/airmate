.class Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport$1;
.super Ljava/io/BufferedOutputStream;
.source "XmlRpcLiteHttpTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->getOutputStream()Ljava/io/OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;


# direct methods
.method constructor <init>(Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;Ljava/io/OutputStream;)V
    .registers 3
    .param p1, "this$0"    # Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;
    .param p2, "x0"    # Ljava/io/OutputStream;

    .line 142
    iput-object p1, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport$1;->this$0:Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;

    invoke-direct {p0, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    invoke-virtual {p0}, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport$1;->flush()V

    .line 150
    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport$1;->this$0:Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;

    invoke-static {v0}, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->access$000(Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownOutput()V

    .line 151
    return-void
.end method
