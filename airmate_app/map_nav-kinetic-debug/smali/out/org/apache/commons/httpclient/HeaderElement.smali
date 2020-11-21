.class public Lorg/apache/commons/httpclient/HeaderElement;
.super Lorg/apache/commons/httpclient/NameValuePair;
.source "HeaderElement.java"


# static fields
.field private static final LOG:Lorg/apache/commons/logging/Log;

.field static synthetic class$org$apache$commons$httpclient$HeaderElement:Ljava/lang/Class;


# instance fields
.field private parameters:[Lorg/apache/commons/httpclient/NameValuePair;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 161
    sget-object v0, Lorg/apache/commons/httpclient/HeaderElement;->class$org$apache$commons$httpclient$HeaderElement:Ljava/lang/Class;

    if-nez v0, :cond_d

    const-string v0, "org.apache.commons.httpclient.HeaderElement"

    invoke-static {v0}, Lorg/apache/commons/httpclient/HeaderElement;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/HeaderElement;->class$org$apache$commons$httpclient$HeaderElement:Ljava/lang/Class;

    goto :goto_f

    :cond_d
    sget-object v0, Lorg/apache/commons/httpclient/HeaderElement;->class$org$apache$commons$httpclient$HeaderElement:Ljava/lang/Class;

    :goto_f
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/HeaderElement;->LOG:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lorg/apache/commons/httpclient/HeaderElement;-><init>(Ljava/lang/String;Ljava/lang/String;[Lorg/apache/commons/httpclient/NameValuePair;)V

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/httpclient/HeaderElement;-><init>(Ljava/lang/String;Ljava/lang/String;[Lorg/apache/commons/httpclient/NameValuePair;)V

    .line 105
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Lorg/apache/commons/httpclient/NameValuePair;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "parameters"    # [Lorg/apache/commons/httpclient/NameValuePair;

    .line 116
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/httpclient/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/HeaderElement;->parameters:[Lorg/apache/commons/httpclient/NameValuePair;

    .line 117
    iput-object p3, p0, Lorg/apache/commons/httpclient/HeaderElement;->parameters:[Lorg/apache/commons/httpclient/NameValuePair;

    .line 118
    return-void
.end method

.method public constructor <init>([C)V
    .registers 4
    .param p1, "chars"    # [C

    .line 155
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lorg/apache/commons/httpclient/HeaderElement;-><init>([CII)V

    .line 156
    return-void
.end method

.method public constructor <init>([CII)V
    .registers 8
    .param p1, "chars"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 130
    invoke-direct {p0}, Lorg/apache/commons/httpclient/HeaderElement;-><init>()V

    .line 131
    if-nez p1, :cond_6

    .line 132
    return-void

    .line 134
    :cond_6
    new-instance v0, Lorg/apache/commons/httpclient/util/ParameterParser;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/util/ParameterParser;-><init>()V

    .line 135
    .local v0, "parser":Lorg/apache/commons/httpclient/util/ParameterParser;
    const/16 v1, 0x3b

    invoke-virtual {v0, p1, p2, p3, v1}, Lorg/apache/commons/httpclient/util/ParameterParser;->parse([CIIC)Ljava/util/List;

    move-result-object v1

    .line 136
    .local v1, "params":Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_40

    .line 137
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/httpclient/NameValuePair;

    .line 138
    .local v2, "element":Lorg/apache/commons/httpclient/NameValuePair;
    invoke-virtual {v2}, Lorg/apache/commons/httpclient/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/commons/httpclient/HeaderElement;->setName(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v2}, Lorg/apache/commons/httpclient/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/commons/httpclient/HeaderElement;->setValue(Ljava/lang/String;)V

    .line 140
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_40

    .line 141
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lorg/apache/commons/httpclient/NameValuePair;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/apache/commons/httpclient/NameValuePair;

    iput-object v3, p0, Lorg/apache/commons/httpclient/HeaderElement;->parameters:[Lorg/apache/commons/httpclient/NameValuePair;

    .line 145
    .end local v2    # "element":Lorg/apache/commons/httpclient/NameValuePair;
    :cond_40
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .param p0, "x0"    # Ljava/lang/String;

    .line 161
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

.method public static final parse(Ljava/lang/String;)[Lorg/apache/commons/httpclient/HeaderElement;
    .registers 3
    .param p0, "headerValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/HttpException;
        }
    .end annotation

    .line 260
    sget-object v0, Lorg/apache/commons/httpclient/HeaderElement;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HeaderElement.parse(String)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 262
    if-nez p0, :cond_d

    .line 263
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/commons/httpclient/HeaderElement;

    return-object v0

    .line 265
    :cond_d
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/httpclient/HeaderElement;->parseElements([C)[Lorg/apache/commons/httpclient/HeaderElement;

    move-result-object v0

    return-object v0
.end method

.method public static final parseElements(Ljava/lang/String;)[Lorg/apache/commons/httpclient/HeaderElement;
    .registers 3
    .param p0, "headerValue"    # Ljava/lang/String;

    .line 238
    sget-object v0, Lorg/apache/commons/httpclient/HeaderElement;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HeaderElement.parseElements(String)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 240
    if-nez p0, :cond_d

    .line 241
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/commons/httpclient/HeaderElement;

    return-object v0

    .line 243
    :cond_d
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/httpclient/HeaderElement;->parseElements([C)[Lorg/apache/commons/httpclient/HeaderElement;

    move-result-object v0

    return-object v0
.end method

.method public static final parseElements([C)[Lorg/apache/commons/httpclient/HeaderElement;
    .registers 10
    .param p0, "headerValue"    # [C

    .line 194
    sget-object v0, Lorg/apache/commons/httpclient/HeaderElement;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HeaderElement.parseElements(char[])"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 196
    const/4 v0, 0x0

    if-nez p0, :cond_d

    .line 197
    new-array v0, v0, [Lorg/apache/commons/httpclient/HeaderElement;

    return-object v0

    .line 199
    :cond_d
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 201
    .local v1, "elements":Ljava/util/List;
    const/4 v2, 0x0

    .line 202
    .local v2, "i":I
    const/4 v3, 0x0

    .line 203
    .local v3, "from":I
    array-length v4, p0

    .line 204
    .local v4, "len":I
    move v5, v3

    move v3, v2

    const/4 v2, 0x0

    .line 205
    .local v2, "qouted":Z
    .local v3, "i":I
    .local v5, "from":I
    :goto_18
    if-ge v3, v4, :cond_4e

    .line 206
    aget-char v6, p0, v3

    .line 207
    .local v6, "ch":C
    const/16 v7, 0x22

    if-ne v6, v7, :cond_26

    .line 208
    if-nez v2, :cond_24

    const/4 v7, 0x1

    goto :goto_25

    :cond_24
    const/4 v7, 0x0

    :goto_25
    move v2, v7

    .line 210
    :cond_26
    const/4 v7, 0x0

    .line 211
    .local v7, "element":Lorg/apache/commons/httpclient/HeaderElement;
    if-nez v2, :cond_36

    const/16 v8, 0x2c

    if-ne v6, v8, :cond_36

    .line 212
    new-instance v8, Lorg/apache/commons/httpclient/HeaderElement;

    invoke-direct {v8, p0, v5, v3}, Lorg/apache/commons/httpclient/HeaderElement;-><init>([CII)V

    move-object v7, v8

    .line 213
    add-int/lit8 v5, v3, 0x1

    goto :goto_40

    .line 214
    :cond_36
    add-int/lit8 v8, v4, -0x1

    if-ne v3, v8, :cond_40

    .line 215
    new-instance v8, Lorg/apache/commons/httpclient/HeaderElement;

    invoke-direct {v8, p0, v5, v4}, Lorg/apache/commons/httpclient/HeaderElement;-><init>([CII)V

    move-object v7, v8

    .line 217
    :cond_40
    :goto_40
    if-eqz v7, :cond_4b

    invoke-virtual {v7}, Lorg/apache/commons/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4b

    .line 218
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    :cond_4b
    add-int/lit8 v3, v3, 0x1

    .line 221
    .end local v6    # "ch":C
    .end local v7    # "element":Lorg/apache/commons/httpclient/HeaderElement;
    goto :goto_18

    .line 222
    :cond_4e
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/commons/httpclient/HeaderElement;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/httpclient/HeaderElement;

    return-object v0
.end method


# virtual methods
.method public getParameterByName(Ljava/lang/String;)Lorg/apache/commons/httpclient/NameValuePair;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;

    .line 279
    sget-object v0, Lorg/apache/commons/httpclient/HeaderElement;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HeaderElement.getParameterByName(String)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 281
    if-eqz p1, :cond_26

    .line 284
    const/4 v0, 0x0

    .line 285
    .local v0, "found":Lorg/apache/commons/httpclient/NameValuePair;
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HeaderElement;->getParameters()[Lorg/apache/commons/httpclient/NameValuePair;

    move-result-object v1

    .line 286
    .local v1, "parameters":[Lorg/apache/commons/httpclient/NameValuePair;
    if-eqz v1, :cond_25

    .line 287
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    array-length v3, v1

    if-ge v2, v3, :cond_25

    .line 288
    aget-object v3, v1, v2

    .line 289
    .local v3, "current":Lorg/apache/commons/httpclient/NameValuePair;
    invoke-virtual {v3}, Lorg/apache/commons/httpclient/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 290
    move-object v0, v3

    .line 291
    goto :goto_25

    .line 287
    .end local v3    # "current":Lorg/apache/commons/httpclient/NameValuePair;
    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 295
    .end local v2    # "i":I
    :cond_25
    :goto_25
    return-object v0

    .line 282
    .end local v0    # "found":Lorg/apache/commons/httpclient/NameValuePair;
    .end local v1    # "parameters":[Lorg/apache/commons/httpclient/NameValuePair;
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Name may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getParameters()[Lorg/apache/commons/httpclient/NameValuePair;
    .registers 2

    .line 177
    iget-object v0, p0, Lorg/apache/commons/httpclient/HeaderElement;->parameters:[Lorg/apache/commons/httpclient/NameValuePair;

    return-object v0
.end method
