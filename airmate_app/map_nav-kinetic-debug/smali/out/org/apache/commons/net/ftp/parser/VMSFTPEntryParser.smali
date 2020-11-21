.class public Lorg/apache/commons/net/ftp/parser/VMSFTPEntryParser;
.super Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;
.source "VMSFTPEntryParser.java"


# static fields
.field private static final DEFAULT_DATE_FORMAT:Ljava/lang/String; = "d-MMM-yyyy HH:mm:ss"

.field private static final REGEX:Ljava/lang/String; = "(.*;[0-9]+)\\s*(\\d+)/\\d+\\s*(\\S+)\\s+(\\S+)\\s+\\[(([0-9$A-Za-z_]+)|([0-9$A-Za-z_]+),([0-9$a-zA-Z_]+))\\]?\\s*\\([a-zA-Z]*,([a-zA-Z]*),([a-zA-Z]*),([a-zA-Z]*)\\)"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/parser/VMSFTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V
    .registers 3
    .param p1, "config"    # Lorg/apache/commons/net/ftp/FTPClientConfig;

    .line 97
    const-string v0, "(.*;[0-9]+)\\s*(\\d+)/\\d+\\s*(\\S+)\\s+(\\S+)\\s+\\[(([0-9$A-Za-z_]+)|([0-9$A-Za-z_]+),([0-9$a-zA-Z_]+))\\]?\\s*\\([a-zA-Z]*,([a-zA-Z]*),([a-zA-Z]*),([a-zA-Z]*)\\)"

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/parser/VMSFTPEntryParser;->configure(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    .line 99
    return-void
.end method


# virtual methods
.method protected getDefaultConfiguration()Lorg/apache/commons/net/ftp/FTPClientConfig;
    .registers 9

    .line 273
    new-instance v7, Lorg/apache/commons/net/ftp/FTPClientConfig;

    const-string v1, "VMS"

    const-string v2, "d-MMM-yyyy HH:mm:ss"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/net/ftp/FTPClientConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v7
.end method

.method protected isVersioning()Z
    .registers 2

    .line 262
    const/4 v0, 0x0

    return v0
.end method

.method public parseFTPEntry(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;
    .registers 22
    .param p1, "entry"    # Ljava/lang/String;

    .line 138
    move-object/from16 v1, p0

    const-wide/16 v2, 0x200

    .line 140
    .local v2, "longBlock":J
    invoke-virtual/range {p0 .. p1}, Lorg/apache/commons/net/ftp/parser/VMSFTPEntryParser;->matches(Ljava/lang/String;)Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_101

    .line 142
    new-instance v0, Lorg/apache/commons/net/ftp/FTPFile;

    invoke-direct {v0}, Lorg/apache/commons/net/ftp/FTPFile;-><init>()V

    move-object v5, v0

    .line 143
    .local v5, "f":Lorg/apache/commons/net/ftp/FTPFile;
    move-object/from16 v6, p1

    invoke-virtual {v5, v6}, Lorg/apache/commons/net/ftp/FTPFile;->setRawListing(Ljava/lang/String;)V

    .line 144
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Lorg/apache/commons/net/ftp/parser/VMSFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 145
    .local v8, "name":Ljava/lang/String;
    const/4 v9, 0x2

    invoke-virtual {v1, v9}, Lorg/apache/commons/net/ftp/parser/VMSFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v10

    .line 146
    .local v10, "size":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x3

    invoke-virtual {v1, v11}, Lorg/apache/commons/net/ftp/parser/VMSFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x4

    invoke-virtual {v1, v12}, Lorg/apache/commons/net/ftp/parser/VMSFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 147
    .local v12, "datestr":Ljava/lang/String;
    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Lorg/apache/commons/net/ftp/parser/VMSFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v13

    .line 148
    .local v13, "owner":Ljava/lang/String;
    new-array v14, v11, [Ljava/lang/String;

    .line 149
    .local v14, "permissions":[Ljava/lang/String;
    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Lorg/apache/commons/net/ftp/parser/VMSFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v0

    const/4 v15, 0x0

    aput-object v0, v14, v15

    .line 150
    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Lorg/apache/commons/net/ftp/parser/VMSFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v14, v7

    .line 151
    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Lorg/apache/commons/net/ftp/parser/VMSFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v14, v9

    .line 154
    :try_start_5e
    invoke-super {v1, v12}, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;->parseTimestamp(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/apache/commons/net/ftp/FTPFile;->setTimestamp(Ljava/util/Calendar;)V
    :try_end_65
    .catch Ljava/text/ParseException; {:try_start_5e .. :try_end_65} :catch_66

    .line 159
    goto :goto_68

    .line 156
    :catch_66
    move-exception v0

    move-object v4, v0

    .line 164
    .local v4, "grp":Ljava/lang/String;
    :goto_68
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v9, ","

    invoke-direct {v0, v13, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .local v0, "t":Ljava/util/StringTokenizer;
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v9

    packed-switch v9, :pswitch_data_104

    .line 175
    const/4 v4, 0x0

    .line 176
    const/4 v9, 0x0

    goto :goto_88

    .line 171
    :pswitch_79
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 172
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    .line 173
    .local v9, "user":Ljava/lang/String;
    goto :goto_88

    .line 167
    .end local v4    # "grp":Ljava/lang/String;
    .end local v9    # "user":Ljava/lang/String;
    :pswitch_82
    const/4 v4, 0x0

    .line 168
    .restart local v4    # "grp":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    .line 169
    .restart local v9    # "user":Ljava/lang/String;
    nop

    .line 179
    :goto_88
    const-string v11, ".DIR"

    invoke-virtual {v8, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    const/4 v15, -0x1

    if-eq v11, v15, :cond_96

    .line 181
    invoke-virtual {v5, v7}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    .line 189
    const/4 v11, 0x0

    goto :goto_9a

    .line 185
    :cond_96
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    .line 189
    :goto_9a
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/ftp/parser/VMSFTPEntryParser;->isVersioning()Z

    move-result v15

    if-eqz v15, :cond_a4

    .line 191
    invoke-virtual {v5, v8}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    goto :goto_b1

    .line 195
    :cond_a4
    const-string v15, ";"

    invoke-virtual {v8, v15}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v8, v11, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 196
    invoke-virtual {v5, v8}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    .line 200
    :goto_b1
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    move-object/from16 v18, v8

    .end local v8    # "name":Ljava/lang/String;
    .local v18, "name":Ljava/lang/String;
    mul-long v7, v16, v2

    .line 201
    .local v7, "sizeInBytes":J
    invoke-virtual {v5, v7, v8}, Lorg/apache/commons/net/ftp/FTPFile;->setSize(J)V

    .line 203
    invoke-virtual {v5, v4}, Lorg/apache/commons/net/ftp/FTPFile;->setGroup(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v5, v9}, Lorg/apache/commons/net/ftp/FTPFile;->setUser(Ljava/lang/String;)V

    .line 212
    const/4 v11, 0x0

    .local v11, "access":I
    :goto_c3
    const/4 v15, 0x3

    if-ge v11, v15, :cond_fe

    .line 214
    aget-object v15, v14, v11

    .line 216
    .local v15, "permission":Ljava/lang/String;
    move-object/from16 v19, v0

    .end local v0    # "t":Ljava/util/StringTokenizer;
    .local v19, "t":Ljava/util/StringTokenizer;
    const/16 v0, 0x52

    invoke-virtual {v15, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_d4

    const/4 v0, 0x1

    goto :goto_d5

    :cond_d4
    const/4 v0, 0x0

    :goto_d5
    const/4 v1, 0x0

    invoke-virtual {v5, v11, v1, v0}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    .line 217
    const/16 v0, 0x57

    invoke-virtual {v15, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_e3

    const/4 v0, 0x1

    goto :goto_e4

    :cond_e3
    const/4 v0, 0x0

    :goto_e4
    const/4 v1, 0x1

    invoke-virtual {v5, v11, v1, v0}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    .line 218
    const/16 v0, 0x45

    invoke-virtual {v15, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_f2

    const/4 v0, 0x1

    goto :goto_f3

    :cond_f2
    const/4 v0, 0x0

    :goto_f3
    const/4 v1, 0x2

    invoke-virtual {v5, v11, v1, v0}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    .line 212
    .end local v15    # "permission":Ljava/lang/String;
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    goto :goto_c3

    .line 221
    .end local v11    # "access":I
    .end local v19    # "t":Ljava/util/StringTokenizer;
    .restart local v0    # "t":Ljava/util/StringTokenizer;
    :cond_fe
    move-object/from16 v19, v0

    .end local v0    # "t":Ljava/util/StringTokenizer;
    .restart local v19    # "t":Ljava/util/StringTokenizer;
    return-object v5

    .line 223
    .end local v4    # "grp":Ljava/lang/String;
    .end local v5    # "f":Lorg/apache/commons/net/ftp/FTPFile;
    .end local v7    # "sizeInBytes":J
    .end local v9    # "user":Ljava/lang/String;
    .end local v10    # "size":Ljava/lang/String;
    .end local v12    # "datestr":Ljava/lang/String;
    .end local v13    # "owner":Ljava/lang/String;
    .end local v14    # "permissions":[Ljava/lang/String;
    .end local v18    # "name":Ljava/lang/String;
    .end local v19    # "t":Ljava/util/StringTokenizer;
    :cond_101
    move-object/from16 v6, p1

    return-object v4

    :pswitch_data_104
    .packed-switch 0x1
        :pswitch_82
        :pswitch_79
    .end packed-switch
.end method

.method public parseFileList(Ljava/io/InputStream;)[Lorg/apache/commons/net/ftp/FTPFile;
    .registers 4
    .param p1, "listStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    new-instance v0, Lorg/apache/commons/net/ftp/FTPListParseEngine;

    invoke-direct {v0, p0}, Lorg/apache/commons/net/ftp/FTPListParseEngine;-><init>(Lorg/apache/commons/net/ftp/FTPFileEntryParser;)V

    .line 119
    .local v0, "engine":Lorg/apache/commons/net/ftp/FTPListParseEngine;
    invoke-virtual {v0, p1}, Lorg/apache/commons/net/ftp/FTPListParseEngine;->readServerList(Ljava/io/InputStream;)V

    .line 120
    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPListParseEngine;->getFiles()[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v1

    return-object v1
.end method

.method public readNextEntry(Ljava/io/BufferedReader;)Ljava/lang/String;
    .registers 6
    .param p1, "reader"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 242
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, "line":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 244
    .local v1, "entry":Ljava/lang/StringBuffer;
    :goto_9
    if-eqz v0, :cond_36

    .line 246
    const-string v2, "Directory"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_31

    const-string v2, "Total"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    goto :goto_31

    .line 251
    :cond_1c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 252
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 254
    goto :goto_36

    .line 256
    :cond_2c
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 247
    :cond_31
    :goto_31
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 248
    goto :goto_9

    .line 258
    :cond_36
    :goto_36
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-nez v2, :cond_3e

    const/4 v2, 0x0

    goto :goto_42

    :cond_3e
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_42
    return-object v2
.end method
