.class public Lorg/apache/commons/net/PrintCommandListener;
.super Ljava/lang/Object;
.source "PrintCommandListener.java"

# interfaces
.implements Lorg/apache/commons/net/ProtocolCommandListener;


# instance fields
.field private __writer:Ljava/io/PrintWriter;


# direct methods
.method public constructor <init>(Ljava/io/PrintWriter;)V
    .registers 2
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/apache/commons/net/PrintCommandListener;->__writer:Ljava/io/PrintWriter;

    .line 40
    return-void
.end method


# virtual methods
.method public protocolCommandSent(Lorg/apache/commons/net/ProtocolCommandEvent;)V
    .registers 4
    .param p1, "event"    # Lorg/apache/commons/net/ProtocolCommandEvent;

    .line 44
    iget-object v0, p0, Lorg/apache/commons/net/PrintCommandListener;->__writer:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Lorg/apache/commons/net/ProtocolCommandEvent;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lorg/apache/commons/net/PrintCommandListener;->__writer:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 46
    return-void
.end method

.method public protocolReplyReceived(Lorg/apache/commons/net/ProtocolCommandEvent;)V
    .registers 4
    .param p1, "event"    # Lorg/apache/commons/net/ProtocolCommandEvent;

    .line 50
    iget-object v0, p0, Lorg/apache/commons/net/PrintCommandListener;->__writer:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Lorg/apache/commons/net/ProtocolCommandEvent;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lorg/apache/commons/net/PrintCommandListener;->__writer:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 52
    return-void
.end method
