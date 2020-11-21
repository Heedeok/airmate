.class public Lorg/apache/commons/httpclient/auth/HttpAuthRealm;
.super Lorg/apache/commons/httpclient/auth/AuthScope;
.source "HttpAuthRealm.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "realm"    # Ljava/lang/String;

    .line 54
    sget-object v0, Lorg/apache/commons/httpclient/auth/HttpAuthRealm;->ANY_SCHEME:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-direct {p0, p1, v1, p2, v0}, Lorg/apache/commons/httpclient/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void
.end method
