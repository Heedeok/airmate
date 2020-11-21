.class public Lorg/xbill/DNS/GPOSRecordTest$Test_rdataFromString;
.super Ljunit/framework/TestCase;
.source "GPOSRecordTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/GPOSRecordTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Test_rdataFromString"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 298
    invoke-direct {p0}, Ljunit/framework/TestCase;-><init>()V

    return-void
.end method


# virtual methods
.method public test_basic()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 302
    new-instance v0, Lorg/xbill/DNS/Tokenizer;

    const-string v1, "10.45 171.121212 1010787"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    .line 304
    .local v0, "t":Lorg/xbill/DNS/Tokenizer;
    new-instance v1, Lorg/xbill/DNS/GPOSRecord;

    invoke-direct {v1}, Lorg/xbill/DNS/GPOSRecord;-><init>()V

    .line 305
    .local v1, "gr":Lorg/xbill/DNS/GPOSRecord;
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/xbill/DNS/GPOSRecord;->rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V

    .line 306
    new-instance v2, Ljava/lang/Double;

    const-wide v3, 0x4024e66666666666L    # 10.45

    invoke-direct {v2, v3, v4}, Ljava/lang/Double;-><init>(D)V

    new-instance v3, Ljava/lang/Double;

    invoke-virtual {v1}, Lorg/xbill/DNS/GPOSRecord;->getLongitude()D

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/lang/Double;-><init>(D)V

    invoke-static {v2, v3}, Lorg/xbill/DNS/GPOSRecordTest$Test_rdataFromString;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 307
    new-instance v2, Ljava/lang/Double;

    const-wide v3, 0x406563e0f7fcfc40L    # 171.121212

    invoke-direct {v2, v3, v4}, Ljava/lang/Double;-><init>(D)V

    new-instance v3, Ljava/lang/Double;

    invoke-virtual {v1}, Lorg/xbill/DNS/GPOSRecord;->getLatitude()D

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/lang/Double;-><init>(D)V

    invoke-static {v2, v3}, Lorg/xbill/DNS/GPOSRecordTest$Test_rdataFromString;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 308
    new-instance v2, Ljava/lang/Double;

    const-wide v3, 0x412ed8c600000000L    # 1010787.0

    invoke-direct {v2, v3, v4}, Ljava/lang/Double;-><init>(D)V

    new-instance v3, Ljava/lang/Double;

    invoke-virtual {v1}, Lorg/xbill/DNS/GPOSRecord;->getAltitude()D

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/lang/Double;-><init>(D)V

    invoke-static {v2, v3}, Lorg/xbill/DNS/GPOSRecordTest$Test_rdataFromString;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 309
    return-void
.end method

.method public test_invalid_string()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 361
    new-instance v0, Lorg/xbill/DNS/Tokenizer;

    const-string v1, "1.0 2.0 \\435"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    .line 363
    .local v0, "t":Lorg/xbill/DNS/Tokenizer;
    :try_start_7
    new-instance v1, Lorg/xbill/DNS/GPOSRecord;

    invoke-direct {v1}, Lorg/xbill/DNS/GPOSRecord;-><init>()V

    .line 364
    .local v1, "gr":Lorg/xbill/DNS/GPOSRecord;
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/xbill/DNS/GPOSRecord;->rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V
    :try_end_10
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_7 .. :try_end_10} :catch_11

    .line 366
    .end local v1    # "gr":Lorg/xbill/DNS/GPOSRecord;
    goto :goto_12

    :catch_11
    move-exception v1

    :goto_12
    return-void
.end method

.method public test_latitude_toobig()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 349
    new-instance v0, Lorg/xbill/DNS/Tokenizer;

    const-string v1, "0.0 180.01 1010787"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    .line 351
    .local v0, "t":Lorg/xbill/DNS/Tokenizer;
    new-instance v1, Lorg/xbill/DNS/GPOSRecord;

    invoke-direct {v1}, Lorg/xbill/DNS/GPOSRecord;-><init>()V

    .line 353
    .local v1, "gr":Lorg/xbill/DNS/GPOSRecord;
    const/4 v2, 0x0

    :try_start_d
    invoke-virtual {v1, v0, v2}, Lorg/xbill/DNS/GPOSRecord;->rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V

    .line 354
    const-string v2, "IOException not thrown"

    invoke-static {v2}, Lorg/xbill/DNS/GPOSRecordTest$Test_rdataFromString;->fail(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_15} :catch_16

    .line 356
    goto :goto_17

    :catch_16
    move-exception v2

    .line 357
    :goto_17
    return-void
.end method

.method public test_latitude_toosmall()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 337
    new-instance v0, Lorg/xbill/DNS/Tokenizer;

    const-string v1, "0.0 -180.01 1010787"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    .line 339
    .local v0, "t":Lorg/xbill/DNS/Tokenizer;
    new-instance v1, Lorg/xbill/DNS/GPOSRecord;

    invoke-direct {v1}, Lorg/xbill/DNS/GPOSRecord;-><init>()V

    .line 341
    .local v1, "gr":Lorg/xbill/DNS/GPOSRecord;
    const/4 v2, 0x0

    :try_start_d
    invoke-virtual {v1, v0, v2}, Lorg/xbill/DNS/GPOSRecord;->rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V

    .line 342
    const-string v2, "IOException not thrown"

    invoke-static {v2}, Lorg/xbill/DNS/GPOSRecordTest$Test_rdataFromString;->fail(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_15} :catch_16

    .line 344
    goto :goto_17

    :catch_16
    move-exception v2

    .line 345
    :goto_17
    return-void
.end method

.method public test_longitude_toobig()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 325
    new-instance v0, Lorg/xbill/DNS/Tokenizer;

    const-string v1, "90.00001 171.121212 1010787"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    .line 327
    .local v0, "t":Lorg/xbill/DNS/Tokenizer;
    new-instance v1, Lorg/xbill/DNS/GPOSRecord;

    invoke-direct {v1}, Lorg/xbill/DNS/GPOSRecord;-><init>()V

    .line 329
    .local v1, "gr":Lorg/xbill/DNS/GPOSRecord;
    const/4 v2, 0x0

    :try_start_d
    invoke-virtual {v1, v0, v2}, Lorg/xbill/DNS/GPOSRecord;->rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V

    .line 330
    const-string v2, "IOException not thrown"

    invoke-static {v2}, Lorg/xbill/DNS/GPOSRecordTest$Test_rdataFromString;->fail(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_15} :catch_16

    .line 332
    goto :goto_17

    :catch_16
    move-exception v2

    .line 333
    :goto_17
    return-void
.end method

.method public test_longitude_toosmall()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 313
    new-instance v0, Lorg/xbill/DNS/Tokenizer;

    const-string v1, "-100.390 171.121212 1010787"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    .line 315
    .local v0, "t":Lorg/xbill/DNS/Tokenizer;
    new-instance v1, Lorg/xbill/DNS/GPOSRecord;

    invoke-direct {v1}, Lorg/xbill/DNS/GPOSRecord;-><init>()V

    .line 317
    .local v1, "gr":Lorg/xbill/DNS/GPOSRecord;
    const/4 v2, 0x0

    :try_start_d
    invoke-virtual {v1, v0, v2}, Lorg/xbill/DNS/GPOSRecord;->rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V

    .line 318
    const-string v2, "IOException not thrown"

    invoke-static {v2}, Lorg/xbill/DNS/GPOSRecordTest$Test_rdataFromString;->fail(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_15} :catch_16

    .line 320
    goto :goto_17

    :catch_16
    move-exception v2

    .line 321
    :goto_17
    return-void
.end method
