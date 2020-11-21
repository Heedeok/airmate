.class Lorg/apache/commons/httpclient/cookie/RFC2965Spec$Cookie2PortAttributeHandler;
.super Ljava/lang/Object;
.source "RFC2965Spec.java"

# interfaces
.implements Lorg/apache/commons/httpclient/cookie/CookieAttributeHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/httpclient/cookie/RFC2965Spec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Cookie2PortAttributeHandler"
.end annotation


# instance fields
.field private final synthetic this$0:Lorg/apache/commons/httpclient/cookie/RFC2965Spec;


# direct methods
.method private constructor <init>(Lorg/apache/commons/httpclient/cookie/RFC2965Spec;)V
    .registers 2

    .line 824
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$Cookie2PortAttributeHandler;->this$0:Lorg/apache/commons/httpclient/cookie/RFC2965Spec;

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/httpclient/cookie/RFC2965Spec;Lorg/apache/commons/httpclient/cookie/RFC2965Spec$1;)V
    .registers 3
    .param p1, "x0"    # Lorg/apache/commons/httpclient/cookie/RFC2965Spec;
    .param p2, "x1"    # Lorg/apache/commons/httpclient/cookie/RFC2965Spec$1;

    .line 824
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$Cookie2PortAttributeHandler;-><init>(Lorg/apache/commons/httpclient/cookie/RFC2965Spec;)V

    return-void
.end method


# virtual methods
.method public match(Lorg/apache/commons/httpclient/Cookie;Lorg/apache/commons/httpclient/cookie/CookieOrigin;)Z
    .registers 8
    .param p1, "cookie"    # Lorg/apache/commons/httpclient/Cookie;
    .param p2, "origin"    # Lorg/apache/commons/httpclient/cookie/CookieOrigin;

    .line 882
    if-eqz p1, :cond_3c

    .line 885
    if-eqz p2, :cond_34

    .line 888
    instance-of v0, p1, Lorg/apache/commons/httpclient/cookie/Cookie2;

    const/4 v1, 0x0

    if-eqz v0, :cond_33

    .line 889
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/httpclient/cookie/Cookie2;

    .line 890
    .local v0, "cookie2":Lorg/apache/commons/httpclient/cookie/Cookie2;
    invoke-virtual {p2}, Lorg/apache/commons/httpclient/cookie/CookieOrigin;->getPort()I

    move-result v2

    .line 891
    .local v2, "port":I
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/cookie/Cookie2;->isPortAttributeSpecified()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 892
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/cookie/Cookie2;->getPorts()[I

    move-result-object v3

    if-nez v3, :cond_24

    .line 893
    sget-object v3, Lorg/apache/commons/httpclient/cookie/CookieSpecBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v4, "Invalid cookie state: port not specified"

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 894
    return v1

    .line 896
    :cond_24
    iget-object v3, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$Cookie2PortAttributeHandler;->this$0:Lorg/apache/commons/httpclient/cookie/RFC2965Spec;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/cookie/Cookie2;->getPorts()[I

    move-result-object v4

    invoke-static {v3, v2, v4}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->access$1000(Lorg/apache/commons/httpclient/cookie/RFC2965Spec;I[I)Z

    move-result v3

    if-nez v3, :cond_31

    .line 897
    return v1

    .line 900
    :cond_31
    const/4 v1, 0x1

    return v1

    .line 902
    .end local v0    # "cookie2":Lorg/apache/commons/httpclient/cookie/Cookie2;
    .end local v2    # "port":I
    :cond_33
    return v1

    .line 886
    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie origin may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 883
    :cond_3c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parse(Lorg/apache/commons/httpclient/Cookie;Ljava/lang/String;)V
    .registers 7
    .param p1, "cookie"    # Lorg/apache/commons/httpclient/Cookie;
    .param p2, "portValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/cookie/MalformedCookieException;
        }
    .end annotation

    .line 832
    if-eqz p1, :cond_2a

    .line 835
    instance-of v0, p1, Lorg/apache/commons/httpclient/cookie/Cookie2;

    if-eqz v0, :cond_29

    .line 836
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/httpclient/cookie/Cookie2;

    .line 837
    .local v0, "cookie2":Lorg/apache/commons/httpclient/cookie/Cookie2;
    const/4 v1, 0x1

    if-eqz p2, :cond_23

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    goto :goto_23

    .line 844
    :cond_19
    iget-object v2, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$Cookie2PortAttributeHandler;->this$0:Lorg/apache/commons/httpclient/cookie/RFC2965Spec;

    invoke-static {v2, p2}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->access$900(Lorg/apache/commons/httpclient/cookie/RFC2965Spec;Ljava/lang/String;)[I

    move-result-object v2

    .line 845
    .local v2, "ports":[I
    invoke-virtual {v0, v2}, Lorg/apache/commons/httpclient/cookie/Cookie2;->setPorts([I)V

    goto :goto_26

    .line 842
    .end local v2    # "ports":[I
    :cond_23
    :goto_23
    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/cookie/Cookie2;->setPortAttributeBlank(Z)V

    .line 847
    :goto_26
    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/cookie/Cookie2;->setPortAttributeSpecified(Z)V

    .line 849
    .end local v0    # "cookie2":Lorg/apache/commons/httpclient/cookie/Cookie2;
    :cond_29
    return-void

    .line 833
    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public validate(Lorg/apache/commons/httpclient/Cookie;Lorg/apache/commons/httpclient/cookie/CookieOrigin;)V
    .registers 7
    .param p1, "cookie"    # Lorg/apache/commons/httpclient/Cookie;
    .param p2, "origin"    # Lorg/apache/commons/httpclient/cookie/CookieOrigin;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/cookie/MalformedCookieException;
        }
    .end annotation

    .line 857
    if-eqz p1, :cond_33

    .line 860
    if-eqz p2, :cond_2b

    .line 863
    instance-of v0, p1, Lorg/apache/commons/httpclient/cookie/Cookie2;

    if-eqz v0, :cond_2a

    .line 864
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/httpclient/cookie/Cookie2;

    .line 865
    .local v0, "cookie2":Lorg/apache/commons/httpclient/cookie/Cookie2;
    invoke-virtual {p2}, Lorg/apache/commons/httpclient/cookie/CookieOrigin;->getPort()I

    move-result v1

    .line 866
    .local v1, "port":I
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/cookie/Cookie2;->isPortAttributeSpecified()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 867
    iget-object v2, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$Cookie2PortAttributeHandler;->this$0:Lorg/apache/commons/httpclient/cookie/RFC2965Spec;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/cookie/Cookie2;->getPorts()[I

    move-result-object v3

    invoke-static {v2, v1, v3}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->access$1000(Lorg/apache/commons/httpclient/cookie/RFC2965Spec;I[I)Z

    move-result v2

    if-eqz v2, :cond_22

    .end local v0    # "cookie2":Lorg/apache/commons/httpclient/cookie/Cookie2;
    .end local v1    # "port":I
    goto :goto_2a

    .line 868
    .restart local v0    # "cookie2":Lorg/apache/commons/httpclient/cookie/Cookie2;
    .restart local v1    # "port":I
    :cond_22
    new-instance v2, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    const-string v3, "Port attribute violates RFC 2965: Request port not found in cookie\'s port list."

    invoke-direct {v2, v3}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 874
    .end local v0    # "cookie2":Lorg/apache/commons/httpclient/cookie/Cookie2;
    .end local v1    # "port":I
    :cond_2a
    :goto_2a
    return-void

    .line 861
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie origin may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 858
    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
