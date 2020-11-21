.class public Lorg/xbill/DNS/DSRecordTest;
.super Ljunit/framework/TestCase;
.source "DSRecordTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/DSRecordTest$Test_Ctor_7arg;
    }
.end annotation


# static fields
.field static synthetic class$org$xbill$DNS$DSRecordTest:Ljava/lang/Class;

.field static synthetic class$org$xbill$DNS$DSRecordTest$Test_Ctor_7arg:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljunit/framework/TestCase;-><init>()V

    .line 65
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .param p0, "x0"    # Ljava/lang/String;

    .line 236
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    :catch_5
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method

.method public static suite()Ljunit/framework/Test;
    .registers 2

    .line 235
    new-instance v0, Ljunit/framework/TestSuite;

    invoke-direct {v0}, Ljunit/framework/TestSuite;-><init>()V

    .line 236
    .local v0, "s":Ljunit/framework/TestSuite;
    sget-object v1, Lorg/xbill/DNS/DSRecordTest;->class$org$xbill$DNS$DSRecordTest$Test_Ctor_7arg:Ljava/lang/Class;

    if-nez v1, :cond_12

    const-string v1, "org.xbill.DNS.DSRecordTest$Test_Ctor_7arg"

    invoke-static {v1}, Lorg/xbill/DNS/DSRecordTest;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/xbill/DNS/DSRecordTest;->class$org$xbill$DNS$DSRecordTest$Test_Ctor_7arg:Ljava/lang/Class;

    goto :goto_14

    :cond_12
    sget-object v1, Lorg/xbill/DNS/DSRecordTest;->class$org$xbill$DNS$DSRecordTest$Test_Ctor_7arg:Ljava/lang/Class;

    :goto_14
    invoke-virtual {v0, v1}, Ljunit/framework/TestSuite;->addTestSuite(Ljava/lang/Class;)V

    .line 237
    sget-object v1, Lorg/xbill/DNS/DSRecordTest;->class$org$xbill$DNS$DSRecordTest:Ljava/lang/Class;

    if-nez v1, :cond_24

    const-string v1, "org.xbill.DNS.DSRecordTest"

    invoke-static {v1}, Lorg/xbill/DNS/DSRecordTest;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/xbill/DNS/DSRecordTest;->class$org$xbill$DNS$DSRecordTest:Ljava/lang/Class;

    goto :goto_26

    :cond_24
    sget-object v1, Lorg/xbill/DNS/DSRecordTest;->class$org$xbill$DNS$DSRecordTest:Ljava/lang/Class;

    :goto_26
    invoke-virtual {v0, v1}, Ljunit/framework/TestSuite;->addTestSuite(Ljava/lang/Class;)V

    .line 238
    return-object v0
.end method


