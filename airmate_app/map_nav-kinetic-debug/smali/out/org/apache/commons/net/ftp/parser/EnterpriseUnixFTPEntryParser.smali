.class public Lorg/apache/commons/net/ftp/parser/EnterpriseUnixFTPEntryParser;
.super Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;
.source "EnterpriseUnixFTPEntryParser.java"


# static fields
.field private static final MONTHS:Ljava/lang/String; = "(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)"

.field private static final REGEX:Ljava/lang/String; = "(([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z]))(\\S*)\\s*(\\S+)\\s*(\\S*)\\s*(\\d*)\\s*(\\d*)\\s*(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)\\s*((?:[012]\\d*)|(?:3[01]))\\s*((\\d\\d\\d\\d)|((?:[01]\\d)|(?:2[0123])):([012345]\\d))\\s(\\S*)(\\s*.*)"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 70
    const-string v0, "(([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z]))(\\S*)\\s*(\\S+)\\s*(\\S*)\\s*(\\d*)\\s*(\\d*)\\s*(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)\\s*((?:[012]\\d*)|(?:3[01]))\\s*((\\d\\d\\d\\d)|((?:[01]\\d)|(?:2[0123])):([012345]\\d))\\s(\\S*)(\\s*.*)"

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;-><init>(Ljava/lang/String;)V

    .line 71
    return-void
.end method


# virtual methods
.method public parseFTPEntry(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;
    .registers 19
    .param p1, "entry"    # Ljava/lang/String;

    .line 86
    move-object/from16 v1, p0

    new-instance v0, Lorg/apache/commons/net/ftp/FTPFile;

    invoke-direct {v0}, Lorg/apache/commons/net/ftp/FTPFile;-><init>()V

    move-object v2, v0

    .line 87
    .local v2, "file":Lorg/apache/commons/net/ftp/FTPFile;
    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Lorg/apache/commons/net/ftp/FTPFile;->setRawListing(Ljava/lang/String;)V

    .line 89
    invoke-virtual/range {p0 .. p1}, Lorg/apache/commons/net/ftp/parser/EnterpriseUnixFTPEntryParser;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c1

    .line 91
    const/16 v4, 0xe

    invoke-virtual {v1, v4}, Lorg/apache/commons/net/ftp/parser/EnterpriseUnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 92
    .local v5, "usr":Ljava/lang/String;
    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Lorg/apache/commons/net/ftp/parser/EnterpriseUnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 93
    .local v6, "grp":Ljava/lang/String;
    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Lorg/apache/commons/net/ftp/parser/EnterpriseUnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 94
    .local v7, "filesize":Ljava/lang/String;
    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Lorg/apache/commons/net/ftp/parser/EnterpriseUnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 95
    .local v8, "mo":Ljava/lang/String;
    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Lorg/apache/commons/net/ftp/parser/EnterpriseUnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v9

    .line 96
    .local v9, "da":Ljava/lang/String;
    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Lorg/apache/commons/net/ftp/parser/EnterpriseUnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v10

    .line 97
    .local v10, "yr":Ljava/lang/String;
    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Lorg/apache/commons/net/ftp/parser/EnterpriseUnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v11

    .line 98
    .local v11, "hr":Ljava/lang/String;
    const/16 v0, 0x16

    invoke-virtual {v1, v0}, Lorg/apache/commons/net/ftp/parser/EnterpriseUnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v12

    .line 99
    .local v12, "min":Ljava/lang/String;
    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Lorg/apache/commons/net/ftp/parser/EnterpriseUnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v13

    .line 101
    .local v13, "name":Ljava/lang/String;
    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    .line 102
    invoke-virtual {v2, v5}, Lorg/apache/commons/net/ftp/FTPFile;->setUser(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v2, v6}, Lorg/apache/commons/net/ftp/FTPFile;->setGroup(Ljava/lang/String;)V

    .line 106
    move-object/from16 v16, v5

    .end local v5    # "usr":Ljava/lang/String;
    .local v16, "usr":Ljava/lang/String;
    :try_start_55
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/apache/commons/net/ftp/FTPFile;->setSize(J)V
    :try_end_5c
    .catch Ljava/lang/NumberFormatException; {:try_start_55 .. :try_end_5c} :catch_5d

    .line 111
    goto :goto_5e

    .line 108
    :catch_5d
    move-exception v0

    .line 113
    :goto_5e
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 114
    .local v4, "cal":Ljava/util/Calendar;
    const/16 v5, 0xe

    invoke-virtual {v4, v5, v14}, Ljava/util/Calendar;->set(II)V

    .line 115
    const/16 v0, 0xd

    invoke-virtual {v4, v0, v14}, Ljava/util/Calendar;->set(II)V

    .line 117
    const/16 v0, 0xc

    invoke-virtual {v4, v0, v14}, Ljava/util/Calendar;->set(II)V

    .line 119
    const/16 v5, 0xb

    invoke-virtual {v4, v5, v14}, Ljava/util/Calendar;->set(II)V

    .line 124
    :try_start_76
    const-string v14, "(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)"

    invoke-virtual {v14, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    .line 125
    .local v14, "pos":I
    div-int/lit8 v15, v14, 0x4

    .line 126
    .local v15, "month":I
    const/4 v5, 0x1

    if-eqz v10, :cond_89

    .line 129
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v5, v0}, Ljava/util/Calendar;->set(II)V

    goto :goto_ac

    .line 135
    :cond_89
    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 139
    .local v0, "year":I
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ge v1, v15, :cond_96

    .line 141
    add-int/lit8 v0, v0, -0x1

    .line 143
    :cond_96
    const/4 v1, 0x1

    invoke-virtual {v4, v1, v0}, Ljava/util/Calendar;->set(II)V

    .line 145
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v5, 0xb

    invoke-virtual {v4, v5, v1}, Ljava/util/Calendar;->set(II)V

    .line 147
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v5, 0xc

    invoke-virtual {v4, v5, v1}, Ljava/util/Calendar;->set(II)V

    .line 150
    .end local v0    # "year":I
    :goto_ac
    const/4 v0, 0x2

    invoke-virtual {v4, v0, v15}, Ljava/util/Calendar;->set(II)V

    .line 152
    const/4 v0, 0x5

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 154
    invoke-virtual {v2, v4}, Lorg/apache/commons/net/ftp/FTPFile;->setTimestamp(Ljava/util/Calendar;)V
    :try_end_bb
    .catch Ljava/lang/NumberFormatException; {:try_start_76 .. :try_end_bb} :catch_bc

    .line 159
    .end local v14    # "pos":I
    .end local v15    # "month":I
    goto :goto_bd

    .line 156
    :catch_bc
    move-exception v0

    .line 160
    :goto_bd
    invoke-virtual {v2, v13}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    .line 162
    return-object v2

    .line 164
    .end local v4    # "cal":Ljava/util/Calendar;
    .end local v6    # "grp":Ljava/lang/String;
    .end local v7    # "filesize":Ljava/lang/String;
    .end local v8    # "mo":Ljava/lang/String;
    .end local v9    # "da":Ljava/lang/String;
    .end local v10    # "yr":Ljava/lang/String;
    .end local v11    # "hr":Ljava/lang/String;
    .end local v12    # "min":Ljava/lang/String;
    .end local v13    # "name":Ljava/lang/String;
    .end local v16    # "usr":Ljava/lang/String;
    :cond_c1
    const/4 v0, 0x0

    return-object v0
.end method
