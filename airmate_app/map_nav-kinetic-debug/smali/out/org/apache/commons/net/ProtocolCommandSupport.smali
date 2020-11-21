.class public Lorg/apache/commons/net/ProtocolCommandSupport;
.super Ljava/lang/Object;
.source "ProtocolCommandSupport.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private __listeners:Lorg/apache/commons/net/util/ListenerList;

.field private __source:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .param p1, "source"    # Ljava/lang/Object;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lorg/apache/commons/net/util/ListenerList;

    invoke-direct {v0}, Lorg/apache/commons/net/util/ListenerList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/net/ProtocolCommandSupport;->__listeners:Lorg/apache/commons/net/util/ListenerList;

    .line 51
    iput-object p1, p0, Lorg/apache/commons/net/ProtocolCommandSupport;->__source:Ljava/lang/Object;

    .line 52
    return-void
.end method


# virtual methods
.method public addProtocolCommandListener(Lorg/apache/commons/net/ProtocolCommandListener;)V
    .registers 3
    .param p1, "listener"    # Lorg/apache/commons/net/ProtocolCommandListener;

    .line 109
    iget-object v0, p0, Lorg/apache/commons/net/ProtocolCommandSupport;->__listeners:Lorg/apache/commons/net/util/ListenerList;

    invoke-virtual {v0, p1}, Lorg/apache/commons/net/util/ListenerList;->addListener(Ljava/util/EventListener;)V

    .line 110
    return-void
.end method

.method public fireCommandSent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 70
    new-instance v0, Lorg/apache/commons/net/ProtocolCommandEvent;

    iget-object v1, p0, Lorg/apache/commons/net/ProtocolCommandSupport;->__source:Ljava/lang/Object;

    invoke-direct {v0, v1, p1, p2}, Lorg/apache/commons/net/ProtocolCommandEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .local v0, "event":Lorg/apache/commons/net/ProtocolCommandEvent;
    iget-object v1, p0, Lorg/apache/commons/net/ProtocolCommandSupport;->__listeners:Lorg/apache/commons/net/util/ListenerList;

    invoke-virtual {v1}, Lorg/apache/commons/net/util/ListenerList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/EventListener;

    .line 74
    .local v2, "listener":Ljava/util/EventListener;
    move-object v3, v2

    check-cast v3, Lorg/apache/commons/net/ProtocolCommandListener;

    invoke-interface {v3, v0}, Lorg/apache/commons/net/ProtocolCommandListener;->protocolCommandSent(Lorg/apache/commons/net/ProtocolCommandEvent;)V

    goto :goto_d

    .line 76
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "listener":Ljava/util/EventListener;
    :cond_20
    return-void
.end method

.method public fireReplyReceived(ILjava/lang/String;)V
    .registers 7
    .param p1, "replyCode"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 94
    new-instance v0, Lorg/apache/commons/net/ProtocolCommandEvent;

    iget-object v1, p0, Lorg/apache/commons/net/ProtocolCommandSupport;->__source:Ljava/lang/Object;

    invoke-direct {v0, v1, p1, p2}, Lorg/apache/commons/net/ProtocolCommandEvent;-><init>(Ljava/lang/Object;ILjava/lang/String;)V

    .line 96
    .local v0, "event":Lorg/apache/commons/net/ProtocolCommandEvent;
    iget-object v1, p0, Lorg/apache/commons/net/ProtocolCommandSupport;->__listeners:Lorg/apache/commons/net/util/ListenerList;

    invoke-virtual {v1}, Lorg/apache/commons/net/util/ListenerList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/EventListener;

    .line 98
    .local v2, "listener":Ljava/util/EventListener;
    move-object v3, v2

    check-cast v3, Lorg/apache/commons/net/ProtocolCommandListener;

    invoke-interface {v3, v0}, Lorg/apache/commons/net/ProtocolCommandListener;->protocolReplyReceived(Lorg/apache/commons/net/ProtocolCommandEvent;)V

    goto :goto_d

    .line 100
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "listener":Ljava/util/EventListener;
    :cond_20
    return-void
.end method

.method public getListenerCount()I
    .registers 2

    .line 130
    iget-object v0, p0, Lorg/apache/commons/net/ProtocolCommandSupport;->__listeners:Lorg/apache/commons/net/util/ListenerList;

    invoke-virtual {v0}, Lorg/apache/commons/net/util/ListenerList;->getListenerCount()I

    move-result v0

    return v0
.end method

.method public removeProtocolCommandListener(Lorg/apache/commons/net/ProtocolCommandListener;)V
    .registers 3
    .param p1, "listener"    # Lorg/apache/commons/net/ProtocolCommandListener;

    .line 119
    iget-object v0, p0, Lorg/apache/commons/net/ProtocolCommandSupport;->__listeners:Lorg/apache/commons/net/util/ListenerList;

    invoke-virtual {v0, p1}, Lorg/apache/commons/net/util/ListenerList;->removeListener(Ljava/util/EventListener;)V

    .line 120
    return-void
.end method
