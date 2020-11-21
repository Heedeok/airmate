.class public Ljavax/jmdns/impl/JmDNSImpl$Shutdown;
.super Ljava/lang/Object;
.source "JmDNSImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/JmDNSImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Shutdown"
.end annotation


# instance fields
.field final synthetic this$0:Ljavax/jmdns/impl/JmDNSImpl;


# direct methods
.method protected constructor <init>(Ljavax/jmdns/impl/JmDNSImpl;)V
    .registers 2
    .param p1, "this$0"    # Ljavax/jmdns/impl/JmDNSImpl;

    .line 1696
    iput-object p1, p0, Ljavax/jmdns/impl/JmDNSImpl$Shutdown;->this$0:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1701
    :try_start_0
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl$Shutdown;->this$0:Ljavax/jmdns/impl/JmDNSImpl;

    const/4 v1, 0x0

    iput-object v1, v0, Ljavax/jmdns/impl/JmDNSImpl;->_shutdown:Ljava/lang/Thread;

    .line 1702
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl$Shutdown;->this$0:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v0}, Ljavax/jmdns/impl/JmDNSImpl;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_a} :catch_b

    .line 1705
    goto :goto_22

    .line 1703
    :catch_b
    move-exception v0

    .line 1704
    .local v0, "exception":Ljava/lang/Throwable;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while shuting down. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1706
    .end local v0    # "exception":Ljava/lang/Throwable;
    :goto_22
    return-void
.end method
