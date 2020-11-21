.class public Lcom/github/rosjava/android_remocons/common_tools/master/RoconDescription;
.super Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;
.source "RoconDescription.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x414d633e91bd001bL


# instance fields
.field private currentRole:I

.field private description:Ljava/lang/String;

.field private interactionsNamespace:Ljava/lang/String;

.field private userRoles:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 69
    invoke-direct {p0}, Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;-><init>()V

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/github/rosjava/android_remocons/common_tools/master/RoconDescription;->currentRole:I

    .line 70
    return-void
.end method

.method public constructor <init>(Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;Ljava/lang/String;Ljava/lang/String;Lrocon_std_msgs/Icon;Ljava/lang/String;Ljava/util/Date;)V
    .registers 14
    .param p1, "masterId"    # Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;
    .param p2, "concertName"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "concertIcon"    # Lrocon_std_msgs/Icon;
    .param p5, "interactionsNamespace"    # Ljava/lang/String;
    .param p6, "timeLastSeen"    # Ljava/util/Date;

    .line 75
    const-string v3, "Rocon concert"

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;-><init>(Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;Ljava/lang/String;Ljava/lang/String;Lrocon_std_msgs/Icon;Ljava/lang/String;Ljava/util/Date;)V

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/github/rosjava/android_remocons/common_tools/master/RoconDescription;->currentRole:I

    .line 77
    iput-object p3, p0, Lcom/github/rosjava/android_remocons/common_tools/master/RoconDescription;->description:Ljava/lang/String;

    .line 78
    iput-object p5, p0, Lcom/github/rosjava/android_remocons/common_tools/master/RoconDescription;->interactionsNamespace:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public static create(Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;)Lcom/github/rosjava/android_remocons/common_tools/master/RoconDescription;
    .registers 9
    .param p0, "master"    # Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;

    .line 55
    new-instance v7, Lcom/github/rosjava/android_remocons/common_tools/master/RoconDescription;

    invoke-virtual {p0}, Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;->getMasterId()Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;

    move-result-object v1

    invoke-virtual {p0}, Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;->getMasterName()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/github/rosjava/android_remocons/common_tools/master/RoconDescription;-><init>(Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;Ljava/lang/String;Ljava/lang/String;Lrocon_std_msgs/Icon;Ljava/lang/String;Ljava/util/Date;)V

    .line 57
    .local v0, "cd":Lcom/github/rosjava/android_remocons/common_tools/master/RoconDescription;
    invoke-virtual {p0}, Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;->getMasterIconFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/rosjava/android_remocons/common_tools/master/RoconDescription;->setMasterIconFormat(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;->getMasterIconData()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/rosjava/android_remocons/common_tools/master/RoconDescription;->setMasterIconData(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 59
    return-object v0
.end method

.method public static createUnknown(Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;)Lcom/github/rosjava/android_remocons/common_tools/master/RoconDescription;
    .registers 9
    .param p0, "masterId"    # Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;

    .line 63
    new-instance v7, Lcom/github/rosjava/android_remocons/common_tools/master/RoconDescription;

    const-string v2, "Unknown"

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/github/rosjava/android_remocons/common_tools/master/RoconDescription;-><init>(Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;Ljava/lang/String;Ljava/lang/String;Lrocon_std_msgs/Icon;Ljava/lang/String;Ljava/util/Date;)V

    return-object v7
.end method


# virtual methods
.method public copyFrom(Lcom/github/rosjava/android_remocons/common_tools/master/RoconDescription;)V
    .registers 3
    .param p1, "other"    # Lcom/github/rosjava/android_remocons/common_tools/master/RoconDescription;

    .line 82
    invoke-super {p0, p1}, Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;->copyFrom(Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;)V

    .line 84
    iget-object v0, p1, Lcom/github/rosjava/android_remocons/common_tools/master/RoconDescription;->userRoles:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/master/RoconDescription;->userRoles:[Ljava/lang/String;

    .line 85
    iget-object v0, p1, Lcom/github/rosjava/android_remocons/common_tools/master/RoconDescription;->description:Ljava/lang/String;

    iput-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/master/RoconDescription;->description:Ljava/lang/String;

    .line 86
    iget-object v0, p1, Lcom/github/rosjava/android_remocons/common_tools/master/RoconDescription;->interactionsNamespace:Ljava/lang/String;

    iput-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/master/RoconDescription;->interactionsNamespace:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public getCurrentRole()Ljava/lang/String;
    .registers 3

    .line 96
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/master/RoconDescription;->userRoles:[Ljava/lang/String;

    if-eqz v0, :cond_16

    iget v0, p0, Lcom/github/rosjava/android_remocons/common_tools/master/RoconDescription;->currentRole:I

    if-ltz v0, :cond_16

    iget v0, p0, Lcom/github/rosjava/android_remocons/common_tools/master/RoconDescription;->currentRole:I

    iget-object v1, p0, Lcom/github/rosjava/android_remocons/common_tools/master/RoconDescription;->userRoles:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_16

    .line 97
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/master/RoconDescription;->userRoles:[Ljava/lang/String;

    iget v1, p0, Lcom/github/rosjava/android_remocons/common_tools/master/RoconDescription;->currentRole:I

    aget-object v0, v0, v1

    return-object v0

    .line 99
    :cond_16
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInteractionsNamespace()Ljava/lang/String;
    .registers 2

    .line 89
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/master/RoconDescription;->interactionsNamespace:Ljava/lang/String;

    return-object v0
.end method

.method public getUserRoles()[Ljava/lang/String;
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/master/RoconDescription;->userRoles:[Ljava/lang/String;

    return-object v0
.end method

.method public setCurrentRole(I)V
    .registers 2
    .param p1, "role"    # I

    .line 112
    iput p1, p0, Lcom/github/rosjava/android_remocons/common_tools/master/RoconDescription;->currentRole:I

    .line 113
    return-void
.end method

.method public setInteractionsNamespace(Ljava/lang/String;)V
    .registers 2
    .param p1, "namespace"    # Ljava/lang/String;

    .line 103
    iput-object p1, p0, Lcom/github/rosjava/android_remocons/common_tools/master/RoconDescription;->interactionsNamespace:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setUserRoles(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 108
    .local p1, "roles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/master/RoconDescription;->userRoles:[Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/master/RoconDescription;->userRoles:[Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 110
    return-void
.end method
