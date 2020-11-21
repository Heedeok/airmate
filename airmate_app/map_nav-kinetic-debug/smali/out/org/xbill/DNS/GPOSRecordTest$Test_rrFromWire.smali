.class public Lorg/xbill/DNS/GPOSRecordTest$Test_rrFromWire;
.super Ljunit/framework/TestCase;
.source "GPOSRecordTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/GPOSRecordTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Test_rrFromWire"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 221
    invoke-direct {p0}, Ljunit/framework/TestCase;-><init>()V

    return-void
.end method


# virtual methods
.method public test_basic()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 225
    const/16 v0, 0x11

    new-array v0, v0, [B

    fill-array-data v0, :array_54

    .line 228
    .local v0, "raw":[B
    new-instance v1, Lorg/xbill/DNS/DNSInput;

    invoke-direct {v1, v0}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    .line 230
    .local v1, "in":Lorg/xbill/DNS/DNSInput;
    new-instance v2, Lorg/xbill/DNS/GPOSRecord;

    invoke-direct {v2}, Lorg/xbill/DNS/GPOSRecord;-><init>()V

    .line 231
    .local v2, "gr":Lorg/xbill/DNS/GPOSRecord;
    invoke-virtual {v2, v1}, Lorg/xbill/DNS/GPOSRecord;->rrFromWire(Lorg/xbill/DNS/DNSInput;)V

    .line 232
    new-instance v3, Ljava/lang/Double;

    const-wide v4, -0x3fdfc28f5c28f5c3L    # -8.12

    invoke-direct {v3, v4, v5}, Ljava/lang/Double;-><init>(D)V

    new-instance v4, Ljava/lang/Double;

    invoke-virtual {v2}, Lorg/xbill/DNS/GPOSRecord;->getLongitude()D

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/lang/Double;-><init>(D)V

    invoke-static {v3, v4}, Lorg/xbill/DNS/GPOSRecordTest$Test_rrFromWire;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 233
    new-instance v3, Ljava/lang/Double;

    const-wide v4, 0x405ec47ae147ae14L    # 123.07

    invoke-direct {v3, v4, v5}, Ljava/lang/Double;-><init>(D)V

    new-instance v4, Ljava/lang/Double;

    invoke-virtual {v2}, Lorg/xbill/DNS/GPOSRecord;->getLatitude()D

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/lang/Double;-><init>(D)V

    invoke-static {v3, v4}, Lorg/xbill/DNS/GPOSRecordTest$Test_rrFromWire;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 234
    new-instance v3, Ljava/lang/Double;

    const-wide/16 v4, 0x0

    invoke-direct {v3, v4, v5}, Ljava/lang/Double;-><init>(D)V

    new-instance v4, Ljava/lang/Double;

    invoke-virtual {v2}, Lorg/xbill/DNS/GPOSRecord;->getAltitude()D

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/lang/Double;-><init>(D)V

    invoke-static {v3, v4}, Lorg/xbill/DNS/GPOSRecordTest$Test_rrFromWire;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 235
    return-void

    :array_54
    .array-data 1
        0x5t
        0x2dt
        0x38t
        0x2et
        0x31t
        0x32t
        0x6t
        0x31t
        0x32t
        0x33t
        0x2et
        0x30t
        0x37t
        0x3t
        0x30t
        0x2et
        0x30t
    .end array-data
.end method

.method public test_latitude_toobig()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 284
    const/16 v0, 0x11

    new-array v0, v0, [B

    fill-array-data v0, :array_1c

    .line 287
    .local v0, "raw":[B
    new-instance v1, Lorg/xbill/DNS/DNSInput;

    invoke-direct {v1, v0}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    .line 289
    .local v1, "in":Lorg/xbill/DNS/DNSInput;
    new-instance v2, Lorg/xbill/DNS/GPOSRecord;

    invoke-direct {v2}, Lorg/xbill/DNS/GPOSRecord;-><init>()V

    .line 291
    .local v2, "gr":Lorg/xbill/DNS/GPOSRecord;
    :try_start_11
    invoke-virtual {v2, v1}, Lorg/xbill/DNS/GPOSRecord;->rrFromWire(Lorg/xbill/DNS/DNSInput;)V

    .line 292
    const-string v3, "WireParseException not thrown"

    invoke-static {v3}, Lorg/xbill/DNS/GPOSRecordTest$Test_rrFromWire;->fail(Ljava/lang/String;)V
    :try_end_19
    .catch Lorg/xbill/DNS/WireParseException; {:try_start_11 .. :try_end_19} :catch_1a

    .line 294
    goto :goto_1b

    :catch_1a
    move-exception v3

    .line 295
    :goto_1b
    return-void

    :array_1c
    .array-data 1
        0x5t
        0x2dt
        0x38t
        0x35t
        0x2et
        0x30t
        0x6t
        0x32t
        0x31t
        0x39t
        0x30t
        0x2et
        0x30t
        0x3t
        0x30t
        0x2et
        0x30t
    .end array-data
.end method

.method public test_latitude_toosmall()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 269
    const/16 v0, 0x11

    new-array v0, v0, [B

    fill-array-data v0, :array_1c

    .line 272
    .local v0, "raw":[B
    new-instance v1, Lorg/xbill/DNS/DNSInput;

    invoke-direct {v1, v0}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    .line 274
    .local v1, "in":Lorg/xbill/DNS/DNSInput;
    new-instance v2, Lorg/xbill/DNS/GPOSRecord;

    invoke-direct {v2}, Lorg/xbill/DNS/GPOSRecord;-><init>()V

    .line 276
    .local v2, "gr":Lorg/xbill/DNS/GPOSRecord;
    :try_start_11
    invoke-virtual {v2, v1}, Lorg/xbill/DNS/GPOSRecord;->rrFromWire(Lorg/xbill/DNS/DNSInput;)V

    .line 277
    const-string v3, "WireParseException not thrown"

    invoke-static {v3}, Lorg/xbill/DNS/GPOSRecordTest$Test_rrFromWire;->fail(Ljava/lang/String;)V
    :try_end_19
    .catch Lorg/xbill/DNS/WireParseException; {:try_start_11 .. :try_end_19} :catch_1a

    .line 279
    goto :goto_1b

    :catch_1a
    move-exception v3

    .line 280
    :goto_1b
    return-void

    :array_1c
    .array-data 1
        0x5t
        0x2dt
        0x38t
        0x35t
        0x2et
        0x30t
        0x6t
        0x2dt
        0x31t
        0x39t
        0x30t
        0x2et
        0x30t
        0x3t
        0x30t
        0x2et
        0x30t
    .end array-data
.end method

.method public test_longitude_toobig()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 254
    const/16 v0, 0x11

    new-array v0, v0, [B

    fill-array-data v0, :array_1c

    .line 257
    .local v0, "raw":[B
    new-instance v1, Lorg/xbill/DNS/DNSInput;

    invoke-direct {v1, v0}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    .line 259
    .local v1, "in":Lorg/xbill/DNS/DNSInput;
    new-instance v2, Lorg/xbill/DNS/GPOSRecord;

    invoke-direct {v2}, Lorg/xbill/DNS/GPOSRecord;-><init>()V

    .line 261
    .local v2, "gr":Lorg/xbill/DNS/GPOSRecord;
    :try_start_11
    invoke-virtual {v2, v1}, Lorg/xbill/DNS/GPOSRecord;->rrFromWire(Lorg/xbill/DNS/DNSInput;)V

    .line 262
    const-string v3, "WireParseException not thrown"

    invoke-static {v3}, Lorg/xbill/DNS/GPOSRecordTest$Test_rrFromWire;->fail(Ljava/lang/String;)V
    :try_end_19
    .catch Lorg/xbill/DNS/WireParseException; {:try_start_11 .. :try_end_19} :catch_1a

    .line 264
    goto :goto_1b

    :catch_1a
    move-exception v3

    .line 265
    :goto_1b
    return-void

    :array_1c
    .array-data 1
        0x5t
        0x31t
        0x38t
        0x35t
        0x2et
        0x30t
        0x6t
        0x31t
        0x32t
        0x33t
        0x2et
        0x30t
        0x37t
        0x3t
        0x30t
        0x2et
        0x30t
    .end array-data
.end method

.method public test_longitude_toosmall()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    const/16 v0, 0x11

    new-array v0, v0, [B

    fill-array-data v0, :array_1c

    .line 242
    .local v0, "raw":[B
    new-instance v1, Lorg/xbill/DNS/DNSInput;

    invoke-direct {v1, v0}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    .line 244
    .local v1, "in":Lorg/xbill/DNS/DNSInput;
    new-instance v2, Lorg/xbill/DNS/GPOSRecord;

    invoke-direct {v2}, Lorg/xbill/DNS/GPOSRecord;-><init>()V

    .line 246
    .local v2, "gr":Lorg/xbill/DNS/GPOSRecord;
    :try_start_11
    invoke-virtual {v2, v1}, Lorg/xbill/DNS/GPOSRecord;->rrFromWire(Lorg/xbill/DNS/DNSInput;)V

    .line 247
    const-string v3, "WireParseException not thrown"

    invoke-static {v3}, Lorg/xbill/DNS/GPOSRecordTest$Test_rrFromWire;->fail(Ljava/lang/String;)V
    :try_end_19
    .catch Lorg/xbill/DNS/WireParseException; {:try_start_11 .. :try_end_19} :catch_1a

    .line 249
    goto :goto_1b

    :catch_1a
    move-exception v3

    .line 250
    :goto_1b
    return-void

    :array_1c
    .array-data 1
        0x5t
        0x2dt
        0x39t
        0x35t
        0x2et
        0x30t
        0x6t
        0x31t
        0x32t
        0x33t
        0x2et
        0x30t
        0x37t
        0x3t
        0x30t
        0x2et
        0x30t
    .end array-data
.end method
