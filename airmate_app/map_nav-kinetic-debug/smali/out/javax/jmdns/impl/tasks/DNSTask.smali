.class public abstract Ljavax/jmdns/impl/tasks/DNSTask;
.super Ljava/util/TimerTask;
.source "DNSTask.java"


# instance fields
.field private final _jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;


# direct methods
.method protected constructor <init>(Ljavax/jmdns/impl/JmDNSImpl;)V
    .registers 2
    .param p1, "jmDNSImpl"    # Ljavax/jmdns/impl/JmDNSImpl;

    .line 31
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 32
    iput-object p1, p0, Ljavax/jmdns/impl/tasks/DNSTask;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    .line 33
    return-void
.end method


# virtual methods
.method public addAdditionalAnswer(Ljavax/jmdns/impl/DNSOutgoing;Ljavax/jmdns/impl/DNSIncoming;Ljavax/jmdns/impl/DNSRecord;)Ljavax/jmdns/impl/DNSOutgoing;
    .registers 11
    .param p1, "out"    # Ljavax/jmdns/impl/DNSOutgoing;
    .param p2, "in"    # Ljavax/jmdns/impl/DNSIncoming;
    .param p3, "rec"    # Ljavax/jmdns/impl/DNSRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    move-object v0, p1

    .line 206
    .local v0, "newOut":Ljavax/jmdns/impl/DNSOutgoing;
    :try_start_1
    invoke-virtual {v0, p2, p3}, Ljavax/jmdns/impl/DNSOutgoing;->addAdditionalAnswer(Ljavax/jmdns/impl/DNSIncoming;Ljavax/jmdns/impl/DNSRecord;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4} :catch_5

    .line 219
    goto :goto_2c

    .line 207
    :catch_5
    move-exception v1

    .line 208
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljavax/jmdns/impl/DNSOutgoing;->getFlags()I

    move-result v2

    .line 209
    .local v2, "flags":I
    invoke-virtual {v0}, Ljavax/jmdns/impl/DNSOutgoing;->isMulticast()Z

    move-result v3

    .line 210
    .local v3, "multicast":Z
    invoke-virtual {v0}, Ljavax/jmdns/impl/DNSOutgoing;->getMaxUDPPayload()I

    move-result v4

    .line 211
    .local v4, "maxUDPPayload":I
    invoke-virtual {v0}, Ljavax/jmdns/impl/DNSOutgoing;->getId()I

    move-result v5

    .line 213
    .local v5, "id":I
    or-int/lit16 v6, v2, 0x200

    invoke-virtual {v0, v6}, Ljavax/jmdns/impl/DNSOutgoing;->setFlags(I)V

    .line 214
    invoke-virtual {v0, v5}, Ljavax/jmdns/impl/DNSOutgoing;->setId(I)V

    .line 215
    iget-object v6, p0, Ljavax/jmdns/impl/tasks/DNSTask;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v6, v0}, Ljavax/jmdns/impl/JmDNSImpl;->send(Ljavax/jmdns/impl/DNSOutgoing;)V

    .line 217
    new-instance v6, Ljavax/jmdns/impl/DNSOutgoing;

    invoke-direct {v6, v2, v3, v4}, Ljavax/jmdns/impl/DNSOutgoing;-><init>(IZI)V

    move-object v0, v6

    .line 218
    invoke-virtual {v0, p2, p3}, Ljavax/jmdns/impl/DNSOutgoing;->addAdditionalAnswer(Ljavax/jmdns/impl/DNSIncoming;Ljavax/jmdns/impl/DNSRecord;)V

    .line 220
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "flags":I
    .end local v3    # "multicast":Z
    .end local v4    # "maxUDPPayload":I
    .end local v5    # "id":I
    :goto_2c
    return-object v0
.end method

