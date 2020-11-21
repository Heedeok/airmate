.class public Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;
.super Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;
.source "UnixFTPEntryParser.java"


# static fields
.field static final DEFAULT_DATE_FORMAT:Ljava/lang/String; = "MMM d yyyy"

.field static final DEFAULT_RECENT_DATE_FORMAT:Ljava/lang/String; = "MMM d HH:mm"

.field public static final NUMERIC_DATE_CONFIG:Lorg/apache/commons/net/ftp/FTPClientConfig;

.field static final NUMERIC_DATE_FORMAT:Ljava/lang/String; = "yyyy-MM-dd HH:mm"

.field private static final REGEX:Ljava/lang/String; = "([bcdelfmpSs-])(((r|-)(w|-)([xsStTL-]))((r|-)(w|-)([xsStTL-]))((r|-)(w|-)([xsStTL-])))\\+?\\s+(\\d+)\\s+(?:(\\S+(?:\\s\\S+)*?)\\s+)?(?:(\\S+(?:\\s\\S+)*)\\s+)?(\\d+(?:,\\s*\\d+)?)\\s+((?:\\d+[-/]\\d+[-/]\\d+)|(?:\\S+\\s+\\S+))\\s+(\\d+(?::\\d+)?)\\s+(\\S*)(\\s*.*)"


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 58
    new-instance v7, Lorg/apache/commons/net/ftp/FTPClientConfig;

    const-string v1, "UNIX"

    const-string v2, "yyyy-MM-dd HH:mm"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/net/ftp/FTPClientConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;->NUMERIC_DATE_CONFIG:Lorg/apache/commons/net/ftp/FTPClientConfig;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    .line 117
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V
    .registers 3
    .param p1, "config"    # Lorg/apache/commons/net/ftp/FTPClientConfig;

    .line 133
    const-string v0, "([bcdelfmpSs-])(((r|-)(w|-)([xsStTL-]))((r|-)(w|-)([xsStTL-]))((r|-)(w|-)([xsStTL-])))\\+?\\s+(\\d+)\\s+(?:(\\S+(?:\\s\\S+)*?)\\s+)?(?:(\\S+(?:\\s\\S+)*)\\s+)?(\\d+(?:,\\s*\\d+)?)\\s+((?:\\d+[-/]\\d+[-/]\\d+)|(?:\\S+\\s+\\S+))\\s+(\\d+(?::\\d+)?)\\s+(\\S*)(\\s*.*)"

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;-><init>(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;->configure(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    .line 135
    return-void
.end method


# virtual methods
.method protected getDefaultConfiguration()Lorg/apache/commons/net/ftp/FTPClientConfig;
    .registers 9

    .line 288
    new-instance v7, Lorg/apache/commons/net/ftp/FTPClientConfig;

    const-string v1, "UNIX"

    const-string v2, "MMM d yyyy"

    const-string v3, "MMM d HH:mm"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/net/ftp/FTPClientConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v7
.end method

.method public parseFTPEntry(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;
    .registers 19
    .param p1, "entry"    # Ljava/lang/String;

    .line 149
    move-object/from16 v1, p0

    new-instance v0, Lorg/apache/commons/net/ftp/FTPFile;

    invoke-direct {v0}, Lorg/apache/commons/net/ftp/FTPFile;-><init>()V

    move-object v2, v0

    .line 150
    .local v2, "file":Lorg/apache/commons/net/ftp/FTPFile;
    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Lorg/apache/commons/net/ftp/FTPFile;->setRawListing(Ljava/lang/String;)V

    .line 152
    const/4 v4, 0x0

    .line 154
    .local v4, "isDevice":Z
    invoke-virtual/range {p0 .. p1}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_134

    .line 156
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 157
    .local v6, "typeStr":Ljava/lang/String;
    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 158
    .local v7, "hardLinkCount":Ljava/lang/String;
    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 159
    .local v8, "usr":Ljava/lang/String;
    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v9

    .line 160
    .local v9, "grp":Ljava/lang/String;
    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v10

    .line 161
    .local v10, "filesize":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v11, 0x13

    invoke-virtual {v1, v11}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v11, 0x14

    invoke-virtual {v1, v11}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 162
    .local v11, "datestr":Ljava/lang/String;
    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v12

    .line 163
    .local v12, "name":Ljava/lang/String;
    const/16 v0, 0x16

    invoke-virtual {v1, v0}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    .line 167
    .local v13, "endtoken":Ljava/lang/String;
    :try_start_5e
    invoke-super {v1, v11}, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;->parseTimestamp(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/apache/commons/net/ftp/FTPFile;->setTimestamp(Ljava/util/Calendar;)V
    :try_end_65
    .catch Ljava/text/ParseException; {:try_start_5e .. :try_end_65} :catch_66

    .line 172
    goto :goto_67

    .line 169
    :catch_66
    move-exception v0

    .line 176
    :goto_67
    const/4 v14, 0x0

    invoke-virtual {v6, v14}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v15, 0x2d

    if-eq v0, v15, :cond_84

    const/16 v15, 0x6c

    if-eq v0, v15, :cond_82

    packed-switch v0, :pswitch_data_136

    .line 196
    const/4 v0, 0x3

    .line 199
    .local v4, "type":I
    .local v15, "isDevice":Z
    :goto_78
    move v15, v4

    move v4, v0

    goto :goto_86

    .line 182
    .end local v15    # "isDevice":Z
    .local v4, "isDevice":Z
    :pswitch_7b
    const/4 v0, 0x2

    .line 183
    .local v0, "type":I
    goto :goto_78

    .line 179
    .end local v0    # "type":I
    :pswitch_7d
    const/4 v0, 0x1

    .line 180
    .restart local v0    # "type":I
    goto :goto_78

    .line 189
    .end local v0    # "type":I
    :pswitch_7f
    const/4 v0, 0x1

    .line 193
    move v4, v0

    goto :goto_84

    .line 185
    :cond_82
    const/4 v0, 0x2

    .line 186
    .restart local v0    # "type":I
    goto :goto_78

    .line 193
    .end local v0    # "type":I
    :cond_84
    :goto_84
    :pswitch_84
    const/4 v0, 0x0

    .line 194
    .restart local v0    # "type":I
    goto :goto_78

    .line 199
    .end local v0    # "type":I
    .local v4, "type":I
    .restart local v15    # "isDevice":Z
    :goto_86
    invoke-virtual {v2, v4}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    .line 201
    const/4 v0, 0x4

    .line 202
    .local v0, "g":I
    move v14, v0

    const/4 v0, 0x0

    .local v0, "access":I
    .local v14, "g":I
    :goto_8c
    const/4 v5, 0x3

    if-ge v0, v5, :cond_df

    .line 205
    invoke-virtual {v1, v14}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v5

    const-string v3, "-"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x1

    xor-int/2addr v3, v5

    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5, v3}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    .line 207
    add-int/lit8 v3, v14, 0x1

    invoke-virtual {v1, v3}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "-"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x1

    xor-int/2addr v3, v5

    invoke-virtual {v2, v0, v5, v3}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    .line 210
    add-int/lit8 v3, v14, 0x2

    invoke-virtual {v1, v3}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 211
    .local v3, "execPerm":Ljava/lang/String;
    const-string v5, "-"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_cf

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v16

    if-nez v16, :cond_cf

    .line 213
    const/4 v1, 0x2

    const/4 v5, 0x1

    invoke-virtual {v2, v0, v1, v5}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    goto :goto_d5

    .line 217
    :cond_cf
    const/4 v1, 0x2

    const/4 v5, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v0, v1, v5}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    .line 202
    .end local v3    # "execPerm":Ljava/lang/String;
    :goto_d5
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v14, v14, 0x4

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    const/4 v5, 0x1

    goto :goto_8c

    .line 221
    .end local v0    # "access":I
    :cond_df
    if-nez v15, :cond_ea

    .line 225
    :try_start_e1
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lorg/apache/commons/net/ftp/FTPFile;->setHardLinkCount(I)V
    :try_end_e8
    .catch Ljava/lang/NumberFormatException; {:try_start_e1 .. :try_end_e8} :catch_e9

    .line 230
    goto :goto_ea

    .line 227
    :catch_e9
    move-exception v0

    .line 233
    :cond_ea
    :goto_ea
    invoke-virtual {v2, v8}, Lorg/apache/commons/net/ftp/FTPFile;->setUser(Ljava/lang/String;)V

    .line 234
    invoke-virtual {v2, v9}, Lorg/apache/commons/net/ftp/FTPFile;->setGroup(Ljava/lang/String;)V

    .line 238
    :try_start_f0
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lorg/apache/commons/net/ftp/FTPFile;->setSize(J)V
    :try_end_f7
    .catch Ljava/lang/NumberFormatException; {:try_start_f0 .. :try_end_f7} :catch_f8

    .line 243
    goto :goto_f9

    .line 240
    :catch_f8
    move-exception v0

    .line 245
    :goto_f9
    if-nez v13, :cond_ff

    .line 247
    invoke-virtual {v2, v12}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    goto :goto_133

    .line 253
    :cond_ff
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 254
    const/4 v1, 0x2

    if-ne v4, v1, :cond_130

    .line 257
    const-string v0, " -> "

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 259
    .local v0, "end":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_11e

    .line 261
    invoke-virtual {v2, v12}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    goto :goto_12f

    .line 265
    :cond_11e
    const/4 v1, 0x0

    invoke-virtual {v12, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    .line 266
    add-int/lit8 v1, v0, 0x4

    invoke-virtual {v12, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/apache/commons/net/ftp/FTPFile;->setLink(Ljava/lang/String;)V

    .line 269
    .end local v0    # "end":I
    :goto_12f
    goto :goto_133

    .line 272
    :cond_130
    invoke-virtual {v2, v12}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    .line 275
    :goto_133
    return-object v2

    .line 277
    .end local v6    # "typeStr":Ljava/lang/String;
    .end local v7    # "hardLinkCount":Ljava/lang/String;
    .end local v8    # "usr":Ljava/lang/String;
    .end local v9    # "grp":Ljava/lang/String;
    .end local v10    # "filesize":Ljava/lang/String;
    .end local v11    # "datestr":Ljava/lang/String;
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "endtoken":Ljava/lang/String;
    .end local v14    # "g":I
    .end local v15    # "isDevice":Z
    .local v4, "isDevice":Z
    :cond_134
    const/4 v0, 0x0

    return-object v0

    :pswitch_data_136
    .packed-switch 0x62
        :pswitch_7f
        :pswitch_7f
        :pswitch_7d
        :pswitch_7b
        :pswitch_84
    .end packed-switch
.end method
