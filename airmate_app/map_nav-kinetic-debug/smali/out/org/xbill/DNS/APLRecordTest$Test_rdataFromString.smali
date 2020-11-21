.class public Lorg/xbill/DNS/APLRecordTest$Test_rdataFromString;
.super Ljunit/framework/TestCase;
.source "APLRecordTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/APLRecordTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Test_rdataFromString"
.end annotation


# instance fields
.field m_addr4:Ljava/net/InetAddress;

.field m_addr4_bytes:[B

.field m_addr4_string:Ljava/lang/String;

.field m_addr6:Ljava/net/InetAddress;

.field m_addr6_bytes:[B

.field m_addr6_string:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 328
    invoke-direct {p0}, Ljunit/framework/TestCase;-><init>()V

    return-void
.end method


# virtual methods
.method protected setUp()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 340
    const-string v0, "193.160.232.5"

    iput-object v0, p0, Lorg/xbill/DNS/APLRecordTest$Test_rdataFromString;->m_addr4_string:Ljava/lang/String;

    .line 341
    iget-object v0, p0, Lorg/xbill/DNS/APLRecordTest$Test_rdataFromString;->m_addr4_string:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/APLRecordTest$Test_rdataFromString;->m_addr4:Ljava/net/InetAddress;

    .line 342
    iget-object v0, p0, Lorg/xbill/DNS/APLRecordTest$Test_rdataFromString;->m_addr4:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/APLRecordTest$Test_rdataFromString;->m_addr4_bytes:[B

    .line 344
    const-string v0, "2001:db8:85a3:8d3:1319:8a2e:370:7334"

    iput-object v0, p0, Lorg/xbill/DNS/APLRecordTest$Test_rdataFromString;->m_addr6_string:Ljava/lang/String;

    .line 345
    iget-object v0, p0, Lorg/xbill/DNS/APLRecordTest$Test_rdataFromString;->m_addr6_string:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/APLRecordTest$Test_rdataFromString;->m_addr6:Ljava/net/InetAddress;

    .line 346
    iget-object v0, p0, Lorg/xbill/DNS/APLRecordTest$Test_rdataFromString;->m_addr6:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/APLRecordTest$Test_rdataFromString;->m_addr6_bytes:[B

    .line 347
    return-void
.end method

.method public test_colon_and_slash_swapped()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 405
    new-instance v0, Lorg/xbill/DNS/Tokenizer;

    const-string v1, "!1/192.68.0.1:20"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    .line 406
    .local v0, "t":Lorg/xbill/DNS/Tokenizer;
    new-instance v1, Lorg/xbill/DNS/APLRecord;

    invoke-direct {v1}, Lorg/xbill/DNS/APLRecord;-><init>()V

    .line 408
    .local v1, "ar":Lorg/xbill/DNS/APLRecord;
    const/4 v2, 0x0

    :try_start_d
    invoke-virtual {v1, v0, v2}, Lorg/xbill/DNS/APLRecord;->rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V

    .line 409
    const-string v2, "TextParseException not thrown"

    invoke-static {v2}, Lorg/xbill/DNS/APLRecordTest$Test_rdataFromString;->fail(Ljava/lang/String;)V
    :try_end_15
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_d .. :try_end_15} :catch_16

    .line 411
    goto :goto_17

    :catch_16
    move-exception v2

    .line 412
    :goto_17
    return-void
.end method

.method public test_empty_address()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 493
    new-instance v0, Lorg/xbill/DNS/Tokenizer;

    const-string v1, "1:/33"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    .line 494
    .local v0, "t":Lorg/xbill/DNS/Tokenizer;
    new-instance v1, Lorg/xbill/DNS/APLRecord;

    invoke-direct {v1}, Lorg/xbill/DNS/APLRecord;-><init>()V

    .line 496
    .local v1, "ar":Lorg/xbill/DNS/APLRecord;
    const/4 v2, 0x0

    :try_start_d
    invoke-virtual {v1, v0, v2}, Lorg/xbill/DNS/APLRecord;->rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V

    .line 497
    const-string v2, "TextParseException not thrown"

    invoke-static {v2}, Lorg/xbill/DNS/APLRecordTest$Test_rdataFromString;->fail(Ljava/lang/String;)V
    :try_end_15
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_d .. :try_end_15} :catch_16

    .line 499
    goto :goto_17

    :catch_16
    move-exception v2

    .line 500
    :goto_17
    return-void
.end method

.method public test_empty_family()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 427
    new-instance v0, Lorg/xbill/DNS/Tokenizer;

    const-string v1, "!:192.68.0.1/20"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    .line 428
    .local v0, "t":Lorg/xbill/DNS/Tokenizer;
    new-instance v1, Lorg/xbill/DNS/APLRecord;

    invoke-direct {v1}, Lorg/xbill/DNS/APLRecord;-><init>()V

    .line 430
    .local v1, "ar":Lorg/xbill/DNS/APLRecord;
    const/4 v2, 0x0

    :try_start_d
    invoke-virtual {v1, v0, v2}, Lorg/xbill/DNS/APLRecord;->rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V

    .line 431
    const-string v2, "TextParseException not thrown"

    invoke-static {v2}, Lorg/xbill/DNS/APLRecordTest$Test_rdataFromString;->fail(Ljava/lang/String;)V
    :try_end_15
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_d .. :try_end_15} :catch_16

    .line 433
    goto :goto_17

    :catch_16
    move-exception v2

    .line 434
    :goto_17
    return-void
.end method

.method public test_empty_prefix()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 460
    new-instance v0, Lorg/xbill/DNS/Tokenizer;

    const-string v1, "1:192.68.0.1/"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    .line 461
    .local v0, "t":Lorg/xbill/DNS/Tokenizer;
    new-instance v1, Lorg/xbill/DNS/APLRecord;

    invoke-direct {v1}, Lorg/xbill/DNS/APLRecord;-><init>()V

    .line 463
    .local v1, "ar":Lorg/xbill/DNS/APLRecord;
    const/4 v2, 0x0

    :try_start_d
    invoke-virtual {v1, v0, v2}, Lorg/xbill/DNS/APLRecord;->rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V

    .line 464
    const-string v2, "TextParseException not thrown"

    invoke-static {v2}, Lorg/xbill/DNS/APLRecordTest$Test_rdataFromString;->fail(Ljava/lang/String;)V
    :try_end_15
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_d .. :try_end_15} :catch_16

    .line 466
    goto :goto_17

    :catch_16
    move-exception v2

    .line 467
    :goto_17
    return-void
