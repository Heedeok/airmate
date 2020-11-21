.class public Lorg/apache/commons/lang/CharUtils;
.super Ljava/lang/Object;
.source "CharUtils.java"


# static fields
.field private static final CHAR_ARRAY:[Ljava/lang/Character;

.field private static final CHAR_STRING:Ljava/lang/String; = "\u0000\u0001\u0002\u0003\u0004\u0005\u0006\u0007\u0008\t\n\u000b\u000c\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f !\"#$%&\'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\u007f"

.field private static final CHAR_STRING_ARRAY:[Ljava/lang/String;

.field public static final CR:C = '\r'

.field public static final LF:C = '\n'


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 50
    const/16 v0, 0x80

    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lorg/apache/commons/lang/CharUtils;->CHAR_STRING_ARRAY:[Ljava/lang/String;

    .line 51
    new-array v0, v0, [Ljava/lang/Character;

    sput-object v0, Lorg/apache/commons/lang/CharUtils;->CHAR_ARRAY:[Ljava/lang/Character;

    .line 73
    const/16 v0, 0x7f

    .local v0, "i":I
    :goto_c
    if-ltz v0, :cond_27

    .line 74
    sget-object v1, Lorg/apache/commons/lang/CharUtils;->CHAR_STRING_ARRAY:[Ljava/lang/String;

    const-string v2, "\u0000\u0001\u0002\u0003\u0004\u0005\u0006\u0007\u0008\t\n\u000b\u000c\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f !\"#$%&\'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\u007f"

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 75
    sget-object v1, Lorg/apache/commons/lang/CharUtils;->CHAR_ARRAY:[Ljava/lang/Character;

    new-instance v2, Ljava/lang/Character;

    int-to-char v3, v0

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    aput-object v2, v1, v0

    .line 73
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    .line 77
    .end local v0    # "i":I
    :cond_27
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    return-void
.end method

.method public static isAscii(C)Z
    .registers 2
    .param p0, "ch"    # C

    .line 424
    const/16 v0, 0x80

    if-ge p0, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static isAsciiAlpha(C)Z
    .registers 2
    .param p0, "ch"    # C

    .line 481
    const/16 v0, 0x41

    if-lt p0, v0, :cond_8

    const/16 v0, 0x5a

    if-le p0, v0, :cond_10

    :cond_8
    const/16 v0, 0x61

    if-lt p0, v0, :cond_12

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public static isAsciiAlphaLower(C)Z
    .registers 2
    .param p0, "ch"    # C

    .line 519
    const/16 v0, 0x61

    if-lt p0, v0, :cond_a

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static isAsciiAlphaUpper(C)Z
    .registers 2
    .param p0, "ch"    # C

    .line 500
    const/16 v0, 0x41

    if-lt p0, v0, :cond_a

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static isAsciiAlphanumeric(C)Z
    .registers 2
    .param p0, "ch"    # C

    .line 557
    const/16 v0, 0x41

    if-lt p0, v0, :cond_8

    const/16 v0, 0x5a

    if-le p0, v0, :cond_18

    :cond_8
    const/16 v0, 0x61

    if-lt p0, v0, :cond_10

    const/16 v0, 0x7a

    if-le p0, v0, :cond_18

    :cond_10
    const/16 v0, 0x30

    if-lt p0, v0, :cond_1a

    const/16 v0, 0x39

    if-gt p0, v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method public static isAsciiControl(C)Z
    .registers 2
    .param p0, "ch"    # C

    .line 462
    const/16 v0, 0x20

    if-lt p0, v0, :cond_b

    const/16 v0, 0x7f

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public static isAsciiNumeric(C)Z
    .registers 2
    .param p0, "ch"    # C

    .line 538
    const/16 v0, 0x30

    if-lt p0, v0, :cond_a

    const/16 v0, 0x39

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static isAsciiPrintable(C)Z
    .registers 2
    .param p0, "ch"    # C

    .line 443
    const/16 v0, 0x20

    if-lt p0, v0, :cond_a

    const/16 v0, 0x7f

    if-ge p0, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static toChar(Ljava/lang/Character;)C
    .registers 3
    .param p0, "ch"    # Ljava/lang/Character;

    .line 151
    if-eqz p0, :cond_7

    .line 154
    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result v0

    return v0

    .line 152
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Character must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toChar(Ljava/lang/Character;C)C
    .registers 3
    .param p0, "ch"    # Ljava/lang/Character;
    .param p1, "defaultValue"    # C

    .line 171
    if-nez p0, :cond_3

    .line 172
    return p1

    .line 174
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result v0

    return v0
.end method

.method public static toChar(Ljava/lang/String;)C
    .registers 3
    .param p0, "str"    # Ljava/lang/String;

    .line 194
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 197
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0

    .line 195
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The String must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toChar(Ljava/lang/String;C)C
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # C

    .line 216
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 217
    return p1

    .line 219
    :cond_7
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public static toCharacterObject(C)Ljava/lang/Character;
    .registers 2
    .param p0, "ch"    # C

    .line 106
    sget-object v0, Lorg/apache/commons/lang/CharUtils;->CHAR_ARRAY:[Ljava/lang/Character;

    array-length v0, v0

    if-ge p0, v0, :cond_a

    .line 107
    sget-object v0, Lorg/apache/commons/lang/CharUtils;->CHAR_ARRAY:[Ljava/lang/Character;

    aget-object v0, v0, p0

    return-object v0

    .line 109
    :cond_a
    new-instance v0, Ljava/lang/Character;

    invoke-direct {v0, p0}, Ljava/lang/Character;-><init>(C)V

    return-object v0
.end method

.method public static toCharacterObject(Ljava/lang/String;)Ljava/lang/Character;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 130
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 131
    const/4 v0, 0x0

    return-object v0

    .line 133
    :cond_8
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/lang/CharUtils;->toCharacterObject(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public static toIntValue(C)I
    .registers 4
    .param p0, "ch"    # C

    .line 239
    invoke-static {p0}, Lorg/apache/commons/lang/CharUtils;->isAsciiNumeric(C)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 242
    add-int/lit8 v0, p0, -0x30

    return v0

    .line 240
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "The character "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v2, " is not in the range \'0\' - \'9\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toIntValue(CI)I
    .registers 3
    .param p0, "ch"    # C
    .param p1, "defaultValue"    # I

    .line 261
    invoke-static {p0}, Lorg/apache/commons/lang/CharUtils;->isAsciiNumeric(C)Z

    move-result v0

    if-nez v0, :cond_7

    .line 262
    return p1

    .line 264
    :cond_7
    add-int/lit8 v0, p0, -0x30

    return v0
.end method

.method public static toIntValue(Ljava/lang/Character;)I
    .registers 3
    .param p0, "ch"    # Ljava/lang/Character;

    .line 284
    if-eqz p0, :cond_b

    .line 287
    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/lang/CharUtils;->toIntValue(C)I

    move-result v0

    return v0

    .line 285
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The character must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toIntValue(Ljava/lang/Character;I)I
    .registers 3
    .param p0, "ch"    # Ljava/lang/Character;
    .param p1, "defaultValue"    # I

    .line 307
    if-nez p0, :cond_3

    .line 308
    return p1

    .line 310
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-static {v0, p1}, Lorg/apache/commons/lang/CharUtils;->toIntValue(CI)I

    move-result v0

    return v0
.end method

.method public static toString(C)Ljava/lang/String;
    .registers 4
    .param p0, "ch"    # C

    .line 329
    const/16 v0, 0x80

    if-ge p0, v0, :cond_9

    .line 330
    sget-object v0, Lorg/apache/commons/lang/CharUtils;->CHAR_STRING_ARRAY:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0

    .line 332
    :cond_9
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [C

    const/4 v2, 0x0

    aput-char p0, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static toString(Ljava/lang/Character;)Ljava/lang/String;
    .registers 2
    .param p0, "ch"    # Ljava/lang/Character;

    .line 353
    if-nez p0, :cond_4

    .line 354
    const/4 v0, 0x0

    return-object v0

    .line 356
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/lang/CharUtils;->toString(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static unicodeEscaped(C)Ljava/lang/String;
    .registers 3
    .param p0, "ch"    # C

    .line 374
    const/16 v0, 0x10

    if-ge p0, v0, :cond_1a

    .line 375
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "\\u000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 376
    :cond_1a
    const/16 v0, 0x100

    if-ge p0, v0, :cond_34

    .line 377
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "\\u00"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 378
    :cond_34
    const/16 v0, 0x1000

    if-ge p0, v0, :cond_4e

    .line 379
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "\\u0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 381
    :cond_4e
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "\\u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static unicodeEscaped(Ljava/lang/Character;)Ljava/lang/String;
    .registers 2
    .param p0, "ch"    # Ljava/lang/Character;

    .line 401
    if-nez p0, :cond_4

    .line 402
    const/4 v0, 0x0

    return-object v0

    .line 404
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/lang/CharUtils;->unicodeEscaped(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
