.class Lorg/ros/time/NtpTimeProvider$1;
.super Ljava/lang/Object;
.source "NtpTimeProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ros/time/NtpTimeProvider;->startPeriodicUpdates(JLjava/util/concurrent/TimeUnit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ros/time/NtpTimeProvider;


# direct methods
.method constructor <init>(Lorg/ros/time/NtpTimeProvider;)V
    .registers 2
    .param p1, "this$0"    # Lorg/ros/time/NtpTimeProvider;

    .line 126
    iput-object p1, p0, Lorg/ros/time/NtpTimeProvider$1;->this$0:Lorg/ros/time/NtpTimeProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 130
    :try_start_0
    iget-object v0, p0, Lorg/ros/time/NtpTimeProvider$1;->this$0:Lorg/ros/time/NtpTimeProvider;

    invoke-virtual {v0}, Lorg/ros/time/NtpTimeProvider;->updateTime()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 133
    goto :goto_10

    .line 131
    :catch_6
    move-exception v0

    .line 132
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lorg/ros/time/NtpTimeProvider;->access$000()Lorg/apache/commons/logging/Log;

    move-result-object v1

    const-string v2, "Periodic NTP update failed."

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 134
    .end local v0    # "e":Ljava/io/IOException;
    :goto_10
    return-void
.end method
