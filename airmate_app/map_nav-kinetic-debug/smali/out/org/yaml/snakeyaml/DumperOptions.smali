.class public Lorg/yaml/snakeyaml/DumperOptions;
.super Ljava/lang/Object;
.source "DumperOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/yaml/snakeyaml/DumperOptions$Version;,
        Lorg/yaml/snakeyaml/DumperOptions$LineBreak;,
        Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;,
        Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;
    }
.end annotation


# instance fields
.field private allowReadOnlyProperties:Z

.field private allowUnicode:Z

.field private bestWidth:I

.field private canonical:Z

.field private defaultFlowStyle:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

.field private defaultStyle:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

.field private explicitEnd:Z

.field private explicitRoot:Lorg/yaml/snakeyaml/nodes/Tag;

.field private explicitStart:Z

.field private indent:I

.field private lineBreak:Lorg/yaml/snakeyaml/DumperOptions$LineBreak;

.field private prettyFlow:Ljava/lang/Boolean;

.field private tags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private timeZone:Ljava/util/TimeZone;

.field private version:Lorg/yaml/snakeyaml/DumperOptions$Version;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    sget-object v0, Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;->PLAIN:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    iput-object v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->defaultStyle:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    .line 157
    sget-object v0, Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;->AUTO:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    iput-object v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->defaultFlowStyle:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->canonical:Z

    .line 159
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/yaml/snakeyaml/DumperOptions;->allowUnicode:Z

    .line 160
    iput-boolean v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->allowReadOnlyProperties:Z

    .line 161
    const/4 v1, 0x2

    iput v1, p0, Lorg/yaml/snakeyaml/DumperOptions;->indent:I

    .line 162
    const/16 v1, 0x50

    iput v1, p0, Lorg/yaml/snakeyaml/DumperOptions;->bestWidth:I

    .line 163
    sget-object v1, Lorg/yaml/snakeyaml/DumperOptions$LineBreak;->UNIX:Lorg/yaml/snakeyaml/DumperOptions$LineBreak;

    iput-object v1, p0, Lorg/yaml/snakeyaml/DumperOptions;->lineBreak:Lorg/yaml/snakeyaml/DumperOptions$LineBreak;

    .line 164
    iput-boolean v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->explicitStart:Z

    .line 165
    iput-boolean v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->explicitEnd:Z

    .line 166
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/yaml/snakeyaml/DumperOptions;->timeZone:Ljava/util/TimeZone;

    .line 171
    iput-object v1, p0, Lorg/yaml/snakeyaml/DumperOptions;->explicitRoot:Lorg/yaml/snakeyaml/nodes/Tag;

    .line 172
    iput-object v1, p0, Lorg/yaml/snakeyaml/DumperOptions;->version:Lorg/yaml/snakeyaml/DumperOptions$Version;

    .line 173
    iput-object v1, p0, Lorg/yaml/snakeyaml/DumperOptions;->tags:Ljava/util/Map;

    .line 174
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->prettyFlow:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public calculateScalarStyle(Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;)Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;
    .registers 3
    .param p1, "analysis"    # Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;
    .param p2, "style"    # Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    .line 371
    return-object p2
.end method

.method public getDefaultFlowStyle()Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;
    .registers 2

    .line 290
    iget-object v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->defaultFlowStyle:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    return-object v0
.end method

.method public getDefaultScalarStyle()Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;
    .registers 2

    .line 193
    iget-object v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->defaultStyle:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    return-object v0
.end method

.method public getExplicitRoot()Lorg/yaml/snakeyaml/nodes/Tag;
    .registers 2

    .line 297
    iget-object v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->explicitRoot:Lorg/yaml/snakeyaml/nodes/Tag;

    return-object v0
.end method

.method public getIndent()I
    .registers 2

    .line 221
    iget v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->indent:I

    return v0
.end method

.method public getLineBreak()Lorg/yaml/snakeyaml/DumperOptions$LineBreak;
    .registers 2

    .line 279
    iget-object v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->lineBreak:Lorg/yaml/snakeyaml/DumperOptions$LineBreak;

    return-object v0
.end method

.method public getTags()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 352
    iget-object v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->tags:Ljava/util/Map;

    return-object v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .registers 2

    .line 397
    iget-object v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->timeZone:Ljava/util/TimeZone;

    return-object v0
.end method

.method public getVersion()Lorg/yaml/snakeyaml/DumperOptions$Version;
    .registers 2

    .line 229
    iget-object v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->version:Lorg/yaml/snakeyaml/DumperOptions$Version;

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    .line 275
    iget v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->bestWidth:I

    return v0
.end method

.method public isAllowReadOnlyProperties()Z
    .registers 2

    .line 381
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->allowReadOnlyProperties:Z

    return v0
.end method

.method public isAllowUnicode()Z
    .registers 2

    .line 177
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->allowUnicode:Z

    return v0
.end method

.method public isCanonical()Z
    .registers 2

    .line 244
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->canonical:Z

    return v0
.end method

.method public isExplicitEnd()Z
    .registers 2

    .line 344
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->explicitEnd:Z

    return v0
.end method

.method public isExplicitStart()Z
    .registers 2

    .line 336
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->explicitStart:Z

    return v0
.end method

.method public isPrettyFlow()Z
    .registers 2

    .line 259
    iget-object v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->prettyFlow:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public setAllowReadOnlyProperties(Z)V
    .registers 2
    .param p1, "allowReadOnlyProperties"    # Z

    .line 393
    iput-boolean p1, p0, Lorg/yaml/snakeyaml/DumperOptions;->allowReadOnlyProperties:Z

    .line 394
    return-void
