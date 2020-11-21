.class public Lorg/apache/commons/httpclient/util/ParameterFormatter;
.super Ljava/lang/Object;
.source "ParameterFormatter.java"


# static fields
.field private static final SEPARATORS:[C

.field private static final UNSAFE_CHARS:[C


# instance fields
.field private alwaysUseQuotes:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 92
    const/16 v0, 0x13

    new-array v0, v0, [C

    fill-array-data v0, :array_12

    sput-object v0, Lorg/apache/commons/httpclient/util/ParameterFormatter;->SEPARATORS:[C

    .line 103
    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_2a

    sput-object v0, Lorg/apache/commons/httpclient/util/ParameterFormatter;->UNSAFE_CHARS:[C

    return-void

    :array_12
    .array-data 2
        0x28s
        0x29s
        0x3cs
        0x3es
        0x40s
        0x2cs
        0x3bs
        0x3as
        0x5cs
        0x22s
        0x2fs
        0x5bs
        0x5ds
        0x3fs
        0x3ds
        0x7bs
        0x7ds
        0x20s
        0x9s
    .end array-data

    nop

    :array_2a
    .array-data 2
        0x22s
        0x5cs
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/util/ParameterFormatter;->alwaysUseQuotes:Z

    .line 116
    return-void
.end method

.method public static formatValue(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V
    .registers 10
    .param p0, "buffer"    # Ljava/lang/StringBuffer;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "alwaysUseQuotes"    # Z

    .line 169
    if-eqz p0, :cond_63

    .line 172
    if-eqz p1, :cond_5b

    .line 175
    const/16 v0, 0x5c

    const/4 v1, 0x0

    const/16 v2, 0x22

    if-eqz p2, :cond_2c

    .line 176
    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 177
    nop

    .local v1, "i":I
    :goto_f
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_28

    .line 178
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 179
    .local v3, "ch":C
    invoke-static {v3}, Lorg/apache/commons/httpclient/util/ParameterFormatter;->isUnsafeChar(C)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 180
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 182
    :cond_22
    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 177
    .end local v3    # "ch":C
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 184
    .end local v1    # "i":I
    :cond_28
    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5a

    .line 186
    :cond_2c
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    .line 187
    .local v3, "offset":I
    const/4 v4, 0x0

    .line 188
    .local v4, "unsafe":Z
    nop

    .restart local v1    # "i":I
    :goto_32
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_52

    .line 189
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 190
    .local v5, "ch":C
    invoke-static {v5}, Lorg/apache/commons/httpclient/util/ParameterFormatter;->isSeparator(C)Z

    move-result v6

    if-eqz v6, :cond_43

    .line 191
    const/4 v4, 0x1

    .line 193
    :cond_43
    invoke-static {v5}, Lorg/apache/commons/httpclient/util/ParameterFormatter;->isUnsafeChar(C)Z

    move-result v6

    if-eqz v6, :cond_4c

    .line 194
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 196
    :cond_4c
    invoke-virtual {p0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 188
    .end local v5    # "ch":C
    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    .line 198
    .end local v1    # "i":I
    :cond_52
    if-eqz v4, :cond_5a

    .line 199
    invoke-virtual {p0, v3, v2}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 200
    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 203
    .end local v3    # "offset":I
    .end local v4    # "unsafe":Z
    :cond_5a
    :goto_5a
    return-void

    .line 173
    :cond_5b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value buffer may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String buffer may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isOneOf([CC)Z
    .registers 5
    .param p0, "chars"    # [C
    .param p1, "ch"    # C

    .line 119
    const/4 v0, 0x0

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v2, p0

    if-ge v1, v2, :cond_e

    .line 120
    aget-char v2, p0, v1

    if-ne p1, v2, :cond_b

    .line 121
    const/4 v0, 0x1

    return v0

    .line 119
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 124
    .end local v1    # "i":I
    :cond_e
    return v0
.end method

.method private static isSeparator(C)Z
    .registers 2
    .param p0, "ch"    # C

    .line 132
    sget-object v0, Lorg/apache/commons/httpclient/util/ParameterFormatter;->SEPARATORS:[C

    invoke-static {v0, p0}, Lorg/apache/commons/httpclient/util/ParameterFormatter;->isOneOf([CC)Z

    move-result v0

    return v0
.end method

.method private static isUnsafeChar(C)Z
    .registers 2
    .param p0, "ch"    # C

    .line 128
    sget-object v0, Lorg/apache/commons/httpclient/util/ParameterFormatter;->UNSAFE_CHARS:[C

    invoke-static {v0, p0}, Lorg/apache/commons/httpclient/util/ParameterFormatter;->isOneOf([CC)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public format(Lorg/apache/commons/httpclient/NameValuePair;)Ljava/lang/String;
    .registers 4
    .param p1, "param"    # Lorg/apache/commons/httpclient/NameValuePair;

    .line 237
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 238
    .local v0, "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/httpclient/util/ParameterFormatter;->format(Ljava/lang/StringBuffer;Lorg/apache/commons/httpclient/NameValuePair;)V

    .line 239
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public format(Ljava/lang/StringBuffer;Lorg/apache/commons/httpclient/NameValuePair;)V
    .registers 5
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "param"    # Lorg/apache/commons/httpclient/NameValuePair;

    .line 213
    if-eqz p1, :cond_24

    .line 216
    if-eqz p2, :cond_1c

    .line 219
    invoke-virtual {p2}, Lorg/apache/commons/httpclient/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 220
    invoke-virtual {p2}, Lorg/apache/commons/httpclient/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_1b

    .line 222
    const-string v1, "="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 223
    iget-boolean v1, p0, Lorg/apache/commons/httpclient/util/ParameterFormatter;->alwaysUseQuotes:Z

    invoke-static {p1, v0, v1}, Lorg/apache/commons/httpclient/util/ParameterFormatter;->formatValue(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V

    .line 225
    :cond_1b
    return-void

    .line 217
    .end local v0    # "value":Ljava/lang/String;
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String buffer may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isAlwaysUseQuotes()Z
    .registers 2

    .line 143
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/util/ParameterFormatter;->alwaysUseQuotes:Z

    return v0
.end method

.method public setAlwaysUseQuotes(Z)V
    .registers 2
    .param p1, "alwaysUseQuotes"    # Z

    .line 153
    iput-boolean p1, p0, Lorg/apache/commons/httpclient/util/ParameterFormatter;->alwaysUseQuotes:Z

    .line 154
    return-void
.end method
