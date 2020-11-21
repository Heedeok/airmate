.class public Lorg/apache/commons/httpclient/methods/MultipartPostMethod;
.super Lorg/apache/commons/httpclient/methods/ExpectContinueMethod;
.source "MultipartPostMethod.java"


# static fields
.field private static final LOG:Lorg/apache/commons/logging/Log;

.field public static final MULTIPART_FORM_CONTENT_TYPE:Ljava/lang/String; = "multipart/form-data"

.field static synthetic class$org$apache$commons$httpclient$methods$MultipartPostMethod:Ljava/lang/Class;


# instance fields
.field private final parameters:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 86
    sget-object v0, Lorg/apache/commons/httpclient/methods/MultipartPostMethod;->class$org$apache$commons$httpclient$methods$MultipartPostMethod:Ljava/lang/Class;

    if-nez v0, :cond_d

    const-string v0, "org.apache.commons.httpclient.methods.MultipartPostMethod"

    invoke-static {v0}, Lorg/apache/commons/httpclient/methods/MultipartPostMethod;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/MultipartPostMethod;->class$org$apache$commons$httpclient$methods$MultipartPostMethod:Ljava/lang/Class;

    goto :goto_f

    :cond_d
    sget-object v0, Lorg/apache/commons/httpclient/methods/MultipartPostMethod;->class$org$apache$commons$httpclient$methods$MultipartPostMethod:Ljava/lang/Class;

    :goto_f
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/MultipartPostMethod;->LOG:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 95
    invoke-direct {p0}, Lorg/apache/commons/httpclient/methods/ExpectContinueMethod;-><init>()V

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/methods/MultipartPostMethod;->parameters:Ljava/util/List;

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "uri"    # Ljava/lang/String;

    .line 104
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/methods/ExpectContinueMethod;-><init>(Ljava/lang/String;)V

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/methods/MultipartPostMethod;->parameters:Ljava/util/List;

    .line 105
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .param p0, "x0"    # Ljava/lang/String;

    .line 86
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
.method protected addContentLengthRequestHeader(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V
    .registers 7
    .param p1, "state"    # Lorg/apache/commons/httpclient/HttpState;
    .param p2, "conn"    # Lorg/apache/commons/httpclient/HttpConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/httpclient/HttpException;
        }
    .end annotation

    .line 205
    sget-object v0, Lorg/apache/commons/httpclient/methods/MultipartPostMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter EntityEnclosingMethod.addContentLengthRequestHeader(HttpState, HttpConnection)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 208
    const-string v0, "Content-Length"

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/methods/MultipartPostMethod;->getRequestHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 209
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/MultipartPostMethod;->getRequestContentLength()J

    move-result-wide v0

    .line 210
    .local v0, "len":J
    const-string v2, "Content-Length"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/httpclient/methods/MultipartPostMethod;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    .end local v0    # "len":J
    :cond_1c
    const-string v0, "Transfer-Encoding"

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/methods/MultipartPostMethod;->removeRequestHeader(Ljava/lang/String;)V

    .line 213
    return-void
.end method

.method protected addContentTypeRequestHeader(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V
    .registers 6
    .param p1, "state"    # Lorg/apache/commons/httpclient/HttpState;
    .param p2, "conn"    # Lorg/apache/commons/httpclient/HttpConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/httpclient/HttpException;
        }
    .end annotation

    .line 231
    sget-object v0, Lorg/apache/commons/httpclient/methods/MultipartPostMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter EntityEnclosingMethod.addContentTypeRequestHeader(HttpState, HttpConnection)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 234
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/MultipartPostMethod;->parameters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_31

    .line 235
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "multipart/form-data"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 236
    .local v0, "buffer":Ljava/lang/StringBuffer;
    invoke-static {}, Lorg/apache/commons/httpclient/methods/multipart/Part;->getBoundary()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 237
    const-string v1, "; boundary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 238
    invoke-static {}, Lorg/apache/commons/httpclient/methods/multipart/Part;->getBoundary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 240
    :cond_28
    const-string v1, "Content-Type"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/httpclient/methods/MultipartPostMethod;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    :cond_31
    return-void
.end method

.method public addParameter(Ljava/lang/String;Ljava/io/File;)V
    .registers 5
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "parameterFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 147
    sget-object v0, Lorg/apache/commons/httpclient/methods/MultipartPostMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter MultipartPostMethod.addParameter(String parameterName, File parameterFile)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 149
    new-instance v0, Lorg/apache/commons/httpclient/methods/multipart/FilePart;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/httpclient/methods/multipart/FilePart;-><init>(Ljava/lang/String;Ljava/io/File;)V

    .line 150
    .local v0, "param":Lorg/apache/commons/httpclient/methods/multipart/Part;
    iget-object v1, p0, Lorg/apache/commons/httpclient/methods/MultipartPostMethod;->parameters:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    return-void
.end method

