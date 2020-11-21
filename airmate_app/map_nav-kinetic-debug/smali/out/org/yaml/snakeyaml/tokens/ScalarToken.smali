.class public final Lorg/yaml/snakeyaml/tokens/ScalarToken;
.super Lorg/yaml/snakeyaml/tokens/Token;
.source "ScalarToken.java"


# instance fields
.field private final plain:Z

.field private final style:C

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;Z)V
    .registers 11
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "startMark"    # Lorg/yaml/snakeyaml/error/Mark;
    .param p3, "endMark"    # Lorg/yaml/snakeyaml/error/Mark;
    .param p4, "plain"    # Z

    .line 26
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p4

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/yaml/snakeyaml/tokens/ScalarToken;-><init>(Ljava/lang/String;ZLorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;C)V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;C)V
    .registers 6
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "plain"    # Z
    .param p3, "startMark"    # Lorg/yaml/snakeyaml/error/Mark;
    .param p4, "endMark"    # Lorg/yaml/snakeyaml/error/Mark;
    .param p5, "style"    # C

    .line 30
    invoke-direct {p0, p3, p4}, Lorg/yaml/snakeyaml/tokens/Token;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    .line 31
    iput-object p1, p0, Lorg/yaml/snakeyaml/tokens/ScalarToken;->value:Ljava/lang/String;

    .line 32
    iput-boolean p2, p0, Lorg/yaml/snakeyaml/tokens/ScalarToken;->plain:Z

    .line 33
    iput-char p5, p0, Lorg/yaml/snakeyaml/tokens/ScalarToken;->style:C

    .line 34
    return-void
.end method


# virtual methods
.method protected getArguments()Ljava/lang/String;
    .registers 3

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/yaml/snakeyaml/tokens/ScalarToken;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", plain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/yaml/snakeyaml/tokens/ScalarToken;->plain:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", style="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v1, p0, Lorg/yaml/snakeyaml/tokens/ScalarToken;->style:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlain()Z
    .registers 2

    .line 37
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/tokens/ScalarToken;->plain:Z

    return v0
.end method

.method public getStyle()C
    .registers 2

    .line 45
    iget-char v0, p0, Lorg/yaml/snakeyaml/tokens/ScalarToken;->style:C

    return v0
.end method

.method public getTokenId()Lorg/yaml/snakeyaml/tokens/Token$ID;
    .registers 2

    .line 55
    sget-object v0, Lorg/yaml/snakeyaml/tokens/Token$ID;->Scalar:Lorg/yaml/snakeyaml/tokens/Token$ID;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .line 41
    iget-object v0, p0, Lorg/yaml/snakeyaml/tokens/ScalarToken;->value:Ljava/lang/String;

    return-object v0
.end method
