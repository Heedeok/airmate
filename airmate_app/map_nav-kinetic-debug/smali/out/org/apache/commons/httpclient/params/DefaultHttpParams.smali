.class public Lorg/apache/commons/httpclient/params/DefaultHttpParams;
.super Ljava/lang/Object;
.source "DefaultHttpParams.java"

# interfaces
.implements Lorg/apache/commons/httpclient/params/HttpParams;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final LOG:Lorg/apache/commons/logging/Log;

.field static synthetic class$org$apache$commons$httpclient$params$DefaultHttpParams:Ljava/lang/Class;

.field private static httpParamsFactory:Lorg/apache/commons/httpclient/params/HttpParamsFactory;


# instance fields
.field private defaults:Lorg/apache/commons/httpclient/params/HttpParams;

.field private parameters:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 54
    sget-object v0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->class$org$apache$commons$httpclient$params$DefaultHttpParams:Ljava/lang/Class;

    if-nez v0, :cond_d

    const-string v0, "org.apache.commons.httpclient.params.DefaultHttpParams"

    invoke-static {v0}, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->class$org$apache$commons$httpclient$params$DefaultHttpParams:Ljava/lang/Class;

    goto :goto_f

    :cond_d
    sget-object v0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->class$org$apache$commons$httpclient$params$DefaultHttpParams:Ljava/lang/Class;

    :goto_f
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->LOG:Lorg/apache/commons/logging/Log;

    .line 57
    new-instance v0, Lorg/apache/commons/httpclient/params/DefaultHttpParamsFactory;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/params/DefaultHttpParamsFactory;-><init>()V

    sput-object v0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->httpParamsFactory:Lorg/apache/commons/httpclient/params/HttpParamsFactory;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 113
    invoke-static {}, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->getDefaultParams()Lorg/apache/commons/httpclient/params/HttpParams;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/httpclient/params/DefaultHttpParams;-><init>(Lorg/apache/commons/httpclient/params/HttpParams;)V

    .line 114
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/httpclient/params/HttpParams;)V
    .registers 3
    .param p1, "defaults"    # Lorg/apache/commons/httpclient/params/HttpParams;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->defaults:Lorg/apache/commons/httpclient/params/HttpParams;

    .line 88
    iput-object v0, p0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->parameters:Ljava/util/HashMap;

    .line 101
    iput-object p1, p0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->defaults:Lorg/apache/commons/httpclient/params/HttpParams;

    .line 102
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .param p0, "x0"    # Ljava/lang/String;

    .line 54
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

.method public static getDefaultParams()Lorg/apache/commons/httpclient/params/HttpParams;
    .registers 1

    .line 67
    sget-object v0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->httpParamsFactory:Lorg/apache/commons/httpclient/params/HttpParamsFactory;

    invoke-interface {v0}, Lorg/apache/commons/httpclient/params/HttpParamsFactory;->getDefaultParams()Lorg/apache/commons/httpclient/params/HttpParams;

    move-result-object v0

    return-object v0
.end method

.method public static setHttpParamsFactory(Lorg/apache/commons/httpclient/params/HttpParamsFactory;)V
    .registers 3
    .param p0, "httpParamsFactory"    # Lorg/apache/commons/httpclient/params/HttpParamsFactory;

    .line 78
    if-eqz p0, :cond_5

    .line 81
    sput-object p0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->httpParamsFactory:Lorg/apache/commons/httpclient/params/HttpParamsFactory;

    .line 82
    return-void

    .line 79
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "httpParamsFactory may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 235
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->parameters:Ljava/util/HashMap;

    .line 236
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 247
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;

    .line 248
    .local v0, "clone":Lorg/apache/commons/httpclient/params/DefaultHttpParams;
    iget-object v1, p0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->parameters:Ljava/util/HashMap;

    if-eqz v1, :cond_14

    .line 249
    iget-object v1, p0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->parameters:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    iput-object v1, v0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->parameters:Ljava/util/HashMap;

    .line 251
    :cond_14
    iget-object v1, p0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->defaults:Lorg/apache/commons/httpclient/params/HttpParams;

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->setDefaults(Lorg/apache/commons/httpclient/params/HttpParams;)V

    .line 252
    return-object v0
.end method

