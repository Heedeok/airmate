.class Lorg/ros/internal/node/RosoutLogger;
.super Ljava/lang/Object;
.source "RosoutLogger.java"

# interfaces
.implements Lorg/apache/commons/logging/Log;


# instance fields
.field private final defaultNode:Lorg/ros/internal/node/DefaultNode;

.field private final log:Lorg/apache/commons/logging/Log;

.field private final publisher:Lorg/ros/node/topic/Publisher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ros/node/topic/Publisher<",
            "Lrosgraph_msgs/Log;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/ros/internal/node/DefaultNode;)V
    .registers 4
    .param p1, "defaultNode"    # Lorg/ros/internal/node/DefaultNode;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/ros/internal/node/RosoutLogger;->defaultNode:Lorg/ros/internal/node/DefaultNode;

    .line 41
    sget-object v0, Lorg/ros/Topics;->ROSOUT:Lorg/ros/namespace/GraphName;

    const-string v1, "rosgraph_msgs/Log"

    invoke-virtual {p1, v0, v1}, Lorg/ros/internal/node/DefaultNode;->newPublisher(Lorg/ros/namespace/GraphName;Ljava/lang/String;)Lorg/ros/node/topic/Publisher;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/internal/node/RosoutLogger;->publisher:Lorg/ros/node/topic/Publisher;

    .line 42
    invoke-virtual {p1}, Lorg/ros/internal/node/DefaultNode;->getName()Lorg/ros/namespace/GraphName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/internal/node/RosoutLogger;->log:Lorg/apache/commons/logging/Log;

    .line 43
    return-void
.end method

