.class public Lorg/xbill/DNS/GPOSRecordTest;
.super Ljunit/framework/TestCase;
.source "GPOSRecordTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/GPOSRecordTest$Test_rdataFromString;,
        Lorg/xbill/DNS/GPOSRecordTest$Test_rrFromWire;,
        Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_Strings;,
        Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_doubles;
    }
.end annotation


# static fields
.field static synthetic class$org$xbill$DNS$GPOSRecordTest:Ljava/lang/Class;

.field static synthetic class$org$xbill$DNS$GPOSRecordTest$Test_Ctor_6arg_Strings:Ljava/lang/Class;

.field static synthetic class$org$xbill$DNS$GPOSRecordTest$Test_Ctor_6arg_doubles:Ljava/lang/Class;

.field static synthetic class$org$xbill$DNS$GPOSRecordTest$Test_rdataFromString:Ljava/lang/Class;

.field static synthetic class$org$xbill$DNS$GPOSRecordTest$Test_rrFromWire:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljunit/framework/TestCase;-><init>()V

    .line 298
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .param p0, "x0"    # Ljava/lang/String;

    .line 401
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

    .line 400
    new-instance v0, Ljunit/framework/TestSuite;

    invoke-direct {v0}, Ljunit/framework/TestSuite;-><init>()V

    .line 401
    .local v0, "s":Ljunit/framework/TestSuite;
    sget-object v1, Lorg/xbill/DNS/GPOSRecordTest;->class$org$xbill$DNS$GPOSRecordTest$Test_Ctor_6arg_doubles:Ljava/lang/Class;

    if-nez v1, :cond_12

    const-string v1, "org.xbill.DNS.GPOSRecordTest$Test_Ctor_6arg_doubles"

    invoke-static {v1}, Lorg/xbill/DNS/GPOSRecordTest;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/xbill/DNS/GPOSRecordTest;->class$org$xbill$DNS$GPOSRecordTest$Test_Ctor_6arg_doubles:Ljava/lang/Class;

    goto :goto_14

    :cond_12
    sget-object v1, Lorg/xbill/DNS/GPOSRecordTest;->class$org$xbill$DNS$GPOSRecordTest$Test_Ctor_6arg_doubles:Ljava/lang/Class;

    :goto_14
    invoke-virtual {v0, v1}, Ljunit/framework/TestSuite;->addTestSuite(Ljava/lang/Class;)V

    .line 402
    sget-object v1, Lorg/xbill/DNS/GPOSRecordTest;->class$org$xbill$DNS$GPOSRecordTest$Test_Ctor_6arg_Strings:Ljava/lang/Class;

    if-nez v1, :cond_24

    const-string v1, "org.xbill.DNS.GPOSRecordTest$Test_Ctor_6arg_Strings"

    invoke-static {v1}, Lorg/xbill/DNS/GPOSRecordTest;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/xbill/DNS/GPOSRecordTest;->class$org$xbill$DNS$GPOSRecordTest$Test_Ctor_6arg_Strings:Ljava/lang/Class;

    goto :goto_26

    :cond_24
    sget-object v1, Lorg/xbill/DNS/GPOSRecordTest;->class$org$xbill$DNS$GPOSRecordTest$Test_Ctor_6arg_Strings:Ljava/lang/Class;

    :goto_26
    invoke-virtual {v0, v1}, Ljunit/framework/TestSuite;->addTestSuite(Ljava/lang/Class;)V

    .line 403
    sget-object v1, Lorg/xbill/DNS/GPOSRecordTest;->class$org$xbill$DNS$GPOSRecordTest$Test_rrFromWire:Ljava/lang/Class;

    if-nez v1, :cond_36

    const-string v1, "org.xbill.DNS.GPOSRecordTest$Test_rrFromWire"

    invoke-static {v1}, Lorg/xbill/DNS/GPOSRecordTest;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/xbill/DNS/GPOSRecordTest;->class$org$xbill$DNS$GPOSRecordTest$Test_rrFromWire:Ljava/lang/Class;

    goto :goto_38

    :cond_36
    sget-object v1, Lorg/xbill/DNS/GPOSRecordTest;->class$org$xbill$DNS$GPOSRecordTest$Test_rrFromWire:Ljava/lang/Class;

    :goto_38
    invoke-virtual {v0, v1}, Ljunit/framework/TestSuite;->addTestSuite(Ljava/lang/Class;)V

    .line 404
    sget-object v1, Lorg/xbill/DNS/GPOSRecordTest;->class$org$xbill$DNS$GPOSRecordTest$Test_rdataFromString:Ljava/lang/Class;

    if-nez v1, :cond_48

    const-string v1, "org.xbill.DNS.GPOSRecordTest$Test_rdataFromString"

    invoke-static {v1}, Lorg/xbill/DNS/GPOSRecordTest;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/xbill/DNS/GPOSRecordTest;->class$org$xbill$DNS$GPOSRecordTest$Test_rdataFromString:Ljava/lang/Class;

    goto :goto_4a

    :cond_48
    sget-object v1, Lorg/xbill/DNS/GPOSRecordTest;->class$org$xbill$DNS$GPOSRecordTest$Test_rdataFromString:Ljava/lang/Class;

    :goto_4a
    invoke-virtual {v0, v1}, Ljunit/framework/TestSuite;->addTestSuite(Ljava/lang/Class;)V

    .line 405
    sget-object v1, Lorg/xbill/DNS/GPOSRecordTest;->class$org$xbill$DNS$GPOSRecordTest:Ljava/lang/Class;

    if-nez v1, :cond_5a

    const-string v1, "org.xbill.DNS.GPOSRecordTest"

    invoke-static {v1}, Lorg/xbill/DNS/GPOSRecordTest;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/xbill/DNS/GPOSRecordTest;->class$org$xbill$DNS$GPOSRecordTest:Ljava/lang/Class;

    goto :goto_5c

    :cond_5a
    sget-object v1, Lorg/xbill/DNS/GPOSRecordTest;->class$org$xbill$DNS$GPOSRecordTest:Ljava/lang/Class;

    :goto_5c
    invoke-virtual {v0, v1}, Ljunit/framework/TestSuite;->addTestSuite(Ljava/lang/Class;)V

    .line 406
    return-object v0
