.class public Lorg/xbill/DNS/Message;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final MAXLENGTH:I = 0xffff

.field static final TSIG_FAILED:I = 0x4

.field static final TSIG_INTERMEDIATE:I = 0x2

.field static final TSIG_SIGNED:I = 0x3

.field static final TSIG_UNSIGNED:I = 0x0

.field static final TSIG_VERIFIED:I = 0x1

.field private static emptyRRsetArray:[Lorg/xbill/DNS/RRset;

.field private static emptyRecordArray:[Lorg/xbill/DNS/Record;


# instance fields
.field private header:Lorg/xbill/DNS/Header;

.field private querytsig:Lorg/xbill/DNS/TSIGRecord;

.field private sections:[Ljava/util/List;

.field sig0start:I

.field private size:I

.field tsigState:I

.field private tsigerror:I

.field private tsigkey:Lorg/xbill/DNS/TSIG;

.field tsigstart:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 53
    const/4 v0, 0x0

    new-array v1, v0, [Lorg/xbill/DNS/Record;

    sput-object v1, Lorg/xbill/DNS/Message;->emptyRecordArray:[Lorg/xbill/DNS/Record;

    .line 54
    new-array v0, v0, [Lorg/xbill/DNS/RRset;

    sput-object v0, Lorg/xbill/DNS/Message;->emptyRRsetArray:[Lorg/xbill/DNS/RRset;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 71
    new-instance v0, Lorg/xbill/DNS/Header;

    invoke-direct {v0}, Lorg/xbill/DNS/Header;-><init>()V

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Message;-><init>(Lorg/xbill/DNS/Header;)V

    .line 72
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "id"    # I

    .line 65
    new-instance v0, Lorg/xbill/DNS/Header;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/Header;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Message;-><init>(Lorg/xbill/DNS/Header;)V

    .line 66
    return-void
.end method

.method constructor <init>(Lorg/xbill/DNS/DNSInput;)V
    .registers 12
    .param p1, "in"    # Lorg/xbill/DNS/DNSInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    new-instance v0, Lorg/xbill/DNS/Header;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/Header;-><init>(Lorg/xbill/DNS/DNSInput;)V

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Message;-><init>(Lorg/xbill/DNS/Header;)V

    .line 100
    iget-object v0, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    invoke-virtual {v0}, Lorg/xbill/DNS/Header;->getOpcode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 101
    .local v0, "isUpdate":Z
    :goto_15
    iget-object v2, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/Header;->getFlag(I)Z

    move-result v2

    .line 103
    .local v2, "truncated":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1d
    const/4 v4, 0x4

    if-ge v3, v4, :cond_6b

    .line 104
    :try_start_20
    iget-object v4, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    invoke-virtual {v4, v3}, Lorg/xbill/DNS/Header;->getCount(I)I

    move-result v4

    .line 105
    .local v4, "count":I
    if-lez v4, :cond_31

    .line 106
    iget-object v5, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(I)V

    aput-object v6, v5, v3

    .line 107
    :cond_31
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_32
    if-ge v5, v4, :cond_63

    .line 108
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->current()I

    move-result v6

    .line 109
    .local v6, "pos":I
    invoke-static {p1, v3, v0}, Lorg/xbill/DNS/Record;->fromWire(Lorg/xbill/DNS/DNSInput;IZ)Lorg/xbill/DNS/Record;

    move-result-object v7

    .line 110
    .local v7, "rec":Lorg/xbill/DNS/Record;
    iget-object v8, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v8, v8, v3

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    invoke-virtual {v7}, Lorg/xbill/DNS/Record;->getType()I

    move-result v8

    const/16 v9, 0xfa

    if-ne v8, v9, :cond_4d

    .line 112
    iput v6, p0, Lorg/xbill/DNS/Message;->tsigstart:I

    .line 113
    :cond_4d
    invoke-virtual {v7}, Lorg/xbill/DNS/Record;->getType()I

    move-result v8

    const/16 v9, 0x18

    if-ne v8, v9, :cond_60

    move-object v8, v7

    check-cast v8, Lorg/xbill/DNS/SIGRecord;

    invoke-virtual {v8}, Lorg/xbill/DNS/SIGRecord;->getTypeCovered()I

    move-result v8

    if-nez v8, :cond_60

    .line 115
    iput v6, p0, Lorg/xbill/DNS/Message;->sig0start:I
    :try_end_60
    .catch Lorg/xbill/DNS/WireParseException; {:try_start_20 .. :try_end_60} :catch_66

    .line 107
    .end local v6    # "pos":I
    .end local v7    # "rec":Lorg/xbill/DNS/Record;
    :cond_60
    add-int/lit8 v5, v5, 0x1

    goto :goto_32

    .line 103
    .end local v4    # "count":I
    .end local v5    # "j":I
    :cond_63
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 118
    .end local v3    # "i":I
    :catch_66
    move-exception v1

    .line 119
    .local v1, "e":Lorg/xbill/DNS/WireParseException;
    if-eqz v2, :cond_6a

    .end local v1    # "e":Lorg/xbill/DNS/WireParseException;
    goto :goto_6c

    .line 120
    .restart local v1    # "e":Lorg/xbill/DNS/WireParseException;
    :cond_6a
    throw v1

    .line 121
    .end local v1    # "e":Lorg/xbill/DNS/WireParseException;
    :cond_6b
    nop

    .line 122
    :goto_6c
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->current()I

    move-result v1

    iput v1, p0, Lorg/xbill/DNS/Message;->size:I

    .line 123
    return-void
.end method

.method private constructor <init>(Lorg/xbill/DNS/Header;)V
    .registers 3
    .param p1, "header"    # Lorg/xbill/DNS/Header;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/util/List;

    iput-object v0, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    .line 59
    iput-object p1, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    .line 60
    return-void
.end method

.method public constructor <init>([B)V
    .registers 3
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    new-instance v0, Lorg/xbill/DNS/DNSInput;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Message;-><init>(Lorg/xbill/DNS/DNSInput;)V

    .line 132
    return-void
.end method

.method public static newQuery(Lorg/xbill/DNS/Record;)Lorg/xbill/DNS/Message;
    .registers 5
    .param p0, "r"    # Lorg/xbill/DNS/Record;

    .line 81
    new-instance v0, Lorg/xbill/DNS/Message;

    invoke-direct {v0}, Lorg/xbill/DNS/Message;-><init>()V

    .line 82
    .local v0, "m":Lorg/xbill/DNS/Message;
    iget-object v1, v0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/xbill/DNS/Header;->setOpcode(I)V

    .line 83
    iget-object v1, v0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    const/4 v3, 0x7

    invoke-virtual {v1, v3}, Lorg/xbill/DNS/Header;->setFlag(I)V

    .line 84
    invoke-virtual {v0, p0, v2}, Lorg/xbill/DNS/Message;->addRecord(Lorg/xbill/DNS/Record;I)V

    .line 85
    return-object v0
.end method

.method public static newUpdate(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Message;
    .registers 2
    .param p0, "zone"    # Lorg/xbill/DNS/Name;

    .line 95
    new-instance v0, Lorg/xbill/DNS/Update;

    invoke-direct {v0, p0}, Lorg/xbill/DNS/Update;-><init>(Lorg/xbill/DNS/Name;)V

    return-object v0
.end method

.method private static sameSet(Lorg/xbill/DNS/Record;Lorg/xbill/DNS/Record;)Z
    .registers 4
    .param p0, "r1"    # Lorg/xbill/DNS/Record;
    .param p1, "r2"    # Lorg/xbill/DNS/Record;

    .line 339
    invoke-virtual {p0}, Lorg/xbill/DNS/Record;->getRRsetType()I

    move-result v0

    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getRRsetType()I

    move-result v1

    if-ne v0, v1, :cond_24

    invoke-virtual {p0}, Lorg/xbill/DNS/Record;->getDClass()I

    move-result v0

    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getDClass()I

    move-result v1

    if-ne v0, v1, :cond_24

    invoke-virtual {p0}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v0

    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    :goto_25
    return v0
.end method

.method private sectionToWire(Lorg/xbill/DNS/DNSOutput;ILorg/xbill/DNS/Compression;I)I
    .registers 13
    .param p1, "out"    # Lorg/xbill/DNS/DNSOutput;
    .param p2, "section"    # I
    .param p3, "c"    # Lorg/xbill/DNS/Compression;
    .param p4, "maxLength"    # I

    .line 401
    iget-object v0, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v0, v0, p2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 402
    .local v0, "n":I
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v1

    .line 403
    .local v1, "pos":I
    const/4 v2, 0x0

    .line 404
    .local v2, "rendered":I
    const/4 v3, 0x0

    .line 406
    .local v3, "lastrec":Lorg/xbill/DNS/Record;
    const/4 v4, 0x0

    move v5, v2

    move v2, v1

    const/4 v1, 0x0

    .local v1, "i":I
    .local v2, "pos":I
    .local v5, "rendered":I
    :goto_12
    if-ge v1, v0, :cond_3e

    .line 407
    iget-object v6, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v6, v6, p2

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/xbill/DNS/Record;

    .line 408
    .local v6, "rec":Lorg/xbill/DNS/Record;
    if-eqz v3, :cond_2b

    invoke-static {v6, v3}, Lorg/xbill/DNS/Message;->sameSet(Lorg/xbill/DNS/Record;Lorg/xbill/DNS/Record;)Z

    move-result v7

    if-nez v7, :cond_2b

    .line 409
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v2

    .line 410
    move v5, v1

    .line 412
    :cond_2b
    move-object v3, v6

    .line 413
    invoke-virtual {v6, p1, p2, p3}, Lorg/xbill/DNS/Record;->toWire(Lorg/xbill/DNS/DNSOutput;ILorg/xbill/DNS/Compression;)V

    .line 414
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v7

    if-le v7, p4, :cond_3b

    .line 415
    invoke-virtual {p1, v2}, Lorg/xbill/DNS/DNSOutput;->jump(I)V

    .line 416
    sub-int v4, v0, v5

    return v4

    .line 406
    .end local v6    # "rec":Lorg/xbill/DNS/Record;
    :cond_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 419
    .end local v1    # "i":I
    :cond_3e
    return v4
.end method

.method private toWire(Lorg/xbill/DNS/DNSOutput;I)Z
    .registers 14
    .param p1, "out"    # Lorg/xbill/DNS/DNSOutput;
    .param p2, "maxLength"    # I

    .line 425
    const/4 v0, 0x0

    const/16 v1, 0xc

    if-ge p2, v1, :cond_6

    .line 426
    return v0

    .line 428
    :cond_6
    const/4 v1, 0x0

    .line 430
    .local v1, "newheader":Lorg/xbill/DNS/Header;
    move v2, p2

    .line 431
    .local v2, "tempMaxLength":I
    iget-object v3, p0, Lorg/xbill/DNS/Message;->tsigkey:Lorg/xbill/DNS/TSIG;

    if-eqz v3, :cond_13

    .line 432
    iget-object v3, p0, Lorg/xbill/DNS/Message;->tsigkey:Lorg/xbill/DNS/TSIG;

    invoke-virtual {v3}, Lorg/xbill/DNS/TSIG;->recordLength()I

    move-result v3

    sub-int/2addr v2, v3

    .line 434
    :cond_13
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v3

    .line 435
    .local v3, "startpos":I
    iget-object v4, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    invoke-virtual {v4, p1}, Lorg/xbill/DNS/Header;->toWire(Lorg/xbill/DNS/DNSOutput;)V

    .line 436
    new-instance v4, Lorg/xbill/DNS/Compression;

    invoke-direct {v4}, Lorg/xbill/DNS/Compression;-><init>()V

    .line 437
    .local v4, "c":Lorg/xbill/DNS/Compression;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_22
    const/4 v6, 0x4

    const/4 v7, 0x3

    if-ge v5, v6, :cond_67

    .line 439
    iget-object v8, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v8, v8, v5

    if-nez v8, :cond_2d

    .line 440
    goto :goto_64

    .line 441
    :cond_2d
    invoke-direct {p0, p1, v5, v4, v2}, Lorg/xbill/DNS/Message;->sectionToWire(Lorg/xbill/DNS/DNSOutput;ILorg/xbill/DNS/Compression;I)I

    move-result v8

    .line 442
    .local v8, "skipped":I
    if-eqz v8, :cond_64

    .line 443
    if-nez v1, :cond_3e

    .line 444
    iget-object v9, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    invoke-virtual {v9}, Lorg/xbill/DNS/Header;->clone()Ljava/lang/Object;

    move-result-object v9

    move-object v1, v9

    check-cast v1, Lorg/xbill/DNS/Header;

    .line 445
    :cond_3e
    if-eq v5, v7, :cond_44

    .line 446
    const/4 v9, 0x6

    invoke-virtual {v1, v9}, Lorg/xbill/DNS/Header;->setFlag(I)V

    .line 447
    :cond_44
    invoke-virtual {v1, v5}, Lorg/xbill/DNS/Header;->getCount(I)I

    move-result v9

    .line 448
    .local v9, "count":I
    sub-int v10, v9, v8

    invoke-virtual {v1, v5, v10}, Lorg/xbill/DNS/Header;->setCount(II)V

    .line 449
    add-int/lit8 v10, v5, 0x1

    .local v10, "j":I
    :goto_4f
    if-ge v10, v6, :cond_57

    .line 450
    invoke-virtual {v1, v10, v0}, Lorg/xbill/DNS/Header;->setCount(II)V

    .line 449
    add-int/lit8 v10, v10, 0x1

    goto :goto_4f

    .line 452
    .end local v10    # "j":I
    :cond_57
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSOutput;->save()V

    .line 453
    invoke-virtual {p1, v3}, Lorg/xbill/DNS/DNSOutput;->jump(I)V

    .line 454
    invoke-virtual {v1, p1}, Lorg/xbill/DNS/Header;->toWire(Lorg/xbill/DNS/DNSOutput;)V

    .line 455
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSOutput;->restore()V

    .line 456
    goto :goto_67

    .line 437
    .end local v8    # "skipped":I
    .end local v9    # "count":I
    :cond_64
    :goto_64
    add-int/lit8 v5, v5, 0x1

    goto :goto_22

    .line 460
    .end local v5    # "i":I
    :cond_67
    :goto_67
    iget-object v0, p0, Lorg/xbill/DNS/Message;->tsigkey:Lorg/xbill/DNS/TSIG;

    if-eqz v0, :cond_96

    .line 461
    iget-object v0, p0, Lorg/xbill/DNS/Message;->tsigkey:Lorg/xbill/DNS/TSIG;

    invoke-virtual {p1}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v5

    iget v6, p0, Lorg/xbill/DNS/Message;->tsigerror:I

    iget-object v8, p0, Lorg/xbill/DNS/Message;->querytsig:Lorg/xbill/DNS/TSIGRecord;

    invoke-virtual {v0, p0, v5, v6, v8}, Lorg/xbill/DNS/TSIG;->generate(Lorg/xbill/DNS/Message;[BILorg/xbill/DNS/TSIGRecord;)Lorg/xbill/DNS/TSIGRecord;

    move-result-object v0

    .line 464
    .local v0, "tsigrec":Lorg/xbill/DNS/TSIGRecord;
    if-nez v1, :cond_84

    .line 465
    iget-object v5, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    invoke-virtual {v5}, Lorg/xbill/DNS/Header;->clone()Ljava/lang/Object;

    move-result-object v5

    move-object v1, v5

    check-cast v1, Lorg/xbill/DNS/Header;

    .line 466
    :cond_84
    invoke-virtual {v0, p1, v7, v4}, Lorg/xbill/DNS/TSIGRecord;->toWire(Lorg/xbill/DNS/DNSOutput;ILorg/xbill/DNS/Compression;)V

    .line 467
    invoke-virtual {v1, v7}, Lorg/xbill/DNS/Header;->incCount(I)V

    .line 469
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSOutput;->save()V

    .line 470
    invoke-virtual {p1, v3}, Lorg/xbill/DNS/DNSOutput;->jump(I)V

    .line 471
    invoke-virtual {v1, p1}, Lorg/xbill/DNS/Header;->toWire(Lorg/xbill/DNS/DNSOutput;)V

    .line 472
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSOutput;->restore()V

    .line 475
    .end local v0    # "tsigrec":Lorg/xbill/DNS/TSIGRecord;
    :cond_96
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public addRecord(Lorg/xbill/DNS/Record;I)V
    .registers 5
    .param p1, "r"    # Lorg/xbill/DNS/Record;
    .param p2, "section"    # I

    .line 159
    iget-object v0, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v0, v0, p2

    if-nez v0, :cond_f

    .line 160
    iget-object v0, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    aput-object v1, v0, p2

    .line 161
    :cond_f
    iget-object v0, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    invoke-virtual {v0, p2}, Lorg/xbill/DNS/Header;->incCount(I)V

    .line 162
    iget-object v0, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v0, v0, p2

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 6

    .line 597
    new-instance v0, Lorg/xbill/DNS/Message;

    invoke-direct {v0}, Lorg/xbill/DNS/Message;-><init>()V

    .line 598
    .local v0, "m":Lorg/xbill/DNS/Message;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v2, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    array-length v2, v2

    if-ge v1, v2, :cond_21

    .line 599
    iget-object v2, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1e

    .line 600
    iget-object v2, v0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    new-instance v3, Ljava/util/LinkedList;

    iget-object v4, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v4, v4, v1

    invoke-direct {v3, v4}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    aput-object v3, v2, v1

    .line 598
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 602
    .end local v1    # "i":I
    :cond_21
    iget-object v1, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    invoke-virtual {v1}, Lorg/xbill/DNS/Header;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/Header;

    iput-object v1, v0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    .line 603
    iget v1, p0, Lorg/xbill/DNS/Message;->size:I

    iput v1, v0, Lorg/xbill/DNS/Message;->size:I

    .line 604
    return-object v0
.end method

.method public findRRset(Lorg/xbill/DNS/Name;I)Z
    .registers 5
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "type"    # I

    .line 240
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/xbill/DNS/Message;->findRRset(Lorg/xbill/DNS/Name;II)Z

    move-result v1

    if-nez v1, :cond_18

    const/4 v1, 0x2

    invoke-virtual {p0, p1, p2, v1}, Lorg/xbill/DNS/Message;->findRRset(Lorg/xbill/DNS/Name;II)Z

    move-result v1

    if-nez v1, :cond_18

    const/4 v1, 0x3

    invoke-virtual {p0, p1, p2, v1}, Lorg/xbill/DNS/Message;->findRRset(Lorg/xbill/DNS/Name;II)Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_18

    :cond_16
    const/4 v0, 0x0

    nop

    :cond_18
    :goto_18
    return v0
.end method

.method public findRRset(Lorg/xbill/DNS/Name;II)Z
    .registers 8
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "type"    # I
    .param p3, "section"    # I

    .line 222
    iget-object v0, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v0, v0, p3

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 223
    return v1

    .line 224
    :cond_8
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    iget-object v2, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v2, v2, p3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_32

    .line 225
    iget-object v2, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v2, v2, p3

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/xbill/DNS/Record;

    .line 226
    .local v2, "r":Lorg/xbill/DNS/Record;
    invoke-virtual {v2}, Lorg/xbill/DNS/Record;->getType()I

    move-result v3

    if-ne v3, p2, :cond_2f

    invoke-virtual {v2}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 227
    const/4 v1, 0x1

    return v1

    .line 224
    .end local v2    # "r":Lorg/xbill/DNS/Record;
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 229
    .end local v0    # "i":I
    :cond_32
    return v1
.end method

.method public findRecord(Lorg/xbill/DNS/Record;)Z
    .registers 5
    .param p1, "r"    # Lorg/xbill/DNS/Record;

    .line 208
    const/4 v0, 0x1

    const/4 v1, 0x1

    .local v1, "i":I
    :goto_2
    const/4 v2, 0x3

    if-gt v1, v2, :cond_19

    .line 209
    iget-object v2, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v2, v2, v1

    if-eqz v2, :cond_16

    iget-object v2, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v2, v2, v1

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 210
    return v0

    .line 208
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 211
    .end local v1    # "i":I
    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method public findRecord(Lorg/xbill/DNS/Record;I)Z
    .registers 4
    .param p1, "r"    # Lorg/xbill/DNS/Record;
    .param p2, "section"    # I

    .line 198
    iget-object v0, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v0, v0, p2

    if-eqz v0, :cond_12

    iget-object v0, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v0, v0, p2

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public getHeader()Lorg/xbill/DNS/Header;
    .registers 2

    .line 149
    iget-object v0, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    return-object v0
.end method

.method public getOPT()Lorg/xbill/DNS/OPTRecord;
    .registers 4

    .line 303
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Message;->getSectionArray(I)[Lorg/xbill/DNS/Record;

    move-result-object v0

    .line 304
    .local v0, "additional":[Lorg/xbill/DNS/Record;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v2, v0

    if-ge v1, v2, :cond_17

    .line 305
    aget-object v2, v0, v1

    instance-of v2, v2, Lorg/xbill/DNS/OPTRecord;

    if-eqz v2, :cond_14

    .line 306
    aget-object v2, v0, v1

    check-cast v2, Lorg/xbill/DNS/OPTRecord;

    return-object v2

    .line 304
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 307
    .end local v1    # "i":I
    :cond_17
    const/4 v1, 0x0

    return-object v1
.end method

.method public getQuestion()Lorg/xbill/DNS/Record;
    .registers 4

    .line 252
    iget-object v0, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 253
    .local v0, "l":Ljava/util/List;
    if-eqz v0, :cond_15

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_e

    goto :goto_15

    .line 255
    :cond_e
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/Record;

    return-object v1

    .line 254
    :cond_15
    :goto_15
    const/4 v1, 0x0

    return-object v1
.end method

.method public getRcode()I
    .registers 4

    .line 316
    iget-object v0, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    invoke-virtual {v0}, Lorg/xbill/DNS/Header;->getRcode()I

    move-result v0

    .line 317
    .local v0, "rcode":I
    invoke-virtual {p0}, Lorg/xbill/DNS/Message;->getOPT()Lorg/xbill/DNS/OPTRecord;

    move-result-object v1

    .line 318
    .local v1, "opt":Lorg/xbill/DNS/OPTRecord;
    if-eqz v1, :cond_13

    .line 319
    invoke-virtual {v1}, Lorg/xbill/DNS/OPTRecord;->getExtendedRcode()I

    move-result v2

    shl-int/lit8 v2, v2, 0x4

    add-int/2addr v0, v2

    .line 320
    :cond_13
    return v0
.end method

.method public getSectionArray(I)[Lorg/xbill/DNS/Record;
    .registers 4
    .param p1, "section"    # I

    .line 331
    iget-object v0, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v0, v0, p1

    if-nez v0, :cond_9

    .line 332
    sget-object v0, Lorg/xbill/DNS/Message;->emptyRecordArray:[Lorg/xbill/DNS/Record;

    return-object v0

    .line 333
    :cond_9
    iget-object v0, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v0, v0, p1

    .line 334
    .local v0, "l":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/xbill/DNS/Record;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/xbill/DNS/Record;

    return-object v1
.end method

.method public getSectionRRsets(I)[Lorg/xbill/DNS/RRset;
    .registers 12
    .param p1, "section"    # I

    .line 352
    iget-object v0, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v0, v0, p1

    if-nez v0, :cond_9

    .line 353
    sget-object v0, Lorg/xbill/DNS/Message;->emptyRRsetArray:[Lorg/xbill/DNS/RRset;

    return-object v0

    .line 354
    :cond_9
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 355
    .local v0, "sets":Ljava/util/List;
    invoke-virtual {p0, p1}, Lorg/xbill/DNS/Message;->getSectionArray(I)[Lorg/xbill/DNS/Record;

    move-result-object v1

    .line 356
    .local v1, "recs":[Lorg/xbill/DNS/Record;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 357
    .local v2, "hash":Ljava/util/Set;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_18
    array-length v4, v1

    if-ge v3, v4, :cond_74

    .line 358
    aget-object v4, v1, v3

    invoke-virtual {v4}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v4

    .line 359
    .local v4, "name":Lorg/xbill/DNS/Name;
    const/4 v5, 0x1

    .line 360
    .local v5, "newset":Z
    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_62

    .line 361
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .local v6, "j":I
    :goto_2e
    if-ltz v6, :cond_62

    .line 362
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/xbill/DNS/RRset;

    .line 363
    .local v7, "set":Lorg/xbill/DNS/RRset;
    invoke-virtual {v7}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v8

    aget-object v9, v1, v3

    invoke-virtual {v9}, Lorg/xbill/DNS/Record;->getRRsetType()I

    move-result v9

    if-ne v8, v9, :cond_5f

    invoke-virtual {v7}, Lorg/xbill/DNS/RRset;->getDClass()I

    move-result v8

    aget-object v9, v1, v3

    invoke-virtual {v9}, Lorg/xbill/DNS/Record;->getDClass()I

    move-result v9

    if-ne v8, v9, :cond_5f

    invoke-virtual {v7}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v8

    invoke-virtual {v8, v4}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5f

    .line 367
    aget-object v8, v1, v3

    invoke-virtual {v7, v8}, Lorg/xbill/DNS/RRset;->addRR(Lorg/xbill/DNS/Record;)V

    .line 368
    const/4 v5, 0x0

    .line 369
    goto :goto_62

    .line 361
    .end local v7    # "set":Lorg/xbill/DNS/RRset;
    :cond_5f
    add-int/lit8 v6, v6, -0x1

    goto :goto_2e

    .line 373
    .end local v6    # "j":I
    :cond_62
    :goto_62
    if-eqz v5, :cond_71

    .line 374
    new-instance v6, Lorg/xbill/DNS/RRset;

    aget-object v7, v1, v3

    invoke-direct {v6, v7}, Lorg/xbill/DNS/RRset;-><init>(Lorg/xbill/DNS/Record;)V

    .line 375
    .local v6, "set":Lorg/xbill/DNS/RRset;
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 357
    .end local v4    # "name":Lorg/xbill/DNS/Name;
    .end local v5    # "newset":Z
    .end local v6    # "set":Lorg/xbill/DNS/RRset;
    :cond_71
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 379
    .end local v3    # "i":I
    :cond_74
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lorg/xbill/DNS/RRset;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/xbill/DNS/RRset;

    return-object v3
.end method

.method public getTSIG()Lorg/xbill/DNS/TSIGRecord;
    .registers 7

    .line 266
    iget-object v0, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Header;->getCount(I)I

    move-result v0

    .line 267
    .local v0, "count":I
    const/4 v2, 0x0

    if-nez v0, :cond_b

    .line 268
    return-object v2

    .line 269
    :cond_b
    iget-object v3, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v1, v3, v1

    .line 270
    .local v1, "l":Ljava/util/List;
    add-int/lit8 v3, v0, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/xbill/DNS/Record;

    .line 271
    .local v3, "rec":Lorg/xbill/DNS/Record;
    iget v4, v3, Lorg/xbill/DNS/Record;->type:I

    const/16 v5, 0xfa

    if-eq v4, v5, :cond_1e

    .line 272
    return-object v2

    .line 273
    :cond_1e
    move-object v2, v3

    check-cast v2, Lorg/xbill/DNS/TSIGRecord;

    return-object v2
.end method

.method public isSigned()Z
    .registers 4

    .line 282
    iget v0, p0, Lorg/xbill/DNS/Message;->tsigState:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_12

    iget v0, p0, Lorg/xbill/DNS/Message;->tsigState:I

    if-eq v0, v1, :cond_12

    iget v0, p0, Lorg/xbill/DNS/Message;->tsigState:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_10

    goto :goto_12

    :cond_10
    const/4 v1, 0x0

    nop

    :cond_12
    :goto_12
    return v1
.end method

.method public isVerified()Z
    .registers 3

    .line 293
    iget v0, p0, Lorg/xbill/DNS/Message;->tsigState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public numBytes()I
    .registers 2

    .line 529
    iget v0, p0, Lorg/xbill/DNS/Message;->size:I

    return v0
.end method

.method public removeAllRecords(I)V
    .registers 4
    .param p1, "section"    # I

    .line 187
    iget-object v0, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    .line 188
    iget-object v0, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/xbill/DNS/Header;->setCount(II)V

    .line 189
    return-void
.end method

.method public removeRecord(Lorg/xbill/DNS/Record;I)Z
    .registers 4
    .param p1, "r"    # Lorg/xbill/DNS/Record;
    .param p2, "section"    # I

    .line 172
    iget-object v0, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v0, v0, p2

    if-eqz v0, :cond_17

    iget-object v0, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v0, v0, p2

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 173
    iget-object v0, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    invoke-virtual {v0, p2}, Lorg/xbill/DNS/Header;->decCount(I)V

    .line 174
    const/4 v0, 0x1

    return v0

    .line 177
    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public sectionToString(I)Ljava/lang/String;
    .registers 8
    .param p1, "i"    # I

    .line 538
    const/4 v0, 0x3

    if-le p1, v0, :cond_5

    .line 539
    const/4 v0, 0x0

    return-object v0

    .line 541
    :cond_5
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 543
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0, p1}, Lorg/xbill/DNS/Message;->getSectionArray(I)[Lorg/xbill/DNS/Record;

    move-result-object v1

    .line 544
    .local v1, "records":[Lorg/xbill/DNS/Record;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_f
    array-length v3, v1

    if-ge v2, v3, :cond_6c

    .line 545
    aget-object v3, v1, v2

    .line 546
    .local v3, "rec":Lorg/xbill/DNS/Record;
    if-nez p1, :cond_61

    .line 547
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, ";;\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v5, v3, Lorg/xbill/DNS/Record;->name:Lorg/xbill/DNS/Name;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 548
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, ", type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v5, v3, Lorg/xbill/DNS/Record;->type:I

    invoke-static {v5}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 549
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, ", class = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v5, v3, Lorg/xbill/DNS/Record;->dclass:I

    invoke-static {v5}, Lorg/xbill/DNS/DClass;->string(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_64

    .line 552
    :cond_61
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 553
    :goto_64
    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 544
    .end local v3    # "rec":Lorg/xbill/DNS/Record;
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 555
    .end local v2    # "j":I
    :cond_6c
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public setHeader(Lorg/xbill/DNS/Header;)V
    .registers 2
    .param p1, "h"    # Lorg/xbill/DNS/Header;

    .line 140
    iput-object p1, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    .line 141
    return-void
.end method

.method public setTSIG(Lorg/xbill/DNS/TSIG;ILorg/xbill/DNS/TSIGRecord;)V
    .registers 4
    .param p1, "key"    # Lorg/xbill/DNS/TSIG;
    .param p2, "error"    # I
    .param p3, "querytsig"    # Lorg/xbill/DNS/TSIGRecord;

    .line 518
    iput-object p1, p0, Lorg/xbill/DNS/Message;->tsigkey:Lorg/xbill/DNS/TSIG;

    .line 519
    iput p2, p0, Lorg/xbill/DNS/Message;->tsigerror:I

    .line 520
    iput-object p3, p0, Lorg/xbill/DNS/Message;->querytsig:Lorg/xbill/DNS/TSIGRecord;

    .line 521
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 563
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 564
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lorg/xbill/DNS/Message;->getOPT()Lorg/xbill/DNS/OPTRecord;

    move-result-object v1

    .line 565
    .local v1, "opt":Lorg/xbill/DNS/OPTRecord;
    if-eqz v1, :cond_2a

    .line 566
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    invoke-virtual {p0}, Lorg/xbill/DNS/Message;->getRcode()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/xbill/DNS/Header;->toStringWithRcode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_40

    .line 568
    :cond_2a
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 569
    :goto_40
    invoke-virtual {p0}, Lorg/xbill/DNS/Message;->isSigned()Z

    move-result v2

    if-eqz v2, :cond_61

    .line 570
    const-string v2, ";; TSIG "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 571
    invoke-virtual {p0}, Lorg/xbill/DNS/Message;->isVerified()Z

    move-result v2

    if-eqz v2, :cond_57

    .line 572
    const-string v2, "ok"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5c

    .line 574
    :cond_57
    const-string v2, "invalid"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 575
    :goto_5c
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 577
    :cond_61
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_62
    const/4 v3, 0x4

    if-ge v2, v3, :cond_c4

    .line 578
    iget-object v3, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    invoke-virtual {v3}, Lorg/xbill/DNS/Header;->getOpcode()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_8c

    .line 579
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, ";; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v2}, Lorg/xbill/DNS/Section;->longString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, ":\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_a9

    .line 581
    :cond_8c
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, ";; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v2}, Lorg/xbill/DNS/Section;->updString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, ":\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 582
    :goto_a9
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v2}, Lorg/xbill/DNS/Message;->sectionToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 577
    add-int/lit8 v2, v2, 0x1

    goto :goto_62

    .line 584
    .end local v2    # "i":I
    :cond_c4
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, ";; Message size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/xbill/DNS/Message;->numBytes()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, " bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 585
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method toWire(Lorg/xbill/DNS/DNSOutput;)V
    .registers 7
    .param p1, "out"    # Lorg/xbill/DNS/DNSOutput;

    .line 384
    iget-object v0, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    invoke-virtual {v0, p1}, Lorg/xbill/DNS/Header;->toWire(Lorg/xbill/DNS/DNSOutput;)V

    .line 385
    new-instance v0, Lorg/xbill/DNS/Compression;

    invoke-direct {v0}, Lorg/xbill/DNS/Compression;-><init>()V

    .line 386
    .local v0, "c":Lorg/xbill/DNS/Compression;
    const/4 v1, 0x0

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    const/4 v3, 0x4

    if-ge v2, v3, :cond_34

    .line 387
    iget-object v3, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v3, v3, v2

    if-nez v3, :cond_16

    .line 388
    goto :goto_31

    .line 389
    :cond_16
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_17
    iget-object v4, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v4, v4, v2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_31

    .line 390
    iget-object v4, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v4, v4, v2

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/xbill/DNS/Record;

    .line 391
    .local v4, "rec":Lorg/xbill/DNS/Record;
    invoke-virtual {v4, p1, v2, v0}, Lorg/xbill/DNS/Record;->toWire(Lorg/xbill/DNS/DNSOutput;ILorg/xbill/DNS/Compression;)V

    .line 389
    .end local v4    # "rec":Lorg/xbill/DNS/Record;
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 386
    .end local v3    # "j":I
    :cond_31
    :goto_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 394
    .end local v2    # "i":I
    :cond_34
    return-void
.end method

.method public toWire()[B
    .registers 3

    .line 483
    new-instance v0, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 484
    .local v0, "out":Lorg/xbill/DNS/DNSOutput;
    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Message;->toWire(Lorg/xbill/DNS/DNSOutput;)V

    .line 485
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v1

    iput v1, p0, Lorg/xbill/DNS/Message;->size:I

    .line 486
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public toWire(I)[B
    .registers 4
    .param p1, "maxLength"    # I

    .line 504
    new-instance v0, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 505
    .local v0, "out":Lorg/xbill/DNS/DNSOutput;
    invoke-direct {p0, v0, p1}, Lorg/xbill/DNS/Message;->toWire(Lorg/xbill/DNS/DNSOutput;I)Z

    .line 506
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v1

    iput v1, p0, Lorg/xbill/DNS/Message;->size:I

    .line 507
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method