.end method

.method public setAllowUnicode(Z)V
    .registers 2
    .param p1, "allowUnicode"    # Z

    .line 189
    iput-boolean p1, p0, Lorg/yaml/snakeyaml/DumperOptions;->allowUnicode:Z

    .line 190
    return-void
.end method

.method public setCanonical(Z)V
    .registers 2
    .param p1, "canonical"    # Z

    .line 240
    iput-boolean p1, p0, Lorg/yaml/snakeyaml/DumperOptions;->canonical:Z

    .line 241
    return-void
.end method

.method public setDefaultFlowStyle(Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;)V
    .registers 4
    .param p1, "defaultFlowStyle"    # Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    .line 283
    if-eqz p1, :cond_5

    .line 286
    iput-object p1, p0, Lorg/yaml/snakeyaml/DumperOptions;->defaultFlowStyle:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    .line 287
    return-void

    .line 284
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Use FlowStyle enum."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDefaultScalarStyle(Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;)V
    .registers 4
    .param p1, "defaultStyle"    # Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    .line 204
    if-eqz p1, :cond_5

    .line 207
    iput-object p1, p0, Lorg/yaml/snakeyaml/DumperOptions;->defaultStyle:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    .line 208
    return-void

    .line 205
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Use ScalarStyle enum."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setExplicitEnd(Z)V
    .registers 2
    .param p1, "explicitEnd"    # Z

    .line 348
    iput-boolean p1, p0, Lorg/yaml/snakeyaml/DumperOptions;->explicitEnd:Z

    .line 349
    return-void
.end method

.method public setExplicitRoot(Ljava/lang/String;)V
    .registers 3
    .param p1, "expRoot"    # Ljava/lang/String;

    .line 307
    new-instance v0, Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-direct {v0, p1}, Lorg/yaml/snakeyaml/nodes/Tag;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/yaml/snakeyaml/DumperOptions;->setExplicitRoot(Lorg/yaml/snakeyaml/nodes/Tag;)V

    .line 308
    return-void
.end method

.method public setExplicitRoot(Lorg/yaml/snakeyaml/nodes/Tag;)V
    .registers 4
    .param p1, "expRoot"    # Lorg/yaml/snakeyaml/nodes/Tag;

    .line 317
    if-eqz p1, :cond_5

    .line 320
    iput-object p1, p0, Lorg/yaml/snakeyaml/DumperOptions;->explicitRoot:Lorg/yaml/snakeyaml/nodes/Tag;

    .line 321
    return-void

    .line 318
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Root tag must be specified."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setExplicitStart(Z)V
    .registers 2
    .param p1, "explicitStart"    # Z

    .line 340
    iput-boolean p1, p0, Lorg/yaml/snakeyaml/DumperOptions;->explicitStart:Z

    .line 341
    return-void
.end method

.method public setIndent(I)V
    .registers 4
    .param p1, "indent"    # I

    .line 211
    const/4 v0, 0x1

    if-lt p1, v0, :cond_12

    .line 214
    const/16 v0, 0xa

    if-gt p1, v0, :cond_a

    .line 217
    iput p1, p0, Lorg/yaml/snakeyaml/DumperOptions;->indent:I

    .line 218
    return-void

    .line 215
    :cond_a
    new-instance v0, Lorg/yaml/snakeyaml/error/YAMLException;

    const-string v1, "Indent must be at most 10"

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_12
    new-instance v0, Lorg/yaml/snakeyaml/error/YAMLException;

    const-string v1, "Indent must be at least 1"

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setLineBreak(Lorg/yaml/snakeyaml/DumperOptions$LineBreak;)V
    .registers 4
    .param p1, "lineBreak"    # Lorg/yaml/snakeyaml/DumperOptions$LineBreak;

    .line 329
    if-eqz p1, :cond_5

    .line 332
    iput-object p1, p0, Lorg/yaml/snakeyaml/DumperOptions;->lineBreak:Lorg/yaml/snakeyaml/DumperOptions$LineBreak;

    .line 333
    return-void

    .line 330
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Specify line break."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPrettyFlow(Z)V
    .registers 3
    .param p1, "prettyFlow"    # Z

    .line 255
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->prettyFlow:Ljava/lang/Boolean;

    .line 256
    return-void
.end method

.method public setTags(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 357
    .local p1, "tags":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/yaml/snakeyaml/DumperOptions;->tags:Ljava/util/Map;

    .line 358
    return-void
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .registers 2
    .param p1, "timeZone"    # Ljava/util/TimeZone;

    .line 405
    iput-object p1, p0, Lorg/yaml/snakeyaml/DumperOptions;->timeZone:Ljava/util/TimeZone;

    .line 406
    return-void
.end method

.method public setVersion(Lorg/yaml/snakeyaml/DumperOptions$Version;)V
    .registers 2
    .param p1, "version"    # Lorg/yaml/snakeyaml/DumperOptions$Version;

    .line 225
    iput-object p1, p0, Lorg/yaml/snakeyaml/DumperOptions;->version:Lorg/yaml/snakeyaml/DumperOptions$Version;

    .line 226
    return-void
.end method

.method public setWidth(I)V
    .registers 2
    .param p1, "bestWidth"    # I

    .line 271
    iput p1, p0, Lorg/yaml/snakeyaml/DumperOptions;->bestWidth:I

    .line 272
    return-void
.end method
