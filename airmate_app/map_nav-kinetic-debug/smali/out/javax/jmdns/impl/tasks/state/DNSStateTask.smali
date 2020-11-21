.class public abstract Ljavax/jmdns/impl/tasks/state/DNSStateTask;
.super Ljavax/jmdns/impl/tasks/DNSTask;
.source "DNSStateTask.java"


# static fields
.field private static _defaultTTL:I

.field static logger1:Ljava/util/logging/Logger;


# instance fields
.field private _taskState:Ljavax/jmdns/impl/constants/DNSState;

.field private final _ttl:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 25
    const-class v0, Ljavax/jmdns/impl/tasks/state/DNSStateTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->logger1:Ljava/util/logging/Logger;

    .line 32
    const/16 v0, 0xe10

    sput v0, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->_defaultTTL:I

    return-void
.end method

.method public constructor <init>(Ljavax/jmdns/impl/JmDNSImpl;I)V
    .registers 4
    .param p1, "jmDNSImpl"    # Ljavax/jmdns/impl/JmDNSImpl;
    .param p2, "ttl"    # I

    .line 59
    invoke-direct {p0, p1}, Ljavax/jmdns/impl/tasks/DNSTask;-><init>(Ljavax/jmdns/impl/JmDNSImpl;)V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->_taskState:Ljavax/jmdns/impl/constants/DNSState;

    .line 60
    iput p2, p0, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->_ttl:I

    .line 61
    return-void
.end method

.method public static defaultTTL()I
    .registers 1

    .line 42
    sget v0, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->_defaultTTL:I

    return v0
.end method

.method public static setDefaultTTL(I)V
    .registers 1
    .param p0, "value"    # I

    .line 51
    sput p0, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->_defaultTTL:I

    .line 52
    return-void
.end method


# virtual methods
.method protected advanceObjectsState(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljavax/jmdns/impl/DNSStatefulObject;",
            ">;)V"
        }
    .end annotation

    .line 160
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/DNSStatefulObject;>;"
    if-eqz p1, :cond_1b

    .line 161
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/jmdns/impl/DNSStatefulObject;

    .line 162
    .local v1, "object":Ljavax/jmdns/impl/DNSStatefulObject;
    monitor-enter v1

    .line 163
    :try_start_13
    invoke-interface {v1, p0}, Ljavax/jmdns/impl/DNSStatefulObject;->advanceState(Ljavax/jmdns/impl/tasks/DNSTask;)Z

    .line 164
    monitor-exit v1

    .line 165
    .end local v1    # "object":Ljavax/jmdns/impl/DNSStatefulObject;
    goto :goto_6

    .line 164
    .restart local v1    # "object":Ljavax/jmdns/impl/DNSStatefulObject;
    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_18

    throw v0

    .line 167
    .end local v1    # "object":Ljavax/jmdns/impl/DNSStatefulObject;
    :cond_1b
    return-void
.end method

.method protected abstract advanceTask()V
.end method

