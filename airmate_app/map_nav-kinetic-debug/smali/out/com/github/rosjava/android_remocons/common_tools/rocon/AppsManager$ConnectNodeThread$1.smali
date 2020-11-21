.class Lcom/github/rosjava/android_remocons/common_tools/rocon/AppsManager$ConnectNodeThread$1;
.super Ljava/lang/Object;
.source "AppsManager.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/rosjava/android_remocons/common_tools/rocon/AppsManager$ConnectNodeThread;-><init>(Lcom/github/rosjava/android_remocons/common_tools/rocon/AppsManager;Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/github/rosjava/android_remocons/common_tools/rocon/AppsManager$ConnectNodeThread;

.field final synthetic val$this$0:Lcom/github/rosjava/android_remocons/common_tools/rocon/AppsManager;


# direct methods
.method constructor <init>(Lcom/github/rosjava/android_remocons/common_tools/rocon/AppsManager$ConnectNodeThread;Lcom/github/rosjava/android_remocons/common_tools/rocon/AppsManager;)V
    .registers 3
    .param p1, "this$1"    # Lcom/github/rosjava/android_remocons/common_tools/rocon/AppsManager$ConnectNodeThread;

    .line 288
    iput-object p1, p0, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppsManager$ConnectNodeThread$1;->this$1:Lcom/github/rosjava/android_remocons/common_tools/rocon/AppsManager$ConnectNodeThread;

    iput-object p2, p0, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppsManager$ConnectNodeThread$1;->val$this$0:Lcom/github/rosjava/android_remocons/common_tools/rocon/AppsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .line 291
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppsManager$ConnectNodeThread$1;->this$1:Lcom/github/rosjava/android_remocons/common_tools/rocon/AppsManager$ConnectNodeThread;

    iget-object v0, v0, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppsManager$ConnectNodeThread;->this$0:Lcom/github/rosjava/android_remocons/common_tools/rocon/AppsManager;

    invoke-static {v0}, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppsManager;->access$300(Lcom/github/rosjava/android_remocons/common_tools/rocon/AppsManager;)Lcom/github/rosjava/android_remocons/common_tools/rocon/AppsManager$FailureHandler;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppsManager$FailureHandler;->handleFailure(Ljava/lang/String;)V

    .line 292
    return-void
.end method
