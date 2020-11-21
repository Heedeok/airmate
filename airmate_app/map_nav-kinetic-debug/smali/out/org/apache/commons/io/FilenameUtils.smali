.class public Lorg/apache/commons/io/FilenameUtils;
.super Ljava/lang/Object;
.source "FilenameUtils.java"


# static fields
.field public static final EXTENSION_SEPARATOR:C = '.'

.field public static final EXTENSION_SEPARATOR_STR:Ljava/lang/String;

.field private static final OTHER_SEPARATOR:C

.field private static final SYSTEM_SEPARATOR:C

.field private static final UNIX_SEPARATOR:C = '/'

.field private static final WINDOWS_SEPARATOR:C = '\\'


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 105
    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x2e

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/FilenameUtils;->EXTENSION_SEPARATOR_STR:Ljava/lang/String;

    .line 120
    sget-char v0, Ljava/io/File;->separatorChar:C

    sput-char v0, Lorg/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    .line 127
    invoke-static {}, Lorg/apache/commons/io/FilenameUtils;->isSystemWindows()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 128
    const/16 v0, 0x2f

    sput-char v0, Lorg/apache/commons/io/FilenameUtils;->OTHER_SEPARATOR:C

    .line 129
    goto :goto_20

    .line 130
    :cond_1c
    const/16 v0, 0x5c

    sput-char v0, Lorg/apache/commons/io/FilenameUtils;->OTHER_SEPARATOR:C

    .line 132
    :goto_20
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    return-void
.end method

