.class public Lorg/jboss/netty/handler/ssl/NotSslRecordException;
.super Ljavax/net/ssl/SSLException;
.source "NotSslRecordException.java"


# static fields
.field private static final serialVersionUID:J = -0x3be84c927670be49L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "reason"    # Ljava/lang/String;

    .line 33
    invoke-direct {p0, p1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    .line 34
    return-void
.end method