.method public addParameter(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "parameterValue"    # Ljava/lang/String;

    .line 133
    sget-object v0, Lorg/apache/commons/httpclient/methods/MultipartPostMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter addParameter(String parameterName, String parameterValue)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 134
    new-instance v0, Lorg/apache/commons/httpclient/methods/multipart/StringPart;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/httpclient/methods/multipart/StringPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .local v0, "param":Lorg/apache/commons/httpclient/methods/multipart/Part;
    iget-object v1, p0, Lorg/apache/commons/httpclient/methods/MultipartPostMethod;->parameters:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    return-void
.end method

.method public addParameter(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .registers 6
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "parameterFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 163
    sget-object v0, Lorg/apache/commons/httpclient/methods/MultipartPostMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter MultipartPostMethod.addParameter(String parameterName, String fileName, File parameterFile)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 165
    new-instance v0, Lorg/apache/commons/httpclient/methods/multipart/FilePart;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/commons/httpclient/methods/multipart/FilePart;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 166
    .local v0, "param":Lorg/apache/commons/httpclient/methods/multipart/Part;
    iget-object v1, p0, Lorg/apache/commons/httpclient/methods/MultipartPostMethod;->parameters:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    return-void
.end method

.method public addPart(Lorg/apache/commons/httpclient/methods/multipart/Part;)V
    .registers 4
    .param p1, "part"    # Lorg/apache/commons/httpclient/methods/multipart/Part;

    .line 175
    sget-object v0, Lorg/apache/commons/httpclient/methods/MultipartPostMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter addPart(Part part)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 176
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/MultipartPostMethod;->parameters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    return-void
.end method

.method protected addRequestHeaders(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V
    .registers 5
    .param p1, "state"    # Lorg/apache/commons/httpclient/HttpState;
    .param p2, "conn"    # Lorg/apache/commons/httpclient/HttpConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/httpclient/HttpException;
        }
    .end annotation

    .line 273
    sget-object v0, Lorg/apache/commons/httpclient/methods/MultipartPostMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter MultipartPostMethod.addRequestHeaders(HttpState state, HttpConnection conn)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 275
    invoke-super {p0, p1, p2}, Lorg/apache/commons/httpclient/methods/ExpectContinueMethod;->addRequestHeaders(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V

    .line 276
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/httpclient/methods/MultipartPostMethod;->addContentLengthRequestHeader(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V

    .line 277
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/httpclient/methods/MultipartPostMethod;->addContentTypeRequestHeader(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V

    .line 278
    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 123
    const-string v0, "POST"

    return-object v0
.end method

.method public getParts()[Lorg/apache/commons/httpclient/methods/multipart/Part;
    .registers 3

    .line 185
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/MultipartPostMethod;->parameters:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/commons/httpclient/methods/MultipartPostMethod;->parameters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/commons/httpclient/methods/multipart/Part;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/httpclient/methods/multipart/Part;

    return-object v0
.end method

.method protected getRequestContentLength()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 312
    sget-object v0, Lorg/apache/commons/httpclient/methods/MultipartPostMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter MultipartPostMethod.getRequestContentLength()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 313
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/MultipartPostMethod;->getParts()[Lorg/apache/commons/httpclient/methods/multipart/Part;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/httpclient/methods/multipart/Part;->getLengthOfParts([Lorg/apache/commons/httpclient/methods/multipart/Part;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected hasRequestContent()Z
    .registers 2

    .line 115
    const/4 v0, 0x1

    return v0
.end method

.method public recycle()V
    .registers 3

    .line 329
    sget-object v0, Lorg/apache/commons/httpclient/methods/MultipartPostMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter MultipartPostMethod.recycle()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 330
    invoke-super {p0}, Lorg/apache/commons/httpclient/methods/ExpectContinueMethod;->recycle()V

    .line 331
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/MultipartPostMethod;->parameters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 332
    return-void
.end method

.method protected writeRequestBody(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)Z
    .registers 5
    .param p1, "state"    # Lorg/apache/commons/httpclient/HttpState;
    .param p2, "conn"    # Lorg/apache/commons/httpclient/HttpConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/httpclient/HttpException;
        }
    .end annotation

    .line 296
    sget-object v0, Lorg/apache/commons/httpclient/methods/MultipartPostMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter MultipartPostMethod.writeRequestBody(HttpState state, HttpConnection conn)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 298
    invoke-virtual {p2}, Lorg/apache/commons/httpclient/HttpConnection;->getRequestOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 299
    .local v0, "out":Ljava/io/OutputStream;
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/MultipartPostMethod;->getParts()[Lorg/apache/commons/httpclient/methods/multipart/Part;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/methods/multipart/Part;->sendParts(Ljava/io/OutputStream;[Lorg/apache/commons/httpclient/methods/multipart/Part;)V

    .line 300
    const/4 v1, 0x1

    return v1
.end method
