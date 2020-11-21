.class Lorg/ros/rosjava_tutorial_pubsub/Listener$1;
.super Ljava/lang/Object;
.source "Listener.java"

# interfaces
.implements Lorg/ros/message/MessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ros/rosjava_tutorial_pubsub/Listener;->onStart(Lorg/ros/node/ConnectedNode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ros/message/MessageListener<",
        "Lstd_msgs/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ros/rosjava_tutorial_pubsub/Listener;

.field final synthetic val$log:Lorg/apache/commons/logging/Log;


# direct methods
.method constructor <init>(Lorg/ros/rosjava_tutorial_pubsub/Listener;Lorg/apache/commons/logging/Log;)V
    .registers 3
    .param p1, "this$0"    # Lorg/ros/rosjava_tutorial_pubsub/Listener;

    .line 43
    iput-object p1, p0, Lorg/ros/rosjava_tutorial_pubsub/Listener$1;->this$0:Lorg/ros/rosjava_tutorial_pubsub/Listener;

    iput-object p2, p0, Lorg/ros/rosjava_tutorial_pubsub/Listener$1;->val$log:Lorg/apache/commons/logging/Log;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onNewMessage(Ljava/lang/Object;)V
    .registers 2

    .line 43
    check-cast p1, Lstd_msgs/String;

    invoke-virtual {p0, p1}, Lorg/ros/rosjava_tutorial_pubsub/Listener$1;->onNewMessage(Lstd_msgs/String;)V

    return-void
.end method

.method public onNewMessage(Lstd_msgs/String;)V
    .registers 5
    .param p1, "message"    # Lstd_msgs/String;

    .line 46
    iget-object v0, p0, Lorg/ros/rosjava_tutorial_pubsub/Listener$1;->val$log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "I heard: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lstd_msgs/String;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 47
    return-void
.end method
