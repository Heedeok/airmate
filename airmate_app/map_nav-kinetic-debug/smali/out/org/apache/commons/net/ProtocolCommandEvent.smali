.class public Lorg/apache/commons/net/ProtocolCommandEvent;
.super Ljava/util/EventObject;
.source "ProtocolCommandEvent.java"


# instance fields
.field private __command:Ljava/lang/String;

.field private __isCommand:Z

.field private __message:Ljava/lang/String;

.field private __replyCode:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;ILjava/lang/String;)V
    .registers 5
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "replyCode"    # I
    .param p3, "message"    # Ljava/lang/String;

    .line 80
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 81
    iput p2, p0, Lorg/apache/commons/net/ProtocolCommandEvent;->__replyCode:I

    .line 82
    iput-object p3, p0, Lorg/apache/commons/net/ProtocolCommandEvent;->__message:Ljava/lang/String;

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/net/ProtocolCommandEvent;->__isCommand:Z

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/ProtocolCommandEvent;->__command:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;

    .line 56
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/net/ProtocolCommandEvent;->__replyCode:I

    .line 58
    iput-object p3, p0, Lorg/apache/commons/net/ProtocolCommandEvent;->__message:Ljava/lang/String;

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/net/ProtocolCommandEvent;->__isCommand:Z

    .line 60
    iput-object p2, p0, Lorg/apache/commons/net/ProtocolCommandEvent;->__command:Ljava/lang/String;

    .line 61
    return-void
.end method


# virtual methods
.method public getCommand()Ljava/lang/String;
    .registers 2

    .line 97
    iget-object v0, p0, Lorg/apache/commons/net/ProtocolCommandEvent;->__command:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .line 144
    iget-object v0, p0, Lorg/apache/commons/net/ProtocolCommandEvent;->__message:Ljava/lang/String;

    return-object v0
.end method

.method public getReplyCode()I
    .registers 2

    .line 110
    iget v0, p0, Lorg/apache/commons/net/ProtocolCommandEvent;->__replyCode:I

    return v0
.end method

.method public isCommand()Z
    .registers 2

    .line 122
    iget-boolean v0, p0, Lorg/apache/commons/net/ProtocolCommandEvent;->__isCommand:Z

    return v0
.end method

.method public isReply()Z
    .registers 2

    .line 134
    invoke-virtual {p0}, Lorg/apache/commons/net/ProtocolCommandEvent;->isCommand()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
