.class public Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;
.super Ljava/lang/Object;
.source "InputStreamRequestEntity.java"

# interfaces
.implements Lorg/apache/commons/httpclient/methods/RequestEntity;


# static fields
.field public static final CONTENT_LENGTH_AUTO:I = -0x2

.field private static final LOG:Lorg/apache/commons/logging/Log;

.field static synthetic class$org$apache$commons$httpclient$methods$InputStreamRequestEntity:Ljava/lang/Class;


# instance fields
.field private buffer:[B

.field private content:Ljava/io/InputStream;

.field private contentLength:J

.field private contentType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 55
    sget-object v0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->class$org$apache$commons$httpclient$methods$InputStreamRequestEntity:Ljava/lang/Class;

    if-nez v0, :cond_d

    const-string v0, "org.apache.commons.httpclient.methods.InputStreamRequestEntity"

    invoke-static {v0}, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->class$org$apache$commons$httpclient$methods$InputStreamRequestEntity:Ljava/lang/Class;

    goto :goto_f

    :cond_d
    sget-object v0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->class$org$apache$commons$httpclient$methods$InputStreamRequestEntity:Ljava/lang/Class;

    :goto_f
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->LOG:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "content"    # Ljava/io/InputStream;

    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;J)V
    .registers 5
    .param p1, "content"    # Ljava/io/InputStream;
    .param p2, "contentLength"    # J

    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;-><init>(Ljava/io/InputStream;JLjava/lang/String;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;JLjava/lang/String;)V
    .registers 7
    .param p1, "content"    # Ljava/io/InputStream;
    .param p2, "contentLength"    # J
    .param p4, "contentType"    # Ljava/lang/String;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->buffer:[B

    .line 107
    if-eqz p1, :cond_f

    .line 110
    iput-object p1, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->content:Ljava/io/InputStream;

    .line 111
    iput-wide p2, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->contentLength:J

    .line 112
    iput-object p4, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->contentType:Ljava/lang/String;

    .line 113
    return-void

    .line 108
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The content cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 5
    .param p1, "content"    # Ljava/io/InputStream;
    .param p2, "contentType"    # Ljava/lang/String;

    .line 83
    const-wide/16 v0, -0x2

    invoke-direct {p0, p1, v0, v1, p2}, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;-><init>(Ljava/io/InputStream;JLjava/lang/String;)V

    .line 84
    return-void
.end method

.method private bufferContent()V
    .registers 8

    .line 127
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->buffer:[B

    if-eqz v0, :cond_5

    .line 129
    return-void

    .line 131
    :cond_5
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->content:Ljava/io/InputStream;

    if-eqz v0, :cond_43

    .line 133
    const/4 v0, 0x0

    :try_start_a
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 134
    .local v1, "tmp":Ljava/io/ByteArrayOutputStream;
    const/16 v2, 0x1000

    new-array v2, v2, [B

    .line 135
    .local v2, "data":[B
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 136
    .local v4, "l":I
    :goto_15
    iget-object v5, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->content:Ljava/io/InputStream;

    invoke-virtual {v5, v2}, Ljava/io/InputStream;->read([B)I

    move-result v5

    move v4, v5

    if-ltz v5, :cond_22

    .line 137
    invoke-virtual {v1, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_15

    .line 139
    :cond_22
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    iput-object v3, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->buffer:[B

    .line 140
    iput-object v0, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->content:Ljava/io/InputStream;

    .line 141
    iget-object v3, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->buffer:[B

    array-length v3, v3

    int-to-long v5, v3

    iput-wide v5, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->contentLength:J
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_30} :catch_31

    .line 147
    .end local v1    # "tmp":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "data":[B
    .end local v4    # "l":I
    goto :goto_43

    .line 142
    :catch_31
    move-exception v1

    .line 143
    .local v1, "e":Ljava/io/IOException;
    sget-object v2, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->LOG:Lorg/apache/commons/logging/Log;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 144
    iput-object v0, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->buffer:[B

    .line 145
    iput-object v0, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->content:Ljava/io/InputStream;

    .line 146
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->contentLength:J

    .line 149
    .end local v1    # "e":Ljava/io/IOException;
    :cond_43
    :goto_43
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .param p0, "x0"    # Ljava/lang/String;

    .line 55
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
.method public getContent()Ljava/io/InputStream;
    .registers 2

    .line 196
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->content:Ljava/io/InputStream;

    return-object v0
.end method

.method public getContentLength()J
    .registers 6

    .line 186
    iget-wide v0, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->contentLength:J

    const-wide/16 v2, -0x2

    cmp-long v4, v0, v2

    if-nez v4, :cond_f

    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->buffer:[B

    if-nez v0, :cond_f

    .line 187
    invoke-direct {p0}, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->bufferContent()V

    .line 189
    :cond_f
    iget-wide v0, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->contentLength:J

    return-wide v0
.end method

.method public getContentType()Ljava/lang/String;
    .registers 2

    .line 119
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public isRepeatable()Z
    .registers 2

    .line 158
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->buffer:[B

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public writeRequest(Ljava/io/OutputStream;)V
    .registers 7
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->content:Ljava/io/InputStream;

    if-eqz v0, :cond_1b

    .line 167
    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 168
    .local v0, "tmp":[B
    const/4 v1, 0x0

    .line 169
    .local v1, "total":I
    const/4 v2, 0x0

    move v3, v1

    const/4 v1, 0x0

    .line 170
    .local v1, "i":I
    .local v3, "total":I
    :goto_c
    iget-object v4, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->content:Ljava/io/InputStream;

    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    move v1, v4

    if-ltz v4, :cond_1a

    .line 171
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 172
    add-int/2addr v3, v1

    goto :goto_c

    .line 174
    .end local v0    # "tmp":[B
    .end local v1    # "i":I
    .end local v3    # "total":I
    :cond_1a
    goto :goto_24

    :cond_1b
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->buffer:[B

    if-eqz v0, :cond_25

    .line 175
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->buffer:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 179
    :goto_24
    return-void

    .line 177
    :cond_25
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Content must be set before entity is written"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
