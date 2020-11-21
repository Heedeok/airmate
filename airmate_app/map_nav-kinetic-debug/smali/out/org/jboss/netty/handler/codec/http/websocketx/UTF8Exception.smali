.class final Lorg/jboss/netty/handler/codec/http/websocketx/UTF8Exception;
.super Ljava/lang/RuntimeException;
.source "UTF8Exception.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "reason"    # Ljava/lang/String;

    .line 45
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 46
    return-void
.end method
