.class public Lorg/xbill/DNS/SOARecordTest;
.super Ljava/lang/Object;
.source "SOARecordTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/SOARecordTest$Test_rrToWire;,
        Lorg/xbill/DNS/SOARecordTest$Test_rrToString;,
        Lorg/xbill/DNS/SOARecordTest$Test_rdataFromString;,
        Lorg/xbill/DNS/SOARecordTest$Test_rrFromWire;,
        Lorg/xbill/DNS/SOARecordTest$Test_init;
    }
.end annotation


# static fields
.field static synthetic class$org$xbill$DNS$SOARecordTest$Test_init:Ljava/lang/Class;

.field static synthetic class$org$xbill$DNS$SOARecordTest$Test_rdataFromString:Ljava/lang/Class;

.field static synthetic class$org$xbill$DNS$SOARecordTest$Test_rrFromWire:Ljava/lang/Class;

.field static synthetic class$org$xbill$DNS$SOARecordTest$Test_rrToString:Ljava/lang/Class;

.field static synthetic class$org$xbill$DNS$SOARecordTest$Test_rrToWire:Ljava/lang/Class;

.field private static final m_random:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 47
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lorg/xbill/DNS/SOARecordTest;->m_random:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 415
    return-void
.end method

.method static synthetic access$000()J
    .registers 2

    .line 45
    invoke-static {}, Lorg/xbill/DNS/SOARecordTest;->randomU16()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100()J
    .registers 2

    .line 45
    invoke-static {}, Lorg/xbill/DNS/SOARecordTest;->randomU32()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .param p0, "x0"    # Ljava/lang/String;

    .line 477
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

.method private static randomU16()J
    .registers 3

    .line 51
    sget-object v0, Lorg/xbill/DNS/SOARecordTest;->m_random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    const/16 v2, 0x30

    ushr-long/2addr v0, v2

    return-wide v0
.end method

.method private static randomU32()J
    .registers 3

    .line 56
    sget-object v0, Lorg/xbill/DNS/SOARecordTest;->m_random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    return-wide v0
.end method

.method public static suite()Ljunit/framework/Test;
    .registers 2

    .line 476
    new-instance v0, Ljunit/framework/TestSuite;

    invoke-direct {v0}, Ljunit/framework/TestSuite;-><init>()V

    .line 477
    .local v0, "s":Ljunit/framework/TestSuite;
    sget-object v1, Lorg/xbill/DNS/SOARecordTest;->class$org$xbill$DNS$SOARecordTest$Test_init:Ljava/lang/Class;

    if-nez v1, :cond_12

    const-string v1, "org.xbill.DNS.SOARecordTest$Test_init"

    invoke-static {v1}, Lorg/xbill/DNS/SOARecordTest;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/xbill/DNS/SOARecordTest;->class$org$xbill$DNS$SOARecordTest$Test_init:Ljava/lang/Class;

    goto :goto_14

    :cond_12
    sget-object v1, Lorg/xbill/DNS/SOARecordTest;->class$org$xbill$DNS$SOARecordTest$Test_init:Ljava/lang/Class;

    :goto_14
    invoke-virtual {v0, v1}, Ljunit/framework/TestSuite;->addTestSuite(Ljava/lang/Class;)V

    .line 478
    sget-object v1, Lorg/xbill/DNS/SOARecordTest;->class$org$xbill$DNS$SOARecordTest$Test_rrFromWire:Ljava/lang/Class;

    if-nez v1, :cond_24

    const-string v1, "org.xbill.DNS.SOARecordTest$Test_rrFromWire"

    invoke-static {v1}, Lorg/xbill/DNS/SOARecordTest;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/xbill/DNS/SOARecordTest;->class$org$xbill$DNS$SOARecordTest$Test_rrFromWire:Ljava/lang/Class;

    goto :goto_26

    :cond_24
    sget-object v1, Lorg/xbill/DNS/SOARecordTest;->class$org$xbill$DNS$SOARecordTest$Test_rrFromWire:Ljava/lang/Class;

    :goto_26
    invoke-virtual {v0, v1}, Ljunit/framework/TestSuite;->addTestSuite(Ljava/lang/Class;)V

    .line 479
    sget-object v1, Lorg/xbill/DNS/SOARecordTest;->class$org$xbill$DNS$SOARecordTest$Test_rdataFromString:Ljava/lang/Class;

    if-nez v1, :cond_36

    const-string v1, "org.xbill.DNS.SOARecordTest$Test_rdataFromString"

    invoke-static {v1}, Lorg/xbill/DNS/SOARecordTest;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/xbill/DNS/SOARecordTest;->class$org$xbill$DNS$SOARecordTest$Test_rdataFromString:Ljava/lang/Class;

    goto :goto_38

    :cond_36
    sget-object v1, Lorg/xbill/DNS/SOARecordTest;->class$org$xbill$DNS$SOARecordTest$Test_rdataFromString:Ljava/lang/Class;

    :goto_38
    invoke-virtual {v0, v1}, Ljunit/framework/TestSuite;->addTestSuite(Ljava/lang/Class;)V

    .line 480
    sget-object v1, Lorg/xbill/DNS/SOARecordTest;->class$org$xbill$DNS$SOARecordTest$Test_rrToString:Ljava/lang/Class;

    if-nez v1, :cond_48

    const-string v1, "org.xbill.DNS.SOARecordTest$Test_rrToString"

    invoke-static {v1}, Lorg/xbill/DNS/SOARecordTest;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/xbill/DNS/SOARecordTest;->class$org$xbill$DNS$SOARecordTest$Test_rrToString:Ljava/lang/Class;

    goto :goto_4a

    :cond_48
    sget-object v1, Lorg/xbill/DNS/SOARecordTest;->class$org$xbill$DNS$SOARecordTest$Test_rrToString:Ljava/lang/Class;

    :goto_4a
    invoke-virtual {v0, v1}, Ljunit/framework/TestSuite;->addTestSuite(Ljava/lang/Class;)V

    .line 481
    sget-object v1, Lorg/xbill/DNS/SOARecordTest;->class$org$xbill$DNS$SOARecordTest$Test_rrToWire:Ljava/lang/Class;

    if-nez v1, :cond_5a

    const-string v1, "org.xbill.DNS.SOARecordTest$Test_rrToWire"

    invoke-static {v1}, Lorg/xbill/DNS/SOARecordTest;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/xbill/DNS/SOARecordTest;->class$org$xbill$DNS$SOARecordTest$Test_rrToWire:Ljava/lang/Class;

    goto :goto_5c

    :cond_5a
    sget-object v1, Lorg/xbill/DNS/SOARecordTest;->class$org$xbill$DNS$SOARecordTest$Test_rrToWire:Ljava/lang/Class;

    :goto_5c
    invoke-virtual {v0, v1}, Ljunit/framework/TestSuite;->addTestSuite(Ljava/lang/Class;)V

    .line 482
    return-object v0
.end method
