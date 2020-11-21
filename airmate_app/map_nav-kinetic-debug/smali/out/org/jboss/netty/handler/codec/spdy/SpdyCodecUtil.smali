.class final Lorg/jboss/netty/handler/codec/spdy/SpdyCodecUtil;
.super Ljava/lang/Object;
.source "SpdyCodecUtil.java"


# static fields
.field static final SPDY2_DICT:[B

.field private static final SPDY2_DICT_S:Ljava/lang/String; = "optionsgetheadpostputdeletetraceacceptaccept-charsetaccept-encodingaccept-languageauthorizationexpectfromhostif-modified-sinceif-matchif-none-matchif-rangeif-unmodifiedsincemax-forwardsproxy-authorizationrangerefererteuser-agent100101200201202203204205206300301302303304305306307400401402403404405406407408409410411412413414415416417500501502503504505accept-rangesageetaglocationproxy-authenticatepublicretry-afterservervarywarningwww-authenticateallowcontent-basecontent-encodingcache-controlconnectiondatetrailertransfer-encodingupgradeviawarningcontent-languagecontent-lengthcontent-locationcontent-md5content-rangecontent-typeetagexpireslast-modifiedset-cookieMondayTuesdayWednesdayThursdayFridaySaturdaySundayJanFebMarAprMayJunJulAugSepOctNovDecchunkedtext/htmlimage/pngimage/jpgimage/gifapplication/xmlapplication/xhtmltext/plainpublicmax-agecharset=iso-8859-1utf-8gzipdeflateHTTP/1.1statusversionurl "

.field static final SPDY_CREDENTIAL_FRAME:I = 0xa

.field static final SPDY_DATA_FLAG_FIN:B = 0x1t

.field static final SPDY_DICT:[B

.field static final SPDY_FLAG_FIN:B = 0x1t

.field static final SPDY_FLAG_UNIDIRECTIONAL:B = 0x2t

.field static final SPDY_GOAWAY_FRAME:I = 0x7

.field static final SPDY_HEADERS_FRAME:I = 0x8

.field static final SPDY_HEADER_FLAGS_OFFSET:I = 0x4

.field static final SPDY_HEADER_LENGTH_OFFSET:I = 0x5

.field static final SPDY_HEADER_SIZE:I = 0x8

.field static final SPDY_HEADER_TYPE_OFFSET:I = 0x2

.field static final SPDY_MAX_LENGTH:I = 0xffffff

.field static final SPDY_MAX_NV_LENGTH:I = 0xffff

.field static final SPDY_MAX_VERSION:I = 0x3

.field static final SPDY_MIN_VERSION:I = 0x2

.field static final SPDY_NOOP_FRAME:I = 0x5

.field static final SPDY_PING_FRAME:I = 0x6

.field static final SPDY_RST_STREAM_FRAME:I = 0x3

.field static final SPDY_SETTINGS_CLEAR:B = 0x1t

.field static final SPDY_SETTINGS_FRAME:I = 0x4

.field static final SPDY_SETTINGS_MAX_ID:I = 0xffffff

.field static final SPDY_SETTINGS_PERSISTED:B = 0x2t

.field static final SPDY_SETTINGS_PERSIST_VALUE:B = 0x1t

.field static final SPDY_SYN_REPLY_FRAME:I = 0x2

.field static final SPDY_SYN_STREAM_FRAME:I = 0x1

.field static final SPDY_WINDOW_UPDATE_FRAME:I = 0x9


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 57
    const/16 v0, 0x58f

    new-array v0, v0, [B

    fill-array-data v0, :array_20

    sput-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyCodecUtil;->SPDY_DICT:[B

    .line 254
    const/4 v0, 0x0

    .line 257
    .local v0, "SPDY2_DICT_":[B
    const/4 v1, 0x1

    :try_start_b
    const-string v2, "optionsgetheadpostputdeletetraceacceptaccept-charsetaccept-encodingaccept-languageauthorizationexpectfromhostif-modified-sinceif-matchif-none-matchif-rangeif-unmodifiedsincemax-forwardsproxy-authorizationrangerefererteuser-agent100101200201202203204205206300301302303304305306307400401402403404405406407408409410411412413414415416417500501502503504505accept-rangesageetaglocationproxy-authenticatepublicretry-afterservervarywarningwww-authenticateallowcontent-basecontent-encodingcache-controlconnectiondatetrailertransfer-encodingupgradeviawarningcontent-languagecontent-lengthcontent-locationcontent-md5content-rangecontent-typeetagexpireslast-modifiedset-cookieMondayTuesdayWednesdayThursdayFridaySaturdaySundayJanFebMarAprMayJunJulAugSepOctNovDecchunkedtext/htmlimage/pngimage/jpgimage/gifapplication/xmlapplication/xhtmltext/plainpublicmax-agecharset=iso-8859-1utf-8gzipdeflateHTTP/1.1statusversionurl "

    const-string v3, "US-ASCII"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    move-object v0, v2

    .line 259
    array-length v2, v0

    sub-int/2addr v2, v1

    const/4 v3, 0x0

    aput-byte v3, v0, v2
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_19} :catch_1a

    .line 262
    goto :goto_1d

    .line 260
    :catch_1a
    move-exception v2

    .line 261
    .local v2, "e":Ljava/lang/Exception;
    new-array v0, v1, [B

    .line 264
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1d
    sput-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyCodecUtil;->SPDY2_DICT:[B

    .line 265
    .end local v0    # "SPDY2_DICT_":[B
    return-void

    :array_20
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x7t
        0x6ft
        0x70t
        0x74t
        0x69t
        0x6ft
        0x6et
        0x73t
        0x0t
        0x0t
        0x0t
        0x4t
        0x68t
        0x65t
        0x61t
        0x64t
        0x0t
        0x0t
        0x0t
        0x4t
        0x70t
        0x6ft
        0x73t
        0x74t
        0x0t
        0x0t
        0x0t
        0x3t
        0x70t
        0x75t
        0x74t
        0x0t
        0x0t
        0x0t
        0x6t
        0x64t
        0x65t
        0x6ct
        0x65t
        0x74t
        0x65t
        0x0t
        0x0t
        0x0t
        0x5t
        0x74t
        0x72t
        0x61t
        0x63t
        0x65t
        0x0t
        0x0t
        0x0t
        0x6t
        0x61t
        0x63t
        0x63t
        0x65t
        0x70t
        0x74t
        0x0t
        0x0t
        0x0t
        0xet
        0x61t
        0x63t
        0x63t
        0x65t
        0x70t
        0x74t
        0x2dt
        0x63t
        0x68t
        0x61t
        0x72t
        0x73t
        0x65t
        0x74t
        0x0t
        0x0t
        0x0t
        0xft
        0x61t
        0x63t
        0x63t
        0x65t
        0x70t
        0x74t
        0x2dt
        0x65t
        0x6et
        0x63t
        0x6ft
        0x64t
        0x69t
        0x6et
        0x67t
        0x0t
        0x0t
        0x0t
        0xft
        0x61t
        0x63t
        0x63t
        0x65t
        0x70t
        0x74t
        0x2dt
        0x6ct
        0x61t
        0x6et
        0x67t
        0x75t
        0x61t
        0x67t
        0x65t
        0x0t
        0x0t
        0x0t
        0xdt
        0x61t
        0x63t
        0x63t
        0x65t
        0x70t
        0x74t
        0x2dt
        0x72t
        0x61t
        0x6et
        0x67t
        0x65t
        0x73t
        0x0t
        0x0t
        0x0t
        0x3t
        0x61t
        0x67t
        0x65t
        0x0t
        0x0t
        0x0t
        0x5t
        0x61t
        0x6ct
        0x6ct
        0x6ft
        0x77t
        0x0t
        0x0t
        0x0t
        0xdt
        0x61t
        0x75t
        0x74t
        0x68t
        0x6ft
        0x72t
        0x69t
        0x7at
        0x61t
        0x74t
        0x69t
        0x6ft
        0x6et
        0x0t
        0x0t
        0x0t
        0xdt
        0x63t
        0x61t
        0x63t
        0x68t
        0x65t
        0x2dt
        0x63t
        0x6ft
        0x6et
        0x74t
        0x72t
        0x6ft
        0x6ct
        0x0t
        0x0t
        0x0t
        0xat
        0x63t
        0x6ft
        0x6et
        0x6et
        0x65t
        0x63t
        0x74t
        0x69t
        0x6ft
        0x6et
        0x0t
        0x0t
        0x0t
        0xct
        0x63t
        0x6ft
        0x6et
        0x74t
        0x65t
        0x6et
        0x74t
        0x2dt
        0x62t
        0x61t
        0x73t
        0x65t
        0x0t
        0x0t
        0x0t
        0x10t
        0x63t
        0x6ft
        0x6et
        0x74t
        0x65t
        0x6et
        0x74t
        0x2dt
        0x65t
        0x6et
        0x63t
        0x6ft
        0x64t
        0x69t
        0x6et
        0x67t
        0x0t
        0x0t
        0x0t
        0x10t
        0x63t
        0x6ft
        0x6et
        0x74t
        0x65t
        0x6et
        0x74t
        0x2dt
        0x6ct
        0x61t
        0x6et
        0x67t
        0x75t
        0x61t
        0x67t
        0x65t
        0x0t
        0x0t
        0x0t
        0xet
        0x63t
        0x6ft
        0x6et
        0x74t
        0x65t
        0x6et
        0x74t
        0x2dt
        0x6ct
        0x65t
        0x6et
        0x67t
        0x74t
        0x68t
        0x0t
        0x0t
        0x0t
        0x10t
        0x63t
        0x6ft
        0x6et
        0x74t
        0x65t
        0x6et
        0x74t
        0x2dt
        0x6ct
        0x6ft
        0x63t
        0x61t
        0x74t
        0x69t
        0x6ft
        0x6et
        0x0t
        0x0t
        0x0t
        0xbt
        0x63t
        0x6ft
        0x6et
        0x74t
        0x65t
        0x6et
        0x74t
        0x2dt
        0x6dt
        0x64t
        0x35t
        0x0t
        0x0t
        0x0t
        0xdt
        0x63t
        0x6ft
        0x6et
        0x74t
        0x65t
        0x6et
        0x74t
        0x2dt
        0x72t
        0x61t
        0x6et
        0x67t
        0x65t
        0x0t
        0x0t
        0x0t
        0xct
        0x63t
        0x6ft
        0x6et
        0x74t
        0x65t
        0x6et
        0x74t
        0x2dt
        0x74t
        0x79t
        0x70t
        0x65t
        0x0t
        0x0t
        0x0t
        0x4t
        0x64t
        0x61t
        0x74t
        0x65t
        0x0t
        0x0t
        0x0t
        0x4t
        0x65t
        0x74t
        0x61t
        0x67t
        0x0t
        0x0t
        0x0t
        0x6t
        0x65t
        0x78t
        0x70t
        0x65t
        0x63t
        0x74t
        0x0t
        0x0t
        0x0t
        0x7t
        0x65t
        0x78t
        0x70t
        0x69t
        0x72t
        0x65t
        0x73t
        0x0t
        0x0t
        0x0t
        0x4t
        0x66t
        0x72t
        0x6ft
        0x6dt
        0x0t
        0x0t
        0x0t
        0x4t
        0x68t
        0x6ft
        0x73t
        0x74t
        0x0t
        0x0t
        0x0t
        0x8t
        0x69t
        0x66t
        0x2dt
        0x6dt
        0x61t
        0x74t
        0x63t
        0x68t
        0x0t
        0x0t
        0x0t
        0x11t
        0x69t
        0x66t
        0x2dt
        0x6dt
        0x6ft
        0x64t
        0x69t
        0x66t
        0x69t
        0x65t
        0x64t
        0x2dt
        0x73t
        0x69t
        0x6et
        0x63t
        0x65t
        0x0t
        0x0t
        0x0t
        0xdt
        0x69t
        0x66t
        0x2dt
        0x6et
        0x6ft
        0x6et
        0x65t
        0x2dt
        0x6dt
        0x61t
        0x74t
        0x63t
        0x68t
        0x0t
        0x0t
        0x0t
        0x8t
        0x69t
        0x66t
        0x2dt
        0x72t
        0x61t
        0x6et
        0x67t
        0x65t
        0x0t
        0x0t
        0x0t
        0x13t
        0x69t
        0x66t
        0x2dt
        0x75t
        0x6et
        0x6dt
        0x6ft
        0x64t
        0x69t
        0x66t
        0x69t
        0x65t
        0x64t
        0x2dt
        0x73t
        0x69t
        0x6et
        0x63t
        0x65t
        0x0t
        0x0t
        0x0t
        0xdt
        0x6ct
        0x61t
        0x73t
        0x74t
        0x2dt
        0x6dt
        0x6ft
        0x64t
        0x69t
        0x66t
        0x69t
        0x65t
        0x64t
        0x0t
        0x0t
        0x0t
        0x8t
        0x6ct
        0x6ft
        0x63t
        0x61t
        0x74t
        0x69t
        0x6ft
        0x6et
        0x0t
        0x0t
        0x0t
        0xct
        0x6dt
        0x61t
        0x78t
        0x2dt
        0x66t
        0x6ft
        0x72t
        0x77t
        0x61t
        0x72t
        0x64t
        0x73t
        0x0t
        0x0t
        0x0t
        0x6t
        0x70t
        0x72t
        0x61t
        0x67t
        0x6dt
        0x61t
        0x0t
        0x0t
        0x0t
        0x12t
        0x70t
        0x72t
        0x6ft
        0x78t
        0x79t
        0x2dt
        0x61t
        0x75t
        0x74t
        0x68t
        0x65t
        0x6et
        0x74t
        0x69t
        0x63t
        0x61t
        0x74t
        0x65t
        0x0t
        0x0t
        0x0t
        0x13t
        0x70t
        0x72t
        0x6ft
        0x78t
        0x79t
        0x2dt
        0x61t
        0x75t
        0x74t
        0x68t
        0x6ft
        0x72t
        0x69t
        0x7at
        0x61t
        0x74t
        0x69t
        0x6ft
        0x6et
        0x0t
        0x0t
        0x0t
        0x5t
        0x72t
        0x61t
        0x6et
        0x67t
        0x65t
        0x0t
        0x0t
        0x0t
        0x7t
        0x72t
        0x65t
        0x66t
        0x65t
        0x72t
        0x65t
        0x72t
        0x0t
        0x0t
        0x0t
        0xbt
        0x72t
        0x65t
        0x74t
        0x72t
        0x79t
        0x2dt
        0x61t
        0x66t
        0x74t
        0x65t
        0x72t
        0x0t
        0x0t
        0x0t
        0x6t
        0x73t
        0x65t
        0x72t
        0x76t
        0x65t
        0x72t
        0x0t
        0x0t
        0x0t
        0x2t
        0x74t
        0x65t
        0x0t
        0x0t
        0x0t
        0x7t
        0x74t
        0x72t
        0x61t
        0x69t
        0x6ct
        0x65t
        0x72t
        0x0t
        0x0t
        0x0t
        0x11t
        0x74t
        0x72t
        0x61t
        0x6et
        0x73t
        0x66t
        0x65t
        0x72t
        0x2dt
        0x65t
        0x6et
        0x63t
        0x6ft
        0x64t
        0x69t
        0x6et
        0x67t
        0x0t
        0x0t
        0x0t
        0x7t
        0x75t
        0x70t
        0x67t
        0x72t
        0x61t
        0x64t
        0x65t
        0x0t
        0x0t
        0x0t
        0xat
        0x75t
        0x73t
        0x65t
        0x72t
        0x2dt
        0x61t
        0x67t
        0x65t
        0x6et
        0x74t
        0x0t
        0x0t
        0x0t
        0x4t
        0x76t
        0x61t
        0x72t
        0x79t
        0x0t
        0x0t
        0x0t
        0x3t
        0x76t
        0x69t
        0x61t
        0x0t
        0x0t
        0x0t
        0x7t
        0x77t
        0x61t
        0x72t
        0x6et
        0x69t
        0x6et
        0x67t
        0x0t
        0x0t
        0x0t
        0x10t
        0x77t
        0x77t
        0x77t
        0x2dt
        0x61t
        0x75t
        0x74t
        0x68t
        0x65t
        0x6et
        0x74t
        0x69t
        0x63t
        0x61t
        0x74t
        0x65t
        0x0t
        0x0t
        0x0t
        0x6t
        0x6dt
        0x65t
        0x74t
        0x68t
        0x6ft
        0x64t
        0x0t
        0x0t
        0x0t
        0x3t
        0x67t
        0x65t
        0x74t
        0x0t
        0x0t
        0x0t
        0x6t
        0x73t
        0x74t
        0x61t
        0x74t
        0x75t
        0x73t
        0x0t
        0x0t
        0x0t
        0x6t
        0x32t
        0x30t
        0x30t
        0x20t
        0x4ft
        0x4bt
        0x0t
        0x0t
        0x0t
        0x7t
        0x76t
        0x65t
        0x72t
        0x73t
        0x69t
        0x6ft
        0x6et
        0x0t
        0x0t
        0x0t
        0x8t
        0x48t
        0x54t
        0x54t
        0x50t
        0x2ft
        0x31t
        0x2et
        0x31t
        0x0t
        0x0t
        0x0t
        0x3t
        0x75t
        0x72t
        0x6ct
        0x0t
        0x0t
        0x0t
        0x6t
        0x70t
        0x75t
        0x62t
        0x6ct
        0x69t
        0x63t
        0x0t
        0x0t
        0x0t
        0xat
        0x73t
        0x65t
        0x74t
        0x2dt
        0x63t
        0x6ft
        0x6ft
        0x6bt
        0x69t
        0x65t
        0x0t
        0x0t
        0x0t
        0xat
        0x6bt
        0x65t
        0x65t
        0x70t
        0x2dt
        0x61t
        0x6ct
        0x69t
        0x76t
        0x65t
        0x0t
        0x0t
        0x0t
        0x6t
        0x6ft
        0x72t
        0x69t
        0x67t
        0x69t
        0x6et
        0x31t
        0x30t
        0x30t
        0x31t
        0x30t
        0x31t
        0x32t
        0x30t
        0x31t
        0x32t
        0x30t
        0x32t
        0x32t
        0x30t
        0x35t
        0x32t
        0x30t
        0x36t
        0x33t
        0x30t
        0x30t
        0x33t
        0x30t
        0x32t
        0x33t
        0x30t
        0x33t
        0x33t
        0x30t
        0x34t
        0x33t
        0x30t
        0x35t
        0x33t
        0x30t
        0x36t
        0x33t
        0x30t
        0x37t
        0x34t
        0x30t
        0x32t
        0x34t
        0x30t
        0x35t
        0x34t
        0x30t
        0x36t
        0x34t
        0x30t
        0x37t
        0x34t
        0x30t
        0x38t
        0x34t
        0x30t
        0x39t
        0x34t
        0x31t
        0x30t
        0x34t
        0x31t
        0x31t
        0x34t
        0x31t
        0x32t
        0x34t
        0x31t
        0x33t
        0x34t
        0x31t
        0x34t
        0x34t
        0x31t
        0x35t
        0x34t
        0x31t
        0x36t
        0x34t
        0x31t
        0x37t
        0x35t
        0x30t
        0x32t
        0x35t
        0x30t
        0x34t
        0x35t
        0x30t
        0x35t
        0x32t
        0x30t
        0x33t
        0x20t
        0x4et
        0x6ft
        0x6et
        0x2dt
        0x41t
        0x75t
        0x74t
        0x68t
        0x6ft
        0x72t
        0x69t
        0x74t
        0x61t
        0x74t
        0x69t
        0x76t
        0x65t
        0x20t
        0x49t
        0x6et
        0x66t
        0x6ft
        0x72t
        0x6dt
        0x61t
        0x74t
        0x69t
        0x6ft
        0x6et
        0x32t
        0x30t
        0x34t
        0x20t
        0x4et
        0x6ft
        0x20t
        0x43t
        0x6ft
        0x6et
        0x74t
        0x65t
        0x6et
        0x74t
        0x33t
        0x30t
        0x31t
        0x20t
        0x4dt
        0x6ft
        0x76t
        0x65t
        0x64t
        0x20t
        0x50t
        0x65t
        0x72t
        0x6dt
        0x61t
        0x6et
        0x65t
        0x6et
        0x74t
        0x6ct
        0x79t
        0x34t
        0x30t
        0x30t
        0x20t
        0x42t
        0x61t
        0x64t
        0x20t
        0x52t
        0x65t
        0x71t
        0x75t
        0x65t
        0x73t
        0x74t
        0x34t
        0x30t
        0x31t
        0x20t
        0x55t
        0x6et
        0x61t
        0x75t
        0x74t
        0x68t
        0x6ft
        0x72t
        0x69t
        0x7at
        0x65t
        0x64t
        0x34t
        0x30t
        0x33t
        0x20t
        0x46t
        0x6ft
        0x72t
        0x62t
        0x69t
        0x64t
        0x64t
        0x65t
        0x6et
        0x34t
        0x30t
        0x34t
        0x20t
        0x4et
        0x6ft
        0x74t
        0x20t
        0x46t
        0x6ft
        0x75t
        0x6et
        0x64t
        0x35t
        0x30t
        0x30t
        0x20t
        0x49t
        0x6et
        0x74t
        0x65t
        0x72t
        0x6et
        0x61t
        0x6ct
        0x20t
        0x53t
        0x65t
        0x72t
        0x76t
        0x65t
        0x72t
        0x20t
        0x45t
        0x72t
        0x72t
        0x6ft
        0x72t
        0x35t
        0x30t
        0x31t
        0x20t
        0x4et
        0x6ft
        0x74t
        0x20t
        0x49t
        0x6dt
        0x70t
        0x6ct
        0x65t
        0x6dt
        0x65t
        0x6et
        0x74t
        0x65t
        0x64t
        0x35t
        0x30t
        0x33t
        0x20t
        0x53t
        0x65t
        0x72t
        0x76t
        0x69t
        0x63t
        0x65t
        0x20t
        0x55t
        0x6et
        0x61t
        0x76t
        0x61t
        0x69t
        0x6ct
        0x61t
        0x62t
        0x6ct
        0x65t
        0x4at
        0x61t
        0x6et
        0x20t
        0x46t
        0x65t
        0x62t
        0x20t
        0x4dt
        0x61t
        0x72t
        0x20t
        0x41t
        0x70t
        0x72t
        0x20t
        0x4dt
        0x61t
        0x79t
        0x20t
        0x4at
        0x75t
        0x6et
        0x20t
        0x4at
        0x75t
        0x6ct
        0x20t
        0x41t
        0x75t
        0x67t
        0x20t
        0x53t
        0x65t
        0x70t
        0x74t
        0x20t
        0x4ft
        0x63t
        0x74t
        0x20t
        0x4et
        0x6ft
        0x76t
        0x20t
        0x44t
        0x65t
        0x63t
        0x20t
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x20t
        0x4dt
        0x6ft
        0x6et
        0x2ct
        0x20t
        0x54t
        0x75t
        0x65t
        0x2ct
        0x20t
        0x57t
        0x65t
        0x64t
        0x2ct
        0x20t
        0x54t
        0x68t
        0x75t
        0x2ct
        0x20t
        0x46t
        0x72t
        0x69t
        0x2ct
        0x20t
        0x53t
        0x61t
        0x74t
        0x2ct
        0x20t
        0x53t
        0x75t
        0x6et
        0x2ct
        0x20t
        0x47t
        0x4dt
        0x54t
        0x63t
        0x68t
        0x75t
        0x6et
        0x6bt
        0x65t
        0x64t
        0x2ct
        0x74t
        0x65t
        0x78t
        0x74t
        0x2ft
        0x68t
        0x74t
        0x6dt
        0x6ct
        0x2ct
        0x69t
        0x6dt
        0x61t
        0x67t
        0x65t
        0x2ft
        0x70t
        0x6et
        0x67t
        0x2ct
        0x69t
        0x6dt
        0x61t
        0x67t
        0x65t
        0x2ft
        0x6at
        0x70t
        0x67t
        0x2ct
        0x69t
        0x6dt
        0x61t
        0x67t
        0x65t
        0x2ft
        0x67t
        0x69t
        0x66t
        0x2ct
        0x61t
        0x70t
        0x70t
        0x6ct
        0x69t
        0x63t
        0x61t
        0x74t
        0x69t
        0x6ft
        0x6et
        0x2ft
        0x78t
        0x6dt
        0x6ct
        0x2ct
        0x61t
        0x70t
        0x70t
        0x6ct
        0x69t
        0x63t
        0x61t
        0x74t
        0x69t
        0x6ft
        0x6et
        0x2ft
        0x78t
        0x68t
        0x74t
        0x6dt
        0x6ct
        0x2bt
        0x78t
        0x6dt
        0x6ct
        0x2ct
        0x74t
        0x65t
        0x78t
        0x74t
        0x2ft
        0x70t
        0x6ct
        0x61t
        0x69t
        0x6et
        0x2ct
        0x74t
        0x65t
        0x78t
        0x74t
        0x2ft
        0x6at
        0x61t
        0x76t
        0x61t
        0x73t
        0x63t
        0x72t
        0x69t
        0x70t
        0x74t
        0x2ct
        0x70t
        0x75t
        0x62t
        0x6ct
        0x69t
        0x63t
        0x70t
        0x72t
        0x69t
        0x76t
        0x61t
        0x74t
        0x65t
        0x6dt
        0x61t
        0x78t
        0x2dt
        0x61t
        0x67t
        0x65t
        0x3dt
        0x67t
        0x7at
        0x69t
        0x70t
        0x2ct
        0x64t
        0x65t
        0x66t
        0x6ct
        0x61t
        0x74t
        0x65t
        0x2ct
        0x73t
        0x64t
        0x63t
        0x68t
        0x63t
        0x68t
        0x61t
        0x72t
        0x73t
        0x65t
        0x74t
        0x3dt
        0x75t
        0x74t
        0x66t
        0x2dt
        0x38t
        0x63t
        0x68t
        0x61t
        0x72t
        0x73t
        0x65t
        0x74t
        0x3dt
        0x69t
        0x73t
        0x6ft
        0x2dt
        0x38t
        0x38t
        0x35t
        0x39t
        0x2dt
        0x31t
        0x2ct
        0x75t
        0x74t
        0x66t
        0x2dt
        0x2ct
        0x2at
        0x2ct
        0x65t
        0x6et
        0x71t
        0x3dt
        0x30t
        0x2et
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    return-void
.end method

.method static getSignedInt(Lorg/jboss/netty/buffer/ChannelBuffer;I)I
    .registers 4
    .param p0, "buf"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p1, "offset"    # I

    .line 303
    invoke-interface {p0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getByte(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    invoke-interface {p0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getByte(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    invoke-interface {p0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getByte(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    invoke-interface {p0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getByte(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method static getUnsignedInt(Lorg/jboss/netty/buffer/ChannelBuffer;I)I
    .registers 4
    .param p0, "buf"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p1, "offset"    # I

    .line 293
    invoke-interface {p0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getByte(I)B

    move-result v0

    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    invoke-interface {p0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getByte(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    invoke-interface {p0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getByte(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    invoke-interface {p0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getByte(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method static getUnsignedMedium(Lorg/jboss/netty/buffer/ChannelBuffer;I)I
    .registers 4
    .param p0, "buf"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p1, "offset"    # I

    .line 284
    invoke-interface {p0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getByte(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v1, p1, 0x1

    invoke-interface {p0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getByte(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    invoke-interface {p0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getByte(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method static getUnsignedShort(Lorg/jboss/netty/buffer/ChannelBuffer;I)I
    .registers 4
    .param p0, "buf"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p1, "offset"    # I

    .line 276
    invoke-interface {p0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getByte(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    invoke-interface {p0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getByte(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method static isServerId(I)Z
    .registers 2
    .param p0, "id"    # I

    .line 314
    rem-int/lit8 v0, p0, 0x2

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method static validateHeaderName(Ljava/lang/String;)V
    .registers 6
    .param p0, "name"    # Ljava/lang/String;

    .line 321
    if-eqz p0, :cond_73

    .line 324
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_6b

    .line 330
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const v1, 0xffff

    if-gt v0, v1, :cond_54

    .line 334
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_12
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_53

    .line 335
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 336
    .local v1, "c":C
    if-eqz v1, :cond_3c

    .line 340
    const/16 v2, 0x7f

    if-gt v1, v2, :cond_25

    .line 334
    .end local v1    # "c":C
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 341
    .restart local v1    # "c":C
    :cond_25
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "name contains non-ascii character: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 337
    :cond_3c
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "name contains null character: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 345
    .end local v0    # "i":I
    .end local v1    # "c":C
    :cond_53
    return-void

    .line 331
    :cond_54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "name exceeds allowable length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 325
    :cond_6b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name cannot be length zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 322
    :cond_73
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static validateHeaderValue(Ljava/lang/String;)V
    .registers 6
    .param p0, "value"    # Ljava/lang/String;

    .line 351
    if-eqz p0, :cond_38

    .line 354
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_30

    .line 358
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2f

    .line 359
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 360
    .local v1, "c":C
    if-eqz v1, :cond_18

    .line 358
    .end local v1    # "c":C
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 361
    .restart local v1    # "c":C
    :cond_18
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "value contains null character: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 365
    .end local v0    # "i":I
    .end local v1    # "c":C
    :cond_2f
    return-void

    .line 355
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value cannot be length zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 352
    :cond_38
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "value"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
