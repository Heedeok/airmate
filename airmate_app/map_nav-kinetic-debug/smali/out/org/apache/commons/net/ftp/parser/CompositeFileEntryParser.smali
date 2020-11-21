.class public Lorg/apache/commons/net/ftp/parser/CompositeFileEntryParser;
.super Lorg/apache/commons/net/ftp/FTPFileEntryParserImpl;
.source "CompositeFileEntryParser.java"


# instance fields
.field private cachedFtpFileEntryParser:Lorg/apache/commons/net/ftp/FTPFileEntryParser;

.field private final ftpFileEntryParsers:[Lorg/apache/commons/net/ftp/FTPFileEntryParser;


# direct methods
.method public constructor <init>([Lorg/apache/commons/net/ftp/FTPFileEntryParser;)V
    .registers 3
    .param p1, "ftpFileEntryParsers"    # [Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    .line 40
    invoke-direct {p0}, Lorg/apache/commons/net/ftp/FTPFileEntryParserImpl;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/parser/CompositeFileEntryParser;->cachedFtpFileEntryParser:Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    .line 43
    iput-object p1, p0, Lorg/apache/commons/net/ftp/parser/CompositeFileEntryParser;->ftpFileEntryParsers:[Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    .line 44
    return-void
.end method


# virtual methods
.method public parseFTPEntry(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;
    .registers 5
    .param p1, "listEntry"    # Ljava/lang/String;

    .line 48
    iget-object v0, p0, Lorg/apache/commons/net/ftp/parser/CompositeFileEntryParser;->cachedFtpFileEntryParser:Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    if-eqz v0, :cond_e

    .line 50
    iget-object v0, p0, Lorg/apache/commons/net/ftp/parser/CompositeFileEntryParser;->cachedFtpFileEntryParser:Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    invoke-interface {v0, p1}, Lorg/apache/commons/net/ftp/FTPFileEntryParser;->parseFTPEntry(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v0

    .line 51
    .local v0, "matched":Lorg/apache/commons/net/ftp/FTPFile;
    if-eqz v0, :cond_d

    .line 53
    return-object v0

    .line 55
    .end local v0    # "matched":Lorg/apache/commons/net/ftp/FTPFile;
    :cond_d
    goto :goto_24

    .line 58
    :cond_e
    const/4 v0, 0x0

    .local v0, "iterParser":I
    :goto_f
    iget-object v1, p0, Lorg/apache/commons/net/ftp/parser/CompositeFileEntryParser;->ftpFileEntryParsers:[Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    array-length v1, v1

    if-ge v0, v1, :cond_24

    .line 60
    iget-object v1, p0, Lorg/apache/commons/net/ftp/parser/CompositeFileEntryParser;->ftpFileEntryParsers:[Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    aget-object v1, v1, v0

    .line 62
    .local v1, "ftpFileEntryParser":Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    invoke-interface {v1, p1}, Lorg/apache/commons/net/ftp/FTPFileEntryParser;->parseFTPEntry(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v2

    .line 63
    .local v2, "matched":Lorg/apache/commons/net/ftp/FTPFile;
    if-eqz v2, :cond_21

    .line 65
    iput-object v1, p0, Lorg/apache/commons/net/ftp/parser/CompositeFileEntryParser;->cachedFtpFileEntryParser:Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    .line 66
    return-object v2

    .line 58
    .end local v1    # "ftpFileEntryParser":Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    .end local v2    # "matched":Lorg/apache/commons/net/ftp/FTPFile;
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 70
    .end local v0    # "iterParser":I
    :cond_24
    :goto_24
    const/4 v0, 0x0

    return-object v0
.end method