.method private publish(BLjava/lang/Object;)V
    .registers 6
    .param p1, "level"    # B
    .param p2, "message"    # Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lorg/ros/internal/node/RosoutLogger;->publisher:Lorg/ros/node/topic/Publisher;

    invoke-interface {v0}, Lorg/ros/node/topic/Publisher;->newMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrosgraph_msgs/Log;

    .line 58
    .local v0, "logMessage":Lrosgraph_msgs/Log;
    invoke-interface {v0}, Lrosgraph_msgs/Log;->getHeader()Lstd_msgs/Header;

    move-result-object v1

    iget-object v2, p0, Lorg/ros/internal/node/RosoutLogger;->defaultNode:Lorg/ros/internal/node/DefaultNode;

    invoke-virtual {v2}, Lorg/ros/internal/node/DefaultNode;->getCurrentTime()Lorg/ros/message/Time;

    move-result-object v2

    invoke-interface {v1, v2}, Lstd_msgs/Header;->setStamp(Lorg/ros/message/Time;)V

    .line 59
    invoke-interface {v0, p1}, Lrosgraph_msgs/Log;->setLevel(B)V

    .line 60
    iget-object v1, p0, Lorg/ros/internal/node/RosoutLogger;->defaultNode:Lorg/ros/internal/node/DefaultNode;

    invoke-virtual {v1}, Lorg/ros/internal/node/DefaultNode;->getName()Lorg/ros/namespace/GraphName;

    move-result-object v1

    invoke-virtual {v1}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lrosgraph_msgs/Log;->setName(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lrosgraph_msgs/Log;->setMsg(Ljava/lang/String;)V

    .line 65
    iget-object v1, p0, Lorg/ros/internal/node/RosoutLogger;->publisher:Lorg/ros/node/topic/Publisher;

    invoke-interface {v1, v0}, Lorg/ros/node/topic/Publisher;->publish(Ljava/lang/Object;)V

    .line 66
    return-void
.end method

.method private publish(BLjava/lang/Object;Ljava/lang/Throwable;)V
    .registers 8
    .param p1, "level"    # B
    .param p2, "message"    # Ljava/lang/Object;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .line 50
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 51
    .local v0, "stringWriter":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 52
    .local v1, "printWriter":Ljava/io/PrintWriter;
    invoke-virtual {p3, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lorg/ros/internal/node/RosoutLogger;->publish(BLjava/lang/Object;)V

    .line 54
    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/Object;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/Object;

    .line 116
    iget-object v0, p0, Lorg/ros/internal/node/RosoutLogger;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 117
    iget-object v0, p0, Lorg/ros/internal/node/RosoutLogger;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lorg/ros/internal/node/RosoutLogger;->publisher:Lorg/ros/node/topic/Publisher;

    if-eqz v0, :cond_15

    .line 118
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/ros/internal/node/RosoutLogger;->publish(BLjava/lang/Object;)V

    .line 120
    :cond_15
    return-void
.end method

.method public debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 124
    iget-object v0, p0, Lorg/ros/internal/node/RosoutLogger;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 125
    iget-object v0, p0, Lorg/ros/internal/node/RosoutLogger;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lorg/ros/internal/node/RosoutLogger;->publisher:Lorg/ros/node/topic/Publisher;

    if-eqz v0, :cond_15

    .line 126
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lorg/ros/internal/node/RosoutLogger;->publish(BLjava/lang/Object;Ljava/lang/Throwable;)V

    .line 128
    :cond_15
    return-void
.end method

.method public error(Ljava/lang/Object;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/Object;

    .line 164
    iget-object v0, p0, Lorg/ros/internal/node/RosoutLogger;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    .line 165
    iget-object v0, p0, Lorg/ros/internal/node/RosoutLogger;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lorg/ros/internal/node/RosoutLogger;->publisher:Lorg/ros/node/topic/Publisher;

    if-eqz v0, :cond_16

    .line 166
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lorg/ros/internal/node/RosoutLogger;->publish(BLjava/lang/Object;)V

    .line 168
    :cond_16
    return-void
.end method

.method public error(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 172
    iget-object v0, p0, Lorg/ros/internal/node/RosoutLogger;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 173
    iget-object v0, p0, Lorg/ros/internal/node/RosoutLogger;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lorg/ros/internal/node/RosoutLogger;->publisher:Lorg/ros/node/topic/Publisher;

    if-eqz v0, :cond_16

    .line 174
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1, p2}, Lorg/ros/internal/node/RosoutLogger;->publish(BLjava/lang/Object;Ljava/lang/Throwable;)V

    .line 176
    :cond_16
    return-void
.end method

.method public fatal(Ljava/lang/Object;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/Object;

    .line 180
    iget-object v0, p0, Lorg/ros/internal/node/RosoutLogger;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p1}, Lorg/apache/commons/logging/Log;->fatal(Ljava/lang/Object;)V

    .line 181
    iget-object v0, p0, Lorg/ros/internal/node/RosoutLogger;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isFatalEnabled()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lorg/ros/internal/node/RosoutLogger;->publisher:Lorg/ros/node/topic/Publisher;

    if-eqz v0, :cond_16

    .line 182
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lorg/ros/internal/node/RosoutLogger;->publish(BLjava/lang/Object;)V

    .line 184
    :cond_16
    return-void
.end method

.method public fatal(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 188
    iget-object v0, p0, Lorg/ros/internal/node/RosoutLogger;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/logging/Log;->fatal(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 189
    iget-object v0, p0, Lorg/ros/internal/node/RosoutLogger;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isFatalEnabled()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lorg/ros/internal/node/RosoutLogger;->publisher:Lorg/ros/node/topic/Publisher;

    if-eqz v0, :cond_16

    .line 190
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1, p2}, Lorg/ros/internal/node/RosoutLogger;->publish(BLjava/lang/Object;Ljava/lang/Throwable;)V

    .line 192
    :cond_16
    return-void
.end method

.method public getPublisher()Lorg/ros/node/topic/Publisher;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ros/node/topic/Publisher<",
            "Lrosgraph_msgs/Log;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lorg/ros/internal/node/RosoutLogger;->publisher:Lorg/ros/node/topic/Publisher;

    return-object v0
.end method

.method public info(Ljava/lang/Object;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/Object;

    .line 132
    iget-object v0, p0, Lorg/ros/internal/node/RosoutLogger;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 133
    iget-object v0, p0, Lorg/ros/internal/node/RosoutLogger;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lorg/ros/internal/node/RosoutLogger;->publisher:Lorg/ros/node/topic/Publisher;

    if-eqz v0, :cond_15

    .line 134
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lorg/ros/internal/node/RosoutLogger;->publish(BLjava/lang/Object;)V

    .line 136
    :cond_15
    return-void
.end method

.method public info(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 140
    iget-object v0, p0, Lorg/ros/internal/node/RosoutLogger;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 141
    iget-object v0, p0, Lorg/ros/internal/node/RosoutLogger;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lorg/ros/internal/node/RosoutLogger;->publisher:Lorg/ros/node/topic/Publisher;

    if-eqz v0, :cond_15

    .line 142
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2}, Lorg/ros/internal/node/RosoutLogger;->publish(BLjava/lang/Object;Ljava/lang/Throwable;)V

    .line 144
    :cond_15
    return-void
.end method

.method public isDebugEnabled()Z
    .registers 2

    .line 70
    iget-object v0, p0, Lorg/ros/internal/node/RosoutLogger;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    return v0
.end method

.method public isErrorEnabled()Z
    .registers 2

    .line 75
    iget-object v0, p0, Lorg/ros/internal/node/RosoutLogger;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isErrorEnabled()Z

    move-result v0

    return v0
.end method

.method public isFatalEnabled()Z
    .registers 2

    .line 80
    iget-object v0, p0, Lorg/ros/internal/node/RosoutLogger;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isFatalEnabled()Z

    move-result v0

    return v0
.end method

.method public isInfoEnabled()Z
    .registers 2

    .line 85
    iget-object v0, p0, Lorg/ros/internal/node/RosoutLogger;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isInfoEnabled()Z

    move-result v0

    return v0
.end method

.method public isTraceEnabled()Z
    .registers 2

    .line 90
    iget-object v0, p0, Lorg/ros/internal/node/RosoutLogger;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result v0

    return v0
.end method

.method public isWarnEnabled()Z
    .registers 2

    .line 95
    iget-object v0, p0, Lorg/ros/internal/node/RosoutLogger;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v0

    return v0
.end method

.method public trace(Ljava/lang/Object;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lorg/ros/internal/node/RosoutLogger;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 101
    iget-object v0, p0, Lorg/ros/internal/node/RosoutLogger;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lorg/ros/internal/node/RosoutLogger;->publisher:Lorg/ros/node/topic/Publisher;

    if-eqz v0, :cond_15

    .line 102
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/ros/internal/node/RosoutLogger;->publish(BLjava/lang/Object;)V

    .line 104
    :cond_15
    return-void
.end method

.method public trace(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 108
    iget-object v0, p0, Lorg/ros/internal/node/RosoutLogger;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 109
    iget-object v0, p0, Lorg/ros/internal/node/RosoutLogger;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lorg/ros/internal/node/RosoutLogger;->publisher:Lorg/ros/node/topic/Publisher;

    if-eqz v0, :cond_15

    .line 110
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lorg/ros/internal/node/RosoutLogger;->publish(BLjava/lang/Object;Ljava/lang/Throwable;)V

    .line 112
    :cond_15
    return-void
.end method

.method public warn(Ljava/lang/Object;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/Object;

    .line 148
    iget-object v0, p0, Lorg/ros/internal/node/RosoutLogger;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 149
    iget-object v0, p0, Lorg/ros/internal/node/RosoutLogger;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lorg/ros/internal/node/RosoutLogger;->publisher:Lorg/ros/node/topic/Publisher;

    if-eqz v0, :cond_15

    .line 150
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lorg/ros/internal/node/RosoutLogger;->publish(BLjava/lang/Object;)V

    .line 152
    :cond_15
    return-void
.end method

.method public warn(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 156
    iget-object v0, p0, Lorg/ros/internal/node/RosoutLogger;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 157
    iget-object v0, p0, Lorg/ros/internal/node/RosoutLogger;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lorg/ros/internal/node/RosoutLogger;->publisher:Lorg/ros/node/topic/Publisher;

    if-eqz v0, :cond_15

    .line 158
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, p2}, Lorg/ros/internal/node/RosoutLogger;->publish(BLjava/lang/Object;Ljava/lang/Throwable;)V

    .line 160
    :cond_15
    return-void
.end method
