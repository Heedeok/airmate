.class public Lorg/xbill/DNS/NameTest;
.super Ljunit/framework/TestCase;
.source "NameTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/NameTest$Test_compareTo;,
        Lorg/xbill/DNS/NameTest$Test_equals;,
        Lorg/xbill/DNS/NameTest$Test_toWireCanonical;,
        Lorg/xbill/DNS/NameTest$Test_toWire;,
        Lorg/xbill/DNS/NameTest$Test_DNSInput_init;,
        Lorg/xbill/DNS/NameTest$Test_String_init;
    }
.end annotation


# static fields
.field static synthetic class$org$xbill$DNS$NameTest:Ljava/lang/Class;

.field static synthetic class$org$xbill$DNS$NameTest$Test_DNSInput_init:Ljava/lang/Class;

.field static synthetic class$org$xbill$DNS$NameTest$Test_String_init:Ljava/lang/Class;

.field static synthetic class$org$xbill$DNS$NameTest$Test_compareTo:Ljava/lang/Class;

.field static synthetic class$org$xbill$DNS$NameTest$Test_equals:Ljava/lang/Class;

.field static synthetic class$org$xbill$DNS$NameTest$Test_toWire:Ljava/lang/Class;

.field static synthetic class$org$xbill$DNS$NameTest$Test_toWireCanonical:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljunit/framework/TestCase;-><init>()V

    .line 1119
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .param p0, "x0"    # Ljava/lang/String;

    .line 1186
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

    .line 1185
    new-instance v0, Ljunit/framework/TestSuite;

    invoke-direct {v0}, Ljunit/framework/TestSuite;-><init>()V

    .line 1186
    .local v0, "s":Ljunit/framework/TestSuite;
    sget-object v1, Lorg/xbill/DNS/NameTest;->class$org$xbill$DNS$NameTest$Test_String_init:Ljava/lang/Class;

    if-nez v1, :cond_12

    const-string v1, "org.xbill.DNS.NameTest$Test_String_init"

    invoke-static {v1}, Lorg/xbill/DNS/NameTest;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/xbill/DNS/NameTest;->class$org$xbill$DNS$NameTest$Test_String_init:Ljava/lang/Class;

    goto :goto_14

    :cond_12
    sget-object v1, Lorg/xbill/DNS/NameTest;->class$org$xbill$DNS$NameTest$Test_String_init:Ljava/lang/Class;

    :goto_14
    invoke-virtual {v0, v1}, Ljunit/framework/TestSuite;->addTestSuite(Ljava/lang/Class;)V

    .line 1187
    sget-object v1, Lorg/xbill/DNS/NameTest;->class$org$xbill$DNS$NameTest$Test_DNSInput_init:Ljava/lang/Class;

    if-nez v1, :cond_24

    const-string v1, "org.xbill.DNS.NameTest$Test_DNSInput_init"

    invoke-static {v1}, Lorg/xbill/DNS/NameTest;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/xbill/DNS/NameTest;->class$org$xbill$DNS$NameTest$Test_DNSInput_init:Ljava/lang/Class;

    goto :goto_26

    :cond_24
    sget-object v1, Lorg/xbill/DNS/NameTest;->class$org$xbill$DNS$NameTest$Test_DNSInput_init:Ljava/lang/Class;

    :goto_26
    invoke-virtual {v0, v1}, Ljunit/framework/TestSuite;->addTestSuite(Ljava/lang/Class;)V

    .line 1188
    sget-object v1, Lorg/xbill/DNS/NameTest;->class$org$xbill$DNS$NameTest:Ljava/lang/Class;

    if-nez v1, :cond_36

    const-string v1, "org.xbill.DNS.NameTest"

    invoke-static {v1}, Lorg/xbill/DNS/NameTest;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/xbill/DNS/NameTest;->class$org$xbill$DNS$NameTest:Ljava/lang/Class;

    goto :goto_38

    :cond_36
    sget-object v1, Lorg/xbill/DNS/NameTest;->class$org$xbill$DNS$NameTest:Ljava/lang/Class;

    :goto_38
    invoke-virtual {v0, v1}, Ljunit/framework/TestSuite;->addTestSuite(Ljava/lang/Class;)V

    .line 1189
    sget-object v1, Lorg/xbill/DNS/NameTest;->class$org$xbill$DNS$NameTest$Test_toWire:Ljava/lang/Class;

    if-nez v1, :cond_48

    const-string v1, "org.xbill.DNS.NameTest$Test_toWire"

    invoke-static {v1}, Lorg/xbill/DNS/NameTest;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/xbill/DNS/NameTest;->class$org$xbill$DNS$NameTest$Test_toWire:Ljava/lang/Class;

    goto :goto_4a

    :cond_48
    sget-object v1, Lorg/xbill/DNS/NameTest;->class$org$xbill$DNS$NameTest$Test_toWire:Ljava/lang/Class;

    :goto_4a
    invoke-virtual {v0, v1}, Ljunit/framework/TestSuite;->addTestSuite(Ljava/lang/Class;)V

    .line 1190
    sget-object v1, Lorg/xbill/DNS/NameTest;->class$org$xbill$DNS$NameTest$Test_toWireCanonical:Ljava/lang/Class;

    if-nez v1, :cond_5a

    const-string v1, "org.xbill.DNS.NameTest$Test_toWireCanonical"

    invoke-static {v1}, Lorg/xbill/DNS/NameTest;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/xbill/DNS/NameTest;->class$org$xbill$DNS$NameTest$Test_toWireCanonical:Ljava/lang/Class;

    goto :goto_5c

    :cond_5a
    sget-object v1, Lorg/xbill/DNS/NameTest;->class$org$xbill$DNS$NameTest$Test_toWireCanonical:Ljava/lang/Class;

    :goto_5c
    invoke-virtual {v0, v1}, Ljunit/framework/TestSuite;->addTestSuite(Ljava/lang/Class;)V

    .line 1191
    sget-object v1, Lorg/xbill/DNS/NameTest;->class$org$xbill$DNS$NameTest$Test_equals:Ljava/lang/Class;

    if-nez v1, :cond_6c

    const-string v1, "org.xbill.DNS.NameTest$Test_equals"

    invoke-static {v1}, Lorg/xbill/DNS/NameTest;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/xbill/DNS/NameTest;->class$org$xbill$DNS$NameTest$Test_equals:Ljava/lang/Class;

    goto :goto_6e

    :cond_6c
    sget-object v1, Lorg/xbill/DNS/NameTest;->class$org$xbill$DNS$NameTest$Test_equals:Ljava/lang/Class;

    :goto_6e
    invoke-virtual {v0, v1}, Ljunit/framework/TestSuite;->addTestSuite(Ljava/lang/Class;)V

    .line 1192
    sget-object v1, Lorg/xbill/DNS/NameTest;->class$org$xbill$DNS$NameTest$Test_compareTo:Ljava/lang/Class;

    if-nez v1, :cond_7e

    const-string v1, "org.xbill.DNS.NameTest$Test_compareTo"

    invoke-static {v1}, Lorg/xbill/DNS/NameTest;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/xbill/DNS/NameTest;->class$org$xbill$DNS$NameTest$Test_compareTo:Ljava/lang/Class;

    goto :goto_80

    :cond_7e
    sget-object v1, Lorg/xbill/DNS/NameTest;->class$org$xbill$DNS$NameTest$Test_compareTo:Ljava/lang/Class;

    :goto_80
    invoke-virtual {v0, v1}, Ljunit/framework/TestSuite;->addTestSuite(Ljava/lang/Class;)V

    .line 1193
    return-object v0
