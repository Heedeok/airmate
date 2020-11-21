.class public Lorg/apache/commons/httpclient/methods/PostMethod;
.super Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;
.source "PostMethod.java"


# static fields
.field public static final FORM_URL_ENCODED_CONTENT_TYPE:Ljava/lang/String; = "application/x-www-form-urlencoded"

.field private static final LOG:Lorg/apache/commons/logging/Log;

.field static synthetic class$org$apache$commons$httpclient$methods$PostMethod:Ljava/lang/Class;


# instance fields
.field private params:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 76
    sget-object v0, Lorg/apache/commons/httpclient/methods/PostMethod;->class$org$apache$commons$httpclient$methods$PostMethod:Ljava/lang/Class;

    if-nez v0, :cond_d

    const-string v0, "org.apache.commons.httpclient.methods.PostMethod"

    invoke-static {v0}, Lorg/apache/commons/httpclient/methods/PostMethod;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/PostMethod;->class$org$apache$commons$httpclient$methods$PostMethod:Ljava/lang/Class;

    goto :goto_f

    :cond_d
    sget-object v0, Lorg/apache/commons/httpclient/methods/PostMethod;->class$org$apache$commons$httpclient$methods$PostMethod:Ljava/lang/Class;

    :goto_f
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/PostMethod;->LOG:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 95
    invoke-direct {p0}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;-><init>()V

    .line 85
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/methods/PostMethod;->params:Ljava/util/Vector;

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "uri"    # Ljava/lang/String;

    .line 106
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;-><init>(Ljava/lang/String;)V

    .line 85
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/methods/PostMethod;->params:Ljava/util/Vector;

    .line 107
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .param p0, "x0"    # Ljava/lang/String;

    .line 76
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
.method public addParameter(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "paramName"    # Ljava/lang/String;
    .param p2, "paramValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 265
    sget-object v0, Lorg/apache/commons/httpclient/methods/PostMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter PostMethod.addParameter(String, String)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 267
    if-eqz p1, :cond_19

    if-eqz p2, :cond_19

    .line 271
    invoke-super {p0}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->clearRequestBody()V

    .line 272
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/PostMethod;->params:Ljava/util/Vector;

    new-instance v1, Lorg/apache/commons/httpclient/NameValuePair;

    invoke-direct {v1, p1, p2}, Lorg/apache/commons/httpclient/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 273
    return-void

    .line 268
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Arguments to addParameter(String, String) cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addParameter(Lorg/apache/commons/httpclient/NameValuePair;)V
    .registers 4
    .param p1, "param"    # Lorg/apache/commons/httpclient/NameValuePair;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 287
    sget-object v0, Lorg/apache/commons/httpclient/methods/PostMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter PostMethod.addParameter(NameValuePair)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 289
    if-eqz p1, :cond_15

    .line 292
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/httpclient/methods/PostMethod;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    return-void

    .line 290
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "NameValuePair may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addParameters([Lorg/apache/commons/httpclient/NameValuePair;)V
    .registers 5
    .param p1, "parameters"    # [Lorg/apache/commons/httpclient/NameValuePair;

    .line 304
    sget-object v0, Lorg/apache/commons/httpclient/methods/PostMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter PostMethod.addParameters(NameValuePair[])"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 306
    if-nez p1, :cond_11

    .line 307
    sget-object v0, Lorg/apache/commons/httpclient/methods/PostMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "Attempt to addParameters(null) ignored"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    goto :goto_22

    .line 309
    :cond_11
    invoke-super {p0}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->clearRequestBody()V

    .line 310
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_15
    array-length v1, p1

    if-ge v0, v1, :cond_22

    .line 311
    iget-object v1, p0, Lorg/apache/commons/httpclient/methods/PostMethod;->params:Ljava/util/Vector;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 310
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 314
    .end local v0    # "i":I
    :cond_22
    :goto_22
    return-void
.end method

.method protected clearRequestBody()V
    .registers 3

    .line 152
    sget-object v0, Lorg/apache/commons/httpclient/methods/PostMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter PostMethod.clearRequestBody()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 153
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/PostMethod;->params:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 154
    invoke-super {p0}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->clearRequestBody()V

    .line 155
    return-void
.end method

.method protected generateRequestEntity()Lorg/apache/commons/httpclient/methods/RequestEntity;
    .registers 5

    .line 164
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/PostMethod;->params:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    .line 170
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/PostMethod;->getParameters()[Lorg/apache/commons/httpclient/NameValuePair;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/PostMethod;->getRequestCharSet()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/util/EncodingUtil;->formUrlEncode([Lorg/apache/commons/httpclient/NameValuePair;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, "content":Ljava/lang/String;
    new-instance v1, Lorg/apache/commons/httpclient/methods/ByteArrayRequestEntity;

    invoke-static {v0}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v2

    const-string v3, "application/x-www-form-urlencoded"

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/httpclient/methods/ByteArrayRequestEntity;-><init>([BLjava/lang/String;)V

    .line 175
    .local v1, "entity":Lorg/apache/commons/httpclient/methods/ByteArrayRequestEntity;
    return-object v1

    .line 177
    .end local v0    # "content":Ljava/lang/String;
    .end local v1    # "entity":Lorg/apache/commons/httpclient/methods/ByteArrayRequestEntity;
    :cond_20
    invoke-super {p0}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->generateRequestEntity()Lorg/apache/commons/httpclient/methods/RequestEntity;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 119
    const-string v0, "POST"

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Lorg/apache/commons/httpclient/NameValuePair;
    .registers 6
    .param p1, "paramName"    # Ljava/lang/String;

    .line 210
    sget-object v0, Lorg/apache/commons/httpclient/methods/PostMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter PostMethod.getParameter(String)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 212
    const/4 v0, 0x0

    if-nez p1, :cond_b

    .line 213
    return-object v0

    .line 216
    :cond_b
    iget-object v1, p0, Lorg/apache/commons/httpclient/methods/PostMethod;->params:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 218
    .local v1, "iter":Ljava/util/Iterator;
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 219
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/httpclient/NameValuePair;

    .line 221
    .local v2, "parameter":Lorg/apache/commons/httpclient/NameValuePair;
    invoke-virtual {v2}, Lorg/apache/commons/httpclient/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 222
    return-object v2

    .line 224
    .end local v2    # "parameter":Lorg/apache/commons/httpclient/NameValuePair;
    :cond_28
    goto :goto_11

    .line 225
    :cond_29
    return-object v0
.end method

.method public getParameters()[Lorg/apache/commons/httpclient/NameValuePair;
    .registers 6

    .line 240
    sget-object v0, Lorg/apache/commons/httpclient/methods/PostMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter PostMethod.getParameters()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 242
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/PostMethod;->params:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    .line 243
    .local v0, "numPairs":I
    iget-object v1, p0, Lorg/apache/commons/httpclient/methods/PostMethod;->params:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 244
    .local v1, "objectArr":[Ljava/lang/Object;
    new-array v2, v0, [Lorg/apache/commons/httpclient/NameValuePair;

    .line 246
    .local v2, "nvPairArr":[Lorg/apache/commons/httpclient/NameValuePair;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_16
    if-ge v3, v0, :cond_21

    .line 247
    aget-object v4, v1, v3

    check-cast v4, Lorg/apache/commons/httpclient/NameValuePair;

    aput-object v4, v2, v3

    .line 246
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 250
    .end local v3    # "i":I
    :cond_21
    return-object v2
.end method

.method protected hasRequestContent()Z
    .registers 3

    .line 135
    sget-object v0, Lorg/apache/commons/httpclient/methods/PostMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter PostMethod.hasRequestContent()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 136
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/PostMethod;->params:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 137
    const/4 v0, 0x1

    return v0

    .line 139
    :cond_11
    invoke-super {p0}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->hasRequestContent()Z

    move-result v0

    return v0
.end method

.method public removeParameter(Ljava/lang/String;)Z
    .registers 6
    .param p1, "paramName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 332
    sget-object v0, Lorg/apache/commons/httpclient/methods/PostMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter PostMethod.removeParameter(String)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 334
    if-eqz p1, :cond_2c

    .line 338
    const/4 v0, 0x0

    .line 339
    .local v0, "removed":Z
    iget-object v1, p0, Lorg/apache/commons/httpclient/methods/PostMethod;->params:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 341
    .local v1, "iter":Ljava/util/Iterator;
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 342
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/httpclient/NameValuePair;

    .line 344
    .local v2, "pair":Lorg/apache/commons/httpclient/NameValuePair;
    invoke-virtual {v2}, Lorg/apache/commons/httpclient/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 345
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 346
    const/4 v0, 0x1

    .line 348
    .end local v2    # "pair":Lorg/apache/commons/httpclient/NameValuePair;
    :cond_2a
    goto :goto_10

    .line 349
    :cond_2b
    return v0

    .line 335
    .end local v0    # "removed":Z
    .end local v1    # "iter":Ljava/util/Iterator;
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument passed to removeParameter(String) cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeParameter(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "paramName"    # Ljava/lang/String;
    .param p2, "paramValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 368
    sget-object v0, Lorg/apache/commons/httpclient/methods/PostMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter PostMethod.removeParameter(String, String)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 370
    if-eqz p1, :cond_41

    .line 373
    if-eqz p2, :cond_39

    .line 377
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/PostMethod;->params:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 379
    .local v0, "iter":Ljava/util/Iterator;
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 380
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/httpclient/NameValuePair;

    .line 382
    .local v1, "pair":Lorg/apache/commons/httpclient/NameValuePair;
    invoke-virtual {v1}, Lorg/apache/commons/httpclient/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 384
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 385
    const/4 v2, 0x1

    return v2

    .line 387
    .end local v1    # "pair":Lorg/apache/commons/httpclient/NameValuePair;
    :cond_36
    goto :goto_11

    .line 389
    :cond_37
    const/4 v1, 0x0

    return v1

    .line 374
    .end local v0    # "iter":Ljava/util/Iterator;
    :cond_39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter value may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 371
    :cond_41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter name may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "parameterValue"    # Ljava/lang/String;

    .line 191
    sget-object v0, Lorg/apache/commons/httpclient/methods/PostMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter PostMethod.setParameter(String, String)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 193
    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/methods/PostMethod;->removeParameter(Ljava/lang/String;)Z

    .line 194
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/httpclient/methods/PostMethod;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method public setRequestBody([Lorg/apache/commons/httpclient/NameValuePair;)V
    .registers 4
    .param p1, "parametersBody"    # [Lorg/apache/commons/httpclient/NameValuePair;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 403
    sget-object v0, Lorg/apache/commons/httpclient/methods/PostMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter PostMethod.setRequestBody(NameValuePair[])"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 405
    if-eqz p1, :cond_10

    .line 408
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/PostMethod;->clearRequestBody()V

    .line 409
    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/methods/PostMethod;->addParameters([Lorg/apache/commons/httpclient/NameValuePair;)V

    .line 410
    return-void

    .line 406
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array of parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
