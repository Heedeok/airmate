.class Lorg/ros/internal/node/service/ServiceResponseHandler$1;
.super Ljava/lang/Object;
.source "ServiceResponseHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ros/internal/node/service/ServiceResponseHandler;->messageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ros/internal/node/service/ServiceResponseHandler;

.field final synthetic val$buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

.field final synthetic val$listener:Lorg/ros/node/service/ServiceResponseListener;

.field final synthetic val$response:Lorg/ros/internal/node/service/ServiceServerResponse;


# direct methods
.method constructor <init>(Lorg/ros/internal/node/service/ServiceResponseHandler;Lorg/ros/internal/node/service/ServiceServerResponse;Lorg/ros/node/service/ServiceResponseListener;Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .registers 5
    .param p1, "this$0"    # Lorg/ros/internal/node/service/ServiceResponseHandler;

    .line 58
    .local p0, "this":Lorg/ros/internal/node/service/ServiceResponseHandler$1;, "Lorg/ros/internal/node/service/ServiceResponseHandler$1;"
    iput-object p1, p0, Lorg/ros/internal/node/service/ServiceResponseHandler$1;->this$0:Lorg/ros/internal/node/service/ServiceResponseHandler;

    iput-object p2, p0, Lorg/ros/internal/node/service/ServiceResponseHandler$1;->val$response:Lorg/ros/internal/node/service/ServiceServerResponse;

    iput-object p3, p0, Lorg/ros/internal/node/service/ServiceResponseHandler$1;->val$listener:Lorg/ros/node/service/ServiceResponseListener;

    iput-object p4, p0, Lorg/ros/internal/node/service/ServiceResponseHandler$1;->val$buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 61
    .local p0, "this":Lorg/ros/internal/node/service/ServiceResponseHandler$1;, "Lorg/ros/internal/node/service/ServiceResponseHandler$1;"
    iget-object v0, p0, Lorg/ros/internal/node/service/ServiceResponseHandler$1;->val$response:Lorg/ros/internal/node/service/ServiceServerResponse;

    invoke-virtual {v0}, Lorg/ros/internal/node/service/ServiceServerResponse;->getErrorCode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b

    .line 62
    iget-object v0, p0, Lorg/ros/internal/node/service/ServiceResponseHandler$1;->val$listener:Lorg/ros/node/service/ServiceResponseListener;

    iget-object v1, p0, Lorg/ros/internal/node/service/ServiceResponseHandler$1;->this$0:Lorg/ros/internal/node/service/ServiceResponseHandler;

    invoke-static {v1}, Lorg/ros/internal/node/service/ServiceResponseHandler;->access$000(Lorg/ros/internal/node/service/ServiceResponseHandler;)Lorg/ros/message/MessageDeserializer;

    move-result-object v1

    iget-object v2, p0, Lorg/ros/internal/node/service/ServiceResponseHandler$1;->val$buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v1, v2}, Lorg/ros/message/MessageDeserializer;->deserialize(Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/ros/node/service/ServiceResponseListener;->onSuccess(Ljava/lang/Object;)V

    goto :goto_3b

    .line 64
    :cond_1b
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    iget-object v1, p0, Lorg/ros/internal/node/service/ServiceResponseHandler$1;->val$buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->toByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "message":Ljava/lang/String;
    iget-object v1, p0, Lorg/ros/internal/node/service/ServiceResponseHandler$1;->val$listener:Lorg/ros/node/service/ServiceResponseListener;

    new-instance v2, Lorg/ros/exception/RemoteException;

    sget-object v3, Lorg/ros/internal/node/response/StatusCode;->ERROR:Lorg/ros/internal/node/response/StatusCode;

    invoke-direct {v2, v3, v0}, Lorg/ros/exception/RemoteException;-><init>(Lorg/ros/internal/node/response/StatusCode;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lorg/ros/node/service/ServiceResponseListener;->onFailure(Lorg/ros/exception/RemoteException;)V

    .line 67
    .end local v0    # "message":Ljava/lang/String;
    :goto_3b
    return-void
.end method
