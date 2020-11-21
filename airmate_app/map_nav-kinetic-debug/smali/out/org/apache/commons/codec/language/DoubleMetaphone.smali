.class public Lorg/apache/commons/codec/language/DoubleMetaphone;
.super Ljava/lang/Object;
.source "DoubleMetaphone.java"

# interfaces
.implements Lorg/apache/commons/codec/StringEncoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    }
.end annotation


# static fields
.field private static final ES_EP_EB_EL_EY_IB_IL_IN_IE_EI_ER:[Ljava/lang/String;

.field private static final L_R_N_M_B_H_F_V_W_SPACE:[Ljava/lang/String;

.field private static final L_T_K_S_N_M_B_Z:[Ljava/lang/String;

.field private static final SILENT_START:[Ljava/lang/String;

.field private static final VOWELS:Ljava/lang/String; = "AEIOUY"


# instance fields
.field protected maxCodeLen:I


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .line 46
    const/4 v0, 0x5

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "GN"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "KN"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "PN"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "WR"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v2, "PS"

    const/4 v7, 0x4

    aput-object v2, v1, v7

    sput-object v1, Lorg/apache/commons/codec/language/DoubleMetaphone;->SILENT_START:[Ljava/lang/String;

    .line 48
    const/16 v1, 0xa

    new-array v2, v1, [Ljava/lang/String;

    const-string v8, "L"

    aput-object v8, v2, v3

    const-string v8, "R"

    aput-object v8, v2, v4

    const-string v8, "N"

    aput-object v8, v2, v5

    const-string v8, "M"

    aput-object v8, v2, v6

    const-string v8, "B"

    aput-object v8, v2, v7

    const-string v8, "H"

    aput-object v8, v2, v0

    const-string v8, "F"

    const/4 v9, 0x6

    aput-object v8, v2, v9

    const-string v8, "V"

    const/4 v10, 0x7

    aput-object v8, v2, v10

    const-string v8, "W"

    const/16 v11, 0x8

    aput-object v8, v2, v11

    const-string v8, " "

    const/16 v12, 0x9

    aput-object v8, v2, v12

    sput-object v2, Lorg/apache/commons/codec/language/DoubleMetaphone;->L_R_N_M_B_H_F_V_W_SPACE:[Ljava/lang/String;

    .line 50
    const/16 v2, 0xb

    new-array v2, v2, [Ljava/lang/String;

    const-string v8, "ES"

    aput-object v8, v2, v3

    const-string v8, "EP"

    aput-object v8, v2, v4

    const-string v8, "EB"

    aput-object v8, v2, v5

    const-string v8, "EL"

    aput-object v8, v2, v6

    const-string v8, "EY"

    aput-object v8, v2, v7

    const-string v8, "IB"

    aput-object v8, v2, v0

    const-string v8, "IL"

    aput-object v8, v2, v9

    const-string v8, "IN"

    aput-object v8, v2, v10

    const-string v8, "IE"

    aput-object v8, v2, v11

    const-string v8, "EI"

    aput-object v8, v2, v12

    const-string v8, "ER"

    aput-object v8, v2, v1

    sput-object v2, Lorg/apache/commons/codec/language/DoubleMetaphone;->ES_EP_EB_EL_EY_IB_IL_IN_IE_EI_ER:[Ljava/lang/String;

    .line 52
    new-array v1, v11, [Ljava/lang/String;

    const-string v2, "L"

    aput-object v2, v1, v3

    const-string v2, "T"

    aput-object v2, v1, v4

    const-string v2, "K"

    aput-object v2, v1, v5

    const-string v2, "S"

    aput-object v2, v1, v6

    const-string v2, "N"

    aput-object v2, v1, v7

    const-string v2, "M"

    aput-object v2, v1, v0

    const-string v0, "B"

    aput-object v0, v1, v9

    const-string v0, "Z"

    aput-object v0, v1, v10

    sput-object v1, Lorg/apache/commons/codec/language/DoubleMetaphone;->L_T_K_S_N_M_B_Z:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x4

    iput v0, p0, Lorg/apache/commons/codec/language/DoubleMetaphone;->maxCodeLen:I

    .line 65
    return-void
.end method

.method private cleanInput(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "input"    # Ljava/lang/String;

    .line 918
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 919
    return-object v0

    .line 921
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 922
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_f

    .line 923
    return-object v0

    .line 925
    :cond_f
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private conditionC0(Ljava/lang/String;I)Z
    .registers 10
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "index"    # I

    .line 809
    const-string v0, "CHIA"

    const/4 v1, 0x4

    invoke-static {p1, p2, v1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    .line 810
    return v1

    .line 811
    :cond_b
    const/4 v0, 0x0

    if-gt p2, v1, :cond_f

    .line 812
    return v0

    .line 813
    :cond_f
    add-int/lit8 v2, p2, -0x2

    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v2

    invoke-direct {p0, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 814
    return v0

    .line 815
    :cond_1c
    add-int/lit8 v2, p2, -0x1

    const/4 v3, 0x3

    const-string v4, "ACH"

    invoke-static {p1, v2, v3, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 816
    return v0

    .line 818
    :cond_28
    add-int/lit8 v2, p2, 0x2

    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v2

    .line 819
    .local v2, "c":C
    const/16 v3, 0x49

    if-eq v2, v3, :cond_36

    const/16 v3, 0x45

    if-ne v2, v3, :cond_43

    :cond_36
    add-int/lit8 v3, p2, -0x2

    const/4 v4, 0x6

    const-string v5, "BACHER"

    const-string v6, "MACHER"

    invoke-static {p1, v3, v4, v5, v6}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_45

    :cond_43
    const/4 v0, 0x1

    nop

    :cond_45
    return v0
.end method

.method private conditionCH0(Ljava/lang/String;I)Z
    .registers 15
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "index"    # I

    .line 828
    const/4 v0, 0x0

    if-eqz p2, :cond_4

    .line 829
    return v0

    .line 830
    :cond_4
    add-int/lit8 v1, p2, 0x1

    const-string v2, "HARAC"

    const-string v3, "HARIS"

    const/4 v4, 0x5

    invoke-static {p1, v1, v4, v2, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_24

    add-int/lit8 v6, p2, 0x1

    const/4 v7, 0x3

    const-string v8, "HOR"

    const-string v9, "HYM"

    const-string v10, "HIA"

    const-string v11, "HEM"

    move-object v5, p1

    invoke-static/range {v5 .. v11}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 832
    return v0

    .line 833
    :cond_24
    const-string v1, "CHORE"

    invoke-static {p1, v0, v4, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 834
    return v0

    .line 836
    :cond_2d
    const/4 v0, 0x1

    return v0
.end method

.method private conditionCH1(Ljava/lang/String;I)Z
    .registers 13
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "index"    # I

    .line 844
    const-string v0, "VAN "

    const-string v1, "VON "

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-static {p1, v2, v3, v0, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_5c

    const/4 v0, 0x3

    const-string v3, "SCH"

    invoke-static {p1, v2, v0, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5c

    add-int/lit8 v4, p2, -0x2

    const/4 v5, 0x6

    const-string v6, "ORCHES"

    const-string v7, "ARCHIT"

    const-string v8, "ORCHID"

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5c

    add-int/lit8 v0, p2, 0x2

    const-string v3, "T"

    const-string v4, "S"

    invoke-static {p1, v0, v1, v3, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5c

    add-int/lit8 v4, p2, -0x1

    const/4 v5, 0x1

    const-string v6, "A"

    const-string v7, "O"

    const-string v8, "U"

    const-string v9, "E"

    move-object v3, p1

    invoke-static/range {v3 .. v9}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_46

    if-nez p2, :cond_5a

    :cond_46
    add-int/lit8 v0, p2, 0x2

    sget-object v3, Lorg/apache/commons/codec/language/DoubleMetaphone;->L_R_N_M_B_H_F_V_W_SPACE:[Ljava/lang/String;

    invoke-static {p1, v0, v1, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5c

    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v1

    if-ne v0, v3, :cond_5a

    goto :goto_5c

    :cond_5a
    const/4 v1, 0x0

    nop

    :cond_5c
    :goto_5c
    return v1
.end method

.method private conditionL0(Ljava/lang/String;I)Z
    .registers 11
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "index"    # I

    .line 856
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    const/4 v1, 0x1

    if-ne p2, v0, :cond_1a

    add-int/lit8 v3, p2, -0x1

    const/4 v4, 0x4

    const-string v5, "ILLO"

    const-string v6, "ILLA"

    const-string v7, "ALLE"

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 858
    return v1

    .line 859
    :cond_1a
    add-int/lit8 v0, p2, -0x1

    const/4 v2, 0x2

    const-string v3, "AS"

    const-string v4, "OS"

    invoke-static {p1, v0, v2, v3, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_36

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    const-string v2, "A"

    const-string v3, "O"

    invoke-static {p1, v0, v1, v2, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    :cond_36
    add-int/lit8 v0, p2, -0x1

    const/4 v2, 0x4

    const-string v3, "ALLE"

    invoke-static {p1, v0, v2, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 862
    return v1

    .line 864
    :cond_42
    const/4 v0, 0x0

    return v0
.end method

.method private conditionM0(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "index"    # I

    .line 872
    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x4d

    if-ne v0, v2, :cond_c

    .line 873
    return v1

    .line 875
    :cond_c
    add-int/lit8 v0, p2, -0x1

    const/4 v2, 0x3

    const-string v3, "UMB"

    invoke-static {p1, v0, v2, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    if-eq v0, v2, :cond_2b

    add-int/lit8 v0, p2, 0x2

    const-string v2, "ER"

    const/4 v3, 0x2

    invoke-static {p1, v0, v3, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    :cond_2b
    goto :goto_2d

    :cond_2c
    const/4 v1, 0x0

    :goto_2d
    return v1
.end method

.method private static contains(Ljava/lang/String;IILjava/lang/String;)Z
    .registers 6
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "length"    # I
    .param p3, "criteria"    # Ljava/lang/String;

    .line 945
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "length"    # I
    .param p3, "criteria1"    # Ljava/lang/String;
    .param p4, "criteria2"    # Ljava/lang/String;

    .line 954
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "length"    # I
    .param p3, "criteria1"    # Ljava/lang/String;
    .param p4, "criteria2"    # Ljava/lang/String;
    .param p5, "criteria3"    # Ljava/lang/String;

    .line 964
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    const/4 v1, 0x2

    aput-object p5, v0, v1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "length"    # I
    .param p3, "criteria1"    # Ljava/lang/String;
    .param p4, "criteria2"    # Ljava/lang/String;
    .param p5, "criteria3"    # Ljava/lang/String;
    .param p6, "criteria4"    # Ljava/lang/String;

    .line 974
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    const/4 v1, 0x2

    aput-object p5, v0, v1

    const/4 v1, 0x3

    aput-object p6, v0, v1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "length"    # I
    .param p3, "criteria1"    # Ljava/lang/String;
    .param p4, "criteria2"    # Ljava/lang/String;
    .param p5, "criteria3"    # Ljava/lang/String;
    .param p6, "criteria4"    # Ljava/lang/String;
    .param p7, "criteria5"    # Ljava/lang/String;

    .line 986
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    const/4 v1, 0x2

    aput-object p5, v0, v1

    const/4 v1, 0x3

    aput-object p6, v0, v1

    const/4 v1, 0x4

    aput-object p7, v0, v1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "length"    # I
    .param p3, "criteria1"    # Ljava/lang/String;
    .param p4, "criteria2"    # Ljava/lang/String;
    .param p5, "criteria3"    # Ljava/lang/String;
    .param p6, "criteria4"    # Ljava/lang/String;
    .param p7, "criteria5"    # Ljava/lang/String;
    .param p8, "criteria6"    # Ljava/lang/String;

    .line 998
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    const/4 v1, 0x2

    aput-object p5, v0, v1

    const/4 v1, 0x3

    aput-object p6, v0, v1

    const/4 v1, 0x4

    aput-object p7, v0, v1

    const/4 v1, 0x5

    aput-object p8, v0, v1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected static contains(Ljava/lang/String;II[Ljava/lang/String;)Z
    .registers 8
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "length"    # I
    .param p3, "criteria"    # [Ljava/lang/String;

    .line 1010
    const/4 v0, 0x0

    .line 1011
    .local v0, "result":Z
    if-ltz p1, :cond_22

    add-int v1, p1, p2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v1, v2, :cond_22

    .line 1012
    add-int v1, p1, p2

    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1014
    .local v1, "target":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    array-length v3, p3

    if-ge v2, v3, :cond_22

    .line 1015
    aget-object v3, p3, v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 1016
    const/4 v0, 0x1

    .line 1017
    goto :goto_22

    .line 1014
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 1021
    .end local v1    # "target":Ljava/lang/String;
    .end local v2    # "i":I
    :cond_22
    :goto_22
    return v0
.end method

.method private handleAEIOUY(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .registers 5
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    .line 271
    if-nez p3, :cond_7

    .line 272
    const/16 v0, 0x41

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 274
    :cond_7
    add-int/lit8 v0, p3, 0x1

    return v0
.end method

.method private handleC(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .registers 20
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    .line 283
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    invoke-direct {v0, v7, v9}, Lorg/apache/commons/codec/language/DoubleMetaphone;->conditionC0(Ljava/lang/String;I)Z

    move-result v1

    const/16 v10, 0x4b

    const/4 v11, 0x2

    if-eqz v1, :cond_18

    .line 284
    invoke-virtual {v8, v10}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 285
    add-int/lit8 v1, v9, 0x2

    goto/16 :goto_fd

    .line 286
    :cond_18
    const/16 v12, 0x53

    if-nez v9, :cond_2c

    const/4 v1, 0x6

    const-string v2, "CAESAR"

    invoke-static {v7, v9, v1, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 287
    invoke-virtual {v8, v12}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 288
    add-int/lit8 v1, v9, 0x2

    goto/16 :goto_fd

    .line 289
    :cond_2c
    const-string v1, "CH"

    invoke-static {v7, v9, v11, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 290
    invoke-direct/range {p0 .. p3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleCH(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v1

    goto/16 :goto_fd

    .line 291
    :cond_3a
    const-string v1, "CZ"

    invoke-static {v7, v9, v11, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v1

    const/16 v13, 0x58

    if-eqz v1, :cond_56

    add-int/lit8 v1, v9, -0x2

    const/4 v2, 0x4

    const-string v3, "WICZ"

    invoke-static {v7, v1, v2, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_56

    .line 294
    invoke-virtual {v8, v12, v13}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    .line 295
    add-int/lit8 v1, v9, 0x2

    goto/16 :goto_fd

    .line 296
    :cond_56
    add-int/lit8 v1, v9, 0x1

    const-string v2, "CIA"

    const/4 v14, 0x3

    invoke-static {v7, v1, v14, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_68

    .line 298
    invoke-virtual {v8, v13}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 299
    add-int/lit8 v1, v9, 0x3

    goto/16 :goto_fd

    .line 300
    :cond_68
    const-string v1, "CC"

    invoke-static {v7, v9, v11, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v1

    const/4 v15, 0x1

    if-eqz v1, :cond_81

    if-ne v9, v15, :cond_7c

    const/4 v1, 0x0

    invoke-virtual {v0, v7, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v1

    const/16 v2, 0x4d

    if-eq v1, v2, :cond_81

    .line 303
    :cond_7c
    invoke-direct/range {p0 .. p3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleCC(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v1

    return v1

    .line 304
    :cond_81
    const/4 v3, 0x2

    const-string v4, "CK"

    const-string v5, "CG"

    const-string v6, "CQ"

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-static/range {v1 .. v6}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_98

    .line 305
    invoke-virtual {v8, v10}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 306
    add-int/lit8 v1, v9, 0x2

    goto :goto_fd

    .line 307
    :cond_98
    const/4 v3, 0x2

    const-string v4, "CI"

    const-string v5, "CE"

    const-string v6, "CY"

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-static/range {v1 .. v6}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c4

    .line 309
    const/4 v3, 0x3

    const-string v4, "CIO"

    const-string v5, "CIE"

    const-string v6, "CIA"

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-static/range {v1 .. v6}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_be

    .line 310
    invoke-virtual {v8, v12, v13}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_c1

    .line 312
    :cond_be
    invoke-virtual {v8, v12}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 314
    :goto_c1
    add-int/lit8 v1, v9, 0x2

    goto :goto_fd

    .line 316
    :cond_c4
    invoke-virtual {v8, v10}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 317
    add-int/lit8 v2, v9, 0x1

    const/4 v3, 0x2

    const-string v4, " C"

    const-string v5, " Q"

    const-string v6, " G"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_db

    .line 319
    add-int/lit8 v1, v9, 0x3

    goto :goto_fd

    .line 320
    :cond_db
    add-int/lit8 v2, v9, 0x1

    const/4 v3, 0x1

    const-string v4, "C"

    const-string v5, "K"

    const-string v6, "Q"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_fb

    add-int/lit8 v1, v9, 0x1

    const-string v2, "CE"

    const-string v3, "CI"

    invoke-static {v7, v1, v11, v2, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_fb

    .line 322
    add-int/lit8 v1, v9, 0x2

    goto :goto_fd

    .line 324
    :cond_fb
    add-int/lit8 v1, v9, 0x1

    .line 328
    .end local p3    # "index":I
    .local v1, "index":I
    :goto_fd
    return v1
.end method

.method private handleCC(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .registers 10
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    .line 337
    add-int/lit8 v1, p3, 0x2

    const-string v3, "I"

    const-string v4, "E"

    const-string v5, "H"

    const/4 v2, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_43

    add-int/lit8 v0, p3, 0x2

    const-string v2, "HU"

    invoke-static {p1, v0, v1, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_43

    .line 340
    const/4 v0, 0x1

    if-ne p3, v0, :cond_28

    add-int/lit8 v0, p3, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x41

    if-eq v0, v1, :cond_35

    :cond_28
    add-int/lit8 v0, p3, -0x1

    const/4 v1, 0x5

    const-string v2, "UCCEE"

    const-string v3, "UCCES"

    invoke-static {p1, v0, v1, v2, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 343
    :cond_35
    const-string v0, "KS"

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;)V

    goto :goto_40

    .line 346
    :cond_3b
    const/16 v0, 0x58

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 348
    :goto_40
    add-int/lit8 p3, p3, 0x3

    goto :goto_49

    .line 350
    :cond_43
    const/16 v0, 0x4b

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 351
    add-int/2addr p3, v1

    .line 354
    :goto_49
    return p3
.end method

.method private handleCH(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .registers 9
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    .line 363
    const/16 v0, 0x58

    const/16 v1, 0x4b

    if-lez p3, :cond_15

    const/4 v2, 0x4

    const-string v3, "CHAE"

    invoke-static {p1, p3, v2, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 364
    invoke-virtual {p2, v1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    .line 365
    add-int/lit8 v0, p3, 0x2

    return v0

    .line 366
    :cond_15
    invoke-direct {p0, p1, p3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->conditionCH0(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 368
    invoke-virtual {p2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 369
    add-int/lit8 v0, p3, 0x2

    return v0

    .line 370
    :cond_21
    invoke-direct {p0, p1, p3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->conditionCH1(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 372
    invoke-virtual {p2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 373
    add-int/lit8 v0, p3, 0x2

    return v0

    .line 375
    :cond_2d
    if-lez p3, :cond_41

    .line 376
    const/4 v2, 0x0

    const-string v3, "MC"

    const/4 v4, 0x2

    invoke-static {p1, v2, v4, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 377
    invoke-virtual {p2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_44

    .line 379
    :cond_3d
    invoke-virtual {p2, v0, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_44

    .line 382
    :cond_41
    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 384
    :goto_44
    add-int/lit8 v0, p3, 0x2

    return v0
.end method

.method private handleD(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .registers 12
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    .line 394
    const-string v0, "DG"

    const/4 v1, 0x2

    invoke-static {p1, p3, v1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 396
    add-int/lit8 v3, p3, 0x2

    const/4 v4, 0x1

    const-string v5, "I"

    const-string v6, "E"

    const-string v7, "Y"

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 397
    const/16 v0, 0x4a

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 398
    add-int/lit8 p3, p3, 0x3

    goto :goto_3e

    .line 401
    :cond_21
    const-string v0, "TK"

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;)V

    .line 402
    add-int/2addr p3, v1

    goto :goto_3e

    .line 404
    :cond_28
    const-string v0, "DT"

    const-string v2, "DD"

    invoke-static {p1, p3, v1, v0, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/16 v2, 0x54

    if-eqz v0, :cond_39

    .line 405
    invoke-virtual {p2, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 406
    add-int/2addr p3, v1

    goto :goto_3e

    .line 408
    :cond_39
    invoke-virtual {p2, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 409
    add-int/lit8 p3, p3, 0x1

    .line 411
    :goto_3e
    return p3
.end method

.method private handleG(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I
    .registers 21
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I
    .param p4, "slavoGermanic"    # Z

    .line 421
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    add-int/lit8 v1, v9, 0x1

    invoke-virtual {v0, v7, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v1

    const/16 v2, 0x48

    if-ne v1, v2, :cond_18

    .line 422
    invoke-direct/range {p0 .. p3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleGH(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v1

    goto/16 :goto_149

    .line 423
    :cond_18
    add-int/lit8 v1, v9, 0x1

    invoke-virtual {v0, v7, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v1

    const/16 v2, 0x4e

    const/16 v3, 0x59

    const/4 v10, 0x0

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-ne v1, v2, :cond_62

    .line 424
    if-ne v9, v12, :cond_3d

    invoke-virtual {v0, v7, v10}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    move-result v1

    if-eqz v1, :cond_3d

    if-nez p4, :cond_3d

    .line 425
    const-string v1, "KN"

    const-string v2, "N"

    invoke-virtual {v8, v1, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5e

    .line 426
    :cond_3d
    add-int/lit8 v1, v9, 0x2

    const-string v2, "EY"

    invoke-static {v7, v1, v11, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_59

    add-int/lit8 v1, v9, 0x1

    invoke-virtual {v0, v7, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v1

    if-eq v1, v3, :cond_59

    if-nez p4, :cond_59

    .line 428
    const-string v1, "N"

    const-string v2, "KN"

    invoke-virtual {v8, v1, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5e

    .line 430
    :cond_59
    const-string v1, "KN"

    invoke-virtual {v8, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;)V

    .line 432
    :goto_5e
    add-int/lit8 v1, v9, 0x2

    goto/16 :goto_149

    .line 433
    :cond_62
    add-int/lit8 v1, v9, 0x1

    const-string v2, "LI"

    invoke-static {v7, v1, v11, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_79

    if-nez p4, :cond_79

    .line 434
    const-string v1, "KL"

    const-string v2, "L"

    invoke-virtual {v8, v1, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    add-int/lit8 v1, v9, 0x2

    goto/16 :goto_149

    .line 436
    :cond_79
    const/16 v13, 0x4a

    const/16 v14, 0x4b

    if-nez v9, :cond_98

    add-int/lit8 v1, v9, 0x1

    invoke-virtual {v0, v7, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v1

    if-eq v1, v3, :cond_91

    add-int/lit8 v1, v9, 0x1

    sget-object v2, Lorg/apache/commons/codec/language/DoubleMetaphone;->ES_EP_EB_EL_EY_IB_IL_IN_IE_EI_ER:[Ljava/lang/String;

    invoke-static {v7, v1, v11, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_98

    .line 438
    :cond_91
    invoke-virtual {v8, v14, v13}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    .line 439
    add-int/lit8 v1, v9, 0x2

    goto/16 :goto_149

    .line 440
    :cond_98
    add-int/lit8 v1, v9, 0x1

    const-string v2, "ER"

    invoke-static {v7, v1, v11, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v1

    const/4 v6, 0x3

    if-nez v1, :cond_ae

    add-int/lit8 v1, v9, 0x1

    invoke-virtual {v0, v7, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v1

    if-ne v1, v3, :cond_ac

    goto :goto_ae

    .line 448
    :cond_ac
    const/4 v10, 0x3

    goto :goto_df

    .line 440
    :cond_ae
    :goto_ae
    const/4 v2, 0x0

    const/4 v3, 0x6

    const-string v4, "DANGER"

    const-string v5, "RANGER"

    const-string v15, "MANGER"

    move-object/from16 v1, p1

    const/4 v10, 0x3

    move-object v6, v15

    invoke-static/range {v1 .. v6}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_df

    add-int/lit8 v1, v9, -0x1

    const-string v2, "E"

    const-string v3, "I"

    invoke-static {v7, v1, v12, v2, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_df

    add-int/lit8 v1, v9, -0x1

    const-string v2, "RGY"

    const-string v3, "OGY"

    invoke-static {v7, v1, v10, v2, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_df

    .line 446
    invoke-virtual {v8, v14, v13}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    .line 447
    add-int/lit8 v1, v9, 0x2

    goto/16 :goto_149

    .line 448
    :cond_df
    :goto_df
    add-int/lit8 v2, v9, 0x1

    const/4 v3, 0x1

    const-string v4, "E"

    const-string v5, "I"

    const-string v6, "Y"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x4

    if-nez v1, :cond_114

    add-int/lit8 v1, v9, -0x1

    const-string v3, "AGGI"

    const-string v4, "OGGI"

    invoke-static {v7, v1, v2, v3, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_fe

    goto :goto_114

    .line 460
    :cond_fe
    add-int/lit8 v1, v9, 0x1

    invoke-virtual {v0, v7, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v1

    const/16 v2, 0x47

    if-ne v1, v2, :cond_10e

    .line 461
    add-int/lit8 v1, v9, 0x2

    .line 462
    .end local p3    # "index":I
    .local v1, "index":I
    invoke-virtual {v8, v14}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_149

    .line 464
    .end local v1    # "index":I
    .restart local p3    # "index":I
    :cond_10e
    add-int/lit8 v1, v9, 0x1

    .line 465
    .end local p3    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {v8, v14}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_149

    .line 451
    .end local v1    # "index":I
    .restart local p3    # "index":I
    :cond_114
    :goto_114
    const-string v1, "VAN "

    const-string v3, "VON "

    const/4 v4, 0x0

    invoke-static {v7, v4, v2, v1, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_144

    const-string v1, "SCH"

    invoke-static {v7, v4, v10, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_144

    add-int/lit8 v1, v9, 0x1

    const-string v3, "ET"

    invoke-static {v7, v1, v11, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_132

    goto :goto_144

    .line 454
    :cond_132
    add-int/lit8 v1, v9, 0x1

    const-string v3, "IER"

    invoke-static {v7, v1, v2, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_140

    .line 455
    invoke-virtual {v8, v13}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_147

    .line 457
    :cond_140
    invoke-virtual {v8, v13, v14}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_147

    .line 453
    :cond_144
    :goto_144
    invoke-virtual {v8, v14}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 459
    :goto_147
    add-int/lit8 v1, v9, 0x2

    .line 467
    .end local p3    # "index":I
    .restart local v1    # "index":I
    :goto_149
    return v1
.end method

.method private handleGH(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .registers 19
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    .line 476
    move-object v0, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p3

    const/16 v12, 0x4b

    const/4 v13, 0x2

    if-lez v11, :cond_1f

    add-int/lit8 v1, v11, -0x1

    invoke-virtual {p0, v9, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v1

    invoke-direct {p0, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 477
    invoke-virtual {v10, v12}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 478
    add-int/lit8 v1, v11, 0x2

    goto/16 :goto_a7

    .line 479
    :cond_1f
    const/16 v14, 0x49

    if-nez v11, :cond_38

    .line 480
    add-int/lit8 v1, v11, 0x2

    invoke-virtual {p0, v9, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v1

    if-ne v1, v14, :cond_31

    .line 481
    const/16 v1, 0x4a

    invoke-virtual {v10, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_34

    .line 483
    :cond_31
    invoke-virtual {v10, v12}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 485
    :goto_34
    add-int/lit8 v1, v11, 0x2

    goto/16 :goto_a7

    .line 486
    :cond_38
    const/4 v7, 0x1

    if-le v11, v7, :cond_4c

    add-int/lit8 v2, v11, -0x2

    const/4 v3, 0x1

    const-string v4, "B"

    const-string v5, "H"

    const-string v6, "D"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6e

    :cond_4c
    if-le v11, v13, :cond_5f

    add-int/lit8 v2, v11, -0x3

    const/4 v3, 0x1

    const-string v4, "B"

    const-string v5, "H"

    const-string v6, "D"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6e

    :cond_5f
    const/4 v1, 0x3

    if-le v11, v1, :cond_71

    add-int/lit8 v1, v11, -0x4

    const-string v2, "B"

    const-string v3, "H"

    invoke-static {v9, v1, v7, v2, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 490
    :cond_6e
    add-int/lit8 v1, v11, 0x2

    goto :goto_a7

    .line 492
    :cond_71
    if-le v11, v13, :cond_98

    add-int/lit8 v1, v11, -0x1

    invoke-virtual {p0, v9, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v1

    const/16 v2, 0x55

    if-ne v1, v2, :cond_98

    add-int/lit8 v2, v11, -0x3

    const/4 v3, 0x1

    const-string v4, "C"

    const-string v5, "G"

    const-string v6, "L"

    const-string v7, "R"

    const-string v8, "T"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v8}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_98

    .line 495
    const/16 v1, 0x46

    invoke-virtual {v10, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_a5

    .line 496
    :cond_98
    if-lez v11, :cond_a5

    add-int/lit8 v1, v11, -0x1

    invoke-virtual {p0, v9, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v1

    if-eq v1, v14, :cond_a5

    .line 497
    invoke-virtual {v10, v12}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 499
    :cond_a5
    :goto_a5
    add-int/lit8 v1, v11, 0x2

    .line 501
    .end local p3    # "index":I
    .local v1, "index":I
    :goto_a7
    return v1
.end method

.method private handleH(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .registers 5
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    .line 511
    if-eqz p3, :cond_e

    add-int/lit8 v0, p3, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_e
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 513
    const/16 v0, 0x48

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 514
    add-int/lit8 p3, p3, 0x2

    goto :goto_24

    .line 517
    :cond_22
    add-int/lit8 p3, p3, 0x1

    .line 519
    :goto_24
    return p3
.end method

.method private handleJ(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I
    .registers 17
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I
    .param p4, "slavoGermanic"    # Z

    .line 527
    move-object v0, p0

    move-object v7, p1

    move-object v8, p2

    move v9, p3

    const-string v1, "JOSE"

    const/4 v2, 0x4

    invoke-static {p1, p3, v2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v1

    const/16 v3, 0x20

    const/4 v4, 0x0

    const/16 v5, 0x48

    const/16 v10, 0x4a

    const/4 v11, 0x1

    if-nez v1, :cond_89

    const-string v1, "SAN "

    invoke-static {p1, v4, v2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    goto/16 :goto_89

    .line 537
    :cond_1f
    const/16 v1, 0x41

    if-nez v9, :cond_2f

    const-string v4, "JOSE"

    invoke-static {p1, p3, v2, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 538
    invoke-virtual {p2, v10, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_7b

    .line 539
    :cond_2f
    add-int/lit8 v2, v9, -0x1

    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v2

    invoke-direct {p0, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    move-result v2

    if-eqz v2, :cond_53

    if-nez p4, :cond_53

    add-int/lit8 v2, v9, 0x1

    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v2

    if-eq v2, v1, :cond_4f

    add-int/lit8 v1, v9, 0x1

    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v1

    const/16 v2, 0x4f

    if-ne v1, v2, :cond_53

    .line 541
    :cond_4f
    invoke-virtual {p2, v10, v5}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_7b

    .line 542
    :cond_53
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v11

    if-ne v9, v1, :cond_5e

    .line 543
    invoke-virtual {p2, v10, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_7b

    .line 544
    :cond_5e
    add-int/lit8 v1, v9, 0x1

    sget-object v2, Lorg/apache/commons/codec/language/DoubleMetaphone;->L_T_K_S_N_M_B_Z:[Ljava/lang/String;

    invoke-static {p1, v1, v11, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7b

    add-int/lit8 v2, v9, -0x1

    const/4 v3, 0x1

    const-string v4, "S"

    const-string v5, "K"

    const-string v6, "L"

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7b

    .line 545
    invoke-virtual {p2, v10}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 548
    :cond_7b
    :goto_7b
    add-int/lit8 v1, v9, 0x1

    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v1

    if-ne v1, v10, :cond_86

    .line 549
    add-int/lit8 v1, v9, 0x2

    goto :goto_ab

    .line 551
    :cond_86
    add-int/lit8 v1, v9, 0x1

    goto :goto_ab

    .line 529
    :cond_89
    :goto_89
    if-nez v9, :cond_93

    add-int/lit8 v1, v9, 0x4

    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v1

    if-eq v1, v3, :cond_a6

    :cond_93
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v2, :cond_a6

    const-string v1, "SAN "

    invoke-static {p1, v4, v2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a2

    goto :goto_a6

    .line 533
    :cond_a2
    invoke-virtual {p2, v10, v5}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_a9

    .line 531
    :cond_a6
    :goto_a6
    invoke-virtual {p2, v5}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 535
    :goto_a9
    add-int/lit8 v1, v9, 0x1

    .line 554
    .end local p3    # "index":I
    .local v1, "index":I
    :goto_ab
    return v1
.end method

.method private handleL(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .registers 6
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    .line 563
    const/16 v0, 0x4c

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 564
    add-int/lit8 v1, p3, 0x1

    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v1

    if-ne v1, v0, :cond_1b

    .line 565
    invoke-direct {p0, p1, p3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->conditionL0(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 566
    const/16 v0, 0x20

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->appendAlternate(C)V

    .line 568
    :cond_18
    add-int/lit8 p3, p3, 0x2

    goto :goto_1d

    .line 570
    :cond_1b
    add-int/lit8 p3, p3, 0x1

    .line 572
    :goto_1d
    return p3
.end method

.method private handleP(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .registers 8
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    .line 581
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x48

    if-ne v0, v1, :cond_12

    .line 582
    const/16 v0, 0x46

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 583
    add-int/lit8 p3, p3, 0x2

    goto :goto_2a

    .line 585
    :cond_12
    const/16 v0, 0x50

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 586
    add-int/lit8 v0, p3, 0x1

    const-string v1, "P"

    const-string v2, "B"

    const/4 v3, 0x1

    invoke-static {p1, v0, v3, v1, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    add-int/lit8 v0, p3, 0x2

    goto :goto_29

    :cond_27
    add-int/lit8 v0, p3, 0x1

    :goto_29
    move p3, v0

    .line 588
    :goto_2a
    return p3
.end method

.method private handleR(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I
    .registers 10
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I
    .param p4, "slavoGermanic"    # Z

    .line 598
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/16 v1, 0x52

    if-ne p3, v0, :cond_27

    if-nez p4, :cond_27

    add-int/lit8 v0, p3, -0x2

    const-string v2, "IE"

    const/4 v3, 0x2

    invoke-static {p1, v0, v3, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    add-int/lit8 v0, p3, -0x4

    const-string v2, "ME"

    const-string v4, "MA"

    invoke-static {p1, v0, v3, v2, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 601
    invoke-virtual {p2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->appendAlternate(C)V

    goto :goto_2a

    .line 603
    :cond_27
    invoke-virtual {p2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 605
    :goto_2a
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    if-ne v0, v1, :cond_35

    add-int/lit8 v0, p3, 0x2

    goto :goto_37

    :cond_35
    add-int/lit8 v0, p3, 0x1

    :goto_37
    return v0
.end method

.method private handleS(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I
    .registers 19
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I
    .param p4, "slavoGermanic"    # Z

    .line 615
    move-object v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    add-int/lit8 v0, v9, -0x1

    const-string v1, "ISL"

    const-string v2, "YSL"

    const/4 v3, 0x3

    invoke-static {p1, v0, v3, v1, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v10, 0x1

    if-eqz v0, :cond_18

    .line 617
    add-int/lit8 v0, v9, 0x1

    .line 658
    .end local p3    # "index":I
    .local v1, "index":I
    :goto_15
    move v1, v0

    goto/16 :goto_df

    .line 618
    .end local v1    # "index":I
    .restart local p3    # "index":I
    :cond_18
    const/16 v11, 0x58

    const/16 v12, 0x53

    if-nez v9, :cond_2d

    const/4 v0, 0x5

    const-string v1, "SUGAR"

    invoke-static {p1, v9, v0, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 620
    invoke-virtual {v8, v11, v12}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    .line 621
    add-int/lit8 v0, v9, 0x1

    goto :goto_15

    .line 622
    :cond_2d
    const-string v0, "SH"

    const/4 v13, 0x2

    invoke-static {p1, v9, v13, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 623
    add-int/lit8 v1, v9, 0x1

    const/4 v2, 0x4

    const-string v3, "HEIM"

    const-string v4, "HOEK"

    const-string v5, "HOLM"

    const-string v6, "HOLZ"

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 626
    invoke-virtual {v8, v12}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_4f

    .line 628
    :cond_4c
    invoke-virtual {v8, v11}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 630
    :goto_4f
    add-int/lit8 v0, v9, 0x2

    goto :goto_15

    .line 631
    :cond_52
    const-string v0, "SIO"

    const-string v1, "SIA"

    invoke-static {p1, v9, v3, v0, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d4

    const/4 v0, 0x4

    const-string v1, "SIAN"

    invoke-static {p1, v9, v0, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_67

    goto/16 :goto_d4

    .line 639
    :cond_67
    if-nez v9, :cond_7b

    add-int/lit8 v1, v9, 0x1

    const/4 v2, 0x1

    const-string v3, "M"

    const-string v4, "N"

    const-string v5, "L"

    const-string v6, "W"

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_85

    :cond_7b
    add-int/lit8 v0, v9, 0x1

    const-string v1, "Z"

    invoke-static {p1, v0, v10, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_99

    .line 644
    :cond_85
    invoke-virtual {v8, v12, v11}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    .line 645
    add-int/lit8 v0, v9, 0x1

    const-string v1, "Z"

    invoke-static {p1, v0, v10, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_95

    add-int/lit8 v0, v9, 0x2

    goto :goto_97

    :cond_95
    add-int/lit8 v0, v9, 0x1

    :goto_97
    goto/16 :goto_15

    .line 646
    :cond_99
    const-string v0, "SC"

    invoke-static {p1, v9, v13, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a7

    .line 647
    invoke-direct/range {p0 .. p3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleSC(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v0

    goto/16 :goto_15

    .line 649
    :cond_a7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v10

    if-ne v9, v0, :cond_be

    add-int/lit8 v0, v9, -0x2

    const-string v1, "AI"

    const-string v2, "OI"

    invoke-static {p1, v0, v13, v1, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_be

    .line 652
    invoke-virtual {v8, v12}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->appendAlternate(C)V

    goto :goto_c1

    .line 654
    :cond_be
    invoke-virtual {v8, v12}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 656
    :goto_c1
    add-int/lit8 v0, v9, 0x1

    const-string v1, "S"

    const-string v2, "Z"

    invoke-static {p1, v0, v10, v1, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d0

    add-int/lit8 v0, v9, 0x2

    goto :goto_d2

    :cond_d0
    add-int/lit8 v0, v9, 0x1

    :goto_d2
    goto/16 :goto_15

    .line 633
    :cond_d4
    :goto_d4
    if-eqz p4, :cond_da

    .line 634
    invoke-virtual {v8, v12}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_dd

    .line 636
    :cond_da
    invoke-virtual {v8, v12, v11}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    .line 638
    :goto_dd
    add-int/lit8 v1, v9, 0x3

    .line 658
    .end local p3    # "index":I
    .restart local v1    # "index":I
    :goto_df
    return v1
.end method

.method private handleSC(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .registers 16
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    .line 667
    add-int/lit8 v0, p3, 0x2

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x53

    const/16 v2, 0x48

    if-ne v0, v2, :cond_5c

    .line 669
    add-int/lit8 v4, p3, 0x3

    const/4 v5, 0x2

    const-string v6, "OO"

    const-string v7, "ER"

    const-string v8, "EN"

    const-string v9, "UY"

    const-string v10, "ED"

    const-string v11, "EM"

    move-object v3, p1

    invoke-static/range {v3 .. v11}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 672
    add-int/lit8 v0, p3, 0x3

    const-string v1, "ER"

    const-string v2, "EN"

    const/4 v3, 0x2

    invoke-static {p1, v0, v3, v1, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 674
    const-string v0, "X"

    const-string v1, "SK"

    invoke-virtual {p2, v0, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_75

    .line 676
    :cond_37
    const-string v0, "SK"

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;)V

    goto :goto_75

    .line 679
    :cond_3d
    const/16 v0, 0x58

    if-nez p3, :cond_58

    const/4 v2, 0x3

    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v3

    invoke-direct {p0, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    move-result v3

    if-nez v3, :cond_58

    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v2

    const/16 v3, 0x57

    if-eq v2, v3, :cond_58

    .line 680
    invoke-virtual {p2, v0, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_75

    .line 682
    :cond_58
    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_75

    .line 685
    :cond_5c
    add-int/lit8 v5, p3, 0x2

    const/4 v6, 0x1

    const-string v7, "I"

    const-string v8, "E"

    const-string v9, "Y"

    move-object v4, p1

    invoke-static/range {v4 .. v9}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 686
    invoke-virtual {p2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_75

    .line 688
    :cond_70
    const-string v0, "SK"

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;)V

    .line 690
    :goto_75
    add-int/lit8 v0, p3, 0x3

    return v0
.end method

.method private handleT(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .registers 11
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    .line 699
    const-string v0, "TION"

    const/4 v1, 0x4

    invoke-static {p1, p3, v1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    const/16 v2, 0x58

    const/4 v3, 0x3

    if-eqz v0, :cond_11

    .line 700
    invoke-virtual {p2, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 701
    add-int/2addr p3, v3

    goto :goto_75

    .line 702
    :cond_11
    const-string v0, "TIA"

    const-string v4, "TCH"

    invoke-static {p1, p3, v3, v0, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 703
    invoke-virtual {p2, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 704
    add-int/2addr p3, v3

    goto :goto_75

    .line 705
    :cond_20
    const-string v0, "TH"

    const/4 v2, 0x2

    invoke-static {p1, p3, v2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    const/16 v4, 0x54

    if-nez v0, :cond_4b

    const-string v0, "TTH"

    invoke-static {p1, p3, v3, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    goto :goto_4b

    .line 717
    :cond_34
    invoke-virtual {p2, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 718
    add-int/lit8 v0, p3, 0x1

    const-string v1, "T"

    const-string v2, "D"

    const/4 v3, 0x1

    invoke-static {p1, v0, v3, v1, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    add-int/lit8 v0, p3, 0x2

    goto :goto_49

    :cond_47
    add-int/lit8 v0, p3, 0x1

    :goto_49
    move p3, v0

    goto :goto_75

    .line 707
    :cond_4b
    :goto_4b
    add-int/lit8 v0, p3, 0x2

    const-string v5, "OM"

    const-string v6, "AM"

    invoke-static {p1, v0, v2, v5, v6}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_71

    const-string v0, "VAN "

    const-string v5, "VON "

    const/4 v6, 0x0

    invoke-static {p1, v6, v1, v0, v5}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_71

    const-string v0, "SCH"

    invoke-static {p1, v6, v3, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6b

    goto :goto_71

    .line 713
    :cond_6b
    const/16 v0, 0x30

    invoke-virtual {p2, v0, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_74

    .line 711
    :cond_71
    :goto_71
    invoke-virtual {p2, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 715
    :goto_74
    add-int/2addr p3, v2

    .line 720
    :goto_75
    return p3
.end method

.method private handleW(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .registers 13
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    .line 729
    const-string v0, "WR"

    const/4 v1, 0x2

    invoke-static {p1, p3, v1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 731
    const/16 v0, 0x52

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 732
    add-int/2addr p3, v1

    goto/16 :goto_8e

    .line 734
    :cond_11
    const/16 v0, 0x46

    if-nez p3, :cond_41

    add-int/lit8 v2, p3, 0x1

    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v2

    invoke-direct {p0, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    move-result v2

    if-nez v2, :cond_29

    const-string v2, "WH"

    invoke-static {p1, p3, v1, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 736
    :cond_29
    add-int/lit8 v1, p3, 0x1

    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v1

    invoke-direct {p0, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    move-result v1

    const/16 v2, 0x41

    if-eqz v1, :cond_3b

    .line 738
    invoke-virtual {p2, v2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_3e

    .line 741
    :cond_3b
    invoke-virtual {p2, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 743
    :goto_3e
    add-int/lit8 p3, p3, 0x1

    goto :goto_8e

    .line 744
    :cond_41
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p3, v1, :cond_55

    add-int/lit8 v1, p3, -0x1

    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v1

    invoke-direct {p0, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    move-result v1

    if-nez v1, :cond_89

    :cond_55
    add-int/lit8 v3, p3, -0x1

    const/4 v4, 0x5

    const-string v5, "EWSKI"

    const-string v6, "EWSKY"

    const-string v7, "OWSKI"

    const-string v8, "OWSKY"

    move-object v2, p1

    invoke-static/range {v2 .. v8}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_89

    const/4 v1, 0x0

    const/4 v2, 0x3

    const-string v3, "SCH"

    invoke-static {p1, v1, v2, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_72

    goto :goto_89

    .line 751
    :cond_72
    const-string v0, "WICZ"

    const-string v1, "WITZ"

    const/4 v2, 0x4

    invoke-static {p1, p3, v2, v0, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_86

    .line 753
    const-string v0, "TS"

    const-string v1, "FX"

    invoke-virtual {p2, v0, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    add-int/2addr p3, v2

    goto :goto_8e

    .line 756
    :cond_86
    add-int/lit8 p3, p3, 0x1

    goto :goto_8e

    .line 749
    :cond_89
    :goto_89
    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->appendAlternate(C)V

    .line 750
    add-int/lit8 p3, p3, 0x1

    .line 759
    :goto_8e
    return p3
.end method

.method private handleX(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .registers 9
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    .line 768
    const/4 v0, 0x1

    if-nez p3, :cond_a

    .line 769
    const/16 v1, 0x53

    invoke-virtual {p2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 770
    add-int/2addr p3, v0

    goto :goto_42

    .line 772
    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    if-ne p3, v1, :cond_2b

    add-int/lit8 v1, p3, -0x3

    const-string v2, "IAU"

    const-string v3, "EAU"

    const/4 v4, 0x3

    invoke-static {p1, v1, v4, v2, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_30

    add-int/lit8 v1, p3, -0x2

    const-string v2, "AU"

    const-string v3, "OU"

    const/4 v4, 0x2

    invoke-static {p1, v1, v4, v2, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 776
    :cond_2b
    const-string v1, "KS"

    invoke-virtual {p2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;)V

    .line 778
    :cond_30
    add-int/lit8 v1, p3, 0x1

    const-string v2, "C"

    const-string v3, "X"

    invoke-static {p1, v1, v0, v2, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f

    add-int/lit8 v0, p3, 0x2

    goto :goto_41

    :cond_3f
    add-int/lit8 v0, p3, 0x1

    :goto_41
    move p3, v0

    .line 780
    :goto_42
    return p3
.end method

.method private handleZ(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I
    .registers 11
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I
    .param p4, "slavoGermanic"    # Z

    .line 788
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x48

    if-ne v0, v1, :cond_12

    .line 790
    const/16 v0, 0x4a

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 791
    add-int/lit8 p3, p3, 0x2

    goto :goto_4e

    .line 793
    :cond_12
    add-int/lit8 v1, p3, 0x1

    const/4 v2, 0x2

    const-string v3, "ZO"

    const-string v4, "ZI"

    const-string v5, "ZA"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_37

    if-eqz p4, :cond_31

    if-lez p3, :cond_31

    add-int/lit8 v0, p3, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x54

    if-eq v0, v1, :cond_31

    goto :goto_37

    .line 796
    :cond_31
    const/16 v0, 0x53

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_3e

    .line 794
    :cond_37
    :goto_37
    const-string v0, "S"

    const-string v1, "TS"

    invoke-virtual {p2, v0, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    :goto_3e
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_4b

    add-int/lit8 v0, p3, 0x2

    goto :goto_4d

    :cond_4b
    add-int/lit8 v0, p3, 0x1

    :goto_4d
    move p3, v0

    .line 800
    :goto_4e
    return p3
.end method

.method private isSilentStart(Ljava/lang/String;)Z
    .registers 5
    .param p1, "value"    # Ljava/lang/String;

    .line 904
    const/4 v0, 0x0

    .line 905
    .local v0, "result":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    sget-object v2, Lorg/apache/commons/codec/language/DoubleMetaphone;->SILENT_START:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_16

    .line 906
    sget-object v2, Lorg/apache/commons/codec/language/DoubleMetaphone;->SILENT_START:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 907
    const/4 v0, 0x1

    .line 908
    goto :goto_16

    .line 905
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 911
    .end local v1    # "i":I
    :cond_16
    :goto_16
    return v0
.end method

.method private isSlavoGermanic(Ljava/lang/String;)Z
    .registers 4
    .param p1, "value"    # Ljava/lang/String;

    .line 887
    const/16 v0, 0x57

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-gt v0, v1, :cond_24

    const/16 v0, 0x4b

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gt v0, v1, :cond_24

    const-string v0, "CZ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v1, :cond_24

    const-string v0, "WITZ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v1, :cond_22

    goto :goto_24

    :cond_22
    const/4 v0, 0x0

    goto :goto_25

    :cond_24
    :goto_24
    const/4 v0, 0x1

    :goto_25
    return v0
.end method

.method private isVowel(C)Z
    .registers 4
    .param p1, "ch"    # C

    .line 895
    const-string v0, "AEIOUY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method


# virtual methods
.method protected charAt(Ljava/lang/String;I)C
    .registers 4
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "index"    # I

    .line 934
    if-ltz p2, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p2, v0, :cond_9

    goto :goto_e

    .line 937
    :cond_9
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0

    .line 935
    :cond_e
    :goto_e
    const/4 v0, 0x0

    return v0
.end method

.method public doubleMetaphone(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 74
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->doubleMetaphone(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public doubleMetaphone(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 10
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "alternate"    # Z

    .line 86
    invoke-direct {p0, p1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->cleanInput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 87
    if-nez p1, :cond_8

    .line 88
    const/4 v0, 0x0

    return-object v0

    .line 91
    :cond_8
    invoke-direct {p0, p1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isSlavoGermanic(Ljava/lang/String;)Z

    move-result v0

    .line 92
    .local v0, "slavoGermanic":Z
    invoke-direct {p0, p1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isSilentStart(Ljava/lang/String;)Z

    move-result v1

    .line 94
    .local v1, "index":I
    new-instance v2, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;

    invoke-virtual {p0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->getMaxCodeLen()I

    move-result v3

    invoke-direct {v2, p0, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;-><init>(Lorg/apache/commons/codec/language/DoubleMetaphone;I)V

    .line 96
    .local v2, "result":Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    :goto_19
    invoke-virtual {v2}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->isComplete()Z

    move-result v3

    if-nez v3, :cond_127

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-gt v1, v3, :cond_127

    .line 97
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xc7

    if-eq v3, v4, :cond_11e

    const/16 v4, 0xd1

    const/16 v5, 0x4e

    if-eq v3, v4, :cond_117

    const/16 v4, 0x4b

    const/16 v6, 0x46

    packed-switch v3, :pswitch_data_134

    .line 184
    add-int/lit8 v1, v1, 0x1

    .line 185
    goto :goto_19

    .line 181
    :pswitch_3f
    invoke-direct {p0, p1, v2, v1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleZ(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I

    move-result v1

    .line 182
    goto :goto_19

    .line 178
    :pswitch_44
    invoke-direct {p0, p1, v2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleX(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v1

    .line 179
    goto :goto_19

    .line 175
    :pswitch_49
    invoke-direct {p0, p1, v2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleW(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v1

    .line 176
    goto :goto_19

    .line 171
    :pswitch_4e
    invoke-virtual {v2, v6}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 172
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, p1, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v3

    const/16 v4, 0x56

    if-ne v3, v4, :cond_5e

    add-int/lit8 v3, v1, 0x2

    goto :goto_60

    :cond_5e
    add-int/lit8 v3, v1, 0x1

    :goto_60
    move v1, v3

    .line 173
    goto :goto_19

    .line 168
    :pswitch_62
    invoke-direct {p0, p1, v2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleT(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v1

    .line 169
    goto :goto_19

    .line 165
    :pswitch_67
    invoke-direct {p0, p1, v2, v1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleS(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I

    move-result v1

    .line 166
    goto :goto_19

    .line 162
    :pswitch_6c
    invoke-direct {p0, p1, v2, v1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleR(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I

    move-result v1

    .line 163
    goto :goto_19

    .line 158
    :pswitch_71
    invoke-virtual {v2, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 159
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, p1, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v3

    const/16 v4, 0x51

    if-ne v3, v4, :cond_81

    add-int/lit8 v3, v1, 0x2

    goto :goto_83

    :cond_81
    add-int/lit8 v3, v1, 0x1

    :goto_83
    move v1, v3

    .line 160
    goto :goto_19

    .line 155
    :pswitch_85
    invoke-direct {p0, p1, v2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleP(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v1

    .line 156
    goto :goto_19

    .line 146
    :pswitch_8a
    invoke-virtual {v2, v5}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 147
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, p1, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v3

    if-ne v3, v5, :cond_98

    add-int/lit8 v3, v1, 0x2

    goto :goto_9a

    :cond_98
    add-int/lit8 v3, v1, 0x1

    :goto_9a
    move v1, v3

    .line 148
    goto/16 :goto_19

    .line 142
    :pswitch_9d
    const/16 v3, 0x4d

    invoke-virtual {v2, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 143
    invoke-direct {p0, p1, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->conditionM0(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_ab

    add-int/lit8 v3, v1, 0x2

    goto :goto_ad

    :cond_ab
    add-int/lit8 v3, v1, 0x1

    :goto_ad
    move v1, v3

    .line 144
    goto/16 :goto_19

    .line 139
    :pswitch_b0
    invoke-direct {p0, p1, v2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleL(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v1

    .line 140
    goto/16 :goto_19

    .line 135
    :pswitch_b6
    invoke-virtual {v2, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 136
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, p1, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v3

    if-ne v3, v4, :cond_c4

    add-int/lit8 v3, v1, 0x2

    goto :goto_c6

    :cond_c4
    add-int/lit8 v3, v1, 0x1

    :goto_c6
    move v1, v3

    .line 137
    goto/16 :goto_19

    .line 132
    :pswitch_c9
    invoke-direct {p0, p1, v2, v1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleJ(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I

    move-result v1

    .line 133
    goto/16 :goto_19

    .line 129
    :pswitch_cf
    invoke-direct {p0, p1, v2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleH(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v1

    .line 130
    goto/16 :goto_19

    .line 126
    :pswitch_d5
    invoke-direct {p0, p1, v2, v1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleG(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I

    move-result v1

    .line 127
    goto/16 :goto_19

    .line 122
    :pswitch_db
    invoke-virtual {v2, v6}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 123
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, p1, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v3

    if-ne v3, v6, :cond_e9

    add-int/lit8 v3, v1, 0x2

    goto :goto_eb

    :cond_e9
    add-int/lit8 v3, v1, 0x1

    :goto_eb
    move v1, v3

    .line 124
    goto/16 :goto_19

    .line 119
    :pswitch_ee
    invoke-direct {p0, p1, v2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleD(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v1

    .line 120
    goto/16 :goto_19

    .line 116
    :pswitch_f4
    invoke-direct {p0, p1, v2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleC(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v1

    .line 117
    goto/16 :goto_19

    .line 107
    :pswitch_fa
    const/16 v3, 0x50

    invoke-virtual {v2, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 108
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, p1, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v3

    const/16 v4, 0x42

    if-ne v3, v4, :cond_10c

    add-int/lit8 v3, v1, 0x2

    goto :goto_10e

    :cond_10c
    add-int/lit8 v3, v1, 0x1

    :goto_10e
    move v1, v3

    .line 109
    goto/16 :goto_19

    .line 104
    :pswitch_111
    invoke-direct {p0, p1, v2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleAEIOUY(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v1

    .line 105
    goto/16 :goto_19

    .line 151
    :cond_117
    invoke-virtual {v2, v5}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 152
    add-int/lit8 v1, v1, 0x1

    .line 153
    goto/16 :goto_19

    .line 112
    :cond_11e
    const/16 v3, 0x53

    invoke-virtual {v2, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 113
    add-int/lit8 v1, v1, 0x1

    .line 114
    goto/16 :goto_19

    .line 189
    :cond_127
    if-eqz p2, :cond_12e

    invoke-virtual {v2}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->getAlternate()Ljava/lang/String;

    move-result-object v3

    goto :goto_132

    :cond_12e
    invoke-virtual {v2}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->getPrimary()Ljava/lang/String;

    move-result-object v3

    :goto_132
    return-object v3

    nop

    :pswitch_data_134
    .packed-switch 0x41
        :pswitch_111
        :pswitch_fa
        :pswitch_f4
        :pswitch_ee
        :pswitch_111
        :pswitch_db
        :pswitch_d5
        :pswitch_cf
        :pswitch_111
        :pswitch_c9
        :pswitch_b6
        :pswitch_b0
        :pswitch_9d
        :pswitch_8a
        :pswitch_111
        :pswitch_85
        :pswitch_71
        :pswitch_6c
        :pswitch_67
        :pswitch_62
        :pswitch_111
        :pswitch_4e
        :pswitch_49
        :pswitch_44
        :pswitch_111
        :pswitch_3f
    .end packed-switch
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    .line 201
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 204
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->doubleMetaphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 202
    :cond_c
    new-instance v0, Lorg/apache/commons/codec/EncoderException;

    const-string v1, "DoubleMetaphone encode parameter is not of type String"

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 214
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->doubleMetaphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxCodeLen()I
    .registers 2

    .line 253
    iget v0, p0, Lorg/apache/commons/codec/language/DoubleMetaphone;->maxCodeLen:I

    return v0
.end method

.method public isDoubleMetaphoneEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "value1"    # Ljava/lang/String;
    .param p2, "value2"    # Ljava/lang/String;

    .line 228
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isDoubleMetaphoneEqual(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isDoubleMetaphoneEqual(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 6
    .param p1, "value1"    # Ljava/lang/String;
    .param p2, "value2"    # Ljava/lang/String;
    .param p3, "alternate"    # Z

    .line 244
    invoke-virtual {p0, p1, p3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->doubleMetaphone(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, p3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->doubleMetaphone(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setMaxCodeLen(I)V
    .registers 2
    .param p1, "maxCodeLen"    # I

    .line 261
    iput p1, p0, Lorg/apache/commons/codec/language/DoubleMetaphone;->maxCodeLen:I

    .line 262
    return-void
.end method
