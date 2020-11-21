.class Lorg/ros/node/NativeNodeMain$1;
.super Ljava/lang/Thread;
.source "NativeNodeMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ros/node/NativeNodeMain;->onStart(Lorg/ros/node/ConnectedNode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ros/node/NativeNodeMain;

.field final synthetic val$connectedNode:Lorg/ros/node/ConnectedNode;


# direct methods
.method constructor <init>(Lorg/ros/node/NativeNodeMain;Lorg/ros/node/ConnectedNode;)V
    .registers 3
    .param p1, "this$0"    # Lorg/ros/node/NativeNodeMain;

    .line 95
    iput-object p1, p0, Lorg/ros/node/NativeNodeMain$1;->this$0:Lorg/ros/node/NativeNodeMain;

    iput-object p2, p0, Lorg/ros/node/NativeNodeMain$1;->val$connectedNode:Lorg/ros/node/ConnectedNode;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 98
    iget-object v0, p0, Lorg/ros/node/NativeNodeMain$1;->this$0:Lorg/ros/node/NativeNodeMain;

    iget-object v1, p0, Lorg/ros/node/NativeNodeMain$1;->this$0:Lorg/ros/node/NativeNodeMain;

    iget-object v2, p0, Lorg/ros/node/NativeNodeMain$1;->this$0:Lorg/ros/node/NativeNodeMain;

    invoke-static {v2}, Lorg/ros/node/NativeNodeMain;->access$000(Lorg/ros/node/NativeNodeMain;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/ros/node/NativeNodeMain$1;->this$0:Lorg/ros/node/NativeNodeMain;

    invoke-static {v3}, Lorg/ros/node/NativeNodeMain;->access$100(Lorg/ros/node/NativeNodeMain;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/ros/node/NativeNodeMain$1;->this$0:Lorg/ros/node/NativeNodeMain;

    invoke-static {v4}, Lorg/ros/node/NativeNodeMain;->access$200(Lorg/ros/node/NativeNodeMain;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/ros/node/NativeNodeMain$1;->this$0:Lorg/ros/node/NativeNodeMain;

    invoke-static {v5}, Lorg/ros/node/NativeNodeMain;->access$300(Lorg/ros/node/NativeNodeMain;)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/ros/node/NativeNodeMain;->execute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lorg/ros/node/NativeNodeMain;->executeReturnCode:I

    .line 100
    iget-object v0, p0, Lorg/ros/node/NativeNodeMain$1;->this$0:Lorg/ros/node/NativeNodeMain;

    iget v0, v0, Lorg/ros/node/NativeNodeMain;->executeReturnCode:I

    if-eqz v0, :cond_52

    .line 101
    iget-object v0, p0, Lorg/ros/node/NativeNodeMain$1;->this$0:Lorg/ros/node/NativeNodeMain;

    iget-object v1, p0, Lorg/ros/node/NativeNodeMain$1;->val$connectedNode:Lorg/ros/node/ConnectedNode;

    new-instance v2, Ljava/lang/Throwable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/ros/node/NativeNodeMain$1;->this$0:Lorg/ros/node/NativeNodeMain;

    invoke-static {v4}, Lorg/ros/node/NativeNodeMain;->access$200(Lorg/ros/node/NativeNodeMain;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " execution error code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/ros/node/NativeNodeMain$1;->this$0:Lorg/ros/node/NativeNodeMain;

    iget v4, v4, Lorg/ros/node/NativeNodeMain;->executeReturnCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/ros/node/NativeNodeMain;->onError(Lorg/ros/node/Node;Ljava/lang/Throwable;)V

    .line 105
    :cond_52
    iget-object v0, p0, Lorg/ros/node/NativeNodeMain$1;->this$0:Lorg/ros/node/NativeNodeMain;

    invoke-static {v0}, Lorg/ros/node/NativeNodeMain;->access$400(Lorg/ros/node/NativeNodeMain;)Z

    move-result v0

    if-nez v0, :cond_5f

    .line 106
    iget-object v0, p0, Lorg/ros/node/NativeNodeMain$1;->val$connectedNode:Lorg/ros/node/ConnectedNode;

    invoke-interface {v0}, Lorg/ros/node/ConnectedNode;->shutdown()V

    .line 108
    :cond_5f
    return-void
.end method
