.class Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport$1$2;
.super Ljava/io/BufferedOutputStream;
.source "XmlRpcCommonsTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport$1;->writeRequest(Ljava/io/OutputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport$1;


# direct methods
.method constructor <init>(Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport$1;Ljava/io/OutputStream;)V
    .registers 3
    .param p1, "this$1"    # Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport$1;
    .param p2, "x0"    # Ljava/io/OutputStream;

    .line 208
    iput-object p1, p0, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport$1$2;->this$1:Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport$1;

    invoke-direct {p0, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

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

    .line 210
    invoke-virtual {p0}, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport$1$2;->flush()V

    .line 211
    return-void
.end method
