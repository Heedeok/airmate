.class public Lorg/apache/commons/net/ftp/parser/VMSVersioningFTPEntryParser;
.super Lorg/apache/commons/net/ftp/parser/VMSFTPEntryParser;
.source "VMSVersioningFTPEntryParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/net/ftp/parser/VMSVersioningFTPEntryParser$NameVersion;
    }
.end annotation


# static fields
.field private static final PRE_PARSE_REGEX:Ljava/lang/String; = "(.*);([0-9]+)\\s*.*"


# instance fields
.field private _preparse_matcher_:Ljava/util/regex/Matcher;

.field private _preparse_pattern_:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/parser/VMSVersioningFTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V
    .registers 5
    .param p1, "config"    # Lorg/apache/commons/net/ftp/FTPClientConfig;

    .line 84
    invoke-direct {p0}, Lorg/apache/commons/net/ftp/parser/VMSFTPEntryParser;-><init>()V

    .line 85
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/parser/VMSVersioningFTPEntryParser;->configure(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    .line 89
    :try_start_6
    const-string v0, "(.*);([0-9]+)\\s*.*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/parser/VMSVersioningFTPEntryParser;->_preparse_pattern_:Ljava/util/regex/Pattern;
    :try_end_e
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_6 .. :try_end_e} :catch_10

    .line 95
    nop

    .line 97
    return-void

    .line 91
    :catch_10
    move-exception v0

    .line 93
    .local v0, "pse":Ljava/util/regex/PatternSyntaxException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unparseable regex supplied:  (.*);([0-9]+)\\s*.*"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected isVersioning()Z
    .registers 2

    .line 172
    const/4 v0, 0x1

    return v0
.end method

