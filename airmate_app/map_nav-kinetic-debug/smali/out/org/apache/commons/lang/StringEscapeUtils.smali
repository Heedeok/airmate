.class public Lorg/apache/commons/lang/StringEscapeUtils;
.super Ljava/lang/Object;
.source "StringEscapeUtils.java"


# static fields
.field private static final CSV_DELIMITER:C = ','

.field private static final CSV_QUOTE:C = '\"'

.field private static final CSV_QUOTE_STR:Ljava/lang/String;

.field private static final CSV_SEARCH_CHARS:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 45
    const/16 v0, 0x22

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/StringEscapeUtils;->CSV_QUOTE_STR:Ljava/lang/String;

    .line 46
    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_12

    sput-object v0, Lorg/apache/commons/lang/StringEscapeUtils;->CSV_SEARCH_CHARS:[C

    return-void

    nop

    :array_12
    .array-data 2
        0x2cs
        0x22s
        0xds
        0xas
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method public static escapeCsv(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;

    .line 721
    sget-object v0, Lorg/apache/commons/lang/StringEscapeUtils;->CSV_SEARCH_CHARS:[C

    invoke-static {p0, v0}, Lorg/apache/commons/lang/StringUtils;->containsNone(Ljava/lang/String;[C)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 722
    return-object p0

    .line 725
    :cond_9
    :try_start_9
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 726
    .local v0, "writer":Ljava/io/StringWriter;
    invoke-static {v0, p0}, Lorg/apache/commons/lang/StringEscapeUtils;->escapeCsv(Ljava/io/Writer;Ljava/lang/String;)V

    .line 727
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_15} :catch_16

    return-object v1

    .line 728
    .end local v0    # "writer":Ljava/io/StringWriter;
    :catch_16
    move-exception v0

    .line 730
    .local v0, "ioe":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 731
    const/4 v1, 0x0

    return-object v1
.end method

.method public static escapeCsv(Ljava/io/Writer;Ljava/lang/String;)V
    .registers 5
    .param p0, "out"    # Ljava/io/Writer;
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 759
    sget-object v0, Lorg/apache/commons/lang/StringEscapeUtils;->CSV_SEARCH_CHARS:[C

    invoke-static {p1, v0}, Lorg/apache/commons/lang/StringUtils;->containsNone(Ljava/lang/String;[C)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 760
    if-eqz p1, :cond_d

    .line 761
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 763
    :cond_d
    return-void

    .line 765
    :cond_e
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(I)V

    .line 766
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_14
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_29

    .line 767
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 768
    .local v2, "c":C
    if-ne v2, v0, :cond_23

    .line 769
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(I)V

    .line 771
    :cond_23
    invoke-virtual {p0, v2}, Ljava/io/Writer;->write(I)V

    .line 766
    .end local v2    # "c":C
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 773
    .end local v1    # "i":I
    :cond_29
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(I)V

    .line 774
    return-void
.end method

.method public static escapeHtml(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "str"    # Ljava/lang/String;

    .line 451
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 452
    return-object v0

    .line 455
    :cond_4
    :try_start_4
    new-instance v1, Ljava/io/StringWriter;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_a} :catch_1e

    int-to-double v2, v2

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    double-to-int v2, v2

    :try_start_13
    invoke-direct {v1, v2}, Ljava/io/StringWriter;-><init>(I)V

    .line 456
    .local v1, "writer":Ljava/io/StringWriter;
    invoke-static {v1, p0}, Lorg/apache/commons/lang/StringEscapeUtils;->escapeHtml(Ljava/io/Writer;Ljava/lang/String;)V

    .line 457
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_1d} :catch_1e

    return-object v2

    .line 458
    .end local v1    # "writer":Ljava/io/StringWriter;
    :catch_1e
    move-exception v1

    .line 461
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 462
    return-object v0
.end method

.method public static escapeHtml(Ljava/io/Writer;Ljava/lang/String;)V
    .registers 4
    .param p0, "writer"    # Ljava/io/Writer;
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 496
    if-eqz p0, :cond_b

    .line 499
    if-nez p1, :cond_5

    .line 500
    return-void

    .line 502
    :cond_5
    sget-object v0, Lorg/apache/commons/lang/Entities;->HTML40:Lorg/apache/commons/lang/Entities;

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/lang/Entities;->escape(Ljava/io/Writer;Ljava/lang/String;)V

    .line 503
    return-void

    .line 497
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Writer must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static escapeJava(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 86
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang/StringEscapeUtils;->escapeJavaStyleString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static escapeJava(Ljava/io/Writer;Ljava/lang/String;)V
    .registers 3
    .param p0, "out"    # Ljava/io/Writer;
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/StringEscapeUtils;->escapeJavaStyleString(Ljava/io/Writer;Ljava/lang/String;Z)V

    .line 103
    return-void
.end method

.method public static escapeJavaScript(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 127
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/commons/lang/StringEscapeUtils;->escapeJavaStyleString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static escapeJavaScript(Ljava/io/Writer;Ljava/lang/String;)V
    .registers 3
    .param p0, "out"    # Ljava/io/Writer;
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/StringEscapeUtils;->escapeJavaStyleString(Ljava/io/Writer;Ljava/lang/String;Z)V

    .line 144
    return-void
.end method

.method private static escapeJavaStyleString(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "escapeSingleQuotes"    # Z

    .line 154
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 155
    return-object v0

    .line 158
    :cond_4
    :try_start_4
    new-instance v1, Ljava/io/StringWriter;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/io/StringWriter;-><init>(I)V

    .line 159
    .local v1, "writer":Ljava/io/StringWriter;
    invoke-static {v1, p0, p1}, Lorg/apache/commons/lang/StringEscapeUtils;->escapeJavaStyleString(Ljava/io/Writer;Ljava/lang/String;Z)V

    .line 160
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_16} :catch_17

    return-object v2

    .line 161
    .end local v1    # "writer":Ljava/io/StringWriter;
    :catch_17
    move-exception v1

    .line 163
    .local v1, "ioe":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 164
    return-object v0
.end method

.method private static escapeJavaStyleString(Ljava/io/Writer;Ljava/lang/String;Z)V
    .registers 8
    .param p0, "out"    # Ljava/io/Writer;
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "escapeSingleQuote"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    if-eqz p0, :cond_10d

    .line 180
    if-nez p1, :cond_5

    .line 181
    return-void

    .line 184
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 185
    .local v0, "sz":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_10c

    .line 186
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 189
    .local v2, "ch":C
    const/16 v3, 0xfff

    if-le v2, v3, :cond_2e

    .line 190
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "\\u"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v2}, Lorg/apache/commons/lang/StringEscapeUtils;->hex(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_108

    .line 191
    :cond_2e
    const/16 v3, 0xff

    if-le v2, v3, :cond_4c

    .line 192
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "\\u0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v2}, Lorg/apache/commons/lang/StringEscapeUtils;->hex(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_108

    .line 193
    :cond_4c
    const/16 v3, 0x7f

    if-le v2, v3, :cond_6a

    .line 194
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "\\u00"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v2}, Lorg/apache/commons/lang/StringEscapeUtils;->hex(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_108

    .line 195
    :cond_6a
    const/16 v3, 0x20

    const/16 v4, 0x5c

    if-ge v2, v3, :cond_d8

    .line 196
    packed-switch v2, :pswitch_data_116

    .line 218
    :pswitch_73
    const/16 v3, 0xf

    if-le v2, v3, :cond_bf

    .line 219
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "\\u00"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v2}, Lorg/apache/commons/lang/StringEscapeUtils;->hex(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_108

    .line 214
    :pswitch_91
    invoke-virtual {p0, v4}, Ljava/io/Writer;->write(I)V

    .line 215
    const/16 v3, 0x72

    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(I)V

    .line 216
    goto/16 :goto_108

    .line 210
    :pswitch_9b
    invoke-virtual {p0, v4}, Ljava/io/Writer;->write(I)V

    .line 211
    const/16 v3, 0x66

    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(I)V

    .line 212
    goto :goto_108

    .line 202
    :pswitch_a4
    invoke-virtual {p0, v4}, Ljava/io/Writer;->write(I)V

    .line 203
    const/16 v3, 0x6e

    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(I)V

    .line 204
    goto :goto_108

    .line 206
    :pswitch_ad
    invoke-virtual {p0, v4}, Ljava/io/Writer;->write(I)V

    .line 207
    const/16 v3, 0x74

    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(I)V

    .line 208
    goto :goto_108

    .line 198
    :pswitch_b6
    invoke-virtual {p0, v4}, Ljava/io/Writer;->write(I)V

    .line 199
    const/16 v3, 0x62

    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(I)V

    .line 200
    goto :goto_108

    .line 221
    :cond_bf
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "\\u000"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v2}, Lorg/apache/commons/lang/StringEscapeUtils;->hex(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 223
    goto :goto_108

    .line 226
    :cond_d8
    const/16 v3, 0x22

    if-eq v2, v3, :cond_101

    const/16 v3, 0x27

    if-eq v2, v3, :cond_f8

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_f1

    if-eq v2, v4, :cond_ea

    .line 246
    invoke-virtual {p0, v2}, Ljava/io/Writer;->write(I)V

    goto :goto_108

    .line 238
    :cond_ea
    invoke-virtual {p0, v4}, Ljava/io/Writer;->write(I)V

    .line 239
    invoke-virtual {p0, v4}, Ljava/io/Writer;->write(I)V

    .line 240
    goto :goto_108

    .line 242
    :cond_f1
    invoke-virtual {p0, v4}, Ljava/io/Writer;->write(I)V

    .line 243
    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(I)V

    .line 244
    goto :goto_108

    .line 228
    :cond_f8
    if-eqz p2, :cond_fd

    .line 229
    invoke-virtual {p0, v4}, Ljava/io/Writer;->write(I)V

    .line 231
    :cond_fd
    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(I)V

    .line 232
    goto :goto_108

    .line 234
    :cond_101
    invoke-virtual {p0, v4}, Ljava/io/Writer;->write(I)V

    .line 235
    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(I)V

    .line 236
    nop

    .line 185
    .end local v2    # "ch":C
    :goto_108
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_a

    .line 251
    .end local v1    # "i":I
    :cond_10c
    return-void

    .line 178
    .end local v0    # "sz":I
    :cond_10d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Writer must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_116
    .packed-switch 0x8
        :pswitch_b6
        :pswitch_ad
        :pswitch_a4
        :pswitch_73
        :pswitch_9b
        :pswitch_91
    .end packed-switch
.end method

.method public static escapeSql(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;

    .line 690
    if-nez p0, :cond_4

    .line 691
    const/4 v0, 0x0

    return-object v0

    .line 693
    :cond_4
    const-string v0, "\'"

    const-string v1, "\'\'"

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static escapeXml(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 614
    if-nez p0, :cond_4

    .line 615
    const/4 v0, 0x0

    return-object v0

    .line 617
    :cond_4
    sget-object v0, Lorg/apache/commons/lang/Entities;->XML:Lorg/apache/commons/lang/Entities;

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang/Entities;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static escapeXml(Ljava/io/Writer;Ljava/lang/String;)V
    .registers 4
    .param p0, "writer"    # Ljava/io/Writer;
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 587
    if-eqz p0, :cond_b

    .line 590
    if-nez p1, :cond_5

    .line 591
    return-void

    .line 593
    :cond_5
    sget-object v0, Lorg/apache/commons/lang/Entities;->XML:Lorg/apache/commons/lang/Entities;

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/lang/Entities;->escape(Ljava/io/Writer;Ljava/lang/String;)V

    .line 594
    return-void

    .line 588
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Writer must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static hex(C)Ljava/lang/String;
    .registers 2
    .param p0, "ch"    # C

    .line 261
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static unescapeCsv(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;

    .line 799
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 800
    return-object v0

    .line 803
    :cond_4
    :try_start_4
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 804
    .local v1, "writer":Ljava/io/StringWriter;
    invoke-static {v1, p0}, Lorg/apache/commons/lang/StringEscapeUtils;->unescapeCsv(Ljava/io/Writer;Ljava/lang/String;)V

    .line 805
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_10} :catch_11

    return-object v2

    .line 806
    .end local v1    # "writer":Ljava/io/StringWriter;
    :catch_11
    move-exception v1

    .line 808
    .local v1, "ioe":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 809
    return-object v0
.end method

.method public static unescapeCsv(Ljava/io/Writer;Ljava/lang/String;)V
    .registers 5
    .param p0, "out"    # Ljava/io/Writer;
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 837
    if-nez p1, :cond_3

    .line 838
    return-void

    .line 840
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_e

    .line 841
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 842
    return-void

    .line 844
    :cond_e
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x22

    if-ne v0, v1, :cond_52

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v1, :cond_24

    goto :goto_52

    .line 850
    :cond_24
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 852
    .local v0, "quoteless":Ljava/lang/String;
    sget-object v1, Lorg/apache/commons/lang/StringEscapeUtils;->CSV_SEARCH_CHARS:[C

    invoke-static {v0, v1}, Lorg/apache/commons/lang/StringUtils;->containsAny(Ljava/lang/String;[C)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 854
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v2, Lorg/apache/commons/lang/StringEscapeUtils;->CSV_QUOTE_STR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v2, Lorg/apache/commons/lang/StringEscapeUtils;->CSV_QUOTE_STR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/lang/StringEscapeUtils;->CSV_QUOTE_STR:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lorg/apache/commons/lang/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 857
    :cond_4e
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 858
    return-void

    .line 845
    .end local v0    # "quoteless":Ljava/lang/String;
    :cond_52
    :goto_52
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 846
    return-void
.end method

.method public static unescapeHtml(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "str"    # Ljava/lang/String;

    .line 523
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 524
    return-object v0

    .line 527
    :cond_4
    :try_start_4
    new-instance v1, Ljava/io/StringWriter;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_a} :catch_1e

    int-to-double v2, v2

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    double-to-int v2, v2

    :try_start_13
    invoke-direct {v1, v2}, Ljava/io/StringWriter;-><init>(I)V

    .line 528
    .local v1, "writer":Ljava/io/StringWriter;
    invoke-static {v1, p0}, Lorg/apache/commons/lang/StringEscapeUtils;->unescapeHtml(Ljava/io/Writer;Ljava/lang/String;)V

    .line 529
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_1d} :catch_1e

    return-object v2

    .line 530
    .end local v1    # "writer":Ljava/io/StringWriter;
    :catch_1e
    move-exception v1

    .line 533
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 534
    return-object v0
.end method

.method public static unescapeHtml(Ljava/io/Writer;Ljava/lang/String;)V
    .registers 4
    .param p0, "writer"    # Ljava/io/Writer;
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 557
    if-eqz p0, :cond_b

    .line 560
    if-nez p1, :cond_5

    .line 561
    return-void

    .line 563
    :cond_5
    sget-object v0, Lorg/apache/commons/lang/Entities;->HTML40:Lorg/apache/commons/lang/Entities;

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/lang/Entities;->unescape(Ljava/io/Writer;Ljava/lang/String;)V

    .line 564
    return-void

    .line 558
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Writer must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static unescapeJava(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;

    .line 274
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 275
    return-object v0

    .line 278
    :cond_4
    :try_start_4
    new-instance v1, Ljava/io/StringWriter;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/io/StringWriter;-><init>(I)V

    .line 279
    .local v1, "writer":Ljava/io/StringWriter;
    invoke-static {v1, p0}, Lorg/apache/commons/lang/StringEscapeUtils;->unescapeJava(Ljava/io/Writer;Ljava/lang/String;)V

    .line 280
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_14} :catch_15

    return-object v2

    .line 281
    .end local v1    # "writer":Ljava/io/StringWriter;
    :catch_15
    move-exception v1

    .line 283
    .local v1, "ioe":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 284
    return-object v0
.end method

.method public static unescapeJava(Ljava/io/Writer;Ljava/lang/String;)V
    .registers 12
    .param p0, "out"    # Ljava/io/Writer;
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 304
    if-eqz p0, :cond_b5

    .line 307
    if-nez p1, :cond_5

    .line 308
    return-void

    .line 310
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 311
    .local v0, "sz":I
    new-instance v1, Ljava/lang/StringBuffer;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 312
    .local v1, "unicode":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .line 313
    .local v3, "hadSlash":Z
    const/4 v4, 0x0

    .line 314
    .local v4, "inUnicode":Z
    const/4 v5, 0x0

    move v6, v3

    const/4 v3, 0x0

    .local v3, "i":I
    .local v6, "hadSlash":Z
    :goto_14
    const/16 v7, 0x5c

    if-ge v3, v0, :cond_af

    .line 315
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 316
    .local v8, "ch":C
    if-eqz v4, :cond_54

    .line 319
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 320
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-ne v7, v2, :cond_ab

    .line 324
    :try_start_27
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x10

    invoke-static {v7, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    .line 325
    .local v7, "value":I
    int-to-char v9, v7

    invoke-virtual {p0, v9}, Ljava/io/Writer;->write(I)V

    .line 326
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->setLength(I)V
    :try_end_38
    .catch Ljava/lang/NumberFormatException; {:try_start_27 .. :try_end_38} :catch_3c

    .line 327
    const/4 v4, 0x0

    .line 328
    const/4 v6, 0x0

    .line 331
    .end local v7    # "value":I
    goto/16 :goto_ab

    .line 329
    :catch_3c
    move-exception v2

    .line 330
    .local v2, "nfe":Ljava/lang/NumberFormatException;
    new-instance v5, Lorg/apache/commons/lang/exception/NestableRuntimeException;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "Unable to parse unicode value: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7, v2}, Lorg/apache/commons/lang/exception/NestableRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 335
    .end local v2    # "nfe":Ljava/lang/NumberFormatException;
    :cond_54
    if-eqz v6, :cond_a4

    .line 337
    const/4 v6, 0x0

    .line 338
    const/16 v9, 0x22

    if-eq v8, v9, :cond_a0

    const/16 v9, 0x27

    if-eq v8, v9, :cond_9c

    if-eq v8, v7, :cond_98

    const/16 v7, 0x62

    if-eq v8, v7, :cond_92

    const/16 v7, 0x66

    if-eq v8, v7, :cond_8c

    const/16 v7, 0x6e

    if-eq v8, v7, :cond_86

    const/16 v7, 0x72

    if-eq v8, v7, :cond_80

    packed-switch v8, :pswitch_data_be

    .line 370
    invoke-virtual {p0, v8}, Ljava/io/Writer;->write(I)V

    .line 371
    goto :goto_ab

    .line 366
    :pswitch_78
    const/4 v4, 0x1

    .line 367
    goto :goto_ab

    .line 355
    :pswitch_7a
    const/16 v7, 0x9

    invoke-virtual {p0, v7}, Ljava/io/Writer;->write(I)V

    .line 356
    goto :goto_ab

    .line 349
    :cond_80
    const/16 v7, 0xd

    invoke-virtual {p0, v7}, Ljava/io/Writer;->write(I)V

    .line 350
    goto :goto_ab

    .line 358
    :cond_86
    const/16 v7, 0xa

    invoke-virtual {p0, v7}, Ljava/io/Writer;->write(I)V

    .line 359
    goto :goto_ab

    .line 352
    :cond_8c
    const/16 v7, 0xc

    invoke-virtual {p0, v7}, Ljava/io/Writer;->write(I)V

    .line 353
    goto :goto_ab

    .line 361
    :cond_92
    const/16 v7, 0x8

    invoke-virtual {p0, v7}, Ljava/io/Writer;->write(I)V

    .line 362
    goto :goto_ab

    .line 340
    :cond_98
    invoke-virtual {p0, v7}, Ljava/io/Writer;->write(I)V

    .line 341
    goto :goto_ab

    .line 343
    :cond_9c
    invoke-virtual {p0, v9}, Ljava/io/Writer;->write(I)V

    .line 344
    goto :goto_ab

    .line 346
    :cond_a0
    invoke-virtual {p0, v9}, Ljava/io/Writer;->write(I)V

    .line 347
    goto :goto_ab

    .line 374
    :cond_a4
    if-ne v8, v7, :cond_a8

    .line 375
    const/4 v6, 0x1

    .line 376
    goto :goto_ab

    .line 378
    :cond_a8
    invoke-virtual {p0, v8}, Ljava/io/Writer;->write(I)V

    .line 314
    .end local v8    # "ch":C
    :cond_ab
    :goto_ab
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_14

    .line 380
    .end local v3    # "i":I
    :cond_af
    if-eqz v6, :cond_b4

    .line 383
    invoke-virtual {p0, v7}, Ljava/io/Writer;->write(I)V

    .line 385
    :cond_b4
    return-void

    .line 305
    .end local v0    # "sz":I
    .end local v1    # "unicode":Ljava/lang/StringBuffer;
    .end local v4    # "inUnicode":Z
    .end local v6    # "hadSlash":Z
    :cond_b5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Writer must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_be
    .packed-switch 0x74
        :pswitch_7a
        :pswitch_78
    .end packed-switch
.end method

.method public static unescapeJavaScript(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 399
    invoke-static {p0}, Lorg/apache/commons/lang/StringEscapeUtils;->unescapeJava(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static unescapeJavaScript(Ljava/io/Writer;Ljava/lang/String;)V
    .registers 2
    .param p0, "out"    # Ljava/io/Writer;
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 419
    invoke-static {p0, p1}, Lorg/apache/commons/lang/StringEscapeUtils;->unescapeJava(Ljava/io/Writer;Ljava/lang/String;)V

    .line 420
    return-void
.end method

.method public static unescapeXml(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 664
    if-nez p0, :cond_4

    .line 665
    const/4 v0, 0x0

    return-object v0

    .line 667
    :cond_4
    sget-object v0, Lorg/apache/commons/lang/Entities;->XML:Lorg/apache/commons/lang/Entities;

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang/Entities;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static unescapeXml(Ljava/io/Writer;Ljava/lang/String;)V
    .registers 4
    .param p0, "writer"    # Ljava/io/Writer;
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 639
    if-eqz p0, :cond_b

    .line 642
    if-nez p1, :cond_5

    .line 643
    return-void

    .line 645
    :cond_5
    sget-object v0, Lorg/apache/commons/lang/Entities;->XML:Lorg/apache/commons/lang/Entities;

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/lang/Entities;->unescape(Ljava/io/Writer;Ljava/lang/String;)V

    .line 646
    return-void

    .line 640
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Writer must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