.end method

.method public test_invalid_family()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 449
    new-instance v0, Lorg/xbill/DNS/Tokenizer;

    const-string v1, "3:192.68.0.1/20"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    .line 450
    .local v0, "t":Lorg/xbill/DNS/Tokenizer;
    new-instance v1, Lorg/xbill/DNS/APLRecord;

    invoke-direct {v1}, Lorg/xbill/DNS/APLRecord;-><init>()V

    .line 452
    .local v1, "ar":Lorg/xbill/DNS/APLRecord;
    const/4 v2, 0x0

    :try_start_d
    invoke-virtual {v1, v0, v2}, Lorg/xbill/DNS/APLRecord;->rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V

    .line 453
    const-string v2, "TextParseException not thrown"

    invoke-static {v2}, Lorg/xbill/DNS/APLRecordTest$Test_rdataFromString;->fail(Ljava/lang/String;)V
    :try_end_15
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_d .. :try_end_15} :catch_16

    .line 455
    goto :goto_17

    :catch_16
    move-exception v2

    .line 456
    :goto_17
    return-void
.end method

.method public test_invalid_prefix()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 482
    new-instance v0, Lorg/xbill/DNS/Tokenizer;

    const-string v1, "1:192.68.0.1/33"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    .line 483
    .local v0, "t":Lorg/xbill/DNS/Tokenizer;
    new-instance v1, Lorg/xbill/DNS/APLRecord;

    invoke-direct {v1}, Lorg/xbill/DNS/APLRecord;-><init>()V

    .line 485
    .local v1, "ar":Lorg/xbill/DNS/APLRecord;
    const/4 v2, 0x0

    :try_start_d
    invoke-virtual {v1, v0, v2}, Lorg/xbill/DNS/APLRecord;->rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V

    .line 486
    const-string v2, "TextParseException not thrown"

    invoke-static {v2}, Lorg/xbill/DNS/APLRecordTest$Test_rdataFromString;->fail(Ljava/lang/String;)V
    :try_end_15
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_d .. :try_end_15} :catch_16

    .line 488
    goto :goto_17

    :catch_16
    move-exception v2

    .line 489
    :goto_17
    return-void
.end method

.method public test_malformed_address()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 504
    new-instance v0, Lorg/xbill/DNS/Tokenizer;

    const-string v1, "1:A.B.C.D/33"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    .line 505
    .local v0, "t":Lorg/xbill/DNS/Tokenizer;
    new-instance v1, Lorg/xbill/DNS/APLRecord;

    invoke-direct {v1}, Lorg/xbill/DNS/APLRecord;-><init>()V

    .line 507
    .local v1, "ar":Lorg/xbill/DNS/APLRecord;
    const/4 v2, 0x0

    :try_start_d
    invoke-virtual {v1, v0, v2}, Lorg/xbill/DNS/APLRecord;->rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V

    .line 508
    const-string v2, "TextParseException not thrown"

    invoke-static {v2}, Lorg/xbill/DNS/APLRecordTest$Test_rdataFromString;->fail(Ljava/lang/String;)V
    :try_end_15
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_d .. :try_end_15} :catch_16

    .line 510
    goto :goto_17

    :catch_16
    move-exception v2

    .line 511
    :goto_17
    return-void