# virtual methods
.method public test_ctor_0arg()V
    .registers 8

    .line 47
    new-instance v0, Lorg/xbill/DNS/DSRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/DSRecord;-><init>()V

    .line 48
    .local v0, "dr":Lorg/xbill/DNS/DSRecord;
    invoke-virtual {v0}, Lorg/xbill/DNS/DSRecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object v1

    invoke-static {v1}, Lorg/xbill/DNS/DSRecordTest;->assertNull(Ljava/lang/Object;)V

    .line 49
    invoke-virtual {v0}, Lorg/xbill/DNS/DSRecord;->getType()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lorg/xbill/DNS/DSRecordTest;->assertEquals(II)V

    .line 50
    invoke-virtual {v0}, Lorg/xbill/DNS/DSRecord;->getDClass()I

    move-result v1

    invoke-static {v2, v1}, Lorg/xbill/DNS/DSRecordTest;->assertEquals(II)V

    .line 51
    invoke-virtual {v0}, Lorg/xbill/DNS/DSRecord;->getTTL()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    invoke-static {v5, v6, v3, v4}, Lorg/xbill/DNS/DSRecordTest;->assertEquals(JJ)V

    .line 52
    invoke-virtual {v0}, Lorg/xbill/DNS/DSRecord;->getAlgorithm()I

    move-result v1

    invoke-static {v2, v1}, Lorg/xbill/DNS/DSRecordTest;->assertEquals(II)V

    .line 53
    invoke-virtual {v0}, Lorg/xbill/DNS/DSRecord;->getDigestID()I

    move-result v1

    invoke-static {v2, v1}, Lorg/xbill/DNS/DSRecordTest;->assertEquals(II)V

    .line 54
    invoke-virtual {v0}, Lorg/xbill/DNS/DSRecord;->getDigest()[B

    move-result-object v1

    invoke-static {v1}, Lorg/xbill/DNS/DSRecordTest;->assertNull(Ljava/lang/Object;)V

    .line 55
    invoke-virtual {v0}, Lorg/xbill/DNS/DSRecord;->getFootprint()I

    move-result v1

    invoke-static {v2, v1}, Lorg/xbill/DNS/DSRecordTest;->assertEquals(II)V

    .line 56
    return-void
.end method

.method public test_getObject()V
    .registers 4

    .line 60
    new-instance v0, Lorg/xbill/DNS/DSRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/DSRecord;-><init>()V

    .line 61
    .local v0, "dr":Lorg/xbill/DNS/DSRecord;
    invoke-virtual {v0}, Lorg/xbill/DNS/DSRecord;->getObject()Lorg/xbill/DNS/Record;

    move-result-object v1

    .line 62
    .local v1, "r":Lorg/xbill/DNS/Record;
    instance-of v2, v1, Lorg/xbill/DNS/DSRecord;

    invoke-static {v2}, Lorg/xbill/DNS/DSRecordTest;->assertTrue(Z)V

    .line 63
    return-void
.end method

.method public test_rdataFromString()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_44

    .line 194
    .local v0, "raw":[B
    new-instance v1, Lorg/xbill/DNS/Tokenizer;

    const-string v2, "43981 239 1 23456789AB"

    invoke-direct {v1, v2}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    .line 196
    .local v1, "t":Lorg/xbill/DNS/Tokenizer;
    new-instance v2, Lorg/xbill/DNS/DSRecord;

    invoke-direct {v2}, Lorg/xbill/DNS/DSRecord;-><init>()V

    .line 197
    .local v2, "dr":Lorg/xbill/DNS/DSRecord;
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lorg/xbill/DNS/DSRecord;->rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V

    .line 198
    invoke-virtual {v2}, Lorg/xbill/DNS/DSRecord;->getFootprint()I

    move-result v3

    const v4, 0xabcd

    invoke-static {v4, v3}, Lorg/xbill/DNS/DSRecordTest;->assertEquals(II)V

    .line 199
    invoke-virtual {v2}, Lorg/xbill/DNS/DSRecord;->getAlgorithm()I

    move-result v3

    const/16 v4, 0xef

    invoke-static {v4, v3}, Lorg/xbill/DNS/DSRecordTest;->assertEquals(II)V

    .line 200
    invoke-virtual {v2}, Lorg/xbill/DNS/DSRecord;->getDigestID()I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v4, v3}, Lorg/xbill/DNS/DSRecordTest;->assertEquals(II)V

    .line 201
    const/4 v3, 0x5

    new-array v3, v3, [B

    fill-array-data v3, :array_4c

    invoke-virtual {v2}, Lorg/xbill/DNS/DSRecord;->getDigest()[B

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    invoke-static {v3}, Lorg/xbill/DNS/DSRecordTest;->assertTrue(Z)V

    .line 203
    return-void

    :array_44
    .array-data 1
        -0x55t
        -0x33t
        -0x11t
        0x1t
        0x23t
        0x45t
        0x67t
        -0x77t
    .end array-data

    :array_4c
    .array-data 1
        0x23t
        0x45t
        0x67t
        -0x77t
        -0x55t
    .end array-data
.end method

.method public test_rrFromWire()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_42

    .line 178
    .local v0, "raw":[B
    new-instance v1, Lorg/xbill/DNS/DNSInput;

    invoke-direct {v1, v0}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    .line 180
    .local v1, "in":Lorg/xbill/DNS/DNSInput;
    new-instance v2, Lorg/xbill/DNS/DSRecord;

    invoke-direct {v2}, Lorg/xbill/DNS/DSRecord;-><init>()V

    .line 181
    .local v2, "dr":Lorg/xbill/DNS/DSRecord;
    invoke-virtual {v2, v1}, Lorg/xbill/DNS/DSRecord;->rrFromWire(Lorg/xbill/DNS/DNSInput;)V

    .line 182
    invoke-virtual {v2}, Lorg/xbill/DNS/DSRecord;->getFootprint()I

    move-result v3

    const v4, 0xabcd

    invoke-static {v4, v3}, Lorg/xbill/DNS/DSRecordTest;->assertEquals(II)V

    .line 183
    invoke-virtual {v2}, Lorg/xbill/DNS/DSRecord;->getAlgorithm()I

    move-result v3

    const/16 v4, 0xef

    invoke-static {v4, v3}, Lorg/xbill/DNS/DSRecordTest;->assertEquals(II)V

    .line 184
    invoke-virtual {v2}, Lorg/xbill/DNS/DSRecord;->getDigestID()I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v4, v3}, Lorg/xbill/DNS/DSRecordTest;->assertEquals(II)V

    .line 185
    const/4 v3, 0x4

    new-array v3, v3, [B

    fill-array-data v3, :array_4a

    invoke-virtual {v2}, Lorg/xbill/DNS/DSRecord;->getDigest()[B

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    invoke-static {v3}, Lorg/xbill/DNS/DSRecordTest;->assertTrue(Z)V

    .line 187
    return-void

    nop

    :array_42
    .array-data 1
        -0x55t
        -0x33t
        -0x11t
        0x1t
        0x23t
        0x45t
        0x67t
        -0x77t
    .end array-data

    :array_4a
    .array-data 1
        0x23t
        0x45t
        0x67t
        -0x77t
    .end array-data
.end method

.method public test_rrToString()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 207
    const-string v0, "43981 239 1 23456789AB"

    .line 209
    .local v0, "exp":Ljava/lang/String;
    new-instance v10, Lorg/xbill/DNS/DSRecord;

    const-string v1, "The.Name."

    invoke-static {v1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v2

    const/4 v1, 0x5

    new-array v9, v1, [B

    fill-array-data v9, :array_26

    const/4 v3, 0x1

    const-wide/16 v4, 0x123

    const v6, 0xabcd

    const/16 v7, 0xef

    const/4 v8, 0x1

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lorg/xbill/DNS/DSRecord;-><init>(Lorg/xbill/DNS/Name;IJIII[B)V

    .line 213
    .local v1, "dr":Lorg/xbill/DNS/DSRecord;
    invoke-virtual {v1}, Lorg/xbill/DNS/DSRecord;->rrToString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/xbill/DNS/DSRecordTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    return-void

    nop

    :array_26
    .array-data 1
        0x23t
        0x45t
        0x67t
        -0x77t
        -0x55t
    .end array-data
.end method

.method public test_rrToWire()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 218
    new-instance v9, Lorg/xbill/DNS/DSRecord;

    const-string v0, "The.Name."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v1

    const/4 v0, 0x5

    new-array v8, v0, [B

    fill-array-data v8, :array_38

    const/4 v2, 0x1

    const-wide/16 v3, 0x123

    const v5, 0xabcd

    const/16 v6, 0xef

    const/4 v7, 0x1

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/xbill/DNS/DSRecord;-><init>(Lorg/xbill/DNS/Name;IJIII[B)V

    .line 223
    .local v0, "dr":Lorg/xbill/DNS/DSRecord;
    const/16 v1, 0x9

    new-array v1, v1, [B

    fill-array-data v1, :array_40

    .line 227
    .local v1, "exp":[B
    new-instance v2, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v2}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 228
    .local v2, "out":Lorg/xbill/DNS/DNSOutput;
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Lorg/xbill/DNS/DSRecord;->rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V

    .line 230
    invoke-virtual {v2}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    invoke-static {v3}, Lorg/xbill/DNS/DSRecordTest;->assertTrue(Z)V

    .line 231
    return-void

    :array_38
    .array-data 1
        0x23t
        0x45t
        0x67t
        -0x77t
        -0x55t
    .end array-data

    nop

    :array_40
    .array-data 1
        -0x55t
        -0x33t
        -0x11t
        0x1t
        0x23t
        0x45t
        0x67t
        -0x77t
        -0x55t
    .end array-data
.end method
