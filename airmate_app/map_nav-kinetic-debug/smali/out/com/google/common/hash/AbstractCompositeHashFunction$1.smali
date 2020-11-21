.class Lcom/google/common/hash/AbstractCompositeHashFunction$1;
.super Ljava/lang/Object;
.source "AbstractCompositeHashFunction.java"

# interfaces
.implements Lcom/google/common/hash/Hasher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/hash/AbstractCompositeHashFunction;->newHasher()Lcom/google/common/hash/Hasher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/hash/AbstractCompositeHashFunction;

.field final synthetic val$hashers:[Lcom/google/common/hash/Hasher;


# direct methods
.method constructor <init>(Lcom/google/common/hash/AbstractCompositeHashFunction;[Lcom/google/common/hash/Hasher;)V
    .registers 3

    .line 35
    iput-object p1, p0, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->this$0:Lcom/google/common/hash/AbstractCompositeHashFunction;

    iput-object p2, p0, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->val$hashers:[Lcom/google/common/hash/Hasher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hash()Lcom/google/common/hash/HashCode;
    .registers 3

    .line 128
    iget-object v0, p0, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->this$0:Lcom/google/common/hash/AbstractCompositeHashFunction;

    iget-object v1, p0, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->val$hashers:[Lcom/google/common/hash/Hasher;

    invoke-virtual {v0, v1}, Lcom/google/common/hash/AbstractCompositeHashFunction;->makeHash([Lcom/google/common/hash/Hasher;)Lcom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method

.method public putBoolean(Z)Lcom/google/common/hash/Hasher;
    .registers 6
    .param p1, "b"    # Z

    .line 93
    iget-object v0, p0, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->val$hashers:[Lcom/google/common/hash/Hasher;

    .local v0, "arr$":[Lcom/google/common/hash/Hasher;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 94
    .local v3, "hasher":Lcom/google/common/hash/Hasher;
    invoke-interface {v3, p1}, Lcom/google/common/hash/Hasher;->putBoolean(Z)Lcom/google/common/hash/Hasher;

    .line 93
    .end local v3    # "hasher":Lcom/google/common/hash/Hasher;
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 96
    .end local v0    # "arr$":[Lcom/google/common/hash/Hasher;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_e
    return-object p0
.end method

.method public bridge synthetic putBoolean(Z)Lcom/google/common/hash/PrimitiveSink;
    .registers 3
    .param p1, "x0"    # Z

    .line 35
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->putBoolean(Z)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public putByte(B)Lcom/google/common/hash/Hasher;
    .registers 6
    .param p1, "b"    # B

    .line 37
    iget-object v0, p0, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->val$hashers:[Lcom/google/common/hash/Hasher;

    .local v0, "arr$":[Lcom/google/common/hash/Hasher;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 38
    .local v3, "hasher":Lcom/google/common/hash/Hasher;
    invoke-interface {v3, p1}, Lcom/google/common/hash/Hasher;->putByte(B)Lcom/google/common/hash/Hasher;

    .line 37
    .end local v3    # "hasher":Lcom/google/common/hash/Hasher;
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 40
    .end local v0    # "arr$":[Lcom/google/common/hash/Hasher;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_e
    return-object p0
.end method

.method public bridge synthetic putByte(B)Lcom/google/common/hash/PrimitiveSink;
    .registers 3
    .param p1, "x0"    # B

    .line 35
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->putByte(B)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public putBytes([B)Lcom/google/common/hash/Hasher;
    .registers 6
    .param p1, "bytes"    # [B

    .line 44
    iget-object v0, p0, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->val$hashers:[Lcom/google/common/hash/Hasher;

    .local v0, "arr$":[Lcom/google/common/hash/Hasher;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 45
    .local v3, "hasher":Lcom/google/common/hash/Hasher;
    invoke-interface {v3, p1}, Lcom/google/common/hash/Hasher;->putBytes([B)Lcom/google/common/hash/Hasher;

    .line 44
    .end local v3    # "hasher":Lcom/google/common/hash/Hasher;
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 47
    .end local v0    # "arr$":[Lcom/google/common/hash/Hasher;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_e
    return-object p0
.end method

.method public putBytes([BII)Lcom/google/common/hash/Hasher;
    .registers 8
    .param p1, "bytes"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 51
    iget-object v0, p0, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->val$hashers:[Lcom/google/common/hash/Hasher;

    .local v0, "arr$":[Lcom/google/common/hash/Hasher;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 52
    .local v3, "hasher":Lcom/google/common/hash/Hasher;
    invoke-interface {v3, p1, p2, p3}, Lcom/google/common/hash/Hasher;->putBytes([BII)Lcom/google/common/hash/Hasher;

    .line 51
    .end local v3    # "hasher":Lcom/google/common/hash/Hasher;
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 54
    .end local v0    # "arr$":[Lcom/google/common/hash/Hasher;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_e
    return-object p0
.end method

.method public bridge synthetic putBytes([B)Lcom/google/common/hash/PrimitiveSink;
    .registers 3
    .param p1, "x0"    # [B

    .line 35
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->putBytes([B)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic putBytes([BII)Lcom/google/common/hash/PrimitiveSink;
    .registers 5
    .param p1, "x0"    # [B
    .param p2, "x1"    # I
    .param p3, "x2"    # I

    .line 35
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->putBytes([BII)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public putChar(C)Lcom/google/common/hash/Hasher;
    .registers 6
    .param p1, "c"    # C

    .line 100
    iget-object v0, p0, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->val$hashers:[Lcom/google/common/hash/Hasher;

    .local v0, "arr$":[Lcom/google/common/hash/Hasher;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 101
    .local v3, "hasher":Lcom/google/common/hash/Hasher;
    invoke-interface {v3, p1}, Lcom/google/common/hash/Hasher;->putChar(C)Lcom/google/common/hash/Hasher;

    .line 100
    .end local v3    # "hasher":Lcom/google/common/hash/Hasher;
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 103
    .end local v0    # "arr$":[Lcom/google/common/hash/Hasher;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_e
    return-object p0
.end method

.method public bridge synthetic putChar(C)Lcom/google/common/hash/PrimitiveSink;
    .registers 3
    .param p1, "x0"    # C

    .line 35
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->putChar(C)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public putDouble(D)Lcom/google/common/hash/Hasher;
    .registers 7
    .param p1, "d"    # D

    .line 86
    iget-object v0, p0, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->val$hashers:[Lcom/google/common/hash/Hasher;

    .local v0, "arr$":[Lcom/google/common/hash/Hasher;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 87
    .local v3, "hasher":Lcom/google/common/hash/Hasher;
    invoke-interface {v3, p1, p2}, Lcom/google/common/hash/Hasher;->putDouble(D)Lcom/google/common/hash/Hasher;

    .line 86
    .end local v3    # "hasher":Lcom/google/common/hash/Hasher;
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 89
    .end local v0    # "arr$":[Lcom/google/common/hash/Hasher;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_e
    return-object p0
.end method

.method public bridge synthetic putDouble(D)Lcom/google/common/hash/PrimitiveSink;
    .registers 4
    .param p1, "x0"    # D

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->putDouble(D)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public putFloat(F)Lcom/google/common/hash/Hasher;
    .registers 6
    .param p1, "f"    # F

    .line 79
    iget-object v0, p0, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->val$hashers:[Lcom/google/common/hash/Hasher;

    .local v0, "arr$":[Lcom/google/common/hash/Hasher;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 80
    .local v3, "hasher":Lcom/google/common/hash/Hasher;
    invoke-interface {v3, p1}, Lcom/google/common/hash/Hasher;->putFloat(F)Lcom/google/common/hash/Hasher;

    .line 79
    .end local v3    # "hasher":Lcom/google/common/hash/Hasher;
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 82
    .end local v0    # "arr$":[Lcom/google/common/hash/Hasher;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_e
    return-object p0
.end method

.method public bridge synthetic putFloat(F)Lcom/google/common/hash/PrimitiveSink;
    .registers 3
    .param p1, "x0"    # F

    .line 35
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->putFloat(F)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public putInt(I)Lcom/google/common/hash/Hasher;
    .registers 6
    .param p1, "i"    # I

    .line 65
    iget-object v0, p0, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->val$hashers:[Lcom/google/common/hash/Hasher;

    .local v0, "arr$":[Lcom/google/common/hash/Hasher;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 66
    .local v3, "hasher":Lcom/google/common/hash/Hasher;
    invoke-interface {v3, p1}, Lcom/google/common/hash/Hasher;->putInt(I)Lcom/google/common/hash/Hasher;

    .line 65
    .end local v3    # "hasher":Lcom/google/common/hash/Hasher;
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 68
    .end local v0    # "arr$":[Lcom/google/common/hash/Hasher;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_e
    return-object p0
.end method

.method public bridge synthetic putInt(I)Lcom/google/common/hash/PrimitiveSink;
    .registers 3
    .param p1, "x0"    # I

    .line 35
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->putInt(I)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public putLong(J)Lcom/google/common/hash/Hasher;
    .registers 7
    .param p1, "l"    # J

    .line 72
    iget-object v0, p0, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->val$hashers:[Lcom/google/common/hash/Hasher;

    .local v0, "arr$":[Lcom/google/common/hash/Hasher;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 73
    .local v3, "hasher":Lcom/google/common/hash/Hasher;
    invoke-interface {v3, p1, p2}, Lcom/google/common/hash/Hasher;->putLong(J)Lcom/google/common/hash/Hasher;

    .line 72
    .end local v3    # "hasher":Lcom/google/common/hash/Hasher;
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 75
    .end local v0    # "arr$":[Lcom/google/common/hash/Hasher;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_e
    return-object p0
.end method

.method public bridge synthetic putLong(J)Lcom/google/common/hash/PrimitiveSink;
    .registers 4
    .param p1, "x0"    # J

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->putLong(J)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public putObject(Ljava/lang/Object;Lcom/google/common/hash/Funnel;)Lcom/google/common/hash/Hasher;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/common/hash/Funnel<",
            "-TT;>;)",
            "Lcom/google/common/hash/Hasher;"
        }
    .end annotation

    .line 121
    .local p1, "instance":Ljava/lang/Object;, "TT;"
    .local p2, "funnel":Lcom/google/common/hash/Funnel;, "Lcom/google/common/hash/Funnel<-TT;>;"
    iget-object v0, p0, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->val$hashers:[Lcom/google/common/hash/Hasher;

    .local v0, "arr$":[Lcom/google/common/hash/Hasher;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 122
    .local v3, "hasher":Lcom/google/common/hash/Hasher;
    invoke-interface {v3, p1, p2}, Lcom/google/common/hash/Hasher;->putObject(Ljava/lang/Object;Lcom/google/common/hash/Funnel;)Lcom/google/common/hash/Hasher;

    .line 121
    .end local v3    # "hasher":Lcom/google/common/hash/Hasher;
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 124
    .end local v0    # "arr$":[Lcom/google/common/hash/Hasher;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_e
    return-object p0
.end method

.method public putShort(S)Lcom/google/common/hash/Hasher;
    .registers 6
    .param p1, "s"    # S

    .line 58
    iget-object v0, p0, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->val$hashers:[Lcom/google/common/hash/Hasher;

    .local v0, "arr$":[Lcom/google/common/hash/Hasher;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 59
    .local v3, "hasher":Lcom/google/common/hash/Hasher;
    invoke-interface {v3, p1}, Lcom/google/common/hash/Hasher;->putShort(S)Lcom/google/common/hash/Hasher;

    .line 58
    .end local v3    # "hasher":Lcom/google/common/hash/Hasher;
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 61
    .end local v0    # "arr$":[Lcom/google/common/hash/Hasher;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_e
    return-object p0
.end method

.method public bridge synthetic putShort(S)Lcom/google/common/hash/PrimitiveSink;
    .registers 3
    .param p1, "x0"    # S

    .line 35
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->putShort(S)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public putString(Ljava/lang/CharSequence;)Lcom/google/common/hash/Hasher;
    .registers 6
    .param p1, "chars"    # Ljava/lang/CharSequence;

    .line 107
    iget-object v0, p0, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->val$hashers:[Lcom/google/common/hash/Hasher;

    .local v0, "arr$":[Lcom/google/common/hash/Hasher;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 108
    .local v3, "hasher":Lcom/google/common/hash/Hasher;
    invoke-interface {v3, p1}, Lcom/google/common/hash/Hasher;->putString(Ljava/lang/CharSequence;)Lcom/google/common/hash/Hasher;

    .line 107
    .end local v3    # "hasher":Lcom/google/common/hash/Hasher;
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 110
    .end local v0    # "arr$":[Lcom/google/common/hash/Hasher;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_e
    return-object p0
.end method

.method public putString(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/common/hash/Hasher;
    .registers 7
    .param p1, "chars"    # Ljava/lang/CharSequence;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .line 114
    iget-object v0, p0, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->val$hashers:[Lcom/google/common/hash/Hasher;

    .local v0, "arr$":[Lcom/google/common/hash/Hasher;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 115
    .local v3, "hasher":Lcom/google/common/hash/Hasher;
    invoke-interface {v3, p1, p2}, Lcom/google/common/hash/Hasher;->putString(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/common/hash/Hasher;

    .line 114
    .end local v3    # "hasher":Lcom/google/common/hash/Hasher;
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 117
    .end local v0    # "arr$":[Lcom/google/common/hash/Hasher;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_e
    return-object p0
.end method

.method public bridge synthetic putString(Ljava/lang/CharSequence;)Lcom/google/common/hash/PrimitiveSink;
    .registers 3
    .param p1, "x0"    # Ljava/lang/CharSequence;

    .line 35
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->putString(Ljava/lang/CharSequence;)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic putString(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/common/hash/PrimitiveSink;
    .registers 4
    .param p1, "x0"    # Ljava/lang/CharSequence;
    .param p2, "x1"    # Ljava/nio/charset/Charset;

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->putString(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method
