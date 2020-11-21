.class public Lorg/apache/xmlrpc/client/TimingOutCallback$TimeoutException;
.super Lorg/apache/xmlrpc/XmlRpcException;
.source "TimingOutCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlrpc/client/TimingOutCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeoutException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x43a86cef76a58779L


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3
    .param p1, "pCode"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 53
    invoke-direct {p0, p1, p2}, Lorg/apache/xmlrpc/XmlRpcException;-><init>(ILjava/lang/String;)V

    .line 54
    return-void
.end method
