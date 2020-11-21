.class public Lorg/apache/commons/net/telnet/InvalidTelnetOptionException;
.super Ljava/lang/Exception;
.source "InvalidTelnetOptionException.java"


# instance fields
.field private msg:Ljava/lang/String;

.field private optionCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "optcode"    # I

    .line 47
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/net/telnet/InvalidTelnetOptionException;->optionCode:I

    .line 48
    iput p2, p0, Lorg/apache/commons/net/telnet/InvalidTelnetOptionException;->optionCode:I

    .line 49
    iput-object p1, p0, Lorg/apache/commons/net/telnet/InvalidTelnetOptionException;->msg:Ljava/lang/String;

    .line 50
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .registers 3

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/commons/net/telnet/InvalidTelnetOptionException;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/commons/net/telnet/InvalidTelnetOptionException;->optionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
