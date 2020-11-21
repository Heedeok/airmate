.class Lorg/ros/android/MasterChooser$StableArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MasterChooser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ros/android/MasterChooser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StableArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field idMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/ros/android/MasterChooser;


# direct methods
.method public constructor <init>(Lorg/ros/android/MasterChooser;Landroid/content/Context;ILjava/util/List;)V
    .registers 8
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "textViewResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 128
    .local p4, "objects":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/ros/android/MasterChooser$StableArrayAdapter;->this$0:Lorg/ros/android/MasterChooser;

    .line 129
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 126
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/ros/android/MasterChooser$StableArrayAdapter;->idMap:Ljava/util/HashMap;

    .line 130
    const/4 p1, 0x0

    .local p1, "i":I
    :goto_d
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_23

    .line 131
    iget-object v0, p0, Lorg/ros/android/MasterChooser$StableArrayAdapter;->idMap:Ljava/util/HashMap;

    invoke-interface {p4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    add-int/lit8 p1, p1, 0x1

    goto :goto_d

    .line 133
    .end local p1    # "i":I
    :cond_23
    return-void
.end method


# virtual methods
.method public getItemId(I)J
    .registers 5
    .param p1, "position"    # I

    .line 137
    invoke-virtual {p0, p1}, Lorg/ros/android/MasterChooser$StableArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 138
    .local v0, "item":Ljava/lang/String;
    iget-object v1, p0, Lorg/ros/android/MasterChooser$StableArrayAdapter;->idMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    return-wide v1
.end method

.method public hasStableIds()Z
    .registers 2

    .line 143
    const/4 v0, 0x1

    return v0
.end method