.method public static concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "basePath"    # Ljava/lang/String;
    .param p1, "fullFilenameToAdd"    # Ljava/lang/String;

    .line 394
    invoke-static {p1}, Lorg/apache/commons/io/FilenameUtils;->getPrefixLength(Ljava/lang/String;)I

    move-result v0

    .line 395
    .local v0, "prefix":I
    const/4 v1, 0x0

    if-gez v0, :cond_8

    .line 396
    return-object v1

    .line 398
    :cond_8
    if-lez v0, :cond_f

    .line 399
    invoke-static {p1}, Lorg/apache/commons/io/FilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 401
    :cond_f
    if-nez p0, :cond_12

    .line 402
    return-object v1

    .line 404
    :cond_12
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 405
    .local v1, "len":I
    if-nez v1, :cond_1d

    .line 406
    invoke-static {p1}, Lorg/apache/commons/io/FilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 408
    :cond_1d
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 409
    .local v2, "ch":C
    invoke-static {v2}, Lorg/apache/commons/io/FilenameUtils;->isSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 410
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/io/FilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 412
    :cond_3d
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/io/FilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static doGetFullPath(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 6
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "includeSeparator"    # Z

    .line 775
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 776
    return-object v0

    .line 778
    :cond_4
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getPrefixLength(Ljava/lang/String;)I

    move-result v1

    .line 779
    .local v1, "prefix":I
    if-gez v1, :cond_b

    .line 780
    return-object v0

    .line 782
    :cond_b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v1, v0, :cond_19

    .line 783
    if-eqz p1, :cond_18

    .line 784
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 786
    :cond_18
    return-object p0

    .line 789
    :cond_19
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfLastSeparator(Ljava/lang/String;)I

    move-result v0

    .line 790
    .local v0, "index":I
    const/4 v2, 0x0

    if-gez v0, :cond_25

    .line 791
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 793
    :cond_25
    add-int v3, v0, p1

    .line 794
    .local v3, "end":I
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static doGetPath(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "separatorAdd"    # I

    .line 694
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 695
    return-object v0

    .line 697
    :cond_4
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getPrefixLength(Ljava/lang/String;)I

    move-result v1

    .line 698
    .local v1, "prefix":I
    if-gez v1, :cond_b

    .line 699
    return-object v0

    .line 701
    :cond_b
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfLastSeparator(Ljava/lang/String;)I

    move-result v0

    .line 702
    .local v0, "index":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1f

    if-gez v0, :cond_18

    goto :goto_1f

    .line 705
    :cond_18
    add-int v2, v0, p1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 703
    :cond_1f
    :goto_1f
    const-string v2, ""

    return-object v2
.end method

.method private static doNormalize(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 14
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "keepSeparator"    # Z

    .line 261
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 262
    return-object v0

    .line 264
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 265
    .local v1, "size":I
    if-nez v1, :cond_b

    .line 266
    return-object p0

    .line 268
    :cond_b
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getPrefixLength(Ljava/lang/String;)I

    move-result v2

    .line 269
    .local v2, "prefix":I
    if-gez v2, :cond_12

    .line 270
    return-object v0

    .line 273
    :cond_12
    add-int/lit8 v3, v1, 0x2

    new-array v3, v3, [C

    .line 274
    .local v3, "array":[C
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p0, v5, v4, v3, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 277
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1f
    array-length v6, v3

    if-ge v4, v6, :cond_2f

    .line 278
    aget-char v6, v3, v4

    sget-char v7, Lorg/apache/commons/io/FilenameUtils;->OTHER_SEPARATOR:C

    if-ne v6, v7, :cond_2c

    .line 279
    sget-char v6, Lorg/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    aput-char v6, v3, v4

    .line 277
    :cond_2c
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    .line 284
    .end local v4    # "i":I
    :cond_2f
    const/4 v4, 0x1

    .line 285
    .local v4, "lastIsDirectory":Z
    add-int/lit8 v6, v1, -0x1

    aget-char v6, v3, v6

    sget-char v7, Lorg/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    if-eq v6, v7, :cond_40

    .line 286
    add-int/lit8 v6, v1, 0x1

    .local v6, "size":I
    sget-char v7, Lorg/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    aput-char v7, v3, v1

    .line 287
    .end local v1    # "size":I
    const/4 v4, 0x0

    .line 291
    move v1, v6

    .end local v6    # "size":I
    .restart local v1    # "size":I
    :cond_40
    add-int/lit8 v6, v2, 0x1

    .local v6, "i":I
    :goto_42
    if-ge v6, v1, :cond_60

    .line 292
    aget-char v7, v3, v6

    sget-char v8, Lorg/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    if-ne v7, v8, :cond_5d

    add-int/lit8 v7, v6, -0x1

    aget-char v7, v3, v7

    sget-char v8, Lorg/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    if-ne v7, v8, :cond_5d

    .line 293
    add-int/lit8 v7, v6, -0x1

    sub-int v8, v1, v6

    invoke-static {v3, v6, v3, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 294
    add-int/lit8 v1, v1, -0x1

    .line 295
    add-int/lit8 v6, v6, -0x1

    .line 291
    :cond_5d
    add-int/lit8 v6, v6, 0x1

    goto :goto_42

    .line 300
    .end local v6    # "i":I
    :cond_60
    add-int/lit8 v6, v2, 0x1

    .restart local v6    # "i":I
    :goto_62
    const/16 v7, 0x2e

    if-ge v6, v1, :cond_93

    .line 301
    aget-char v8, v3, v6

    sget-char v9, Lorg/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    if-ne v8, v9, :cond_90

    add-int/lit8 v8, v6, -0x1

    aget-char v8, v3, v8

    if-ne v8, v7, :cond_90

    add-int/lit8 v7, v2, 0x1

    if-eq v6, v7, :cond_7e

    add-int/lit8 v7, v6, -0x2

    aget-char v7, v3, v7

    sget-char v8, Lorg/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    if-ne v7, v8, :cond_90

    .line 303
    :cond_7e
    add-int/lit8 v7, v1, -0x1

    if-ne v6, v7, :cond_83

    .line 304
    const/4 v4, 0x1

    .line 306
    :cond_83
    add-int/lit8 v7, v6, 0x1

    add-int/lit8 v8, v6, -0x1

    sub-int v9, v1, v6

    invoke-static {v3, v7, v3, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 307
    add-int/lit8 v1, v1, -0x2

    .line 308
    add-int/lit8 v6, v6, -0x1

    .line 300
    :cond_90
    add-int/lit8 v6, v6, 0x1

    goto :goto_62

    .line 314
    .end local v6    # "i":I
    :cond_93
    add-int/lit8 v6, v2, 0x2

    .restart local v6    # "i":I
    :goto_95
    if-ge v6, v1, :cond_eb

    .line 315
    aget-char v8, v3, v6

    sget-char v9, Lorg/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    if-ne v8, v9, :cond_e8

    add-int/lit8 v8, v6, -0x1

    aget-char v8, v3, v8

    if-ne v8, v7, :cond_e8

    add-int/lit8 v8, v6, -0x2

    aget-char v8, v3, v8

    if-ne v8, v7, :cond_e8

    add-int/lit8 v8, v2, 0x2

    if-eq v6, v8, :cond_b5

    add-int/lit8 v8, v6, -0x3

    aget-char v8, v3, v8

    sget-char v9, Lorg/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    if-ne v8, v9, :cond_e8

    .line 317
    :cond_b5
    add-int/lit8 v8, v2, 0x2

    if-ne v6, v8, :cond_ba

    .line 318
    return-object v0

    .line 320
    :cond_ba
    add-int/lit8 v8, v1, -0x1

    if-ne v6, v8, :cond_bf

    .line 321
    const/4 v4, 0x1

    .line 324
    :cond_bf
    add-int/lit8 v8, v6, -0x4

    .local v8, "j":I
    :goto_c1
    if-lt v8, v2, :cond_db

    .line 325
    aget-char v9, v3, v8

    sget-char v10, Lorg/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    if-ne v9, v10, :cond_d8

    .line 327
    add-int/lit8 v9, v6, 0x1

    add-int/lit8 v10, v8, 0x1

    sub-int v11, v1, v6

    invoke-static {v3, v9, v3, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 328
    sub-int v9, v6, v8

    sub-int/2addr v1, v9

    .line 329
    add-int/lit8 v6, v8, 0x1

    .line 330
    goto :goto_e8

    .line 324
    :cond_d8
    add-int/lit8 v8, v8, -0x1

    goto :goto_c1

    .line 334
    :cond_db
    add-int/lit8 v9, v6, 0x1

    sub-int v10, v1, v6

    invoke-static {v3, v9, v3, v2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 335
    add-int/lit8 v9, v6, 0x1

    sub-int/2addr v9, v2

    sub-int/2addr v1, v9

    .line 336
    add-int/lit8 v6, v2, 0x1

    .line 314
    .end local v8    # "j":I
    :cond_e8
    :goto_e8
    add-int/lit8 v6, v6, 0x1

    goto :goto_95

    .line 340
    .end local v6    # "i":I
    :cond_eb
    if-gtz v1, :cond_f0

    .line 341
    const-string v0, ""

    return-object v0

    .line 343
    :cond_f0
    if-gt v1, v2, :cond_f8

    .line 344
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3, v5, v1}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 346
    :cond_f8
    if-eqz v4, :cond_102

    if-eqz p1, :cond_102

    .line 347
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3, v5, v1}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 349
    :cond_102
    new-instance v0, Ljava/lang/String;

    add-int/lit8 v6, v1, -0x1

    invoke-direct {v0, v3, v5, v6}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public static equals(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p0, "filename1"    # Ljava/lang/String;
    .param p1, "filename2"    # Ljava/lang/String;

    .line 915
    sget-object v0, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lorg/apache/commons/io/FilenameUtils;->equals(Ljava/lang/String;Ljava/lang/String;ZLorg/apache/commons/io/IOCase;)Z

    move-result v0

    return v0
.end method

.method public static equals(Ljava/lang/String;Ljava/lang/String;ZLorg/apache/commons/io/IOCase;)Z
    .registers 6
    .param p0, "filename1"    # Ljava/lang/String;
    .param p1, "filename2"    # Ljava/lang/String;
    .param p2, "normalized"    # Z
    .param p3, "caseSensitivity"    # Lorg/apache/commons/io/IOCase;

    .line 981
    if-eqz p0, :cond_25

    if-nez p1, :cond_5

    goto :goto_25

    .line 984
    :cond_5
    if-eqz p2, :cond_1c

    .line 985
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 986
    invoke-static {p1}, Lorg/apache/commons/io/FilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 987
    if-eqz p0, :cond_14

    if-eqz p1, :cond_14

    goto :goto_1c

    .line 988
    :cond_14
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Error normalizing one or both of the file names"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 992
    :cond_1c
    :goto_1c
    if-nez p3, :cond_20

    .line 993
    sget-object p3, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;

    .line 995
    :cond_20
    invoke-virtual {p3, p0, p1}, Lorg/apache/commons/io/IOCase;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 982
    :cond_25
    :goto_25
    if-ne p0, p1, :cond_29

    const/4 v0, 0x1

    goto :goto_2a

    :cond_29
    const/4 v0, 0x0

    :goto_2a
    return v0
.end method

.method public static equalsNormalized(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p0, "filename1"    # Ljava/lang/String;
    .param p1, "filename2"    # Ljava/lang/String;

    .line 946
    sget-object v0, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;

    const/4 v1, 0x1

    invoke-static {p0, p1, v1, v0}, Lorg/apache/commons/io/FilenameUtils;->equals(Ljava/lang/String;Ljava/lang/String;ZLorg/apache/commons/io/IOCase;)Z

    move-result v0

    return v0
.end method

.method public static equalsNormalizedOnSystem(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p0, "filename1"    # Ljava/lang/String;
    .param p1, "filename2"    # Ljava/lang/String;

    .line 963
    sget-object v0, Lorg/apache/commons/io/IOCase;->SYSTEM:Lorg/apache/commons/io/IOCase;

    const/4 v1, 0x1

    invoke-static {p0, p1, v1, v0}, Lorg/apache/commons/io/FilenameUtils;->equals(Ljava/lang/String;Ljava/lang/String;ZLorg/apache/commons/io/IOCase;)Z

    move-result v0

    return v0
.end method

.method public static equalsOnSystem(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p0, "filename1"    # Ljava/lang/String;
    .param p1, "filename2"    # Ljava/lang/String;

    .line 930
    sget-object v0, Lorg/apache/commons/io/IOCase;->SYSTEM:Lorg/apache/commons/io/IOCase;

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lorg/apache/commons/io/FilenameUtils;->equals(Ljava/lang/String;Ljava/lang/String;ZLorg/apache/commons/io/IOCase;)Z

    move-result v0

    return v0
.end method

.method public static getBaseName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "filename"    # Ljava/lang/String;

    .line 840
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/io/FilenameUtils;->removeExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExtension(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "filename"    # Ljava/lang/String;

    .line 861
    if-nez p0, :cond_4

    .line 862
    const/4 v0, 0x0

    return-object v0

    .line 864
    :cond_4
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfExtension(Ljava/lang/String;)I

    move-result v0

    .line 865
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    .line 866
    const-string v1, ""

    return-object v1

    .line 868
    :cond_e
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getFullPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "filename"    # Ljava/lang/String;

    .line 734
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/commons/io/FilenameUtils;->doGetFullPath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFullPathNoEndSeparator(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "filename"    # Ljava/lang/String;

    .line 764
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/io/FilenameUtils;->doGetFullPath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "filename"    # Ljava/lang/String;

    .line 815
    if-nez p0, :cond_4

    .line 816
    const/4 v0, 0x0

    return-object v0

    .line 818
    :cond_4
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfLastSeparator(Ljava/lang/String;)I

    move-result v0

    .line 819
    .local v0, "index":I
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "filename"    # Ljava/lang/String;

    .line 656
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/commons/io/FilenameUtils;->doGetPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPathNoEndSeparator(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "filename"    # Ljava/lang/String;

    .line 683
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/io/FilenameUtils;->doGetPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "filename"    # Ljava/lang/String;

    .line 620
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 621
    return-object v0

    .line 623
    :cond_4
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getPrefixLength(Ljava/lang/String;)I

    move-result v1

    .line 624
    .local v1, "len":I
    if-gez v1, :cond_b

    .line 625
    return-object v0

    .line 627
    :cond_b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v1, v0, :cond_23

    .line 628
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 630
    :cond_23
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPrefixLength(Ljava/lang/String;)I
    .registers 10
    .param p0, "filename"    # Ljava/lang/String;

    .line 493
    const/4 v0, -0x1

    if-nez p0, :cond_4

    .line 494
    return v0

    .line 496
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 497
    .local v1, "len":I
    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 498
    return v2

    .line 500
    :cond_c
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 501
    .local v2, "ch0":C
    const/16 v3, 0x3a

    if-ne v2, v3, :cond_15

    .line 502
    return v0

    .line 504
    :cond_15
    const/16 v4, 0x7e

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-ne v1, v5, :cond_23

    .line 505
    if-ne v2, v4, :cond_1e

    .line 506
    return v6

    .line 508
    :cond_1e
    invoke-static {v2}, Lorg/apache/commons/io/FilenameUtils;->isSeparator(C)Z

    move-result v0

    return v0

    .line 510
    :cond_23
    const/16 v7, 0x5c

    const/16 v8, 0x2f

    if-ne v2, v4, :cond_49

    .line 511
    invoke-virtual {p0, v8, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 512
    .local v3, "posUnix":I
    invoke-virtual {p0, v7, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 513
    .local v4, "posWin":I
    if-ne v3, v0, :cond_38

    if-ne v4, v0, :cond_38

    .line 514
    add-int/lit8 v0, v1, 0x1

    return v0

    .line 516
    :cond_38
    if-ne v3, v0, :cond_3c

    move v6, v4

    goto :goto_3d

    :cond_3c
    move v6, v3

    :goto_3d
    move v3, v6

    .line 517
    if-ne v4, v0, :cond_42

    move v0, v3

    goto :goto_43

    :cond_42
    move v0, v4

    .line 518
    .end local v4    # "posWin":I
    .local v0, "posWin":I
    :goto_43
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int/2addr v4, v5

    return v4

    .line 520
    .end local v0    # "posWin":I
    .end local v3    # "posUnix":I
    :cond_49
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 521
    .local v4, "ch1":C
    if-ne v4, v3, :cond_6c

    .line 522
    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    .line 523
    const/16 v3, 0x41

    if-lt v2, v3, :cond_6b

    const/16 v3, 0x5a

    if-gt v2, v3, :cond_6b

    .line 524
    if-eq v1, v6, :cond_6a

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/io/FilenameUtils;->isSeparator(C)Z

    move-result v0

    if-nez v0, :cond_68

    goto :goto_6a

    .line 527
    :cond_68
    const/4 v0, 0x3

    return v0

    .line 525
    :cond_6a
    :goto_6a
    return v6

    .line 529
    :cond_6b
    return v0

    .line 531
    :cond_6c
    invoke-static {v2}, Lorg/apache/commons/io/FilenameUtils;->isSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_9b

    invoke-static {v4}, Lorg/apache/commons/io/FilenameUtils;->isSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_9b

    .line 532
    invoke-virtual {p0, v8, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 533
    .restart local v3    # "posUnix":I
    invoke-virtual {p0, v7, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .line 534
    .local v7, "posWin":I
    if-ne v3, v0, :cond_84

    if-eq v7, v0, :cond_9a

    :cond_84
    if-eq v3, v6, :cond_9a

    if-ne v7, v6, :cond_89

    goto :goto_9a

    .line 537
    :cond_89
    if-ne v3, v0, :cond_8d

    move v6, v7

    goto :goto_8e

    :cond_8d
    move v6, v3

    :goto_8e
    move v3, v6

    .line 538
    if-ne v7, v0, :cond_93

    move v0, v3

    goto :goto_94

    :cond_93
    move v0, v7

    .line 539
    .end local v7    # "posWin":I
    .restart local v0    # "posWin":I
    :goto_94
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int/2addr v6, v5

    return v6

    .line 535
    .end local v0    # "posWin":I
    .restart local v7    # "posWin":I
    :cond_9a
    :goto_9a
    return v0

    .line 541
    .end local v3    # "posUnix":I
    .end local v7    # "posWin":I
    :cond_9b
    invoke-static {v2}, Lorg/apache/commons/io/FilenameUtils;->isSeparator(C)Z

    move-result v0

    return v0
.end method

.method public static indexOfExtension(Ljava/lang/String;)I
    .registers 4
    .param p0, "filename"    # Ljava/lang/String;

    .line 581
    const/4 v0, -0x1

    if-nez p0, :cond_4

    .line 582
    return v0

    .line 584
    :cond_4
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 585
    .local v1, "extensionPos":I
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfLastSeparator(Ljava/lang/String;)I

    move-result v2

    .line 586
    .local v2, "lastSeparator":I
    if-le v2, v1, :cond_11

    goto :goto_12

    :cond_11
    move v0, v1

    :goto_12
    return v0
.end method

.method public static indexOfLastSeparator(Ljava/lang/String;)I
    .registers 4
    .param p0, "filename"    # Ljava/lang/String;

    .line 559
    if-nez p0, :cond_4

    .line 560
    const/4 v0, -0x1

    return v0

    .line 562
    :cond_4
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 563
    .local v0, "lastUnixPos":I
    const/16 v1, 0x5c

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 564
    .local v1, "lastWindowsPos":I
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    return v2
.end method

.method public static isExtension(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "extension"    # Ljava/lang/String;

    .line 1011
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 1012
    return v0

    .line 1014
    :cond_4
    if-eqz p1, :cond_16

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_d

    goto :goto_16

    .line 1017
    :cond_d
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1018
    .local v0, "fileExt":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 1015
    .end local v0    # "fileExt":Ljava/lang/String;
    :cond_16
    :goto_16
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfExtension(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1f

    const/4 v0, 0x1

    nop

    :cond_1f
    return v0
.end method

.method public static isExtension(Ljava/lang/String;Ljava/util/Collection;)Z
    .registers 7
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "extensions"    # Ljava/util/Collection;

    .line 1060
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 1061
    return v0

    .line 1063
    :cond_4
    const/4 v1, 0x1

    if-eqz p1, :cond_28

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_28

    .line 1066
    :cond_e
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1067
    .local v2, "fileExt":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;
    :cond_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_27

    .line 1068
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 1069
    return v1

    .line 1072
    .end local v3    # "it":Ljava/util/Iterator;
    :cond_27
    return v0

    .line 1064
    .end local v2    # "fileExt":Ljava/lang/String;
    :cond_28
    :goto_28
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfExtension(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_31

    const/4 v0, 0x1

    nop

    :cond_31
    return v0
.end method

.method public static isExtension(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 7
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "extensions"    # [Ljava/lang/String;

    .line 1033
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 1034
    return v0

    .line 1036
    :cond_4
    const/4 v1, 0x1

    if-eqz p1, :cond_20

    array-length v2, p1

    if-nez v2, :cond_b

    goto :goto_20

    .line 1039
    :cond_b
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1040
    .local v2, "fileExt":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_10
    array-length v4, p1

    if-ge v3, v4, :cond_1f

    .line 1041
    aget-object v4, p1, v3

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 1042
    return v1

    .line 1040
    :cond_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 1045
    .end local v3    # "i":I
    :cond_1f
    return v0

    .line 1037
    .end local v2    # "fileExt":Ljava/lang/String;
    :cond_20
    :goto_20
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfExtension(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_29

    const/4 v0, 0x1

    nop

    :cond_29
    return v0
.end method

.method private static isSeparator(C)Z
    .registers 2
    .param p0, "ch"    # C

    .line 159
    const/16 v0, 0x2f

    if-eq p0, v0, :cond_b

    const/16 v0, 0x5c

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

.method static isSystemWindows()Z
    .registers 2

    .line 148
    sget-char v0, Lorg/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static normalize(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "filename"    # Ljava/lang/String;

    .line 204
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/commons/io/FilenameUtils;->doNormalize(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static normalizeNoEndSeparator(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "filename"    # Ljava/lang/String;

    .line 250
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/io/FilenameUtils;->doNormalize(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static removeExtension(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "filename"    # Ljava/lang/String;

    .line 891
    if-nez p0, :cond_4

    .line 892
    const/4 v0, 0x0

    return-object v0

    .line 894
    :cond_4
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfExtension(Ljava/lang/String;)I

    move-result v0

    .line 895
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    .line 896
    return-object p0

    .line 898
    :cond_c
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static separatorsToSystem(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "path"    # Ljava/lang/String;

    .line 450
    if-nez p0, :cond_4

    .line 451
    const/4 v0, 0x0

    return-object v0

    .line 453
    :cond_4
    invoke-static {}, Lorg/apache/commons/io/FilenameUtils;->isSystemWindows()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 454
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->separatorsToWindows(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 456
    :cond_f
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->separatorsToUnix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static separatorsToUnix(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "path"    # Ljava/lang/String;

    .line 424
    if-eqz p0, :cond_13

    const/16 v0, 0x5c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_c

    goto :goto_13

    .line 427
    :cond_c
    const/16 v1, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 425
    :cond_13
    :goto_13
    return-object p0
.end method

.method public static separatorsToWindows(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "path"    # Ljava/lang/String;

    .line 437
    if-eqz p0, :cond_13

    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_c

    goto :goto_13

    .line 440
    :cond_c
    const/16 v1, 0x5c

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 438
    :cond_13
    :goto_13
    return-object p0
.end method

.method static splitOnTokens(Ljava/lang/String;)[Ljava/lang/String;
    .registers 10
    .param p0, "text"    # Ljava/lang/String;

    .line 1230
    const-string v0, "?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_18

    const-string v0, "*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_18

    .line 1231
    new-array v0, v2, [Ljava/lang/String;

    aput-object p0, v0, v3

    return-object v0

    .line 1234
    :cond_18
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 1235
    .local v0, "array":[C
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1236
    .local v1, "list":Ljava/util/ArrayList;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 1237
    .local v4, "buffer":Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_27
    array-length v6, v0

    if-ge v5, v6, :cond_79

    .line 1238
    aget-char v6, v0, v5

    const/16 v7, 0x3f

    if-eq v6, v7, :cond_3d

    aget-char v6, v0, v5

    const/16 v8, 0x2a

    if-ne v6, v8, :cond_37

    goto :goto_3d

    .line 1250
    :cond_37
    aget-char v6, v0, v5

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_76

    .line 1239
    :cond_3d
    :goto_3d
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-eqz v6, :cond_4d

    .line 1240
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1241
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 1243
    :cond_4d
    aget-char v6, v0, v5

    if-ne v6, v7, :cond_57

    .line 1244
    const-string v6, "?"

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1245
    goto :goto_76

    :cond_57
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_70

    if-lez v5, :cond_76

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v2

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "*"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_76

    .line 1247
    :cond_70
    const-string v6, "*"

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1248
    nop

    .line 1237
    :cond_76
    :goto_76
    add-int/lit8 v5, v5, 0x1

    goto :goto_27

    .line 1253
    .end local v5    # "i":I
    :cond_79
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-eqz v2, :cond_86

    .line 1254
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1257
    :cond_86
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2
.end method

.method public static wildcardMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "wildcardMatcher"    # Ljava/lang/String;

    .line 1098
    sget-object v0, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/io/FilenameUtils;->wildcardMatch(Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/io/IOCase;)Z

    move-result v0

    return v0
.end method

.method public static wildcardMatch(Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/io/IOCase;)Z
    .registers 12
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "wildcardMatcher"    # Ljava/lang/String;
    .param p2, "caseSensitivity"    # Lorg/apache/commons/io/IOCase;

    .line 1140
    const/4 v0, 0x1

    if-nez p0, :cond_6

    if-nez p1, :cond_6

    .line 1141
    return v0

    .line 1143
    :cond_6
    const/4 v1, 0x0

    if-eqz p0, :cond_a2

    if-nez p1, :cond_d

    goto/16 :goto_a2

    .line 1146
    :cond_d
    if-nez p2, :cond_11

    .line 1147
    sget-object p2, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;

    .line 1149
    .end local p2    # "caseSensitivity":Lorg/apache/commons/io/IOCase;
    .local v2, "caseSensitivity":Lorg/apache/commons/io/IOCase;
    :cond_11
    move-object v2, p2

    invoke-virtual {v2, p0}, Lorg/apache/commons/io/IOCase;->convertCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1150
    .end local p0    # "filename":Ljava/lang/String;
    .local v3, "filename":Ljava/lang/String;
    invoke-virtual {v2, p1}, Lorg/apache/commons/io/IOCase;->convertCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1151
    .end local p1    # "wildcardMatcher":Ljava/lang/String;
    .local v4, "wildcardMatcher":Ljava/lang/String;
    invoke-static {v4}, Lorg/apache/commons/io/FilenameUtils;->splitOnTokens(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1152
    .local v5, "wcs":[Ljava/lang/String;
    const/4 p0, 0x0

    .line 1153
    .local p0, "anyChars":Z
    const/4 p1, 0x0

    .line 1154
    .local p1, "textIdx":I
    const/4 p2, 0x0

    .line 1155
    .local p2, "wcsIdx":I
    new-instance v6, Ljava/util/Stack;

    invoke-direct {v6}, Ljava/util/Stack;-><init>()V

    .line 1159
    .local v6, "backtrack":Ljava/util/Stack;
    :cond_26
    invoke-virtual {v6}, Ljava/util/Stack;->size()I

    move-result v7

    if-lez v7, :cond_37

    .line 1160
    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    .line 1161
    .local v7, "array":[I
    aget p2, v7, v1

    .line 1162
    aget p1, v7, v0

    .line 1163
    const/4 p0, 0x1

    .line 1167
    .end local v7    # "array":[I
    :cond_37
    :goto_37
    array-length v7, v5

    if-ge p2, v7, :cond_91

    .line 1169
    aget-object v7, v5, p2

    const-string v8, "?"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_48

    .line 1171
    add-int/lit8 p1, p1, 0x1

    .line 1172
    const/4 p0, 0x0

    .line 1174
    goto :goto_8e

    :cond_48
    aget-object v7, v5, p2

    const-string v8, "*"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5c

    .line 1176
    const/4 p0, 0x1

    .line 1177
    array-length v7, v5

    sub-int/2addr v7, v0

    if-ne p2, v7, :cond_8e

    .line 1178
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p1

    .line 1179
    goto :goto_8e

    .line 1183
    :cond_5c
    if-eqz p0, :cond_7d

    .line 1185
    aget-object v7, v5, p2

    invoke-virtual {v3, v7, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p1

    .line 1186
    const/4 v7, -0x1

    if-ne p1, v7, :cond_68

    .line 1188
    goto :goto_91

    .line 1190
    :cond_68
    aget-object v7, v5, p2

    add-int/lit8 v8, p1, 0x1

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    .line 1191
    .local v7, "repeat":I
    if-ltz v7, :cond_7c

    .line 1192
    const/4 v8, 0x2

    new-array v8, v8, [I

    aput p2, v8, v1

    aput v7, v8, v0

    invoke-virtual {v6, v8}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1194
    .end local v7    # "repeat":I
    :cond_7c
    goto :goto_86

    .line 1196
    :cond_7d
    aget-object v7, v5, p2

    invoke-virtual {v3, v7, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_86

    .line 1198
    goto :goto_91

    .line 1203
    :cond_86
    :goto_86
    aget-object v7, v5, p2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr p1, v7

    .line 1204
    const/4 p0, 0x0

    .line 1207
    :cond_8e
    :goto_8e
    add-int/lit8 p2, p2, 0x1

    .line 1208
    goto :goto_37

    .line 1211
    :cond_91
    :goto_91
    array-length v7, v5

    if-ne p2, v7, :cond_9b

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-ne p1, v7, :cond_9b

    .line 1212
    return v0

    .line 1215
    :cond_9b
    invoke-virtual {v6}, Ljava/util/Stack;->size()I

    move-result v7

    if-gtz v7, :cond_26

    .line 1217
    return v1

    .line 1144
    .end local v2    # "caseSensitivity":Lorg/apache/commons/io/IOCase;
    .end local v3    # "filename":Ljava/lang/String;
    .end local v4    # "wildcardMatcher":Ljava/lang/String;
    .end local v5    # "wcs":[Ljava/lang/String;
    .end local v6    # "backtrack":Ljava/util/Stack;
    .local p0, "filename":Ljava/lang/String;
    .local p1, "wildcardMatcher":Ljava/lang/String;
    .local p2, "caseSensitivity":Lorg/apache/commons/io/IOCase;
    :cond_a2
    :goto_a2
    return v1
.end method

.method public static wildcardMatchOnSystem(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "wildcardMatcher"    # Ljava/lang/String;

    .line 1123
    sget-object v0, Lorg/apache/commons/io/IOCase;->SYSTEM:Lorg/apache/commons/io/IOCase;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/io/FilenameUtils;->wildcardMatch(Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/io/IOCase;)Z

    move-result v0

    return v0
.end method
