.class public Lorg/apache/commons/net/ftp/parser/DefaultFTPFileEntryParserFactory;
.super Ljava/lang/Object;
.source "DefaultFTPFileEntryParserFactory.java"

# interfaces
.implements Lorg/apache/commons/net/ftp/parser/FTPFileEntryParserFactory;


# instance fields
.field private config:Lorg/apache/commons/net/ftp/FTPClientConfig;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/parser/DefaultFTPFileEntryParserFactory;->config:Lorg/apache/commons/net/ftp/FTPClientConfig;

    return-void
.end method


# virtual methods
.method public createFileEntryParser(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    .registers 9
    .param p1, "key"    # Ljava/lang/String;

    .line 81
    if-eqz p1, :cond_f8

    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, "parserClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 88
    .local v1, "parser":Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    :try_start_4
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    move-object v0, v2

    .line 89
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    :try_end_f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_f} :catch_45
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_4 .. :try_end_f} :catch_3c
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_f} :catch_1b
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_f} :catch_12

    move-object v1, v2

    .line 153
    :goto_10
    goto/16 :goto_e2

    .line 150
    :catch_12
    move-exception v2

    .line 152
    .local v2, "e":Ljava/lang/Throwable;
    new-instance v3, Lorg/apache/commons/net/ftp/parser/ParserInitializationException;

    const-string v4, "Error initializing parser"

    invoke-direct {v3, v4, v2}, Lorg/apache/commons/net/ftp/parser/ParserInitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 144
    .end local v2    # "e":Ljava/lang/Throwable;
    :catch_1b
    move-exception v2

    .line 146
    .local v2, "e":Ljava/lang/ClassCastException;
    new-instance v3, Lorg/apache/commons/net/ftp/parser/ParserInitializationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " does not implement the interface "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "org.apache.commons.net.ftp.FTPFileEntryParser."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/apache/commons/net/ftp/parser/ParserInitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 140
    .end local v2    # "e":Ljava/lang/ClassCastException;
    :catch_3c
    move-exception v2

    .line 142
    .local v2, "e":Ljava/lang/NoClassDefFoundError;
    new-instance v3, Lorg/apache/commons/net/ftp/parser/ParserInitializationException;

    const-string v4, "Error initializing parser"

    invoke-direct {v3, v4, v2}, Lorg/apache/commons/net/ftp/parser/ParserInitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 91
    .end local v2    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_45
    move-exception v2

    .line 95
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    const/4 v3, 0x0

    .line 96
    .local v3, "ukey":Ljava/lang/String;
    if-eqz p1, :cond_54

    .line 98
    :try_start_49
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    goto :goto_54

    .line 135
    .end local v3    # "ukey":Ljava/lang/String;
    :catch_51
    move-exception v3

    goto/16 :goto_ef

    .line 100
    .restart local v3    # "ukey":Ljava/lang/String;
    :cond_54
    :goto_54
    const-string v4, "UNIX"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_db

    const-string v4, "TYPE: L8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_66

    goto/16 :goto_db

    .line 105
    :cond_66
    const-string v4, "VMS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_75

    .line 107
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/parser/DefaultFTPFileEntryParserFactory;->createVMSVersioningFTPEntryParser()Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    move-result-object v4

    move-object v1, v4

    goto/16 :goto_e0

    .line 109
    :cond_75
    const-string v4, "WINDOWS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_83

    .line 111
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/parser/DefaultFTPFileEntryParserFactory;->createNTFTPEntryParser()Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    move-result-object v4

    move-object v1, v4

    goto :goto_e0

    .line 113
    :cond_83
    const-string v4, "OS/2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_91

    .line 115
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/parser/DefaultFTPFileEntryParserFactory;->createOS2FTPEntryParser()Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    move-result-object v4

    move-object v1, v4

    goto :goto_e0

    .line 117
    :cond_91
    const-string v4, "OS/400"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_d5

    const-string v4, "AS/400"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_a2

    goto :goto_d5

    .line 122
    :cond_a2
    const-string v4, "MVS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_b0

    .line 124
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/parser/DefaultFTPFileEntryParserFactory;->createMVSEntryParser()Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    move-result-object v4

    move-object v1, v4

    goto :goto_e0

    .line 126
    :cond_b0
    const-string v4, "NETWARE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_be

    .line 128
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/parser/DefaultFTPFileEntryParserFactory;->createNetwareFTPEntryParser()Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    move-result-object v4

    move-object v1, v4

    goto :goto_e0

    .line 132
    :cond_be
    new-instance v4, Lorg/apache/commons/net/ftp/parser/ParserInitializationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown parser type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/commons/net/ftp/parser/ParserInitializationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 120
    :cond_d5
    :goto_d5
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/parser/DefaultFTPFileEntryParserFactory;->createOS400FTPEntryParser()Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    move-result-object v4

    move-object v1, v4

    goto :goto_e0

    .line 103
    :cond_db
    :goto_db
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/parser/DefaultFTPFileEntryParserFactory;->createUnixFTPEntryParser()Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    move-result-object v4
    :try_end_df
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_49 .. :try_end_df} :catch_51

    move-object v1, v4

    .line 137
    .end local v3    # "ukey":Ljava/lang/String;
    :goto_e0
    goto/16 :goto_10

    .line 155
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :goto_e2
    instance-of v2, v1, Lorg/apache/commons/net/ftp/Configurable;

    if-eqz v2, :cond_ee

    .line 156
    move-object v2, v1

    check-cast v2, Lorg/apache/commons/net/ftp/Configurable;

    iget-object v3, p0, Lorg/apache/commons/net/ftp/parser/DefaultFTPFileEntryParserFactory;->config:Lorg/apache/commons/net/ftp/FTPClientConfig;

    invoke-interface {v2, v3}, Lorg/apache/commons/net/ftp/Configurable;->configure(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    .line 158
    :cond_ee
    return-object v1

    .line 135
    .restart local v2    # "e":Ljava/lang/ClassNotFoundException;
    :goto_ef
    nop

    .line 136
    .local v3, "nf":Ljava/lang/NoClassDefFoundError;
    new-instance v4, Lorg/apache/commons/net/ftp/parser/ParserInitializationException;

    const-string v5, "Error initializing parser"

    invoke-direct {v4, v5, v3}, Lorg/apache/commons/net/ftp/parser/ParserInitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 82
    .end local v0    # "parserClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "parser":Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .end local v3    # "nf":Ljava/lang/NoClassDefFoundError;
    :cond_f8
    new-instance v0, Lorg/apache/commons/net/ftp/parser/ParserInitializationException;

    const-string v1, "Parser key cannot be null"

    invoke-direct {v0, v1}, Lorg/apache/commons/net/ftp/parser/ParserInitializationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createFileEntryParser(Lorg/apache/commons/net/ftp/FTPClientConfig;)Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    .registers 4
    .param p1, "config"    # Lorg/apache/commons/net/ftp/FTPClientConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/net/ftp/parser/ParserInitializationException;
        }
    .end annotation

    .line 184
    iput-object p1, p0, Lorg/apache/commons/net/ftp/parser/DefaultFTPFileEntryParserFactory;->config:Lorg/apache/commons/net/ftp/FTPClientConfig;

    .line 185
    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/FTPClientConfig;->getServerSystemKey()Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/parser/DefaultFTPFileEntryParserFactory;->createFileEntryParser(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    move-result-object v1

    return-object v1
.end method

.method public createMVSEntryParser()Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    .registers 2

    .line 241
    new-instance v0, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;

    invoke-direct {v0}, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;-><init>()V

    return-object v0
.end method

.method public createNTFTPEntryParser()Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    .registers 5

    .line 206
    iget-object v0, p0, Lorg/apache/commons/net/ftp/parser/DefaultFTPFileEntryParserFactory;->config:Lorg/apache/commons/net/ftp/FTPClientConfig;

    if-eqz v0, :cond_18

    const-string v0, "WINDOWS"

    iget-object v1, p0, Lorg/apache/commons/net/ftp/parser/DefaultFTPFileEntryParserFactory;->config:Lorg/apache/commons/net/ftp/FTPClientConfig;

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClientConfig;->getServerSystemKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 209
    new-instance v0, Lorg/apache/commons/net/ftp/parser/NTFTPEntryParser;

    invoke-direct {v0}, Lorg/apache/commons/net/ftp/parser/NTFTPEntryParser;-><init>()V

    return-object v0

    .line 211
    :cond_18
    new-instance v0, Lorg/apache/commons/net/ftp/parser/CompositeFileEntryParser;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    const/4 v2, 0x0

    new-instance v3, Lorg/apache/commons/net/ftp/parser/NTFTPEntryParser;

    invoke-direct {v3}, Lorg/apache/commons/net/ftp/parser/NTFTPEntryParser;-><init>()V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;

    invoke-direct {v3}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;-><init>()V

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/apache/commons/net/ftp/parser/CompositeFileEntryParser;-><init>([Lorg/apache/commons/net/ftp/FTPFileEntryParser;)V

    return-object v0
.end method

.method public createNetwareFTPEntryParser()Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    .registers 2

    .line 201
    new-instance v0, Lorg/apache/commons/net/ftp/parser/NetwareFTPEntryParser;

    invoke-direct {v0}, Lorg/apache/commons/net/ftp/parser/NetwareFTPEntryParser;-><init>()V

    return-object v0
.end method

.method public createOS2FTPEntryParser()Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    .registers 2

    .line 221
    new-instance v0, Lorg/apache/commons/net/ftp/parser/OS2FTPEntryParser;

    invoke-direct {v0}, Lorg/apache/commons/net/ftp/parser/OS2FTPEntryParser;-><init>()V

    return-object v0
.end method

.method public createOS400FTPEntryParser()Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    .registers 5

    .line 226
    iget-object v0, p0, Lorg/apache/commons/net/ftp/parser/DefaultFTPFileEntryParserFactory;->config:Lorg/apache/commons/net/ftp/FTPClientConfig;

    if-eqz v0, :cond_18

    const-string v0, "OS/400"

    iget-object v1, p0, Lorg/apache/commons/net/ftp/parser/DefaultFTPFileEntryParserFactory;->config:Lorg/apache/commons/net/ftp/FTPClientConfig;

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClientConfig;->getServerSystemKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 229
    new-instance v0, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;

    invoke-direct {v0}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;-><init>()V

    return-object v0

    .line 231
    :cond_18
    new-instance v0, Lorg/apache/commons/net/ftp/parser/CompositeFileEntryParser;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    const/4 v2, 0x0

    new-instance v3, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;

    invoke-direct {v3}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;-><init>()V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;

    invoke-direct {v3}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;-><init>()V

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/apache/commons/net/ftp/parser/CompositeFileEntryParser;-><init>([Lorg/apache/commons/net/ftp/FTPFileEntryParser;)V

    return-object v0
.end method

.method public createUnixFTPEntryParser()Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    .registers 2

    .line 192
    new-instance v0, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;

    invoke-direct {v0}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;-><init>()V

    return-object v0
.end method

.method public createVMSVersioningFTPEntryParser()Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    .registers 2

    .line 197
    new-instance v0, Lorg/apache/commons/net/ftp/parser/VMSVersioningFTPEntryParser;

    invoke-direct {v0}, Lorg/apache/commons/net/ftp/parser/VMSVersioningFTPEntryParser;-><init>()V

    return-object v0
.end method