.method protected associate(Ljavax/jmdns/impl/constants/DNSState;)V
    .registers 5
    .param p1, "state"    # Ljavax/jmdns/impl/constants/DNSState;

    .line 77
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    monitor-enter v0

    .line 78
    :try_start_5
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljavax/jmdns/impl/JmDNSImpl;->associateWithTask(Ljavax/jmdns/impl/tasks/DNSTask;Ljavax/jmdns/impl/constants/DNSState;)V

    .line 79
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_31

    .line 80
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/jmdns/impl/JmDNSImpl;->getServices()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/jmdns/ServiceInfo;

    .line 81
    .local v1, "serviceInfo":Ljavax/jmdns/ServiceInfo;
    move-object v2, v1

    check-cast v2, Ljavax/jmdns/impl/ServiceInfoImpl;

    invoke-virtual {v2, p0, p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->associateWithTask(Ljavax/jmdns/impl/tasks/DNSTask;Ljavax/jmdns/impl/constants/DNSState;)V

    .line 82
    .end local v1    # "serviceInfo":Ljavax/jmdns/ServiceInfo;
    goto :goto_1d

    .line 83
    :cond_30
    return-void

    .line 79
    :catchall_31
    move-exception v1

    :try_start_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v1
.end method

.method protected abstract buildOutgoingForDNS(Ljavax/jmdns/impl/DNSOutgoing;)Ljavax/jmdns/impl/DNSOutgoing;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract buildOutgoingForInfo(Ljavax/jmdns/impl/ServiceInfoImpl;Ljavax/jmdns/impl/DNSOutgoing;)Ljavax/jmdns/impl/DNSOutgoing;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract checkRunCondition()Z
.end method

.method protected abstract createOugoing()Ljavax/jmdns/impl/DNSOutgoing;
.end method

.method public getTTL()I
    .registers 2

    .line 67
    iget v0, p0, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->_ttl:I

    return v0
.end method

.method public abstract getTaskDescription()Ljava/lang/String;
.end method

.method protected getTaskState()Ljavax/jmdns/impl/constants/DNSState;
    .registers 2

    .line 177
    iget-object v0, p0, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->_taskState:Ljavax/jmdns/impl/constants/DNSState;

    return-object v0
.end method

.method protected abstract recoverTask(Ljava/lang/Throwable;)V
.end method

.method protected removeAssociation()V
    .registers 4

    .line 90
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    monitor-enter v0

    .line 91
    :try_start_5
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljavax/jmdns/impl/JmDNSImpl;->removeAssociationWithTask(Ljavax/jmdns/impl/tasks/DNSTask;)V

    .line 92
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_31

    .line 95
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/jmdns/impl/JmDNSImpl;->getServices()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/jmdns/ServiceInfo;

    .line 96
    .local v1, "serviceInfo":Ljavax/jmdns/ServiceInfo;
    move-object v2, v1

    check-cast v2, Ljavax/jmdns/impl/ServiceInfoImpl;

    invoke-virtual {v2, p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->removeAssociationWithTask(Ljavax/jmdns/impl/tasks/DNSTask;)V

    .line 97
    .end local v1    # "serviceInfo":Ljavax/jmdns/ServiceInfo;
    goto :goto_1d

    .line 98
    :cond_30
    return-void

    .line 92
    :catchall_31
    move-exception v1

    :try_start_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v1
.end method

.method public run()V
    .registers 9

    .line 102
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->createOugoing()Ljavax/jmdns/impl/DNSOutgoing;

    move-result-object v0

    .line 104
    .local v0, "out":Ljavax/jmdns/impl/DNSOutgoing;
    :try_start_4
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->checkRunCondition()Z

    move-result v1

    if-nez v1, :cond_e

    .line 105
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->cancel()Z

    .line 106
    return-void

    .line 108
    :cond_e
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .local v1, "stateObjects":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/DNSStatefulObject;>;"
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v2

    monitor-enter v2
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_18} :catch_110

    .line 111
    :try_start_18
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v3

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getTaskState()Ljavax/jmdns/impl/constants/DNSState;

    move-result-object v4

    invoke-virtual {v3, p0, v4}, Ljavax/jmdns/impl/JmDNSImpl;->isAssociatedWithTask(Ljavax/jmdns/impl/tasks/DNSTask;Ljavax/jmdns/impl/constants/DNSState;)Z

    move-result v3

    if-eqz v3, :cond_63

    .line 112
    sget-object v3, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->logger1:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".run() JmDNS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getTaskDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v5

    invoke-virtual {v5}, Ljavax/jmdns/impl/JmDNSImpl;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->buildOutgoingForDNS(Ljavax/jmdns/impl/DNSOutgoing;)Ljavax/jmdns/impl/DNSOutgoing;

    move-result-object v3

    move-object v0, v3

    .line 116
    :cond_63
    monitor-exit v2
    :try_end_64
    .catchall {:try_start_18 .. :try_end_64} :catchall_10d

    .line 118
    :try_start_64
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/jmdns/impl/JmDNSImpl;->getServices()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_74
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/jmdns/ServiceInfo;

    .line 119
    .local v3, "serviceInfo":Ljavax/jmdns/ServiceInfo;
    move-object v4, v3

    check-cast v4, Ljavax/jmdns/impl/ServiceInfoImpl;

    .line 121
    .local v4, "info":Ljavax/jmdns/impl/ServiceInfoImpl;
    monitor-enter v4
    :try_end_84
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_84} :catch_110

    .line 122
    :try_start_84
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getTaskState()Ljavax/jmdns/impl/constants/DNSState;

    move-result-object v5

    invoke-virtual {v4, p0, v5}, Ljavax/jmdns/impl/ServiceInfoImpl;->isAssociatedWithTask(Ljavax/jmdns/impl/tasks/DNSTask;Ljavax/jmdns/impl/constants/DNSState;)Z

    move-result v5

    if-eqz v5, :cond_c3

    .line 123
    sget-object v5, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->logger1:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".run() JmDNS "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getTaskDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 124
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    invoke-virtual {p0, v4, v0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->buildOutgoingForInfo(Ljavax/jmdns/impl/ServiceInfoImpl;Ljavax/jmdns/impl/DNSOutgoing;)Ljavax/jmdns/impl/DNSOutgoing;

    move-result-object v5

    move-object v0, v5

    .line 127
    :cond_c3
    monitor-exit v4

    .line 128
    .end local v3    # "serviceInfo":Ljavax/jmdns/ServiceInfo;
    .end local v4    # "info":Ljavax/jmdns/impl/ServiceInfoImpl;
    goto :goto_74

    .line 127
    .restart local v3    # "serviceInfo":Ljavax/jmdns/ServiceInfo;
    .restart local v4    # "info":Ljavax/jmdns/impl/ServiceInfoImpl;
    :catchall_c5
    move-exception v2

    monitor-exit v4
    :try_end_c7
    .catchall {:try_start_84 .. :try_end_c7} :catchall_c5

    :try_start_c7
    throw v2

    .line 129
    .end local v3    # "serviceInfo":Ljavax/jmdns/ServiceInfo;
    .end local v4    # "info":Ljavax/jmdns/impl/ServiceInfoImpl;
    :cond_c8
    invoke-virtual {v0}, Ljavax/jmdns/impl/DNSOutgoing;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_106

    .line 130
    sget-object v2, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->logger1:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".run() JmDNS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getTaskDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getTaskState()Ljavax/jmdns/impl/constants/DNSState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljavax/jmdns/impl/JmDNSImpl;->send(Ljavax/jmdns/impl/DNSOutgoing;)V

    .line 134
    invoke-virtual {p0, v1}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->advanceObjectsState(Ljava/util/List;)V

    .line 146
    .end local v1    # "stateObjects":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/DNSStatefulObject;>;"
    goto :goto_130

    .line 137
    .restart local v1    # "stateObjects":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/DNSStatefulObject;>;"
    :cond_106
    invoke-virtual {p0, v1}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->advanceObjectsState(Ljava/util/List;)V

    .line 140
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->cancel()Z
    :try_end_10c
    .catch Ljava/lang/Throwable; {:try_start_c7 .. :try_end_10c} :catch_110

    .line 141
    return-void

    .line 116
    :catchall_10d
    move-exception v3

    :try_start_10e
    monitor-exit v2
    :try_end_10f
    .catchall {:try_start_10e .. :try_end_10f} :catchall_10d

    :try_start_10f
    throw v3
    :try_end_110
    .catch Ljava/lang/Throwable; {:try_start_10f .. :try_end_110} :catch_110

    .line 143
    .end local v1    # "stateObjects":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/DNSStatefulObject;>;"
    :catch_110
    move-exception v1

    .line 144
    .local v1, "e":Ljava/lang/Throwable;
    sget-object v2, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->logger1:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".run() exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 145
    invoke-virtual {p0, v1}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->recoverTask(Ljava/lang/Throwable;)V

    .line 148
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_130
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->advanceTask()V

    .line 149
    return-void
.end method

.method protected setTaskState(Ljavax/jmdns/impl/constants/DNSState;)V
    .registers 2
    .param p1, "taskState"    # Ljavax/jmdns/impl/constants/DNSState;

    .line 185
    iput-object p1, p0, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->_taskState:Ljavax/jmdns/impl/constants/DNSState;

    .line 186
    return-void
.end method
