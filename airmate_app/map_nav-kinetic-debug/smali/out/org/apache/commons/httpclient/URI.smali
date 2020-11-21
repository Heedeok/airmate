.class public Lorg/apache/commons/httpclient/URI;
.super Ljava/lang/Object;
.source "URI.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;,
        Lorg/apache/commons/httpclient/URI$DefaultCharsetChanged;
    }
.end annotation


# static fields
.field protected static final IPv4address:Ljava/util/BitSet;

.field protected static final IPv6address:Ljava/util/BitSet;

.field protected static final IPv6reference:Ljava/util/BitSet;

.field protected static final URI_reference:Ljava/util/BitSet;

.field protected static final abs_path:Ljava/util/BitSet;

.field protected static final absoluteURI:Ljava/util/BitSet;

.field public static final allowed_IPv6reference:Ljava/util/BitSet;

.field public static final allowed_abs_path:Ljava/util/BitSet;

.field public static final allowed_authority:Ljava/util/BitSet;

.field public static final allowed_fragment:Ljava/util/BitSet;

.field public static final allowed_host:Ljava/util/BitSet;

.field public static final allowed_opaque_part:Ljava/util/BitSet;

.field public static final allowed_query:Ljava/util/BitSet;

.field public static final allowed_reg_name:Ljava/util/BitSet;

.field public static final allowed_rel_path:Ljava/util/BitSet;

.field public static final allowed_userinfo:Ljava/util/BitSet;

.field public static final allowed_within_authority:Ljava/util/BitSet;

.field public static final allowed_within_path:Ljava/util/BitSet;

.field public static final allowed_within_query:Ljava/util/BitSet;

.field public static final allowed_within_userinfo:Ljava/util/BitSet;

.field protected static final alpha:Ljava/util/BitSet;

.field protected static final alphanum:Ljava/util/BitSet;

.field protected static final authority:Ljava/util/BitSet;

.field public static final control:Ljava/util/BitSet;

.field protected static defaultDocumentCharset:Ljava/lang/String; = null

.field protected static defaultDocumentCharsetByLocale:Ljava/lang/String; = null

.field protected static defaultDocumentCharsetByPlatform:Ljava/lang/String; = null

.field protected static defaultProtocolCharset:Ljava/lang/String; = null

.field public static final delims:Ljava/util/BitSet;

.field protected static final digit:Ljava/util/BitSet;

.field public static final disallowed_opaque_part:Ljava/util/BitSet;

.field public static final disallowed_rel_path:Ljava/util/BitSet;

.field protected static final domainlabel:Ljava/util/BitSet;

.field protected static final escaped:Ljava/util/BitSet;

.field protected static final fragment:Ljava/util/BitSet;

.field protected static final hex:Ljava/util/BitSet;

.field protected static final hier_part:Ljava/util/BitSet;

.field protected static final host:Ljava/util/BitSet;

.field protected static final hostname:Ljava/util/BitSet;

.field protected static final hostport:Ljava/util/BitSet;

.field protected static final mark:Ljava/util/BitSet;

.field protected static final net_path:Ljava/util/BitSet;

.field protected static final opaque_part:Ljava/util/BitSet;

.field protected static final param:Ljava/util/BitSet;

.field protected static final path:Ljava/util/BitSet;

.field protected static final path_segments:Ljava/util/BitSet;

.field protected static final pchar:Ljava/util/BitSet;

.field protected static final percent:Ljava/util/BitSet;

.field protected static final port:Ljava/util/BitSet;

.field protected static final query:Ljava/util/BitSet;

.field protected static final reg_name:Ljava/util/BitSet;

.field protected static final rel_path:Ljava/util/BitSet;

.field protected static final rel_segment:Ljava/util/BitSet;

.field protected static final relativeURI:Ljava/util/BitSet;

.field protected static final reserved:Ljava/util/BitSet;

