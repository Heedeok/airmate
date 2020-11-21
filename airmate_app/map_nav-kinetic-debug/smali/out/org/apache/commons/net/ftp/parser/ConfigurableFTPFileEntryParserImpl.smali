.class public abstract Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;
.super Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;
.source "ConfigurableFTPFileEntryParserImpl.java"

# interfaces
.implements Lorg/apache/commons/net/ftp/Configurable;


# instance fields
.field private timestampParser:Lorg/apache/commons/net/ftp/parser/FTPTimestampParser;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "regex"    # Ljava/lang/String;

    .line 59
    invoke-direct {p0, p1}, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;-><init>(Ljava/lang/String;)V

    .line 60
    new-instance v0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;

    invoke-direct {v0}, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;->timestampParser:Lorg/apache/commons/net/ftp/parser/FTPTimestampParser;

    .line 61
    return-void
.end method


# virtual methods
.method public configure(Lorg/apache/commons/net/ftp/FTPClientConfig;)V
    .registers 4
    .param p1, "config"    # Lorg/apache/commons/net/ftp/FTPClientConfig;

    .line 92
    iget-object v0, p0, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;->timestampParser:Lorg/apache/commons/net/ftp/parser/FTPTimestampParser;

    instance-of v0, v0, Lorg/apache/commons/net/ftp/Configurable;

    if-eqz v0, :cond_35

    .line 93
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;->getDefaultConfiguration()Lorg/apache/commons/net/ftp/FTPClientConfig;

    move-result-object v0

    .line 94
    .local v0, "defaultCfg":Lorg/apache/commons/net/ftp/FTPClientConfig;
    if-eqz p1, :cond_2e

    .line 95
    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/FTPClientConfig;->getDefaultDateFormatStr()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_19

    .line 96
    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPClientConfig;->getDefaultDateFormatStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/commons/net/ftp/FTPClientConfig;->setDefaultDateFormatStr(Ljava/lang/String;)V

    .line 98
    :cond_19
    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/FTPClientConfig;->getRecentDateFormatStr()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_26

    .line 99
    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPClientConfig;->getRecentDateFormatStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/commons/net/ftp/FTPClientConfig;->setRecentDateFormatStr(Ljava/lang/String;)V

    .line 101
    :cond_26
    iget-object v1, p0, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;->timestampParser:Lorg/apache/commons/net/ftp/parser/FTPTimestampParser;

    check-cast v1, Lorg/apache/commons/net/ftp/Configurable;

    invoke-interface {v1, p1}, Lorg/apache/commons/net/ftp/Configurable;->configure(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    goto :goto_35

    .line 103
    :cond_2e
    iget-object v1, p0, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;->timestampParser:Lorg/apache/commons/net/ftp/parser/FTPTimestampParser;

    check-cast v1, Lorg/apache/commons/net/ftp/Configurable;

    invoke-interface {v1, v0}, Lorg/apache/commons/net/ftp/Configurable;->configure(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    .line 106
    .end local v0    # "defaultCfg":Lorg/apache/commons/net/ftp/FTPClientConfig;
    :cond_35
    :goto_35
    return-void
.end method

.method protected abstract getDefaultConfiguration()Lorg/apache/commons/net/ftp/FTPClientConfig;
.end method

.method public parseTimestamp(Ljava/lang/String;)Ljava/util/Calendar;
    .registers 3
    .param p1, "timestampStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;->timestampParser:Lorg/apache/commons/net/ftp/parser/FTPTimestampParser;

    invoke-interface {v0, p1}, Lorg/apache/commons/net/ftp/parser/FTPTimestampParser;->parseTimestamp(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method
