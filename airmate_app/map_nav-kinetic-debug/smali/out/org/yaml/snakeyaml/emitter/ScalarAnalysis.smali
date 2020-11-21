.class public final Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;
.super Ljava/lang/Object;
.source "ScalarAnalysis.java"


# instance fields
.field public allowBlock:Z

.field public allowBlockPlain:Z

.field public allowFlowPlain:Z

.field public allowSingleQuoted:Z

.field public empty:Z

.field public multiline:Z

.field public scalar:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZZZZZ)V
    .registers 8
    .param p1, "scalar"    # Ljava/lang/String;
    .param p2, "empty"    # Z
    .param p3, "multiline"    # Z
    .param p4, "allowFlowPlain"    # Z
    .param p5, "allowBlockPlain"    # Z
    .param p6, "allowSingleQuoted"    # Z
    .param p7, "allowBlock"    # Z

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;->scalar:Ljava/lang/String;

    .line 30
    iput-boolean p2, p0, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;->empty:Z

    .line 31
    iput-boolean p3, p0, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;->multiline:Z

    .line 32
    iput-boolean p4, p0, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;->allowFlowPlain:Z

    .line 33
    iput-boolean p5, p0, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;->allowBlockPlain:Z

    .line 34
    iput-boolean p6, p0, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;->allowSingleQuoted:Z

    .line 35
    iput-boolean p7, p0, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;->allowBlock:Z

    .line 36
    return-void
.end method
