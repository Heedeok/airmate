.class public final enum Ljavax/jmdns/impl/constants/DNSRecordClass;
.super Ljava/lang/Enum;
.source "DNSRecordClass.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljavax/jmdns/impl/constants/DNSRecordClass;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavax/jmdns/impl/constants/DNSRecordClass;

.field public static final enum CLASS_ANY:Ljavax/jmdns/impl/constants/DNSRecordClass;

.field public static final enum CLASS_CH:Ljavax/jmdns/impl/constants/DNSRecordClass;

.field public static final enum CLASS_CS:Ljavax/jmdns/impl/constants/DNSRecordClass;

.field public static final enum CLASS_HS:Ljavax/jmdns/impl/constants/DNSRecordClass;

.field public static final enum CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

.field public static final CLASS_MASK:I = 0x7fff

.field public static final enum CLASS_NONE:Ljavax/jmdns/impl/constants/DNSRecordClass;

.field public static final CLASS_UNIQUE:I = 0x8000

.field public static final enum CLASS_UNKNOWN:Ljavax/jmdns/impl/constants/DNSRecordClass;

.field public static final NOT_UNIQUE:Z = false

.field public static final UNIQUE:Z = true

.field private static logger:Ljava/util/logging/Logger;


# instance fields
.field private final _externalName:Ljava/lang/String;

