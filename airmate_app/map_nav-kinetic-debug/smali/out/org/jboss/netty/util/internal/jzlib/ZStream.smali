.class public final Lorg/jboss/netty/util/internal/jzlib/ZStream;
.super Ljava/lang/Object;
.source "ZStream.java"


# instance fields
.field adler:J

.field public avail_in:I

.field public avail_out:I

.field crc32:I

.field dstate:Lorg/jboss/netty/util/internal/jzlib/Deflate;

.field istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

.field public msg:Ljava/lang/String;

.field public next_in:[B

.field public next_in_index:I

.field public next_out:[B

.field public next_out_index:I

.field public total_in:J

.field public total_out:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    return-void
.end method


# virtual methods
.method public deflate(I)I
    .registers 3
    .param p1, "flush"    # I

    .line 137
    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->dstate:Lorg/jboss/netty/util/internal/jzlib/Deflate;

    if-nez v0, :cond_6

    .line 138
    const/4 v0, -0x2

    return v0

    .line 140
    :cond_6
    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->dstate:Lorg/jboss/netty/util/internal/jzlib/Deflate;

    invoke-virtual {v0, p0, p1}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->deflate(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v0

    return v0
.end method

.method public deflateEnd()I
    .registers 3

    .line 144
    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->dstate:Lorg/jboss/netty/util/internal/jzlib/Deflate;

    if-nez v0, :cond_6

    .line 145
    const/4 v0, -0x2

    return v0

    .line 147
    :cond_6
    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->dstate:Lorg/jboss/netty/util/internal/jzlib/Deflate;

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->deflateEnd()I

    move-result v0

    .line 148
    .local v0, "ret":I
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->dstate:Lorg/jboss/netty/util/internal/jzlib/Deflate;

    .line 149
    return v0
.end method

.method public deflateInit(I)I
    .registers 3
    .param p1, "level"    # I

    .line 116
    const/16 v0, 0xf

    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/util/internal/jzlib/ZStream;->deflateInit(II)I

    move-result v0

    return v0
.end method

.method public deflateInit(II)I
    .registers 4
    .param p1, "level"    # I
    .param p2, "bits"    # I

    .line 124
    sget-object v0, Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;->ZLIB:Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;

    invoke-virtual {p0, p1, p2, v0}, Lorg/jboss/netty/util/internal/jzlib/ZStream;->deflateInit(IILjava/lang/Enum;)I

    move-result v0

    return v0
.end method

.method public deflateInit(IIILjava/lang/Enum;)I
    .registers 12
    .param p1, "level"    # I
    .param p2, "bits"    # I
    .param p3, "memLevel"    # I
    .param p4, "wrapperType"    # Ljava/lang/Enum;

    .line 132
    new-instance v0, Lorg/jboss/netty/util/internal/jzlib/Deflate;

    invoke-direct {v0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->dstate:Lorg/jboss/netty/util/internal/jzlib/Deflate;

    .line 133
    iget-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->dstate:Lorg/jboss/netty/util/internal/jzlib/Deflate;

    move-object v6, p4

    check-cast v6, Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v1 .. v6}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->deflateInit(Lorg/jboss/netty/util/internal/jzlib/ZStream;IIILorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;)I

    move-result v0

    return v0
.end method

.method public deflateInit(IILjava/lang/Enum;)I
    .registers 5
    .param p1, "level"    # I
    .param p2, "bits"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/Enum<",
            "*>;)I"
        }
    .end annotation

    .line 128
    .local p3, "wrapperType":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    const/16 v0, 0x8

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/jboss/netty/util/internal/jzlib/ZStream;->deflateInit(IIILjava/lang/Enum;)I

    move-result v0

    return v0
.end method

.method public deflateInit(ILjava/lang/Enum;)I
    .registers 4
    .param p1, "level"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Enum<",
            "*>;)I"
        }
    .end annotation

    .line 120
    .local p2, "wrapperType":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    const/16 v0, 0xf

    invoke-virtual {p0, p1, v0, p2}, Lorg/jboss/netty/util/internal/jzlib/ZStream;->deflateInit(IILjava/lang/Enum;)I

    move-result v0

    return v0
.end method

.method public deflateParams(II)I
    .registers 4
    .param p1, "level"    # I
    .param p2, "strategy"    # I

    .line 153
    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->dstate:Lorg/jboss/netty/util/internal/jzlib/Deflate;

    if-nez v0, :cond_6

    .line 154
    const/4 v0, -0x2

    return v0

    .line 156
    :cond_6
    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->dstate:Lorg/jboss/netty/util/internal/jzlib/Deflate;

    invoke-virtual {v0, p0, p1, p2}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->deflateParams(Lorg/jboss/netty/util/internal/jzlib/ZStream;II)I

    move-result v0

    return v0
.end method

.method public deflateSetDictionary([BI)I
    .registers 4
    .param p1, "dictionary"    # [B
    .param p2, "dictLength"    # I

    .line 160
    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->dstate:Lorg/jboss/netty/util/internal/jzlib/Deflate;

    if-nez v0, :cond_6

    .line 161
    const/4 v0, -0x2

    return v0

    .line 163
    :cond_6
    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->dstate:Lorg/jboss/netty/util/internal/jzlib/Deflate;

    invoke-virtual {v0, p0, p1, p2}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->deflateSetDictionary(Lorg/jboss/netty/util/internal/jzlib/ZStream;[BI)I

    move-result v0

    return v0
.end method

.method flush_pending()V
    .registers 6

    .line 171
    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->dstate:Lorg/jboss/netty/util/internal/jzlib/Deflate;

    iget v0, v0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending:I

    .line 173
    .local v0, "len":I
    iget v1, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_out:I

    if-le v0, v1, :cond_a

    .line 174
    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_out:I

    .line 176
    :cond_a
    if-nez v0, :cond_d

    .line 177
    return-void

    .line 180
    :cond_d
    iget-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->dstate:Lorg/jboss/netty/util/internal/jzlib/Deflate;

    iget-object v1, v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending_buf:[B

    array-length v1, v1

    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->dstate:Lorg/jboss/netty/util/internal/jzlib/Deflate;

    iget v2, v2, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending_out:I

    if-le v1, v2, :cond_33

    iget-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out:[B

    array-length v1, v1

    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out_index:I

    if-le v1, v2, :cond_33

    iget-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->dstate:Lorg/jboss/netty/util/internal/jzlib/Deflate;

    iget-object v1, v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending_buf:[B

    array-length v1, v1

    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->dstate:Lorg/jboss/netty/util/internal/jzlib/Deflate;

    iget v2, v2, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending_out:I

    add-int/2addr v2, v0

    if-lt v1, v2, :cond_33

    iget-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out:[B

    array-length v1, v1

    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out_index:I

    add-int/2addr v2, v0

    if-ge v1, v2, :cond_8a

    .line 184
    :cond_33
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->dstate:Lorg/jboss/netty/util/internal/jzlib/Deflate;

    iget-object v3, v3, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending_buf:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->dstate:Lorg/jboss/netty/util/internal/jzlib/Deflate;

    iget v3, v3, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending_out:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out_index:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 187
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "avail_out="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_out:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 190
    :cond_8a
    iget-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->dstate:Lorg/jboss/netty/util/internal/jzlib/Deflate;

    iget-object v1, v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending_buf:[B

    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->dstate:Lorg/jboss/netty/util/internal/jzlib/Deflate;

    iget v2, v2, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending_out:I

    iget-object v3, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out:[B

    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out_index:I

    invoke-static {v1, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 193
    iget v1, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out_index:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out_index:I

    .line 194
    iget-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->dstate:Lorg/jboss/netty/util/internal/jzlib/Deflate;

    iget v2, v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending_out:I

    add-int/2addr v2, v0

    iput v2, v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending_out:I

    .line 195
    iget-wide v1, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_out:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_out:J

    .line 196
    iget v1, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_out:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_out:I

    .line 197
    iget-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->dstate:Lorg/jboss/netty/util/internal/jzlib/Deflate;

    iget v2, v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending:I

    sub-int/2addr v2, v0

    iput v2, v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending:I

    .line 198
    iget-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->dstate:Lorg/jboss/netty/util/internal/jzlib/Deflate;

    iget v1, v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending:I

    if-nez v1, :cond_c2

    .line 199
    iget-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->dstate:Lorg/jboss/netty/util/internal/jzlib/Deflate;

    const/4 v2, 0x0

    iput v2, v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending_out:I

    .line 201
    :cond_c2
    return-void
.end method

.method public free()V
    .registers 2

    .line 236
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    .line 237
    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out:[B

    .line 238
    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 239
    return-void
.end method

.method public inflate(I)I
    .registers 3
    .param p1, "f"    # I

    .line 86
    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    if-nez v0, :cond_6

    .line 87
    const/4 v0, -0x2

    return v0

    .line 89
    :cond_6
    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    invoke-virtual {v0, p0, p1}, Lorg/jboss/netty/util/internal/jzlib/Inflate;->inflate(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v0

    return v0
.end method

.method public inflateEnd()I
    .registers 3

    .line 93
    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    if-nez v0, :cond_6

    .line 94
    const/4 v0, -0x2

    return v0

    .line 96
    :cond_6
    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    invoke-virtual {v0, p0}, Lorg/jboss/netty/util/internal/jzlib/Inflate;->inflateEnd(Lorg/jboss/netty/util/internal/jzlib/ZStream;)I

    move-result v0

    .line 97
    .local v0, "ret":I
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    .line 98
    return v0
.end method

.method public inflateInit()I
    .registers 2

    .line 69
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lorg/jboss/netty/util/internal/jzlib/ZStream;->inflateInit(I)I

    move-result v0

    return v0
.end method

.method public inflateInit(I)I
    .registers 3
    .param p1, "w"    # I

    .line 77
    sget-object v0, Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;->ZLIB:Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;

    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/util/internal/jzlib/ZStream;->inflateInit(ILjava/lang/Enum;)I

    move-result v0

    return v0
.end method

.method public inflateInit(ILjava/lang/Enum;)I
    .registers 5
    .param p1, "w"    # I
    .param p2, "wrapperType"    # Ljava/lang/Enum;

    .line 81
    new-instance v0, Lorg/jboss/netty/util/internal/jzlib/Inflate;

    invoke-direct {v0}, Lorg/jboss/netty/util/internal/jzlib/Inflate;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    .line 82
    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    move-object v1, p2

    check-cast v1, Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;

    invoke-virtual {v0, p0, p1, v1}, Lorg/jboss/netty/util/internal/jzlib/Inflate;->inflateInit(Lorg/jboss/netty/util/internal/jzlib/ZStream;ILorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;)I

    move-result v0

    return v0
.end method

.method public inflateInit(Ljava/lang/Enum;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)I"
        }
    .end annotation

    .line 73
    .local p1, "wrapperType":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    const/16 v0, 0xf

    invoke-virtual {p0, v0, p1}, Lorg/jboss/netty/util/internal/jzlib/ZStream;->inflateInit(ILjava/lang/Enum;)I

    move-result v0

    return v0
.end method

.method public inflateSetDictionary([BI)I
    .registers 4
    .param p1, "dictionary"    # [B
    .param p2, "dictLength"    # I

    .line 109
    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    if-nez v0, :cond_6

    .line 110
    const/4 v0, -0x2

    return v0

    .line 112
    :cond_6
    invoke-static {p0, p1, p2}, Lorg/jboss/netty/util/internal/jzlib/Inflate;->inflateSetDictionary(Lorg/jboss/netty/util/internal/jzlib/ZStream;[BI)I

    move-result v0

    return v0
.end method

.method public inflateSync()I
    .registers 2

    .line 102
    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    if-nez v0, :cond_6

    .line 103
    const/4 v0, -0x2

    return v0

    .line 105
    :cond_6
    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    invoke-virtual {v0, p0}, Lorg/jboss/netty/util/internal/jzlib/Inflate;->inflateSync(Lorg/jboss/netty/util/internal/jzlib/ZStream;)I

    move-result v0

    return v0
.end method

.method read_buf([BII)I
    .registers 9
    .param p1, "buf"    # [B
    .param p2, "start"    # I
    .param p3, "size"    # I

    .line 209
    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 211
    .local v0, "len":I
    if-le v0, p3, :cond_5

    .line 212
    move v0, p3

    .line 214
    :cond_5
    if-nez v0, :cond_9

    .line 215
    const/4 v1, 0x0

    return v1

    .line 218
    :cond_9
    iget v1, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 220
    sget-object v1, Lorg/jboss/netty/util/internal/jzlib/ZStream$1;->$SwitchMap$org$jboss$netty$util$internal$jzlib$JZlib$WrapperType:[I

    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->dstate:Lorg/jboss/netty/util/internal/jzlib/Deflate;

    iget-object v2, v2, Lorg/jboss/netty/util/internal/jzlib/Deflate;->wrapperType:Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;

    invoke-virtual {v2}, Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_4c

    goto :goto_38

    .line 225
    :pswitch_1e
    iget v1, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->crc32:I

    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    invoke-static {v1, v2, v3, v0}, Lorg/jboss/netty/util/internal/jzlib/CRC32;->crc32(I[BII)I

    move-result v1

    iput v1, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->crc32:I

    goto :goto_38

    .line 222
    :pswitch_2b
    iget-wide v1, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->adler:J

    iget-object v3, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    invoke-static {v1, v2, v3, v4, v0}, Lorg/jboss/netty/util/internal/jzlib/Adler32;->adler32(J[BII)J

    move-result-wide v1

    iput-wide v1, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->adler:J

    .line 223
    nop

    .line 229
    :goto_38
    iget-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 230
    iget v1, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 231
    iget-wide v1, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 232
    return v0

    nop

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_1e
    .end packed-switch
.end method
