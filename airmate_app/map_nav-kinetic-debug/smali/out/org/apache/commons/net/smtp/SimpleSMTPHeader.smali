.class public Lorg/apache/commons/net/smtp/SimpleSMTPHeader;
.super Ljava/lang/Object;
.source "SimpleSMTPHeader.java"


# instance fields
.field private __cc:Ljava/lang/StringBuffer;

.field private __from:Ljava/lang/String;

.field private __headerFields:Ljava/lang/StringBuffer;

.field private __subject:Ljava/lang/String;

.field private __to:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "from"    # Ljava/lang/String;
    .param p2, "to"    # Ljava/lang/String;
    .param p3, "subject"    # Ljava/lang/String;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p2, p0, Lorg/apache/commons/net/smtp/SimpleSMTPHeader;->__to:Ljava/lang/String;

    .line 69
    iput-object p1, p0, Lorg/apache/commons/net/smtp/SimpleSMTPHeader;->__from:Ljava/lang/String;

    .line 70
    iput-object p3, p0, Lorg/apache/commons/net/smtp/SimpleSMTPHeader;->__subject:Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/net/smtp/SimpleSMTPHeader;->__headerFields:Ljava/lang/StringBuffer;

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/smtp/SimpleSMTPHeader;->__cc:Ljava/lang/StringBuffer;

    .line 73
    return-void
.end method


# virtual methods
.method public addCC(Ljava/lang/String;)V
    .registers 4
    .param p1, "address"    # Ljava/lang/String;

    .line 103
    iget-object v0, p0, Lorg/apache/commons/net/smtp/SimpleSMTPHeader;->__cc:Ljava/lang/StringBuffer;

    if-nez v0, :cond_c

    .line 104
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/net/smtp/SimpleSMTPHeader;->__cc:Ljava/lang/StringBuffer;

    goto :goto_13

    .line 106
    :cond_c
    iget-object v0, p0, Lorg/apache/commons/net/smtp/SimpleSMTPHeader;->__cc:Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    :goto_13
    iget-object v0, p0, Lorg/apache/commons/net/smtp/SimpleSMTPHeader;->__cc:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    return-void
.end method

.method public addHeaderField(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "headerField"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 89
    iget-object v0, p0, Lorg/apache/commons/net/smtp/SimpleSMTPHeader;->__headerFields:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    iget-object v0, p0, Lorg/apache/commons/net/smtp/SimpleSMTPHeader;->__headerFields:Ljava/lang/StringBuffer;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    iget-object v0, p0, Lorg/apache/commons/net/smtp/SimpleSMTPHeader;->__headerFields:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    iget-object v0, p0, Lorg/apache/commons/net/smtp/SimpleSMTPHeader;->__headerFields:Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 93
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 123
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 125
    .local v0, "header":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lorg/apache/commons/net/smtp/SimpleSMTPHeader;->__headerFields:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_16

    .line 126
    iget-object v1, p0, Lorg/apache/commons/net/smtp/SimpleSMTPHeader;->__headerFields:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    :cond_16
    const-string v1, "From: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    iget-object v1, p0, Lorg/apache/commons/net/smtp/SimpleSMTPHeader;->__from:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    const-string v1, "\nTo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    iget-object v1, p0, Lorg/apache/commons/net/smtp/SimpleSMTPHeader;->__to:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    iget-object v1, p0, Lorg/apache/commons/net/smtp/SimpleSMTPHeader;->__cc:Ljava/lang/StringBuffer;

    if-eqz v1, :cond_3c

    .line 135
    const-string v1, "\nCc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    iget-object v1, p0, Lorg/apache/commons/net/smtp/SimpleSMTPHeader;->__cc:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    :cond_3c
    iget-object v1, p0, Lorg/apache/commons/net/smtp/SimpleSMTPHeader;->__subject:Ljava/lang/String;

    if-eqz v1, :cond_4a

    .line 141
    const-string v1, "\nSubject: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 142
    iget-object v1, p0, Lorg/apache/commons/net/smtp/SimpleSMTPHeader;->__subject:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 145
    :cond_4a
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 148
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
