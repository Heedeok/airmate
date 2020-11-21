.class public Lorg/apache/commons/net/nntp/SimpleNNTPHeader;
.super Ljava/lang/Object;
.source "SimpleNNTPHeader.java"


# instance fields
.field private __from:Ljava/lang/String;

.field private __headerFields:Ljava/lang/StringBuilder;

.field private __newsgroupCount:I

.field private __newsgroups:Ljava/lang/StringBuilder;

.field private __subject:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "from"    # Ljava/lang/String;
    .param p2, "subject"    # Ljava/lang/String;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lorg/apache/commons/net/nntp/SimpleNNTPHeader;->__from:Ljava/lang/String;

    .line 68
    iput-object p2, p0, Lorg/apache/commons/net/nntp/SimpleNNTPHeader;->__subject:Ljava/lang/String;

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/net/nntp/SimpleNNTPHeader;->__newsgroups:Ljava/lang/StringBuilder;

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/net/nntp/SimpleNNTPHeader;->__headerFields:Ljava/lang/StringBuilder;

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/net/nntp/SimpleNNTPHeader;->__newsgroupCount:I

    .line 72
    return-void
.end method


# virtual methods
.method public addHeaderField(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "headerField"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lorg/apache/commons/net/nntp/SimpleNNTPHeader;->__headerFields:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    iget-object v0, p0, Lorg/apache/commons/net/nntp/SimpleNNTPHeader;->__headerFields:Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    iget-object v0, p0, Lorg/apache/commons/net/nntp/SimpleNNTPHeader;->__headerFields:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    iget-object v0, p0, Lorg/apache/commons/net/nntp/SimpleNNTPHeader;->__headerFields:Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 105
    return-void
.end method

.method public addNewsgroup(Ljava/lang/String;)V
    .registers 4
    .param p1, "newsgroup"    # Ljava/lang/String;

    .line 82
    iget v0, p0, Lorg/apache/commons/net/nntp/SimpleNNTPHeader;->__newsgroupCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/commons/net/nntp/SimpleNNTPHeader;->__newsgroupCount:I

    if-lez v0, :cond_f

    .line 83
    iget-object v0, p0, Lorg/apache/commons/net/nntp/SimpleNNTPHeader;->__newsgroups:Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 84
    :cond_f
    iget-object v0, p0, Lorg/apache/commons/net/nntp/SimpleNNTPHeader;->__newsgroups:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    return-void
.end method

.method public getFromAddress()Ljava/lang/String;
    .registers 2

    .line 115
    iget-object v0, p0, Lorg/apache/commons/net/nntp/SimpleNNTPHeader;->__from:Ljava/lang/String;

    return-object v0
.end method

.method public getNewsgroups()Ljava/lang/String;
    .registers 2

    .line 136
    iget-object v0, p0, Lorg/apache/commons/net/nntp/SimpleNNTPHeader;->__newsgroups:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .registers 2

    .line 125
    iget-object v0, p0, Lorg/apache/commons/net/nntp/SimpleNNTPHeader;->__subject:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 149
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 151
    .local v0, "header":Ljava/lang/StringBuffer;
    const-string v1, "From: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 152
    iget-object v1, p0, Lorg/apache/commons/net/nntp/SimpleNNTPHeader;->__from:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    const-string v1, "\nNewsgroups: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 154
    iget-object v1, p0, Lorg/apache/commons/net/nntp/SimpleNNTPHeader;->__newsgroups:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 155
    const-string v1, "\nSubject: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 156
    iget-object v1, p0, Lorg/apache/commons/net/nntp/SimpleNNTPHeader;->__subject:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 157
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 158
    iget-object v2, p0, Lorg/apache/commons/net/nntp/SimpleNNTPHeader;->__headerFields:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_3d

    .line 159
    iget-object v2, p0, Lorg/apache/commons/net/nntp/SimpleNNTPHeader;->__headerFields:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 160
    :cond_3d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 162
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
