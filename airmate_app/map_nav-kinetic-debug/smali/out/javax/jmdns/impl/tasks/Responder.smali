.class public Ljavax/jmdns/impl/tasks/Responder;
.super Ljavax/jmdns/impl/tasks/DNSTask;
.source "Responder.java"


# static fields
.field static logger:Ljava/util/logging/Logger;


# instance fields
.field private final _in:Ljavax/jmdns/impl/DNSIncoming;

.field private final _unicast:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 24
    const-class v0, Ljavax/jmdns/impl/tasks/Responder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljavax/jmdns/impl/tasks/Responder;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljavax/jmdns/impl/JmDNSImpl;Ljavax/jmdns/impl/DNSIncoming;I)V
    .registers 5
    .param p1, "jmDNSImpl"    # Ljavax/jmdns/impl/JmDNSImpl;
    .param p2, "in"    # Ljavax/jmdns/impl/DNSIncoming;
    .param p3, "port"    # I

    .line 37
    invoke-direct {p0, p1}, Ljavax/jmdns/impl/tasks/DNSTask;-><init>(Ljavax/jmdns/impl/JmDNSImpl;)V

    .line 38
    iput-object p2, p0, Ljavax/jmdns/impl/tasks/Responder;->_in:Ljavax/jmdns/impl/DNSIncoming;

    .line 39
    sget v0, Ljavax/jmdns/impl/constants/DNSConstants;->MDNS_PORT:I

    if-eq p3, v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    iput-boolean v0, p0, Ljavax/jmdns/impl/tasks/Responder;->_unicast:Z

    .line 40
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 3

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Responder("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/Responder;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    if-eqz v1, :cond_19

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/Responder;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/jmdns/impl/JmDNSImpl;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1b

    :cond_19
    const-string v1, ""

    :goto_1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .registers 10

    .line 97
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/Responder;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    iget-object v1, p0, Ljavax/jmdns/impl/tasks/Responder;->_in:Ljavax/jmdns/impl/DNSIncoming;

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/JmDNSImpl;->respondToQuery(Ljavax/jmdns/impl/DNSIncoming;)V

    .line 100
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 101
    .local v0, "questions":Ljava/util/Set;, "Ljava/util/Set<Ljavax/jmdns/impl/DNSQuestion;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 103
    .local v1, "answers":Ljava/util/Set;, "Ljava/util/Set<Ljavax/jmdns/impl/DNSRecord;>;"
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/Responder;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/jmdns/impl/JmDNSImpl;->isAnnounced()Z

    move-result v2

    if-eqz v2, :cond_15a

    .line 106
    :try_start_1d
    iget-object v2, p0, Ljavax/jmdns/impl/tasks/Responder;->_in:Ljavax/jmdns/impl/DNSIncoming;

    invoke-virtual {v2}, Ljavax/jmdns/impl/DNSIncoming;->getQuestions()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_69

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/jmdns/impl/DNSQuestion;

    .line 107
    .local v3, "question":Ljavax/jmdns/impl/DNSQuestion;
    sget-object v4, Ljavax/jmdns/impl/tasks/Responder;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 108
    sget-object v4, Ljavax/jmdns/impl/tasks/Responder;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/Responder;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "run() JmDNS responding to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 111
    :cond_5a
    iget-boolean v4, p0, Ljavax/jmdns/impl/tasks/Responder;->_unicast:Z

    if-eqz v4, :cond_61

    .line 113
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 116
    :cond_61
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/Responder;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljavax/jmdns/impl/DNSQuestion;->addAnswers(Ljavax/jmdns/impl/JmDNSImpl;Ljava/util/Set;)V

    .line 117
    .end local v3    # "question":Ljavax/jmdns/impl/DNSQuestion;
    goto :goto_27

    .line 120
    :cond_69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 121
    .local v2, "now":J
    iget-object v4, p0, Ljavax/jmdns/impl/tasks/Responder;->_in:Ljavax/jmdns/impl/DNSIncoming;

    invoke-virtual {v4}, Ljavax/jmdns/impl/DNSIncoming;->getAnswers()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_77
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/jmdns/impl/DNSRecord;

    .line 122
    .local v5, "knownAnswer":Ljavax/jmdns/impl/DNSRecord;
    invoke-virtual {v5, v2, v3}, Ljavax/jmdns/impl/DNSRecord;->isStale(J)Z

    move-result v6

    if-eqz v6, :cond_b0

    .line 123
    invoke-interface {v1, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 124
    sget-object v6, Ljavax/jmdns/impl/tasks/Responder;->logger:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v6

    if-eqz v6, :cond_b0

    .line 125
    sget-object v6, Ljavax/jmdns/impl/tasks/Responder;->logger:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/Responder;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "JmDNS Responder Known Answer Removed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 128
    .end local v5    # "knownAnswer":Ljavax/jmdns/impl/DNSRecord;
    :cond_b0
    goto :goto_77

    .line 131
    :cond_b1
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_135

    .line 132
    sget-object v4, Ljavax/jmdns/impl/tasks/Responder;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_db

    .line 133
    sget-object v4, Ljavax/jmdns/impl/tasks/Responder;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/Responder;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "run() JmDNS responding"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 135
    :cond_db
    new-instance v4, Ljavax/jmdns/impl/DNSOutgoing;

    const v5, 0x8400

    iget-boolean v6, p0, Ljavax/jmdns/impl/tasks/Responder;->_unicast:Z

    xor-int/lit8 v6, v6, 0x1

    iget-object v7, p0, Ljavax/jmdns/impl/tasks/Responder;->_in:Ljavax/jmdns/impl/DNSIncoming;

    invoke-virtual {v7}, Ljavax/jmdns/impl/DNSIncoming;->getSenderUDPPayload()I

    move-result v7

    invoke-direct {v4, v5, v6, v7}, Ljavax/jmdns/impl/DNSOutgoing;-><init>(IZI)V

    .line 136
    .local v4, "out":Ljavax/jmdns/impl/DNSOutgoing;
    iget-object v5, p0, Ljavax/jmdns/impl/tasks/Responder;->_in:Ljavax/jmdns/impl/DNSIncoming;

    invoke-virtual {v5}, Ljavax/jmdns/impl/DNSIncoming;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljavax/jmdns/impl/DNSOutgoing;->setId(I)V

    .line 137
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_fa
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/jmdns/impl/DNSQuestion;

    .line 138
    .local v6, "question":Ljavax/jmdns/impl/DNSQuestion;
    if-eqz v6, :cond_10d

    .line 139
    invoke-virtual {p0, v4, v6}, Ljavax/jmdns/impl/tasks/Responder;->addQuestion(Ljavax/jmdns/impl/DNSOutgoing;Ljavax/jmdns/impl/DNSQuestion;)Ljavax/jmdns/impl/DNSOutgoing;

    move-result-object v7

    move-object v4, v7

    .line 141
    .end local v6    # "question":Ljavax/jmdns/impl/DNSQuestion;
    :cond_10d
    goto :goto_fa

    .line 142
    :cond_10e
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_112
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_128

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/jmdns/impl/DNSRecord;

    .line 143
    .local v6, "answer":Ljavax/jmdns/impl/DNSRecord;
    if-eqz v6, :cond_127

    .line 144
    iget-object v7, p0, Ljavax/jmdns/impl/tasks/Responder;->_in:Ljavax/jmdns/impl/DNSIncoming;

    invoke-virtual {p0, v4, v7, v6}, Ljavax/jmdns/impl/tasks/Responder;->addAnswer(Ljavax/jmdns/impl/DNSOutgoing;Ljavax/jmdns/impl/DNSIncoming;Ljavax/jmdns/impl/DNSRecord;)Ljavax/jmdns/impl/DNSOutgoing;

    move-result-object v7

    move-object v4, v7

    .line 147
    .end local v6    # "answer":Ljavax/jmdns/impl/DNSRecord;
    :cond_127
    goto :goto_112

    .line 148
    :cond_128
    invoke-virtual {v4}, Ljavax/jmdns/impl/DNSOutgoing;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_135

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/Responder;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljavax/jmdns/impl/JmDNSImpl;->send(Ljavax/jmdns/impl/DNSOutgoing;)V
    :try_end_135
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_135} :catch_136

    .line 154
    .end local v2    # "now":J
    .end local v4    # "out":Ljavax/jmdns/impl/DNSOutgoing;
    :cond_135
    goto :goto_15a

    .line 151
    :catch_136
    move-exception v2

    .line 152
    .local v2, "e":Ljava/lang/Throwable;
    sget-object v3, Ljavax/jmdns/impl/tasks/Responder;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/Responder;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "run() exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 153
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/Responder;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/jmdns/impl/JmDNSImpl;->close()V

    .line 156
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_15a
    :goto_15a
    return-void
.end method

.method public start(Ljava/util/Timer;)V
    .registers 8
    .param p1, "timer"    # Ljava/util/Timer;

    .line 73
    const/4 v0, 0x1

    .line 74
    .local v0, "iAmTheOnlyOne":Z
    iget-object v1, p0, Ljavax/jmdns/impl/tasks/Responder;->_in:Ljavax/jmdns/impl/DNSIncoming;

    invoke-virtual {v1}, Ljavax/jmdns/impl/DNSIncoming;->getQuestions()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/jmdns/impl/DNSQuestion;

    .line 75
    .local v2, "question":Ljavax/jmdns/impl/DNSQuestion;
    sget-object v3, Ljavax/jmdns/impl/tasks/Responder;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 76
    sget-object v3, Ljavax/jmdns/impl/tasks/Responder;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/Responder;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "start() question="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 78
    :cond_3e
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/Responder;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/jmdns/impl/DNSQuestion;->iAmTheOnlyOne(Ljavax/jmdns/impl/JmDNSImpl;)Z

    move-result v0

    .line 79
    if-nez v0, :cond_49

    .line 80
    goto :goto_4a

    .line 82
    .end local v2    # "question":Ljavax/jmdns/impl/DNSQuestion;
    :cond_49
    goto :goto_b

    .line 83
    :cond_4a
    :goto_4a
    if-eqz v0, :cond_56

    iget-object v1, p0, Ljavax/jmdns/impl/tasks/Responder;->_in:Ljavax/jmdns/impl/DNSIncoming;

    invoke-virtual {v1}, Ljavax/jmdns/impl/DNSIncoming;->isTruncated()Z

    move-result v1

    if-nez v1, :cond_56

    const/4 v1, 0x0

    goto :goto_69

    :cond_56
    invoke-static {}, Ljavax/jmdns/impl/JmDNSImpl;->getRandom()Ljava/util/Random;

    move-result-object v1

    const/16 v2, 0x60

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x14

    iget-object v2, p0, Ljavax/jmdns/impl/tasks/Responder;->_in:Ljavax/jmdns/impl/DNSIncoming;

    invoke-virtual {v2}, Ljavax/jmdns/impl/DNSIncoming;->elapseSinceArrival()I

    move-result v2

    sub-int/2addr v1, v2

    .line 84
    .local v1, "delay":I
    :goto_69
    if-gez v1, :cond_6c

    .line 85
    const/4 v1, 0x0

    .line 87
    :cond_6c
    sget-object v2, Ljavax/jmdns/impl/tasks/Responder;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_93

    .line 88
    sget-object v2, Ljavax/jmdns/impl/tasks/Responder;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/Responder;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "start() Responder chosen delay="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 90
    :cond_93
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/Responder;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceling()Z

    move-result v2

    if-nez v2, :cond_ab

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/Responder;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_ab

    .line 91
    int-to-long v2, v1

    invoke-virtual {p1, p0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 93
    :cond_ab
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljavax/jmdns/impl/tasks/DNSTask;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " incomming: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljavax/jmdns/impl/tasks/Responder;->_in:Ljavax/jmdns/impl/DNSIncoming;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
