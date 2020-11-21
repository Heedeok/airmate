.class Lorg/ros/internal/node/service/ServiceRequestHandler$1;
.super Ljava/lang/Object;
.source "ServiceRequestHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ros/internal/node/service/ServiceRequestHandler;->messageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ros/internal/node/service/ServiceRequestHandler;

.field final synthetic val$ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

.field final synthetic val$requestBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;


# direct methods
.method constructor <init>(Lorg/ros/internal/node/service/ServiceRequestHandler;Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .registers 4
    .param p1, "this$0"    # Lorg/ros/internal/node/service/ServiceRequestHandler;

    .line 92
    .local p0, "this":Lorg/ros/internal/node/service/ServiceRequestHandler$1;, "Lorg/ros/internal/node/service/ServiceRequestHandler$1;"
    iput-object p1, p0, Lorg/ros/internal/node/service/ServiceRequestHandler$1;->this$0:Lorg/ros/internal/node/service/ServiceRequestHandler;

    iput-object p2, p0, Lorg/ros/internal/node/service/ServiceRequestHandler$1;->val$requestBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    iput-object p3, p0, Lorg/ros/internal/node/service/ServiceRequestHandler$1;->val$ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 95
    .local p0, "this":Lorg/ros/internal/node/service/ServiceRequestHandler$1;, "Lorg/ros/internal/node/service/ServiceRequestHandler$1;"
    new-instance v0, Lorg/ros/internal/node/service/ServiceServerResponse;

    invoke-direct {v0}, Lorg/ros/internal/node/service/ServiceServerResponse;-><init>()V

    .line 96
    .local v0, "response":Lorg/ros/internal/node/service/ServiceServerResponse;
    iget-object v1, p0, Lorg/ros/internal/node/service/ServiceRequestHandler$1;->this$0:Lorg/ros/internal/node/service/ServiceRequestHandler;

    invoke-static {v1}, Lorg/ros/internal/node/service/ServiceRequestHandler;->access$000(Lorg/ros/internal/node/service/ServiceRequestHandler;)Lorg/ros/internal/message/MessageBufferPool;

    move-result-object v1

    invoke-virtual {v1}, Lorg/ros/internal/message/MessageBufferPool;->acquire()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    .line 99
    .local v1, "responseBuffer":Lorg/jboss/netty/buffer/ChannelBuffer;
    :try_start_f
    iget-object v2, p0, Lorg/ros/internal/node/service/ServiceRequestHandler$1;->this$0:Lorg/ros/internal/node/service/ServiceRequestHandler;

    iget-object v3, p0, Lorg/ros/internal/node/service/ServiceRequestHandler$1;->val$requestBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-static {v2, v3, v1}, Lorg/ros/internal/node/service/ServiceRequestHandler;->access$100(Lorg/ros/internal/node/service/ServiceRequestHandler;Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/buffer/ChannelBuffer;)V
    :try_end_16
    .catch Lorg/ros/exception/ServiceException; {:try_start_f .. :try_end_16} :catch_18

    .line 100
    const/4 v2, 0x1

    .line 104
    .local v2, "success":Z
    goto :goto_25

    .line 101
    .end local v2    # "success":Z
    :catch_18
    move-exception v2

    .line 102
    .local v2, "ex":Lorg/ros/exception/ServiceException;
    iget-object v3, p0, Lorg/ros/internal/node/service/ServiceRequestHandler$1;->this$0:Lorg/ros/internal/node/service/ServiceRequestHandler;

    iget-object v4, p0, Lorg/ros/internal/node/service/ServiceRequestHandler$1;->val$ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    invoke-virtual {v2}, Lorg/ros/exception/ServiceException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v0, v5}, Lorg/ros/internal/node/service/ServiceRequestHandler;->access$200(Lorg/ros/internal/node/service/ServiceRequestHandler;Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/ros/internal/node/service/ServiceServerResponse;Ljava/lang/String;)V

    .line 103
    const/4 v2, 0x0

    .line 105
    .local v2, "success":Z
    :goto_25
    if-eqz v2, :cond_2e

    .line 106
    iget-object v3, p0, Lorg/ros/internal/node/service/ServiceRequestHandler$1;->this$0:Lorg/ros/internal/node/service/ServiceRequestHandler;

    iget-object v4, p0, Lorg/ros/internal/node/service/ServiceRequestHandler$1;->val$ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    invoke-static {v3, v4, v0, v1}, Lorg/ros/internal/node/service/ServiceRequestHandler;->access$300(Lorg/ros/internal/node/service/ServiceRequestHandler;Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/ros/internal/node/service/ServiceServerResponse;Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 108
    :cond_2e
    iget-object v3, p0, Lorg/ros/internal/node/service/ServiceRequestHandler$1;->this$0:Lorg/ros/internal/node/service/ServiceRequestHandler;

    invoke-static {v3}, Lorg/ros/internal/node/service/ServiceRequestHandler;->access$000(Lorg/ros/internal/node/service/ServiceRequestHandler;)Lorg/ros/internal/message/MessageBufferPool;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/ros/internal/message/MessageBufferPool;->release(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 109
    return-void
.end method
