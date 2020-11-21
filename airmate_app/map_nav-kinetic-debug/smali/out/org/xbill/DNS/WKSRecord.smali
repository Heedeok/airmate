.class public Lorg/xbill/DNS/WKSRecord;
.super Lorg/xbill/DNS/Record;
.source "WKSRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/WKSRecord$Service;,
        Lorg/xbill/DNS/WKSRecord$Protocol;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7e58d404d2af4f3dL


# instance fields
.field private address:[B

.field private protocol:I

.field private services:[I


# direct methods
.method constructor <init>()V
    .registers 1

    .line 581
    invoke-direct {p0}, Lorg/xbill/DNS/Record;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;IJLjava/net/InetAddress;I[I)V
    .registers 14
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "dclass"    # I
    .param p3, "ttl"    # J
    .param p5, "address"    # Ljava/net/InetAddress;
    .param p6, "protocol"    # I
    .param p7, "services"    # [I

    .line 598
    const/16 v2, 0xb

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/xbill/DNS/Record;-><init>(Lorg/xbill/DNS/Name;IIJ)V

    .line 599
    invoke-static {p5}, Lorg/xbill/DNS/Address;->familyOf(Ljava/net/InetAddress;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3e

    .line 601
    invoke-virtual {p5}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/WKSRecord;->address:[B

    .line 602
    const-string v0, "protocol"

    invoke-static {v0, p6}, Lorg/xbill/DNS/WKSRecord;->checkU8(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/WKSRecord;->protocol:I

    .line 603
    const/4 v0, 0x0

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_20
    array-length v2, p7

    if-ge v1, v2, :cond_2d

    .line 604
    const-string v2, "service"

    aget v3, p7, v1

    invoke-static {v2, v3}, Lorg/xbill/DNS/WKSRecord;->checkU16(Ljava/lang/String;I)I

    .line 603
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 606
    .end local v1    # "i":I
    :cond_2d
    array-length v1, p7

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/xbill/DNS/WKSRecord;->services:[I

    .line 607
    iget-object v1, p0, Lorg/xbill/DNS/WKSRecord;->services:[I

    array-length v2, p7

    invoke-static {p7, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 608
    iget-object v0, p0, Lorg/xbill/DNS/WKSRecord;->services:[I

    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 609
    return-void

    .line 600
    :cond_3e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid IPv4 address"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getAddress()Ljava/net/InetAddress;
    .registers 3

    .line 684
    :try_start_0
    iget-object v0, p0, Lorg/xbill/DNS/WKSRecord;->address:[B

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0
    :try_end_6
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 685
    :catch_7
    move-exception v0

    .line 686
    .local v0, "e":Ljava/net/UnknownHostException;
    const/4 v1, 0x0

    return-object v1
.end method

.method getObject()Lorg/xbill/DNS/Record;
    .registers 2

    .line 585
    new-instance v0, Lorg/xbill/DNS/WKSRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/WKSRecord;-><init>()V

    return-object v0
.end method

.method public getProtocol()I
    .registers 2

    .line 695
    iget v0, p0, Lorg/xbill/DNS/WKSRecord;->protocol:I

    return v0
.end method

.method public getServices()[I
    .registers 2

    .line 703
    iget-object v0, p0, Lorg/xbill/DNS/WKSRecord;->services:[I

    return-object v0
.end method

.method rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V
    .registers 9
    .param p1, "st"    # Lorg/xbill/DNS/Tokenizer;
    .param p2, "origin"    # Lorg/xbill/DNS/Name;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 633
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getString()Ljava/lang/String;

    move-result-object v0

    .line 634
    .local v0, "s":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v1

    iput-object v1, p0, Lorg/xbill/DNS/WKSRecord;->address:[B

    .line 635
    iget-object v1, p0, Lorg/xbill/DNS/WKSRecord;->address:[B

    if-eqz v1, :cond_90

    .line 638
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getString()Ljava/lang/String;

    move-result-object v0

    .line 639
    invoke-static {v0}, Lorg/xbill/DNS/WKSRecord$Protocol;->value(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/xbill/DNS/WKSRecord;->protocol:I

    .line 640
    iget v1, p0, Lorg/xbill/DNS/WKSRecord;->protocol:I

    if-ltz v1, :cond_7a

    .line 644
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 646
    .local v1, "list":Ljava/util/List;
    :goto_22
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v2

    .line 647
    .local v2, "t":Lorg/xbill/DNS/Tokenizer$Token;
    invoke-virtual {v2}, Lorg/xbill/DNS/Tokenizer$Token;->isString()Z

    move-result v3

    if-nez v3, :cond_51

    .line 648
    nop

    .line 656
    .end local v2    # "t":Lorg/xbill/DNS/Tokenizer$Token;
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->unget()V

    .line 657
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/xbill/DNS/WKSRecord;->services:[I

    .line 658
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_39
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_50

    .line 659
    iget-object v3, p0, Lorg/xbill/DNS/WKSRecord;->services:[I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v3, v2

    .line 658
    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    .line 661
    .end local v2    # "i":I
    :cond_50
    return-void

    .line 649
    .local v2, "t":Lorg/xbill/DNS/Tokenizer$Token;
    :cond_51
    iget-object v3, v2, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    invoke-static {v3}, Lorg/xbill/DNS/WKSRecord$Service;->value(Ljava/lang/String;)I

    move-result v3

    .line 650
    .local v3, "service":I
    if-ltz v3, :cond_62

    .line 654
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 655
    .end local v2    # "t":Lorg/xbill/DNS/Tokenizer$Token;
    .end local v3    # "service":I
    goto :goto_22

    .line 651
    .restart local v2    # "t":Lorg/xbill/DNS/Tokenizer$Token;
    .restart local v3    # "service":I
    :cond_62
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Invalid TCP/UDP service: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v5, v2, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v4

    throw v4

    .line 641
    .end local v1    # "list":Ljava/util/List;
    .end local v2    # "t":Lorg/xbill/DNS/Tokenizer$Token;
    .end local v3    # "service":I
    :cond_7a
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid IP protocol: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v1

    throw v1

    .line 636
    :cond_90
    const-string v1, "invalid address"

    invoke-virtual {p1, v1}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v1

    throw v1
.end method

.method rrFromWire(Lorg/xbill/DNS/DNSInput;)V
    .registers 10
    .param p1, "in"    # Lorg/xbill/DNS/DNSInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 613
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSInput;->readByteArray(I)[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/WKSRecord;->address:[B

    .line 614
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/WKSRecord;->protocol:I

    .line 615
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readByteArray()[B

    move-result-object v0

    .line 616
    .local v0, "array":[B
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 617
    .local v1, "list":Ljava/util/List;
    const/4 v2, 0x0

    const/4 v3, 0x0

    .local v3, "i":I
    :goto_18
    array-length v4, v0

    if-ge v3, v4, :cond_3d

    .line 618
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1c
    const/16 v5, 0x8

    if-ge v4, v5, :cond_3a

    .line 619
    aget-byte v5, v0, v3

    and-int/lit16 v5, v5, 0xff

    .line 620
    .local v5, "octet":I
    rsub-int/lit8 v6, v4, 0x7

    const/4 v7, 0x1

    shl-int v6, v7, v6

    and-int/2addr v6, v5

    if-eqz v6, :cond_37

    .line 621
    new-instance v6, Ljava/lang/Integer;

    mul-int/lit8 v7, v3, 0x8

    add-int/2addr v7, v4

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 618
    .end local v5    # "octet":I
    :cond_37
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 617
    .end local v4    # "j":I
    :cond_3a
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 625
    .end local v3    # "i":I
    :cond_3d
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [I

    iput-object v3, p0, Lorg/xbill/DNS/WKSRecord;->services:[I

    .line 626
    nop

    .local v2, "i":I
    :goto_46
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5d

    .line 627
    iget-object v3, p0, Lorg/xbill/DNS/WKSRecord;->services:[I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v3, v2

    .line 626
    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    .line 629
    .end local v2    # "i":I
    :cond_5d
    return-void
.end method

.method rrToString()Ljava/lang/String;
    .registers 5

    .line 668
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 669
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lorg/xbill/DNS/WKSRecord;->address:[B

    invoke-static {v1}, Lorg/xbill/DNS/Address;->toDottedQuad([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 670
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 671
    iget v1, p0, Lorg/xbill/DNS/WKSRecord;->protocol:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 672
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_19
    iget-object v2, p0, Lorg/xbill/DNS/WKSRecord;->services:[I

    array-length v2, v2

    if-ge v1, v2, :cond_39

    .line 673
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/xbill/DNS/WKSRecord;->services:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 672
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 675
    .end local v1    # "i":I
    :cond_39
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V
    .registers 12
    .param p1, "out"    # Lorg/xbill/DNS/DNSOutput;
    .param p2, "c"    # Lorg/xbill/DNS/Compression;
    .param p3, "canonical"    # Z

    .line 708
    iget-object v0, p0, Lorg/xbill/DNS/WKSRecord;->address:[B

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 709
    iget v0, p0, Lorg/xbill/DNS/WKSRecord;->protocol:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 710
    iget-object v0, p0, Lorg/xbill/DNS/WKSRecord;->services:[I

    iget-object v1, p0, Lorg/xbill/DNS/WKSRecord;->services:[I

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget v0, v0, v1

    .line 711
    .local v0, "highestPort":I
    div-int/lit8 v1, v0, 0x8

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 712
    .local v1, "array":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_19
    iget-object v4, p0, Lorg/xbill/DNS/WKSRecord;->services:[I

    array-length v4, v4

    if-ge v3, v4, :cond_33

    .line 713
    iget-object v4, p0, Lorg/xbill/DNS/WKSRecord;->services:[I

    aget v4, v4, v3

    .line 714
    .local v4, "port":I
    div-int/lit8 v5, v4, 0x8

    aget-byte v6, v1, v5

    rem-int/lit8 v7, v4, 0x8

    rsub-int/lit8 v7, v7, 0x7

    shl-int v7, v2, v7

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 712
    .end local v4    # "port":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 716
    .end local v3    # "i":I
    :cond_33
    invoke-virtual {p1, v1}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 717
    return-void
.end method