.method public preParse(Ljava/util/List;)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 121
    .local p1, "original":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-super {p0, p1}, Lorg/apache/commons/net/ftp/parser/VMSFTPEntryParser;->preParse(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 123
    .local v0, "existingEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/apache/commons/net/ftp/parser/VMSVersioningFTPEntryParser$NameVersion;>;"
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 124
    .local v1, "iter":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/String;>;"
    :goto_d
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_59

    .line 125
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 126
    .local v2, "entry":Ljava/lang/String;
    const/4 v5, 0x0

    .line 127
    .local v5, "result":Ljava/util/regex/MatchResult;
    iget-object v6, p0, Lorg/apache/commons/net/ftp/parser/VMSVersioningFTPEntryParser;->_preparse_pattern_:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    iput-object v6, p0, Lorg/apache/commons/net/ftp/parser/VMSVersioningFTPEntryParser;->_preparse_matcher_:Ljava/util/regex/Matcher;

    .line 128
    iget-object v6, p0, Lorg/apache/commons/net/ftp/parser/VMSVersioningFTPEntryParser;->_preparse_matcher_:Ljava/util/regex/Matcher;

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_58

    .line 129
    iget-object v6, p0, Lorg/apache/commons/net/ftp/parser/VMSVersioningFTPEntryParser;->_preparse_matcher_:Ljava/util/regex/Matcher;

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->toMatchResult()Ljava/util/regex/MatchResult;

    move-result-object v5

    .line 130
    invoke-interface {v5, v4}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 131
    .local v4, "name":Ljava/lang/String;
    invoke-interface {v5, v3}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 132
    .local v3, "version":Ljava/lang/String;
    new-instance v6, Lorg/apache/commons/net/ftp/parser/VMSVersioningFTPEntryParser$NameVersion;

    invoke-direct {v6, v4, v3}, Lorg/apache/commons/net/ftp/parser/VMSVersioningFTPEntryParser$NameVersion;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .local v6, "nv":Lorg/apache/commons/net/ftp/parser/VMSVersioningFTPEntryParser$NameVersion;
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/net/ftp/parser/VMSVersioningFTPEntryParser$NameVersion;

    .line 134
    .local v7, "existing":Lorg/apache/commons/net/ftp/parser/VMSVersioningFTPEntryParser$NameVersion;
    if-eqz v7, :cond_55

    .line 135
    iget v8, v6, Lorg/apache/commons/net/ftp/parser/VMSVersioningFTPEntryParser$NameVersion;->versionNumber:I

    iget v9, v7, Lorg/apache/commons/net/ftp/parser/VMSVersioningFTPEntryParser$NameVersion;->versionNumber:I

    if-ge v8, v9, :cond_55

    .line 136
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    .line 137
    goto :goto_d

    .line 140
    :cond_55
    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .end local v2    # "entry":Ljava/lang/String;
    .end local v3    # "version":Ljava/lang/String;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "result":Ljava/util/regex/MatchResult;
    .end local v6    # "nv":Lorg/apache/commons/net/ftp/parser/VMSVersioningFTPEntryParser$NameVersion;
    .end local v7    # "existing":Lorg/apache/commons/net/ftp/parser/VMSVersioningFTPEntryParser$NameVersion;
    :cond_58
    goto :goto_d

    .line 148
    :cond_59
    :goto_59
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_9f

    .line 149
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 150
    .restart local v2    # "entry":Ljava/lang/String;
    const/4 v5, 0x0

    .line 151
    .restart local v5    # "result":Ljava/util/regex/MatchResult;
    iget-object v6, p0, Lorg/apache/commons/net/ftp/parser/VMSVersioningFTPEntryParser;->_preparse_pattern_:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    iput-object v6, p0, Lorg/apache/commons/net/ftp/parser/VMSVersioningFTPEntryParser;->_preparse_matcher_:Ljava/util/regex/Matcher;

    .line 152
    iget-object v6, p0, Lorg/apache/commons/net/ftp/parser/VMSVersioningFTPEntryParser;->_preparse_matcher_:Ljava/util/regex/Matcher;

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_9e

    .line 153
    iget-object v6, p0, Lorg/apache/commons/net/ftp/parser/VMSVersioningFTPEntryParser;->_preparse_matcher_:Ljava/util/regex/Matcher;

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->toMatchResult()Ljava/util/regex/MatchResult;

    move-result-object v5

    .line 154
    invoke-interface {v5, v4}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 155
    .local v6, "name":Ljava/lang/String;
    invoke-interface {v5, v3}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 156
    .local v7, "version":Ljava/lang/String;
    new-instance v8, Lorg/apache/commons/net/ftp/parser/VMSVersioningFTPEntryParser$NameVersion;

    invoke-direct {v8, v6, v7}, Lorg/apache/commons/net/ftp/parser/VMSVersioningFTPEntryParser$NameVersion;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .local v8, "nv":Lorg/apache/commons/net/ftp/parser/VMSVersioningFTPEntryParser$NameVersion;
    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/net/ftp/parser/VMSVersioningFTPEntryParser$NameVersion;

    .line 158
    .local v9, "existing":Lorg/apache/commons/net/ftp/parser/VMSVersioningFTPEntryParser$NameVersion;
    if-eqz v9, :cond_9e

    .line 159
    iget v10, v8, Lorg/apache/commons/net/ftp/parser/VMSVersioningFTPEntryParser$NameVersion;->versionNumber:I

    iget v11, v9, Lorg/apache/commons/net/ftp/parser/VMSVersioningFTPEntryParser$NameVersion;->versionNumber:I

    if-ge v10, v11, :cond_9e

    .line 160
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    .line 165
    .end local v2    # "entry":Ljava/lang/String;
    .end local v5    # "result":Ljava/util/regex/MatchResult;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "version":Ljava/lang/String;
    .end local v8    # "nv":Lorg/apache/commons/net/ftp/parser/VMSVersioningFTPEntryParser$NameVersion;
    .end local v9    # "existing":Lorg/apache/commons/net/ftp/parser/VMSVersioningFTPEntryParser$NameVersion;
    :cond_9e
    goto :goto_59

    .line 166
    :cond_9f
    return-object p1
.end method
