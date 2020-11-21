.class public Lorg/apache/xmlrpc/server/XmlRpcErrorLogger;
.super Ljava/lang/Object;
.source "XmlRpcErrorLogger.java"


# static fields
.field private static final log:Lorg/apache/commons/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 30
    const-class v0, Lorg/apache/xmlrpc/server/XmlRpcErrorLogger;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlrpc/server/XmlRpcErrorLogger;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public log(Ljava/lang/String;)V
    .registers 3
    .param p1, "pMessage"    # Ljava/lang/String;

    .line 43
    sget-object v0, Lorg/apache/xmlrpc/server/XmlRpcErrorLogger;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    .line 44
    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "pMessage"    # Ljava/lang/String;
    .param p2, "pThrowable"    # Ljava/lang/Throwable;

    .line 36
    sget-object v0, Lorg/apache/xmlrpc/server/XmlRpcErrorLogger;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 37
    return-void
.end method
