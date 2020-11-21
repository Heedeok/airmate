.class public Lorg/apache/commons/httpclient/methods/OptionsMethod;
.super Lorg/apache/commons/httpclient/HttpMethodBase;
.source "OptionsMethod.java"


# static fields
.field private static final LOG:Lorg/apache/commons/logging/Log;

.field static synthetic class$org$apache$commons$httpclient$methods$OptionsMethod:Ljava/lang/Class;


# instance fields
.field private methodsAllowed:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 74
    sget-object v0, Lorg/apache/commons/httpclient/methods/OptionsMethod;->class$org$apache$commons$httpclient$methods$OptionsMethod:Ljava/lang/Class;

    if-nez v0, :cond_d

    const-string v0, "org.apache.commons.httpclient.methods.OptionsMethod"

    invoke-static {v0}, Lorg/apache/commons/httpclient/methods/OptionsMethod;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/OptionsMethod;->class$org$apache$commons$httpclient$methods$OptionsMethod:Ljava/lang/Class;

    goto :goto_f

    :cond_d
    sget-object v0, Lorg/apache/commons/httpclient/methods/OptionsMethod;->class$org$apache$commons$httpclient$methods$OptionsMethod:Ljava/lang/Class;

    :goto_f
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/OptionsMethod;->LOG:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 84
    invoke-direct {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;-><init>()V

    .line 106
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/methods/OptionsMethod;->methodsAllowed:Ljava/util/Vector;

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "uri"    # Ljava/lang/String;

    .line 96
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/HttpMethodBase;-><init>(Ljava/lang/String;)V

    .line 106
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/methods/OptionsMethod;->methodsAllowed:Ljava/util/Vector;

    .line 97
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .param p0, "x0"    # Ljava/lang/String;

    .line 74
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    :catch_5
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getAllowedMethods()Ljava/util/Enumeration;
    .registers 2

    .line 141
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/OptionsMethod;->checkUsed()V

    .line 142
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/OptionsMethod;->methodsAllowed:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 117
    const-string v0, "OPTIONS"

    return-object v0
.end method

.method public isAllowed(Ljava/lang/String;)Z
    .registers 3
    .param p1, "method"    # Ljava/lang/String;

    .line 129
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/OptionsMethod;->checkUsed()V

    .line 130
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/OptionsMethod;->methodsAllowed:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public needContentLength()Z
    .registers 2

    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method protected processResponseHeaders(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V
    .registers 8
    .param p1, "state"    # Lorg/apache/commons/httpclient/HttpState;
    .param p2, "conn"    # Lorg/apache/commons/httpclient/HttpConnection;

    .line 163
    sget-object v0, Lorg/apache/commons/httpclient/methods/OptionsMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter OptionsMethod.processResponseHeaders(HttpState, HttpConnection)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 165
    const-string v0, "allow"

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/methods/OptionsMethod;->getResponseHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;

    move-result-object v0

    .line 166
    .local v0, "allowHeader":Lorg/apache/commons/httpclient/Header;
    if-eqz v0, :cond_32

    .line 167
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, "allowHeaderValue":Ljava/lang/String;
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, ","

    invoke-direct {v2, v1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .local v2, "tokenizer":Ljava/util/StringTokenizer;
    :goto_1a
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_32

    .line 171
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 173
    .local v3, "methodAllowed":Ljava/lang/String;
    iget-object v4, p0, Lorg/apache/commons/httpclient/methods/OptionsMethod;->methodsAllowed:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 174
    .end local v3    # "methodAllowed":Ljava/lang/String;
    goto :goto_1a

    .line 176
    .end local v1    # "allowHeaderValue":Ljava/lang/String;
    .end local v2    # "tokenizer":Ljava/util/StringTokenizer;
    :cond_32
    return-void
.end method
