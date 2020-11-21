.class public Lorg/apache/commons/httpclient/HttpVersion;
.super Ljava/lang/Object;
.source "HttpVersion.java"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final HTTP_0_9:Lorg/apache/commons/httpclient/HttpVersion;

.field public static final HTTP_1_0:Lorg/apache/commons/httpclient/HttpVersion;

.field public static final HTTP_1_1:Lorg/apache/commons/httpclient/HttpVersion;


# instance fields
.field private major:I

.field private minor:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 80
    new-instance v0, Lorg/apache/commons/httpclient/HttpVersion;

    const/4 v1, 0x0

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/httpclient/HttpVersion;-><init>(II)V

    sput-object v0, Lorg/apache/commons/httpclient/HttpVersion;->HTTP_0_9:Lorg/apache/commons/httpclient/HttpVersion;

    .line 83
    new-instance v0, Lorg/apache/commons/httpclient/HttpVersion;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lorg/apache/commons/httpclient/HttpVersion;-><init>(II)V

    sput-object v0, Lorg/apache/commons/httpclient/HttpVersion;->HTTP_1_0:Lorg/apache/commons/httpclient/HttpVersion;

    .line 86
    new-instance v0, Lorg/apache/commons/httpclient/HttpVersion;

    invoke-direct {v0, v2, v2}, Lorg/apache/commons/httpclient/HttpVersion;-><init>(II)V

    sput-object v0, Lorg/apache/commons/httpclient/HttpVersion;->HTTP_1_1:Lorg/apache/commons/httpclient/HttpVersion;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 5
    .param p1, "major"    # I
    .param p2, "minor"    # I

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/httpclient/HttpVersion;->major:I

    .line 77
    iput v0, p0, Lorg/apache/commons/httpclient/HttpVersion;->minor:I

    .line 97
    if-ltz p1, :cond_19

    .line 100
    iput p1, p0, Lorg/apache/commons/httpclient/HttpVersion;->major:I

    .line 101
    if-ltz p2, :cond_11

    .line 104
    iput p2, p0, Lorg/apache/commons/httpclient/HttpVersion;->minor:I

    .line 105
    return-void

    .line 102
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP minor version number may not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP major version number may not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static parse(Ljava/lang/String;)Lorg/apache/commons/httpclient/HttpVersion;
    .registers 8
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/ProtocolException;
        }
    .end annotation

    .line 221
    if-eqz p0, :cond_95

    .line 224
    const-string v0, "HTTP/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 229
    const-string v0, "HTTP/"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 230
    .local v0, "i1":I
    const-string v1, "."

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 231
    .local v1, "i2":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_67

    .line 235
    :try_start_19
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_21
    .catch Ljava/lang/NumberFormatException; {:try_start_19 .. :try_end_21} :catch_4f

    .line 238
    .local v2, "major":I
    nop

    .line 239
    add-int/lit8 v0, v1, 0x1

    .line 240
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 242
    :try_start_28
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_30
    .catch Ljava/lang/NumberFormatException; {:try_start_28 .. :try_end_30} :catch_37

    .line 245
    .local v3, "minor":I
    nop

    .line 246
    new-instance v4, Lorg/apache/commons/httpclient/HttpVersion;

    invoke-direct {v4, v2, v3}, Lorg/apache/commons/httpclient/HttpVersion;-><init>(II)V

    return-object v4

    .line 243
    .end local v3    # "minor":I
    :catch_37
    move-exception v3

    .line 244
    .local v3, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Lorg/apache/commons/httpclient/ProtocolException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Invalid HTTP minor version number: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/commons/httpclient/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 236
    .end local v2    # "major":I
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :catch_4f
    move-exception v2

    .line 237
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Lorg/apache/commons/httpclient/ProtocolException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Invalid HTTP major version number: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/commons/httpclient/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 232
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_67
    new-instance v2, Lorg/apache/commons/httpclient/ProtocolException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Invalid HTTP version number: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/httpclient/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 225
    .end local v0    # "i1":I
    .end local v1    # "i2":I
    :cond_7e
    new-instance v0, Lorg/apache/commons/httpclient/ProtocolException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid HTTP version string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_95
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 168
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/httpclient/HttpVersion;

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/HttpVersion;->compareTo(Lorg/apache/commons/httpclient/HttpVersion;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/apache/commons/httpclient/HttpVersion;)I
    .registers 5
    .param p1, "anotherVer"    # Lorg/apache/commons/httpclient/HttpVersion;

    .line 154
    if-eqz p1, :cond_18

    .line 157
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpVersion;->getMajor()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpVersion;->getMajor()I

    move-result v1

    sub-int/2addr v0, v1

    .line 158
    .local v0, "delta":I
    if-nez v0, :cond_17

    .line 159
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpVersion;->getMinor()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpVersion;->getMinor()I

    move-result v2

    sub-int v0, v1, v2

    .line 161
    :cond_17
    return v0

    .line 155
    .end local v0    # "delta":I
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Version parameter may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 136
    if-ne p0, p1, :cond_4

    .line 137
    const/4 v0, 0x1

    return v0

    .line 139
    :cond_4
    instance-of v0, p1, Lorg/apache/commons/httpclient/HttpVersion;

    if-nez v0, :cond_a

    .line 140
    const/4 v0, 0x0

    return v0

    .line 142
    :cond_a
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/httpclient/HttpVersion;

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/HttpVersion;->equals(Lorg/apache/commons/httpclient/HttpVersion;)Z

    move-result v0

    return v0
.end method

.method public equals(Lorg/apache/commons/httpclient/HttpVersion;)Z
    .registers 3
    .param p1, "version"    # Lorg/apache/commons/httpclient/HttpVersion;

    .line 178
    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/HttpVersion;->compareTo(Lorg/apache/commons/httpclient/HttpVersion;)I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public getMajor()I
    .registers 2

    .line 113
    iget v0, p0, Lorg/apache/commons/httpclient/HttpVersion;->major:I

    return v0
.end method

.method public getMinor()I
    .registers 2

    .line 122
    iget v0, p0, Lorg/apache/commons/httpclient/HttpVersion;->minor:I

    return v0
.end method

.method public greaterEquals(Lorg/apache/commons/httpclient/HttpVersion;)Z
    .registers 3
    .param p1, "version"    # Lorg/apache/commons/httpclient/HttpVersion;

    .line 188
    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/HttpVersion;->compareTo(Lorg/apache/commons/httpclient/HttpVersion;)I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 129
    iget v0, p0, Lorg/apache/commons/httpclient/HttpVersion;->major:I

    const v1, 0x186a0

    mul-int v0, v0, v1

    iget v1, p0, Lorg/apache/commons/httpclient/HttpVersion;->minor:I

    add-int/2addr v0, v1

    return v0
.end method

.method public lessEquals(Lorg/apache/commons/httpclient/HttpVersion;)Z
    .registers 3
    .param p1, "version"    # Lorg/apache/commons/httpclient/HttpVersion;

    .line 198
    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/HttpVersion;->compareTo(Lorg/apache/commons/httpclient/HttpVersion;)I

    move-result v0

    if-gtz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 205
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 206
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "HTTP/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 207
    iget v1, p0, Lorg/apache/commons/httpclient/HttpVersion;->major:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 208
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 209
    iget v1, p0, Lorg/apache/commons/httpclient/HttpVersion;->minor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 210
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
