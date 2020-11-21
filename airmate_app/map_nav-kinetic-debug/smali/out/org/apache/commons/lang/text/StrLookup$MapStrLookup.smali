.class Lorg/apache/commons/lang/text/StrLookup$MapStrLookup;
.super Lorg/apache/commons/lang/text/StrLookup;
.source "StrLookup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang/text/StrLookup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MapStrLookup"
.end annotation


# instance fields
.field private final map:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .registers 2
    .param p1, "map"    # Ljava/util/Map;

    .line 137
    invoke-direct {p0}, Lorg/apache/commons/lang/text/StrLookup;-><init>()V

    .line 138
    iput-object p1, p0, Lorg/apache/commons/lang/text/StrLookup$MapStrLookup;->map:Ljava/util/Map;

    .line 139
    return-void
.end method


# virtual methods
.method public lookup(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 151
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrLookup$MapStrLookup;->map:Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 152
    return-object v1

    .line 154
    :cond_6
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrLookup$MapStrLookup;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 155
    .local v0, "obj":Ljava/lang/Object;
    if-nez v0, :cond_f

    .line 156
    return-object v1

    .line 158
    :cond_f
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