.method public addAnswer(Ljavax/jmdns/impl/DNSOutgoing;Ljavax/jmdns/impl/DNSIncoming;Ljavax/jmdns/impl/DNSRecord;)Ljavax/jmdns/impl/DNSOutgoing;
    .registers 11
    .param p1, "out"    # Ljavax/jmdns/impl/DNSOutgoing;
    .param p2, "in"    # Ljavax/jmdns/impl/DNSIncoming;
    .param p3, "rec"    # Ljavax/jmdns/impl/DNSRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    move-object v0, p1

    .line 113
    .local v0, "newOut":Ljavax/jmdns/impl/DNSOutgoing;
    :try_start_1
    invoke-virtual {v0, p2, p3}, Ljavax/jmdns/impl/DNSOutgoing;->addAnswer(Ljavax/jmdns/impl/DNSIncoming;Ljavax/jmdns/impl/DNSRecord;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4} :catch_5

    .line 126
    goto :goto_2c

    .line 114
    :catch_5
    move-exception v1

    .line 115
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljavax/jmdns/impl/DNSOutgoing;->getFlags()I

    move-result v2

    .line 116
    .local v2, "flags":I
    invoke-virtual {v0}, Ljavax/jmdns/impl/DNSOutgoing;->isMulticast()Z

    move-result v3

    .line 117
    .local v3, "multicast":Z
    invoke-virtual {v0}, Ljavax/jmdns/impl/DNSOutgoing;->getMaxUDPPayload()I

    move-result v4

    .line 118
    .local v4, "maxUDPPayload":I
    invoke-virtual {v0}, Ljavax/jmdns/impl/DNSOutgoing;->getId()I

    move-result v5

    .line 120
    .local v5, "id":I
    or-int/lit16 v6, v2, 0x200

    invoke-virtual {v0, v6}, Ljavax/jmdns/impl/DNSOutgoing;->setFlags(I)V

    .line 121
    invoke-virtual {v0, v5}, Ljavax/jmdns/impl/DNSOutgoing;->setId(I)V

    .line 122
    iget-object v6, p0, Ljavax/jmdns/impl/tasks/DNSTask;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v6, v0}, Ljavax/jmdns/impl/JmDNSImpl;->send(Ljavax/jmdns/impl/DNSOutgoing;)V

    .line 124
    new-instance v6, Ljavax/jmdns/impl/DNSOutgoing;

    invoke-direct {v6, v2, v3, v4}, Ljavax/jmdns/impl/DNSOutgoing;-><init>(IZI)V

    move-object v0, v6

    .line 125
    invoke-virtual {v0, p2, p3}, Ljavax/jmdns/impl/DNSOutgoing;->addAnswer(Ljavax/jmdns/impl/DNSIncoming;Ljavax/jmdns/impl/DNSRecord;)V

    .line 127
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "flags":I
    .end local v3    # "multicast":Z
    .end local v4    # "maxUDPPayload":I
    .end local v5    # "id":I
    :goto_2c
    return-object v0
.end method

.method public addAnswer(Ljavax/jmdns/impl/DNSOutgoing;Ljavax/jmdns/impl/DNSRecord;J)Ljavax/jmdns/impl/DNSOutgoing;
    .registers 12
    .param p1, "out"    # Ljavax/jmdns/impl/DNSOutgoing;
    .param p2, "rec"    # Ljavax/jmdns/impl/DNSRecord;
    .param p3, "now"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    move-object v0, p1

    .line 144
    .local v0, "newOut":Ljavax/jmdns/impl/DNSOutgoing;
    :try_start_1
    invoke-virtual {v0, p2, p3, p4}, Ljavax/jmdns/impl/DNSOutgoing;->addAnswer(Ljavax/jmdns/impl/DNSRecord;J)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4} :catch_5

    .line 157
    goto :goto_2c

    .line 145
    :catch_5
    move-exception v1

    .line 146
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljavax/jmdns/impl/DNSOutgoing;->getFlags()I

    move-result v2

    .line 147
    .local v2, "flags":I
    invoke-virtual {v0}, Ljavax/jmdns/impl/DNSOutgoing;->isMulticast()Z

    move-result v3

    .line 148
    .local v3, "multicast":Z
    invoke-virtual {v0}, Ljavax/jmdns/impl/DNSOutgoing;->getMaxUDPPayload()I

    move-result v4

    .line 149
    .local v4, "maxUDPPayload":I
    invoke-virtual {v0}, Ljavax/jmdns/impl/DNSOutgoing;->getId()I

    move-result v5

    .line 151
    .local v5, "id":I
    or-int/lit16 v6, v2, 0x200

    invoke-virtual {v0, v6}, Ljavax/jmdns/impl/DNSOutgoing;->setFlags(I)V

    .line 152
    invoke-virtual {v0, v5}, Ljavax/jmdns/impl/DNSOutgoing;->setId(I)V

    .line 153
    iget-object v6, p0, Ljavax/jmdns/impl/tasks/DNSTask;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v6, v0}, Ljavax/jmdns/impl/JmDNSImpl;->send(Ljavax/jmdns/impl/DNSOutgoing;)V

    .line 155
    new-instance v6, Ljavax/jmdns/impl/DNSOutgoing;

    invoke-direct {v6, v2, v3, v4}, Ljavax/jmdns/impl/DNSOutgoing;-><init>(IZI)V

    move-object v0, v6

    .line 156
    invoke-virtual {v0, p2, p3, p4}, Ljavax/jmdns/impl/DNSOutgoing;->addAnswer(Ljavax/jmdns/impl/DNSRecord;J)V

    .line 158
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "flags":I
    .end local v3    # "multicast":Z
    .end local v4    # "maxUDPPayload":I
    .end local v5    # "id":I
    :goto_2c
    return-object v0
.end method

