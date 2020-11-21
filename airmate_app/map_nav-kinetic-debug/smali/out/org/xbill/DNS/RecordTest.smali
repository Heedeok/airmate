.class public Lorg/xbill/DNS/RecordTest;
.super Ljunit/framework/TestCase;
.source "RecordTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/RecordTest$SubRecord;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljunit/framework/TestCase;-><init>()V

    .line 46
    return-void
.end method


# virtual methods
.method public test_byteArrayFromString()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 502
    const-string v0, "the 98 \" \' quick 0xAB brown"

    .line 503
    .local v0, "in":Ljava/lang/String;
    invoke-static {v0}, Lorg/xbill/DNS/RecordTest$SubRecord;->byteArrayFromString(Ljava/lang/String;)[B

    move-result-object v1

    .line 504
    .local v1, "out":[B
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/RecordTest;->assertTrue(Z)V

    .line 506
    const-string v0, " \\031Aa\\;\\\"\\\\~\\127\\255"

    .line 507
    const/16 v2, 0xa

    new-array v2, v2, [B

    fill-array-data v2, :array_26

    .line 508
    .local v2, "exp":[B
    invoke-static {v0}, Lorg/xbill/DNS/RecordTest$SubRecord;->byteArrayFromString(Ljava/lang/String;)[B

    move-result-object v1

    .line 509
    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    invoke-static {v3}, Lorg/xbill/DNS/RecordTest;->assertTrue(Z)V

    .line 510
    return-void

    :array_26
    .array-data 1
        0x20t
        0x1ft
        0x41t
        0x61t
        0x3bt
        0x22t
        0x5ct
        0x7et
        0x7ft
        -0x1t
    .end array-data
.end method

.method public test_byteArrayFromString_invalid()V
    .registers 4

    .line 514
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 515
    .local v0, "b":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    const/16 v2, 0x101

    if-ge v1, v2, :cond_12

    .line 516
    const/16 v2, 0x41

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 515
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 519
    .end local v1    # "i":I
    :cond_12
    :try_start_12
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/xbill/DNS/RecordTest$SubRecord;->byteArrayFromString(Ljava/lang/String;)[B

    .line 520
    const-string v1, "TextParseException not thrown"

    invoke-static {v1}, Lorg/xbill/DNS/RecordTest;->fail(Ljava/lang/String;)V
    :try_end_1e
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_12 .. :try_end_1e} :catch_1f

    .line 522
    goto :goto_20

    :catch_1f
    move-exception v1

    .line 525
    :goto_20
    :try_start_20
    const-string v1, "\\256"

    invoke-static {v1}, Lorg/xbill/DNS/RecordTest$SubRecord;->byteArrayFromString(Ljava/lang/String;)[B

    .line 526
    const-string v1, "TextParseException not thrown"

    invoke-static {v1}, Lorg/xbill/DNS/RecordTest;->fail(Ljava/lang/String;)V
    :try_end_2a
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_20 .. :try_end_2a} :catch_2b

    .line 528
    goto :goto_2c

    :catch_2b
    move-exception v1

    .line 530
    :goto_2c
    :try_start_2c
    const-string v1, "\\25a"

    invoke-static {v1}, Lorg/xbill/DNS/RecordTest$SubRecord;->byteArrayFromString(Ljava/lang/String;)[B

    .line 531
    const-string v1, "TextParseException not thrown"

    invoke-static {v1}, Lorg/xbill/DNS/RecordTest;->fail(Ljava/lang/String;)V
    :try_end_36
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_2c .. :try_end_36} :catch_37

    .line 533
    goto :goto_38

    :catch_37
    move-exception v1

    .line 535
    :goto_38
    :try_start_38
    const-string v1, "\\25"

    invoke-static {v1}, Lorg/xbill/DNS/RecordTest$SubRecord;->byteArrayFromString(Ljava/lang/String;)[B

    .line 536
    const-string v1, "TextParseException not thrown"

    invoke-static {v1}, Lorg/xbill/DNS/RecordTest;->fail(Ljava/lang/String;)V
    :try_end_42
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_38 .. :try_end_42} :catch_43

    .line 538
    goto :goto_44

    :catch_43
    move-exception v1

    .line 540
    :goto_44
    const-string v1, "\\233"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 542
    :try_start_49
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/xbill/DNS/RecordTest$SubRecord;->byteArrayFromString(Ljava/lang/String;)[B

    .line 543
    const-string v1, "TextParseException not thrown"

    invoke-static {v1}, Lorg/xbill/DNS/RecordTest;->fail(Ljava/lang/String;)V
    :try_end_55
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_49 .. :try_end_55} :catch_56

    .line 545
    goto :goto_57

    :catch_56
    move-exception v1

    .line 547
    :goto_57
    return-void
.end method

.method public test_byteArrayToString()V
    .registers 4

    .line 551
    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_12

    .line 552
    .local v0, "in":[B
    const-string v1, "\" \\031Aa;\\\"\\\\~\\127\\255\""

    .line 553
    .local v1, "exp":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lorg/xbill/DNS/RecordTest$SubRecord;->byteArrayToString([BZ)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/xbill/DNS/RecordTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    return-void

    :array_12
    .array-data 1
        0x20t
        0x1ft
        0x41t
        0x61t
        0x3bt
        0x22t
        0x5ct
        0x7et
        0x7ft
        -0x1t
    .end array-data
.end method

.method public test_checkName()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 925
    const-string v0, "My.N."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 926
    .local v0, "n":Lorg/xbill/DNS/Name;
    const-string v1, "My.m"

    invoke-static {v1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v1

    .line 928
    .local v1, "m":Lorg/xbill/DNS/Name;
    const-string v2, "field"

    invoke-static {v2, v0}, Lorg/xbill/DNS/Record;->checkName(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/xbill/DNS/RecordTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 931
    :try_start_15
    const-string v2, "field"

    invoke-static {v2, v1}, Lorg/xbill/DNS/Record;->checkName(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    .line 932
    const-string v2, "RelativeNameException not thrown"

    invoke-static {v2}, Lorg/xbill/DNS/RecordTest;->fail(Ljava/lang/String;)V
    :try_end_1f
    .catch Lorg/xbill/DNS/RelativeNameException; {:try_start_15 .. :try_end_1f} :catch_20

    .line 934
    goto :goto_21

    :catch_20
    move-exception v2

    .line 935
    :goto_21
    return-void
.end method

.method public test_checkU16()V
    .registers 3

    .line 903
    :try_start_0
    const-string v0, "field"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lorg/xbill/DNS/Record;->checkU16(Ljava/lang/String;I)I

    const-string v0, "IllegalArgumentException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/RecordTest;->fail(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_b} :catch_c

    .line 904
    goto :goto_d

    :catch_c
    move-exception v0

    .line 905
    :goto_d
    const-string v0, "field"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/xbill/DNS/Record;->checkU16(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v1, v0}, Lorg/xbill/DNS/RecordTest;->assertEquals(II)V

    .line 906
    const-string v0, "field"

    const v1, 0x9da1

    invoke-static {v0, v1}, Lorg/xbill/DNS/Record;->checkU16(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v1, v0}, Lorg/xbill/DNS/RecordTest;->assertEquals(II)V

    .line 907
    const-string v0, "field"

    const v1, 0xffff

    invoke-static {v0, v1}, Lorg/xbill/DNS/Record;->checkU16(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v1, v0}, Lorg/xbill/DNS/RecordTest;->assertEquals(II)V

    .line 908
    :try_start_2f
    const-string v0, "field"

    const/high16 v1, 0x10000

    invoke-static {v0, v1}, Lorg/xbill/DNS/Record;->checkU16(Ljava/lang/String;I)I

    const-string v0, "IllegalArgumentException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/RecordTest;->fail(Ljava/lang/String;)V
    :try_end_3b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2f .. :try_end_3b} :catch_3c

    .line 909
    goto :goto_3d

    :catch_3c
    move-exception v0

    .line 910
    :goto_3d
    return-void
.end method

.method public test_checkU32()V
    .registers 6

    .line 914
    :try_start_0
    const-string v0, "field"

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lorg/xbill/DNS/Record;->checkU32(Ljava/lang/String;J)J

    const-string v0, "IllegalArgumentException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/RecordTest;->fail(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_c} :catch_d

    .line 915
    goto :goto_e

    :catch_d
    move-exception v0

    .line 916
    :goto_e
    const-string v0, "field"

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lorg/xbill/DNS/Record;->checkU32(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lorg/xbill/DNS/RecordTest;->assertEquals(JJ)V

    .line 917
    const-string v0, "field"

    const-wide v1, 0x9da1f02dL

    invoke-static {v0, v1, v2}, Lorg/xbill/DNS/Record;->checkU32(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lorg/xbill/DNS/RecordTest;->assertEquals(JJ)V

    .line 918
    const-string v0, "field"

    const-wide v1, 0xffffffffL

    invoke-static {v0, v1, v2}, Lorg/xbill/DNS/Record;->checkU32(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lorg/xbill/DNS/RecordTest;->assertEquals(JJ)V

    .line 919
    :try_start_35
    const-string v0, "field"

    const-wide v1, 0x100000000L

    invoke-static {v0, v1, v2}, Lorg/xbill/DNS/Record;->checkU32(Ljava/lang/String;J)J

    const-string v0, "IllegalArgumentException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/RecordTest;->fail(Ljava/lang/String;)V
    :try_end_44
    .catch Ljava/lang/IllegalArgumentException; {:try_start_35 .. :try_end_44} :catch_45

    .line 920
    goto :goto_46

    :catch_45
    move-exception v0

    .line 921
    :goto_46
    return-void
.end method

.method public test_checkU8()V
    .registers 3

    .line 892
    :try_start_0
    const-string v0, "field"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lorg/xbill/DNS/Record;->checkU8(Ljava/lang/String;I)I

    const-string v0, "IllegalArgumentException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/RecordTest;->fail(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_b} :catch_c

    .line 893
    goto :goto_d

    :catch_c
    move-exception v0

    .line 894
    :goto_d
    const-string v0, "field"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/xbill/DNS/Record;->checkU8(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v1, v0}, Lorg/xbill/DNS/RecordTest;->assertEquals(II)V

    .line 895
    const-string v0, "field"

    const/16 v1, 0x9d

    invoke-static {v0, v1}, Lorg/xbill/DNS/Record;->checkU8(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v1, v0}, Lorg/xbill/DNS/RecordTest;->assertEquals(II)V

    .line 896
    const-string v0, "field"

    const/16 v1, 0xff

    invoke-static {v0, v1}, Lorg/xbill/DNS/Record;->checkU8(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v1, v0}, Lorg/xbill/DNS/RecordTest;->assertEquals(II)V

    .line 897
    :try_start_2d
    const-string v0, "field"

    const/16 v1, 0x100

    invoke-static {v0, v1}, Lorg/xbill/DNS/Record;->checkU8(Ljava/lang/String;I)I

    const-string v0, "IllegalArgumentException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/RecordTest;->fail(Ljava/lang/String;)V
    :try_end_39
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2d .. :try_end_39} :catch_3a

    .line 898
    goto :goto_3b

    :catch_3a
    move-exception v0

    .line 899
    :goto_3b
    return-void
.end method

.method public test_cloneRecord()V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 759
    const-string v0, "My.N."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 760
    .local v0, "n":Lorg/xbill/DNS/Name;
    const/4 v1, 0x4

    new-array v6, v1, [B

    fill-array-data v6, :array_38

    .line 761
    .local v6, "d":[B
    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/32 v4, 0xabcde9

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJ[B)Lorg/xbill/DNS/Record;

    move-result-object v1

    .line 763
    .local v1, "r":Lorg/xbill/DNS/Record;
    invoke-virtual {v1}, Lorg/xbill/DNS/Record;->cloneRecord()Lorg/xbill/DNS/Record;

    move-result-object v2

    .line 765
    .local v2, "r2":Lorg/xbill/DNS/Record;
    invoke-static {v1, v2}, Lorg/xbill/DNS/RecordTest;->assertNotSame(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 766
    invoke-static {v1, v2}, Lorg/xbill/DNS/RecordTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 768
    new-instance v3, Lorg/xbill/DNS/RecordTest$SubRecord;

    const/4 v9, 0x1

    const/4 v10, 0x1

    const-wide/32 v11, 0xabcde9

    move-object v7, v3

    move-object v8, v0

    invoke-direct/range {v7 .. v12}, Lorg/xbill/DNS/RecordTest$SubRecord;-><init>(Lorg/xbill/DNS/Name;IIJ)V

    move-object v1, v3

    .line 771
    :try_start_2d
    invoke-virtual {v1}, Lorg/xbill/DNS/Record;->cloneRecord()Lorg/xbill/DNS/Record;

    .line 772
    const-string v3, "IllegalStateException not thrown"

    invoke-static {v3}, Lorg/xbill/DNS/RecordTest;->fail(Ljava/lang/String;)V
    :try_end_35
    .catch Ljava/lang/IllegalStateException; {:try_start_2d .. :try_end_35} :catch_36

    .line 774
    goto :goto_37

    :catch_36
    move-exception v3

    .line 775
    :goto_37
    return-void

    :array_38
    .array-data 1
        0x17t
        0xct
        0x9t
        -0x7ft
    .end array-data
.end method

.method public test_compareTo()V
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 836
    const-string v0, "My.N."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 837
    .local v0, "n":Lorg/xbill/DNS/Name;
    const-string v1, "my.n."

    invoke-static {v1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v19

    .line 838
    .local v19, "n2":Lorg/xbill/DNS/Name;
    const-string v1, "My.M."

    invoke-static {v1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v15

    .line 839
    .local v15, "m":Lorg/xbill/DNS/Name;
    const/4 v1, 0x4

    new-array v6, v1, [B

    fill-array-data v6, :array_ea

    .line 840
    .local v6, "d":[B
    new-array v1, v1, [B

    fill-array-data v1, :array_f0

    move-object/from16 v18, v1

    .line 841
    .local v18, "d2":[B
    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/32 v4, 0xabcde9

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJ[B)Lorg/xbill/DNS/Record;

    move-result-object v1

    .line 842
    .local v1, "r1":Lorg/xbill/DNS/Record;
    const/4 v8, 0x1

    const/4 v9, 0x1

    const-wide/32 v10, 0xabcde9

    move-object v7, v0

    move-object v12, v6

    invoke-static/range {v7 .. v12}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJ[B)Lorg/xbill/DNS/Record;

    move-result-object v2

    .line 844
    .local v2, "r2":Lorg/xbill/DNS/Record;
    invoke-virtual {v1, v1}, Lorg/xbill/DNS/Record;->compareTo(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v4, v3}, Lorg/xbill/DNS/RecordTest;->assertEquals(II)V

    .line 846
    invoke-virtual {v1, v2}, Lorg/xbill/DNS/Record;->compareTo(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v4, v3}, Lorg/xbill/DNS/RecordTest;->assertEquals(II)V

    .line 847
    invoke-virtual {v2, v1}, Lorg/xbill/DNS/Record;->compareTo(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v4, v3}, Lorg/xbill/DNS/RecordTest;->assertEquals(II)V

    .line 850
    move-object/from16 v7, v19

    invoke-static/range {v7 .. v12}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJ[B)Lorg/xbill/DNS/Record;

    move-result-object v2

    .line 851
    invoke-virtual {v1, v2}, Lorg/xbill/DNS/Record;->compareTo(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v4, v3}, Lorg/xbill/DNS/RecordTest;->assertEquals(II)V

    .line 852
    invoke-virtual {v2, v1}, Lorg/xbill/DNS/Record;->compareTo(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v4, v3}, Lorg/xbill/DNS/RecordTest;->assertEquals(II)V

    .line 855
    move-object v7, v15

    invoke-static/range {v7 .. v12}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJ[B)Lorg/xbill/DNS/Record;

    move-result-object v2

    .line 856
    invoke-virtual {v0, v15}, Lorg/xbill/DNS/Name;->compareTo(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v1, v2}, Lorg/xbill/DNS/Record;->compareTo(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v3, v4}, Lorg/xbill/DNS/RecordTest;->assertEquals(II)V

    .line 857
    invoke-virtual {v15, v0}, Lorg/xbill/DNS/Name;->compareTo(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v1}, Lorg/xbill/DNS/Record;->compareTo(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v3, v4}, Lorg/xbill/DNS/RecordTest;->assertEquals(II)V

    .line 860
    const/4 v9, 0x3

    move-object v7, v0

    invoke-static/range {v7 .. v12}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJ[B)Lorg/xbill/DNS/Record;

    move-result-object v2

    .line 861
    invoke-virtual {v1, v2}, Lorg/xbill/DNS/Record;->compareTo(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x2

    invoke-static {v4, v3}, Lorg/xbill/DNS/RecordTest;->assertEquals(II)V

    .line 862
    invoke-virtual {v2, v1}, Lorg/xbill/DNS/Record;->compareTo(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, 0x2

    invoke-static {v4, v3}, Lorg/xbill/DNS/RecordTest;->assertEquals(II)V

    .line 865
    invoke-virtual {v15}, Lorg/xbill/DNS/Name;->toWire()[B

    move-result-object v12

    const/4 v8, 0x2

    const/4 v9, 0x1

    invoke-static/range {v7 .. v12}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJ[B)Lorg/xbill/DNS/Record;

    move-result-object v2

    .line 866
    invoke-virtual {v1, v2}, Lorg/xbill/DNS/Record;->compareTo(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    invoke-static {v4, v3}, Lorg/xbill/DNS/RecordTest;->assertEquals(II)V

    .line 867
    invoke-virtual {v2, v1}, Lorg/xbill/DNS/Record;->compareTo(Ljava/lang/Object;)I

    move-result v3

    const/4 v5, 0x1

    invoke-static {v5, v3}, Lorg/xbill/DNS/RecordTest;->assertEquals(II)V

    .line 870
    const/4 v14, 0x1

    const/4 v3, 0x1

    const-wide/32 v16, 0xabcde9

    move-object v13, v0

    move-object v7, v15

    .end local v15    # "m":Lorg/xbill/DNS/Name;
    .local v7, "m":Lorg/xbill/DNS/Name;
    move v15, v3

    invoke-static/range {v13 .. v18}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJ[B)Lorg/xbill/DNS/Record;

    move-result-object v2

    .line 871
    invoke-virtual {v1, v2}, Lorg/xbill/DNS/Record;->compareTo(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v5, v3}, Lorg/xbill/DNS/RecordTest;->assertEquals(II)V

    .line 872
    invoke-virtual {v2, v1}, Lorg/xbill/DNS/Record;->compareTo(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v4, v3}, Lorg/xbill/DNS/RecordTest;->assertEquals(II)V

    .line 875
    const-string v3, "My.N.L."

    invoke-static {v3}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v3

    .line 876
    .end local v7    # "m":Lorg/xbill/DNS/Name;
    .local v3, "m":Lorg/xbill/DNS/Name;
    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->toWire()[B

    move-result-object v12

    move-object v7, v0

    invoke-static/range {v7 .. v12}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJ[B)Lorg/xbill/DNS/Record;

    move-result-object v1

    .line 877
    invoke-virtual {v3}, Lorg/xbill/DNS/Name;->toWire()[B

    move-result-object v12

    invoke-static/range {v7 .. v12}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJ[B)Lorg/xbill/DNS/Record;

    move-result-object v2

    .line 878
    invoke-virtual {v1, v2}, Lorg/xbill/DNS/Record;->compareTo(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v4, v7}, Lorg/xbill/DNS/RecordTest;->assertEquals(II)V

    .line 879
    invoke-virtual {v2, v1}, Lorg/xbill/DNS/Record;->compareTo(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v5, v4}, Lorg/xbill/DNS/RecordTest;->assertEquals(II)V

    .line 880
    return-void

    nop

    :array_ea
    .array-data 1
        0x17t
        0xct
        0x9t
        -0x7ft
    .end array-data

    :array_f0
    .array-data 1
        0x17t
        0xct
        0x9t
        -0x80t
    .end array-data
.end method

.method public test_ctor_0arg()V
    .registers 8

    .line 97
    new-instance v0, Lorg/xbill/DNS/RecordTest$SubRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/RecordTest$SubRecord;-><init>()V

    .line 98
    .local v0, "sr":Lorg/xbill/DNS/RecordTest$SubRecord;
    invoke-virtual {v0}, Lorg/xbill/DNS/RecordTest$SubRecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object v1

    invoke-static {v1}, Lorg/xbill/DNS/RecordTest;->assertNull(Ljava/lang/Object;)V

    .line 99
    invoke-virtual {v0}, Lorg/xbill/DNS/RecordTest$SubRecord;->getType()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lorg/xbill/DNS/RecordTest;->assertEquals(II)V

    .line 100
    invoke-virtual {v0}, Lorg/xbill/DNS/RecordTest$SubRecord;->getTTL()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    invoke-static {v5, v6, v3, v4}, Lorg/xbill/DNS/RecordTest;->assertEquals(JJ)V

    .line 101
    invoke-virtual {v0}, Lorg/xbill/DNS/RecordTest$SubRecord;->getDClass()I

    move-result v1

    invoke-static {v2, v1}, Lorg/xbill/DNS/RecordTest;->assertEquals(II)V

    .line 102
    return-void
.end method

.method public test_ctor_4arg()V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 106
    const-string v0, "my.name."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 107
    .local v0, "n":Lorg/xbill/DNS/Name;
    const/4 v7, 0x1

    .line 108
    .local v7, "t":I
    const/4 v8, 0x1

    .line 109
    .local v8, "d":I
    const-wide/32 v9, 0xabcde

    .line 111
    .local v9, "ttl":J
    new-instance v11, Lorg/xbill/DNS/RecordTest$SubRecord;

    move-object v1, v11

    move-object v2, v0

    move v3, v7

    move v4, v8

    move-wide v5, v9

    invoke-direct/range {v1 .. v6}, Lorg/xbill/DNS/RecordTest$SubRecord;-><init>(Lorg/xbill/DNS/Name;IIJ)V

    .line 112
    .local v1, "r":Lorg/xbill/DNS/RecordTest$SubRecord;
    invoke-virtual {v1}, Lorg/xbill/DNS/RecordTest$SubRecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/xbill/DNS/RecordTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 113
    invoke-virtual {v1}, Lorg/xbill/DNS/RecordTest$SubRecord;->getType()I

    move-result v2

    invoke-static {v7, v2}, Lorg/xbill/DNS/RecordTest;->assertEquals(II)V

    .line 114
    invoke-virtual {v1}, Lorg/xbill/DNS/RecordTest$SubRecord;->getDClass()I

    move-result v2

    invoke-static {v8, v2}, Lorg/xbill/DNS/RecordTest;->assertEquals(II)V

    .line 115
    invoke-virtual {v1}, Lorg/xbill/DNS/RecordTest$SubRecord;->getTTL()J

    move-result-wide v2

    invoke-static {v9, v10, v2, v3}, Lorg/xbill/DNS/RecordTest;->assertEquals(JJ)V

    .line 116
    return-void
.end method

.method public test_ctor_4arg_invalid()V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 120
    const-string v0, "my.name."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v7

    .line 121
    .local v7, "n":Lorg/xbill/DNS/Name;
    const-string v0, "my.relative.name"

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v14

    .line 122
    .local v14, "r":Lorg/xbill/DNS/Name;
    const/4 v15, 0x1

    .line 123
    .local v15, "t":I
    const/16 v16, 0x1

    .line 124
    .local v16, "d":I
    const-wide/32 v12, 0xabcde

    .line 127
    .local v12, "ttl":J
    :try_start_12
    new-instance v8, Lorg/xbill/DNS/RecordTest$SubRecord;

    move-object v9, v14

    move v10, v15

    move/from16 v11, v16

    invoke-direct/range {v8 .. v13}, Lorg/xbill/DNS/RecordTest$SubRecord;-><init>(Lorg/xbill/DNS/Name;IIJ)V

    .line 128
    const-string v0, "RelativeNameException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/RecordTest;->fail(Ljava/lang/String;)V
    :try_end_20
    .catch Lorg/xbill/DNS/RelativeNameException; {:try_start_12 .. :try_end_20} :catch_21

    .line 130
    goto :goto_22

    :catch_21
    move-exception v0

    .line 133
    :goto_22
    :try_start_22
    new-instance v1, Lorg/xbill/DNS/RecordTest$SubRecord;

    const/4 v3, -0x1

    move-object v2, v7

    move/from16 v4, v16

    move-wide v5, v12

    invoke-direct/range {v1 .. v6}, Lorg/xbill/DNS/RecordTest$SubRecord;-><init>(Lorg/xbill/DNS/Name;IIJ)V

    .line 134
    const-string v0, "InvalidTypeException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/RecordTest;->fail(Ljava/lang/String;)V
    :try_end_31
    .catch Lorg/xbill/DNS/InvalidTypeException; {:try_start_22 .. :try_end_31} :catch_32

    .line 136
    goto :goto_33

    :catch_32
    move-exception v0

    .line 139
    :goto_33
    :try_start_33
    new-instance v1, Lorg/xbill/DNS/RecordTest$SubRecord;

    const/4 v4, -0x1

    move-object v2, v7

    move v3, v15

    move-wide v5, v12

    invoke-direct/range {v1 .. v6}, Lorg/xbill/DNS/RecordTest$SubRecord;-><init>(Lorg/xbill/DNS/Name;IIJ)V

    .line 140
    const-string v0, "InvalidDClassException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/RecordTest;->fail(Ljava/lang/String;)V
    :try_end_41
    .catch Lorg/xbill/DNS/InvalidDClassException; {:try_start_33 .. :try_end_41} :catch_42

    .line 142
    goto :goto_43

    :catch_42
    move-exception v0

    .line 145
    :goto_43
    :try_start_43
    new-instance v1, Lorg/xbill/DNS/RecordTest$SubRecord;

    const-wide/16 v5, -0x1

    move-object v2, v7

    move v3, v15

    move/from16 v4, v16

    invoke-direct/range {v1 .. v6}, Lorg/xbill/DNS/RecordTest$SubRecord;-><init>(Lorg/xbill/DNS/Name;IIJ)V

    .line 146
    const-string v0, "InvalidTTLException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/RecordTest;->fail(Ljava/lang/String;)V
    :try_end_53
    .catch Lorg/xbill/DNS/InvalidTTLException; {:try_start_43 .. :try_end_53} :catch_54

    .line 148
    goto :goto_55

    :catch_54
    move-exception v0

    .line 149
    :goto_55
    return-void
.end method

.method public test_equals()V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 674
    const-string v0, "My.N."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 675
    .local v0, "n":Lorg/xbill/DNS/Name;
    const-string v1, "my.n."

    invoke-static {v1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v15

    .line 676
    .local v15, "n2":Lorg/xbill/DNS/Name;
    const-string v1, "My.M."

    invoke-static {v1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v14

    .line 678
    .local v14, "m":Lorg/xbill/DNS/Name;
    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v3, v3, v1, v2}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJ)Lorg/xbill/DNS/Record;

    move-result-object v7

    .line 680
    .local v7, "r1":Lorg/xbill/DNS/Record;
    const/4 v4, 0x0

    invoke-virtual {v7, v4}, Lorg/xbill/DNS/Record;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Lorg/xbill/DNS/RecordTest;->assertFalse(Z)V

    .line 681
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v7, v4}, Lorg/xbill/DNS/Record;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Lorg/xbill/DNS/RecordTest;->assertFalse(Z)V

    .line 683
    invoke-static {v0, v3, v3, v1, v2}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJ)Lorg/xbill/DNS/Record;

    move-result-object v4

    .line 684
    .local v4, "r2":Lorg/xbill/DNS/Record;
    invoke-static {v7, v4}, Lorg/xbill/DNS/RecordTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 685
    invoke-static {v4, v7}, Lorg/xbill/DNS/RecordTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 687
    invoke-static {v15, v3, v3, v1, v2}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJ)Lorg/xbill/DNS/Record;

    move-result-object v1

    .line 688
    .end local v4    # "r2":Lorg/xbill/DNS/Record;
    .local v1, "r2":Lorg/xbill/DNS/Record;
    invoke-static {v7, v1}, Lorg/xbill/DNS/RecordTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 689
    invoke-static {v1, v7}, Lorg/xbill/DNS/RecordTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 691
    const-wide/32 v4, 0xabcde

    invoke-static {v15, v3, v3, v4, v5}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJ)Lorg/xbill/DNS/Record;

    move-result-object v1

    .line 692
    invoke-static {v7, v1}, Lorg/xbill/DNS/RecordTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 693
    invoke-static {v1, v7}, Lorg/xbill/DNS/RecordTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 695
    invoke-static {v14, v3, v3, v4, v5}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJ)Lorg/xbill/DNS/Record;

    move-result-object v1

    .line 696
    invoke-virtual {v7, v1}, Lorg/xbill/DNS/Record;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/RecordTest;->assertFalse(Z)V

    .line 697
    invoke-virtual {v1, v7}, Lorg/xbill/DNS/Record;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/RecordTest;->assertFalse(Z)V

    .line 699
    const/16 v2, 0xf

    invoke-static {v15, v2, v3, v4, v5}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJ)Lorg/xbill/DNS/Record;

    move-result-object v1

    .line 700
    invoke-virtual {v7, v1}, Lorg/xbill/DNS/Record;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/RecordTest;->assertFalse(Z)V

    .line 701
    invoke-virtual {v1, v7}, Lorg/xbill/DNS/Record;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/RecordTest;->assertFalse(Z)V

    .line 703
    const/4 v2, 0x3

    invoke-static {v15, v3, v2, v4, v5}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJ)Lorg/xbill/DNS/Record;

    move-result-object v13

    .line 704
    .end local v1    # "r2":Lorg/xbill/DNS/Record;
    .local v13, "r2":Lorg/xbill/DNS/Record;
    invoke-virtual {v7, v13}, Lorg/xbill/DNS/Record;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/RecordTest;->assertFalse(Z)V

    .line 705
    invoke-virtual {v13, v7}, Lorg/xbill/DNS/Record;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/RecordTest;->assertFalse(Z)V

    .line 707
    const/4 v1, 0x4

    new-array v6, v1, [B

    fill-array-data v6, :array_ca

    .line 708
    .local v6, "d1":[B
    new-array v1, v1, [B

    fill-array-data v1, :array_d0

    move-object/from16 v18, v1

    .line 710
    .local v18, "d2":[B
    const/4 v2, 0x1

    const-wide/32 v4, 0xabcde9

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJ[B)Lorg/xbill/DNS/Record;

    move-result-object v1

    .line 711
    .end local v7    # "r1":Lorg/xbill/DNS/Record;
    .local v1, "r1":Lorg/xbill/DNS/Record;
    const/4 v8, 0x1

    const/4 v9, 0x1

    const-wide/32 v10, 0xabcde9

    move-object v7, v0

    move-object v12, v6

    invoke-static/range {v7 .. v12}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJ[B)Lorg/xbill/DNS/Record;

    move-result-object v2

    .line 713
    .end local v13    # "r2":Lorg/xbill/DNS/Record;
    .local v2, "r2":Lorg/xbill/DNS/Record;
    invoke-static {v1, v2}, Lorg/xbill/DNS/RecordTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 714
    invoke-static {v2, v1}, Lorg/xbill/DNS/RecordTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 716
    const/4 v4, 0x1

    const-wide/32 v16, 0xabcde9

    move-object v13, v0

    move-object v5, v14

    .end local v14    # "m":Lorg/xbill/DNS/Name;
    .local v5, "m":Lorg/xbill/DNS/Name;
    move v14, v3

    move-object v3, v15

    .end local v15    # "n2":Lorg/xbill/DNS/Name;
    .local v3, "n2":Lorg/xbill/DNS/Name;
    move v15, v4

    invoke-static/range {v13 .. v18}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJ[B)Lorg/xbill/DNS/Record;

    move-result-object v2

    .line 718
    invoke-virtual {v1, v2}, Lorg/xbill/DNS/Record;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Lorg/xbill/DNS/RecordTest;->assertFalse(Z)V

    .line 719
    invoke-virtual {v2, v1}, Lorg/xbill/DNS/Record;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Lorg/xbill/DNS/RecordTest;->assertFalse(Z)V

    .line 720
    return-void

    :array_ca
    .array-data 1
        0x17t
        0xct
        0x9t
        -0x7ft
    .end array-data

    :array_d0
    .array-data 1
        -0x24t
        0x1t
        -0x7dt
        -0x2ct
    .end array-data
.end method

.method public test_fromString()V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 568
    const-string v0, "My.N."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 569
    .local v0, "n":Lorg/xbill/DNS/Name;
    const-string v1, "My.Second.Name."

    invoke-static {v1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v8

    .line 570
    .local v8, "n2":Lorg/xbill/DNS/Name;
    const/4 v9, 0x1

    .line 571
    .local v9, "t":I
    const/4 v10, 0x1

    .line 572
    .local v10, "d":I
    const v11, 0xabe99

    .line 573
    .local v11, "ttl":I
    const-string v12, "191.234.43.10"

    .line 574
    .local v12, "sa":Ljava/lang/String;
    invoke-static {v12}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v13

    .line 575
    .local v13, "addr":Ljava/net/InetAddress;
    const/4 v1, 0x4

    new-array v1, v1, [B

    fill-array-data v1, :array_9a

    move-object v14, v1

    .line 577
    .local v14, "b":[B
    new-instance v6, Lorg/xbill/DNS/Tokenizer;

    invoke-direct {v6, v12}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    .line 578
    .local v6, "st":Lorg/xbill/DNS/Tokenizer;
    int-to-long v4, v11

    move-object v1, v0

    move v2, v9

    move v3, v10

    move-object v7, v8

    invoke-static/range {v1 .. v7}, Lorg/xbill/DNS/Record;->fromString(Lorg/xbill/DNS/Name;IIJLorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Record;

    move-result-object v15

    .line 579
    .local v15, "rec":Lorg/xbill/DNS/Record;
    instance-of v1, v15, Lorg/xbill/DNS/ARecord;

    invoke-static {v1}, Lorg/xbill/DNS/RecordTest;->assertTrue(Z)V

    .line 580
    invoke-virtual {v15}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/xbill/DNS/RecordTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 581
    invoke-virtual {v15}, Lorg/xbill/DNS/Record;->getType()I

    move-result v1

    invoke-static {v9, v1}, Lorg/xbill/DNS/RecordTest;->assertEquals(II)V

    .line 582
    invoke-virtual {v15}, Lorg/xbill/DNS/Record;->getDClass()I

    move-result v1

    invoke-static {v10, v1}, Lorg/xbill/DNS/RecordTest;->assertEquals(II)V

    .line 583
    int-to-long v1, v11

    invoke-virtual {v15}, Lorg/xbill/DNS/Record;->getTTL()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lorg/xbill/DNS/RecordTest;->assertEquals(JJ)V

    .line 584
    move-object v1, v15

    check-cast v1, Lorg/xbill/DNS/ARecord;

    invoke-virtual {v1}, Lorg/xbill/DNS/ARecord;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-static {v13, v1}, Lorg/xbill/DNS/RecordTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 586
    invoke-static {v14}, Lorg/xbill/DNS/RecordTest$SubRecord;->unknownToString([B)Ljava/lang/String;

    move-result-object v7

    .line 587
    .local v7, "unkData":Ljava/lang/String;
    new-instance v1, Lorg/xbill/DNS/Tokenizer;

    invoke-direct {v1, v7}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    move-object v6, v1

    .line 588
    int-to-long v4, v11

    move-object v1, v0

    move v2, v9

    move v3, v10

    move-object/from16 v16, v7

    .end local v7    # "unkData":Ljava/lang/String;
    .local v16, "unkData":Ljava/lang/String;
    move-object v7, v8

    invoke-static/range {v1 .. v7}, Lorg/xbill/DNS/Record;->fromString(Lorg/xbill/DNS/Name;IIJLorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Record;

    move-result-object v1

    .line 589
    .end local v15    # "rec":Lorg/xbill/DNS/Record;
    .local v1, "rec":Lorg/xbill/DNS/Record;
    instance-of v2, v1, Lorg/xbill/DNS/ARecord;

    invoke-static {v2}, Lorg/xbill/DNS/RecordTest;->assertTrue(Z)V

    .line 590
    invoke-virtual {v1}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/xbill/DNS/RecordTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 591
    invoke-virtual {v1}, Lorg/xbill/DNS/Record;->getType()I

    move-result v2

    invoke-static {v9, v2}, Lorg/xbill/DNS/RecordTest;->assertEquals(II)V

    .line 592
    invoke-virtual {v1}, Lorg/xbill/DNS/Record;->getDClass()I

    move-result v2

    invoke-static {v10, v2}, Lorg/xbill/DNS/RecordTest;->assertEquals(II)V

    .line 593
    int-to-long v2, v11

    invoke-virtual {v1}, Lorg/xbill/DNS/Record;->getTTL()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/xbill/DNS/RecordTest;->assertEquals(JJ)V

    .line 594
    move-object v2, v1

    check-cast v2, Lorg/xbill/DNS/ARecord;

    invoke-virtual {v2}, Lorg/xbill/DNS/ARecord;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-static {v13, v2}, Lorg/xbill/DNS/RecordTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 595
    return-void

    :array_9a
    .array-data 1
        -0x41t
        -0x16t
        0x2bt
        0xat
    .end array-data
.end method

.method public test_fromString_invalid()V
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 599
    const-string v0, "My.N."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v14

    .line 600
    .local v14, "n":Lorg/xbill/DNS/Name;
    const-string v0, "My.R"

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v15

    .line 601
    .local v15, "rel":Lorg/xbill/DNS/Name;
    const-string v0, "My.Second.Name."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v16

    .line 602
    .local v16, "n2":Lorg/xbill/DNS/Name;
    const/16 v17, 0x1

    .line 603
    .local v17, "t":I
    const/16 v18, 0x1

    .line 604
    .local v18, "d":I
    const v13, 0xabe99

    .line 605
    .local v13, "ttl":I
    const-string v0, "191.234.43.10"

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v19

    .line 607
    .local v19, "addr":Ljava/net/InetAddress;
    new-instance v6, Lorg/xbill/DNS/Tokenizer;

    const-string v0, "191.234.43.10"

    invoke-direct {v6, v0}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    .line 610
    .local v6, "st":Lorg/xbill/DNS/Tokenizer;
    int-to-long v4, v13

    move-object v1, v15

    move/from16 v2, v17

    move/from16 v3, v18

    move-object/from16 v7, v16

    :try_start_2e
    invoke-static/range {v1 .. v7}, Lorg/xbill/DNS/Record;->fromString(Lorg/xbill/DNS/Name;IIJLorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Record;

    .line 611
    const-string v0, "RelativeNameException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/RecordTest;->fail(Ljava/lang/String;)V
    :try_end_36
    .catch Lorg/xbill/DNS/RelativeNameException; {:try_start_2e .. :try_end_36} :catch_37

    .line 613
    goto :goto_38

    :catch_37
    move-exception v0

    .line 615
    :goto_38
    new-instance v0, Lorg/xbill/DNS/Tokenizer;

    const-string v1, "191.234.43.10 another_token"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    .line 617
    int-to-long v4, v13

    move-object v1, v14

    move/from16 v2, v17

    move/from16 v3, v18

    move-object/from16 v7, v16

    :try_start_48
    invoke-static/range {v1 .. v7}, Lorg/xbill/DNS/Record;->fromString(Lorg/xbill/DNS/Name;IIJLorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Record;

    .line 618
    const-string v0, "TextParseException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/RecordTest;->fail(Ljava/lang/String;)V
    :try_end_50
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_48 .. :try_end_50} :catch_51

    .line 620
    goto :goto_52

    :catch_51
    move-exception v0

    .line 622
    :goto_52
    new-instance v0, Lorg/xbill/DNS/Tokenizer;

    const-string v1, "\\# 100 ABCDE"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    .line 624
    int-to-long v4, v13

    move-object v1, v14

    move/from16 v2, v17

    move/from16 v3, v18

    move-object/from16 v7, v16

    :try_start_62
    invoke-static/range {v1 .. v7}, Lorg/xbill/DNS/Record;->fromString(Lorg/xbill/DNS/Name;IIJLorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Record;

    .line 625
    const-string v0, "TextParseException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/RecordTest;->fail(Ljava/lang/String;)V
    :try_end_6a
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_62 .. :try_end_6a} :catch_6b

    .line 627
    goto :goto_6c

    :catch_6b
    move-exception v0

    .line 630
    :goto_6c
    int-to-long v10, v13

    :try_start_6d
    const-string v12, "\\# 100"
    :try_end_6f
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_6d .. :try_end_6f} :catch_82

    move-object v7, v14

    move/from16 v8, v17

    move/from16 v9, v18

    move v1, v13

    .end local v13    # "ttl":I
    .local v1, "ttl":I
    move-object/from16 v13, v16

    :try_start_77
    invoke-static/range {v7 .. v13}, Lorg/xbill/DNS/Record;->fromString(Lorg/xbill/DNS/Name;IIJLjava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Record;

    .line 631
    const-string v0, "TextParseException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/RecordTest;->fail(Ljava/lang/String;)V
    :try_end_7f
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_77 .. :try_end_7f} :catch_80

    .line 633
    goto :goto_84

    :catch_80
    move-exception v0

    goto :goto_84

    .end local v1    # "ttl":I
    .restart local v13    # "ttl":I
    :catch_82
    move-exception v0

    move v1, v13

    .line 634
    .end local v13    # "ttl":I
    .restart local v1    # "ttl":I
    :goto_84
    return-void
.end method

.method public test_fromWire()V
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xbill/DNS/TextParseException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 273
    const-string v0, "my.name."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 274
    .local v0, "n":Lorg/xbill/DNS/Name;
    const/4 v1, 0x1

    .line 275
    .local v1, "t":I
    const/4 v2, 0x1

    .line 276
    .local v2, "d":I
    const v3, 0xdbe8

    .line 277
    .local v3, "ttl":I
    const/4 v4, 0x4

    new-array v4, v4, [B

    fill-array-data v4, :array_13c

    .line 278
    .local v4, "data":[B
    const-string v5, "123.232.0.255"

    invoke-static {v5}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    .line 280
    .local v5, "exp":Ljava/net/InetAddress;
    new-instance v6, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v6}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 281
    .local v6, "out":Lorg/xbill/DNS/DNSOutput;
    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Lorg/xbill/DNS/Name;->toWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;)V

    .line 282
    invoke-virtual {v6, v1}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 283
    invoke-virtual {v6, v2}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 284
    int-to-long v8, v3

    invoke-virtual {v6, v8, v9}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 285
    array-length v8, v4

    invoke-virtual {v6, v8}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 286
    invoke-virtual {v6, v4}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 288
    new-instance v8, Lorg/xbill/DNS/DNSInput;

    invoke-virtual {v6}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    .line 290
    .local v8, "in":Lorg/xbill/DNS/DNSInput;
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lorg/xbill/DNS/Record;->fromWire(Lorg/xbill/DNS/DNSInput;IZ)Lorg/xbill/DNS/Record;

    move-result-object v11

    .line 291
    .local v11, "rec":Lorg/xbill/DNS/Record;
    instance-of v12, v11, Lorg/xbill/DNS/ARecord;

    invoke-static {v12}, Lorg/xbill/DNS/RecordTest;->assertTrue(Z)V

    .line 292
    invoke-virtual {v11}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v12

    invoke-static {v0, v12}, Lorg/xbill/DNS/RecordTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 293
    invoke-virtual {v11}, Lorg/xbill/DNS/Record;->getType()I

    move-result v12

    invoke-static {v1, v12}, Lorg/xbill/DNS/RecordTest;->assertEquals(II)V

    .line 294
    invoke-virtual {v11}, Lorg/xbill/DNS/Record;->getDClass()I

    move-result v12

    invoke-static {v2, v12}, Lorg/xbill/DNS/RecordTest;->assertEquals(II)V

    .line 295
    int-to-long v12, v3

    invoke-virtual {v11}, Lorg/xbill/DNS/Record;->getTTL()J

    move-result-wide v14

    invoke-static {v12, v13, v14, v15}, Lorg/xbill/DNS/RecordTest;->assertEquals(JJ)V

    .line 296
    move-object v12, v11

    check-cast v12, Lorg/xbill/DNS/ARecord;

    invoke-virtual {v12}, Lorg/xbill/DNS/ARecord;->getAddress()Ljava/net/InetAddress;

    move-result-object v12

    invoke-static {v5, v12}, Lorg/xbill/DNS/RecordTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 298
    new-instance v12, Lorg/xbill/DNS/DNSInput;

    invoke-virtual {v6}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v13

    invoke-direct {v12, v13}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    move-object v8, v12

    .line 299
    invoke-static {v8, v10, v10}, Lorg/xbill/DNS/Record;->fromWire(Lorg/xbill/DNS/DNSInput;IZ)Lorg/xbill/DNS/Record;

    move-result-object v11

    .line 300
    instance-of v12, v11, Lorg/xbill/DNS/EmptyRecord;

    invoke-static {v12}, Lorg/xbill/DNS/RecordTest;->assertTrue(Z)V

    .line 301
    invoke-virtual {v11}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v12

    invoke-static {v0, v12}, Lorg/xbill/DNS/RecordTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 302
    invoke-virtual {v11}, Lorg/xbill/DNS/Record;->getType()I

    move-result v12

    invoke-static {v1, v12}, Lorg/xbill/DNS/RecordTest;->assertEquals(II)V

    .line 303
    invoke-virtual {v11}, Lorg/xbill/DNS/Record;->getDClass()I

    move-result v12

    invoke-static {v2, v12}, Lorg/xbill/DNS/RecordTest;->assertEquals(II)V

    .line 304
    invoke-virtual {v11}, Lorg/xbill/DNS/Record;->getTTL()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    invoke-static {v14, v15, v12, v13}, Lorg/xbill/DNS/RecordTest;->assertEquals(JJ)V

    .line 306
    new-instance v12, Lorg/xbill/DNS/DNSInput;

    invoke-virtual {v6}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v13

    invoke-direct {v12, v13}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    move-object v8, v12

    .line 307
    invoke-static {v8, v10}, Lorg/xbill/DNS/Record;->fromWire(Lorg/xbill/DNS/DNSInput;I)Lorg/xbill/DNS/Record;

    move-result-object v11

    .line 308
    instance-of v12, v11, Lorg/xbill/DNS/EmptyRecord;

    invoke-static {v12}, Lorg/xbill/DNS/RecordTest;->assertTrue(Z)V

    .line 309
    invoke-virtual {v11}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v12

    invoke-static {v0, v12}, Lorg/xbill/DNS/RecordTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 310
    invoke-virtual {v11}, Lorg/xbill/DNS/Record;->getType()I

    move-result v12

    invoke-static {v1, v12}, Lorg/xbill/DNS/RecordTest;->assertEquals(II)V

    .line 311
    invoke-virtual {v11}, Lorg/xbill/DNS/Record;->getDClass()I

    move-result v12

    invoke-static {v2, v12}, Lorg/xbill/DNS/RecordTest;->assertEquals(II)V

    .line 312
    invoke-virtual {v11}, Lorg/xbill/DNS/Record;->getTTL()J

    move-result-wide v12

    invoke-static {v14, v15, v12, v13}, Lorg/xbill/DNS/RecordTest;->assertEquals(JJ)V

    .line 314
    invoke-virtual {v6}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v12

    invoke-static {v12, v10}, Lorg/xbill/DNS/Record;->fromWire([BI)Lorg/xbill/DNS/Record;

    move-result-object v11

    .line 315
    instance-of v12, v11, Lorg/xbill/DNS/EmptyRecord;

    invoke-static {v12}, Lorg/xbill/DNS/RecordTest;->assertTrue(Z)V

    .line 316
    invoke-virtual {v11}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v12

    invoke-static {v0, v12}, Lorg/xbill/DNS/RecordTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 317
    invoke-virtual {v11}, Lorg/xbill/DNS/Record;->getType()I

    move-result v12

    invoke-static {v1, v12}, Lorg/xbill/DNS/RecordTest;->assertEquals(II)V

    .line 318
    invoke-virtual {v11}, Lorg/xbill/DNS/Record;->getDClass()I

    move-result v12

    invoke-static {v2, v12}, Lorg/xbill/DNS/RecordTest;->assertEquals(II)V

    .line 319
    invoke-virtual {v11}, Lorg/xbill/DNS/Record;->getTTL()J

    move-result-wide v12

    invoke-static {v14, v15, v12, v13}, Lorg/xbill/DNS/RecordTest;->assertEquals(JJ)V

    .line 321
    new-instance v12, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v12}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    move-object v6, v12

    .line 322
    invoke-virtual {v0, v6, v7}, Lorg/xbill/DNS/Name;->toWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;)V

    .line 323
    invoke-virtual {v6, v1}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 324
    invoke-virtual {v6, v2}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 325
    int-to-long v12, v3

    invoke-virtual {v6, v12, v13}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 326
    invoke-virtual {v6, v10}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 328
    new-instance v7, Lorg/xbill/DNS/DNSInput;

    invoke-virtual {v6}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v10

    invoke-direct {v7, v10}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    .line 330
    .end local v8    # "in":Lorg/xbill/DNS/DNSInput;
    .local v7, "in":Lorg/xbill/DNS/DNSInput;
    invoke-static {v7, v9, v9}, Lorg/xbill/DNS/Record;->fromWire(Lorg/xbill/DNS/DNSInput;IZ)Lorg/xbill/DNS/Record;

    move-result-object v8

    .line 331
    .end local v11    # "rec":Lorg/xbill/DNS/Record;
    .local v8, "rec":Lorg/xbill/DNS/Record;
    instance-of v9, v8, Lorg/xbill/DNS/EmptyRecord;

    invoke-static {v9}, Lorg/xbill/DNS/RecordTest;->assertTrue(Z)V

    .line 332
    invoke-virtual {v8}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v9

    invoke-static {v0, v9}, Lorg/xbill/DNS/RecordTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 333
    invoke-virtual {v8}, Lorg/xbill/DNS/Record;->getType()I

    move-result v9

    invoke-static {v1, v9}, Lorg/xbill/DNS/RecordTest;->assertEquals(II)V

    .line 334
    invoke-virtual {v8}, Lorg/xbill/DNS/Record;->getDClass()I

    move-result v9

    invoke-static {v2, v9}, Lorg/xbill/DNS/RecordTest;->assertEquals(II)V

    .line 335
    int-to-long v9, v3

    invoke-virtual {v8}, Lorg/xbill/DNS/Record;->getTTL()J

    move-result-wide v11

    invoke-static {v9, v10, v11, v12}, Lorg/xbill/DNS/RecordTest;->assertEquals(JJ)V

    .line 337
    return-void

    nop

    :array_13c
    .array-data 1
        0x7bt
        -0x18t
        0x0t
        -0x1t
    .end array-data
.end method

.method public test_getAdditionalName()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 884
    const-string v0, "My.N."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 885
    .local v0, "n":Lorg/xbill/DNS/Name;
    new-instance v7, Lorg/xbill/DNS/RecordTest$SubRecord;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const-wide/32 v5, 0xabcde9

    move-object v1, v7

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Lorg/xbill/DNS/RecordTest$SubRecord;-><init>(Lorg/xbill/DNS/Name;IIJ)V

    .line 887
    .local v1, "r":Lorg/xbill/DNS/Record;
    invoke-virtual {v1}, Lorg/xbill/DNS/Record;->getAdditionalName()Lorg/xbill/DNS/Name;

    move-result-object v2

    invoke-static {v2}, Lorg/xbill/DNS/RecordTest;->assertNull(Ljava/lang/Object;)V

    .line 888
    return-void
.end method

.method public test_getRRsetType()V
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 638
    const-string v0, "My.N."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 640
    .local v0, "n":Lorg/xbill/DNS/Name;
    const/4 v15, 0x1

    const-wide/16 v1, 0x0

    invoke-static {v0, v15, v15, v1, v2}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJ)Lorg/xbill/DNS/Record;

    move-result-object v16

    .line 641
    .local v16, "r":Lorg/xbill/DNS/Record;
    invoke-virtual/range {v16 .. v16}, Lorg/xbill/DNS/Record;->getRRsetType()I

    move-result v1

    invoke-static {v15, v1}, Lorg/xbill/DNS/RecordTest;->assertEquals(II)V

    .line 643
    new-instance v17, Lorg/xbill/DNS/RRSIGRecord;

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    const/4 v1, 0x0

    new-array v14, v1, [B

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const-wide/16 v8, 0x0

    const/16 v12, 0xa

    move-object/from16 v1, v17

    move-object v2, v0

    move-object v13, v0

    invoke-direct/range {v1 .. v14}, Lorg/xbill/DNS/RRSIGRecord;-><init>(Lorg/xbill/DNS/Name;IJIIJLjava/util/Date;Ljava/util/Date;ILorg/xbill/DNS/Name;[B)V

    .line 645
    .end local v16    # "r":Lorg/xbill/DNS/Record;
    .local v1, "r":Lorg/xbill/DNS/Record;
    invoke-virtual {v1}, Lorg/xbill/DNS/Record;->getRRsetType()I

    move-result v2

    invoke-static {v15, v2}, Lorg/xbill/DNS/RecordTest;->assertEquals(II)V

    .line 646
    return-void
.end method

.method public test_hashCode()V
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 724
    const-string v0, "My.N."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 725
    .local v0, "n":Lorg/xbill/DNS/Name;
    const-string v1, "my.n."

    invoke-static {v1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v19

    .line 726
    .local v19, "n2":Lorg/xbill/DNS/Name;
    const-string v1, "My.M."

    invoke-static {v1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v20

    .line 727
    .local v20, "m":Lorg/xbill/DNS/Name;
    const/4 v1, 0x4

    new-array v6, v1, [B

    fill-array-data v6, :array_b6

    .line 728
    .local v6, "d1":[B
    new-array v1, v1, [B

    fill-array-data v1, :array_bc

    move-object/from16 v18, v1

    .line 730
    .local v18, "d2":[B
    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/32 v4, 0xabcde9

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJ[B)Lorg/xbill/DNS/Record;

    move-result-object v1

    .line 733
    .local v1, "r1":Lorg/xbill/DNS/Record;
    const/4 v8, 0x1

    const/4 v9, 0x1

    const-wide/32 v10, 0xabcde9

    move-object v7, v0

    move-object v12, v6

    invoke-static/range {v7 .. v12}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJ[B)Lorg/xbill/DNS/Record;

    move-result-object v2

    .line 734
    .local v2, "r2":Lorg/xbill/DNS/Record;
    invoke-virtual {v1}, Lorg/xbill/DNS/Record;->hashCode()I

    move-result v3

    invoke-virtual {v2}, Lorg/xbill/DNS/Record;->hashCode()I

    move-result v4

    invoke-static {v3, v4}, Lorg/xbill/DNS/RecordTest;->assertEquals(II)V

    .line 737
    move-object/from16 v7, v19

    invoke-static/range {v7 .. v12}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJ[B)Lorg/xbill/DNS/Record;

    move-result-object v2

    .line 738
    invoke-virtual {v1}, Lorg/xbill/DNS/Record;->hashCode()I

    move-result v3

    invoke-virtual {v2}, Lorg/xbill/DNS/Record;->hashCode()I

    move-result v4

    invoke-static {v3, v4}, Lorg/xbill/DNS/RecordTest;->assertEquals(II)V

    .line 741
    move-object/from16 v7, v20

    invoke-static/range {v7 .. v12}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJ[B)Lorg/xbill/DNS/Record;

    move-result-object v2

    .line 742
    invoke-virtual {v1}, Lorg/xbill/DNS/Record;->hashCode()I

    move-result v3

    invoke-virtual {v2}, Lorg/xbill/DNS/Record;->hashCode()I

    move-result v4

    const/4 v5, 0x0

    const/16 v21, 0x1

    if-ne v3, v4, :cond_65

    const/4 v3, 0x1

    goto :goto_66

    :cond_65
    const/4 v3, 0x0

    :goto_66
    invoke-static {v3}, Lorg/xbill/DNS/RecordTest;->assertFalse(Z)V

    .line 745
    const/4 v8, 0x1

    const/4 v9, 0x3

    const-wide/32 v10, 0xabcde9

    move-object v7, v0

    move-object v12, v6

    invoke-static/range {v7 .. v12}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJ[B)Lorg/xbill/DNS/Record;

    move-result-object v2

    .line 746
    invoke-virtual {v1}, Lorg/xbill/DNS/Record;->hashCode()I

    move-result v3

    invoke-virtual {v2}, Lorg/xbill/DNS/Record;->hashCode()I

    move-result v4

    if-ne v3, v4, :cond_80

    const/4 v3, 0x1

    goto :goto_81

    :cond_80
    const/4 v3, 0x0

    :goto_81
    invoke-static {v3}, Lorg/xbill/DNS/RecordTest;->assertFalse(Z)V

    .line 749
    const/4 v8, 0x1

    const/4 v9, 0x1

    const-wide/32 v10, 0xabcde

    move-object v7, v0

    move-object v12, v6

    invoke-static/range {v7 .. v12}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJ[B)Lorg/xbill/DNS/Record;

    move-result-object v2

    .line 750
    invoke-virtual {v1}, Lorg/xbill/DNS/Record;->hashCode()I

    move-result v3

    invoke-virtual {v2}, Lorg/xbill/DNS/Record;->hashCode()I

    move-result v4

    invoke-static {v3, v4}, Lorg/xbill/DNS/RecordTest;->assertEquals(II)V

    .line 753
    const/4 v14, 0x1

    const/4 v15, 0x1

    const-wide/32 v16, 0xabcde9

    move-object v13, v0

    invoke-static/range {v13 .. v18}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJ[B)Lorg/xbill/DNS/Record;

    move-result-object v2

    .line 754
    invoke-virtual {v1}, Lorg/xbill/DNS/Record;->hashCode()I

    move-result v3

    invoke-virtual {v2}, Lorg/xbill/DNS/Record;->hashCode()I

    move-result v4

    if-ne v3, v4, :cond_af

    goto :goto_b1

    :cond_af
    const/16 v21, 0x0

    :goto_b1
    invoke-static/range {v21 .. v21}, Lorg/xbill/DNS/RecordTest;->assertFalse(Z)V

    .line 755
    return-void

    nop

    :array_b6
    .array-data 1
        0x17t
        0xct
        0x9t
        -0x7ft
    .end array-data

    :array_bc
    .array-data 1
        -0x24t
        0x1t
        -0x7dt
        -0x2ct
    .end array-data
.end method

.method public test_newRecord_3arg()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 153
    const-string v0, "my.name."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 154
    .local v0, "n":Lorg/xbill/DNS/Name;
    const-string v1, "my.relative.name"

    invoke-static {v1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v1

    .line 155
    .local v1, "r":Lorg/xbill/DNS/Name;
    const/4 v2, 0x1

    .line 156
    .local v2, "t":I
    const/4 v3, 0x1

    .line 158
    .local v3, "d":I
    invoke-static {v0, v2, v3}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/Record;

    move-result-object v4

    .line 159
    .local v4, "rec":Lorg/xbill/DNS/Record;
    instance-of v5, v4, Lorg/xbill/DNS/EmptyRecord;

    invoke-static {v5}, Lorg/xbill/DNS/RecordTest;->assertTrue(Z)V

    .line 160
    invoke-virtual {v4}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v5

    invoke-static {v0, v5}, Lorg/xbill/DNS/RecordTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 161
    invoke-virtual {v4}, Lorg/xbill/DNS/Record;->getType()I

    move-result v5

    invoke-static {v2, v5}, Lorg/xbill/DNS/RecordTest;->assertEquals(II)V

    .line 162
    invoke-virtual {v4}, Lorg/xbill/DNS/Record;->getDClass()I

    move-result v5

    invoke-static {v3, v5}, Lorg/xbill/DNS/RecordTest;->assertEquals(II)V

    .line 163
    invoke-virtual {v4}, Lorg/xbill/DNS/Record;->getTTL()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    invoke-static {v7, v8, v5, v6}, Lorg/xbill/DNS/RecordTest;->assertEquals(JJ)V

    .line 166
    :try_start_35
    invoke-static {v1, v2, v3}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/Record;

    .line 167
    const-string v5, "RelativeNameException not thrown"

    invoke-static {v5}, Lorg/xbill/DNS/RecordTest;->fail(Ljava/lang/String;)V
    :try_end_3d
    .catch Lorg/xbill/DNS/RelativeNameException; {:try_start_35 .. :try_end_3d} :catch_3e

    .line 169
    goto :goto_3f

    :catch_3e
    move-exception v5

    .line 170
    :goto_3f
    return-void
.end method

.method public test_newRecord_4arg()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 174
    const-string v0, "my.name."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 175
    .local v0, "n":Lorg/xbill/DNS/Name;
    const-string v1, "my.relative.name"

    invoke-static {v1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v1

    .line 176
    .local v1, "r":Lorg/xbill/DNS/Name;
    const/4 v2, 0x1

    .line 177
    .local v2, "t":I
    const/4 v3, 0x1

    .line 178
    .local v3, "d":I
    const v4, 0xdbe8

    .line 180
    .local v4, "ttl":I
    int-to-long v5, v4

    invoke-static {v0, v2, v3, v5, v6}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJ)Lorg/xbill/DNS/Record;

    move-result-object v5

    .line 181
    .local v5, "rec":Lorg/xbill/DNS/Record;
    instance-of v6, v5, Lorg/xbill/DNS/EmptyRecord;

    invoke-static {v6}, Lorg/xbill/DNS/RecordTest;->assertTrue(Z)V

    .line 182
    invoke-virtual {v5}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v6

    invoke-static {v0, v6}, Lorg/xbill/DNS/RecordTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 183
    invoke-virtual {v5}, Lorg/xbill/DNS/Record;->getType()I

    move-result v6

    invoke-static {v2, v6}, Lorg/xbill/DNS/RecordTest;->assertEquals(II)V

    .line 184
    invoke-virtual {v5}, Lorg/xbill/DNS/Record;->getDClass()I

    move-result v6

    invoke-static {v3, v6}, Lorg/xbill/DNS/RecordTest;->assertEquals(II)V

    .line 185
    int-to-long v6, v4

    invoke-virtual {v5}, Lorg/xbill/DNS/Record;->getTTL()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Lorg/xbill/DNS/RecordTest;->assertEquals(JJ)V

    .line 188
    int-to-long v6, v4

    :try_start_39
    invoke-static {v1, v2, v3, v6, v7}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJ)Lorg/xbill/DNS/Record;

    .line 189
    const-string v6, "RelativeNameException not thrown"

    invoke-static {v6}, Lorg/xbill/DNS/RecordTest;->fail(Ljava/lang/String;)V
    :try_end_41
    .catch Lorg/xbill/DNS/RelativeNameException; {:try_start_39 .. :try_end_41} :catch_42

    .line 191
    goto :goto_43

    :catch_42
    move-exception v6

    .line 192
    :goto_43
    return-void
.end method

.method public test_newRecord_5arg()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 197
    const-string v0, "my.name."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 198
    .local v0, "n":Lorg/xbill/DNS/Name;
    const/4 v7, 0x1

    .line 199
    .local v7, "t":I
    const/4 v8, 0x1

    .line 200
    .local v8, "d":I
    const v9, 0xdbe8

    .line 201
    .local v9, "ttl":I
    const/4 v1, 0x4

    new-array v6, v1, [B

    fill-array-data v6, :array_4c

    .line 202
    .local v6, "data":[B
    const-string v1, "123.232.0.255"

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v10

    .line 204
    .local v10, "exp":Ljava/net/InetAddress;
    int-to-long v4, v9

    move-object v1, v0

    move v2, v7

    move v3, v8

    invoke-static/range {v1 .. v6}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJ[B)Lorg/xbill/DNS/Record;

    move-result-object v1

    .line 205
    .local v1, "rec":Lorg/xbill/DNS/Record;
    instance-of v2, v1, Lorg/xbill/DNS/ARecord;

    invoke-static {v2}, Lorg/xbill/DNS/RecordTest;->assertTrue(Z)V

    .line 206
    invoke-virtual {v1}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/xbill/DNS/RecordTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 207
    invoke-virtual {v1}, Lorg/xbill/DNS/Record;->getType()I

    move-result v2

    invoke-static {v7, v2}, Lorg/xbill/DNS/RecordTest;->assertEquals(II)V

    .line 208
    invoke-virtual {v1}, Lorg/xbill/DNS/Record;->getDClass()I

    move-result v2

    invoke-static {v8, v2}, Lorg/xbill/DNS/RecordTest;->assertEquals(II)V

    .line 209
    int-to-long v2, v9

    invoke-virtual {v1}, Lorg/xbill/DNS/Record;->getTTL()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/xbill/DNS/RecordTest;->assertEquals(JJ)V

    .line 210
    move-object v2, v1

    check-cast v2, Lorg/xbill/DNS/ARecord;

    invoke-virtual {v2}, Lorg/xbill/DNS/ARecord;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-static {v10, v2}, Lorg/xbill/DNS/RecordTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 211
    return-void

    :array_4c
    .array-data 1
        0x7bt
        -0x18t
        0x0t
        -0x1t
    .end array-data
.end method

.method public test_newRecord_6arg()V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 216
    const-string v0, "my.name."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 217
    .local v0, "n":Lorg/xbill/DNS/Name;
    const/4 v8, 0x1

    .line 218
    .local v8, "t":I
    const/4 v9, 0x1

    .line 219
    .local v9, "d":I
    const v10, 0xdbe8

    .line 220
    .local v10, "ttl":I
    const/4 v1, 0x4

    new-array v1, v1, [B

    fill-array-data v1, :array_b8

    move-object v11, v1

    .line 221
    .local v11, "data":[B
    const-string v1, "123.232.0.255"

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v12

    .line 223
    .local v12, "exp":Ljava/net/InetAddress;
    int-to-long v4, v10

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    move v2, v8

    move v3, v9

    invoke-static/range {v1 .. v7}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJI[B)Lorg/xbill/DNS/Record;

    move-result-object v13

    .line 224
    .local v13, "rec":Lorg/xbill/DNS/Record;
    instance-of v1, v13, Lorg/xbill/DNS/EmptyRecord;

    invoke-static {v1}, Lorg/xbill/DNS/RecordTest;->assertTrue(Z)V

    .line 225
    invoke-virtual {v13}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/xbill/DNS/RecordTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 226
    invoke-virtual {v13}, Lorg/xbill/DNS/Record;->getType()I

    move-result v1

    invoke-static {v8, v1}, Lorg/xbill/DNS/RecordTest;->assertEquals(II)V

    .line 227
    invoke-virtual {v13}, Lorg/xbill/DNS/Record;->getDClass()I

    move-result v1

    invoke-static {v9, v1}, Lorg/xbill/DNS/RecordTest;->assertEquals(II)V

    .line 228
    int-to-long v1, v10

    invoke-virtual {v13}, Lorg/xbill/DNS/Record;->getTTL()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lorg/xbill/DNS/RecordTest;->assertEquals(JJ)V

    .line 230
    int-to-long v4, v10

    array-length v6, v11

    move-object v1, v0

    move v2, v8

    move v3, v9

    move-object v7, v11

    invoke-static/range {v1 .. v7}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJI[B)Lorg/xbill/DNS/Record;

    move-result-object v13

    .line 231
    instance-of v1, v13, Lorg/xbill/DNS/ARecord;

    invoke-static {v1}, Lorg/xbill/DNS/RecordTest;->assertTrue(Z)V

    .line 232
    invoke-virtual {v13}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/xbill/DNS/RecordTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 233
    invoke-virtual {v13}, Lorg/xbill/DNS/Record;->getType()I

    move-result v1

    invoke-static {v8, v1}, Lorg/xbill/DNS/RecordTest;->assertEquals(II)V

    .line 234
    invoke-virtual {v13}, Lorg/xbill/DNS/Record;->getDClass()I

    move-result v1

    invoke-static {v9, v1}, Lorg/xbill/DNS/RecordTest;->assertEquals(II)V

    .line 235
    int-to-long v1, v10

    invoke-virtual {v13}, Lorg/xbill/DNS/Record;->getTTL()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lorg/xbill/DNS/RecordTest;->assertEquals(JJ)V

    .line 236
    move-object v1, v13

    check-cast v1, Lorg/xbill/DNS/ARecord;

    invoke-virtual {v1}, Lorg/xbill/DNS/ARecord;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-static {v12, v1}, Lorg/xbill/DNS/RecordTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 238
    int-to-long v4, v10

    array-length v6, v11

    const/16 v2, 0x20

    move-object v1, v0

    move v3, v9

    invoke-static/range {v1 .. v7}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJI[B)Lorg/xbill/DNS/Record;

    move-result-object v1

    .line 239
    .end local v13    # "rec":Lorg/xbill/DNS/Record;
    .local v1, "rec":Lorg/xbill/DNS/Record;
    instance-of v2, v1, Lorg/xbill/DNS/UNKRecord;

    invoke-static {v2}, Lorg/xbill/DNS/RecordTest;->assertTrue(Z)V

    .line 240
    invoke-virtual {v1}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/xbill/DNS/RecordTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 241
    invoke-virtual {v1}, Lorg/xbill/DNS/Record;->getType()I

    move-result v2

    const/16 v3, 0x20

    invoke-static {v3, v2}, Lorg/xbill/DNS/RecordTest;->assertEquals(II)V

    .line 242
    invoke-virtual {v1}, Lorg/xbill/DNS/Record;->getDClass()I

    move-result v2

    invoke-static {v9, v2}, Lorg/xbill/DNS/RecordTest;->assertEquals(II)V

    .line 243
    int-to-long v2, v10

    invoke-virtual {v1}, Lorg/xbill/DNS/Record;->getTTL()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/xbill/DNS/RecordTest;->assertEquals(JJ)V

    .line 244
    move-object v2, v1

    check-cast v2, Lorg/xbill/DNS/UNKRecord;

    invoke-virtual {v2}, Lorg/xbill/DNS/UNKRecord;->getData()[B

    move-result-object v2

    invoke-static {v11, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/RecordTest;->assertTrue(Z)V

    .line 245
    return-void

    nop

    :array_b8
    .array-data 1
        0x7bt
        -0x18t
        0x0t
        -0x1t
    .end array-data
.end method

.method public test_newRecord_6arg_invalid()V
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 249
    const-string v0, "my.name."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v8

    .line 250
    .local v8, "n":Lorg/xbill/DNS/Name;
    const-string v0, "my.relative.name"

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v9

    .line 251
    .local v9, "r":Lorg/xbill/DNS/Name;
    const/4 v10, 0x1

    .line 252
    .local v10, "t":I
    const/4 v11, 0x1

    .line 253
    .local v11, "d":I
    const v12, 0xdbe8

    .line 254
    .local v12, "ttl":I
    const/4 v0, 0x4

    new-array v1, v0, [B

    fill-array-data v1, :array_74

    move-object v13, v1

    .line 256
    .local v13, "data":[B
    int-to-long v4, v12

    const/4 v14, 0x0

    new-array v7, v14, [B

    const/4 v6, 0x0

    move-object v1, v8

    move v2, v10

    move v3, v11

    invoke-static/range {v1 .. v7}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJI[B)Lorg/xbill/DNS/Record;

    move-result-object v1

    invoke-static {v1}, Lorg/xbill/DNS/RecordTest;->assertNull(Ljava/lang/Object;)V

    .line 257
    int-to-long v4, v12

    new-array v7, v14, [B

    const/4 v6, 0x1

    move-object v1, v8

    invoke-static/range {v1 .. v7}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJI[B)Lorg/xbill/DNS/Record;

    move-result-object v1

    invoke-static {v1}, Lorg/xbill/DNS/RecordTest;->assertNull(Ljava/lang/Object;)V

    .line 258
    int-to-long v4, v12

    array-length v1, v13

    const/4 v15, 0x1

    add-int/lit8 v6, v1, 0x1

    move-object v1, v8

    move-object v7, v13

    invoke-static/range {v1 .. v7}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJI[B)Lorg/xbill/DNS/Record;

    move-result-object v1

    invoke-static {v1}, Lorg/xbill/DNS/RecordTest;->assertNull(Ljava/lang/Object;)V

    .line 259
    int-to-long v4, v12

    const/4 v1, 0x5

    new-array v7, v1, [B

    aget-byte v1, v13, v14

    aput-byte v1, v7, v14

    aget-byte v1, v13, v15

    aput-byte v1, v7, v15

    const/4 v1, 0x2

    aget-byte v2, v13, v1

    aput-byte v2, v7, v1

    const/4 v1, 0x3

    aget-byte v2, v13, v1

    aput-byte v2, v7, v1

    aput-byte v14, v7, v0

    const/4 v6, 0x5

    move-object v1, v8

    move v2, v10

    invoke-static/range {v1 .. v7}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJI[B)Lorg/xbill/DNS/Record;

    move-result-object v0

    invoke-static {v0}, Lorg/xbill/DNS/RecordTest;->assertNull(Ljava/lang/Object;)V

    .line 261
    int-to-long v4, v12

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v9

    move v2, v10

    move v3, v11

    :try_start_69
    invoke-static/range {v1 .. v7}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJI[B)Lorg/xbill/DNS/Record;

    .line 262
    const-string v0, "RelativeNameException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/RecordTest;->fail(Ljava/lang/String;)V
    :try_end_71
    .catch Lorg/xbill/DNS/RelativeNameException; {:try_start_69 .. :try_end_71} :catch_72

    .line 264
    goto :goto_73

    :catch_72
    move-exception v0

    .line 266
    :goto_73
    return-void

    :array_74
    .array-data 1
        0x7bt
        -0x18t
        0x0t
        -0x1t
    .end array-data
.end method

.method public test_rdataToString()V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xbill/DNS/TextParseException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 448
    const-string v0, "My.Name."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 449
    .local v0, "n":Lorg/xbill/DNS/Name;
    const-string v1, "My.Second.Name."

    invoke-static {v1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v8

    .line 450
    .local v8, "n2":Lorg/xbill/DNS/Name;
    const/4 v9, 0x2

    .line 451
    .local v9, "t":I
    const/4 v10, 0x1

    .line 452
    .local v10, "d":I
    const v11, 0xabe99

    .line 453
    .local v11, "ttl":I
    new-instance v1, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v1}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    move-object v12, v1

    .line 454
    .local v12, "out":Lorg/xbill/DNS/DNSOutput;
    const/4 v1, 0x0

    invoke-virtual {v8, v12, v1}, Lorg/xbill/DNS/Name;->toWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;)V

    .line 455
    invoke-virtual {v12}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v13

    .line 457
    .local v13, "data":[B
    int-to-long v4, v11

    array-length v6, v13

    move-object v1, v0

    move v2, v9

    move v3, v10

    move-object v7, v13

    invoke-static/range {v1 .. v7}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJI[B)Lorg/xbill/DNS/Record;

    move-result-object v1

    .line 458
    .local v1, "rec":Lorg/xbill/DNS/Record;
    instance-of v2, v1, Lorg/xbill/DNS/NSRecord;

    invoke-static {v2}, Lorg/xbill/DNS/RecordTest;->assertTrue(Z)V

    .line 459
    invoke-virtual {v1}, Lorg/xbill/DNS/Record;->rrToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/xbill/DNS/Record;->rdataToString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/xbill/DNS/RecordTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    return-void
.end method

.method public test_rdataToWireCanonical()V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xbill/DNS/TextParseException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 422
    const-string v0, "My.Name."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 423
    .local v0, "n":Lorg/xbill/DNS/Name;
    const-string v1, "My.Second.Name."

    invoke-static {v1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v8

    .line 424
    .local v8, "n2":Lorg/xbill/DNS/Name;
    const/4 v9, 0x2

    .line 425
    .local v9, "t":I
    const/4 v10, 0x1

    .line 426
    .local v10, "d":I
    const v11, 0xabe99

    .line 427
    .local v11, "ttl":I
    new-instance v1, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v1}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 428
    .local v1, "out":Lorg/xbill/DNS/DNSOutput;
    const/4 v2, 0x0

    invoke-virtual {v8, v1, v2}, Lorg/xbill/DNS/Name;->toWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;)V

    .line 429
    invoke-virtual {v1}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v12

    .line 431
    .local v12, "data":[B
    new-instance v2, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v2}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    move-object v13, v2

    .line 432
    .end local v1    # "out":Lorg/xbill/DNS/DNSOutput;
    .local v13, "out":Lorg/xbill/DNS/DNSOutput;
    invoke-virtual {v8, v13}, Lorg/xbill/DNS/Name;->toWireCanonical(Lorg/xbill/DNS/DNSOutput;)V

    .line 433
    invoke-virtual {v13}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v14

    .line 435
    .local v14, "exp":[B
    int-to-long v4, v11

    array-length v6, v12

    move-object v1, v0

    move v2, v9

    move v3, v10

    move-object v7, v12

    invoke-static/range {v1 .. v7}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJI[B)Lorg/xbill/DNS/Record;

    move-result-object v1

    .line 436
    .local v1, "rec":Lorg/xbill/DNS/Record;
    instance-of v2, v1, Lorg/xbill/DNS/NSRecord;

    invoke-static {v2}, Lorg/xbill/DNS/RecordTest;->assertTrue(Z)V

    .line 438
    invoke-virtual {v1}, Lorg/xbill/DNS/Record;->rdataToWireCanonical()[B

    move-result-object v2

    .line 440
    .local v2, "after":[B
    invoke-static {v14, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    invoke-static {v3}, Lorg/xbill/DNS/RecordTest;->assertTrue(Z)V

    .line 441
    return-void
.end method

.method public test_sameRRset()V
    .registers 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 650
    const-string v0, "My.N."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 651
    .local v0, "n":Lorg/xbill/DNS/Name;
    const-string v1, "My.M."

    invoke-static {v1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v15

    .line 653
    .local v15, "m":Lorg/xbill/DNS/Name;
    const-wide/16 v13, 0x0

    const/4 v12, 0x1

    invoke-static {v0, v12, v12, v13, v14}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJ)Lorg/xbill/DNS/Record;

    move-result-object v11

    .line 654
    .local v11, "r1":Lorg/xbill/DNS/Record;
    new-instance v16, Lorg/xbill/DNS/RRSIGRecord;

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    new-instance v17, Ljava/util/Date;

    invoke-direct/range {v17 .. v17}, Ljava/util/Date;-><init>()V

    const/4 v8, 0x0

    new-array v9, v8, [B

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const-wide/16 v18, 0x0

    const/16 v20, 0xa

    move-object/from16 v1, v16

    move-object v2, v0

    move-object/from16 v21, v9

    move-wide/from16 v8, v18

    move-object/from16 v23, v11

    .end local v11    # "r1":Lorg/xbill/DNS/Record;
    .local v23, "r1":Lorg/xbill/DNS/Record;
    move-object/from16 v11, v17

    move/from16 v12, v20

    move-object v13, v0

    move-object/from16 v14, v21

    invoke-direct/range {v1 .. v14}, Lorg/xbill/DNS/RRSIGRecord;-><init>(Lorg/xbill/DNS/Name;IJIIJLjava/util/Date;Ljava/util/Date;ILorg/xbill/DNS/Name;[B)V

    move-object/from16 v14, v16

    .line 656
    .local v14, "r2":Lorg/xbill/DNS/Record;
    move-object/from16 v1, v23

    .end local v23    # "r1":Lorg/xbill/DNS/Record;
    .local v1, "r1":Lorg/xbill/DNS/Record;
    invoke-virtual {v1, v14}, Lorg/xbill/DNS/Record;->sameRRset(Lorg/xbill/DNS/Record;)Z

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/RecordTest;->assertTrue(Z)V

    .line 657
    invoke-virtual {v14, v1}, Lorg/xbill/DNS/Record;->sameRRset(Lorg/xbill/DNS/Record;)Z

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/RecordTest;->assertTrue(Z)V

    .line 659
    const/4 v2, 0x4

    const-wide/16 v11, 0x0

    const/4 v13, 0x1

    invoke-static {v0, v13, v2, v11, v12}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJ)Lorg/xbill/DNS/Record;

    move-result-object v10

    .line 660
    .end local v1    # "r1":Lorg/xbill/DNS/Record;
    .local v10, "r1":Lorg/xbill/DNS/Record;
    new-instance v16, Lorg/xbill/DNS/RRSIGRecord;

    new-instance v17, Ljava/util/Date;

    invoke-direct/range {v17 .. v17}, Ljava/util/Date;-><init>()V

    new-instance v18, Ljava/util/Date;

    invoke-direct/range {v18 .. v18}, Ljava/util/Date;-><init>()V

    const/4 v8, 0x0

    new-array v9, v8, [B

    const-wide/16 v19, 0x0

    const/16 v21, 0xa

    move-object/from16 v1, v16

    move-object v2, v0

    move-object/from16 v22, v9

    move-wide/from16 v8, v19

    move-object/from16 v24, v10

    .end local v10    # "r1":Lorg/xbill/DNS/Record;
    .local v24, "r1":Lorg/xbill/DNS/Record;
    move-object/from16 v10, v17

    move-object/from16 v11, v18

    move/from16 v12, v21

    move-object v13, v0

    move-object/from16 v17, v14

    .end local v14    # "r2":Lorg/xbill/DNS/Record;
    .local v17, "r2":Lorg/xbill/DNS/Record;
    move-object/from16 v14, v22

    invoke-direct/range {v1 .. v14}, Lorg/xbill/DNS/RRSIGRecord;-><init>(Lorg/xbill/DNS/Name;IJIIJLjava/util/Date;Ljava/util/Date;ILorg/xbill/DNS/Name;[B)V

    move-object/from16 v14, v16

    .line 662
    .end local v17    # "r2":Lorg/xbill/DNS/Record;
    .restart local v14    # "r2":Lorg/xbill/DNS/Record;
    move-object/from16 v1, v24

    .end local v24    # "r1":Lorg/xbill/DNS/Record;
    .restart local v1    # "r1":Lorg/xbill/DNS/Record;
    invoke-virtual {v1, v14}, Lorg/xbill/DNS/Record;->sameRRset(Lorg/xbill/DNS/Record;)Z

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/RecordTest;->assertFalse(Z)V

    .line 663
    invoke-virtual {v14, v1}, Lorg/xbill/DNS/Record;->sameRRset(Lorg/xbill/DNS/Record;)Z

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/RecordTest;->assertFalse(Z)V

    .line 665
    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    invoke-static {v0, v2, v2, v3, v4}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJ)Lorg/xbill/DNS/Record;

    move-result-object v13

    .line 666
    .end local v1    # "r1":Lorg/xbill/DNS/Record;
    .local v13, "r1":Lorg/xbill/DNS/Record;
    new-instance v16, Lorg/xbill/DNS/RRSIGRecord;

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    const/4 v1, 0x0

    new-array v12, v1, [B

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const-wide/16 v8, 0x0

    const/16 v17, 0xa

    move-object/from16 v1, v16

    move-object v2, v15

    move-object/from16 v18, v12

    move/from16 v12, v17

    move-object/from16 v25, v13

    .end local v13    # "r1":Lorg/xbill/DNS/Record;
    .local v25, "r1":Lorg/xbill/DNS/Record;
    move-object v13, v0

    move-object/from16 v17, v14

    .end local v14    # "r2":Lorg/xbill/DNS/Record;
    .restart local v17    # "r2":Lorg/xbill/DNS/Record;
    move-object/from16 v14, v18

    invoke-direct/range {v1 .. v14}, Lorg/xbill/DNS/RRSIGRecord;-><init>(Lorg/xbill/DNS/Name;IJIIJLjava/util/Date;Ljava/util/Date;ILorg/xbill/DNS/Name;[B)V

    .line 668
    .end local v17    # "r2":Lorg/xbill/DNS/Record;
    .local v1, "r2":Lorg/xbill/DNS/Record;
    move-object/from16 v2, v25

    .end local v25    # "r1":Lorg/xbill/DNS/Record;
    .local v2, "r1":Lorg/xbill/DNS/Record;
    invoke-virtual {v2, v1}, Lorg/xbill/DNS/Record;->sameRRset(Lorg/xbill/DNS/Record;)Z

    move-result v3

    invoke-static {v3}, Lorg/xbill/DNS/RecordTest;->assertFalse(Z)V

    .line 669
    invoke-virtual {v1, v2}, Lorg/xbill/DNS/Record;->sameRRset(Lorg/xbill/DNS/Record;)Z

    move-result v3

    invoke-static {v3}, Lorg/xbill/DNS/RecordTest;->assertFalse(Z)V

    .line 670
    return-void
.end method

.method public test_setTTL()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 818
    const-string v0, "My.N."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 819
    .local v0, "n":Lorg/xbill/DNS/Name;
    const/4 v1, 0x4

    new-array v6, v1, [B

    fill-array-data v6, :array_52

    .line 820
    .local v6, "d":[B
    const-string v1, "23.12.9.129"

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v7

    .line 821
    .local v7, "exp":Ljava/net/InetAddress;
    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/32 v4, 0xabcde9

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJ[B)Lorg/xbill/DNS/Record;

    move-result-object v1

    .line 823
    .local v1, "r":Lorg/xbill/DNS/Record;
    invoke-virtual {v1}, Lorg/xbill/DNS/Record;->getTTL()J

    move-result-wide v2

    invoke-static {v4, v5, v2, v3}, Lorg/xbill/DNS/RecordTest;->assertEquals(JJ)V

    .line 825
    const-wide/32 v2, 0x9876

    invoke-virtual {v1, v2, v3}, Lorg/xbill/DNS/Record;->setTTL(J)V

    .line 827
    invoke-virtual {v1}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v4

    invoke-static {v0, v4}, Lorg/xbill/DNS/RecordTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 828
    invoke-virtual {v1}, Lorg/xbill/DNS/Record;->getType()I

    move-result v4

    const/4 v5, 0x1

    invoke-static {v5, v4}, Lorg/xbill/DNS/RecordTest;->assertEquals(II)V

    .line 829
    invoke-virtual {v1}, Lorg/xbill/DNS/Record;->getDClass()I

    move-result v4

    invoke-static {v5, v4}, Lorg/xbill/DNS/RecordTest;->assertEquals(II)V

    .line 830
    invoke-virtual {v1}, Lorg/xbill/DNS/Record;->getTTL()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/xbill/DNS/RecordTest;->assertEquals(JJ)V

    .line 831
    move-object v2, v1

    check-cast v2, Lorg/xbill/DNS/ARecord;

    invoke-virtual {v2}, Lorg/xbill/DNS/ARecord;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-static {v7, v2}, Lorg/xbill/DNS/RecordTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 832
    return-void

    nop

    :array_52
    .array-data 1
        0x17t
        0xct
        0x9t
        -0x7ft
    .end array-data
.end method

.method public test_toString()V
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 464
    const-string v0, "My.N."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 465
    .local v0, "n":Lorg/xbill/DNS/Name;
    const-string v1, "My.Second.Name."

    invoke-static {v1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v8

    .line 466
    .local v8, "n2":Lorg/xbill/DNS/Name;
    const/4 v9, 0x2

    .line 467
    .local v9, "t":I
    const/4 v10, 0x1

    .line 468
    .local v10, "d":I
    const v11, 0xabe99

    .line 469
    .local v11, "ttl":I
    new-instance v1, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v1}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    move-object v12, v1

    .line 470
    .local v12, "o":Lorg/xbill/DNS/DNSOutput;
    const/4 v1, 0x0

    invoke-virtual {v8, v12, v1}, Lorg/xbill/DNS/Name;->toWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;)V

    .line 471
    invoke-virtual {v12}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v13

    .line 473
    .local v13, "data":[B
    int-to-long v4, v11

    array-length v6, v13

    move-object v1, v0

    move v2, v9

    move v3, v10

    move-object v7, v13

    invoke-static/range {v1 .. v7}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJI[B)Lorg/xbill/DNS/Record;

    move-result-object v1

    .line 474
    .local v1, "rec":Lorg/xbill/DNS/Record;
    invoke-virtual {v1}, Lorg/xbill/DNS/Record;->toString()Ljava/lang/String;

    move-result-object v2

    .line 476
    .local v2, "out":Ljava/lang/String;
    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, -0x1

    if-ne v3, v6, :cond_3c

    const/4 v3, 0x1

    goto :goto_3d

    :cond_3c
    const/4 v3, 0x0

    :goto_3d
    invoke-static {v3}, Lorg/xbill/DNS/RecordTest;->assertFalse(Z)V

    .line 477
    invoke-virtual {v8}, Lorg/xbill/DNS/Name;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v6, :cond_4c

    const/4 v3, 0x1

    goto :goto_4d

    :cond_4c
    const/4 v3, 0x0

    :goto_4d
    invoke-static {v3}, Lorg/xbill/DNS/RecordTest;->assertFalse(Z)V

    .line 478
    const-string v3, "NS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v6, :cond_5a

    const/4 v3, 0x1

    goto :goto_5b

    :cond_5a
    const/4 v3, 0x0

    :goto_5b
    invoke-static {v3}, Lorg/xbill/DNS/RecordTest;->assertFalse(Z)V

    .line 479
    const-string v3, "IN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v6, :cond_68

    const/4 v3, 0x1

    goto :goto_69

    :cond_68
    const/4 v3, 0x0

    :goto_69
    invoke-static {v3}, Lorg/xbill/DNS/RecordTest;->assertFalse(Z)V

    .line 480
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v7, ""

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v6, :cond_85

    const/4 v3, 0x1

    goto :goto_86

    :cond_85
    const/4 v3, 0x0

    :goto_86
    invoke-static {v3}, Lorg/xbill/DNS/RecordTest;->assertFalse(Z)V

    .line 482
    const-string v3, "BINDTTL"

    invoke-static {v3}, Lorg/xbill/DNS/Options;->set(Ljava/lang/String;)V

    .line 484
    invoke-virtual {v1}, Lorg/xbill/DNS/Record;->toString()Ljava/lang/String;

    move-result-object v2

    .line 485
    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v6, :cond_9e

    const/4 v3, 0x1

    goto :goto_9f

    :cond_9e
    const/4 v3, 0x0

    :goto_9f
    invoke-static {v3}, Lorg/xbill/DNS/RecordTest;->assertFalse(Z)V

    .line 486
    invoke-virtual {v8}, Lorg/xbill/DNS/Name;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v6, :cond_ae

    const/4 v3, 0x1

    goto :goto_af

    :cond_ae
    const/4 v3, 0x0

    :goto_af
    invoke-static {v3}, Lorg/xbill/DNS/RecordTest;->assertFalse(Z)V

    .line 487
    const-string v3, "NS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v6, :cond_bc

    const/4 v3, 0x1

    goto :goto_bd

    :cond_bc
    const/4 v3, 0x0

    :goto_bd
    invoke-static {v3}, Lorg/xbill/DNS/RecordTest;->assertFalse(Z)V

    .line 488
    const-string v3, "IN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v6, :cond_ca

    const/4 v3, 0x1

    goto :goto_cb

    :cond_ca
    const/4 v3, 0x0

    :goto_cb
    invoke-static {v3}, Lorg/xbill/DNS/RecordTest;->assertFalse(Z)V

    .line 489
    int-to-long v14, v11

    invoke-static {v14, v15}, Lorg/xbill/DNS/TTL;->format(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v6, :cond_db

    const/4 v3, 0x1

    goto :goto_dc

    :cond_db
    const/4 v3, 0x0

    :goto_dc
    invoke-static {v3}, Lorg/xbill/DNS/RecordTest;->assertFalse(Z)V

    .line 491
    const-string v3, "noPrintIN"

    invoke-static {v3}, Lorg/xbill/DNS/Options;->set(Ljava/lang/String;)V

    .line 492
    invoke-virtual {v1}, Lorg/xbill/DNS/Record;->toString()Ljava/lang/String;

    move-result-object v2

    .line 493
    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v6, :cond_f4

    const/4 v3, 0x1

    goto :goto_f5

    :cond_f4
    const/4 v3, 0x0

    :goto_f5
    invoke-static {v3}, Lorg/xbill/DNS/RecordTest;->assertFalse(Z)V

    .line 494
    invoke-virtual {v8}, Lorg/xbill/DNS/Name;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v6, :cond_104

    const/4 v3, 0x1

    goto :goto_105

    :cond_104
    const/4 v3, 0x0

    :goto_105
    invoke-static {v3}, Lorg/xbill/DNS/RecordTest;->assertFalse(Z)V

    .line 495
    const-string v3, "NS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v6, :cond_112

    const/4 v3, 0x1

    goto :goto_113

    :cond_112
    const/4 v3, 0x0

    :goto_113
    invoke-static {v3}, Lorg/xbill/DNS/RecordTest;->assertFalse(Z)V

    .line 496
    const-string v3, "IN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v6, :cond_120

    const/4 v3, 0x1

    goto :goto_121

    :cond_120
    const/4 v3, 0x0

    :goto_121
    invoke-static {v3}, Lorg/xbill/DNS/RecordTest;->assertTrue(Z)V

    .line 497
    int-to-long v14, v11

    invoke-static {v14, v15}, Lorg/xbill/DNS/TTL;->format(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v6, :cond_131

    const/4 v4, 0x1

    nop

    :cond_131
    invoke-static {v4}, Lorg/xbill/DNS/RecordTest;->assertFalse(Z)V

    .line 498
    return-void
.end method

.method public test_toWire()V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xbill/DNS/TextParseException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 344
    const-string v0, "my.name."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 345
    .local v0, "n":Lorg/xbill/DNS/Name;
    const/4 v8, 0x1

    .line 346
    .local v8, "t":I
    const/4 v9, 0x1

    .line 347
    .local v9, "d":I
    const v10, 0xdbe8

    .line 348
    .local v10, "ttl":I
    const/4 v1, 0x4

    new-array v1, v1, [B

    fill-array-data v1, :array_84

    move-object v11, v1

    .line 351
    .local v11, "data":[B
    new-instance v1, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v1}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    move-object v12, v1

    .line 352
    .local v12, "out":Lorg/xbill/DNS/DNSOutput;
    const/4 v13, 0x0

    invoke-virtual {v0, v12, v13}, Lorg/xbill/DNS/Name;->toWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;)V

    .line 353
    invoke-virtual {v12, v8}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 354
    invoke-virtual {v12, v9}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 355
    int-to-long v1, v10

    invoke-virtual {v12, v1, v2}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 356
    array-length v1, v11

    invoke-virtual {v12, v1}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 357
    invoke-virtual {v12, v11}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 359
    invoke-virtual {v12}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v14

    .line 361
    .local v14, "exp":[B
    int-to-long v4, v10

    array-length v6, v11

    move-object v1, v0

    move v2, v8

    move v3, v9

    move-object v7, v11

    invoke-static/range {v1 .. v7}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJI[B)Lorg/xbill/DNS/Record;

    move-result-object v1

    .line 363
    .local v1, "rec":Lorg/xbill/DNS/Record;
    new-instance v2, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v2}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 365
    .end local v12    # "out":Lorg/xbill/DNS/DNSOutput;
    .local v2, "out":Lorg/xbill/DNS/DNSOutput;
    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v13}, Lorg/xbill/DNS/Record;->toWire(Lorg/xbill/DNS/DNSOutput;ILorg/xbill/DNS/Compression;)V

    .line 367
    invoke-virtual {v2}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v4

    .line 369
    .local v4, "after":[B
    invoke-static {v14, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    invoke-static {v5}, Lorg/xbill/DNS/RecordTest;->assertTrue(Z)V

    .line 372
    invoke-virtual {v1, v3}, Lorg/xbill/DNS/Record;->toWire(I)[B

    move-result-object v3

    .line 373
    .end local v4    # "after":[B
    .local v3, "after":[B
    invoke-static {v14, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    invoke-static {v4}, Lorg/xbill/DNS/RecordTest;->assertTrue(Z)V

    .line 376
    new-instance v4, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v4}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    move-object v2, v4

    .line 377
    invoke-virtual {v0, v2, v13}, Lorg/xbill/DNS/Name;->toWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;)V

    .line 378
    invoke-virtual {v2, v8}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 379
    invoke-virtual {v2, v9}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 381
    invoke-virtual {v2}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v4

    .line 382
    .end local v14    # "exp":[B
    .local v4, "exp":[B
    new-instance v5, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v5}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    move-object v2, v5

    .line 383
    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v13}, Lorg/xbill/DNS/Record;->toWire(Lorg/xbill/DNS/DNSOutput;ILorg/xbill/DNS/Compression;)V

    .line 384
    invoke-virtual {v2}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v3

    .line 386
    invoke-static {v4, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    invoke-static {v5}, Lorg/xbill/DNS/RecordTest;->assertTrue(Z)V

    .line 388
    return-void

    nop

    :array_84
    .array-data 1
        0x7bt
        -0x18t
        0x0t
        -0x1t
    .end array-data
.end method

.method public test_toWireCanonical()V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xbill/DNS/TextParseException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 395
    const-string v0, "My.Name."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 396
    .local v0, "n":Lorg/xbill/DNS/Name;
    const/4 v8, 0x1

    .line 397
    .local v8, "t":I
    const/4 v9, 0x1

    .line 398
    .local v9, "d":I
    const v10, 0xdbe8

    .line 399
    .local v10, "ttl":I
    const/4 v1, 0x4

    new-array v1, v1, [B

    fill-array-data v1, :array_46

    move-object v11, v1

    .line 401
    .local v11, "data":[B
    new-instance v1, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v1}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    move-object v12, v1

    .line 402
    .local v12, "out":Lorg/xbill/DNS/DNSOutput;
    invoke-virtual {v0, v12}, Lorg/xbill/DNS/Name;->toWireCanonical(Lorg/xbill/DNS/DNSOutput;)V

    .line 403
    invoke-virtual {v12, v8}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 404
    invoke-virtual {v12, v9}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 405
    int-to-long v1, v10

    invoke-virtual {v12, v1, v2}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 406
    array-length v1, v11

    invoke-virtual {v12, v1}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 407
    invoke-virtual {v12, v11}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 409
    invoke-virtual {v12}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v13

    .line 411
    .local v13, "exp":[B
    int-to-long v4, v10

    array-length v6, v11

    move-object v1, v0

    move v2, v8

    move v3, v9

    move-object v7, v11

    invoke-static/range {v1 .. v7}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJI[B)Lorg/xbill/DNS/Record;

    move-result-object v1

    .line 413
    .local v1, "rec":Lorg/xbill/DNS/Record;
    invoke-virtual {v1}, Lorg/xbill/DNS/Record;->toWireCanonical()[B

    move-result-object v2

    .line 414
    .local v2, "after":[B
    invoke-static {v13, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    invoke-static {v3}, Lorg/xbill/DNS/RecordTest;->assertTrue(Z)V

    .line 415
    return-void

    :array_46
    .array-data 1
        0x7bt
        -0x18t
        0x0t
        -0x1t
    .end array-data
.end method

.method public test_unknownToString()V
    .registers 7

    .line 558
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_3a

    .line 560
    .local v0, "data":[B
    invoke-static {v0}, Lorg/xbill/DNS/RecordTest$SubRecord;->unknownToString([B)Ljava/lang/String;

    move-result-object v1

    .line 562
    .local v1, "out":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-ne v2, v5, :cond_28

    const/4 v2, 0x1

    goto :goto_29

    :cond_28
    const/4 v2, 0x0

    :goto_29
    invoke-static {v2}, Lorg/xbill/DNS/RecordTest;->assertFalse(Z)V

    .line 563
    const-string v2, "123456789ABCDEFF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v5, :cond_36

    const/4 v3, 0x1

    nop

    :cond_36
    invoke-static {v3}, Lorg/xbill/DNS/RecordTest;->assertFalse(Z)V

    .line 564
    return-void

    :array_3a
    .array-data 1
        0x12t
        0x34t
        0x56t
        0x78t
        -0x66t
        -0x44t
        -0x22t
        -0x1t
    .end array-data
.end method

.method public test_withDClass()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 802
    const-string v0, "My.N."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 803
    .local v0, "n":Lorg/xbill/DNS/Name;
    const/4 v7, 0x4

    new-array v6, v7, [B

    fill-array-data v6, :array_4c

    .line 804
    .local v6, "d":[B
    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/32 v4, 0xabcde9

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJ[B)Lorg/xbill/DNS/Record;

    move-result-object v1

    .line 806
    .local v1, "r":Lorg/xbill/DNS/Record;
    const-wide/32 v2, 0x9876

    invoke-virtual {v1, v7, v2, v3}, Lorg/xbill/DNS/Record;->withDClass(IJ)Lorg/xbill/DNS/Record;

    move-result-object v4

    .line 808
    .local v4, "r1":Lorg/xbill/DNS/Record;
    invoke-virtual {v4}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v5

    invoke-static {v0, v5}, Lorg/xbill/DNS/RecordTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 809
    invoke-virtual {v4}, Lorg/xbill/DNS/Record;->getType()I

    move-result v5

    const/4 v8, 0x1

    invoke-static {v8, v5}, Lorg/xbill/DNS/RecordTest;->assertEquals(II)V

    .line 810
    invoke-virtual {v4}, Lorg/xbill/DNS/Record;->getDClass()I

    move-result v5

    invoke-static {v7, v5}, Lorg/xbill/DNS/RecordTest;->assertEquals(II)V

    .line 811
    invoke-virtual {v4}, Lorg/xbill/DNS/Record;->getTTL()J

    move-result-wide v7

    invoke-static {v2, v3, v7, v8}, Lorg/xbill/DNS/RecordTest;->assertEquals(JJ)V

    .line 812
    move-object v2, v1

    check-cast v2, Lorg/xbill/DNS/ARecord;

    invoke-virtual {v2}, Lorg/xbill/DNS/ARecord;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    move-object v3, v4

    check-cast v3, Lorg/xbill/DNS/ARecord;

    invoke-virtual {v3}, Lorg/xbill/DNS/ARecord;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/xbill/DNS/RecordTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 813
    return-void

    :array_4c
    .array-data 1
        0x17t
        0xct
        0x9t
        -0x7ft
    .end array-data
.end method

.method public test_withName()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 779
    const-string v0, "My.N."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 780
    .local v0, "n":Lorg/xbill/DNS/Name;
    const-string v1, "My.M.Name."

    invoke-static {v1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v7

    .line 781
    .local v7, "m":Lorg/xbill/DNS/Name;
    const-string v1, "My.Relative.Name"

    invoke-static {v1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v8

    .line 782
    .local v8, "rel":Lorg/xbill/DNS/Name;
    const/4 v1, 0x4

    new-array v6, v1, [B

    fill-array-data v6, :array_62

    .line 783
    .local v6, "d":[B
    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/32 v4, 0xabcde9

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJ[B)Lorg/xbill/DNS/Record;

    move-result-object v1

    .line 785
    .local v1, "r":Lorg/xbill/DNS/Record;
    invoke-virtual {v1, v7}, Lorg/xbill/DNS/Record;->withName(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Record;

    move-result-object v2

    .line 787
    .local v2, "r1":Lorg/xbill/DNS/Record;
    invoke-virtual {v2}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v3

    invoke-static {v7, v3}, Lorg/xbill/DNS/RecordTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 788
    invoke-virtual {v2}, Lorg/xbill/DNS/Record;->getType()I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v4, v3}, Lorg/xbill/DNS/RecordTest;->assertEquals(II)V

    .line 789
    invoke-virtual {v2}, Lorg/xbill/DNS/Record;->getDClass()I

    move-result v3

    invoke-static {v4, v3}, Lorg/xbill/DNS/RecordTest;->assertEquals(II)V

    .line 790
    invoke-virtual {v2}, Lorg/xbill/DNS/Record;->getTTL()J

    move-result-wide v3

    const-wide/32 v9, 0xabcde9

    invoke-static {v9, v10, v3, v4}, Lorg/xbill/DNS/RecordTest;->assertEquals(JJ)V

    .line 791
    move-object v3, v1

    check-cast v3, Lorg/xbill/DNS/ARecord;

    invoke-virtual {v3}, Lorg/xbill/DNS/ARecord;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    move-object v4, v2

    check-cast v4, Lorg/xbill/DNS/ARecord;

    invoke-virtual {v4}, Lorg/xbill/DNS/ARecord;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/xbill/DNS/RecordTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 794
    :try_start_57
    invoke-virtual {v1, v8}, Lorg/xbill/DNS/Record;->withName(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Record;

    .line 795
    const-string v3, "RelativeNameException not thrown"

    invoke-static {v3}, Lorg/xbill/DNS/RecordTest;->fail(Ljava/lang/String;)V
    :try_end_5f
    .catch Lorg/xbill/DNS/RelativeNameException; {:try_start_57 .. :try_end_5f} :catch_60

    .line 797
    goto :goto_61

    :catch_60
    move-exception v3

    .line 798
    :goto_61
    return-void

    :array_62
    .array-data 1
        0x17t
        0xct
        0x9t
        -0x7ft
    .end array-data
.end method
