.class public Lorg/apache/commons/httpclient/HttpClient;
.super Ljava/lang/Object;
.source "HttpClient.java"


# static fields
.field private static final LOG:Lorg/apache/commons/logging/Log;

.field static synthetic class$org$apache$commons$httpclient$HttpClient:Ljava/lang/Class;


# instance fields
.field private hostConfiguration:Lorg/apache/commons/httpclient/HostConfiguration;

.field private httpConnectionManager:Lorg/apache/commons/httpclient/HttpConnectionManager;

.field private params:Lorg/apache/commons/httpclient/params/HttpClientParams;

.field private state:Lorg/apache/commons/httpclient/HttpState;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 66
    sget-object v0, Lorg/apache/commons/httpclient/HttpClient;->class$org$apache$commons$httpclient$HttpClient:Ljava/lang/Class;

    if-nez v0, :cond_d

    const-string v0, "org.apache.commons.httpclient.HttpClient"

    invoke-static {v0}, Lorg/apache/commons/httpclient/HttpClient;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/HttpClient;->class$org$apache$commons$httpclient$HttpClient:Ljava/lang/Class;

    goto :goto_f

    :cond_d
    sget-object v0, Lorg/apache/commons/httpclient/HttpClient;->class$org$apache$commons$httpclient$HttpClient:Ljava/lang/Class;

    :goto_f
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/HttpClient;->LOG:Lorg/apache/commons/logging/Log;

    .line 70
    sget-object v0, Lorg/apache/commons/httpclient/HttpClient;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_101

    .line 72
    :try_start_1d
    sget-object v0, Lorg/apache/commons/httpclient/HttpClient;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Java version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "java.version"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 73
    sget-object v0, Lorg/apache/commons/httpclient/HttpClient;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Java vendor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "java.vendor"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 74
    sget-object v0, Lorg/apache/commons/httpclient/HttpClient;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Java class path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "java.class.path"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 75
    sget-object v0, Lorg/apache/commons/httpclient/HttpClient;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Operating system name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "os.name"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 76
    sget-object v0, Lorg/apache/commons/httpclient/HttpClient;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Operating system architecture: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "os.arch"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 77
    sget-object v0, Lorg/apache/commons/httpclient/HttpClient;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Operating system version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "os.version"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 79
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v0

    .line 80
    .local v0, "providers":[Ljava/security/Provider;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_ca
    array-length v2, v0

    if-ge v1, v2, :cond_ff

    .line 81
    aget-object v2, v0, v1

    .line 82
    .local v2, "provider":Ljava/security/Provider;
    sget-object v3, Lorg/apache/commons/httpclient/HttpClient;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/security/Provider;->getVersion()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/security/Provider;->getInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_fc
    .catch Ljava/lang/SecurityException; {:try_start_1d .. :try_end_fc} :catch_100

    .line 80
    .end local v2    # "provider":Ljava/security/Provider;
    add-int/lit8 v1, v1, 0x1

    goto :goto_ca

    .line 86
    .end local v0    # "providers":[Ljava/security/Provider;
    .end local v1    # "i":I
    :cond_ff
    goto :goto_101

    .line 85
    :catch_100
    move-exception v0

    .line 88
    :cond_101
    :goto_101
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 97
    new-instance v0, Lorg/apache/commons/httpclient/params/HttpClientParams;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/params/HttpClientParams;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/commons/httpclient/HttpClient;-><init>(Lorg/apache/commons/httpclient/params/HttpClientParams;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/httpclient/HttpConnectionManager;)V
    .registers 3
    .param p1, "httpConnectionManager"    # Lorg/apache/commons/httpclient/HttpConnectionManager;

    .line 169
    new-instance v0, Lorg/apache/commons/httpclient/params/HttpClientParams;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/params/HttpClientParams;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/httpclient/HttpClient;-><init>(Lorg/apache/commons/httpclient/params/HttpClientParams;Lorg/apache/commons/httpclient/HttpConnectionManager;)V

    .line 170
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/httpclient/params/HttpClientParams;)V
    .registers 6
    .param p1, "params"    # Lorg/apache/commons/httpclient/params/HttpClientParams;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    new-instance v0, Lorg/apache/commons/httpclient/HttpState;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/HttpState;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpClient;->state:Lorg/apache/commons/httpclient/HttpState;

    .line 188
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpClient;->params:Lorg/apache/commons/httpclient/params/HttpClientParams;

    .line 194
    new-instance v1, Lorg/apache/commons/httpclient/HostConfiguration;

    invoke-direct {v1}, Lorg/apache/commons/httpclient/HostConfiguration;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/httpclient/HttpClient;->hostConfiguration:Lorg/apache/commons/httpclient/HostConfiguration;

    .line 112
    if-eqz p1, :cond_4c

    .line 115
    iput-object p1, p0, Lorg/apache/commons/httpclient/HttpClient;->params:Lorg/apache/commons/httpclient/params/HttpClientParams;

    .line 116
    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpClient;->httpConnectionManager:Lorg/apache/commons/httpclient/HttpConnectionManager;

    .line 117
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/params/HttpClientParams;->getConnectionManagerClass()Ljava/lang/Class;

    move-result-object v0

    .line 118
    .local v0, "clazz":Ljava/lang/Class;
    if-eqz v0, :cond_31

    .line 120
    :try_start_20
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/httpclient/HttpConnectionManager;

    iput-object v1, p0, Lorg/apache/commons/httpclient/HttpClient;->httpConnectionManager:Lorg/apache/commons/httpclient/HttpConnectionManager;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_28} :catch_29

    .line 125
    goto :goto_31

    .line 121
    :catch_29
    move-exception v1

    .line 122
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lorg/apache/commons/httpclient/HttpClient;->LOG:Lorg/apache/commons/logging/Log;

    const-string v3, "Error instantiating connection manager class, defaulting to SimpleHttpConnectionManager"

    invoke-interface {v2, v3, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 127
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_31
    :goto_31
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpClient;->httpConnectionManager:Lorg/apache/commons/httpclient/HttpConnectionManager;

    if-nez v1, :cond_3c

    .line 128
    new-instance v1, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;

    invoke-direct {v1}, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/httpclient/HttpClient;->httpConnectionManager:Lorg/apache/commons/httpclient/HttpConnectionManager;

    .line 130
    :cond_3c
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpClient;->httpConnectionManager:Lorg/apache/commons/httpclient/HttpConnectionManager;

    if-eqz v1, :cond_4b

    .line 131
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpClient;->httpConnectionManager:Lorg/apache/commons/httpclient/HttpConnectionManager;

    invoke-interface {v1}, Lorg/apache/commons/httpclient/HttpConnectionManager;->getParams()Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpClient;->params:Lorg/apache/commons/httpclient/params/HttpClientParams;

    invoke-virtual {v1, v2}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->setDefaults(Lorg/apache/commons/httpclient/params/HttpParams;)V

    .line 133
    :cond_4b
    return-void

    .line 113
    .end local v0    # "clazz":Ljava/lang/Class;
    :cond_4c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Params may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/apache/commons/httpclient/params/HttpClientParams;Lorg/apache/commons/httpclient/HttpConnectionManager;)V
    .registers 5
    .param p1, "params"    # Lorg/apache/commons/httpclient/params/HttpClientParams;
    .param p2, "httpConnectionManager"    # Lorg/apache/commons/httpclient/HttpConnectionManager;

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    new-instance v0, Lorg/apache/commons/httpclient/HttpState;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/HttpState;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpClient;->state:Lorg/apache/commons/httpclient/HttpState;

    .line 188
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpClient;->params:Lorg/apache/commons/httpclient/params/HttpClientParams;

    .line 194
    new-instance v0, Lorg/apache/commons/httpclient/HostConfiguration;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/HostConfiguration;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpClient;->hostConfiguration:Lorg/apache/commons/httpclient/HostConfiguration;

    .line 148
    if-eqz p2, :cond_30

    .line 151
    if-eqz p1, :cond_28

    .line 154
    iput-object p1, p0, Lorg/apache/commons/httpclient/HttpClient;->params:Lorg/apache/commons/httpclient/params/HttpClientParams;

    .line 155
    iput-object p2, p0, Lorg/apache/commons/httpclient/HttpClient;->httpConnectionManager:Lorg/apache/commons/httpclient/HttpConnectionManager;

    .line 156
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpClient;->httpConnectionManager:Lorg/apache/commons/httpclient/HttpConnectionManager;

    invoke-interface {v0}, Lorg/apache/commons/httpclient/HttpConnectionManager;->getParams()Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpClient;->params:Lorg/apache/commons/httpclient/params/HttpClientParams;

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->setDefaults(Lorg/apache/commons/httpclient/params/HttpParams;)V

    .line 157
    return-void

    .line 152
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Params may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "httpConnectionManager cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .param p0, "x0"    # Ljava/lang/String;

    .line 66
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
.method public executeMethod(Lorg/apache/commons/httpclient/HostConfiguration;Lorg/apache/commons/httpclient/HttpMethod;)I
    .registers 5
    .param p1, "hostConfiguration"    # Lorg/apache/commons/httpclient/HostConfiguration;
    .param p2, "method"    # Lorg/apache/commons/httpclient/HttpMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/httpclient/HttpException;
        }
    .end annotation

    .line 344
    sget-object v0, Lorg/apache/commons/httpclient/HttpClient;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpClient.executeMethod(HostConfiguration,HttpMethod)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 346
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/httpclient/HttpClient;->executeMethod(Lorg/apache/commons/httpclient/HostConfiguration;Lorg/apache/commons/httpclient/HttpMethod;Lorg/apache/commons/httpclient/HttpState;)I

    move-result v0

    return v0