.end method


# virtual methods
.method public test_ctor_0arg()V
    .registers 6

    .line 47
    new-instance v0, Lorg/xbill/DNS/GPOSRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/GPOSRecord;-><init>()V

    .line 48
    .local v0, "gr":Lorg/xbill/DNS/GPOSRecord;
    invoke-virtual {v0}, Lorg/xbill/DNS/GPOSRecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object v1

    invoke-static {v1}, Lorg/xbill/DNS/GPOSRecordTest;->assertNull(Ljava/lang/Object;)V

    .line 49
    invoke-virtual {v0}, Lorg/xbill/DNS/GPOSRecord;->getType()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lorg/xbill/DNS/GPOSRecordTest;->assertEquals(II)V

    .line 50
    invoke-virtual {v0}, Lorg/xbill/DNS/GPOSRecord;->getDClass()I

    move-result v1

    invoke-static {v2, v1}, Lorg/xbill/DNS/GPOSRecordTest;->assertEquals(II)V

    .line 51
    invoke-virtual {v0}, Lorg/xbill/DNS/GPOSRecord;->getTTL()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v1, v2}, Lorg/xbill/DNS/GPOSRecordTest;->assertEquals(JJ)V

    .line 52
    return-void
.end method

.method public test_getObject()V
    .registers 4

    .line 56
    new-instance v0, Lorg/xbill/DNS/GPOSRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/GPOSRecord;-><init>()V

    .line 57
    .local v0, "gr":Lorg/xbill/DNS/GPOSRecord;
    invoke-virtual {v0}, Lorg/xbill/DNS/GPOSRecord;->getObject()Lorg/xbill/DNS/Record;

    move-result-object v1

    .line 58
    .local v1, "r":Lorg/xbill/DNS/Record;
    instance-of v2, v1, Lorg/xbill/DNS/GPOSRecord;

    invoke-static {v2}, Lorg/xbill/DNS/GPOSRecordTest;->assertTrue(Z)V

    .line 59
    return-void
.end method

.method public test_rrToString()V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 371
    const-string v0, "\"10.45\" \"171.121212\" \"1010787.0\""

    .line 373
    .local v0, "exp":Ljava/lang/String;
    new-instance v12, Lorg/xbill/DNS/GPOSRecord;

    const-string v1, "The.Name."

    invoke-static {v1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v2

    const/4 v3, 0x1

    const-wide/16 v4, 0x123

    const-wide v6, 0x4024e66666666666L    # 10.45

    const-wide v8, 0x406563e0f7fcfc40L    # 171.121212

    const-wide v10, 0x412ed8c600000000L    # 1010787.0

    move-object v1, v12

    invoke-direct/range {v1 .. v11}, Lorg/xbill/DNS/GPOSRecord;-><init>(Lorg/xbill/DNS/Name;IJDDD)V

    .line 375
    .local v1, "gr":Lorg/xbill/DNS/GPOSRecord;
    invoke-virtual {v1}, Lorg/xbill/DNS/GPOSRecord;->rrToString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/xbill/DNS/GPOSRecordTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    return-void
.end method

.method public test_rrToWire()V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 380
    new-instance v11, Lorg/xbill/DNS/GPOSRecord;

    const-string v0, "The.Name."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v1

    const/4 v2, 0x1

    const-wide/16 v3, 0x123

    const-wide v5, -0x3fdb19999999999aL    # -10.45

    const-wide/high16 v7, 0x405e000000000000L    # 120.0

    const-wide v9, 0x405bc00000000000L    # 111.0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lorg/xbill/DNS/GPOSRecord;-><init>(Lorg/xbill/DNS/Name;IJDDD)V

    .line 383
    .local v0, "gr":Lorg/xbill/DNS/GPOSRecord;
    const/16 v1, 0x13

    new-array v1, v1, [B

    fill-array-data v1, :array_56

    .line 387
    .local v1, "exp":[B
    new-instance v2, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v2}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 388
    .local v2, "out":Lorg/xbill/DNS/DNSOutput;
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Lorg/xbill/DNS/GPOSRecord;->rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V

    .line 390
    invoke-virtual {v2}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v3

    .line 392
    .local v3, "bar":[B
    array-length v4, v1

    array-length v5, v3

    invoke-static {v4, v5}, Lorg/xbill/DNS/GPOSRecordTest;->assertEquals(II)V

    .line 393
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_36
    array-length v5, v1

    if-ge v4, v5, :cond_54

    .line 394
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "i="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    aget-byte v6, v1, v4

    aget-byte v7, v3, v4

    invoke-static {v5, v6, v7}, Lorg/xbill/DNS/GPOSRecordTest;->assertEquals(Ljava/lang/String;BB)V

    .line 393
    add-int/lit8 v4, v4, 0x1

    goto :goto_36

    .line 396
    .end local v4    # "i":I
    :cond_54
    return-void

    nop

    :array_56
    .array-data 1
        0x6t
        0x2dt
        0x31t
        0x30t
        0x2et
        0x34t
        0x35t
        0x5t
        0x31t
        0x32t
        0x30t
        0x2et
        0x30t
        0x5t
        0x31t
        0x31t
        0x31t
        0x2et
        0x30t
    .end array-data
.end method