.end method

.method public test_malformed_family()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 438
    new-instance v0, Lorg/xbill/DNS/Tokenizer;

    const-string v1, "family:192.68.0.1/20"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    .line 439
    .local v0, "t":Lorg/xbill/DNS/Tokenizer;
    new-instance v1, Lorg/xbill/DNS/APLRecord;

    invoke-direct {v1}, Lorg/xbill/DNS/APLRecord;-><init>()V

    .line 441
    .local v1, "ar":Lorg/xbill/DNS/APLRecord;
    const/4 v2, 0x0

    :try_start_d
    invoke-virtual {v1, v0, v2}, Lorg/xbill/DNS/APLRecord;->rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V

    .line 442
    const-string v2, "TextParseException not thrown"

    invoke-static {v2}, Lorg/xbill/DNS/APLRecordTest$Test_rdataFromString;->fail(Ljava/lang/String;)V
    :try_end_15
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_d .. :try_end_15} :catch_16

    .line 444
    goto :goto_17

    :catch_16
    move-exception v2

    .line 445
    :goto_17
    return-void
.end method

.method public test_malformed_prefix()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 471
    new-instance v0, Lorg/xbill/DNS/Tokenizer;

    const-string v1, "1:192.68.0.1/prefix"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    .line 472
    .local v0, "t":Lorg/xbill/DNS/Tokenizer;
    new-instance v1, Lorg/xbill/DNS/APLRecord;

    invoke-direct {v1}, Lorg/xbill/DNS/APLRecord;-><init>()V

    .line 474
    .local v1, "ar":Lorg/xbill/DNS/APLRecord;
    const/4 v2, 0x0

    :try_start_d
    invoke-virtual {v1, v0, v2}, Lorg/xbill/DNS/APLRecord;->rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V

    .line 475
    const-string v2, "TextParseException not thrown"

    invoke-static {v2}, Lorg/xbill/DNS/APLRecordTest$Test_rdataFromString;->fail(Ljava/lang/String;)V
    :try_end_15
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_d .. :try_end_15} :catch_16

    .line 477
    goto :goto_17

    :catch_16
    move-exception v2

    .line 478
    :goto_17
    return-void
.end method

.method public test_no_colon()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 394
    new-instance v0, Lorg/xbill/DNS/Tokenizer;

    const-string v1, "!1192.68.0.1/20"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    .line 395
    .local v0, "t":Lorg/xbill/DNS/Tokenizer;
    new-instance v1, Lorg/xbill/DNS/APLRecord;

    invoke-direct {v1}, Lorg/xbill/DNS/APLRecord;-><init>()V

    .line 397
    .local v1, "ar":Lorg/xbill/DNS/APLRecord;
    const/4 v2, 0x0

    :try_start_d
    invoke-virtual {v1, v0, v2}, Lorg/xbill/DNS/APLRecord;->rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V

    .line 398
    const-string v2, "TextParseException not thrown"

    invoke-static {v2}, Lorg/xbill/DNS/APLRecordTest$Test_rdataFromString;->fail(Ljava/lang/String;)V
    :try_end_15
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_d .. :try_end_15} :catch_16

    .line 400
    goto :goto_17

    :catch_16
    move-exception v2

    .line 401
    :goto_17
    return-void
.end method

.method public test_no_slash()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 416
    new-instance v0, Lorg/xbill/DNS/Tokenizer;

    const-string v1, "!1:192.68.0.1|20"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    .line 417
    .local v0, "t":Lorg/xbill/DNS/Tokenizer;
    new-instance v1, Lorg/xbill/DNS/APLRecord;

    invoke-direct {v1}, Lorg/xbill/DNS/APLRecord;-><init>()V

    .line 419
    .local v1, "ar":Lorg/xbill/DNS/APLRecord;
    const/4 v2, 0x0

    :try_start_d
    invoke-virtual {v1, v0, v2}, Lorg/xbill/DNS/APLRecord;->rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V

    .line 420
    const-string v2, "TextParseException not thrown"

    invoke-static {v2}, Lorg/xbill/DNS/APLRecordTest$Test_rdataFromString;->fail(Ljava/lang/String;)V
    :try_end_15
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_d .. :try_end_15} :catch_16

    .line 422
    goto :goto_17

    :catch_16
    move-exception v2

    .line 423
    :goto_17
    return-void
.end method

