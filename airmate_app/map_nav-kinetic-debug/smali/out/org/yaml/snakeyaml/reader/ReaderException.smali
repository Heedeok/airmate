.class public Lorg/yaml/snakeyaml/reader/ReaderException;
.super Lorg/yaml/snakeyaml/error/YAMLException;
.source "ReaderException.java"


# static fields
.field private static final serialVersionUID:J = 0x78e2e9569edcc7fbL


# instance fields
.field private final character:C

.field private final name:Ljava/lang/String;

.field private final position:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ICLjava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "position"    # I
    .param p3, "character"    # C
    .param p4, "message"    # Ljava/lang/String;

    .line 27
    invoke-direct {p0, p4}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    .line 28
    iput-object p1, p0, Lorg/yaml/snakeyaml/reader/ReaderException;->name:Ljava/lang/String;

    .line 29
    iput-char p3, p0, Lorg/yaml/snakeyaml/reader/ReaderException;->character:C

    .line 30
    iput p2, p0, Lorg/yaml/snakeyaml/reader/ReaderException;->position:I

    .line 31
    return-void
.end method


# virtual methods
.method public getCharacter()C
    .registers 2

    .line 38
    iget-char v0, p0, Lorg/yaml/snakeyaml/reader/ReaderException;->character:C

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 34
    iget-object v0, p0, Lorg/yaml/snakeyaml/reader/ReaderException;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()I
    .registers 2

    .line 42
    iget v0, p0, Lorg/yaml/snakeyaml/reader/ReaderException;->position:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unacceptable character \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v1, p0, Lorg/yaml/snakeyaml/reader/ReaderException;->character:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "\' (0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v1, p0, Lorg/yaml/snakeyaml/reader/ReaderException;->character:C

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/yaml/snakeyaml/reader/ReaderException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nin \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/yaml/snakeyaml/reader/ReaderException;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/yaml/snakeyaml/reader/ReaderException;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