.field private final _index:I


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 18
    new-instance v0, Ljavax/jmdns/impl/constants/DNSRecordClass;

    const-string v1, "CLASS_UNKNOWN"

    const-string v2, "?"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2, v3}, Ljavax/jmdns/impl/constants/DNSRecordClass;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_UNKNOWN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    .line 22
    new-instance v0, Ljavax/jmdns/impl/constants/DNSRecordClass;

    const-string v1, "CLASS_IN"

    const-string v2, "in"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2, v4}, Ljavax/jmdns/impl/constants/DNSRecordClass;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    .line 26
    new-instance v0, Ljavax/jmdns/impl/constants/DNSRecordClass;

    const-string v1, "CLASS_CS"

    const-string v2, "cs"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2, v5}, Ljavax/jmdns/impl/constants/DNSRecordClass;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_CS:Ljavax/jmdns/impl/constants/DNSRecordClass;

    .line 30
    new-instance v0, Ljavax/jmdns/impl/constants/DNSRecordClass;

    const-string v1, "CLASS_CH"

    const-string v2, "ch"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2, v6}, Ljavax/jmdns/impl/constants/DNSRecordClass;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_CH:Ljavax/jmdns/impl/constants/DNSRecordClass;

    .line 34
    new-instance v0, Ljavax/jmdns/impl/constants/DNSRecordClass;

    const-string v1, "CLASS_HS"

    const-string v2, "hs"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2, v7}, Ljavax/jmdns/impl/constants/DNSRecordClass;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_HS:Ljavax/jmdns/impl/constants/DNSRecordClass;

    .line 38
    new-instance v0, Ljavax/jmdns/impl/constants/DNSRecordClass;

    const-string v1, "CLASS_NONE"

    const-string v2, "none"

    const/4 v8, 0x5

    const/16 v9, 0xfe

    invoke-direct {v0, v1, v8, v2, v9}, Ljavax/jmdns/impl/constants/DNSRecordClass;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_NONE:Ljavax/jmdns/impl/constants/DNSRecordClass;

    .line 42
    new-instance v0, Ljavax/jmdns/impl/constants/DNSRecordClass;

    const-string v1, "CLASS_ANY"

    const-string v2, "any"

    const/4 v9, 0x6

    const/16 v10, 0xff

    invoke-direct {v0, v1, v9, v2, v10}, Ljavax/jmdns/impl/constants/DNSRecordClass;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_ANY:Ljavax/jmdns/impl/constants/DNSRecordClass;

    .line 14
    const/4 v0, 0x7

    new-array v0, v0, [Ljavax/jmdns/impl/constants/DNSRecordClass;

    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_UNKNOWN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    aput-object v1, v0, v3

    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    aput-object v1, v0, v4

    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_CS:Ljavax/jmdns/impl/constants/DNSRecordClass;

    aput-object v1, v0, v5

    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_CH:Ljavax/jmdns/impl/constants/DNSRecordClass;

    aput-object v1, v0, v6

    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_HS:Ljavax/jmdns/impl/constants/DNSRecordClass;

    aput-object v1, v0, v7

    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_NONE:Ljavax/jmdns/impl/constants/DNSRecordClass;

    aput-object v1, v0, v8

    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_ANY:Ljavax/jmdns/impl/constants/DNSRecordClass;

    aput-object v1, v0, v9

    sput-object v0, Ljavax/jmdns/impl/constants/DNSRecordClass;->$VALUES:[Ljavax/jmdns/impl/constants/DNSRecordClass;

    .line 44
    const-class v0, Ljavax/jmdns/impl/constants/DNSRecordClass;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljavax/jmdns/impl/constants/DNSRecordClass;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .registers 5
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 73
    iput-object p3, p0, Ljavax/jmdns/impl/constants/DNSRecordClass;->_externalName:Ljava/lang/String;

    .line 74
    iput p4, p0, Ljavax/jmdns/impl/constants/DNSRecordClass;->_index:I

    .line 75
    return-void
.end method

.method public static classForIndex(I)Ljavax/jmdns/impl/constants/DNSRecordClass;
    .registers 7
    .param p0, "index"    # I

    .line 125
    and-int/lit16 v0, p0, 0x7fff

    .line 126
    .local v0, "maskedIndex":I
    invoke-static {}, Ljavax/jmdns/impl/constants/DNSRecordClass;->values()[Ljavax/jmdns/impl/constants/DNSRecordClass;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v2, :cond_14

    aget-object v4, v1, v3

    .line 127
    .local v4, "aClass":Ljavax/jmdns/impl/constants/DNSRecordClass;
    iget v5, v4, Ljavax/jmdns/impl/constants/DNSRecordClass;->_index:I

    if-ne v5, v0, :cond_11

    return-object v4

    .line 126
    .end local v4    # "aClass":Ljavax/jmdns/impl/constants/DNSRecordClass;
    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 129
    :cond_14
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordClass;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find record class for index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 130
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_UNKNOWN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    return-object v1
.end method

.method public static classForName(Ljava/lang/String;)Ljavax/jmdns/impl/constants/DNSRecordClass;
    .registers 7
    .param p0, "name"    # Ljava/lang/String;

    .line 110
    if-eqz p0, :cond_1c

    .line 111
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "aName":Ljava/lang/String;
    invoke-static {}, Ljavax/jmdns/impl/constants/DNSRecordClass;->values()[Ljavax/jmdns/impl/constants/DNSRecordClass;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_1c

    aget-object v4, v1, v3

    .line 113
    .local v4, "aClass":Ljavax/jmdns/impl/constants/DNSRecordClass;
    iget-object v5, v4, Ljavax/jmdns/impl/constants/DNSRecordClass;->_externalName:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    return-object v4

    .line 112
    .end local v4    # "aClass":Ljavax/jmdns/impl/constants/DNSRecordClass;
    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 116
    .end local v0    # "aName":Ljava/lang/String;
    :cond_1c
    sget-object v0, Ljavax/jmdns/impl/constants/DNSRecordClass;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find record class for name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 117
    sget-object v0, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_UNKNOWN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ljavax/jmdns/impl/constants/DNSRecordClass;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 14
    const-class v0, Ljavax/jmdns/impl/constants/DNSRecordClass;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/impl/constants/DNSRecordClass;

    return-object v0
.end method

.method public static values()[Ljavax/jmdns/impl/constants/DNSRecordClass;
    .registers 1

    .line 14
    sget-object v0, Ljavax/jmdns/impl/constants/DNSRecordClass;->$VALUES:[Ljavax/jmdns/impl/constants/DNSRecordClass;

    invoke-virtual {v0}, [Ljavax/jmdns/impl/constants/DNSRecordClass;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/jmdns/impl/constants/DNSRecordClass;

    return-object v0
.end method


# virtual methods
.method public externalName()Ljava/lang/String;
    .registers 2

    .line 83
    iget-object v0, p0, Ljavax/jmdns/impl/constants/DNSRecordClass;->_externalName:Ljava/lang/String;

    return-object v0
.end method

.method public indexValue()I
    .registers 2

    .line 92
    iget v0, p0, Ljavax/jmdns/impl/constants/DNSRecordClass;->_index:I

    return v0
.end method

.method public isUnique(I)Z
    .registers 3
    .param p1, "index"    # I

    .line 102
    sget-object v0, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_UNKNOWN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    if-eq p0, v0, :cond_c

    const v0, 0x8000

    and-int/2addr v0, p1

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/constants/DNSRecordClass;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljavax/jmdns/impl/constants/DNSRecordClass;->indexValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