.method public test_validIPv4()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 351
    new-instance v0, Lorg/xbill/DNS/Tokenizer;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/xbill/DNS/APLRecordTest$Test_rdataFromString;->m_addr4_string:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "/11\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    .line 352
    .local v0, "t":Lorg/xbill/DNS/Tokenizer;
    new-instance v1, Lorg/xbill/DNS/APLRecord;

    invoke-direct {v1}, Lorg/xbill/DNS/APLRecord;-><init>()V

    .line 353
    .local v1, "ar":Lorg/xbill/DNS/APLRecord;
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/xbill/DNS/APLRecord;->rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V

    .line 355
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 356
    .local v2, "exp":Ljava/util/ArrayList;
    new-instance v3, Lorg/xbill/DNS/APLRecord$Element;

    iget-object v4, p0, Lorg/xbill/DNS/APLRecordTest$Test_rdataFromString;->m_addr4:Ljava/net/InetAddress;

    const/4 v5, 0x0

    const/16 v6, 0xb

    invoke-direct {v3, v5, v4, v6}, Lorg/xbill/DNS/APLRecord$Element;-><init>(ZLjava/net/InetAddress;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    invoke-virtual {v1}, Lorg/xbill/DNS/APLRecord;->getElements()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/xbill/DNS/APLRecordTest$Test_rdataFromString;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 361
    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v3

    iget v3, v3, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    const/4 v4, 0x1

    invoke-static {v4, v3}, Lorg/xbill/DNS/APLRecordTest$Test_rdataFromString;->assertEquals(II)V

    .line 362
    return-void
.end method

.method public test_validIPv6()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 379
    new-instance v0, Lorg/xbill/DNS/Tokenizer;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "!2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/xbill/DNS/APLRecordTest$Test_rdataFromString;->m_addr6_string:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "/36\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    .line 380
    .local v0, "t":Lorg/xbill/DNS/Tokenizer;
    new-instance v1, Lorg/xbill/DNS/APLRecord;

    invoke-direct {v1}, Lorg/xbill/DNS/APLRecord;-><init>()V

    .line 381
    .local v1, "ar":Lorg/xbill/DNS/APLRecord;
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/xbill/DNS/APLRecord;->rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V

    .line 383
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 384
    .local v2, "exp":Ljava/util/ArrayList;
    new-instance v3, Lorg/xbill/DNS/APLRecord$Element;

    iget-object v4, p0, Lorg/xbill/DNS/APLRecordTest$Test_rdataFromString;->m_addr6:Ljava/net/InetAddress;

    const/4 v5, 0x1

    const/16 v6, 0x24

    invoke-direct {v3, v5, v4, v6}, Lorg/xbill/DNS/APLRecord$Element;-><init>(ZLjava/net/InetAddress;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    invoke-virtual {v1}, Lorg/xbill/DNS/APLRecord;->getElements()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/xbill/DNS/APLRecordTest$Test_rdataFromString;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 389
    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v3

    iget v3, v3, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    invoke-static {v5, v3}, Lorg/xbill/DNS/APLRecordTest$Test_rdataFromString;->assertEquals(II)V

    .line 390
    return-void
.end method

.method public test_valid_multi()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 366
    new-instance v0, Lorg/xbill/DNS/Tokenizer;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/xbill/DNS/APLRecordTest$Test_rdataFromString;->m_addr4_string:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "/11 !2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/xbill/DNS/APLRecordTest$Test_rdataFromString;->m_addr6_string:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "/100"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    .line 367
    .local v0, "t":Lorg/xbill/DNS/Tokenizer;
    new-instance v1, Lorg/xbill/DNS/APLRecord;

    invoke-direct {v1}, Lorg/xbill/DNS/APLRecord;-><init>()V

    .line 368
    .local v1, "ar":Lorg/xbill/DNS/APLRecord;
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/xbill/DNS/APLRecord;->rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V

    .line 370
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 371
    .local v2, "exp":Ljava/util/ArrayList;
    new-instance v3, Lorg/xbill/DNS/APLRecord$Element;

    iget-object v4, p0, Lorg/xbill/DNS/APLRecordTest$Test_rdataFromString;->m_addr4:Ljava/net/InetAddress;

    const/4 v5, 0x0

    const/16 v6, 0xb

    invoke-direct {v3, v5, v4, v6}, Lorg/xbill/DNS/APLRecord$Element;-><init>(ZLjava/net/InetAddress;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    new-instance v3, Lorg/xbill/DNS/APLRecord$Element;

    iget-object v4, p0, Lorg/xbill/DNS/APLRecordTest$Test_rdataFromString;->m_addr6:Ljava/net/InetAddress;

    const/4 v5, 0x1

    const/16 v6, 0x64

    invoke-direct {v3, v5, v4, v6}, Lorg/xbill/DNS/APLRecord$Element;-><init>(ZLjava/net/InetAddress;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    invoke-virtual {v1}, Lorg/xbill/DNS/APLRecord;->getElements()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/xbill/DNS/APLRecordTest$Test_rdataFromString;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 375
    return-void
.end method