.method public addAuthoritativeAnswer(Ljavax/jmdns/impl/DNSOutgoing;Ljavax/jmdns/impl/DNSRecord;)Ljavax/jmdns/impl/DNSOutgoing;
    .registers 10
    .param p1, "out"    # Ljavax/jmdns/impl/DNSOutgoing;
    .param p2, "rec"    # Ljavax/jmdns/impl/DNSRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    move-object v0, p1

    .line 174
    .local v0, "newOut":Ljavax/jmdns/impl/DNSOutgoing;
    :try_start_1
    invoke-virtual {v0, p2}, Ljavax/jmdns/impl/DNSOutgoing;->addAuthorativeAnswer(Ljavax/jmdns/impl/DNSRecord;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4} :catch_5

    .line 187
    goto :goto_2c

    .line 175
    :catch_5
    move-exception v1

    .line 176
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljavax/jmdns/impl/DNSOutgoing;->getFlags()I

    move-result v2

    .line 177
    .local v2, "flags":I
    invoke-virtual {v0}, Ljavax/jmdns/impl/DNSOutgoing;->isMulticast()Z

    move-result v3

    .line 178
    .local v3, "multicast":Z
    invoke-virtual {v0}, Ljavax/jmdns/impl/DNSOutgoing;->getMaxUDPPayload()I

    move-result v4

    .line 179
    .local v4, "maxUDPPayload":I
    invoke-virtual {v0}, Ljavax/jmdns/impl/DNSOutgoing;->getId()I

    move-result v5

    .line 181
    .local v5, "id":I
    or-int/lit16 v6, v2, 0x200

    invoke-virtual {v0, v6}, Ljavax/jmdns/impl/DNSOutgoing;->setFlags(I)V

    .line 182
    invoke-virtual {v0, v5}, Ljavax/jmdns/impl/DNSOutgoing;->setId(I)V

    .line 183
    iget-object v6, p0, Ljavax/jmdns/impl/tasks/DNSTask;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v6, v0}, Ljavax/jmdns/impl/JmDNSImpl;->send(Ljavax/jmdns/impl/DNSOutgoing;)V

    .line 185
    new-instance v6, Ljavax/jmdns/impl/DNSOutgoing;

    invoke-direct {v6, v2, v3, v4}, Ljavax/jmdns/impl/DNSOutgoing;-><init>(IZI)V

    move-object v0, v6

    .line 186
    invoke-virtual {v0, p2}, Ljavax/jmdns/impl/DNSOutgoing;->addAuthorativeAnswer(Ljavax/jmdns/impl/DNSRecord;)V

    .line 188
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "flags":I
    .end local v3    # "multicast":Z
    .end local v4    # "maxUDPPayload":I
    .end local v5    # "id":I
    :goto_2c
    return-object v0
.end method

.method public addQuestion(Ljavax/jmdns/impl/DNSOutgoing;Ljavax/jmdns/impl/DNSQuestion;)Ljavax/jmdns/impl/DNSOutgoing;
    .registers 10
    .param p1, "out"    # Ljavax/jmdns/impl/DNSOutgoing;
    .param p2, "rec"    # Ljavax/jmdns/impl/DNSQuestion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    move-object v0, p1

    .line 81
    .local v0, "newOut":Ljavax/jmdns/impl/DNSOutgoing;
    :try_start_1
    invoke-virtual {v0, p2}, Ljavax/jmdns/impl/DNSOutgoing;->addQuestion(Ljavax/jmdns/impl/DNSQuestion;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4} :catch_5

    .line 94
    goto :goto_2c

    .line 82
    :catch_5
    move-exception v1

    .line 83
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljavax/jmdns/impl/DNSOutgoing;->getFlags()I

    move-result v2

    .line 84
    .local v2, "flags":I
    invoke-virtual {v0}, Ljavax/jmdns/impl/DNSOutgoing;->isMulticast()Z

    move-result v3

    .line 85
    .local v3, "multicast":Z
    invoke-virtual {v0}, Ljavax/jmdns/impl/DNSOutgoing;->getMaxUDPPayload()I

    move-result v4

    .line 86
    .local v4, "maxUDPPayload":I
    invoke-virtual {v0}, Ljavax/jmdns/impl/DNSOutgoing;->getId()I

    move-result v5

    .line 88
    .local v5, "id":I
    or-int/lit16 v6, v2, 0x200

    invoke-virtual {v0, v6}, Ljavax/jmdns/impl/DNSOutgoing;->setFlags(I)V

    .line 89
    invoke-virtual {v0, v5}, Ljavax/jmdns/impl/DNSOutgoing;->setId(I)V

    .line 90
    iget-object v6, p0, Ljavax/jmdns/impl/tasks/DNSTask;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v6, v0}, Ljavax/jmdns/impl/JmDNSImpl;->send(Ljavax/jmdns/impl/DNSOutgoing;)V

    .line 92
    new-instance v6, Ljavax/jmdns/impl/DNSOutgoing;

    invoke-direct {v6, v2, v3, v4}, Ljavax/jmdns/impl/DNSOutgoing;-><init>(IZI)V

    move-object v0, v6

    .line 93
    invoke-virtual {v0, p2}, Ljavax/jmdns/impl/DNSOutgoing;->addQuestion(Ljavax/jmdns/impl/DNSQuestion;)V

    .line 95
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "flags":I
    .end local v3    # "multicast":Z
    .end local v4    # "maxUDPPayload":I
    .end local v5    # "id":I
    :goto_2c
    return-object v0
.end method

.method public getDns()Ljavax/jmdns/impl/JmDNSImpl;
    .registers 2

    .line 41
    iget-object v0, p0, Ljavax/jmdns/impl/tasks/DNSTask;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    return-object v0
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract start(Ljava/util/Timer;)V
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 65
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/DNSTask;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