.end method


# virtual methods
.method public test_concatenate_abs_prefix()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/NameTooLongException;,
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 694
    const-string v0, "A.B."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 695
    .local v0, "p":Lorg/xbill/DNS/Name;
    const-string v1, "c.d."

    invoke-static {v1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v1

    .line 696
    .local v1, "s":Lorg/xbill/DNS/Name;
    const-string v2, "A.B."

    invoke-static {v2}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v2

    .line 698
    .local v2, "e":Lorg/xbill/DNS/Name;
    invoke-static {v0, v1}, Lorg/xbill/DNS/Name;->concatenate(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v3

    .line 699
    .local v3, "n":Lorg/xbill/DNS/Name;
    invoke-static {v2, v3}, Lorg/xbill/DNS/NameTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 700
    return-void
.end method

.method public test_concatenate_basic()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/NameTooLongException;,
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 684
    const-string v0, "A.B"

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 685
    .local v0, "p":Lorg/xbill/DNS/Name;
    const-string v1, "c.d."

    invoke-static {v1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v1

    .line 686
    .local v1, "s":Lorg/xbill/DNS/Name;
    const-string v2, "A.B.c.d."

    invoke-static {v2}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v2

    .line 688
    .local v2, "e":Lorg/xbill/DNS/Name;
    invoke-static {v0, v1}, Lorg/xbill/DNS/Name;->concatenate(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v3

    .line 689
    .local v3, "n":Lorg/xbill/DNS/Name;
    invoke-static {v2, v3}, Lorg/xbill/DNS/NameTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 690
    return-void
.end method

.method public test_concatenate_too_long()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 704
    const-string v0, "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb"

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 705
    .local v0, "p":Lorg/xbill/DNS/Name;
    const-string v1, "ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc.ddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd."

    invoke-static {v1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v1

    .line 708
    .local v1, "s":Lorg/xbill/DNS/Name;
    :try_start_c
    invoke-static {v0, v1}, Lorg/xbill/DNS/Name;->concatenate(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    .line 709
    const-string v2, "NameTooLongException not thrown"

    invoke-static {v2}, Lorg/xbill/DNS/NameTest;->fail(Ljava/lang/String;)V
    :try_end_14
    .catch Lorg/xbill/DNS/NameTooLongException; {:try_start_c .. :try_end_14} :catch_15

    .line 711
    goto :goto_16

    :catch_15
    move-exception v2

    .line 712
    :goto_16
    return-void
.end method

.method public test_fromDNAME()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/NameTooLongException;,
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 792
    new-instance v1, Lorg/xbill/DNS/Name;

    const-string v0, "the.owner."

    invoke-direct {v1, v0}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V

    .line 793
    .local v1, "own":Lorg/xbill/DNS/Name;
    new-instance v5, Lorg/xbill/DNS/Name;

    const-string v0, "the.alias."

    invoke-direct {v5, v0}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V

    .line 794
    .local v5, "alias":Lorg/xbill/DNS/Name;
    new-instance v6, Lorg/xbill/DNS/DNAMERecord;

    const/4 v2, 0x1

    const-wide/32 v3, 0xabcd

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/xbill/DNS/DNAMERecord;-><init>(Lorg/xbill/DNS/Name;IJLorg/xbill/DNS/Name;)V

    .line 795
    .local v0, "dnr":Lorg/xbill/DNS/DNAMERecord;
    new-instance v2, Lorg/xbill/DNS/Name;

    const-string v3, "sub.the.owner."

    invoke-direct {v2, v3}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V

    .line 796
    .local v2, "sub":Lorg/xbill/DNS/Name;
    new-instance v3, Lorg/xbill/DNS/Name;

    const-string v4, "sub.the.alias."

    invoke-direct {v3, v4}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V

    .line 798
    .local v3, "exp":Lorg/xbill/DNS/Name;
    invoke-virtual {v2, v0}, Lorg/xbill/DNS/Name;->fromDNAME(Lorg/xbill/DNS/DNAMERecord;)Lorg/xbill/DNS/Name;

    move-result-object v4

    .line 799
    .local v4, "n":Lorg/xbill/DNS/Name;
    invoke-static {v3, v4}, Lorg/xbill/DNS/NameTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 800
    return-void
.end method

.method public test_fromDNAME_disjoint()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/NameTooLongException;,
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 818
    new-instance v1, Lorg/xbill/DNS/Name;

    const-string v0, "the.owner."

    invoke-direct {v1, v0}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V

    .line 819
    .local v1, "own":Lorg/xbill/DNS/Name;
    new-instance v5, Lorg/xbill/DNS/Name;

    const-string v0, "the.alias."

    invoke-direct {v5, v0}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V

    .line 820
    .local v5, "alias":Lorg/xbill/DNS/Name;
    new-instance v6, Lorg/xbill/DNS/DNAMERecord;

    const/4 v2, 0x1

    const-wide/32 v3, 0xabcd

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/xbill/DNS/DNAMERecord;-><init>(Lorg/xbill/DNS/Name;IJLorg/xbill/DNS/Name;)V

    .line 822
    .local v0, "dnr":Lorg/xbill/DNS/DNAMERecord;
    new-instance v2, Lorg/xbill/DNS/Name;

    const-string v3, "sub.the.other"

    invoke-direct {v2, v3}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V

    .line 824
    .local v2, "sub":Lorg/xbill/DNS/Name;
    invoke-virtual {v2, v0}, Lorg/xbill/DNS/Name;->fromDNAME(Lorg/xbill/DNS/DNAMERecord;)Lorg/xbill/DNS/Name;

    move-result-object v3

    invoke-static {v3}, Lorg/xbill/DNS/NameTest;->assertNull(Ljava/lang/Object;)V

    .line 825
    return-void
.end method

.method public test_fromDNAME_toobig()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/NameTooLongException;,
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 804
    new-instance v1, Lorg/xbill/DNS/Name;

    const-string v0, "the.owner."

    invoke-direct {v1, v0}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V

    .line 805
    .local v1, "own":Lorg/xbill/DNS/Name;
    new-instance v5, Lorg/xbill/DNS/Name;

    const-string v0, "the.aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb.ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc."

    invoke-direct {v5, v0}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V

    .line 806
    .local v5, "alias":Lorg/xbill/DNS/Name;
    new-instance v6, Lorg/xbill/DNS/DNAMERecord;

    const/4 v2, 0x1

    const-wide/32 v3, 0xabcd

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/xbill/DNS/DNAMERecord;-><init>(Lorg/xbill/DNS/Name;IJLorg/xbill/DNS/Name;)V

    .line 807
    .local v0, "dnr":Lorg/xbill/DNS/DNAMERecord;
    new-instance v2, Lorg/xbill/DNS/Name;

    const-string v3, "ddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd.the.owner."

    invoke-direct {v2, v3}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V

    .line 810
    .local v2, "sub":Lorg/xbill/DNS/Name;
    :try_start_1f
    invoke-virtual {v2, v0}, Lorg/xbill/DNS/Name;->fromDNAME(Lorg/xbill/DNS/DNAMERecord;)Lorg/xbill/DNS/Name;

    .line 811
    const-string v3, "NameTooLongException not thrown"

    invoke-static {v3}, Lorg/xbill/DNS/NameTest;->fail(Ljava/lang/String;)V
    :try_end_27
    .catch Lorg/xbill/DNS/NameTooLongException; {:try_start_1f .. :try_end_27} :catch_28

    .line 813
    goto :goto_29

    :catch_28
    move-exception v3

    .line 814
    :goto_29
    return-void
.end method

.method public test_init_from_name()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 658
    new-instance v0, Lorg/xbill/DNS/Name;

    const-string v1, "A.B.c.d."

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V

    .line 659
    .local v0, "n":Lorg/xbill/DNS/Name;
    new-instance v1, Lorg/xbill/DNS/Name;

    const-string v2, "B.c.d."

    invoke-direct {v1, v2}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V

    .line 660
    .local v1, "e":Lorg/xbill/DNS/Name;
    new-instance v2, Lorg/xbill/DNS/Name;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/Name;I)V

    .line 661
    .local v2, "o":Lorg/xbill/DNS/Name;
    invoke-static {v1, v2}, Lorg/xbill/DNS/NameTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 662
    return-void
.end method

.method public test_init_from_name_empty()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 673
    new-instance v0, Lorg/xbill/DNS/Name;

    const-string v1, "A.B.c.d."

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V

    .line 674
    .local v0, "n":Lorg/xbill/DNS/Name;
    new-instance v1, Lorg/xbill/DNS/Name;

    const/4 v2, 0x5

    invoke-direct {v1, v0, v2}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/Name;I)V

    .line 676
    .local v1, "n2":Lorg/xbill/DNS/Name;
    invoke-virtual {v1}, Lorg/xbill/DNS/Name;->isAbsolute()Z

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/NameTest;->assertFalse(Z)V

    .line 677
    invoke-virtual {v1}, Lorg/xbill/DNS/Name;->isWild()Z

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/NameTest;->assertFalse(Z)V

    .line 678
    invoke-virtual {v1}, Lorg/xbill/DNS/Name;->labels()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Lorg/xbill/DNS/NameTest;->assertEquals(II)V

    .line 679
    invoke-virtual {v1}, Lorg/xbill/DNS/Name;->length()S

    move-result v2

    invoke-static {v3, v2}, Lorg/xbill/DNS/NameTest;->assertEquals(II)V

    .line 680
    return-void
.end method

.method public test_init_from_name_root()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 666
    new-instance v0, Lorg/xbill/DNS/Name;

    const-string v1, "A.B.c.d."

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V

    .line 667
    .local v0, "n":Lorg/xbill/DNS/Name;
    new-instance v1, Lorg/xbill/DNS/Name;

    const/4 v2, 0x4

    invoke-direct {v1, v0, v2}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/Name;I)V

    .line 668
    .local v1, "o":Lorg/xbill/DNS/Name;
    sget-object v2, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-static {v2, v1}, Lorg/xbill/DNS/NameTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 669
    return-void
.end method

.method public test_relativize()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 716
    const-string v0, "a.b.c."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 717
    .local v0, "sub":Lorg/xbill/DNS/Name;
    const-string v1, "c."

    invoke-static {v1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v1

    .line 718
    .local v1, "dom":Lorg/xbill/DNS/Name;
    const-string v2, "a.b"

    invoke-static {v2}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v2

    .line 720
    .local v2, "exp":Lorg/xbill/DNS/Name;
    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Name;->relativize(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v3

    .line 721
    .local v3, "n":Lorg/xbill/DNS/Name;
    invoke-static {v2, v3}, Lorg/xbill/DNS/NameTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 722
    return-void
.end method

.method public test_relativize_disjoint()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 735
    const-string v0, "a.b.c."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 736
    .local v0, "sub":Lorg/xbill/DNS/Name;
    const-string v1, "e.f."

    invoke-static {v1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v1

    .line 738
    .local v1, "dom":Lorg/xbill/DNS/Name;
    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Name;->relativize(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v2

    .line 739
    .local v2, "n":Lorg/xbill/DNS/Name;
    invoke-static {v0, v2}, Lorg/xbill/DNS/NameTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 740
    return-void
.end method

.method public test_relativize_null_origin()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 726
    const-string v0, "a.b.c."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 727
    .local v0, "sub":Lorg/xbill/DNS/Name;
    const/4 v1, 0x0

    .line 729
    .local v1, "dom":Lorg/xbill/DNS/Name;
    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Name;->relativize(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v2

    .line 730
    .local v2, "n":Lorg/xbill/DNS/Name;
    invoke-static {v0, v2}, Lorg/xbill/DNS/NameTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 731
    return-void
.end method

.method public test_relativize_root()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 744
    const-string v0, "a.b.c."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 745
    .local v0, "sub":Lorg/xbill/DNS/Name;
    const-string v1, "."

    invoke-static {v1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v1

    .line 746
    .local v1, "dom":Lorg/xbill/DNS/Name;
    const-string v2, "a.b.c"

    invoke-static {v2}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v2

    .line 748
    .local v2, "exp":Lorg/xbill/DNS/Name;
    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Name;->relativize(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v3

    .line 749
    .local v3, "n":Lorg/xbill/DNS/Name;
    invoke-static {v2, v3}, Lorg/xbill/DNS/NameTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 750
    return-void
.end method

.method public test_subdomain_abs()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 829
    new-instance v0, Lorg/xbill/DNS/Name;

    const-string v1, "the.domain."

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V

    .line 830
    .local v0, "dom":Lorg/xbill/DNS/Name;
    new-instance v1, Lorg/xbill/DNS/Name;

    const-string v2, "sub.of.the.domain."

    invoke-direct {v1, v2}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V

    .line 831
    .local v1, "sub":Lorg/xbill/DNS/Name;
    invoke-virtual {v1, v0}, Lorg/xbill/DNS/Name;->subdomain(Lorg/xbill/DNS/Name;)Z

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/NameTest;->assertTrue(Z)V

    .line 832
    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Name;->subdomain(Lorg/xbill/DNS/Name;)Z

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/NameTest;->assertFalse(Z)V

    .line 833
    return-void
.end method

.method public test_subdomain_equal()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 845
    new-instance v0, Lorg/xbill/DNS/Name;

    const-string v1, "the.domain"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V

    .line 846
    .local v0, "dom":Lorg/xbill/DNS/Name;
    new-instance v1, Lorg/xbill/DNS/Name;

    const-string v2, "the.domain"

    invoke-direct {v1, v2}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V

    .line 847
    .local v1, "sub":Lorg/xbill/DNS/Name;
    invoke-virtual {v1, v0}, Lorg/xbill/DNS/Name;->subdomain(Lorg/xbill/DNS/Name;)Z

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/NameTest;->assertTrue(Z)V

    .line 848
    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Name;->subdomain(Lorg/xbill/DNS/Name;)Z

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/NameTest;->assertTrue(Z)V

    .line 849
    return-void
.end method

.method public test_subdomain_rel()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 837
    new-instance v0, Lorg/xbill/DNS/Name;

    const-string v1, "the.domain"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V

    .line 838
    .local v0, "dom":Lorg/xbill/DNS/Name;
    new-instance v1, Lorg/xbill/DNS/Name;

    const-string v2, "sub.of.the.domain"

    invoke-direct {v1, v2}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V

    .line 839
    .local v1, "sub":Lorg/xbill/DNS/Name;
    invoke-virtual {v1, v0}, Lorg/xbill/DNS/Name;->subdomain(Lorg/xbill/DNS/Name;)Z

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/NameTest;->assertTrue(Z)V

    .line 840
    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Name;->subdomain(Lorg/xbill/DNS/Name;)Z

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/NameTest;->assertFalse(Z)V

    .line 841
    return-void
.end method

.method public test_toString_abs()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 853
    const-string v0, "This.Is.My.Absolute.Name."

    .line 854
    .local v0, "in":Ljava/lang/String;
    new-instance v1, Lorg/xbill/DNS/Name;

    invoke-direct {v1, v0}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V

    .line 856
    .local v1, "n":Lorg/xbill/DNS/Name;
    invoke-virtual {v1}, Lorg/xbill/DNS/Name;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/xbill/DNS/NameTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    return-void
.end method

.method public test_toString_at()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 869
    new-instance v0, Lorg/xbill/DNS/Name;

    const-string v1, "@"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;Lorg/xbill/DNS/Name;)V

    .line 870
    .local v0, "n":Lorg/xbill/DNS/Name;
    const-string v1, "@"

    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/xbill/DNS/NameTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    return-void
.end method

.method public test_toString_escaped()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 887
    const-string v0, "my.escaped.junk\\128.label."

    .line 888
    .local v0, "in":Ljava/lang/String;
    new-instance v1, Lorg/xbill/DNS/Name;

    invoke-direct {v1, v0}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V

    .line 889
    .local v1, "n":Lorg/xbill/DNS/Name;
    invoke-virtual {v1}, Lorg/xbill/DNS/Name;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/xbill/DNS/NameTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    return-void
.end method

.method public test_toString_rel()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 861
    const-string v0, "This.Is.My.Relative.Name"

    .line 862
    .local v0, "in":Ljava/lang/String;
    new-instance v1, Lorg/xbill/DNS/Name;

    invoke-direct {v1, v0}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V

    .line 864
    .local v1, "n":Lorg/xbill/DNS/Name;
    invoke-virtual {v1}, Lorg/xbill/DNS/Name;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/xbill/DNS/NameTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    return-void
.end method

.method public test_toString_root()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 875
    const-string v0, "."

    sget-object v1, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-virtual {v1}, Lorg/xbill/DNS/Name;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/xbill/DNS/NameTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    return-void
.end method

.method public test_toString_special_char()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;,
            Lorg/xbill/DNS/WireParseException;
        }
    .end annotation

    .line 894
    const/16 v0, 0x11

    new-array v0, v0, [B

    fill-array-data v0, :array_1c

    .line 895
    .local v0, "raw":[B
    const-string v1, "\\\".\\(.\\).\\..\\;.\\\\.\\@.\\$."

    .line 896
    .local v1, "exp":Ljava/lang/String;
    new-instance v2, Lorg/xbill/DNS/Name;

    new-instance v3, Lorg/xbill/DNS/DNSInput;

    invoke-direct {v3, v0}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    invoke-direct {v2, v3}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/DNSInput;)V

    .line 897
    .local v2, "n":Lorg/xbill/DNS/Name;
    invoke-virtual {v2}, Lorg/xbill/DNS/Name;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/xbill/DNS/NameTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    return-void

    nop

    :array_1c
    .array-data 1
        0x1t
        0x22t
        0x1t
        0x28t
        0x1t
        0x29t
        0x1t
        0x2et
        0x1t
        0x3bt
        0x1t
        0x5ct
        0x1t
        0x40t
        0x1t
        0x24t
        0x0t
    .end array-data
.end method

.method public test_toString_wild()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 880
    const-string v0, "*.A.b.c.e"

    .line 881
    .local v0, "in":Ljava/lang/String;
    new-instance v1, Lorg/xbill/DNS/Name;

    invoke-direct {v1, v0}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V

    .line 882
    .local v1, "n":Lorg/xbill/DNS/Name;
    invoke-virtual {v1}, Lorg/xbill/DNS/Name;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/xbill/DNS/NameTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    return-void
.end method

.method public test_wild()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 754
    const-string v0, "a.b.c."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 755
    .local v0, "sub":Lorg/xbill/DNS/Name;
    const-string v1, "*.b.c."

    invoke-static {v1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v1

    .line 757
    .local v1, "exp":Lorg/xbill/DNS/Name;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/xbill/DNS/Name;->wild(I)Lorg/xbill/DNS/Name;

    move-result-object v2

    .line 758
    .local v2, "n":Lorg/xbill/DNS/Name;
    invoke-static {v1, v2}, Lorg/xbill/DNS/NameTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 759
    return-void
.end method

.method public test_wild_abs()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 763
    const-string v0, "a.b.c."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 764
    .local v0, "sub":Lorg/xbill/DNS/Name;
    const-string v1, "*."

    invoke-static {v1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v1

    .line 766
    .local v1, "exp":Lorg/xbill/DNS/Name;
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lorg/xbill/DNS/Name;->wild(I)Lorg/xbill/DNS/Name;

    move-result-object v2

    .line 767
    .local v2, "n":Lorg/xbill/DNS/Name;
    invoke-static {v1, v2}, Lorg/xbill/DNS/NameTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 768
    return-void
.end method

.method public test_wild_toobig()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 772
    const-string v0, "a.b.c."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 774
    .local v0, "sub":Lorg/xbill/DNS/Name;
    const/4 v1, 0x4

    :try_start_7
    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Name;->wild(I)Lorg/xbill/DNS/Name;

    .line 775
    const-string v1, "IllegalArgumentException not thrown"

    invoke-static {v1}, Lorg/xbill/DNS/NameTest;->fail(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_f} :catch_10

    .line 777
    goto :goto_11

    :catch_10
    move-exception v1

    .line 778
    :goto_11
    return-void
.end method

.method public test_wild_toosmall()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 782
    const-string v0, "a.b.c."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 784
    .local v0, "sub":Lorg/xbill/DNS/Name;
    const/4 v1, 0x0

    :try_start_7
    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Name;->wild(I)Lorg/xbill/DNS/Name;

    .line 785
    const-string v1, "IllegalArgumentException not thrown"

    invoke-static {v1}, Lorg/xbill/DNS/NameTest;->fail(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_f} :catch_10

    .line 787
    goto :goto_11

    :catch_10
    move-exception v1

    .line 788
    :goto_11
    return-void
.end method