.method public getBooleanParameter(Ljava/lang/String;Z)Z
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .line 204
    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 205
    .local v0, "param":Ljava/lang/Object;
    if-nez v0, :cond_7

    .line 206
    return p2

    .line 208
    :cond_7
    move-object v1, v0

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public declared-synchronized getDefaults()Lorg/apache/commons/httpclient/params/HttpParams;
    .registers 2

    monitor-enter p0

    .line 117
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->defaults:Lorg/apache/commons/httpclient/params/HttpParams;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDoubleParameter(Ljava/lang/String;D)D
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # D

    .line 192
    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 193
    .local v0, "param":Ljava/lang/Object;
    if-nez v0, :cond_7

    .line 194
    return-wide p2

    .line 196
    :cond_7
    move-object v1, v0

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    return-wide v1
.end method

.method public getIntParameter(Ljava/lang/String;I)I
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 180
    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 181
    .local v0, "param":Ljava/lang/Object;
    if-nez v0, :cond_7

    .line 182
    return p2

    .line 184
    :cond_7
    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public getLongParameter(Ljava/lang/String;J)J
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .line 168
    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 169
    .local v0, "param":Ljava/lang/Object;
    if-nez v0, :cond_7

    .line 170
    return-wide p2

    .line 172
    :cond_7
    move-object v1, v0

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    return-wide v1
.end method

.method public declared-synchronized getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    monitor-enter p0

    .line 126
    const/4 v0, 0x0

    .line 127
    .local v0, "param":Ljava/lang/Object;
    :try_start_2
    iget-object v1, p0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->parameters:Ljava/util/HashMap;

    if-eqz v1, :cond_d

    .line 128
    iget-object v1, p0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->parameters:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_20

    move-object v0, v1

    .line 130
    :cond_d
    if-eqz v0, :cond_11

    .line 132
    monitor-exit p0

    return-object v0

    .line 135
    :cond_11
    :try_start_11
    iget-object v1, p0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->defaults:Lorg/apache/commons/httpclient/params/HttpParams;

    if-eqz v1, :cond_1d

    .line 137
    iget-object v1, p0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->defaults:Lorg/apache/commons/httpclient/params/HttpParams;

    invoke-interface {v1, p1}, Lorg/apache/commons/httpclient/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_20

    monitor-exit p0

    return-object v1

    .line 140
    :cond_1d
    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    .line 125
    .end local v0    # "param":Ljava/lang/Object;
    .end local p1    # "name":Ljava/lang/String;
    :catchall_20
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isParameterFalse(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 228
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isParameterSet(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 216
    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isParameterSetLocally(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 220
    iget-object v0, p0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->parameters:Ljava/util/HashMap;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->parameters:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public isParameterTrue(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 224
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setBooleanParameter(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 212
    if-eqz p2, :cond_5

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_7

    :cond_5
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_7
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 213
    return-void
.end method

.method public declared-synchronized setDefaults(Lorg/apache/commons/httpclient/params/HttpParams;)V
    .registers 2
    .param p1, "params"    # Lorg/apache/commons/httpclient/params/HttpParams;

    monitor-enter p0

    .line 121
    :try_start_1
    iput-object p1, p0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->defaults:Lorg/apache/commons/httpclient/params/HttpParams;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 122
    monitor-exit p0

    return-void

    .line 120
    .end local p1    # "params":Lorg/apache/commons/httpclient/params/HttpParams;
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setDoubleParameter(Ljava/lang/String;D)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # D

    .line 200
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p2, p3}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 201
    return-void
.end method

.method public setIntParameter(Ljava/lang/String;I)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 188
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 189
    return-void
.end method

.method public setLongParameter(Ljava/lang/String;J)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 176
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p2, p3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 177
    return-void
.end method

.method public declared-synchronized setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    monitor-enter p0

    .line 146
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->parameters:Ljava/util/HashMap;

    if-nez v0, :cond_c

    .line 147
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->parameters:Ljava/util/HashMap;

    .line 149
    :cond_c
    iget-object v0, p0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->parameters:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 151
    sget-object v0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Set parameter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_39

    .line 153
    :cond_37
    monitor-exit p0

    return-void

    .line 145
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "value":Ljava/lang/Object;
    :catchall_39
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setParameters([Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p1, "names"    # [Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    monitor-enter p0

    .line 162
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    :try_start_2
    array-length v1, p1

    if-ge v0, v1, :cond_d

    .line 163
    aget-object v1, p1, v0

    invoke-virtual {p0, v1, p2}, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_f

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 165
    .end local v0    # "i":I
    :cond_d
    monitor-exit p0

    return-void

    .line 161
    .end local p1    # "names":[Ljava/lang/String;
    .end local p2    # "value":Ljava/lang/Object;
    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method