.end method

.method public executeMethod(Lorg/apache/commons/httpclient/HostConfiguration;Lorg/apache/commons/httpclient/HttpMethod;Lorg/apache/commons/httpclient/HttpState;)I
    .registers 10
    .param p1, "hostconfig"    # Lorg/apache/commons/httpclient/HostConfiguration;
    .param p2, "method"    # Lorg/apache/commons/httpclient/HttpMethod;
    .param p3, "state"    # Lorg/apache/commons/httpclient/HttpState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/httpclient/HttpException;
        }
    .end annotation

    .line 374
    sget-object v0, Lorg/apache/commons/httpclient/HttpClient;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpClient.executeMethod(HostConfiguration,HttpMethod,HttpState)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 376
    if-eqz p2, :cond_47

    .line 379
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpClient;->getHostConfiguration()Lorg/apache/commons/httpclient/HostConfiguration;

    move-result-object v0

    .line 380
    .local v0, "defaulthostconfig":Lorg/apache/commons/httpclient/HostConfiguration;
    if-nez p1, :cond_10

    .line 381
    move-object p1, v0

    .line 383
    :cond_10
    invoke-interface {p2}, Lorg/apache/commons/httpclient/HttpMethod;->getURI()Lorg/apache/commons/httpclient/URI;

    move-result-object v1

    .line 384
    .local v1, "uri":Lorg/apache/commons/httpclient/URI;
    if-eq p1, v0, :cond_1c

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/URI;->isAbsoluteURI()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 386
    :cond_1c
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HostConfiguration;->clone()Ljava/lang/Object;

    move-result-object v2

    move-object p1, v2

    check-cast p1, Lorg/apache/commons/httpclient/HostConfiguration;

    .line 387
    invoke-virtual {v1}, Lorg/apache/commons/httpclient/URI;->isAbsoluteURI()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 388
    invoke-virtual {p1, v1}, Lorg/apache/commons/httpclient/HostConfiguration;->setHost(Lorg/apache/commons/httpclient/URI;)V

    .line 392
    :cond_2c
    new-instance v2, Lorg/apache/commons/httpclient/HttpMethodDirector;

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpClient;->getHttpConnectionManager()Lorg/apache/commons/httpclient/HttpConnectionManager;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/commons/httpclient/HttpClient;->params:Lorg/apache/commons/httpclient/params/HttpClientParams;

    if-nez p3, :cond_3b

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpClient;->getState()Lorg/apache/commons/httpclient/HttpState;

    move-result-object v5

    goto :goto_3c

    :cond_3b
    move-object v5, p3

    :goto_3c
    invoke-direct {v2, v3, p1, v4, v5}, Lorg/apache/commons/httpclient/HttpMethodDirector;-><init>(Lorg/apache/commons/httpclient/HttpConnectionManager;Lorg/apache/commons/httpclient/HostConfiguration;Lorg/apache/commons/httpclient/params/HttpClientParams;Lorg/apache/commons/httpclient/HttpState;)V

    .line 397
    .local v2, "methodDirector":Lorg/apache/commons/httpclient/HttpMethodDirector;
    invoke-virtual {v2, p2}, Lorg/apache/commons/httpclient/HttpMethodDirector;->executeMethod(Lorg/apache/commons/httpclient/HttpMethod;)V

    .line 398
    invoke-interface {p2}, Lorg/apache/commons/httpclient/HttpMethod;->getStatusCode()I

    move-result v3

    return v3

    .line 377
    .end local v0    # "defaulthostconfig":Lorg/apache/commons/httpclient/HostConfiguration;
    .end local v1    # "uri":Lorg/apache/commons/httpclient/URI;
    .end local v2    # "methodDirector":Lorg/apache/commons/httpclient/HttpMethodDirector;
    :cond_47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HttpMethod parameter may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public executeMethod(Lorg/apache/commons/httpclient/HttpMethod;)I
    .registers 4
    .param p1, "method"    # Lorg/apache/commons/httpclient/HttpMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/httpclient/HttpException;
        }
    .end annotation

    .line 321
    sget-object v0, Lorg/apache/commons/httpclient/HttpClient;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpClient.executeMethod(HttpMethod)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 323
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0}, Lorg/apache/commons/httpclient/HttpClient;->executeMethod(Lorg/apache/commons/httpclient/HostConfiguration;Lorg/apache/commons/httpclient/HttpMethod;Lorg/apache/commons/httpclient/HttpState;)I

    move-result v0

    return v0