.field protected static final rootPath:[C

.field protected static final scheme:Ljava/util/BitSet;

.field protected static final segment:Ljava/util/BitSet;

.field static final serialVersionUID:J = 0x864831aad836c36L

.field protected static final server:Ljava/util/BitSet;

.field public static final space:Ljava/util/BitSet;

.field protected static final toplabel:Ljava/util/BitSet;

.field protected static final unreserved:Ljava/util/BitSet;

.field public static final unwise:Ljava/util/BitSet;

.field protected static final uric:Ljava/util/BitSet;

.field protected static final uric_no_slash:Ljava/util/BitSet;

.field protected static final userinfo:Ljava/util/BitSet;

.field public static final within_userinfo:Ljava/util/BitSet;


# instance fields
.field protected _authority:[C

.field protected _fragment:[C

.field protected _host:[C

.field protected _is_IPv4address:Z

.field protected _is_IPv6reference:Z

.field protected _is_abs_path:Z

.field protected _is_hier_part:Z

.field protected _is_hostname:Z

.field protected _is_net_path:Z

.field protected _is_opaque_part:Z

.field protected _is_reg_name:Z

.field protected _is_rel_path:Z

.field protected _is_server:Z

.field protected _opaque:[C

.field protected _path:[C

.field protected _port:I

.field protected _query:[C

.field protected _scheme:[C

.field protected _uri:[C

.field protected _userinfo:[C

.field protected hash:I

.field protected protocolCharset:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 15

    .line 628
    const-string v0, "UTF-8"

    sput-object v0, Lorg/apache/commons/httpclient/URI;->defaultProtocolCharset:Ljava/lang/String;

    .line 635
    const/4 v0, 0x0

    sput-object v0, Lorg/apache/commons/httpclient/URI;->defaultDocumentCharset:Ljava/lang/String;

    .line 636
    sput-object v0, Lorg/apache/commons/httpclient/URI;->defaultDocumentCharsetByLocale:Ljava/lang/String;

    .line 637
    sput-object v0, Lorg/apache/commons/httpclient/URI;->defaultDocumentCharsetByPlatform:Ljava/lang/String;

    .line 640
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 642
    .local v0, "locale":Ljava/util/Locale;
    if-eqz v0, :cond_1b

    .line 643
    invoke-static {v0}, Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;->getCharset(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/httpclient/URI;->defaultDocumentCharsetByLocale:Ljava/lang/String;

    .line 646
    sget-object v1, Lorg/apache/commons/httpclient/URI;->defaultDocumentCharsetByLocale:Ljava/lang/String;

    sput-object v1, Lorg/apache/commons/httpclient/URI;->defaultDocumentCharset:Ljava/lang/String;

    .line 650
    :cond_1b
    :try_start_1b
    const-string v1, "file.encoding"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/httpclient/URI;->defaultDocumentCharsetByPlatform:Ljava/lang/String;
    :try_end_23
    .catch Ljava/lang/SecurityException; {:try_start_1b .. :try_end_23} :catch_24

    .line 652
    goto :goto_25

    .line 651
    :catch_24
    move-exception v1

    .line 653
    :goto_25
    sget-object v1, Lorg/apache/commons/httpclient/URI;->defaultDocumentCharset:Ljava/lang/String;

    if-nez v1, :cond_2d

    .line 655
    sget-object v1, Lorg/apache/commons/httpclient/URI;->defaultDocumentCharsetByPlatform:Ljava/lang/String;

    sput-object v1, Lorg/apache/commons/httpclient/URI;->defaultDocumentCharset:Ljava/lang/String;

    .line 717
    .end local v0    # "locale":Ljava/util/Locale;
    :cond_2d
    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/16 v2, 0x2f

    aput-char v2, v0, v1

    sput-object v0, Lorg/apache/commons/httpclient/URI;->rootPath:[C

    .line 726
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->percent:Ljava/util/BitSet;

    .line 729
    sget-object v0, Lorg/apache/commons/httpclient/URI;->percent:Ljava/util/BitSet;

    const/16 v3, 0x25

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 740
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->digit:Ljava/util/BitSet;

    .line 743
    const/16 v0, 0x30

    .local v0, "i":I
    :goto_50
    const/16 v4, 0x39

    if-gt v0, v4, :cond_5c

    .line 744
    sget-object v4, Lorg/apache/commons/httpclient/URI;->digit:Ljava/util/BitSet;

    invoke-virtual {v4, v0}, Ljava/util/BitSet;->set(I)V

    .line 743
    add-int/lit8 v0, v0, 0x1

    goto :goto_50

    .line 755
    .end local v0    # "i":I
    :cond_5c
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->alpha:Ljava/util/BitSet;

    .line 758
    const/16 v0, 0x61

    .restart local v0    # "i":I
    :goto_65
    const/16 v4, 0x7a

    if-gt v0, v4, :cond_71

    .line 759
    sget-object v4, Lorg/apache/commons/httpclient/URI;->alpha:Ljava/util/BitSet;

    invoke-virtual {v4, v0}, Ljava/util/BitSet;->set(I)V

    .line 758
    add-int/lit8 v0, v0, 0x1

    goto :goto_65

    .line 761
    .end local v0    # "i":I
    :cond_71
    const/16 v0, 0x41

    .restart local v0    # "i":I
    :goto_73
    const/16 v4, 0x5a

    if-gt v0, v4, :cond_7f

    .line 762
    sget-object v4, Lorg/apache/commons/httpclient/URI;->alpha:Ljava/util/BitSet;

    invoke-virtual {v4, v0}, Ljava/util/BitSet;->set(I)V

    .line 761
    add-int/lit8 v0, v0, 0x1

    goto :goto_73

    .line 773
    .end local v0    # "i":I
    :cond_7f
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->alphanum:Ljava/util/BitSet;

    .line 776
    sget-object v0, Lorg/apache/commons/httpclient/URI;->alphanum:Ljava/util/BitSet;

    sget-object v4, Lorg/apache/commons/httpclient/URI;->alpha:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 777
    sget-object v0, Lorg/apache/commons/httpclient/URI;->alphanum:Ljava/util/BitSet;

    sget-object v4, Lorg/apache/commons/httpclient/URI;->digit:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 788
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->hex:Ljava/util/BitSet;

    .line 791
    sget-object v0, Lorg/apache/commons/httpclient/URI;->hex:Ljava/util/BitSet;

    sget-object v4, Lorg/apache/commons/httpclient/URI;->digit:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 792
    const/16 v0, 0x61

    .restart local v0    # "i":I
    :goto_a4
    const/16 v4, 0x66

    if-gt v0, v4, :cond_b0

    .line 793
    sget-object v4, Lorg/apache/commons/httpclient/URI;->hex:Ljava/util/BitSet;

    invoke-virtual {v4, v0}, Ljava/util/BitSet;->set(I)V

    .line 792
    add-int/lit8 v0, v0, 0x1

    goto :goto_a4

    .line 795
    .end local v0    # "i":I
    :cond_b0
    const/16 v0, 0x41

    .restart local v0    # "i":I
    :goto_b2
    const/16 v4, 0x46

    if-gt v0, v4, :cond_be

    .line 796
    sget-object v4, Lorg/apache/commons/httpclient/URI;->hex:Ljava/util/BitSet;

    invoke-virtual {v4, v0}, Ljava/util/BitSet;->set(I)V

    .line 795
    add-int/lit8 v0, v0, 0x1

    goto :goto_b2

    .line 807
    .end local v0    # "i":I
    :cond_be
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->escaped:Ljava/util/BitSet;

    .line 810
    sget-object v0, Lorg/apache/commons/httpclient/URI;->escaped:Ljava/util/BitSet;

    sget-object v4, Lorg/apache/commons/httpclient/URI;->percent:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 811
    sget-object v0, Lorg/apache/commons/httpclient/URI;->escaped:Ljava/util/BitSet;

    sget-object v4, Lorg/apache/commons/httpclient/URI;->hex:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 822
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->mark:Ljava/util/BitSet;

    .line 825
    sget-object v0, Lorg/apache/commons/httpclient/URI;->mark:Ljava/util/BitSet;

    const/16 v4, 0x2d

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 826
    sget-object v0, Lorg/apache/commons/httpclient/URI;->mark:Ljava/util/BitSet;

    const/16 v4, 0x5f

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 827
    sget-object v0, Lorg/apache/commons/httpclient/URI;->mark:Ljava/util/BitSet;

    const/16 v4, 0x2e

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 828
    sget-object v0, Lorg/apache/commons/httpclient/URI;->mark:Ljava/util/BitSet;

    const/16 v5, 0x21

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    .line 829
    sget-object v0, Lorg/apache/commons/httpclient/URI;->mark:Ljava/util/BitSet;

    const/16 v5, 0x7e

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    .line 830
    sget-object v0, Lorg/apache/commons/httpclient/URI;->mark:Ljava/util/BitSet;

    const/16 v5, 0x2a

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    .line 831
    sget-object v0, Lorg/apache/commons/httpclient/URI;->mark:Ljava/util/BitSet;

    const/16 v5, 0x27

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    .line 832
    sget-object v0, Lorg/apache/commons/httpclient/URI;->mark:Ljava/util/BitSet;

    const/16 v5, 0x28

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    .line 833
    sget-object v0, Lorg/apache/commons/httpclient/URI;->mark:Ljava/util/BitSet;

    const/16 v5, 0x29

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    .line 844
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->unreserved:Ljava/util/BitSet;

    .line 847
    sget-object v0, Lorg/apache/commons/httpclient/URI;->unreserved:Ljava/util/BitSet;

    sget-object v5, Lorg/apache/commons/httpclient/URI;->alphanum:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 848
    sget-object v0, Lorg/apache/commons/httpclient/URI;->unreserved:Ljava/util/BitSet;

    sget-object v5, Lorg/apache/commons/httpclient/URI;->mark:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 859
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->reserved:Ljava/util/BitSet;

    .line 862
    sget-object v0, Lorg/apache/commons/httpclient/URI;->reserved:Ljava/util/BitSet;

    const/16 v5, 0x3b

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    .line 863
    sget-object v0, Lorg/apache/commons/httpclient/URI;->reserved:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 864
    sget-object v0, Lorg/apache/commons/httpclient/URI;->reserved:Ljava/util/BitSet;

    const/16 v6, 0x3f

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->set(I)V

    .line 865
    sget-object v0, Lorg/apache/commons/httpclient/URI;->reserved:Ljava/util/BitSet;

    const/16 v7, 0x3a

    invoke-virtual {v0, v7}, Ljava/util/BitSet;->set(I)V

    .line 866
    sget-object v0, Lorg/apache/commons/httpclient/URI;->reserved:Ljava/util/BitSet;

    const/16 v8, 0x40

    invoke-virtual {v0, v8}, Ljava/util/BitSet;->set(I)V

    .line 867
    sget-object v0, Lorg/apache/commons/httpclient/URI;->reserved:Ljava/util/BitSet;

    const/16 v9, 0x26

    invoke-virtual {v0, v9}, Ljava/util/BitSet;->set(I)V

    .line 868
    sget-object v0, Lorg/apache/commons/httpclient/URI;->reserved:Ljava/util/BitSet;

    const/16 v10, 0x3d

    invoke-virtual {v0, v10}, Ljava/util/BitSet;->set(I)V

    .line 869
    sget-object v0, Lorg/apache/commons/httpclient/URI;->reserved:Ljava/util/BitSet;

    const/16 v11, 0x2b

    invoke-virtual {v0, v11}, Ljava/util/BitSet;->set(I)V

    .line 870
    sget-object v0, Lorg/apache/commons/httpclient/URI;->reserved:Ljava/util/BitSet;

    const/16 v12, 0x24

    invoke-virtual {v0, v12}, Ljava/util/BitSet;->set(I)V

    .line 871
    sget-object v0, Lorg/apache/commons/httpclient/URI;->reserved:Ljava/util/BitSet;

    const/16 v13, 0x2c

    invoke-virtual {v0, v13}, Ljava/util/BitSet;->set(I)V

    .line 881
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->uric:Ljava/util/BitSet;

    .line 884
    sget-object v0, Lorg/apache/commons/httpclient/URI;->uric:Ljava/util/BitSet;

    sget-object v14, Lorg/apache/commons/httpclient/URI;->reserved:Ljava/util/BitSet;

    invoke-virtual {v0, v14}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 885
    sget-object v0, Lorg/apache/commons/httpclient/URI;->uric:Ljava/util/BitSet;

    sget-object v14, Lorg/apache/commons/httpclient/URI;->unreserved:Ljava/util/BitSet;

    invoke-virtual {v0, v14}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 886
    sget-object v0, Lorg/apache/commons/httpclient/URI;->uric:Ljava/util/BitSet;

    sget-object v14, Lorg/apache/commons/httpclient/URI;->escaped:Ljava/util/BitSet;

    invoke-virtual {v0, v14}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 896
    sget-object v0, Lorg/apache/commons/httpclient/URI;->uric:Ljava/util/BitSet;

    sput-object v0, Lorg/apache/commons/httpclient/URI;->fragment:Ljava/util/BitSet;

    .line 905
    sget-object v0, Lorg/apache/commons/httpclient/URI;->uric:Ljava/util/BitSet;

    sput-object v0, Lorg/apache/commons/httpclient/URI;->query:Ljava/util/BitSet;

    .line 915
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->pchar:Ljava/util/BitSet;

    .line 918
    sget-object v0, Lorg/apache/commons/httpclient/URI;->pchar:Ljava/util/BitSet;

    sget-object v14, Lorg/apache/commons/httpclient/URI;->unreserved:Ljava/util/BitSet;

    invoke-virtual {v0, v14}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 919
    sget-object v0, Lorg/apache/commons/httpclient/URI;->pchar:Ljava/util/BitSet;

    sget-object v14, Lorg/apache/commons/httpclient/URI;->escaped:Ljava/util/BitSet;

    invoke-virtual {v0, v14}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 920
    sget-object v0, Lorg/apache/commons/httpclient/URI;->pchar:Ljava/util/BitSet;

    invoke-virtual {v0, v7}, Ljava/util/BitSet;->set(I)V

    .line 921
    sget-object v0, Lorg/apache/commons/httpclient/URI;->pchar:Ljava/util/BitSet;

    invoke-virtual {v0, v8}, Ljava/util/BitSet;->set(I)V

    .line 922
    sget-object v0, Lorg/apache/commons/httpclient/URI;->pchar:Ljava/util/BitSet;

    invoke-virtual {v0, v9}, Ljava/util/BitSet;->set(I)V

    .line 923
    sget-object v0, Lorg/apache/commons/httpclient/URI;->pchar:Ljava/util/BitSet;

    invoke-virtual {v0, v10}, Ljava/util/BitSet;->set(I)V

    .line 924
    sget-object v0, Lorg/apache/commons/httpclient/URI;->pchar:Ljava/util/BitSet;

    invoke-virtual {v0, v11}, Ljava/util/BitSet;->set(I)V

    .line 925
    sget-object v0, Lorg/apache/commons/httpclient/URI;->pchar:Ljava/util/BitSet;

    invoke-virtual {v0, v12}, Ljava/util/BitSet;->set(I)V

    .line 926
    sget-object v0, Lorg/apache/commons/httpclient/URI;->pchar:Ljava/util/BitSet;

    invoke-virtual {v0, v13}, Ljava/util/BitSet;->set(I)V

    .line 936
    sget-object v0, Lorg/apache/commons/httpclient/URI;->pchar:Ljava/util/BitSet;

    sput-object v0, Lorg/apache/commons/httpclient/URI;->param:Ljava/util/BitSet;

    .line 945
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->segment:Ljava/util/BitSet;

    .line 948
    sget-object v0, Lorg/apache/commons/httpclient/URI;->segment:Ljava/util/BitSet;

    sget-object v14, Lorg/apache/commons/httpclient/URI;->pchar:Ljava/util/BitSet;

    invoke-virtual {v0, v14}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 949
    sget-object v0, Lorg/apache/commons/httpclient/URI;->segment:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    .line 950
    sget-object v0, Lorg/apache/commons/httpclient/URI;->segment:Ljava/util/BitSet;

    sget-object v14, Lorg/apache/commons/httpclient/URI;->param:Ljava/util/BitSet;

    invoke-virtual {v0, v14}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 960
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->path_segments:Ljava/util/BitSet;

    .line 963
    sget-object v0, Lorg/apache/commons/httpclient/URI;->path_segments:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 964
    sget-object v0, Lorg/apache/commons/httpclient/URI;->path_segments:Ljava/util/BitSet;

    sget-object v14, Lorg/apache/commons/httpclient/URI;->segment:Ljava/util/BitSet;

    invoke-virtual {v0, v14}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 974
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->abs_path:Ljava/util/BitSet;

    .line 977
    sget-object v0, Lorg/apache/commons/httpclient/URI;->abs_path:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 978
    sget-object v0, Lorg/apache/commons/httpclient/URI;->abs_path:Ljava/util/BitSet;

    sget-object v14, Lorg/apache/commons/httpclient/URI;->path_segments:Ljava/util/BitSet;

    invoke-virtual {v0, v14}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 989
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->uric_no_slash:Ljava/util/BitSet;

    .line 992
    sget-object v0, Lorg/apache/commons/httpclient/URI;->uric_no_slash:Ljava/util/BitSet;

    sget-object v14, Lorg/apache/commons/httpclient/URI;->unreserved:Ljava/util/BitSet;

    invoke-virtual {v0, v14}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 993
    sget-object v0, Lorg/apache/commons/httpclient/URI;->uric_no_slash:Ljava/util/BitSet;

    sget-object v14, Lorg/apache/commons/httpclient/URI;->escaped:Ljava/util/BitSet;

    invoke-virtual {v0, v14}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 994
    sget-object v0, Lorg/apache/commons/httpclient/URI;->uric_no_slash:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    .line 995
    sget-object v0, Lorg/apache/commons/httpclient/URI;->uric_no_slash:Ljava/util/BitSet;

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->set(I)V

    .line 996
    sget-object v0, Lorg/apache/commons/httpclient/URI;->uric_no_slash:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    .line 997
    sget-object v0, Lorg/apache/commons/httpclient/URI;->uric_no_slash:Ljava/util/BitSet;

    invoke-virtual {v0, v8}, Ljava/util/BitSet;->set(I)V

    .line 998
    sget-object v0, Lorg/apache/commons/httpclient/URI;->uric_no_slash:Ljava/util/BitSet;

    invoke-virtual {v0, v9}, Ljava/util/BitSet;->set(I)V

    .line 999
    sget-object v0, Lorg/apache/commons/httpclient/URI;->uric_no_slash:Ljava/util/BitSet;

    invoke-virtual {v0, v10}, Ljava/util/BitSet;->set(I)V

    .line 1000
    sget-object v0, Lorg/apache/commons/httpclient/URI;->uric_no_slash:Ljava/util/BitSet;

    invoke-virtual {v0, v11}, Ljava/util/BitSet;->set(I)V

    .line 1001
    sget-object v0, Lorg/apache/commons/httpclient/URI;->uric_no_slash:Ljava/util/BitSet;

    invoke-virtual {v0, v12}, Ljava/util/BitSet;->set(I)V

    .line 1002
    sget-object v0, Lorg/apache/commons/httpclient/URI;->uric_no_slash:Ljava/util/BitSet;

    invoke-virtual {v0, v13}, Ljava/util/BitSet;->set(I)V

    .line 1012
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->opaque_part:Ljava/util/BitSet;

    .line 1016
    sget-object v0, Lorg/apache/commons/httpclient/URI;->opaque_part:Ljava/util/BitSet;

    sget-object v14, Lorg/apache/commons/httpclient/URI;->uric_no_slash:Ljava/util/BitSet;

    invoke-virtual {v0, v14}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1017
    sget-object v0, Lorg/apache/commons/httpclient/URI;->opaque_part:Ljava/util/BitSet;

    sget-object v14, Lorg/apache/commons/httpclient/URI;->uric:Ljava/util/BitSet;

    invoke-virtual {v0, v14}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1027
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->path:Ljava/util/BitSet;

    .line 1030
    sget-object v0, Lorg/apache/commons/httpclient/URI;->path:Ljava/util/BitSet;

    sget-object v14, Lorg/apache/commons/httpclient/URI;->abs_path:Ljava/util/BitSet;

    invoke-virtual {v0, v14}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1031
    sget-object v0, Lorg/apache/commons/httpclient/URI;->path:Ljava/util/BitSet;

    sget-object v14, Lorg/apache/commons/httpclient/URI;->opaque_part:Ljava/util/BitSet;

    invoke-virtual {v0, v14}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1038
    sget-object v0, Lorg/apache/commons/httpclient/URI;->digit:Ljava/util/BitSet;

    sput-object v0, Lorg/apache/commons/httpclient/URI;->port:Ljava/util/BitSet;

    .line 1047
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->IPv4address:Ljava/util/BitSet;

    .line 1050
    sget-object v0, Lorg/apache/commons/httpclient/URI;->IPv4address:Ljava/util/BitSet;

    sget-object v14, Lorg/apache/commons/httpclient/URI;->digit:Ljava/util/BitSet;

    invoke-virtual {v0, v14}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1051
    sget-object v0, Lorg/apache/commons/httpclient/URI;->IPv4address:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 1061
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->IPv6address:Ljava/util/BitSet;

    .line 1064
    sget-object v0, Lorg/apache/commons/httpclient/URI;->IPv6address:Ljava/util/BitSet;

    sget-object v14, Lorg/apache/commons/httpclient/URI;->hex:Ljava/util/BitSet;

    invoke-virtual {v0, v14}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1065
    sget-object v0, Lorg/apache/commons/httpclient/URI;->IPv6address:Ljava/util/BitSet;

    invoke-virtual {v0, v7}, Ljava/util/BitSet;->set(I)V

    .line 1066
    sget-object v0, Lorg/apache/commons/httpclient/URI;->IPv6address:Ljava/util/BitSet;

    sget-object v14, Lorg/apache/commons/httpclient/URI;->IPv4address:Ljava/util/BitSet;

    invoke-virtual {v0, v14}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1076
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->IPv6reference:Ljava/util/BitSet;

    .line 1079
    sget-object v0, Lorg/apache/commons/httpclient/URI;->IPv6reference:Ljava/util/BitSet;

    const/16 v14, 0x5b

    invoke-virtual {v0, v14}, Ljava/util/BitSet;->set(I)V

    .line 1080
    sget-object v0, Lorg/apache/commons/httpclient/URI;->IPv6reference:Ljava/util/BitSet;

    sget-object v14, Lorg/apache/commons/httpclient/URI;->IPv6address:Ljava/util/BitSet;

    invoke-virtual {v0, v14}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1081
    sget-object v0, Lorg/apache/commons/httpclient/URI;->IPv6reference:Ljava/util/BitSet;

    const/16 v14, 0x5d

    invoke-virtual {v0, v14}, Ljava/util/BitSet;->set(I)V

    .line 1091
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->toplabel:Ljava/util/BitSet;

    .line 1094
    sget-object v0, Lorg/apache/commons/httpclient/URI;->toplabel:Ljava/util/BitSet;

    sget-object v14, Lorg/apache/commons/httpclient/URI;->alphanum:Ljava/util/BitSet;

    invoke-virtual {v0, v14}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1095
    sget-object v0, Lorg/apache/commons/httpclient/URI;->toplabel:Ljava/util/BitSet;

    const/16 v14, 0x2d

    invoke-virtual {v0, v14}, Ljava/util/BitSet;->set(I)V

    .line 1105
    sget-object v0, Lorg/apache/commons/httpclient/URI;->toplabel:Ljava/util/BitSet;

    sput-object v0, Lorg/apache/commons/httpclient/URI;->domainlabel:Ljava/util/BitSet;

    .line 1114
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->hostname:Ljava/util/BitSet;

    .line 1117
    sget-object v0, Lorg/apache/commons/httpclient/URI;->hostname:Ljava/util/BitSet;

    sget-object v14, Lorg/apache/commons/httpclient/URI;->toplabel:Ljava/util/BitSet;

    invoke-virtual {v0, v14}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1119
    sget-object v0, Lorg/apache/commons/httpclient/URI;->hostname:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 1129
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->host:Ljava/util/BitSet;

    .line 1132
    sget-object v0, Lorg/apache/commons/httpclient/URI;->host:Ljava/util/BitSet;

    sget-object v14, Lorg/apache/commons/httpclient/URI;->hostname:Ljava/util/BitSet;

    invoke-virtual {v0, v14}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1134
    sget-object v0, Lorg/apache/commons/httpclient/URI;->host:Ljava/util/BitSet;

    sget-object v14, Lorg/apache/commons/httpclient/URI;->IPv6reference:Ljava/util/BitSet;

    invoke-virtual {v0, v14}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1144
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->hostport:Ljava/util/BitSet;

    .line 1147
    sget-object v0, Lorg/apache/commons/httpclient/URI;->hostport:Ljava/util/BitSet;

    sget-object v14, Lorg/apache/commons/httpclient/URI;->host:Ljava/util/BitSet;

    invoke-virtual {v0, v14}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1148
    sget-object v0, Lorg/apache/commons/httpclient/URI;->hostport:Ljava/util/BitSet;

    invoke-virtual {v0, v7}, Ljava/util/BitSet;->set(I)V

    .line 1149
    sget-object v0, Lorg/apache/commons/httpclient/URI;->hostport:Ljava/util/BitSet;

    sget-object v14, Lorg/apache/commons/httpclient/URI;->port:Ljava/util/BitSet;

    invoke-virtual {v0, v14}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1160
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->userinfo:Ljava/util/BitSet;

    .line 1163
    sget-object v0, Lorg/apache/commons/httpclient/URI;->userinfo:Ljava/util/BitSet;

    sget-object v14, Lorg/apache/commons/httpclient/URI;->unreserved:Ljava/util/BitSet;

    invoke-virtual {v0, v14}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1164
    sget-object v0, Lorg/apache/commons/httpclient/URI;->userinfo:Ljava/util/BitSet;

    sget-object v14, Lorg/apache/commons/httpclient/URI;->escaped:Ljava/util/BitSet;

    invoke-virtual {v0, v14}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1165
    sget-object v0, Lorg/apache/commons/httpclient/URI;->userinfo:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    .line 1166
    sget-object v0, Lorg/apache/commons/httpclient/URI;->userinfo:Ljava/util/BitSet;

    invoke-virtual {v0, v7}, Ljava/util/BitSet;->set(I)V

    .line 1167
    sget-object v0, Lorg/apache/commons/httpclient/URI;->userinfo:Ljava/util/BitSet;

    invoke-virtual {v0, v9}, Ljava/util/BitSet;->set(I)V

    .line 1168
    sget-object v0, Lorg/apache/commons/httpclient/URI;->userinfo:Ljava/util/BitSet;

    invoke-virtual {v0, v10}, Ljava/util/BitSet;->set(I)V

    .line 1169
    sget-object v0, Lorg/apache/commons/httpclient/URI;->userinfo:Ljava/util/BitSet;

    invoke-virtual {v0, v11}, Ljava/util/BitSet;->set(I)V

    .line 1170
    sget-object v0, Lorg/apache/commons/httpclient/URI;->userinfo:Ljava/util/BitSet;

    invoke-virtual {v0, v12}, Ljava/util/BitSet;->set(I)V

    .line 1171
    sget-object v0, Lorg/apache/commons/httpclient/URI;->userinfo:Ljava/util/BitSet;

    invoke-virtual {v0, v13}, Ljava/util/BitSet;->set(I)V

    .line 1178
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->within_userinfo:Ljava/util/BitSet;

    .line 1181
    sget-object v0, Lorg/apache/commons/httpclient/URI;->within_userinfo:Ljava/util/BitSet;

    sget-object v14, Lorg/apache/commons/httpclient/URI;->userinfo:Ljava/util/BitSet;

    invoke-virtual {v0, v14}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1182
    sget-object v0, Lorg/apache/commons/httpclient/URI;->within_userinfo:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->clear(I)V

    .line 1183
    sget-object v0, Lorg/apache/commons/httpclient/URI;->within_userinfo:Ljava/util/BitSet;

    invoke-virtual {v0, v7}, Ljava/util/BitSet;->clear(I)V

    .line 1184
    sget-object v0, Lorg/apache/commons/httpclient/URI;->within_userinfo:Ljava/util/BitSet;

    invoke-virtual {v0, v8}, Ljava/util/BitSet;->clear(I)V

    .line 1185
    sget-object v0, Lorg/apache/commons/httpclient/URI;->within_userinfo:Ljava/util/BitSet;

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->clear(I)V

    .line 1186
    sget-object v0, Lorg/apache/commons/httpclient/URI;->within_userinfo:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->clear(I)V

    .line 1196
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->server:Ljava/util/BitSet;

    .line 1199
    sget-object v0, Lorg/apache/commons/httpclient/URI;->server:Ljava/util/BitSet;

    sget-object v14, Lorg/apache/commons/httpclient/URI;->userinfo:Ljava/util/BitSet;

    invoke-virtual {v0, v14}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1200
    sget-object v0, Lorg/apache/commons/httpclient/URI;->server:Ljava/util/BitSet;

    invoke-virtual {v0, v8}, Ljava/util/BitSet;->set(I)V

    .line 1201
    sget-object v0, Lorg/apache/commons/httpclient/URI;->server:Ljava/util/BitSet;

    sget-object v14, Lorg/apache/commons/httpclient/URI;->hostport:Ljava/util/BitSet;

    invoke-virtual {v0, v14}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1212
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->reg_name:Ljava/util/BitSet;

    .line 1215
    sget-object v0, Lorg/apache/commons/httpclient/URI;->reg_name:Ljava/util/BitSet;

    sget-object v14, Lorg/apache/commons/httpclient/URI;->unreserved:Ljava/util/BitSet;

    invoke-virtual {v0, v14}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1216
    sget-object v0, Lorg/apache/commons/httpclient/URI;->reg_name:Ljava/util/BitSet;

    sget-object v14, Lorg/apache/commons/httpclient/URI;->escaped:Ljava/util/BitSet;

    invoke-virtual {v0, v14}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1217
    sget-object v0, Lorg/apache/commons/httpclient/URI;->reg_name:Ljava/util/BitSet;

    invoke-virtual {v0, v12}, Ljava/util/BitSet;->set(I)V

    .line 1218
    sget-object v0, Lorg/apache/commons/httpclient/URI;->reg_name:Ljava/util/BitSet;

    invoke-virtual {v0, v13}, Ljava/util/BitSet;->set(I)V

    .line 1219
    sget-object v0, Lorg/apache/commons/httpclient/URI;->reg_name:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    .line 1220
    sget-object v0, Lorg/apache/commons/httpclient/URI;->reg_name:Ljava/util/BitSet;

    invoke-virtual {v0, v7}, Ljava/util/BitSet;->set(I)V

    .line 1221
    sget-object v0, Lorg/apache/commons/httpclient/URI;->reg_name:Ljava/util/BitSet;

    invoke-virtual {v0, v8}, Ljava/util/BitSet;->set(I)V

    .line 1222
    sget-object v0, Lorg/apache/commons/httpclient/URI;->reg_name:Ljava/util/BitSet;

    invoke-virtual {v0, v9}, Ljava/util/BitSet;->set(I)V

    .line 1223
    sget-object v0, Lorg/apache/commons/httpclient/URI;->reg_name:Ljava/util/BitSet;

    invoke-virtual {v0, v10}, Ljava/util/BitSet;->set(I)V

    .line 1224
    sget-object v0, Lorg/apache/commons/httpclient/URI;->reg_name:Ljava/util/BitSet;

    invoke-virtual {v0, v11}, Ljava/util/BitSet;->set(I)V

    .line 1234
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->authority:Ljava/util/BitSet;

    .line 1237
    sget-object v0, Lorg/apache/commons/httpclient/URI;->authority:Ljava/util/BitSet;

    sget-object v14, Lorg/apache/commons/httpclient/URI;->server:Ljava/util/BitSet;

    invoke-virtual {v0, v14}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1238
    sget-object v0, Lorg/apache/commons/httpclient/URI;->authority:Ljava/util/BitSet;

    sget-object v14, Lorg/apache/commons/httpclient/URI;->reg_name:Ljava/util/BitSet;

    invoke-virtual {v0, v14}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1248
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->scheme:Ljava/util/BitSet;

    .line 1251
    sget-object v0, Lorg/apache/commons/httpclient/URI;->scheme:Ljava/util/BitSet;

    sget-object v14, Lorg/apache/commons/httpclient/URI;->alpha:Ljava/util/BitSet;

    invoke-virtual {v0, v14}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1252
    sget-object v0, Lorg/apache/commons/httpclient/URI;->scheme:Ljava/util/BitSet;

    sget-object v14, Lorg/apache/commons/httpclient/URI;->digit:Ljava/util/BitSet;

    invoke-virtual {v0, v14}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1253
    sget-object v0, Lorg/apache/commons/httpclient/URI;->scheme:Ljava/util/BitSet;

    invoke-virtual {v0, v11}, Ljava/util/BitSet;->set(I)V

    .line 1254
    sget-object v0, Lorg/apache/commons/httpclient/URI;->scheme:Ljava/util/BitSet;

    const/16 v14, 0x2d

    invoke-virtual {v0, v14}, Ljava/util/BitSet;->set(I)V

    .line 1255
    sget-object v0, Lorg/apache/commons/httpclient/URI;->scheme:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 1266
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->rel_segment:Ljava/util/BitSet;

    .line 1269
    sget-object v0, Lorg/apache/commons/httpclient/URI;->rel_segment:Ljava/util/BitSet;

    sget-object v4, Lorg/apache/commons/httpclient/URI;->unreserved:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1270
    sget-object v0, Lorg/apache/commons/httpclient/URI;->rel_segment:Ljava/util/BitSet;

    sget-object v4, Lorg/apache/commons/httpclient/URI;->escaped:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1271
    sget-object v0, Lorg/apache/commons/httpclient/URI;->rel_segment:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    .line 1272
    sget-object v0, Lorg/apache/commons/httpclient/URI;->rel_segment:Ljava/util/BitSet;

    invoke-virtual {v0, v8}, Ljava/util/BitSet;->set(I)V

    .line 1273
    sget-object v0, Lorg/apache/commons/httpclient/URI;->rel_segment:Ljava/util/BitSet;

    invoke-virtual {v0, v9}, Ljava/util/BitSet;->set(I)V

    .line 1274
    sget-object v0, Lorg/apache/commons/httpclient/URI;->rel_segment:Ljava/util/BitSet;

    invoke-virtual {v0, v10}, Ljava/util/BitSet;->set(I)V

    .line 1275
    sget-object v0, Lorg/apache/commons/httpclient/URI;->rel_segment:Ljava/util/BitSet;

    invoke-virtual {v0, v11}, Ljava/util/BitSet;->set(I)V

    .line 1276
    sget-object v0, Lorg/apache/commons/httpclient/URI;->rel_segment:Ljava/util/BitSet;

    invoke-virtual {v0, v12}, Ljava/util/BitSet;->set(I)V

    .line 1277
    sget-object v0, Lorg/apache/commons/httpclient/URI;->rel_segment:Ljava/util/BitSet;

    invoke-virtual {v0, v13}, Ljava/util/BitSet;->set(I)V

    .line 1287
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->rel_path:Ljava/util/BitSet;

    .line 1290
    sget-object v0, Lorg/apache/commons/httpclient/URI;->rel_path:Ljava/util/BitSet;

    sget-object v4, Lorg/apache/commons/httpclient/URI;->rel_segment:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1291
    sget-object v0, Lorg/apache/commons/httpclient/URI;->rel_path:Ljava/util/BitSet;

    sget-object v4, Lorg/apache/commons/httpclient/URI;->abs_path:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1301
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->net_path:Ljava/util/BitSet;

    .line 1304
    sget-object v0, Lorg/apache/commons/httpclient/URI;->net_path:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 1305
    sget-object v0, Lorg/apache/commons/httpclient/URI;->net_path:Ljava/util/BitSet;

    sget-object v4, Lorg/apache/commons/httpclient/URI;->authority:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1306
    sget-object v0, Lorg/apache/commons/httpclient/URI;->net_path:Ljava/util/BitSet;

    sget-object v4, Lorg/apache/commons/httpclient/URI;->abs_path:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1316
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->hier_part:Ljava/util/BitSet;

    .line 1319
    sget-object v0, Lorg/apache/commons/httpclient/URI;->hier_part:Ljava/util/BitSet;

    sget-object v4, Lorg/apache/commons/httpclient/URI;->net_path:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1320
    sget-object v0, Lorg/apache/commons/httpclient/URI;->hier_part:Ljava/util/BitSet;

    sget-object v4, Lorg/apache/commons/httpclient/URI;->abs_path:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1322
    sget-object v0, Lorg/apache/commons/httpclient/URI;->hier_part:Ljava/util/BitSet;

    sget-object v4, Lorg/apache/commons/httpclient/URI;->query:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1332
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->relativeURI:Ljava/util/BitSet;

    .line 1335
    sget-object v0, Lorg/apache/commons/httpclient/URI;->relativeURI:Ljava/util/BitSet;

    sget-object v4, Lorg/apache/commons/httpclient/URI;->net_path:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1336
    sget-object v0, Lorg/apache/commons/httpclient/URI;->relativeURI:Ljava/util/BitSet;

    sget-object v4, Lorg/apache/commons/httpclient/URI;->abs_path:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1337
    sget-object v0, Lorg/apache/commons/httpclient/URI;->relativeURI:Ljava/util/BitSet;

    sget-object v4, Lorg/apache/commons/httpclient/URI;->rel_path:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1339
    sget-object v0, Lorg/apache/commons/httpclient/URI;->relativeURI:Ljava/util/BitSet;

    sget-object v4, Lorg/apache/commons/httpclient/URI;->query:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1349
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->absoluteURI:Ljava/util/BitSet;

    .line 1352
    sget-object v0, Lorg/apache/commons/httpclient/URI;->absoluteURI:Ljava/util/BitSet;

    sget-object v4, Lorg/apache/commons/httpclient/URI;->scheme:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1353
    sget-object v0, Lorg/apache/commons/httpclient/URI;->absoluteURI:Ljava/util/BitSet;

    invoke-virtual {v0, v7}, Ljava/util/BitSet;->set(I)V

    .line 1354
    sget-object v0, Lorg/apache/commons/httpclient/URI;->absoluteURI:Ljava/util/BitSet;

    sget-object v4, Lorg/apache/commons/httpclient/URI;->hier_part:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1355
    sget-object v0, Lorg/apache/commons/httpclient/URI;->absoluteURI:Ljava/util/BitSet;

    sget-object v4, Lorg/apache/commons/httpclient/URI;->opaque_part:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1365
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->URI_reference:Ljava/util/BitSet;

    .line 1368
    sget-object v0, Lorg/apache/commons/httpclient/URI;->URI_reference:Ljava/util/BitSet;

    sget-object v4, Lorg/apache/commons/httpclient/URI;->absoluteURI:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1369
    sget-object v0, Lorg/apache/commons/httpclient/URI;->URI_reference:Ljava/util/BitSet;

    sget-object v4, Lorg/apache/commons/httpclient/URI;->relativeURI:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1370
    sget-object v0, Lorg/apache/commons/httpclient/URI;->URI_reference:Ljava/util/BitSet;

    const/16 v4, 0x23

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 1371
    sget-object v0, Lorg/apache/commons/httpclient/URI;->URI_reference:Ljava/util/BitSet;

    sget-object v4, Lorg/apache/commons/httpclient/URI;->fragment:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1380
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->control:Ljava/util/BitSet;

    .line 1383
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_510
    const/16 v4, 0x1f

    if-gt v0, v4, :cond_51c

    .line 1384
    sget-object v4, Lorg/apache/commons/httpclient/URI;->control:Ljava/util/BitSet;

    invoke-virtual {v4, v0}, Ljava/util/BitSet;->set(I)V

    .line 1383
    add-int/lit8 v0, v0, 0x1

    goto :goto_510

    .line 1386
    .end local v0    # "i":I
    :cond_51c
    sget-object v0, Lorg/apache/commons/httpclient/URI;->control:Ljava/util/BitSet;

    const/16 v4, 0x7f

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 1392
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->space:Ljava/util/BitSet;

    .line 1395
    sget-object v0, Lorg/apache/commons/httpclient/URI;->space:Ljava/util/BitSet;

    const/16 v4, 0x20

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 1402
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->delims:Ljava/util/BitSet;

    .line 1405
    sget-object v0, Lorg/apache/commons/httpclient/URI;->delims:Ljava/util/BitSet;

    const/16 v4, 0x3c

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 1406
    sget-object v0, Lorg/apache/commons/httpclient/URI;->delims:Ljava/util/BitSet;

    const/16 v4, 0x3e

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 1407
    sget-object v0, Lorg/apache/commons/httpclient/URI;->delims:Ljava/util/BitSet;

    const/16 v4, 0x23

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 1408
    sget-object v0, Lorg/apache/commons/httpclient/URI;->delims:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 1409
    sget-object v0, Lorg/apache/commons/httpclient/URI;->delims:Ljava/util/BitSet;

    const/16 v4, 0x22

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 1416
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->unwise:Ljava/util/BitSet;

    .line 1419
    sget-object v0, Lorg/apache/commons/httpclient/URI;->unwise:Ljava/util/BitSet;

    const/16 v4, 0x7b

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 1420
    sget-object v0, Lorg/apache/commons/httpclient/URI;->unwise:Ljava/util/BitSet;

    const/16 v4, 0x7d

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 1421
    sget-object v0, Lorg/apache/commons/httpclient/URI;->unwise:Ljava/util/BitSet;

    const/16 v4, 0x7c

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 1422
    sget-object v0, Lorg/apache/commons/httpclient/URI;->unwise:Ljava/util/BitSet;

    const/16 v4, 0x5c

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 1423
    sget-object v0, Lorg/apache/commons/httpclient/URI;->unwise:Ljava/util/BitSet;

    const/16 v4, 0x5e

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 1424
    sget-object v0, Lorg/apache/commons/httpclient/URI;->unwise:Ljava/util/BitSet;

    const/16 v4, 0x5b

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 1425
    sget-object v0, Lorg/apache/commons/httpclient/URI;->unwise:Ljava/util/BitSet;

    const/16 v4, 0x5d

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 1426
    sget-object v0, Lorg/apache/commons/httpclient/URI;->unwise:Ljava/util/BitSet;

    const/16 v4, 0x60

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 1433
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->disallowed_rel_path:Ljava/util/BitSet;

    .line 1436
    sget-object v0, Lorg/apache/commons/httpclient/URI;->disallowed_rel_path:Ljava/util/BitSet;

    sget-object v4, Lorg/apache/commons/httpclient/URI;->uric:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1437
    sget-object v0, Lorg/apache/commons/httpclient/URI;->disallowed_rel_path:Ljava/util/BitSet;

    sget-object v4, Lorg/apache/commons/httpclient/URI;->rel_path:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    .line 1444
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->disallowed_opaque_part:Ljava/util/BitSet;

    .line 1447
    sget-object v0, Lorg/apache/commons/httpclient/URI;->disallowed_opaque_part:Ljava/util/BitSet;

    sget-object v4, Lorg/apache/commons/httpclient/URI;->uric:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1448
    sget-object v0, Lorg/apache/commons/httpclient/URI;->disallowed_opaque_part:Ljava/util/BitSet;

    sget-object v4, Lorg/apache/commons/httpclient/URI;->opaque_part:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    .line 1456
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->allowed_authority:Ljava/util/BitSet;

    .line 1459
    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_authority:Ljava/util/BitSet;

    sget-object v4, Lorg/apache/commons/httpclient/URI;->authority:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1460
    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_authority:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->clear(I)V

    .line 1467
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->allowed_opaque_part:Ljava/util/BitSet;

    .line 1470
    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_opaque_part:Ljava/util/BitSet;

    sget-object v4, Lorg/apache/commons/httpclient/URI;->opaque_part:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1471
    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_opaque_part:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->clear(I)V

    .line 1478
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->allowed_reg_name:Ljava/util/BitSet;

    .line 1481
    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_reg_name:Ljava/util/BitSet;

    sget-object v4, Lorg/apache/commons/httpclient/URI;->reg_name:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1483
    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_reg_name:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->clear(I)V

    .line 1490
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->allowed_userinfo:Ljava/util/BitSet;

    .line 1493
    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_userinfo:Ljava/util/BitSet;

    sget-object v4, Lorg/apache/commons/httpclient/URI;->userinfo:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1495
    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_userinfo:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->clear(I)V

    .line 1502
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->allowed_within_userinfo:Ljava/util/BitSet;

    .line 1505
    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_within_userinfo:Ljava/util/BitSet;

    sget-object v4, Lorg/apache/commons/httpclient/URI;->within_userinfo:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1506
    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_within_userinfo:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->clear(I)V

    .line 1514
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->allowed_IPv6reference:Ljava/util/BitSet;

    .line 1517
    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_IPv6reference:Ljava/util/BitSet;

    sget-object v4, Lorg/apache/commons/httpclient/URI;->IPv6reference:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1519
    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_IPv6reference:Ljava/util/BitSet;

    const/16 v4, 0x5b

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->clear(I)V

    .line 1520
    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_IPv6reference:Ljava/util/BitSet;

    const/16 v4, 0x5d

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->clear(I)V

    .line 1528
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->allowed_host:Ljava/util/BitSet;

    .line 1531
    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_host:Ljava/util/BitSet;

    sget-object v4, Lorg/apache/commons/httpclient/URI;->hostname:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1532
    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_host:Ljava/util/BitSet;

    sget-object v4, Lorg/apache/commons/httpclient/URI;->allowed_IPv6reference:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1539
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->allowed_within_authority:Ljava/util/BitSet;

    .line 1542
    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_within_authority:Ljava/util/BitSet;

    sget-object v4, Lorg/apache/commons/httpclient/URI;->server:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1543
    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_within_authority:Ljava/util/BitSet;

    sget-object v4, Lorg/apache/commons/httpclient/URI;->reg_name:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1544
    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_within_authority:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->clear(I)V

    .line 1545
    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_within_authority:Ljava/util/BitSet;

    invoke-virtual {v0, v7}, Ljava/util/BitSet;->clear(I)V

    .line 1546
    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_within_authority:Ljava/util/BitSet;

    invoke-virtual {v0, v8}, Ljava/util/BitSet;->clear(I)V

    .line 1547
    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_within_authority:Ljava/util/BitSet;

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->clear(I)V

    .line 1548
    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_within_authority:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->clear(I)V

    .line 1555
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->allowed_abs_path:Ljava/util/BitSet;

    .line 1558
    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_abs_path:Ljava/util/BitSet;

    sget-object v4, Lorg/apache/commons/httpclient/URI;->abs_path:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1560
    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_abs_path:Ljava/util/BitSet;

    sget-object v4, Lorg/apache/commons/httpclient/URI;->percent:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    .line 1561
    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_abs_path:Ljava/util/BitSet;

    invoke-virtual {v0, v11}, Ljava/util/BitSet;->clear(I)V

    .line 1568
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->allowed_rel_path:Ljava/util/BitSet;

    .line 1571
    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_rel_path:Ljava/util/BitSet;

    sget-object v4, Lorg/apache/commons/httpclient/URI;->rel_path:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1572
    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_rel_path:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->clear(I)V

    .line 1573
    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_rel_path:Ljava/util/BitSet;

    invoke-virtual {v0, v11}, Ljava/util/BitSet;->clear(I)V

    .line 1580
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->allowed_within_path:Ljava/util/BitSet;

    .line 1583
    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_within_path:Ljava/util/BitSet;

    sget-object v4, Lorg/apache/commons/httpclient/URI;->abs_path:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1584
    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_within_path:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->clear(I)V

    .line 1585
    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_within_path:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->clear(I)V

    .line 1586
    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_within_path:Ljava/util/BitSet;

    invoke-virtual {v0, v10}, Ljava/util/BitSet;->clear(I)V

    .line 1587
    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_within_path:Ljava/util/BitSet;

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->clear(I)V

    .line 1594
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->allowed_query:Ljava/util/BitSet;

    .line 1597
    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_query:Ljava/util/BitSet;

    sget-object v2, Lorg/apache/commons/httpclient/URI;->uric:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1598
    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_query:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->clear(I)V

    .line 1605
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->allowed_within_query:Ljava/util/BitSet;

    .line 1608
    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_within_query:Ljava/util/BitSet;

    sget-object v2, Lorg/apache/commons/httpclient/URI;->allowed_query:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1609
    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_within_query:Ljava/util/BitSet;

    sget-object v2, Lorg/apache/commons/httpclient/URI;->reserved:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    .line 1616
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->allowed_fragment:Ljava/util/BitSet;

    .line 1619
    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_fragment:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/commons/httpclient/URI;->uric:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1620
    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_fragment:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->clear(I)V

    .line 1621
    return-void
.end method

.method protected constructor <init>()V
    .registers 3

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 608
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/httpclient/URI;->hash:I

    .line 616
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_uri:[C

    .line 622
    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->protocolCharset:Ljava/lang/String;

    .line 663
    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_scheme:[C

    .line 669
    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_opaque:[C

    .line 675
    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_authority:[C

    .line 681
    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_userinfo:[C

    .line 687
    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_host:[C

    .line 693
    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/commons/httpclient/URI;->_port:I

    .line 699
    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_path:[C

    .line 705
    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_query:[C

    .line 711
    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_fragment:[C

    .line 126
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5
    .param p1, "original"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 608
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/httpclient/URI;->hash:I

    .line 616
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_uri:[C

    .line 622
    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->protocolCharset:Ljava/lang/String;

    .line 663
    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_scheme:[C

    .line 669
    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_opaque:[C

    .line 675
    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_authority:[C

    .line 681
    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_userinfo:[C

    .line 687
    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_host:[C

    .line 693
    const/4 v2, -0x1

    iput v2, p0, Lorg/apache/commons/httpclient/URI;->_port:I

    .line 699
    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_path:[C

    .line 705
    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_query:[C

    .line 711
    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_fragment:[C

    .line 240
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/httpclient/URI;->parseUriReference(Ljava/lang/String;Z)V

    .line 241
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "original"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 608
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/httpclient/URI;->hash:I

    .line 616
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_uri:[C

    .line 622
    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->protocolCharset:Ljava/lang/String;

    .line 663
    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_scheme:[C

    .line 669
    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_opaque:[C

    .line 675
    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_authority:[C

    .line 681
    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_userinfo:[C

    .line 687
    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_host:[C

    .line 693
    const/4 v2, -0x1

    iput v2, p0, Lorg/apache/commons/httpclient/URI;->_port:I

    .line 699
    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_path:[C

    .line 705
    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_query:[C

    .line 711
    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_fragment:[C

    .line 219
    iput-object p2, p0, Lorg/apache/commons/httpclient/URI;->protocolCharset:Ljava/lang/String;

    .line 220
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/httpclient/URI;->parseUriReference(Ljava/lang/String;Z)V

    .line 221
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "schemeSpecificPart"    # Ljava/lang/String;
    .param p3, "fragment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 608
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/httpclient/URI;->hash:I

    .line 616
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_uri:[C

    .line 622
    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->protocolCharset:Ljava/lang/String;

    .line 663
    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_scheme:[C

    .line 669
    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_opaque:[C

    .line 675
    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_authority:[C

    .line 681
    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_userinfo:[C

    .line 687
    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_host:[C

    .line 693
    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/commons/httpclient/URI;->_port:I

    .line 699
    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_path:[C

    .line 705
    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_query:[C

    .line 711
    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_fragment:[C

    .line 264
    const/4 v1, 0x1

    if-eqz p1, :cond_56

    .line 267
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 268
    .local v2, "s":[C
    sget-object v3, Lorg/apache/commons/httpclient/URI;->scheme:Ljava/util/BitSet;

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/httpclient/URI;->validate([CLjava/util/BitSet;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 269
    iput-object v2, p0, Lorg/apache/commons/httpclient/URI;->_scheme:[C

    .line 273
    sget-object v3, Lorg/apache/commons/httpclient/URI;->allowed_opaque_part:Ljava/util/BitSet;

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->getProtocolCharset()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v3, v4}, Lorg/apache/commons/httpclient/URI;->encode(Ljava/lang/String;Ljava/util/BitSet;Ljava/lang/String;)[C

    move-result-object v3

    iput-object v3, p0, Lorg/apache/commons/httpclient/URI;->_opaque:[C

    .line 276
    iput-boolean v1, p0, Lorg/apache/commons/httpclient/URI;->_is_opaque_part:Z

    .line 277
    if-nez p3, :cond_44

    goto :goto_48

    :cond_44
    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    :goto_48
    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_fragment:[C

    .line 278
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->setURI()V

    .line 279
    return-void

    .line 271
    :cond_4e
    new-instance v0, Lorg/apache/commons/httpclient/URIException;

    const-string v3, "incorrect scheme"

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/httpclient/URIException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 265
    .end local v2    # "s":[C
    :cond_56
    new-instance v0, Lorg/apache/commons/httpclient/URIException;

    const-string v2, "scheme required"

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/httpclient/URIException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 13
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "userinfo"    # Ljava/lang/String;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 348
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/httpclient/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 14
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "userinfo"    # Ljava/lang/String;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 366
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/httpclient/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 15
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "userinfo"    # Ljava/lang/String;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "path"    # Ljava/lang/String;
    .param p6, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 385
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/httpclient/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "userinfo"    # Ljava/lang/String;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "path"    # Ljava/lang/String;
    .param p6, "query"    # Ljava/lang/String;
    .param p7, "fragment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 405
    if-nez p3, :cond_5

    const/4 v0, 0x0

    :goto_3
    move-object v3, v0

    goto :goto_45

    :cond_5
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p2, :cond_1e

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_20

    :cond_1e
    const-string v1, ""

    :goto_20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, -0x1

    if-eq p4, v1, :cond_3b

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3d

    :cond_3b
    const-string v1, ""

    :goto_3d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :goto_45
    move-object v1, p0

    move-object v2, p1

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/httpclient/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "fragment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 424
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/httpclient/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "query"    # Ljava/lang/String;
    .param p5, "fragment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 608
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/httpclient/URI;->hash:I

    .line 616
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_uri:[C

    .line 622
    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->protocolCharset:Ljava/lang/String;

    .line 663
    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_scheme:[C

    .line 669
    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_opaque:[C

    .line 675
    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_authority:[C

    .line 681
    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_userinfo:[C

    .line 687
    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_host:[C

    .line 693
    const/4 v2, -0x1

    iput v2, p0, Lorg/apache/commons/httpclient/URI;->_port:I

    .line 699
    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_path:[C

    .line 705
    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_query:[C

    .line 711
    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_fragment:[C

    .line 306
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 307
    .local v1, "buff":Ljava/lang/StringBuffer;
    if-eqz p1, :cond_2d

    .line 308
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 309
    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 311
    :cond_2d
    if-eqz p2, :cond_37

    .line 312
    const-string v2, "//"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 313
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 315
    :cond_37
    if-eqz p3, :cond_52

    .line 316
    if-nez p1, :cond_3d

    if-eqz p2, :cond_45

    :cond_3d
    const-string v2, "/"

    invoke-virtual {p3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 321
    :cond_45
    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_52

    .line 318
    :cond_49
    new-instance v0, Lorg/apache/commons/httpclient/URIException;

    const/4 v2, 0x1

    const-string v3, "abs_path requested"

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/httpclient/URIException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 323
    :cond_52
    :goto_52
    if-eqz p4, :cond_5c

    .line 324
    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 325
    invoke-virtual {v1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 327
    :cond_5c
    if-eqz p5, :cond_66

    .line 328
    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 329
    invoke-virtual {v1, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 331
    :cond_66
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lorg/apache/commons/httpclient/URI;->parseUriReference(Ljava/lang/String;Z)V

    .line 332
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "escaped"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 608
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/httpclient/URI;->hash:I

    .line 616
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_uri:[C

    .line 622
    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->protocolCharset:Ljava/lang/String;

    .line 663
    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_scheme:[C

    .line 669
    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_opaque:[C

    .line 675
    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_authority:[C

    .line 681
    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_userinfo:[C

    .line 687
    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_host:[C

    .line 693
    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/commons/httpclient/URI;->_port:I

    .line 699
    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_path:[C

    .line 705
    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_query:[C

    .line 711
    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_fragment:[C

    .line 167
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/httpclient/URI;->parseUriReference(Ljava/lang/String;Z)V

    .line 168
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 6
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "escaped"    # Z
    .param p3, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 608
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/httpclient/URI;->hash:I

    .line 616
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_uri:[C

    .line 622
    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->protocolCharset:Ljava/lang/String;

    .line 663
    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_scheme:[C

    .line 669
    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_opaque:[C

    .line 675
    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_authority:[C

    .line 681
    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_userinfo:[C

    .line 687
    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_host:[C

    .line 693
    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/commons/httpclient/URI;->_port:I

    .line 699
    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_path:[C

    .line 705
    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_query:[C

    .line 711
    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_fragment:[C

    .line 146
    iput-object p3, p0, Lorg/apache/commons/httpclient/URI;->protocolCharset:Ljava/lang/String;

    .line 147
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/httpclient/URI;->parseUriReference(Ljava/lang/String;Z)V

    .line 148
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/httpclient/URI;Ljava/lang/String;)V
    .registers 4
    .param p1, "base"    # Lorg/apache/commons/httpclient/URI;
    .param p2, "relative"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 438
    new-instance v0, Lorg/apache/commons/httpclient/URI;

    invoke-direct {v0, p2}, Lorg/apache/commons/httpclient/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/httpclient/URI;-><init>(Lorg/apache/commons/httpclient/URI;Lorg/apache/commons/httpclient/URI;)V

    .line 439
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/httpclient/URI;Ljava/lang/String;Z)V
    .registers 5
    .param p1, "base"    # Lorg/apache/commons/httpclient/URI;
    .param p2, "relative"    # Ljava/lang/String;
    .param p3, "escaped"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 455
    new-instance v0, Lorg/apache/commons/httpclient/URI;

    invoke-direct {v0, p2, p3}, Lorg/apache/commons/httpclient/URI;-><init>(Ljava/lang/String;Z)V

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/httpclient/URI;-><init>(Lorg/apache/commons/httpclient/URI;Lorg/apache/commons/httpclient/URI;)V

    .line 456
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/httpclient/URI;Lorg/apache/commons/httpclient/URI;)V
    .registers 7
    .param p1, "base"    # Lorg/apache/commons/httpclient/URI;
    .param p2, "relative"    # Lorg/apache/commons/httpclient/URI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 509
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 608
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/httpclient/URI;->hash:I

    .line 616
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_uri:[C

    .line 622
    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->protocolCharset:Ljava/lang/String;

    .line 663
    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_scheme:[C

    .line 669
    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_opaque:[C

    .line 675
    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_authority:[C

    .line 681
    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_userinfo:[C

    .line 687
    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_host:[C

    .line 693
    const/4 v2, -0x1

    iput v2, p0, Lorg/apache/commons/httpclient/URI;->_port:I

    .line 699
    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_path:[C

    .line 705
    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_query:[C

    .line 711
    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_fragment:[C

    .line 511
    iget-object v1, p1, Lorg/apache/commons/httpclient/URI;->_scheme:[C

    const/4 v2, 0x1

    if-eqz v1, :cond_14c

    .line 514
    iget-object v1, p1, Lorg/apache/commons/httpclient/URI;->_scheme:[C

    if-eqz v1, :cond_33

    .line 515
    iget-object v1, p1, Lorg/apache/commons/httpclient/URI;->_scheme:[C

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_scheme:[C

    .line 516
    iget-object v1, p1, Lorg/apache/commons/httpclient/URI;->_authority:[C

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_authority:[C

    .line 517
    iget-boolean v1, p1, Lorg/apache/commons/httpclient/URI;->_is_net_path:Z

    iput-boolean v1, p0, Lorg/apache/commons/httpclient/URI;->_is_net_path:Z

    .line 519
    :cond_33
    iget-boolean v1, p1, Lorg/apache/commons/httpclient/URI;->_is_opaque_part:Z

    if-nez v1, :cond_12f

    iget-boolean v1, p2, Lorg/apache/commons/httpclient/URI;->_is_opaque_part:Z

    if-eqz v1, :cond_3d

    goto/16 :goto_12f

    .line 528
    :cond_3d
    iget-object v0, p1, Lorg/apache/commons/httpclient/URI;->_scheme:[C

    iget-object v1, p2, Lorg/apache/commons/httpclient/URI;->_scheme:[C

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v0

    .line 529
    .local v0, "schemesEqual":Z
    iget-object v1, p2, Lorg/apache/commons/httpclient/URI;->_scheme:[C

    if-eqz v1, :cond_85

    if-eqz v0, :cond_4f

    iget-object v1, p2, Lorg/apache/commons/httpclient/URI;->_authority:[C

    if-eqz v1, :cond_85

    .line 531
    :cond_4f
    iget-object v1, p2, Lorg/apache/commons/httpclient/URI;->_scheme:[C

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_scheme:[C

    .line 532
    iget-boolean v1, p2, Lorg/apache/commons/httpclient/URI;->_is_net_path:Z

    iput-boolean v1, p0, Lorg/apache/commons/httpclient/URI;->_is_net_path:Z

    .line 533
    iget-object v1, p2, Lorg/apache/commons/httpclient/URI;->_authority:[C

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_authority:[C

    .line 534
    iget-boolean v1, p2, Lorg/apache/commons/httpclient/URI;->_is_server:Z

    if-eqz v1, :cond_70

    .line 535
    iget-boolean v1, p2, Lorg/apache/commons/httpclient/URI;->_is_server:Z

    iput-boolean v1, p0, Lorg/apache/commons/httpclient/URI;->_is_server:Z

    .line 536
    iget-object v1, p2, Lorg/apache/commons/httpclient/URI;->_userinfo:[C

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_userinfo:[C

    .line 537
    iget-object v1, p2, Lorg/apache/commons/httpclient/URI;->_host:[C

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_host:[C

    .line 538
    iget v1, p2, Lorg/apache/commons/httpclient/URI;->_port:I

    iput v1, p0, Lorg/apache/commons/httpclient/URI;->_port:I

    goto :goto_78

    .line 539
    :cond_70
    iget-boolean v1, p2, Lorg/apache/commons/httpclient/URI;->_is_reg_name:Z

    if-eqz v1, :cond_78

    .line 540
    iget-boolean v1, p2, Lorg/apache/commons/httpclient/URI;->_is_reg_name:Z

    iput-boolean v1, p0, Lorg/apache/commons/httpclient/URI;->_is_reg_name:Z

    .line 542
    :cond_78
    :goto_78
    iget-boolean v1, p2, Lorg/apache/commons/httpclient/URI;->_is_abs_path:Z

    iput-boolean v1, p0, Lorg/apache/commons/httpclient/URI;->_is_abs_path:Z

    .line 543
    iget-boolean v1, p2, Lorg/apache/commons/httpclient/URI;->_is_rel_path:Z

    iput-boolean v1, p0, Lorg/apache/commons/httpclient/URI;->_is_rel_path:Z

    .line 544
    iget-object v1, p2, Lorg/apache/commons/httpclient/URI;->_path:[C

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_path:[C

    goto :goto_b2

    .line 545
    :cond_85
    iget-object v1, p1, Lorg/apache/commons/httpclient/URI;->_authority:[C

    if-eqz v1, :cond_b2

    iget-object v1, p2, Lorg/apache/commons/httpclient/URI;->_scheme:[C

    if-nez v1, :cond_b2

    .line 546
    iget-boolean v1, p1, Lorg/apache/commons/httpclient/URI;->_is_net_path:Z

    iput-boolean v1, p0, Lorg/apache/commons/httpclient/URI;->_is_net_path:Z

    .line 547
    iget-object v1, p1, Lorg/apache/commons/httpclient/URI;->_authority:[C

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_authority:[C

    .line 548
    iget-boolean v1, p1, Lorg/apache/commons/httpclient/URI;->_is_server:Z

    if-eqz v1, :cond_aa

    .line 549
    iget-boolean v1, p1, Lorg/apache/commons/httpclient/URI;->_is_server:Z

    iput-boolean v1, p0, Lorg/apache/commons/httpclient/URI;->_is_server:Z

    .line 550
    iget-object v1, p1, Lorg/apache/commons/httpclient/URI;->_userinfo:[C

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_userinfo:[C

    .line 551
    iget-object v1, p1, Lorg/apache/commons/httpclient/URI;->_host:[C

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_host:[C

    .line 552
    iget v1, p1, Lorg/apache/commons/httpclient/URI;->_port:I

    iput v1, p0, Lorg/apache/commons/httpclient/URI;->_port:I

    goto :goto_b2

    .line 553
    :cond_aa
    iget-boolean v1, p1, Lorg/apache/commons/httpclient/URI;->_is_reg_name:Z

    if-eqz v1, :cond_b2

    .line 554
    iget-boolean v1, p1, Lorg/apache/commons/httpclient/URI;->_is_reg_name:Z

    iput-boolean v1, p0, Lorg/apache/commons/httpclient/URI;->_is_reg_name:Z

    .line 557
    :cond_b2
    :goto_b2
    iget-object v1, p2, Lorg/apache/commons/httpclient/URI;->_authority:[C

    if-eqz v1, :cond_e7

    .line 558
    iget-boolean v1, p2, Lorg/apache/commons/httpclient/URI;->_is_net_path:Z

    iput-boolean v1, p0, Lorg/apache/commons/httpclient/URI;->_is_net_path:Z

    .line 559
    iget-object v1, p2, Lorg/apache/commons/httpclient/URI;->_authority:[C

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_authority:[C

    .line 560
    iget-boolean v1, p2, Lorg/apache/commons/httpclient/URI;->_is_server:Z

    if-eqz v1, :cond_d3

    .line 561
    iget-boolean v1, p2, Lorg/apache/commons/httpclient/URI;->_is_server:Z

    iput-boolean v1, p0, Lorg/apache/commons/httpclient/URI;->_is_server:Z

    .line 562
    iget-object v1, p2, Lorg/apache/commons/httpclient/URI;->_userinfo:[C

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_userinfo:[C

    .line 563
    iget-object v1, p2, Lorg/apache/commons/httpclient/URI;->_host:[C

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_host:[C

    .line 564
    iget v1, p2, Lorg/apache/commons/httpclient/URI;->_port:I

    iput v1, p0, Lorg/apache/commons/httpclient/URI;->_port:I

    goto :goto_db

    .line 565
    :cond_d3
    iget-boolean v1, p2, Lorg/apache/commons/httpclient/URI;->_is_reg_name:Z

    if-eqz v1, :cond_db

    .line 566
    iget-boolean v1, p2, Lorg/apache/commons/httpclient/URI;->_is_reg_name:Z

    iput-boolean v1, p0, Lorg/apache/commons/httpclient/URI;->_is_reg_name:Z

    .line 568
    :cond_db
    :goto_db
    iget-boolean v1, p2, Lorg/apache/commons/httpclient/URI;->_is_abs_path:Z

    iput-boolean v1, p0, Lorg/apache/commons/httpclient/URI;->_is_abs_path:Z

    .line 569
    iget-boolean v1, p2, Lorg/apache/commons/httpclient/URI;->_is_rel_path:Z

    iput-boolean v1, p0, Lorg/apache/commons/httpclient/URI;->_is_rel_path:Z

    .line 570
    iget-object v1, p2, Lorg/apache/commons/httpclient/URI;->_path:[C

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_path:[C

    .line 573
    :cond_e7
    iget-object v1, p2, Lorg/apache/commons/httpclient/URI;->_authority:[C

    if-nez v1, :cond_111

    iget-object v1, p2, Lorg/apache/commons/httpclient/URI;->_scheme:[C

    if-eqz v1, :cond_f1

    if-eqz v0, :cond_111

    .line 575
    :cond_f1
    iget-object v1, p2, Lorg/apache/commons/httpclient/URI;->_path:[C

    if-eqz v1, :cond_fa

    iget-object v1, p2, Lorg/apache/commons/httpclient/URI;->_path:[C

    array-length v1, v1

    if-nez v1, :cond_107

    :cond_fa
    iget-object v1, p2, Lorg/apache/commons/httpclient/URI;->_query:[C

    if-nez v1, :cond_107

    .line 579
    iget-object v1, p1, Lorg/apache/commons/httpclient/URI;->_path:[C

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_path:[C

    .line 580
    iget-object v1, p1, Lorg/apache/commons/httpclient/URI;->_query:[C

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_query:[C

    goto :goto_111

    .line 582
    :cond_107
    iget-object v1, p1, Lorg/apache/commons/httpclient/URI;->_path:[C

    iget-object v3, p2, Lorg/apache/commons/httpclient/URI;->_path:[C

    invoke-virtual {p0, v1, v3}, Lorg/apache/commons/httpclient/URI;->resolvePath([C[C)[C

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_path:[C

    .line 586
    :cond_111
    :goto_111
    iget-object v1, p2, Lorg/apache/commons/httpclient/URI;->_query:[C

    if-eqz v1, :cond_119

    .line 587
    iget-object v1, p2, Lorg/apache/commons/httpclient/URI;->_query:[C

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_query:[C

    .line 590
    :cond_119
    iget-object v1, p2, Lorg/apache/commons/httpclient/URI;->_fragment:[C

    if-eqz v1, :cond_121

    .line 591
    iget-object v1, p2, Lorg/apache/commons/httpclient/URI;->_fragment:[C

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_fragment:[C

    .line 593
    :cond_121
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->setURI()V

    .line 596
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/commons/httpclient/URI;->_uri:[C

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/httpclient/URI;->parseUriReference(Ljava/lang/String;Z)V

    .line 597
    return-void

    .line 520
    .end local v0    # "schemesEqual":Z
    :cond_12f
    :goto_12f
    iget-object v1, p1, Lorg/apache/commons/httpclient/URI;->_scheme:[C

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_scheme:[C

    .line 521
    iget-boolean v1, p1, Lorg/apache/commons/httpclient/URI;->_is_opaque_part:Z

    if-nez v1, :cond_13d

    iget-boolean v1, p2, Lorg/apache/commons/httpclient/URI;->_is_opaque_part:Z

    if-eqz v1, :cond_13c

    goto :goto_13d

    :cond_13c
    goto :goto_13e

    :cond_13d
    :goto_13d
    const/4 v0, 0x1

    :goto_13e
    iput-boolean v0, p0, Lorg/apache/commons/httpclient/URI;->_is_opaque_part:Z

    .line 523
    iget-object v0, p2, Lorg/apache/commons/httpclient/URI;->_opaque:[C

    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_opaque:[C

    .line 524
    iget-object v0, p2, Lorg/apache/commons/httpclient/URI;->_fragment:[C

    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_fragment:[C

    .line 525
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->setURI()V

    .line 526
    return-void

    .line 512
    :cond_14c
    new-instance v0, Lorg/apache/commons/httpclient/URIException;

    const-string v1, "base URI required"

    invoke-direct {v0, v2, v1}, Lorg/apache/commons/httpclient/URIException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([C)V
    .registers 4
    .param p1, "escaped"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 608
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/httpclient/URI;->hash:I

    .line 616
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_uri:[C

    .line 622
    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->protocolCharset:Ljava/lang/String;

    .line 663
    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_scheme:[C

    .line 669
    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_opaque:[C

    .line 675
    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_authority:[C

    .line 681
    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_userinfo:[C

    .line 687
    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_host:[C

    .line 693
    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/commons/httpclient/URI;->_port:I

    .line 699
    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_path:[C

    .line 705
    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_query:[C

    .line 711
    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_fragment:[C

    .line 203
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/httpclient/URI;->parseUriReference(Ljava/lang/String;Z)V

    .line 204
    return-void
.end method

.method public constructor <init>([CLjava/lang/String;)V
    .registers 5
    .param p1, "escaped"    # [C
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 608
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/httpclient/URI;->hash:I

    .line 616
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_uri:[C

    .line 622
    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->protocolCharset:Ljava/lang/String;

    .line 663
    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_scheme:[C

    .line 669
    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_opaque:[C

    .line 675
    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_authority:[C

    .line 681
    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_userinfo:[C

    .line 687
    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_host:[C

    .line 693
    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/commons/httpclient/URI;->_port:I

    .line 699
    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_path:[C

    .line 705
    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_query:[C

    .line 711
    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_fragment:[C

    .line 184
    iput-object p2, p0, Lorg/apache/commons/httpclient/URI;->protocolCharset:Ljava/lang/String;

    .line 185
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/httpclient/URI;->parseUriReference(Ljava/lang/String;Z)V

    .line 186
    return-void
.end method

.method protected static decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "component"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 1768
    if-eqz p0, :cond_1d

    .line 1771
    const/4 v0, 0x0

    .line 1773
    .local v0, "rawdata":[B
    :try_start_3
    invoke-static {p0}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/codec/net/URLCodec;->decodeUrl([B)[B

    move-result-object v1
    :try_end_b
    .catch Lorg/apache/commons/codec/DecoderException; {:try_start_3 .. :try_end_b} :catch_12

    move-object v0, v1

    .line 1776
    nop

    .line 1777
    invoke-static {v0, p1}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1774
    :catch_12
    move-exception v1

    .line 1775
    .local v1, "e":Lorg/apache/commons/codec/DecoderException;
    new-instance v2, Lorg/apache/commons/httpclient/URIException;

    invoke-virtual {v1}, Lorg/apache/commons/codec/DecoderException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/httpclient/URIException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1769
    .end local v0    # "rawdata":[B
    .end local v1    # "e":Lorg/apache/commons/codec/DecoderException;
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Component array of chars may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static decode([CLjava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "component"    # [C
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 1728
    if-eqz p0, :cond_c

    .line 1731
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    invoke-static {v0, p1}, Lorg/apache/commons/httpclient/URI;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1729
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Component array of chars may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static encode(Ljava/lang/String;Ljava/util/BitSet;Ljava/lang/String;)[C
    .registers 5
    .param p0, "original"    # Ljava/lang/String;
    .param p1, "allowed"    # Ljava/util/BitSet;
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 1686
    if-eqz p0, :cond_1d

    .line 1689
    if-eqz p1, :cond_15

    .line 1692
    invoke-static {p0, p2}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/commons/codec/net/URLCodec;->encodeUrl(Ljava/util/BitSet;[B)[B

    move-result-object v0

    .line 1693
    .local v0, "rawdata":[B
    invoke-static {v0}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getAsciiString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    return-object v1

    .line 1690
    .end local v0    # "rawdata":[B
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Allowed bitset may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1687
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Original string may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getDefaultDocumentCharset()Ljava/lang/String;
    .registers 1

    .line 2614
    sget-object v0, Lorg/apache/commons/httpclient/URI;->defaultDocumentCharset:Ljava/lang/String;

    return-object v0
.end method

.method public static getDefaultDocumentCharsetByLocale()Ljava/lang/String;
    .registers 1

    .line 2624
    sget-object v0, Lorg/apache/commons/httpclient/URI;->defaultDocumentCharsetByLocale:Ljava/lang/String;

    return-object v0
.end method

.method public static getDefaultDocumentCharsetByPlatform()Ljava/lang/String;
    .registers 1

    .line 2634
    sget-object v0, Lorg/apache/commons/httpclient/URI;->defaultDocumentCharsetByPlatform:Ljava/lang/String;

    return-object v0
.end method

.method public static getDefaultProtocolCharset()Ljava/lang/String;
    .registers 1

    .line 2543
    sget-object v0, Lorg/apache/commons/httpclient/URI;->defaultProtocolCharset:Ljava/lang/String;

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 2
    .param p1, "ois"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3628
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 3629
    return-void
.end method

.method public static setDefaultDocumentCharset(Ljava/lang/String;)V
    .registers 4
    .param p0, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URI$DefaultCharsetChanged;
        }
    .end annotation

    .line 2602
    sput-object p0, Lorg/apache/commons/httpclient/URI;->defaultDocumentCharset:Ljava/lang/String;

    .line 2603
    new-instance v0, Lorg/apache/commons/httpclient/URI$DefaultCharsetChanged;

    const/4 v1, 0x2

    const-string v2, "the default document charset changed"

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/httpclient/URI$DefaultCharsetChanged;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public static setDefaultProtocolCharset(Ljava/lang/String;)V
    .registers 4
    .param p0, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URI$DefaultCharsetChanged;
        }
    .end annotation

    .line 2522
    sput-object p0, Lorg/apache/commons/httpclient/URI;->defaultProtocolCharset:Ljava/lang/String;

    .line 2523
    new-instance v0, Lorg/apache/commons/httpclient/URI$DefaultCharsetChanged;

    const/4 v1, 0x1

    const-string v2, "the default protocol charset changed"

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/httpclient/URI$DefaultCharsetChanged;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 2
    .param p1, "oos"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3613
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 3614
    return-void
.end method


# virtual methods
.method public declared-synchronized clone()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    monitor-enter p0

    .line 3689
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/httpclient/URI;

    .line 3691
    .local v0, "instance":Lorg/apache/commons/httpclient/URI;
    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->_uri:[C

    iput-object v1, v0, Lorg/apache/commons/httpclient/URI;->_uri:[C

    .line 3692
    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->_scheme:[C

    iput-object v1, v0, Lorg/apache/commons/httpclient/URI;->_scheme:[C

    .line 3693
    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->_opaque:[C

    iput-object v1, v0, Lorg/apache/commons/httpclient/URI;->_opaque:[C

    .line 3694
    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->_authority:[C

    iput-object v1, v0, Lorg/apache/commons/httpclient/URI;->_authority:[C

    .line 3695
    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->_userinfo:[C

    iput-object v1, v0, Lorg/apache/commons/httpclient/URI;->_userinfo:[C

    .line 3696
    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->_host:[C

    iput-object v1, v0, Lorg/apache/commons/httpclient/URI;->_host:[C

    .line 3697
    iget v1, p0, Lorg/apache/commons/httpclient/URI;->_port:I

    iput v1, v0, Lorg/apache/commons/httpclient/URI;->_port:I

    .line 3698
    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->_path:[C

    iput-object v1, v0, Lorg/apache/commons/httpclient/URI;->_path:[C

    .line 3699
    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->_query:[C

    iput-object v1, v0, Lorg/apache/commons/httpclient/URI;->_query:[C

    .line 3700
    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->_fragment:[C

    iput-object v1, v0, Lorg/apache/commons/httpclient/URI;->_fragment:[C

    .line 3702
    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->protocolCharset:Ljava/lang/String;

    iput-object v1, v0, Lorg/apache/commons/httpclient/URI;->protocolCharset:Ljava/lang/String;

    .line 3704
    iget-boolean v1, p0, Lorg/apache/commons/httpclient/URI;->_is_hier_part:Z

    iput-boolean v1, v0, Lorg/apache/commons/httpclient/URI;->_is_hier_part:Z

    .line 3705
    iget-boolean v1, p0, Lorg/apache/commons/httpclient/URI;->_is_opaque_part:Z

    iput-boolean v1, v0, Lorg/apache/commons/httpclient/URI;->_is_opaque_part:Z

    .line 3706
    iget-boolean v1, p0, Lorg/apache/commons/httpclient/URI;->_is_net_path:Z

    iput-boolean v1, v0, Lorg/apache/commons/httpclient/URI;->_is_net_path:Z

    .line 3707
    iget-boolean v1, p0, Lorg/apache/commons/httpclient/URI;->_is_abs_path:Z

    iput-boolean v1, v0, Lorg/apache/commons/httpclient/URI;->_is_abs_path:Z

    .line 3708
    iget-boolean v1, p0, Lorg/apache/commons/httpclient/URI;->_is_rel_path:Z

    iput-boolean v1, v0, Lorg/apache/commons/httpclient/URI;->_is_rel_path:Z

    .line 3709
    iget-boolean v1, p0, Lorg/apache/commons/httpclient/URI;->_is_reg_name:Z

    iput-boolean v1, v0, Lorg/apache/commons/httpclient/URI;->_is_reg_name:Z

    .line 3710
    iget-boolean v1, p0, Lorg/apache/commons/httpclient/URI;->_is_server:Z

    iput-boolean v1, v0, Lorg/apache/commons/httpclient/URI;->_is_server:Z

    .line 3711
    iget-boolean v1, p0, Lorg/apache/commons/httpclient/URI;->_is_hostname:Z

    iput-boolean v1, v0, Lorg/apache/commons/httpclient/URI;->_is_hostname:Z

    .line 3712
    iget-boolean v1, p0, Lorg/apache/commons/httpclient/URI;->_is_IPv4address:Z

    iput-boolean v1, v0, Lorg/apache/commons/httpclient/URI;->_is_IPv4address:Z

    .line 3713
    iget-boolean v1, p0, Lorg/apache/commons/httpclient/URI;->_is_IPv6reference:Z

    iput-boolean v1, v0, Lorg/apache/commons/httpclient/URI;->_is_IPv6reference:Z
    :try_end_5b
    .catchall {:try_start_1 .. :try_end_5b} :catchall_5d

    .line 3715
    monitor-exit p0

    return-object v0

    .line 3688
    .end local v0    # "instance":Lorg/apache/commons/httpclient/URI;
    :catchall_5d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .line 3668
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/httpclient/URI;

    .line 3669
    .local v0, "another":Lorg/apache/commons/httpclient/URI;
    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->_authority:[C

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/URI;->getRawAuthority()[C

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/httpclient/URI;->equals([C[C)Z

    move-result v1

    if-nez v1, :cond_11

    .line 3670
    const/4 v1, -0x1

    return v1

    .line 3672
    :cond_11
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 3567
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 3568
    return v0

    .line 3570
    :cond_4
    instance-of v1, p1, Lorg/apache/commons/httpclient/URI;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 3571
    return v2

    .line 3573
    :cond_a
    move-object v1, p1

    check-cast v1, Lorg/apache/commons/httpclient/URI;

    .line 3575
    .local v1, "another":Lorg/apache/commons/httpclient/URI;
    iget-object v3, p0, Lorg/apache/commons/httpclient/URI;->_scheme:[C

    iget-object v4, v1, Lorg/apache/commons/httpclient/URI;->_scheme:[C

    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/httpclient/URI;->equals([C[C)Z

    move-result v3

    if-nez v3, :cond_18

    .line 3576
    return v2

    .line 3579
    :cond_18
    iget-object v3, p0, Lorg/apache/commons/httpclient/URI;->_opaque:[C

    iget-object v4, v1, Lorg/apache/commons/httpclient/URI;->_opaque:[C

    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/httpclient/URI;->equals([C[C)Z

    move-result v3

    if-nez v3, :cond_23

    .line 3580
    return v2

    .line 3584
    :cond_23
    iget-object v3, p0, Lorg/apache/commons/httpclient/URI;->_authority:[C

    iget-object v4, v1, Lorg/apache/commons/httpclient/URI;->_authority:[C

    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/httpclient/URI;->equals([C[C)Z

    move-result v3

    if-nez v3, :cond_2e

    .line 3585
    return v2

    .line 3588
    :cond_2e
    iget-object v3, p0, Lorg/apache/commons/httpclient/URI;->_path:[C

    iget-object v4, v1, Lorg/apache/commons/httpclient/URI;->_path:[C

    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/httpclient/URI;->equals([C[C)Z

    move-result v3

    if-nez v3, :cond_39

    .line 3589
    return v2

    .line 3592
    :cond_39
    iget-object v3, p0, Lorg/apache/commons/httpclient/URI;->_query:[C

    iget-object v4, v1, Lorg/apache/commons/httpclient/URI;->_query:[C

    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/httpclient/URI;->equals([C[C)Z

    move-result v3

    if-nez v3, :cond_44

    .line 3593
    return v2

    .line 3596
    :cond_44
    iget-object v3, p0, Lorg/apache/commons/httpclient/URI;->_fragment:[C

    iget-object v4, v1, Lorg/apache/commons/httpclient/URI;->_fragment:[C

    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/httpclient/URI;->equals([C[C)Z

    move-result v3

    if-nez v3, :cond_4f

    .line 3597
    return v2

    .line 3599
    :cond_4f
    return v0
.end method

.method protected equals([C[C)Z
    .registers 8
    .param p1, "first"    # [C
    .param p2, "second"    # [C

    .line 3540
    const/4 v0, 0x1

    if-nez p1, :cond_6

    if-nez p2, :cond_6

    .line 3541
    return v0

    .line 3543
    :cond_6
    const/4 v1, 0x0

    if-eqz p1, :cond_20

    if-nez p2, :cond_c

    goto :goto_20

    .line 3546
    :cond_c
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_11

    .line 3547
    return v1

    .line 3549
    :cond_11
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    array-length v3, p1

    if-ge v2, v3, :cond_1f

    .line 3550
    aget-char v3, p1, v2

    aget-char v4, p2, v2

    if-eq v3, v4, :cond_1c

    .line 3551
    return v1

    .line 3549
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 3554
    .end local v2    # "i":I
    :cond_1f
    return v0

    .line 3544
    :cond_20
    :goto_20
    return v1
.end method

.method public getAboveHierPath()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 3063
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->getRawAboveHierPath()[C

    move-result-object v0

    .line 3064
    .local v0, "path":[C
    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_10

    :cond_8
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->getProtocolCharset()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/URI;->decode([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_10
    return-object v1
.end method

.method public getAuthority()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 2725
    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_authority:[C

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_10

    :cond_6
    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_authority:[C

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->getProtocolCharset()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/URI;->decode([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_10
    return-object v0
.end method

.method public getCurrentHierPath()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 3026
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->getRawCurrentHierPath()[C

    move-result-object v0

    .line 3027
    .local v0, "path":[C
    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_10

    :cond_8
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->getProtocolCharset()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/URI;->decode([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_10
    return-object v1
.end method

.method public getEscapedAboveHierPath()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 3050
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->getRawAboveHierPath()[C

    move-result-object v0

    .line 3051
    .local v0, "path":[C
    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_d

    :cond_8
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    :goto_d
    return-object v1
.end method

.method public getEscapedAuthority()Ljava/lang/String;
    .registers 3

    .line 2714
    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_authority:[C

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_d

    :cond_6
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->_authority:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    :goto_d
    return-object v0
.end method

.method public getEscapedCurrentHierPath()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 3013
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->getRawCurrentHierPath()[C

    move-result-object v0

    .line 3014
    .local v0, "path":[C
    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_d

    :cond_8
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    :goto_d
    return-object v1
.end method

.method public getEscapedFragment()Ljava/lang/String;
    .registers 3

    .line 3392
    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_fragment:[C

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_d

    :cond_6
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->_fragment:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    :goto_d
    return-object v0
.end method

.method public getEscapedName()Ljava/lang/String;
    .registers 3

    .line 3142
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->getRawName()[C

    move-result-object v0

    .line 3143
    .local v0, "basename":[C
    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_d

    :cond_8
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    :goto_d
    return-object v1
.end method

.method public getEscapedPath()Ljava/lang/String;
    .registers 3

    .line 3092
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->getRawPath()[C

    move-result-object v0

    .line 3093
    .local v0, "path":[C
    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_d

    :cond_8
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    :goto_d
    return-object v1
.end method

.method public getEscapedPathQuery()Ljava/lang/String;
    .registers 3

    .line 3191
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->getRawPathQuery()[C

    move-result-object v0

    .line 3192
    .local v0, "rawPathQuery":[C
    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_d

    :cond_8
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    :goto_d
    return-object v1
.end method

.method public getEscapedQuery()Ljava/lang/String;
    .registers 3

    .line 3294
    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_query:[C

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_d

    :cond_6
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->_query:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    :goto_d
    return-object v0
.end method

.method public getEscapedURI()Ljava/lang/String;
    .registers 3

    .line 3747
    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_uri:[C

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_d

    :cond_6
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->_uri:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    :goto_d
    return-object v0
.end method

.method public getEscapedURIReference()Ljava/lang/String;
    .registers 3

    .line 3788
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->getRawURIReference()[C

    move-result-object v0

    .line 3789
    .local v0, "uriReference":[C
    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_d

    :cond_8
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    :goto_d
    return-object v1
.end method

.method public getEscapedUserinfo()Ljava/lang/String;
    .registers 3

    .line 2749
    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_userinfo:[C

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_d

    :cond_6
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->_userinfo:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    :goto_d
    return-object v0
.end method

.method public getFragment()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 3405
    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_fragment:[C

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_10

    :cond_6
    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_fragment:[C

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->getProtocolCharset()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/URI;->decode([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_10
    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 2792
    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_host:[C

    if-eqz v0, :cond_f

    .line 2793
    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_host:[C

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->getProtocolCharset()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/URI;->decode([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2795
    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 3156
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->getRawName()[C

    move-result-object v0

    .line 3157
    .local v0, "basename":[C
    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_14

    :cond_8
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->getRawName()[C

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->getProtocolCharset()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/commons/httpclient/URI;->decode([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_14
    return-object v1
.end method

.method public getPath()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 3107
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->getRawPath()[C

    move-result-object v0

    .line 3108
    .local v0, "path":[C
    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_10

    :cond_8
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->getProtocolCharset()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/URI;->decode([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_10
    return-object v1
.end method

.method public getPathQuery()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 3205
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->getRawPathQuery()[C

    move-result-object v0

    .line 3206
    .local v0, "rawPathQuery":[C
    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_10

    :cond_8
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->getProtocolCharset()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/URI;->decode([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_10
    return-object v1
.end method

.method public getPort()I
    .registers 2

    .line 2811
    iget v0, p0, Lorg/apache/commons/httpclient/URI;->_port:I

    return v0
.end method

.method public getProtocolCharset()Ljava/lang/String;
    .registers 2

    .line 2556
    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->protocolCharset:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->protocolCharset:Ljava/lang/String;

    goto :goto_9

    :cond_7
    sget-object v0, Lorg/apache/commons/httpclient/URI;->defaultProtocolCharset:Ljava/lang/String;

    :goto_9
    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 3307
    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_query:[C

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_10

    :cond_6
    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_query:[C

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->getProtocolCharset()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/URI;->decode([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_10
    return-object v0
.end method

.method public getRawAboveHierPath()[C
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 3038
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->getRawCurrentHierPath()[C

    move-result-object v0

    .line 3039
    .local v0, "path":[C
    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/URI;->getRawCurrentHierPath([C)[C

    move-result-object v1

    :goto_c
    return-object v1
.end method

.method public getRawAuthority()[C
    .registers 2

    .line 2704
    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_authority:[C

    return-object v0
.end method

.method public getRawCurrentHierPath()[C
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 3002
    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_path:[C

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_path:[C

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/URI;->getRawCurrentHierPath([C)[C

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method protected getRawCurrentHierPath([C)[C
    .registers 6
    .param p1, "path"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 2976
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/URI;->_is_opaque_part:Z

    const/4 v1, 0x1

    if-nez v0, :cond_33

    .line 2979
    if-eqz p1, :cond_2b

    .line 2982
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    .line 2983
    .local v0, "buff":Ljava/lang/String;
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 2984
    .local v2, "first":I
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 2985
    .local v1, "last":I
    if-nez v1, :cond_1b

    .line 2986
    sget-object v3, Lorg/apache/commons/httpclient/URI;->rootPath:[C

    return-object v3

    .line 2987
    :cond_1b
    if-eq v2, v1, :cond_2a

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2a

    .line 2988
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    return-object v3

    .line 2991
    :cond_2a
    return-object p1

    .line 2980
    .end local v0    # "buff":Ljava/lang/String;
    .end local v1    # "last":I
    .end local v2    # "first":I
    :cond_2b
    new-instance v0, Lorg/apache/commons/httpclient/URIException;

    const-string v2, "empty path"

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/httpclient/URIException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 2977
    :cond_33
    new-instance v0, Lorg/apache/commons/httpclient/URIException;

    const-string v2, "no hierarchy level"

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/httpclient/URIException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public getRawFragment()[C
    .registers 2

    .line 3382
    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_fragment:[C

    return-object v0
.end method

.method public getRawHost()[C
    .registers 2

    .line 2777
    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_host:[C

    return-object v0
.end method

.method public getRawName()[C
    .registers 6

    .line 3118
    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_path:[C

    if-nez v0, :cond_6

    .line 3119
    const/4 v0, 0x0

    return-object v0

    .line 3122
    :cond_6
    const/4 v0, 0x0

    .line 3123
    .local v0, "at":I
    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->_path:[C

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_c
    if-ltz v1, :cond_1c

    .line 3124
    iget-object v2, p0, Lorg/apache/commons/httpclient/URI;->_path:[C

    aget-char v2, v2, v1

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_19

    .line 3125
    add-int/lit8 v0, v1, 0x1

    .line 3126
    goto :goto_1c

    .line 3123
    :cond_19
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 3129
    .end local v1    # "i":I
    :cond_1c
    :goto_1c
    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->_path:[C

    array-length v1, v1

    sub-int/2addr v1, v0

    .line 3130
    .local v1, "len":I
    new-array v2, v1, [C

    .line 3131
    .local v2, "basename":[C
    iget-object v3, p0, Lorg/apache/commons/httpclient/URI;->_path:[C

    const/4 v4, 0x0

    invoke-static {v3, v0, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3132
    return-object v2
.end method

.method public getRawPath()[C
    .registers 2

    .line 3077
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/URI;->_is_opaque_part:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_opaque:[C

    goto :goto_9

    :cond_7
    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_path:[C

    :goto_9
    return-object v0
.end method

.method public getRawPathQuery()[C
    .registers 3

    .line 3170
    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_path:[C

    if-nez v0, :cond_a

    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_query:[C

    if-nez v0, :cond_a

    .line 3171
    const/4 v0, 0x0

    return-object v0

    .line 3173
    :cond_a
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 3174
    .local v0, "buff":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->_path:[C

    if-eqz v1, :cond_18

    .line 3175
    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->_path:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 3177
    :cond_18
    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->_query:[C

    if-eqz v1, :cond_26

    .line 3178
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 3179
    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->_query:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 3181
    :cond_26
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    return-object v1
.end method

.method public getRawQuery()[C
    .registers 2

    .line 3284
    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_query:[C

    return-object v0
.end method

.method public getRawScheme()[C
    .registers 2

    .line 2645
    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_scheme:[C

    return-object v0
.end method

.method public getRawURI()[C
    .registers 2

    .line 3736
    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_uri:[C

    return-object v0
.end method

.method public getRawURIReference()[C
    .registers 4

    .line 3770
    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_fragment:[C

    if-nez v0, :cond_7

    .line 3771
    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_uri:[C

    return-object v0

    .line 3773
    :cond_7
    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_uri:[C

    if-nez v0, :cond_e

    .line 3774
    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_fragment:[C

    return-object v0

    .line 3777
    :cond_e
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/commons/httpclient/URI;->_uri:[C

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/commons/httpclient/URI;->_fragment:[C

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3778
    .local v0, "uriReference":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    return-object v1
.end method

.method public getRawUserinfo()[C
    .registers 2

    .line 2738
    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_userinfo:[C

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .registers 3

    .line 2656
    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_scheme:[C

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_d

    :cond_6
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->_scheme:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    :goto_d
    return-object v0
.end method

.method public getURI()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 3760
    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_uri:[C

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_10

    :cond_6
    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_uri:[C

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->getProtocolCharset()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/URI;->decode([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_10
    return-object v0
.end method

.method public getURIReference()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 3800
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->getRawURIReference()[C

    move-result-object v0

    .line 3801
    .local v0, "uriReference":[C
    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_10

    :cond_8
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->getProtocolCharset()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/URI;->decode([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_10
    return-object v1
.end method

.method public getUserinfo()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 2761
    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_userinfo:[C

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_10

    :cond_6
    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_userinfo:[C

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->getProtocolCharset()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/URI;->decode([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_10
    return-object v0
.end method

.method public hasAuthority()Z
    .registers 2

    .line 2391
    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_authority:[C

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lorg/apache/commons/httpclient/URI;->_is_net_path:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public hasFragment()Z
    .registers 2

    .line 2470
    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_fragment:[C

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public hasQuery()Z
    .registers 2

    .line 2460
    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_query:[C

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public hasUserinfo()Z
    .registers 2

    .line 2420
    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_userinfo:[C

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public hashCode()I
    .registers 6

    .line 3639
    iget v0, p0, Lorg/apache/commons/httpclient/URI;->hash:I

    if-nez v0, :cond_2c

    .line 3640
    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_uri:[C

    .line 3641
    .local v0, "c":[C
    if-eqz v0, :cond_18

    .line 3642
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, v0

    .local v2, "len":I
    :goto_a
    if-ge v1, v2, :cond_18

    .line 3643
    iget v3, p0, Lorg/apache/commons/httpclient/URI;->hash:I

    mul-int/lit8 v3, v3, 0x1f

    aget-char v4, v0, v1

    add-int/2addr v3, v4

    iput v3, p0, Lorg/apache/commons/httpclient/URI;->hash:I

    .line 3642
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 3646
    .end local v1    # "i":I
    .end local v2    # "len":I
    :cond_18
    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_fragment:[C

    .line 3647
    if-eqz v0, :cond_2c

    .line 3648
    const/4 v1, 0x0

    .restart local v1    # "i":I
    array-length v2, v0

    .restart local v2    # "len":I
    :goto_1e
    if-ge v1, v2, :cond_2c

    .line 3649
    iget v3, p0, Lorg/apache/commons/httpclient/URI;->hash:I

    mul-int/lit8 v3, v3, 0x1f

    aget-char v4, v0, v1

    add-int/2addr v3, v4

    iput v3, p0, Lorg/apache/commons/httpclient/URI;->hash:I

    .line 3648
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 3653
    .end local v0    # "c":[C
    .end local v1    # "i":I
    .end local v2    # "len":I
    :cond_2c
    iget v0, p0, Lorg/apache/commons/httpclient/URI;->hash:I

    return v0
.end method

.method protected indexFirstOf(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "delims"    # Ljava/lang/String;

    .line 2088
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/httpclient/URI;->indexFirstOf(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected indexFirstOf(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 9
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "delims"    # Ljava/lang/String;
    .param p3, "offset"    # I

    .line 2102
    const/4 v0, -0x1

    if-eqz p1, :cond_42

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_42

    .line 2105
    :cond_a
    if-eqz p2, :cond_41

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_13

    goto :goto_41

    .line 2109
    :cond_13
    if-gez p3, :cond_17

    .line 2110
    const/4 p3, 0x0

    goto :goto_1e

    .line 2111
    :cond_17
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le p3, v1, :cond_1e

    .line 2112
    return v0

    .line 2115
    :cond_1e
    :goto_1e
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 2116
    .local v1, "min":I
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 2117
    .local v2, "delim":[C
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_27
    array-length v4, v2

    if-ge v3, v4, :cond_38

    .line 2118
    aget-char v4, v2, v3

    invoke-virtual {p1, v4, p3}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 2119
    .local v4, "at":I
    if-ltz v4, :cond_35

    if-ge v4, v1, :cond_35

    .line 2120
    move v1, v4

    .line 2117
    .end local v4    # "at":I
    :cond_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    .line 2123
    .end local v3    # "i":I
    :cond_38
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v1, v3, :cond_3f

    goto :goto_40

    :cond_3f
    move v0, v1

    :goto_40
    return v0

    .line 2106
    .end local v1    # "min":I
    .end local v2    # "delim":[C
    :cond_41
    :goto_41
    return v0

    .line 2103
    :cond_42
    :goto_42
    return v0
.end method

.method protected indexFirstOf([CC)I
    .registers 4
    .param p1, "s"    # [C
    .param p2, "delim"    # C

    .line 2136
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/httpclient/URI;->indexFirstOf([CCI)I

    move-result v0

    return v0
.end method

.method protected indexFirstOf([CCI)I
    .registers 7
    .param p1, "s"    # [C
    .param p2, "delim"    # C
    .param p3, "offset"    # I

    .line 2150
    const/4 v0, -0x1

    if-eqz p1, :cond_1c

    array-length v1, p1

    if-nez v1, :cond_7

    goto :goto_1c

    .line 2154
    :cond_7
    if-gez p3, :cond_b

    .line 2155
    const/4 p3, 0x0

    goto :goto_f

    .line 2156
    :cond_b
    array-length v1, p1

    if-le p3, v1, :cond_f

    .line 2157
    return v0

    .line 2159
    :cond_f
    :goto_f
    move v1, p3

    .local v1, "i":I
    :goto_10
    array-length v2, p1

    if-ge v1, v2, :cond_1b

    .line 2160
    aget-char v2, p1, v1

    if-ne v2, p2, :cond_18

    .line 2161
    return v1

    .line 2159
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 2164
    .end local v1    # "i":I
    :cond_1b
    return v0

    .line 2151
    :cond_1c
    :goto_1c
    return v0
.end method

.method public isAbsPath()Z
    .registers 2

    .line 2369
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/URI;->_is_abs_path:Z

    return v0
.end method

.method public isAbsoluteURI()Z
    .registers 2

    .line 2317
    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_scheme:[C

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isHierPart()Z
    .registers 2

    .line 2337
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/URI;->_is_hier_part:Z

    return v0
.end method

.method public isHostname()Z
    .registers 2

    .line 2430
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/URI;->_is_hostname:Z

    return v0
.end method

.method public isIPv4address()Z
    .registers 2

    .line 2440
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/URI;->_is_IPv4address:Z

    return v0
.end method

.method public isIPv6reference()Z
    .registers 2

    .line 2450
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/URI;->_is_IPv6reference:Z

    return v0
.end method

.method public isNetPath()Z
    .registers 2

    .line 2359
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/URI;->_is_net_path:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_authority:[C

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public isOpaquePart()Z
    .registers 2

    .line 2347
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/URI;->_is_opaque_part:Z

    return v0
.end method

.method public isRegName()Z
    .registers 2

    .line 2400
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/URI;->_is_reg_name:Z

    return v0
.end method

.method public isRelPath()Z
    .registers 2

    .line 2379
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/URI;->_is_rel_path:Z

    return v0
.end method

.method public isRelativeURI()Z
    .registers 2

    .line 2327
    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_scheme:[C

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isServer()Z
    .registers 2

    .line 2410
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/URI;->_is_server:Z

    return v0
.end method

.method public normalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 3524
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->isAbsPath()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3525
    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_path:[C

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/URI;->normalize([C)[C

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_path:[C

    .line 3526
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->setURI()V

    .line 3528
    :cond_11
    return-void
.end method

.method protected normalize([C)[C
    .registers 10
    .param p1, "path"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 3442
    if-nez p1, :cond_4

    .line 3443
    const/4 v0, 0x0

    return-object v0

    .line 3446
    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    .line 3449
    .local v0, "normalized":Ljava/lang/String;
    const-string v1, "./"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    .line 3450
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_31

    .line 3451
    :cond_17
    const-string v1, "../"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x2

    if-eqz v1, :cond_25

    .line 3452
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_31

    .line 3453
    :cond_25
    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 3454
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 3458
    :cond_31
    :goto_31
    const/4 v1, -0x1

    move-object v3, v0

    const/4 v0, -0x1

    .line 3459
    .local v0, "index":I
    .local v3, "normalized":Ljava/lang/String;
    :goto_34
    const-string v4, "/./"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    move v0, v4

    const/4 v5, 0x0

    if-eq v4, v1, :cond_58

    .line 3460
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v0, 0x2

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_34

    .line 3464
    :cond_58
    const-string v4, "/."

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_69

    .line 3465
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 3468
    :cond_69
    move v2, v0

    const/4 v0, 0x0

    .line 3475
    .local v0, "startIndex":I
    .local v2, "index":I
    :goto_6b
    const-string v4, "/../"

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    move v2, v4

    const/16 v6, 0x2f

    if-eq v4, v1, :cond_9b

    .line 3476
    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v4

    .line 3477
    .local v4, "slashIndex":I
    if-ltz v4, :cond_98

    .line 3478
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v7, v2, 0x3

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_9a

    .line 3480
    :cond_98
    add-int/lit8 v0, v2, 0x3

    .line 3482
    .end local v4    # "slashIndex":I
    :goto_9a
    goto :goto_6b

    .line 3483
    :cond_9b
    const-string v4, "/.."

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b5

    .line 3484
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v4

    .line 3485
    .restart local v4    # "slashIndex":I
    if-ltz v4, :cond_b5

    .line 3486
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 3495
    .end local v4    # "slashIndex":I
    :cond_b5
    :goto_b5
    const-string v4, "/../"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    move v2, v4

    if-eq v4, v1, :cond_ce

    .line 3496
    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v4

    .line 3497
    .restart local v4    # "slashIndex":I
    if-ltz v4, :cond_c7

    .line 3498
    goto :goto_ce

    .line 3500
    :cond_c7
    add-int/lit8 v5, v2, 0x3

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 3502
    .end local v4    # "slashIndex":I
    goto :goto_b5

    .line 3503
    :cond_ce
    :goto_ce
    const-string v1, "/.."

    invoke-virtual {v3, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e4

    .line 3504
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {v3, v6, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    .line 3505
    .local v1, "slashIndex":I
    if-gez v1, :cond_e4

    .line 3506
    const-string v3, "/"

    .line 3510
    .end local v1    # "slashIndex":I
    :cond_e4
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    return-object v1
.end method

.method protected parseAuthority(Ljava/lang/String;Z)V
    .registers 14
    .param p1, "original"    # Ljava/lang/String;
    .param p2, "escaped"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 2179
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/URI;->_is_IPv6reference:Z

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/URI;->_is_IPv4address:Z

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/URI;->_is_hostname:Z

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/URI;->_is_server:Z

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/URI;->_is_reg_name:Z

    .line 2183
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->getProtocolCharset()Ljava/lang/String;

    move-result-object v1

    .line 2185
    .local v1, "charset":Ljava/lang/String;
    const/4 v2, 0x1

    .line 2186
    .local v2, "hasPort":Z
    const/4 v3, 0x0

    .line 2187
    .local v3, "from":I
    const/16 v4, 0x40

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 2188
    .local v5, "next":I
    const/4 v6, -0x1

    if-eq v5, v6, :cond_33

    .line 2190
    if-eqz p2, :cond_25

    invoke-virtual {p1, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    goto :goto_2f

    :cond_25
    invoke-virtual {p1, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lorg/apache/commons/httpclient/URI;->allowed_userinfo:Ljava/util/BitSet;

    invoke-static {v7, v8, v1}, Lorg/apache/commons/httpclient/URI;->encode(Ljava/lang/String;Ljava/util/BitSet;Ljava/lang/String;)[C

    move-result-object v7

    :goto_2f
    iput-object v7, p0, Lorg/apache/commons/httpclient/URI;->_userinfo:[C

    .line 2193
    add-int/lit8 v3, v5, 0x1

    .line 2195
    :cond_33
    const/16 v7, 0x5b

    invoke-virtual {p1, v7, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 2196
    const/16 v7, 0x3a

    const/4 v8, 0x1

    if-lt v5, v3, :cond_69

    .line 2197
    const/16 v9, 0x5d

    invoke-virtual {p1, v9, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 2198
    if-eq v5, v6, :cond_61

    .line 2201
    add-int/2addr v5, v8

    .line 2204
    if-eqz p2, :cond_52

    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    move-result-object v9

    goto :goto_5c

    :cond_52
    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lorg/apache/commons/httpclient/URI;->allowed_IPv6reference:Ljava/util/BitSet;

    invoke-static {v9, v10, v1}, Lorg/apache/commons/httpclient/URI;->encode(Ljava/lang/String;Ljava/util/BitSet;Ljava/lang/String;)[C

    move-result-object v9

    :goto_5c
    iput-object v9, p0, Lorg/apache/commons/httpclient/URI;->_host:[C

    .line 2208
    iput-boolean v8, p0, Lorg/apache/commons/httpclient/URI;->_is_IPv6reference:Z

    goto :goto_9a

    .line 2199
    :cond_61
    new-instance v0, Lorg/apache/commons/httpclient/URIException;

    const-string v4, "IPv6reference"

    invoke-direct {v0, v8, v4}, Lorg/apache/commons/httpclient/URIException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 2210
    :cond_69
    invoke-virtual {p1, v7, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 2211
    if-ne v5, v6, :cond_74

    .line 2212
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 2213
    const/4 v2, 0x0

    .line 2216
    :cond_74
    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    move-result-object v9

    iput-object v9, p0, Lorg/apache/commons/httpclient/URI;->_host:[C

    .line 2217
    iget-object v9, p0, Lorg/apache/commons/httpclient/URI;->_host:[C

    sget-object v10, Lorg/apache/commons/httpclient/URI;->IPv4address:Ljava/util/BitSet;

    invoke-virtual {p0, v9, v10}, Lorg/apache/commons/httpclient/URI;->validate([CLjava/util/BitSet;)Z

    move-result v9

    if-eqz v9, :cond_8b

    .line 2219
    iput-boolean v8, p0, Lorg/apache/commons/httpclient/URI;->_is_IPv4address:Z

    goto :goto_9a

    .line 2220
    :cond_8b
    iget-object v9, p0, Lorg/apache/commons/httpclient/URI;->_host:[C

    sget-object v10, Lorg/apache/commons/httpclient/URI;->hostname:Ljava/util/BitSet;

    invoke-virtual {p0, v9, v10}, Lorg/apache/commons/httpclient/URI;->validate([CLjava/util/BitSet;)Z

    move-result v9

    if-eqz v9, :cond_98

    .line 2222
    iput-boolean v8, p0, Lorg/apache/commons/httpclient/URI;->_is_hostname:Z

    goto :goto_9a

    .line 2225
    :cond_98
    iput-boolean v8, p0, Lorg/apache/commons/httpclient/URI;->_is_reg_name:Z

    .line 2228
    :goto_9a
    iget-boolean v9, p0, Lorg/apache/commons/httpclient/URI;->_is_reg_name:Z

    if-eqz v9, :cond_ca

    .line 2230
    iput-boolean v0, p0, Lorg/apache/commons/httpclient/URI;->_is_IPv6reference:Z

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/URI;->_is_IPv4address:Z

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/URI;->_is_hostname:Z

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/URI;->_is_server:Z

    .line 2233
    if-eqz p2, :cond_c1

    .line 2234
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_authority:[C

    .line 2235
    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_authority:[C

    sget-object v4, Lorg/apache/commons/httpclient/URI;->reg_name:Ljava/util/BitSet;

    invoke-virtual {p0, v0, v4}, Lorg/apache/commons/httpclient/URI;->validate([CLjava/util/BitSet;)Z

    move-result v0

    if-eqz v0, :cond_b9

    goto :goto_123

    .line 2236
    :cond_b9
    new-instance v0, Lorg/apache/commons/httpclient/URIException;

    const-string v4, "Invalid authority"

    invoke-direct {v0, v4}, Lorg/apache/commons/httpclient/URIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2239
    :cond_c1
    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_reg_name:Ljava/util/BitSet;

    invoke-static {p1, v0, v1}, Lorg/apache/commons/httpclient/URI;->encode(Ljava/lang/String;Ljava/util/BitSet;Ljava/lang/String;)[C

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_authority:[C

    goto :goto_123

    .line 2242
    :cond_ca
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v8

    if-le v0, v5, :cond_f1

    if-eqz v2, :cond_f1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v7, :cond_f1

    .line 2244
    add-int/lit8 v0, v5, 0x1

    .line 2246
    .end local v3    # "from":I
    .local v0, "from":I
    :try_start_db
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lorg/apache/commons/httpclient/URI;->_port:I
    :try_end_e5
    .catch Ljava/lang/NumberFormatException; {:try_start_db .. :try_end_e5} :catch_e8

    .line 2250
    nop

    .line 2253
    move v3, v0

    goto :goto_f1

    .line 2247
    :catch_e8
    move-exception v3

    .line 2248
    .local v3, "error":Ljava/lang/NumberFormatException;
    new-instance v4, Lorg/apache/commons/httpclient/URIException;

    const-string v6, "invalid port number"

    invoke-direct {v4, v8, v6}, Lorg/apache/commons/httpclient/URIException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 2253
    .end local v0    # "from":I
    .local v3, "from":I
    :cond_f1
    :goto_f1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2254
    .local v0, "buf":Ljava/lang/StringBuffer;
    iget-object v9, p0, Lorg/apache/commons/httpclient/URI;->_userinfo:[C

    if-eqz v9, :cond_102

    .line 2255
    iget-object v9, p0, Lorg/apache/commons/httpclient/URI;->_userinfo:[C

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 2256
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2258
    :cond_102
    iget-object v4, p0, Lorg/apache/commons/httpclient/URI;->_host:[C

    if-eqz v4, :cond_117

    .line 2259
    iget-object v4, p0, Lorg/apache/commons/httpclient/URI;->_host:[C

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 2260
    iget v4, p0, Lorg/apache/commons/httpclient/URI;->_port:I

    if-eq v4, v6, :cond_117

    .line 2261
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2262
    iget v4, p0, Lorg/apache/commons/httpclient/URI;->_port:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 2265
    :cond_117
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/httpclient/URI;->_authority:[C

    .line 2267
    iput-boolean v8, p0, Lorg/apache/commons/httpclient/URI;->_is_server:Z

    .line 2269
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    :goto_123
    return-void
.end method

.method protected parseUriReference(Ljava/lang/String;Z)V
    .registers 16
    .param p1, "original"    # Ljava/lang/String;
    .param p2, "escaped"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 1881
    if-eqz p1, :cond_1da

    .line 1888
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1894
    .local v0, "tmp":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1899
    .local v1, "length":I
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_3b

    .line 1900
    new-array v4, v3, [C

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aput-char v5, v4, v2

    .line 1901
    .local v4, "firstDelimiter":[C
    sget-object v5, Lorg/apache/commons/httpclient/URI;->delims:Ljava/util/BitSet;

    invoke-virtual {p0, v4, v5}, Lorg/apache/commons/httpclient/URI;->validate([CLjava/util/BitSet;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 1902
    const/4 v5, 0x2

    if-lt v1, v5, :cond_3b

    .line 1903
    new-array v5, v3, [C

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aput-char v6, v5, v2

    .line 1904
    .local v5, "lastDelimiter":[C
    sget-object v6, Lorg/apache/commons/httpclient/URI;->delims:Ljava/util/BitSet;

    invoke-virtual {p0, v5, v6}, Lorg/apache/commons/httpclient/URI;->validate([CLjava/util/BitSet;)Z

    move-result v6

    if-eqz v6, :cond_3b

    .line 1905
    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1906
    add-int/lit8 v1, v1, -0x2

    .line 1915
    .end local v4    # "firstDelimiter":[C
    .end local v5    # "lastDelimiter":[C
    :cond_3b
    const/4 v4, 0x0

    .line 1920
    .local v4, "from":I
    const/4 v5, 0x0

    .line 1921
    .local v5, "isStartedFromPath":Z
    const/16 v6, 0x3a

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 1922
    .local v7, "atColon":I
    const/16 v8, 0x2f

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .line 1923
    .local v9, "atSlash":I
    if-gtz v7, :cond_53

    const-string v10, "//"

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_57

    :cond_53
    if-ltz v9, :cond_58

    if-ge v9, v7, :cond_58

    .line 1925
    :cond_57
    const/4 v5, 0x1

    .line 1934
    :cond_58
    if-eqz v5, :cond_5d

    const-string v10, "/?#"

    goto :goto_5f

    :cond_5d
    const-string v10, ":/?#"

    :goto_5f
    invoke-virtual {p0, v0, v10, v4}, Lorg/apache/commons/httpclient/URI;->indexFirstOf(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v10

    .line 1935
    .local v10, "at":I
    const/4 v11, -0x1

    if-ne v10, v11, :cond_67

    .line 1936
    const/4 v10, 0x0

    .line 1947
    :cond_67
    if-lez v10, :cond_93

    if-ge v10, v1, :cond_93

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-ne v12, v6, :cond_93

    .line 1948
    invoke-virtual {v0, v2, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    .line 1949
    .local v6, "target":[C
    sget-object v12, Lorg/apache/commons/httpclient/URI;->scheme:Ljava/util/BitSet;

    invoke-virtual {p0, v6, v12}, Lorg/apache/commons/httpclient/URI;->validate([CLjava/util/BitSet;)Z

    move-result v12

    if-eqz v12, :cond_8b

    .line 1950
    iput-object v6, p0, Lorg/apache/commons/httpclient/URI;->_scheme:[C

    .line 1954
    add-int/lit8 v10, v10, 0x1

    move v4, v10

    goto :goto_93

    .line 1952
    :cond_8b
    new-instance v2, Lorg/apache/commons/httpclient/URIException;

    const-string v3, "incorrect scheme"

    invoke-direct {v2, v3}, Lorg/apache/commons/httpclient/URIException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1966
    .end local v6    # "target":[C
    :cond_93
    :goto_93
    iput-boolean v2, p0, Lorg/apache/commons/httpclient/URI;->_is_hier_part:Z

    iput-boolean v2, p0, Lorg/apache/commons/httpclient/URI;->_is_rel_path:Z

    iput-boolean v2, p0, Lorg/apache/commons/httpclient/URI;->_is_abs_path:Z

    iput-boolean v2, p0, Lorg/apache/commons/httpclient/URI;->_is_net_path:Z

    .line 1967
    if-ltz v10, :cond_e5

    if-ge v10, v1, :cond_e5

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v8, :cond_e5

    .line 1969
    iput-boolean v3, p0, Lorg/apache/commons/httpclient/URI;->_is_hier_part:Z

    .line 1970
    add-int/lit8 v2, v10, 0x2

    if-ge v2, v1, :cond_e1

    add-int/lit8 v2, v10, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v8, :cond_e1

    if-nez v5, :cond_e1

    .line 1973
    const-string v2, "/?#"

    add-int/lit8 v6, v10, 0x2

    invoke-virtual {p0, v0, v2, v6}, Lorg/apache/commons/httpclient/URI;->indexFirstOf(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 1974
    .local v2, "next":I
    if-ne v2, v11, :cond_d3

    .line 1975
    add-int/lit8 v6, v10, 0x2

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_ce

    add-int/lit8 v6, v10, 0x2

    goto :goto_d2

    :cond_ce
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    :goto_d2
    move v2, v6

    .line 1978
    :cond_d3
    add-int/lit8 v6, v10, 0x2

    invoke-virtual {v0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, p2}, Lorg/apache/commons/httpclient/URI;->parseAuthority(Ljava/lang/String;Z)V

    .line 1979
    move v6, v2

    .end local v10    # "at":I
    .local v6, "at":I
    move v4, v2

    .line 1981
    iput-boolean v3, p0, Lorg/apache/commons/httpclient/URI;->_is_net_path:Z

    .line 1983
    move v10, v6

    .end local v2    # "next":I
    .end local v6    # "at":I
    .restart local v10    # "at":I
    :cond_e1
    if-ne v4, v10, :cond_e5

    .line 1985
    iput-boolean v3, p0, Lorg/apache/commons/httpclient/URI;->_is_abs_path:Z

    .line 1997
    :cond_e5
    if-ge v4, v1, :cond_152

    .line 1999
    const-string v2, "?#"

    invoke-virtual {p0, v0, v2, v4}, Lorg/apache/commons/httpclient/URI;->indexFirstOf(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 2000
    .restart local v2    # "next":I
    if-ne v2, v11, :cond_f3

    .line 2001
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 2003
    :cond_f3
    iget-boolean v6, p0, Lorg/apache/commons/httpclient/URI;->_is_abs_path:Z

    if-nez v6, :cond_140

    .line 2004
    if-nez p2, :cond_105

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    sget-object v8, Lorg/apache/commons/httpclient/URI;->disallowed_rel_path:Ljava/util/BitSet;

    invoke-virtual {p0, v6, v8}, Lorg/apache/commons/httpclient/URI;->prevalidate(Ljava/lang/String;Ljava/util/BitSet;)Z

    move-result v6

    if-nez v6, :cond_117

    :cond_105
    if-eqz p2, :cond_11a

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    sget-object v8, Lorg/apache/commons/httpclient/URI;->rel_path:Ljava/util/BitSet;

    invoke-virtual {p0, v6, v8}, Lorg/apache/commons/httpclient/URI;->validate([CLjava/util/BitSet;)Z

    move-result v6

    if-eqz v6, :cond_11a

    .line 2009
    :cond_117
    iput-boolean v3, p0, Lorg/apache/commons/httpclient/URI;->_is_rel_path:Z

    goto :goto_140

    .line 2010
    :cond_11a
    if-nez p2, :cond_128

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    sget-object v8, Lorg/apache/commons/httpclient/URI;->disallowed_opaque_part:Ljava/util/BitSet;

    invoke-virtual {p0, v6, v8}, Lorg/apache/commons/httpclient/URI;->prevalidate(Ljava/lang/String;Ljava/util/BitSet;)Z

    move-result v6

    if-nez v6, :cond_13a

    :cond_128
    if-eqz p2, :cond_13d

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    sget-object v8, Lorg/apache/commons/httpclient/URI;->opaque_part:Ljava/util/BitSet;

    invoke-virtual {p0, v6, v8}, Lorg/apache/commons/httpclient/URI;->validate([CLjava/util/BitSet;)Z

    move-result v6

    if-eqz v6, :cond_13d

    .line 2015
    :cond_13a
    iput-boolean v3, p0, Lorg/apache/commons/httpclient/URI;->_is_opaque_part:Z

    goto :goto_140

    .line 2018
    :cond_13d
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/apache/commons/httpclient/URI;->_path:[C

    .line 2021
    :cond_140
    :goto_140
    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 2022
    .local v3, "s":Ljava/lang/String;
    if-eqz p2, :cond_14e

    .line 2023
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/apache/commons/httpclient/URI;->setRawPath([C)V

    goto :goto_151

    .line 2025
    :cond_14e
    invoke-virtual {p0, v3}, Lorg/apache/commons/httpclient/URI;->setPath(Ljava/lang/String;)V

    .line 2027
    :goto_151
    move v10, v2

    .line 2031
    .end local v2    # "next":I
    .end local v3    # "s":Ljava/lang/String;
    :cond_152
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->getProtocolCharset()Ljava/lang/String;

    move-result-object v2

    .line 2041
    .local v2, "charset":Ljava/lang/String;
    const/16 v3, 0x23

    if-ltz v10, :cond_1a2

    add-int/lit8 v6, v10, 0x1

    if-ge v6, v1, :cond_1a2

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v8, 0x3f

    if-ne v6, v8, :cond_1a2

    .line 2042
    add-int/lit8 v6, v10, 0x1

    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 2043
    .local v6, "next":I
    if-ne v6, v11, :cond_172

    .line 2044
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    .line 2046
    :cond_172
    if-eqz p2, :cond_193

    .line 2047
    add-int/lit8 v8, v10, 0x1

    invoke-virtual {v0, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    iput-object v8, p0, Lorg/apache/commons/httpclient/URI;->_query:[C

    .line 2048
    iget-object v8, p0, Lorg/apache/commons/httpclient/URI;->_query:[C

    sget-object v11, Lorg/apache/commons/httpclient/URI;->uric:Ljava/util/BitSet;

    invoke-virtual {p0, v8, v11}, Lorg/apache/commons/httpclient/URI;->validate([CLjava/util/BitSet;)Z

    move-result v8

    if-eqz v8, :cond_18b

    goto :goto_1a1

    .line 2049
    :cond_18b
    new-instance v3, Lorg/apache/commons/httpclient/URIException;

    const-string v8, "Invalid query"

    invoke-direct {v3, v8}, Lorg/apache/commons/httpclient/URIException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2052
    :cond_193
    add-int/lit8 v8, v10, 0x1

    invoke-virtual {v0, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    sget-object v11, Lorg/apache/commons/httpclient/URI;->allowed_query:Ljava/util/BitSet;

    invoke-static {v8, v11, v2}, Lorg/apache/commons/httpclient/URI;->encode(Ljava/lang/String;Ljava/util/BitSet;Ljava/lang/String;)[C

    move-result-object v8

    iput-object v8, p0, Lorg/apache/commons/httpclient/URI;->_query:[C

    .line 2054
    :goto_1a1
    move v10, v6

    .line 2065
    .end local v6    # "next":I
    :cond_1a2
    if-ltz v10, :cond_1d6

    add-int/lit8 v6, v10, 0x1

    if-gt v6, v1, :cond_1d6

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v3, :cond_1d6

    .line 2066
    add-int/lit8 v3, v10, 0x1

    if-ne v3, v1, :cond_1bb

    .line 2067
    const-string v3, ""

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    iput-object v3, p0, Lorg/apache/commons/httpclient/URI;->_fragment:[C

    goto :goto_1d6

    .line 2069
    :cond_1bb
    if-eqz p2, :cond_1c8

    add-int/lit8 v3, v10, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    goto :goto_1d4

    :cond_1c8
    add-int/lit8 v3, v10, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lorg/apache/commons/httpclient/URI;->allowed_fragment:Ljava/util/BitSet;

    invoke-static {v3, v6, v2}, Lorg/apache/commons/httpclient/URI;->encode(Ljava/lang/String;Ljava/util/BitSet;Ljava/lang/String;)[C

    move-result-object v3

    :goto_1d4
    iput-object v3, p0, Lorg/apache/commons/httpclient/URI;->_fragment:[C

    .line 2075
    :cond_1d6
    :goto_1d6
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->setURI()V

    .line 2076
    return-void

    .line 1882
    .end local v0    # "tmp":Ljava/lang/String;
    .end local v1    # "length":I
    .end local v2    # "charset":Ljava/lang/String;
    .end local v4    # "from":I
    .end local v5    # "isStartedFromPath":Z
    .end local v7    # "atColon":I
    .end local v9    # "atSlash":I
    .end local v10    # "at":I
    :cond_1da
    new-instance v0, Lorg/apache/commons/httpclient/URIException;

    const-string v1, "URI-Reference required"

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/URIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected prevalidate(Ljava/lang/String;Ljava/util/BitSet;)Z
    .registers 7
    .param p1, "component"    # Ljava/lang/String;
    .param p2, "disallowed"    # Ljava/util/BitSet;

    .line 1789
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1790
    return v0

    .line 1792
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 1793
    .local v1, "target":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    array-length v3, v1

    if-ge v2, v3, :cond_18

    .line 1794
    aget-char v3, v1, v2

    invoke-virtual {p2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1795
    return v0

    .line 1793
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1798
    .end local v2    # "i":I
    :cond_18
    const/4 v0, 0x1

    return v0
.end method

.method protected removeFragmentIdentifier([C)[C
    .registers 5
    .param p1, "component"    # [C

    .line 3418
    if-nez p1, :cond_4

    .line 3419
    const/4 v0, 0x0

    return-object v0

    .line 3421
    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 3422
    .local v0, "lastIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_20

    .line 3423
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([C)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 3426
    :cond_20
    return-object p1
.end method

.method protected resolvePath([C[C)[C
    .registers 10
    .param p1, "basePath"    # [C
    .param p2, "relPath"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 2944
    if-nez p1, :cond_5

    const-string v0, ""

    goto :goto_a

    :cond_5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    .line 2947
    .local v0, "base":Ljava/lang/String;
    :goto_a
    if-eqz p2, :cond_56

    array-length v1, p2

    if-nez v1, :cond_10

    goto :goto_56

    .line 2949
    :cond_10
    const/4 v1, 0x0

    aget-char v2, p2, v1

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_1c

    .line 2950
    invoke-virtual {p0, p2}, Lorg/apache/commons/httpclient/URI;->normalize([C)[C

    move-result-object v1

    return-object v1

    .line 2952
    :cond_1c
    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 2953
    .local v2, "at":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_2d

    .line 2954
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 2956
    :cond_2d
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    array-length v6, p2

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 2958
    .local v4, "buff":Ljava/lang/StringBuffer;
    if-eq v2, v3, :cond_41

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_43

    :cond_41
    const-string v1, "/"

    :goto_43
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2959
    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 2960
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/httpclient/URI;->normalize([C)[C

    move-result-object v1

    return-object v1

    .line 2948
    .end local v2    # "at":I
    .end local v4    # "buff":Ljava/lang/StringBuffer;
    :cond_56
    :goto_56
    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/URI;->normalize([C)[C

    move-result-object v1

    return-object v1
.end method

.method public setEscapedAuthority(Ljava/lang/String;)V
    .registers 3
    .param p1, "escapedAuthority"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 2693
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/httpclient/URI;->parseAuthority(Ljava/lang/String;Z)V

    .line 2694
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->setURI()V

    .line 2695
    return-void
.end method

.method public setEscapedFragment(Ljava/lang/String;)V
    .registers 3
    .param p1, "escapedFragment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 3340
    if-nez p1, :cond_9

    .line 3341
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_fragment:[C

    .line 3342
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/httpclient/URI;->hash:I

    .line 3343
    return-void

    .line 3345
    :cond_9
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/URI;->setRawFragment([C)V

    .line 3346
    return-void
.end method

.method public setEscapedPath(Ljava/lang/String;)V
    .registers 3
    .param p1, "escapedPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 2876
    if-nez p1, :cond_b

    .line 2877
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_opaque:[C

    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_path:[C

    .line 2878
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->setURI()V

    .line 2879
    return-void

    .line 2881
    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/URI;->setRawPath([C)V

    .line 2882
    return-void
.end method

.method public setEscapedQuery(Ljava/lang/String;)V
    .registers 3
    .param p1, "escapedQuery"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 3242
    if-nez p1, :cond_9

    .line 3243
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_query:[C

    .line 3244
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->setURI()V

    .line 3245
    return-void

    .line 3247
    :cond_9
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/URI;->setRawQuery([C)V

    .line 3248
    return-void
.end method

.method public setFragment(Ljava/lang/String;)V
    .registers 5
    .param p1, "fragment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 3356
    const/4 v0, 0x0

    if-eqz p1, :cond_19

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_19

    .line 3361
    :cond_a
    sget-object v1, Lorg/apache/commons/httpclient/URI;->allowed_fragment:Ljava/util/BitSet;

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->getProtocolCharset()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lorg/apache/commons/httpclient/URI;->encode(Ljava/lang/String;Ljava/util/BitSet;Ljava/lang/String;)[C

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_fragment:[C

    .line 3362
    iput v0, p0, Lorg/apache/commons/httpclient/URI;->hash:I

    .line 3363
    return-void

    .line 3357
    :cond_19
    :goto_19
    if-nez p1, :cond_1d

    const/4 v1, 0x0

    goto :goto_21

    :cond_1d
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    :goto_21
    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_fragment:[C

    .line 3358
    iput v0, p0, Lorg/apache/commons/httpclient/URI;->hash:I

    .line 3359
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .registers 8
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 2894
    if-eqz p1, :cond_aa

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_aa

    .line 2900
    :cond_a
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->getProtocolCharset()Ljava/lang/String;

    move-result-object v0

    .line 2902
    .local v0, "charset":Ljava/lang/String;
    iget-boolean v1, p0, Lorg/apache/commons/httpclient/URI;->_is_net_path:Z

    if-nez v1, :cond_9e

    iget-boolean v1, p0, Lorg/apache/commons/httpclient/URI;->_is_abs_path:Z

    if-eqz v1, :cond_18

    goto/16 :goto_9e

    .line 2904
    :cond_18
    iget-boolean v1, p0, Lorg/apache/commons/httpclient/URI;->_is_rel_path:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_68

    .line 2905
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 2906
    .local v1, "buff":Ljava/lang/StringBuffer;
    const/16 v4, 0x2f

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 2907
    .local v4, "at":I
    if-eqz v4, :cond_60

    .line 2911
    if-lez v4, :cond_4c

    .line 2912
    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/apache/commons/httpclient/URI;->allowed_rel_path:Ljava/util/BitSet;

    invoke-static {v2, v3, v0}, Lorg/apache/commons/httpclient/URI;->encode(Ljava/lang/String;Ljava/util/BitSet;Ljava/lang/String;)[C

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 2914
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/apache/commons/httpclient/URI;->allowed_abs_path:Ljava/util/BitSet;

    invoke-static {v2, v3, v0}, Lorg/apache/commons/httpclient/URI;->encode(Ljava/lang/String;Ljava/util/BitSet;Ljava/lang/String;)[C

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_55

    .line 2917
    :cond_4c
    sget-object v2, Lorg/apache/commons/httpclient/URI;->allowed_rel_path:Ljava/util/BitSet;

    invoke-static {p1, v2, v0}, Lorg/apache/commons/httpclient/URI;->encode(Ljava/lang/String;Ljava/util/BitSet;Ljava/lang/String;)[C

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 2919
    :goto_55
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/httpclient/URI;->_path:[C

    .line 2920
    .end local v1    # "buff":Ljava/lang/StringBuffer;
    .end local v4    # "at":I
    goto :goto_a6

    .line 2908
    .restart local v1    # "buff":Ljava/lang/StringBuffer;
    .restart local v4    # "at":I
    :cond_60
    new-instance v2, Lorg/apache/commons/httpclient/URIException;

    const-string v5, "incorrect relative path"

    invoke-direct {v2, v3, v5}, Lorg/apache/commons/httpclient/URIException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 2920
    .end local v1    # "buff":Ljava/lang/StringBuffer;
    .end local v4    # "at":I
    :cond_68
    iget-boolean v1, p0, Lorg/apache/commons/httpclient/URI;->_is_opaque_part:Z

    if-eqz v1, :cond_96

    .line 2921
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 2922
    .local v1, "buf":Ljava/lang/StringBuffer;
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/apache/commons/httpclient/URI;->uric_no_slash:Ljava/util/BitSet;

    invoke-static {v4, v5, v0}, Lorg/apache/commons/httpclient/URI;->encode(Ljava/lang/String;Ljava/util/BitSet;Ljava/lang/String;)[C

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/lang/StringBuffer;->insert(I[C)Ljava/lang/StringBuffer;

    .line 2923
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lorg/apache/commons/httpclient/URI;->uric:Ljava/util/BitSet;

    invoke-static {v2, v4, v0}, Lorg/apache/commons/httpclient/URI;->encode(Ljava/lang/String;Ljava/util/BitSet;Ljava/lang/String;)[C

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/lang/StringBuffer;->insert(I[C)Ljava/lang/StringBuffer;

    .line 2924
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/httpclient/URI;->_opaque:[C

    .line 2925
    .end local v1    # "buf":Ljava/lang/StringBuffer;
    goto :goto_a6

    .line 2926
    :cond_96
    new-instance v1, Lorg/apache/commons/httpclient/URIException;

    const-string v2, "incorrect path"

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/httpclient/URIException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 2903
    :cond_9e
    :goto_9e
    sget-object v1, Lorg/apache/commons/httpclient/URI;->allowed_abs_path:Ljava/util/BitSet;

    invoke-static {p1, v1, v0}, Lorg/apache/commons/httpclient/URI;->encode(Ljava/lang/String;Ljava/util/BitSet;Ljava/lang/String;)[C

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_path:[C

    .line 2928
    :goto_a6
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->setURI()V

    .line 2929
    return-void

    .line 2895
    .end local v0    # "charset":Ljava/lang/String;
    :cond_aa
    :goto_aa
    if-nez p1, :cond_ae

    const/4 v0, 0x0

    goto :goto_b2

    :cond_ae
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    :goto_b2
    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_opaque:[C

    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_path:[C

    .line 2896
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->setURI()V

    .line 2897
    return-void
.end method

.method public setQuery(Ljava/lang/String;)V
    .registers 4
    .param p1, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 3269
    if-eqz p1, :cond_17

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_17

    .line 3274
    :cond_9
    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_query:Ljava/util/BitSet;

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->getProtocolCharset()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lorg/apache/commons/httpclient/URI;->encode(Ljava/lang/String;Ljava/util/BitSet;Ljava/lang/String;)[C

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/URI;->setRawQuery([C)V

    .line 3275
    return-void

    .line 3270
    :cond_17
    :goto_17
    if-nez p1, :cond_1b

    const/4 v0, 0x0

    goto :goto_1f

    :cond_1b
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    :goto_1f
    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_query:[C

    .line 3271
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->setURI()V

    .line 3272
    return-void
.end method

.method public setRawAuthority([C)V
    .registers 4
    .param p1, "escapedAuthority"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 2676
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/httpclient/URI;->parseAuthority(Ljava/lang/String;Z)V

    .line 2677
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->setURI()V

    .line 2678
    return-void
.end method

.method public setRawFragment([C)V
    .registers 5
    .param p1, "escapedFragment"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 3319
    const/4 v0, 0x0

    if-eqz p1, :cond_1d

    array-length v1, p1

    if-nez v1, :cond_7

    goto :goto_1d

    .line 3324
    :cond_7
    sget-object v1, Lorg/apache/commons/httpclient/URI;->fragment:Ljava/util/BitSet;

    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/httpclient/URI;->validate([CLjava/util/BitSet;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 3328
    iput-object p1, p0, Lorg/apache/commons/httpclient/URI;->_fragment:[C

    .line 3329
    iput v0, p0, Lorg/apache/commons/httpclient/URI;->hash:I

    .line 3330
    return-void

    .line 3325
    :cond_14
    new-instance v0, Lorg/apache/commons/httpclient/URIException;

    const/4 v1, 0x3

    const-string v2, "escaped fragment not valid"

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/httpclient/URIException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 3320
    :cond_1d
    :goto_1d
    iput-object p1, p0, Lorg/apache/commons/httpclient/URI;->_fragment:[C

    .line 3321
    iput v0, p0, Lorg/apache/commons/httpclient/URI;->hash:I

    .line 3322
    return-void
.end method

.method public setRawPath([C)V
    .registers 8
    .param p1, "escapedPath"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 2824
    if-eqz p1, :cond_a2

    array-length v0, p1

    if-nez v0, :cond_7

    goto/16 :goto_a2

    .line 2830
    :cond_7
    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/URI;->removeFragmentIdentifier([C)[C

    move-result-object p1

    .line 2831
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/URI;->_is_net_path:Z

    const/16 v1, 0x2f

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_80

    iget-boolean v0, p0, Lorg/apache/commons/httpclient/URI;->_is_abs_path:Z

    if-eqz v0, :cond_19

    goto :goto_80

    .line 2841
    :cond_19
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/URI;->_is_rel_path:Z

    const/4 v5, -0x1

    if-eqz v0, :cond_56

    .line 2842
    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/httpclient/URI;->indexFirstOf([CC)I

    move-result v0

    .line 2843
    .local v0, "at":I
    if-eqz v0, :cond_4e

    .line 2846
    if-lez v0, :cond_38

    add-int/lit8 v1, v0, -0x1

    sget-object v4, Lorg/apache/commons/httpclient/URI;->rel_segment:Ljava/util/BitSet;

    invoke-virtual {p0, p1, v3, v1, v4}, Lorg/apache/commons/httpclient/URI;->validate([CIILjava/util/BitSet;)Z

    move-result v1

    if-nez v1, :cond_38

    sget-object v1, Lorg/apache/commons/httpclient/URI;->abs_path:Ljava/util/BitSet;

    invoke-virtual {p0, p1, v0, v5, v1}, Lorg/apache/commons/httpclient/URI;->validate([CIILjava/util/BitSet;)Z

    move-result v1

    if-eqz v1, :cond_43

    :cond_38
    if-gez v0, :cond_4b

    sget-object v1, Lorg/apache/commons/httpclient/URI;->rel_segment:Ljava/util/BitSet;

    invoke-virtual {p0, p1, v3, v5, v1}, Lorg/apache/commons/httpclient/URI;->validate([CIILjava/util/BitSet;)Z

    move-result v1

    if-eqz v1, :cond_43

    goto :goto_4b

    .line 2850
    :cond_43
    new-instance v1, Lorg/apache/commons/httpclient/URIException;

    const-string v3, "escaped relative path not valid"

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/httpclient/URIException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 2853
    :cond_4b
    :goto_4b
    iput-object p1, p0, Lorg/apache/commons/httpclient/URI;->_path:[C

    .line 2854
    .end local v0    # "at":I
    goto :goto_8e

    .line 2844
    .restart local v0    # "at":I
    :cond_4e
    new-instance v1, Lorg/apache/commons/httpclient/URIException;

    const-string v2, "incorrect path"

    invoke-direct {v1, v4, v2}, Lorg/apache/commons/httpclient/URIException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 2854
    .end local v0    # "at":I
    :cond_56
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/URI;->_is_opaque_part:Z

    if-eqz v0, :cond_78

    .line 2855
    sget-object v0, Lorg/apache/commons/httpclient/URI;->uric_no_slash:Ljava/util/BitSet;

    aget-char v1, p1, v3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_75

    sget-object v0, Lorg/apache/commons/httpclient/URI;->uric:Ljava/util/BitSet;

    invoke-virtual {p0, p1, v4, v5, v0}, Lorg/apache/commons/httpclient/URI;->validate([CIILjava/util/BitSet;)Z

    move-result v0

    if-eqz v0, :cond_6d

    goto :goto_75

    .line 2857
    :cond_6d
    new-instance v0, Lorg/apache/commons/httpclient/URIException;

    const-string v1, "escaped opaque part not valid"

    invoke-direct {v0, v2, v1}, Lorg/apache/commons/httpclient/URIException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 2860
    :cond_75
    :goto_75
    iput-object p1, p0, Lorg/apache/commons/httpclient/URI;->_opaque:[C

    goto :goto_8e

    .line 2862
    :cond_78
    new-instance v0, Lorg/apache/commons/httpclient/URIException;

    const-string v1, "incorrect path"

    invoke-direct {v0, v4, v1}, Lorg/apache/commons/httpclient/URIException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 2832
    :cond_80
    :goto_80
    aget-char v0, p1, v3

    if-ne v0, v1, :cond_9a

    .line 2836
    sget-object v0, Lorg/apache/commons/httpclient/URI;->abs_path:Ljava/util/BitSet;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/httpclient/URI;->validate([CLjava/util/BitSet;)Z

    move-result v0

    if-eqz v0, :cond_92

    .line 2840
    iput-object p1, p0, Lorg/apache/commons/httpclient/URI;->_path:[C

    .line 2864
    :goto_8e
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->setURI()V

    .line 2865
    return-void

    .line 2837
    :cond_92
    new-instance v0, Lorg/apache/commons/httpclient/URIException;

    const-string v1, "escaped absolute path not valid"

    invoke-direct {v0, v2, v1}, Lorg/apache/commons/httpclient/URIException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 2833
    :cond_9a
    new-instance v0, Lorg/apache/commons/httpclient/URIException;

    const-string v1, "not absolute path"

    invoke-direct {v0, v4, v1}, Lorg/apache/commons/httpclient/URIException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 2825
    :cond_a2
    :goto_a2
    iput-object p1, p0, Lorg/apache/commons/httpclient/URI;->_opaque:[C

    iput-object p1, p0, Lorg/apache/commons/httpclient/URI;->_path:[C

    .line 2826
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->setURI()V

    .line 2827
    return-void
.end method

.method public setRawQuery([C)V
    .registers 5
    .param p1, "escapedQuery"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 3219
    if-eqz p1, :cond_21

    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_21

    .line 3225
    :cond_6
    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/URI;->removeFragmentIdentifier([C)[C

    move-result-object p1

    .line 3226
    sget-object v0, Lorg/apache/commons/httpclient/URI;->query:Ljava/util/BitSet;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/httpclient/URI;->validate([CLjava/util/BitSet;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 3230
    iput-object p1, p0, Lorg/apache/commons/httpclient/URI;->_query:[C

    .line 3231
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->setURI()V

    .line 3232
    return-void

    .line 3227
    :cond_18
    new-instance v0, Lorg/apache/commons/httpclient/URIException;

    const/4 v1, 0x3

    const-string v2, "escaped query not valid"

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/httpclient/URIException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 3220
    :cond_21
    :goto_21
    iput-object p1, p0, Lorg/apache/commons/httpclient/URI;->_query:[C

    .line 3221
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->setURI()V

    .line 3222
    return-void
.end method

.method protected setURI()V
    .registers 3

    .line 2279
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2281
    .local v0, "buf":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->_scheme:[C

    if-eqz v1, :cond_13

    .line 2282
    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->_scheme:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 2283
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2285
    :cond_13
    iget-boolean v1, p0, Lorg/apache/commons/httpclient/URI;->_is_net_path:Z

    if-eqz v1, :cond_25

    .line 2286
    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2287
    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->_authority:[C

    if-eqz v1, :cond_25

    .line 2288
    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->_authority:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 2291
    :cond_25
    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->_opaque:[C

    if-eqz v1, :cond_33

    iget-boolean v1, p0, Lorg/apache/commons/httpclient/URI;->_is_opaque_part:Z

    if-eqz v1, :cond_33

    .line 2292
    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->_opaque:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_41

    .line 2293
    :cond_33
    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->_path:[C

    if-eqz v1, :cond_41

    .line 2295
    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->_path:[C

    array-length v1, v1

    if-eqz v1, :cond_41

    .line 2296
    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->_path:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 2299
    :cond_41
    :goto_41
    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->_query:[C

    if-eqz v1, :cond_4f

    .line 2300
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2301
    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->_query:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 2304
    :cond_4f
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_uri:[C

    .line 2305
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/commons/httpclient/URI;->hash:I

    .line 2306
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 3824
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->getEscapedURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected validate([CIILjava/util/BitSet;)Z
    .registers 8
    .param p1, "component"    # [C
    .param p2, "soffset"    # I
    .param p3, "eoffset"    # I
    .param p4, "generous"    # Ljava/util/BitSet;

    .line 1835
    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p3, v1, :cond_7

    .line 1836
    array-length v1, p1

    add-int/lit8 p3, v1, -0x1

    .line 1838
    :cond_7
    move v1, p2

    .local v1, "i":I
    :goto_8
    if-gt v1, p3, :cond_17

    .line 1839
    aget-char v2, p1, v1

    invoke-virtual {p4, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_14

    .line 1840
    const/4 v0, 0x0

    return v0

    .line 1838
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1843
    .end local v1    # "i":I
    :cond_17
    return v0
.end method

.method protected validate([CLjava/util/BitSet;)Z
    .registers 5
    .param p1, "component"    # [C
    .param p2, "generous"    # Ljava/util/BitSet;

    .line 1813
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/apache/commons/httpclient/URI;->validate([CIILjava/util/BitSet;)Z

    move-result v0

    return v0
.end method
