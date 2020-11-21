.class public Lorg/apache/commons/codec/language/Soundex;
.super Ljava/lang/Object;
.source "Soundex.java"

# interfaces
.implements Lorg/apache/commons/codec/StringEncoder;


# static fields
.field public static final US_ENGLISH:Lorg/apache/commons/codec/language/Soundex;

.field public static final US_ENGLISH_MAPPING:[C

.field public static final US_ENGLISH_MAPPING_STRING:Ljava/lang/String; = "01230120022455012623010202"


# instance fields
.field private maxLength:I

.field private soundexMapping:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 36
    new-instance v0, Lorg/apache/commons/codec/language/Soundex;

    invoke-direct {v0}, Lorg/apache/commons/codec/language/Soundex;-><init>()V

    sput-object v0, Lorg/apache/commons/codec/language/Soundex;->US_ENGLISH:Lorg/apache/commons/codec/language/Soundex;

    .line 56
    const-string v0, "01230120022455012623010202"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/apache/commons/codec/language/Soundex;->US_ENGLISH_MAPPING:[C

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 101
    sget-object v0, Lorg/apache/commons/codec/language/Soundex;->US_ENGLISH_MAPPING:[C

    invoke-direct {p0, v0}, Lorg/apache/commons/codec/language/Soundex;-><init>([C)V

    .line 102
    return-void
.end method

.method public constructor <init>([C)V
    .registers 3
    .param p1, "mapping"    # [C

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, 0x4

    iput v0, p0, Lorg/apache/commons/codec/language/Soundex;->maxLength:I

    .line 115
    invoke-direct {p0, p1}, Lorg/apache/commons/codec/language/Soundex;->setSoundexMapping([C)V

    .line 116
    return-void
.end method

.method private getMappingCode(Ljava/lang/String;I)C
    .registers 9
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "index"    # I

    .line 165
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/codec/language/Soundex;->map(C)C

    move-result v0

    .line 167
    .local v0, "mappedChar":C
    const/4 v1, 0x1

    if-le p2, v1, :cond_2f

    const/16 v1, 0x30

    if-eq v0, v1, :cond_2f

    .line 168
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 169
    .local v1, "hwChar":C
    const/16 v2, 0x57

    const/16 v3, 0x48

    if-eq v3, v1, :cond_1d

    if-ne v2, v1, :cond_2f

    .line 170
    :cond_1d
    add-int/lit8 v4, p2, -0x2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 171
    .local v4, "preHWChar":C
    invoke-direct {p0, v4}, Lorg/apache/commons/codec/language/Soundex;->map(C)C

    move-result v5

    .line 172
    .local v5, "firstCode":C
    if-eq v5, v0, :cond_2d

    if-eq v3, v4, :cond_2d

    if-ne v2, v4, :cond_2f

    .line 173
    :cond_2d
    const/4 v2, 0x0

    return v2

    .line 177
    .end local v1    # "hwChar":C
    .end local v4    # "preHWChar":C
    .end local v5    # "firstCode":C
    :cond_2f
    return v0
.end method

.method private getSoundexMapping()[C
    .registers 2

    .line 196
    iget-object v0, p0, Lorg/apache/commons/codec/language/Soundex;->soundexMapping:[C

    return-object v0
.end method

.method private map(C)C
    .registers 6
    .param p1, "ch"    # C

    .line 209
    add-int/lit8 v0, p1, -0x41

    .line 210
    .local v0, "index":I
    if-ltz v0, :cond_12

    invoke-direct {p0}, Lorg/apache/commons/codec/language/Soundex;->getSoundexMapping()[C

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_12

    .line 213
    invoke-direct {p0}, Lorg/apache/commons/codec/language/Soundex;->getSoundexMapping()[C

    move-result-object v1

    aget-char v1, v1, v0

    return v1

    .line 211
    :cond_12
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "The character is not mapped: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private setSoundexMapping([C)V
    .registers 2
    .param p1, "soundexMapping"    # [C

    .line 234
    iput-object p1, p0, Lorg/apache/commons/codec/language/Soundex;->soundexMapping:[C

    .line 235
    return-void
.end method


# virtual methods
.method public difference(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .param p1, "s1"    # Ljava/lang/String;
    .param p2, "s2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    .line 78
    invoke-static {p0, p1, p2}, Lorg/apache/commons/codec/language/SoundexUtils;->difference(Lorg/apache/commons/codec/StringEncoder;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "pObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    .line 132
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 135
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/commons/codec/language/Soundex;->soundex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 133
    :cond_c
    new-instance v0, Lorg/apache/commons/codec/EncoderException;

    const-string v1, "Parameter supplied to Soundex encode is not of type java.lang.String"

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "pString"    # Ljava/lang/String;

    .line 148
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/Soundex;->soundex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxLength()I
    .registers 2

    .line 187
    iget v0, p0, Lorg/apache/commons/codec/language/Soundex;->maxLength:I

    return v0
.end method

.method public setMaxLength(I)V
    .registers 2
    .param p1, "maxLength"    # I

    .line 224
    iput p1, p0, Lorg/apache/commons/codec/language/Soundex;->maxLength:I

    .line 225
    return-void
.end method

.method public soundex(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "str"    # Ljava/lang/String;

    .line 247
    if-nez p1, :cond_4

    .line 248
    const/4 v0, 0x0

    return-object v0

    .line 250
    :cond_4
    invoke-static {p1}, Lorg/apache/commons/codec/language/SoundexUtils;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 251
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_f

    .line 252
    return-object p1

    .line 254
    :cond_f
    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_48

    .line 256
    .local v0, "out":[C
    const/4 v1, 0x1

    .local v1, "incount":I
    const/4 v2, 0x1

    .line 257
    .local v2, "count":I
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput-char v4, v0, v3

    .line 258
    invoke-direct {p0, p1, v3}, Lorg/apache/commons/codec/language/Soundex;->getMappingCode(Ljava/lang/String;I)C

    move-result v3

    .line 259
    .local v3, "last":C
    :goto_22
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_41

    array-length v4, v0

    if-ge v2, v4, :cond_41

    .line 260
    add-int/lit8 v4, v1, 0x1

    .local v4, "incount":I
    invoke-direct {p0, p1, v1}, Lorg/apache/commons/codec/language/Soundex;->getMappingCode(Ljava/lang/String;I)C

    move-result v1

    .line 261
    .local v1, "mapped":C
    if-eqz v1, :cond_3f

    .line 262
    const/16 v5, 0x30

    if-eq v1, v5, :cond_3e

    if-eq v1, v3, :cond_3e

    .line 263
    add-int/lit8 v5, v2, 0x1

    .local v5, "count":I
    aput-char v1, v0, v2

    .line 265
    move v2, v5

    .end local v5    # "count":I
    :cond_3e
    move v3, v1

    .line 258
    .end local v4    # "incount":I
    .local v1, "incount":I
    :cond_3f
    move v1, v4

    goto :goto_22

    .line 268
    :cond_41
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([C)V

    return-object v4

    nop

    :array_48
    .array-data 2
        0x30s
        0x30s
        0x30s
        0x30s
    .end array-data
.end method
