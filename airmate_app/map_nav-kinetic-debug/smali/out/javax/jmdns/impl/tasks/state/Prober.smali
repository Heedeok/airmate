.class public Ljavax/jmdns/impl/tasks/state/Prober;
.super Ljavax/jmdns/impl/tasks/state/DNSStateTask;
.source "Prober.java"


# static fields
.field static logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 28
    const-class v0, Ljavax/jmdns/impl/tasks/state/Prober;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljavax/jmdns/impl/tasks/state/Prober;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljavax/jmdns/impl/JmDNSImpl;)V
    .registers 3
    .param p1, "jmDNSImpl"    # Ljavax/jmdns/impl/JmDNSImpl;

    .line 31
    invoke-static {}, Ljavax/jmdns/impl/tasks/state/Prober;->defaultTTL()I

    move-result v0

    invoke-direct {p0, p1, v0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;-><init>(Ljavax/jmdns/impl/JmDNSImpl;I)V

    .line 33
    sget-object v0, Ljavax/jmdns/impl/constants/DNSState;->PROBING_1:Ljavax/jmdns/impl/constants/DNSState;

    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/tasks/state/Prober;->setTaskState(Ljavax/jmdns/impl/constants/DNSState;)V

    .line 34
    sget-object v0, Ljavax/jmdns/impl/constants/DNSState;->PROBING_1:Ljavax/jmdns/impl/constants/DNSState;

    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/tasks/state/Prober;->associate(Ljavax/jmdns/impl/constants/DNSState;)V

    .line 35
    return-void
.end method


# virtual methods
.method protected advanceTask()V
    .registers 2

    .line 153
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Prober;->getTaskState()Ljavax/jmdns/impl/constants/DNSState;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/jmdns/impl/constants/DNSState;->advance()Ljavax/jmdns/impl/constants/DNSState;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/tasks/state/Prober;->setTaskState(Ljavax/jmdns/impl/constants/DNSState;)V

    .line 154
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Prober;->getTaskState()Ljavax/jmdns/impl/constants/DNSState;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/jmdns/impl/constants/DNSState;->isProbing()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 155
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Prober;->cancel()Z

    .line 157
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Prober;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/jmdns/impl/JmDNSImpl;->startAnnouncer()V

    .line 159
    :cond_1f
    return-void
.end method

.method protected buildOutgoingForDNS(Ljavax/jmdns/impl/DNSOutgoing;)Ljavax/jmdns/impl/DNSOutgoing;
    .registers 7
    .param p1, "out"    # Ljavax/jmdns/impl/DNSOutgoing;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    move-object v0, p1

    .line 117
    .local v0, "newOut":Ljavax/jmdns/impl/DNSOutgoing;
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Prober;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/jmdns/impl/JmDNSImpl;->getLocalHost()Ljavax/jmdns/impl/HostInfo;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/jmdns/impl/HostInfo;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_ANY:Ljavax/jmdns/impl/constants/DNSRecordType;

    sget-object v3, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Ljavax/jmdns/impl/DNSQuestion;->newQuestion(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;Z)Ljavax/jmdns/impl/DNSQuestion;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/DNSOutgoing;->addQuestion(Ljavax/jmdns/impl/DNSQuestion;)V

    .line 118
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Prober;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/jmdns/impl/JmDNSImpl;->getLocalHost()Ljavax/jmdns/impl/HostInfo;

    move-result-object v1

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Prober;->getTTL()I

    move-result v2

    invoke-virtual {v1, v4, v2}, Ljavax/jmdns/impl/HostInfo;->answers(ZI)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/jmdns/impl/DNSRecord;

    .line 119
    .local v2, "answer":Ljavax/jmdns/impl/DNSRecord;
    invoke-virtual {p0, v0, v2}, Ljavax/jmdns/impl/tasks/state/Prober;->addAuthoritativeAnswer(Ljavax/jmdns/impl/DNSOutgoing;Ljavax/jmdns/impl/DNSRecord;)Ljavax/jmdns/impl/DNSOutgoing;

    move-result-object v0

    .line 120
    .end local v2    # "answer":Ljavax/jmdns/impl/DNSRecord;
    goto :goto_2d

    .line 121
    :cond_3e
    return-object v0
.end method

.method protected buildOutgoingForInfo(Ljavax/jmdns/impl/ServiceInfoImpl;Ljavax/jmdns/impl/DNSOutgoing;)Ljavax/jmdns/impl/DNSOutgoing;
    .registers 14
    .param p1, "info"    # Ljavax/jmdns/impl/ServiceInfoImpl;
    .param p2, "out"    # Ljavax/jmdns/impl/DNSOutgoing;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    move-object v0, p2

    .line 131
    .local v0, "newOut":Ljavax/jmdns/impl/DNSOutgoing;
    invoke-virtual {p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_ANY:Ljavax/jmdns/impl/constants/DNSRecordType;

    sget-object v3, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Ljavax/jmdns/impl/DNSQuestion;->newQuestion(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;Z)Ljavax/jmdns/impl/DNSQuestion;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljavax/jmdns/impl/tasks/state/Prober;->addQuestion(Ljavax/jmdns/impl/DNSOutgoing;Ljavax/jmdns/impl/DNSQuestion;)Ljavax/jmdns/impl/DNSOutgoing;

    move-result-object v0

    .line 133
    new-instance v10, Ljavax/jmdns/impl/DNSRecord$Service;

    invoke-virtual {p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Prober;->getTTL()I

    move-result v5

    invoke-virtual {p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->getPriority()I

    move-result v6

    invoke-virtual {p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->getWeight()I

    move-result v7

    invoke-virtual {p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->getPort()I

    move-result v8

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Prober;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/jmdns/impl/JmDNSImpl;->getLocalHost()Ljavax/jmdns/impl/HostInfo;

    move-result-object v1

    .line 134
    invoke-virtual {v1}, Ljavax/jmdns/impl/HostInfo;->getName()Ljava/lang/String;

    move-result-object v9

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Ljavax/jmdns/impl/DNSRecord$Service;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZIIIILjava/lang/String;)V

    .line 133
    invoke-virtual {p0, v0, v10}, Ljavax/jmdns/impl/tasks/state/Prober;->addAuthoritativeAnswer(Ljavax/jmdns/impl/DNSOutgoing;Ljavax/jmdns/impl/DNSRecord;)Ljavax/jmdns/impl/DNSOutgoing;

    move-result-object v0

    .line 135
    return-object v0
.end method

.method public cancel()Z
    .registers 2

    .line 78
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Prober;->removeAssociation()V

    .line 80
    invoke-super {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->cancel()Z

    move-result v0

    return v0
.end method

.method protected checkRunCondition()Z
    .registers 2

    .line 98
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Prober;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceling()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Prober;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method protected createOugoing()Ljavax/jmdns/impl/DNSOutgoing;
    .registers 3

    .line 107
    new-instance v0, Ljavax/jmdns/impl/DNSOutgoing;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljavax/jmdns/impl/DNSOutgoing;-><init>(I)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Prober("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Prober;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    if-eqz v1, :cond_19

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Prober;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

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

.method public getTaskDescription()Ljava/lang/String;
    .registers 2

    .line 89
    const-string v0, "probing"

    return-object v0
.end method

.method protected recoverTask(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 144
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Prober;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/jmdns/impl/JmDNSImpl;->recover()V

    .line 145
    return-void
.end method

.method public start(Ljava/util/Timer;)V
    .registers 11
    .param p1, "timer"    # Ljava/util/Timer;

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 62
    .local v0, "now":J
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Prober;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/jmdns/impl/JmDNSImpl;->getLastThrottleIncrement()J

    move-result-wide v2

    sub-long v2, v0, v2

    const/4 v4, 0x1

    const-wide/16 v5, 0x1388

    cmp-long v7, v2, v5

    if-gez v7, :cond_26

    .line 63
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Prober;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v2

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Prober;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/jmdns/impl/JmDNSImpl;->getThrottle()I

    move-result v3

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljavax/jmdns/impl/JmDNSImpl;->setThrottle(I)V

    goto :goto_2d

    .line 65
    :cond_26
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Prober;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljavax/jmdns/impl/JmDNSImpl;->setThrottle(I)V

    .line 67
    :goto_2d
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Prober;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljavax/jmdns/impl/JmDNSImpl;->setLastThrottleIncrement(J)V

    .line 69
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Prober;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/jmdns/impl/JmDNSImpl;->isAnnounced()Z

    move-result v2

    if-eqz v2, :cond_5d

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Prober;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/jmdns/impl/JmDNSImpl;->getThrottle()I

    move-result v2

    const/16 v3, 0xa

    if-ge v2, v3, :cond_5d

    .line 70
    invoke-static {}, Ljavax/jmdns/impl/JmDNSImpl;->getRandom()Ljava/util/Random;

    move-result-object v2

    const/16 v3, 0xfb

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-long v5, v2

    const-wide/16 v7, 0xfa

    move-object v3, p1

    move-object v4, p0

    invoke-virtual/range {v3 .. v8}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_7a

    .line 71
    :cond_5d
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Prober;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceling()Z

    move-result v2

    if-nez v2, :cond_7a

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Prober;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_7a

    .line 72
    const-wide/16 v5, 0x3e8

    const-wide/16 v7, 0x3e8

    move-object v3, p1

    move-object v4, p0

    invoke-virtual/range {v3 .. v8}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 74
    :cond_7a
    :goto_7a
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Prober;->getTaskState()Ljavax/jmdns/impl/constants/DNSState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
