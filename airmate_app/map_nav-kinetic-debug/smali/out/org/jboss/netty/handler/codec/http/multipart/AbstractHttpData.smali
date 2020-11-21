.class public abstract Lorg/jboss/netty/handler/codec/http/multipart/AbstractHttpData;
.super Ljava/lang/Object;
.source "AbstractHttpData.java"

# interfaces
.implements Lorg/jboss/netty/handler/codec/http/multipart/HttpData;


# instance fields
.field protected charset:Ljava/nio/charset/Charset;

.field protected completed:Z

.field protected definedSize:J

.field protected final name:Ljava/lang/String;

.field protected size:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;J)V
    .registers 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "size"    # J

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractHttpData;->charset:Ljava/nio/charset/Charset;

    .line 34
    if-eqz p1, :cond_78

    .line 37
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 38
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_70

    .line 42
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_14
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_66

    .line 43
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 44
    .local v1, "c":C
    const/16 v2, 0x7f

    if-gt v1, v2, :cond_4f

    .line 50
    const/16 v2, 0x20

    if-eq v1, v2, :cond_38

    const/16 v2, 0x2c

    if-eq v1, v2, :cond_38

    const/16 v2, 0x3b

    if-eq v1, v2, :cond_38

    const/16 v2, 0x3d

    if-eq v1, v2, :cond_38

    packed-switch v1, :pswitch_data_80

    .line 42
    .end local v1    # "c":C
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 60
    .restart local v1    # "c":C
    :cond_38
    :pswitch_38
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "name contains one of the following prohibited characters: =,; \\t\\r\\n\\v\\f: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 45
    :cond_4f
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "name contains non-ascii character: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 65
    .end local v0    # "i":I
    .end local v1    # "c":C
    :cond_66
    iput-object p1, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractHttpData;->name:Ljava/lang/String;

    .line 66
    if-eqz p2, :cond_6d

    .line 67
    invoke-virtual {p0, p2}, Lorg/jboss/netty/handler/codec/http/multipart/AbstractHttpData;->setCharset(Ljava/nio/charset/Charset;)V

    .line 69
    :cond_6d
    iput-wide p3, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractHttpData;->definedSize:J

    .line 70
    return-void

    .line 39
    :cond_70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "empty name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_78
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_80
    .packed-switch 0x9
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
    .end packed-switch
.end method


# virtual methods
.method public getCharset()Ljava/nio/charset/Charset;
    .registers 2

    .line 81
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractHttpData;->charset:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 73
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractHttpData;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isCompleted()Z
    .registers 2

    .line 77
    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractHttpData;->completed:Z

    return v0
.end method

.method public length()J
    .registers 3

    .line 92
    iget-wide v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractHttpData;->size:J

    return-wide v0
.end method

.method public setCharset(Ljava/nio/charset/Charset;)V
    .registers 4
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 85
    if-eqz p1, :cond_5

    .line 88
    iput-object p1, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractHttpData;->charset:Ljava/nio/charset/Charset;

    .line 89
    return-void

    .line 86
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "charset"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
