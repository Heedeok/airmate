.class Lorg/yaml/snakeyaml/representer/SafeRepresenter;
.super Lorg/yaml/snakeyaml/representer/BaseRepresenter;
.source "SafeRepresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentByteArray;,
        Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentEnum;,
        Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentDate;,
        Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentSet;,
        Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentMap;,
        Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentArray;,
        Lorg/yaml/snakeyaml/representer/SafeRepresenter$IteratorWrapper;,
        Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentIterator;,
        Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentList;,
        Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentNumber;,
        Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentBoolean;,
        Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentString;,
        Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentNull;
    }
.end annotation


# static fields
.field public static BINARY_PATTERN:Ljava/util/regex/Pattern;

.field public static MULTILINE_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field protected classTags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/yaml/snakeyaml/nodes/Tag;",
            ">;"
        }
    .end annotation
.end field

.field protected timeZone:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 109
    const-string v0, "[\\x00-\\x08\\x0B\\x0C\\x0E-\\x1F]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->BINARY_PATTERN:Ljava/util/regex/Pattern;

    .line 110
    const-string v0, "\n|\u0085|\u2028|\u2029"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->MULTILINE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 45
    invoke-direct {p0}, Lorg/yaml/snakeyaml/representer/BaseRepresenter;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->timeZone:Ljava/util/TimeZone;

    .line 46
    new-instance v0, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentNull;

    invoke-direct {v0, p0}, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentNull;-><init>(Lorg/yaml/snakeyaml/representer/SafeRepresenter;)V

    iput-object v0, p0, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->nullRepresenter:Lorg/yaml/snakeyaml/representer/Represent;

    .line 47
    iget-object v0, p0, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->representers:Ljava/util/Map;

    const-class v1, Ljava/lang/String;

    new-instance v2, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentString;

    invoke-direct {v2, p0}, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentString;-><init>(Lorg/yaml/snakeyaml/representer/SafeRepresenter;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v0, p0, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->representers:Ljava/util/Map;

    const-class v1, Ljava/lang/Boolean;

    new-instance v2, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentBoolean;

    invoke-direct {v2, p0}, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentBoolean;-><init>(Lorg/yaml/snakeyaml/representer/SafeRepresenter;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v0, p0, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->representers:Ljava/util/Map;

    const-class v1, Ljava/lang/Character;

    new-instance v2, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentString;

    invoke-direct {v2, p0}, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentString;-><init>(Lorg/yaml/snakeyaml/representer/SafeRepresenter;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v0, p0, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->representers:Ljava/util/Map;

    const-class v1, [B

    new-instance v2, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentByteArray;

    invoke-direct {v2, p0}, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentByteArray;-><init>(Lorg/yaml/snakeyaml/representer/SafeRepresenter;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v0, p0, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->multiRepresenters:Ljava/util/Map;

    const-class v1, Ljava/lang/Number;

    new-instance v2, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentNumber;

    invoke-direct {v2, p0}, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentNumber;-><init>(Lorg/yaml/snakeyaml/representer/SafeRepresenter;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->multiRepresenters:Ljava/util/Map;

    const-class v1, Ljava/util/List;

    new-instance v2, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentList;

    invoke-direct {v2, p0}, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentList;-><init>(Lorg/yaml/snakeyaml/representer/SafeRepresenter;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v0, p0, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->multiRepresenters:Ljava/util/Map;

    const-class v1, Ljava/util/Map;

    new-instance v2, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentMap;

    invoke-direct {v2, p0}, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentMap;-><init>(Lorg/yaml/snakeyaml/representer/SafeRepresenter;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->multiRepresenters:Ljava/util/Map;

    const-class v1, Ljava/util/Set;

    new-instance v2, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentSet;

    invoke-direct {v2, p0}, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentSet;-><init>(Lorg/yaml/snakeyaml/representer/SafeRepresenter;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->multiRepresenters:Ljava/util/Map;

    const-class v1, Ljava/util/Iterator;

    new-instance v2, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentIterator;

    invoke-direct {v2, p0}, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentIterator;-><init>(Lorg/yaml/snakeyaml/representer/SafeRepresenter;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->multiRepresenters:Ljava/util/Map;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentArray;

    invoke-direct {v2, p0}, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentArray;-><init>(Lorg/yaml/snakeyaml/representer/SafeRepresenter;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->multiRepresenters:Ljava/util/Map;

    const-class v1, Ljava/util/Date;

    new-instance v2, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentDate;

    invoke-direct {v2, p0}, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentDate;-><init>(Lorg/yaml/snakeyaml/representer/SafeRepresenter;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->multiRepresenters:Ljava/util/Map;

    const-class v1, Ljava/lang/Enum;

    new-instance v2, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentEnum;

    invoke-direct {v2, p0}, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentEnum;-><init>(Lorg/yaml/snakeyaml/representer/SafeRepresenter;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->multiRepresenters:Ljava/util/Map;

    const-class v1, Ljava/util/Calendar;

    new-instance v2, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentDate;

    invoke-direct {v2, p0}, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentDate;-><init>(Lorg/yaml/snakeyaml/representer/SafeRepresenter;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->classTags:Ljava/util/Map;

    .line 61
    return-void
.end method


# virtual methods
.method public addClassTag(Ljava/lang/Class;Ljava/lang/String;)Lorg/yaml/snakeyaml/nodes/Tag;
    .registers 4
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/yaml/snakeyaml/nodes/Tag;"
        }
    .end annotation

    .line 83
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    new-instance v0, Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-direct {v0, p2}, Lorg/yaml/snakeyaml/nodes/Tag;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->addClassTag(Ljava/lang/Class;Lorg/yaml/snakeyaml/nodes/Tag;)Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v0

    return-object v0
.end method

.method public addClassTag(Ljava/lang/Class;Lorg/yaml/snakeyaml/nodes/Tag;)Lorg/yaml/snakeyaml/nodes/Tag;
    .registers 5
    .param p2, "tag"    # Lorg/yaml/snakeyaml/nodes/Tag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/yaml/snakeyaml/nodes/Tag;",
            ")",
            "Lorg/yaml/snakeyaml/nodes/Tag;"
        }
    .end annotation

    .line 97
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    if-eqz p2, :cond_b

    .line 100
    iget-object v0, p0, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->classTags:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/nodes/Tag;

    return-object v0

    .line 98
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Tag must be provided."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getTag(Ljava/lang/Class;Lorg/yaml/snakeyaml/nodes/Tag;)Lorg/yaml/snakeyaml/nodes/Tag;
    .registers 4
    .param p2, "defaultTag"    # Lorg/yaml/snakeyaml/nodes/Tag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/yaml/snakeyaml/nodes/Tag;",
            ")",
            "Lorg/yaml/snakeyaml/nodes/Tag;"
        }
    .end annotation

    .line 64
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->classTags:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 65
    iget-object v0, p0, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->classTags:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/nodes/Tag;

    return-object v0

    .line 67
    :cond_11
    return-object p2
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .registers 2

    .line 321
    iget-object v0, p0, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->timeZone:Ljava/util/TimeZone;

    return-object v0
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .registers 2
    .param p1, "timeZone"    # Ljava/util/TimeZone;

    .line 325
    iput-object p1, p0, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->timeZone:Ljava/util/TimeZone;

    .line 326
    return-void
.end method
