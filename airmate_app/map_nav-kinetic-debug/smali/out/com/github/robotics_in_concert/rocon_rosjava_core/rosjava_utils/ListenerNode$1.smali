.class Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerNode$1;
.super Ljava/lang/Object;
.source "ListenerNode.java"

# interfaces
.implements Lorg/ros/message/MessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerNode;->setupListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ros/message/MessageListener<",
        "TMsgType;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerNode;


# direct methods
.method constructor <init>(Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerNode;)V
    .registers 2

    .line 88
    .local p0, "this":Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerNode$1;, "Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerNode.1;"
    iput-object p1, p0, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerNode$1;->this$0:Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNewMessage(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMsgType;)V"
        }
    .end annotation

    .line 91
    .local p0, "this":Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerNode$1;, "Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerNode.1;"
    .local p1, "message":Ljava/lang/Object;, "TMsgType;"
    iget-object v0, p0, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerNode$1;->this$0:Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerNode;

    invoke-static {v0, p1}, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerNode;->access$002(Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerNode;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    return-void
.end method
