.class public final Lorg/apache/commons/net/pop3/POP3MessageInfo;
.super Ljava/lang/Object;
.source "POP3MessageInfo.java"


# instance fields
.field public identifier:Ljava/lang/String;

.field public number:I

.field public size:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/net/pop3/POP3MessageInfo;->size:I

    iput v0, p0, Lorg/apache/commons/net/pop3/POP3MessageInfo;->number:I

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/pop3/POP3MessageInfo;->identifier:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public constructor <init>(II)V
    .registers 4
    .param p1, "num"    # I
    .param p2, "octets"    # I

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput p1, p0, Lorg/apache/commons/net/pop3/POP3MessageInfo;->number:I

    .line 67
    iput p2, p0, Lorg/apache/commons/net/pop3/POP3MessageInfo;->size:I

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/pop3/POP3MessageInfo;->identifier:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 4
    .param p1, "num"    # I
    .param p2, "uid"    # Ljava/lang/String;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput p1, p0, Lorg/apache/commons/net/pop3/POP3MessageInfo;->number:I

    .line 79
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/net/pop3/POP3MessageInfo;->size:I

    .line 80
    iput-object p2, p0, Lorg/apache/commons/net/pop3/POP3MessageInfo;->identifier:Ljava/lang/String;

    .line 81
    return-void
.end method
