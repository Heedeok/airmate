.class public Lorg/apache/commons/net/ftp/FTPListParseEngine;
.super Ljava/lang/Object;
.source "FTPListParseEngine.java"


# instance fields
.field private _internalIterator:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field parser:Lorg/apache/commons/net/ftp/FTPFileEntryParser;


# direct methods
.method public constructor <init>(Lorg/apache/commons/net/ftp/FTPFileEntryParser;)V
    .registers 3
    .param p1, "parser"    # Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->entries:Ljava/util/List;

    .line 77
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->_internalIterator:Ljava/util/ListIterator;

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->parser:Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    .line 82
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->parser:Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    .line 83
    return-void
.end method

.method private readStream(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 6
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    if-nez p2, :cond_d

    .line 145
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    goto :goto_17

    .line 149
    :cond_d
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 152
    .local v0, "reader":Ljava/io/BufferedReader;
    :goto_17
    iget-object v1, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->parser:Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    invoke-interface {v1, v0}, Lorg/apache/commons/net/ftp/FTPFileEntryParser;->readNextEntry(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, "line":Ljava/lang/String;
    :goto_1d
    if-eqz v1, :cond_2b

    .line 156
    iget-object v2, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->entries:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    iget-object v2, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->parser:Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    invoke-interface {v2, v0}, Lorg/apache/commons/net/ftp/FTPFileEntryParser;->readNextEntry(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1d

    .line 159
    :cond_2b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 160
    return-void
.end method


# virtual methods
.method public getFiles()[Lorg/apache/commons/net/ftp/FTPFile;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 251
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 252
    .local v0, "tmpResults":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/net/ftp/FTPFile;>;"
    iget-object v1, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 253
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 254
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 255
    .local v2, "entry":Ljava/lang/String;
    iget-object v3, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->parser:Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    invoke-interface {v3, v2}, Lorg/apache/commons/net/ftp/FTPFileEntryParser;->parseFTPEntry(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v3

    .line 256
    .local v3, "temp":Lorg/apache/commons/net/ftp/FTPFile;
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    .end local v2    # "entry":Ljava/lang/String;
    .end local v3    # "temp":Lorg/apache/commons/net/ftp/FTPFile;
    goto :goto_b

    .line 258
    :cond_21
    const/4 v2, 0x0

    new-array v2, v2, [Lorg/apache/commons/net/ftp/FTPFile;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/apache/commons/net/ftp/FTPFile;

    return-object v2
.end method

.method public getNext(I)[Lorg/apache/commons/net/ftp/FTPFile;
    .registers 6
    .param p1, "quantityRequested"    # I

    .line 186
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 187
    .local v0, "tmpResults":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/net/ftp/FTPFile;>;"
    move v1, p1

    .line 188
    .local v1, "count":I
    :goto_6
    if-lez v1, :cond_24

    iget-object v2, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->_internalIterator:Ljava/util/ListIterator;

    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 189
    iget-object v2, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->_internalIterator:Ljava/util/ListIterator;

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 190
    .local v2, "entry":Ljava/lang/String;
    iget-object v3, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->parser:Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    invoke-interface {v3, v2}, Lorg/apache/commons/net/ftp/FTPFileEntryParser;->parseFTPEntry(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v3

    .line 191
    .local v3, "temp":Lorg/apache/commons/net/ftp/FTPFile;
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    add-int/lit8 v1, v1, -0x1

    .line 193
    .end local v2    # "entry":Ljava/lang/String;
    .end local v3    # "temp":Lorg/apache/commons/net/ftp/FTPFile;
    goto :goto_6

    .line 194
    :cond_24
    const/4 v2, 0x0

    new-array v2, v2, [Lorg/apache/commons/net/ftp/FTPFile;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/apache/commons/net/ftp/FTPFile;

    return-object v2
.end method

.method public getPrevious(I)[Lorg/apache/commons/net/ftp/FTPFile;
    .registers 7
    .param p1, "quantityRequested"    # I

    .line 225
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 226
    .local v0, "tmpResults":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/net/ftp/FTPFile;>;"
    move v1, p1

    .line 227
    .local v1, "count":I
    :goto_6
    const/4 v2, 0x0

    if-lez v1, :cond_25

    iget-object v3, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->_internalIterator:Ljava/util/ListIterator;

    invoke-interface {v3}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 228
    iget-object v3, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->_internalIterator:Ljava/util/ListIterator;

    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 229
    .local v3, "entry":Ljava/lang/String;
    iget-object v4, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->parser:Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    invoke-interface {v4, v3}, Lorg/apache/commons/net/ftp/FTPFileEntryParser;->parseFTPEntry(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v4

    .line 230
    .local v4, "temp":Lorg/apache/commons/net/ftp/FTPFile;
    invoke-interface {v0, v2, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 231
    add-int/lit8 v1, v1, -0x1

    .line 232
    .end local v3    # "entry":Ljava/lang/String;
    .end local v4    # "temp":Lorg/apache/commons/net/ftp/FTPFile;
    goto :goto_6

    .line 233
    :cond_25
    new-array v2, v2, [Lorg/apache/commons/net/ftp/FTPFile;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/apache/commons/net/ftp/FTPFile;

    return-object v2
.end method

.method public hasNext()Z
    .registers 2

    .line 270
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->_internalIterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasPrevious()Z
    .registers 2

    .line 281
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->_internalIterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public readServerList(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/ftp/FTPListParseEngine;->readServerList(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public readServerList(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 5
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->entries:Ljava/util/List;

    .line 100
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTPListParseEngine;->readStream(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->parser:Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    iget-object v1, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->entries:Ljava/util/List;

    invoke-interface {v0, v1}, Lorg/apache/commons/net/ftp/FTPFileEntryParser;->preParse(Ljava/util/List;)Ljava/util/List;

    .line 102
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPListParseEngine;->resetIterator()V

    .line 103
    return-void
.end method

.method public resetIterator()V
    .registers 2

    .line 288
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->_internalIterator:Ljava/util/ListIterator;

    .line 289
    return-void
.end method
