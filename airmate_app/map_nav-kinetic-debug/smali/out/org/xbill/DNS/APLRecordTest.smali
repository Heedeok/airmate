.class public Lorg/xbill/DNS/APLRecordTest;
.super Ljava/lang/Object;
.source "APLRecordTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/APLRecordTest$Test_rrToWire;,
        Lorg/xbill/DNS/APLRecordTest$Test_rrToString;,
        Lorg/xbill/DNS/APLRecordTest$Test_rdataFromString;,
        Lorg/xbill/DNS/APLRecordTest$Test_rrFromWire;,
        Lorg/xbill/DNS/APLRecordTest$Test_init;,
        Lorg/xbill/DNS/APLRecordTest$Test_Element_init;
    }
.end annotation


# static fields
.field static synthetic class$org$xbill$DNS$APLRecordTest$Test_Element_init:Ljava/lang/Class;

.field static synthetic class$org$xbill$DNS$APLRecordTest$Test_init:Ljava/lang/Class;

.field static synthetic class$org$xbill$DNS$APLRecordTest$Test_rdataFromString:Ljava/lang/Class;

.field static synthetic class$org$xbill$DNS$APLRecordTest$Test_rrFromWire:Ljava/lang/Class;

.field static synthetic class$org$xbill$DNS$APLRecordTest$Test_rrToString:Ljava/lang/Class;

.field static synthetic class$org$xbill$DNS$APLRecordTest$Test_rrToWire:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 556
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .param p0, "x0"    # Ljava/lang/String;

    .line 689
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

    .line 688
    new-instance v0, Ljunit/framework/TestSuite;

    invoke-direct {v0}, Ljunit/framework/TestSuite;-><init>()V

    .line 689
    .local v0, "s":Ljunit/framework/TestSuite;
    sget-object v1, Lorg/xbill/DNS/APLRecordTest;->class$org$xbill$DNS$APLRecordTest$Test_Element_init:Ljava/lang/Class;

    if-nez v1, :cond_12

    const-string v1, "org.xbill.DNS.APLRecordTest$Test_Element_init"

    invoke-static {v1}, Lorg/xbill/DNS/APLRecordTest;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/xbill/DNS/APLRecordTest;->class$org$xbill$DNS$APLRecordTest$Test_Element_init:Ljava/lang/Class;

    goto :goto_14

    :cond_12
    sget-object v1, Lorg/xbill/DNS/APLRecordTest;->class$org$xbill$DNS$APLRecordTest$Test_Element_init:Ljava/lang/Class;

    :goto_14
    invoke-virtual {v0, v1}, Ljunit/framework/TestSuite;->addTestSuite(Ljava/lang/Class;)V

    .line 690
    sget-object v1, Lorg/xbill/DNS/APLRecordTest;->class$org$xbill$DNS$APLRecordTest$Test_init:Ljava/lang/Class;

    if-nez v1, :cond_24

    const-string v1, "org.xbill.DNS.APLRecordTest$Test_init"

    invoke-static {v1}, Lorg/xbill/DNS/APLRecordTest;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/xbill/DNS/APLRecordTest;->class$org$xbill$DNS$APLRecordTest$Test_init:Ljava/lang/Class;

    goto :goto_26

    :cond_24
    sget-object v1, Lorg/xbill/DNS/APLRecordTest;->class$org$xbill$DNS$APLRecordTest$Test_init:Ljava/lang/Class;

    :goto_26
    invoke-virtual {v0, v1}, Ljunit/framework/TestSuite;->addTestSuite(Ljava/lang/Class;)V

    .line 691
    sget-object v1, Lorg/xbill/DNS/APLRecordTest;->class$org$xbill$DNS$APLRecordTest$Test_rrFromWire:Ljava/lang/Class;

    if-nez v1, :cond_36

    const-string v1, "org.xbill.DNS.APLRecordTest$Test_rrFromWire"

    invoke-static {v1}, Lorg/xbill/DNS/APLRecordTest;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/xbill/DNS/APLRecordTest;->class$org$xbill$DNS$APLRecordTest$Test_rrFromWire:Ljava/lang/Class;

    goto :goto_38

    :cond_36
    sget-object v1, Lorg/xbill/DNS/APLRecordTest;->class$org$xbill$DNS$APLRecordTest$Test_rrFromWire:Ljava/lang/Class;

    :goto_38
    invoke-virtual {v0, v1}, Ljunit/framework/TestSuite;->addTestSuite(Ljava/lang/Class;)V

    .line 692
    sget-object v1, Lorg/xbill/DNS/APLRecordTest;->class$org$xbill$DNS$APLRecordTest$Test_rdataFromString:Ljava/lang/Class;

    if-nez v1, :cond_48

    const-string v1, "org.xbill.DNS.APLRecordTest$Test_rdataFromString"

    invoke-static {v1}, Lorg/xbill/DNS/APLRecordTest;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/xbill/DNS/APLRecordTest;->class$org$xbill$DNS$APLRecordTest$Test_rdataFromString:Ljava/lang/Class;

    goto :goto_4a

    :cond_48
    sget-object v1, Lorg/xbill/DNS/APLRecordTest;->class$org$xbill$DNS$APLRecordTest$Test_rdataFromString:Ljava/lang/Class;

    :goto_4a
    invoke-virtual {v0, v1}, Ljunit/framework/TestSuite;->addTestSuite(Ljava/lang/Class;)V

    .line 693
    sget-object v1, Lorg/xbill/DNS/APLRecordTest;->class$org$xbill$DNS$APLRecordTest$Test_rrToString:Ljava/lang/Class;

    if-nez v1, :cond_5a

    const-string v1, "org.xbill.DNS.APLRecordTest$Test_rrToString"

    invoke-static {v1}, Lorg/xbill/DNS/APLRecordTest;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/xbill/DNS/APLRecordTest;->class$org$xbill$DNS$APLRecordTest$Test_rrToString:Ljava/lang/Class;

    goto :goto_5c

    :cond_5a
    sget-object v1, Lorg/xbill/DNS/APLRecordTest;->class$org$xbill$DNS$APLRecordTest$Test_rrToString:Ljava/lang/Class;

    :goto_5c
    invoke-virtual {v0, v1}, Ljunit/framework/TestSuite;->addTestSuite(Ljava/lang/Class;)V

    .line 694
    sget-object v1, Lorg/xbill/DNS/APLRecordTest;->class$org$xbill$DNS$APLRecordTest$Test_rrToWire:Ljava/lang/Class;

    if-nez v1, :cond_6c

    const-string v1, "org.xbill.DNS.APLRecordTest$Test_rrToWire"

    invoke-static {v1}, Lorg/xbill/DNS/APLRecordTest;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/xbill/DNS/APLRecordTest;->class$org$xbill$DNS$APLRecordTest$Test_rrToWire:Ljava/lang/Class;

    goto :goto_6e

    :cond_6c
    sget-object v1, Lorg/xbill/DNS/APLRecordTest;->class$org$xbill$DNS$APLRecordTest$Test_rrToWire:Ljava/lang/Class;

    :goto_6e
    invoke-virtual {v0, v1}, Ljunit/framework/TestSuite;->addTestSuite(Ljava/lang/Class;)V

    .line 695
    return-object v0
.end method