.end method

.method public getHost()Ljava/lang/String;
    .registers 2

    .line 409
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpClient;->hostConfiguration:Lorg/apache/commons/httpclient/HostConfiguration;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HostConfiguration;->getHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getHostConfiguration()Lorg/apache/commons/httpclient/HostConfiguration;
    .registers 2

    monitor-enter p0

    .line 432
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpClient;->hostConfiguration:Lorg/apache/commons/httpclient/HostConfiguration;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getHttpConnectionManager()Lorg/apache/commons/httpclient/HttpConnectionManager;
    .registers 2

    monitor-enter p0

    .line 456
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpClient;->httpConnectionManager:Lorg/apache/commons/httpclient/HttpConnectionManager;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getParams()Lorg/apache/commons/httpclient/params/HttpClientParams;
    .registers 2

    .line 485
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpClient;->params:Lorg/apache/commons/httpclient/params/HttpClientParams;

    return-object v0
.end method

.method public getPort()I
    .registers 2

    .line 420
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpClient;->hostConfiguration:Lorg/apache/commons/httpclient/HostConfiguration;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HostConfiguration;->getPort()I

    move-result v0

    return v0
.end method

.method public declared-synchronized getState()Lorg/apache/commons/httpclient/HttpState;
    .registers 2

    monitor-enter p0

    .line 205
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpClient;->state:Lorg/apache/commons/httpclient/HttpState;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isStrictMode()Z
    .registers 2

    monitor-enter p0

    .line 254
    monitor-exit p0

    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized setConnectionTimeout(I)V
    .registers 3
    .param p1, "newTimeoutInMilliseconds"    # I

    monitor-enter p0

    .line 302
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpClient;->httpConnectionManager:Lorg/apache/commons/httpclient/HttpConnectionManager;

    invoke-interface {v0}, Lorg/apache/commons/httpclient/HttpConnectionManager;->getParams()Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->setConnectionTimeout(I)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 303
    monitor-exit p0

    return-void

    .line 301
    .end local p1    # "newTimeoutInMilliseconds":I
    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setHostConfiguration(Lorg/apache/commons/httpclient/HostConfiguration;)V
    .registers 2
    .param p1, "hostConfiguration"    # Lorg/apache/commons/httpclient/HostConfiguration;

    monitor-enter p0

    .line 444
    :try_start_1
    iput-object p1, p0, Lorg/apache/commons/httpclient/HttpClient;->hostConfiguration:Lorg/apache/commons/httpclient/HostConfiguration;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 445
    monitor-exit p0

    return-void

    .line 443
    .end local p1    # "hostConfiguration":Lorg/apache/commons/httpclient/HostConfiguration;
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setHttpConnectionFactoryTimeout(J)V
    .registers 4
    .param p1, "timeout"    # J

    monitor-enter p0

    .line 287
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpClient;->params:Lorg/apache/commons/httpclient/params/HttpClientParams;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setConnectionManagerTimeout(J)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 288
    monitor-exit p0

    return-void

    .line 286
    .end local p1    # "timeout":J
    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setHttpConnectionManager(Lorg/apache/commons/httpclient/HttpConnectionManager;)V
    .registers 4
    .param p1, "httpConnectionManager"    # Lorg/apache/commons/httpclient/HttpConnectionManager;

    monitor-enter p0

    .line 471
    :try_start_1
    iput-object p1, p0, Lorg/apache/commons/httpclient/HttpClient;->httpConnectionManager:Lorg/apache/commons/httpclient/HttpConnectionManager;

    .line 472
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpClient;->httpConnectionManager:Lorg/apache/commons/httpclient/HttpConnectionManager;

    if-eqz v0, :cond_12

    .line 473
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpClient;->httpConnectionManager:Lorg/apache/commons/httpclient/HttpConnectionManager;

    invoke-interface {v0}, Lorg/apache/commons/httpclient/HttpConnectionManager;->getParams()Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpClient;->params:Lorg/apache/commons/httpclient/params/HttpClientParams;

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->setDefaults(Lorg/apache/commons/httpclient/params/HttpParams;)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 475
    :cond_12
    monitor-exit p0

    return-void

    .line 470
    .end local p1    # "httpConnectionManager":Lorg/apache/commons/httpclient/HttpConnectionManager;
    :catchall_14
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setParams(Lorg/apache/commons/httpclient/params/HttpClientParams;)V
    .registers 4
    .param p1, "params"    # Lorg/apache/commons/httpclient/params/HttpClientParams;

    .line 496
    if-eqz p1, :cond_5

    .line 499
    iput-object p1, p0, Lorg/apache/commons/httpclient/HttpClient;->params:Lorg/apache/commons/httpclient/params/HttpClientParams;

    .line 500
    return-void

    .line 497
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized setState(Lorg/apache/commons/httpclient/HttpState;)V
    .registers 2
    .param p1, "state"    # Lorg/apache/commons/httpclient/HttpState;

    monitor-enter p0

    .line 215
    :try_start_1
    iput-object p1, p0, Lorg/apache/commons/httpclient/HttpClient;->state:Lorg/apache/commons/httpclient/HttpState;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 216
    monitor-exit p0

    return-void

    .line 214
    .end local p1    # "state":Lorg/apache/commons/httpclient/HttpState;
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setStrictMode(Z)V
    .registers 3
    .param p1, "strictMode"    # Z

    monitor-enter p0

    .line 235
    if-eqz p1, :cond_b

    .line 236
    :try_start_3
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpClient;->params:Lorg/apache/commons/httpclient/params/HttpClientParams;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/params/HttpClientParams;->makeStrict()V

    goto :goto_10

    .line 234
    .end local p1    # "strictMode":Z
    :catchall_9
    move-exception p1

    goto :goto_12

    .line 238
    .restart local p1    # "strictMode":Z
    :cond_b
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpClient;->params:Lorg/apache/commons/httpclient/params/HttpClientParams;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/params/HttpClientParams;->makeLenient()V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_9

    .line 240
    :goto_10
    monitor-exit p0

    return-void

    .line 234
    .end local p1    # "strictMode":Z
    :goto_12
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setTimeout(I)V
    .registers 3
    .param p1, "newTimeoutInMilliseconds"    # I

    monitor-enter p0

    .line 270
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpClient;->params:Lorg/apache/commons/httpclient/params/HttpClientParams;

    invoke-virtual {v0, p1}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setSoTimeout(I)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 271
    monitor-exit p0

    return-void

    .line 269
    .end local p1    # "newTimeoutInMilliseconds":I
    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method
