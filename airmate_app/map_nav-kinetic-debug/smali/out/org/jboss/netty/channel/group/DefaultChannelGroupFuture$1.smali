.class Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture$1;
.super Ljava/lang/Object;
.source "DefaultChannelGroupFuture.java"

# interfaces
.implements Lorg/jboss/netty/channel/ChannelFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 53
    const-class v0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;

    return-void
.end method

.method constructor <init>(Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;)V
    .registers 2

    .line 53
    iput-object p1, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture$1;->this$0:Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lorg/jboss/netty/channel/ChannelFuture;)V
    .registers 8
    .param p1, "future"    # Lorg/jboss/netty/channel/ChannelFuture;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 55
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->isSuccess()Z

    move-result v0

    .line 56
    .local v0, "success":Z
    const/4 v1, 0x0

    .line 57
    .local v1, "callSetDone":Z
    iget-object v2, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture$1;->this$0:Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;

    monitor-enter v2

    .line 58
    const/4 v3, 0x1

    if-eqz v0, :cond_15

    .line 59
    :try_start_b
    iget-object v4, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture$1;->this$0:Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;

    iget v5, v4, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->successCount:I

    add-int/2addr v5, v3

    iput v5, v4, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->successCount:I

    goto :goto_1c

    .line 66
    :catchall_13
    move-exception v3

    goto :goto_3c

    .line 61
    :cond_15
    iget-object v4, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture$1;->this$0:Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;

    iget v5, v4, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->failureCount:I

    add-int/2addr v5, v3

    iput v5, v4, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->failureCount:I

    .line 64
    :goto_1c
    iget-object v4, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture$1;->this$0:Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;

    iget v4, v4, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->successCount:I

    iget-object v5, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture$1;->this$0:Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;

    iget v5, v5, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->failureCount:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture$1;->this$0:Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;

    iget-object v5, v5, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->futures:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    if-ne v4, v5, :cond_30

    goto :goto_31

    :cond_30
    const/4 v3, 0x0

    :goto_31
    move v1, v3

    .line 65
    nop

    .line 66
    monitor-exit v2
    :try_end_34
    .catchall {:try_start_b .. :try_end_34} :catchall_13

    .line 68
    if-eqz v1, :cond_3b

    .line 69
    iget-object v2, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture$1;->this$0:Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;

    invoke-virtual {v2}, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->setDone()Z

    .line 71
    :cond_3b
    return-void

    .line 66
    :goto_3c
    :try_start_3c
    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_13

    throw v3
.end method
