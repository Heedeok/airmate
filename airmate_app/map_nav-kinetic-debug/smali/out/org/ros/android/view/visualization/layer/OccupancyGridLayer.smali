.class public Lorg/ros/android/view/visualization/layer/OccupancyGridLayer;
.super Lorg/ros/android/view/visualization/layer/SubscriberLayer;
.source "OccupancyGridLayer.java"

# interfaces
.implements Lorg/ros/android/view/visualization/layer/TfLayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ros/android/view/visualization/layer/OccupancyGridLayer$Tile;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ros/android/view/visualization/layer/SubscriberLayer<",
        "Lnav_msgs/OccupancyGrid;",
        ">;",
        "Lorg/ros/android/view/visualization/layer/TfLayer;"
    }
.end annotation


# static fields
.field private static final COLOR_FREE:I = -0x1

.field private static final COLOR_OCCUPIED:I = -0xeeeeef

.field private static final COLOR_TRANSPARENT:I = 0x0

.field private static final COLOR_UNKNOWN:I = -0x222223


# instance fields
.field private frame:Lorg/ros/namespace/GraphName;

.field private previousGl:Ljavax/microedition/khronos/opengles/GL10;

.field private ready:Z

.field private final tiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/ros/android/view/visualization/layer/OccupancyGridLayer$Tile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "topic"    # Ljava/lang/String;

    .line 134
    invoke-static {p1}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/ros/android/view/visualization/layer/OccupancyGridLayer;-><init>(Lorg/ros/namespace/GraphName;)V

    .line 135
    return-void
.end method

.method public constructor <init>(Lorg/ros/namespace/GraphName;)V
    .registers 3
    .param p1, "topic"    # Lorg/ros/namespace/GraphName;

    .line 138
    const-string v0, "nav_msgs/OccupancyGrid"

    invoke-direct {p0, p1, v0}, Lorg/ros/android/view/visualization/layer/SubscriberLayer;-><init>(Lorg/ros/namespace/GraphName;Ljava/lang/String;)V

    .line 139
    invoke-static {}, Lcom/google/common/collect/Lists;->newCopyOnWriteArrayList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/android/view/visualization/layer/OccupancyGridLayer;->tiles:Ljava/util/List;

    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/ros/android/view/visualization/layer/OccupancyGridLayer;->ready:Z

    .line 141
    return-void
.end method

.method static synthetic access$000(Lorg/ros/android/view/visualization/layer/OccupancyGridLayer;Lnav_msgs/OccupancyGrid;)V
    .registers 2
    .param p0, "x0"    # Lorg/ros/android/view/visualization/layer/OccupancyGridLayer;
    .param p1, "x1"    # Lnav_msgs/OccupancyGrid;

    .line 40
    invoke-direct {p0, p1}, Lorg/ros/android/view/visualization/layer/OccupancyGridLayer;->update(Lnav_msgs/OccupancyGrid;)V

    return-void
.end method

.method private update(Lnav_msgs/OccupancyGrid;)V
    .registers 28
    .param p1, "message"    # Lnav_msgs/OccupancyGrid;

    .line 176
    move-object/from16 v0, p0

    invoke-interface/range {p1 .. p1}, Lnav_msgs/OccupancyGrid;->getInfo()Lnav_msgs/MapMetaData;

    move-result-object v1

    invoke-interface {v1}, Lnav_msgs/MapMetaData;->getResolution()F

    move-result v1

    .line 177
    .local v1, "resolution":F
    invoke-interface/range {p1 .. p1}, Lnav_msgs/OccupancyGrid;->getInfo()Lnav_msgs/MapMetaData;

    move-result-object v2

    invoke-interface {v2}, Lnav_msgs/MapMetaData;->getWidth()I

    move-result v2

    .line 178
    .local v2, "width":I
    invoke-interface/range {p1 .. p1}, Lnav_msgs/OccupancyGrid;->getInfo()Lnav_msgs/MapMetaData;

    move-result-object v3

    invoke-interface {v3}, Lnav_msgs/MapMetaData;->getHeight()I

    move-result v3

    .line 179
    .local v3, "height":I
    int-to-float v4, v2

    const/high16 v5, 0x44800000    # 1024.0f

    div-float/2addr v4, v5

    float-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v4, v6

    .line 180
    .local v4, "numTilesWide":I
    int-to-float v6, v3

    div-float/2addr v6, v5

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    .line 181
    .local v6, "numTilesHigh":I
    mul-int v7, v4, v6

    .line 182
    .local v7, "numTiles":I
    invoke-interface/range {p1 .. p1}, Lnav_msgs/OccupancyGrid;->getInfo()Lnav_msgs/MapMetaData;

    move-result-object v8

    invoke-interface {v8}, Lnav_msgs/MapMetaData;->getOrigin()Lgeometry_msgs/Pose;

    move-result-object v8

    invoke-static {v8}, Lorg/ros/rosjava_geometry/Transform;->fromPoseMessage(Lgeometry_msgs/Pose;)Lorg/ros/rosjava_geometry/Transform;

    move-result-object v8

    .line 184
    .local v8, "origin":Lorg/ros/rosjava_geometry/Transform;
    :goto_3a
    iget-object v9, v0, Lorg/ros/android/view/visualization/layer/OccupancyGridLayer;->tiles:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v9, v7, :cond_4d

    .line 185
    iget-object v9, v0, Lorg/ros/android/view/visualization/layer/OccupancyGridLayer;->tiles:Ljava/util/List;

    new-instance v10, Lorg/ros/android/view/visualization/layer/OccupancyGridLayer$Tile;

    invoke-direct {v10, v0, v1}, Lorg/ros/android/view/visualization/layer/OccupancyGridLayer$Tile;-><init>(Lorg/ros/android/view/visualization/layer/OccupancyGridLayer;F)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3a

    .line 188
    :cond_4d
    const/4 v10, 0x0

    .local v10, "y":I
    :goto_4e
    if-ge v10, v6, :cond_c2

    .line 189
    const/4 v11, 0x0

    .local v11, "x":I
    :goto_51
    if-ge v11, v4, :cond_b7

    .line 190
    mul-int v12, v10, v4

    add-int/2addr v12, v11

    .line 191
    .local v12, "tileIndex":I
    iget-object v13, v0, Lorg/ros/android/view/visualization/layer/OccupancyGridLayer;->tiles:Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/ros/android/view/visualization/layer/OccupancyGridLayer$Tile;

    new-instance v14, Lorg/ros/rosjava_geometry/Transform;

    new-instance v15, Lorg/ros/rosjava_geometry/Vector3;

    int-to-float v9, v11

    mul-float v9, v9, v1

    mul-float v9, v9, v5

    move/from16 v23, v6

    .end local v6    # "numTilesHigh":I
    .local v23, "numTilesHigh":I
    float-to-double v5, v9

    int-to-float v9, v10

    mul-float v9, v9, v1

    const/high16 v22, 0x44800000    # 1024.0f

    mul-float v9, v9, v22

    move/from16 v24, v10

    .end local v10    # "y":I
    .local v24, "y":I
    float-to-double v9, v9

    const-wide/16 v20, 0x0

    move-object/from16 v25, v15

    move-wide/from16 v16, v5

    move-wide/from16 v18, v9

    invoke-direct/range {v15 .. v21}, Lorg/ros/rosjava_geometry/Vector3;-><init>(DDD)V

    .line 193
    invoke-static {}, Lorg/ros/rosjava_geometry/Quaternion;->identity()Lorg/ros/rosjava_geometry/Quaternion;

    move-result-object v5

    move-object/from16 v6, v25

    invoke-direct {v14, v6, v5}, Lorg/ros/rosjava_geometry/Transform;-><init>(Lorg/ros/rosjava_geometry/Vector3;Lorg/ros/rosjava_geometry/Quaternion;)V

    .line 191
    invoke-virtual {v8, v14}, Lorg/ros/rosjava_geometry/Transform;->multiply(Lorg/ros/rosjava_geometry/Transform;)Lorg/ros/rosjava_geometry/Transform;

    move-result-object v5

    invoke-virtual {v13, v5}, Lorg/ros/android/view/visualization/layer/OccupancyGridLayer$Tile;->setOrigin(Lorg/ros/rosjava_geometry/Transform;)V

    .line 194
    add-int/lit8 v5, v4, -0x1

    if-ge v11, v5, :cond_a1

    .line 195
    iget-object v5, v0, Lorg/ros/android/view/visualization/layer/OccupancyGridLayer;->tiles:Ljava/util/List;

    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/ros/android/view/visualization/layer/OccupancyGridLayer$Tile;

    const/16 v6, 0x400

    invoke-virtual {v5, v6}, Lorg/ros/android/view/visualization/layer/OccupancyGridLayer$Tile;->setStride(I)V

    goto :goto_ae

    .line 197
    :cond_a1
    iget-object v5, v0, Lorg/ros/android/view/visualization/layer/OccupancyGridLayer;->tiles:Ljava/util/List;

    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/ros/android/view/visualization/layer/OccupancyGridLayer$Tile;

    rem-int/lit16 v6, v2, 0x400

    invoke-virtual {v5, v6}, Lorg/ros/android/view/visualization/layer/OccupancyGridLayer$Tile;->setStride(I)V

    .line 189
    .end local v12    # "tileIndex":I
    :goto_ae
    add-int/lit8 v11, v11, 0x1

    move/from16 v6, v23

    move/from16 v10, v24

    const/high16 v5, 0x44800000    # 1024.0f

    goto :goto_51

    .line 188
    .end local v11    # "x":I
    .end local v23    # "numTilesHigh":I
    .end local v24    # "y":I
    .restart local v6    # "numTilesHigh":I
    .restart local v10    # "y":I
    :cond_b7
    move/from16 v23, v6

    move/from16 v24, v10

    const/high16 v22, 0x44800000    # 1024.0f

    .end local v6    # "numTilesHigh":I
    .end local v10    # "y":I
    .restart local v23    # "numTilesHigh":I
    .restart local v24    # "y":I
    add-int/lit8 v10, v24, 0x1

    const/high16 v5, 0x44800000    # 1024.0f

    goto :goto_4e

    .line 202
    .end local v23    # "numTilesHigh":I
    .end local v24    # "y":I
    .restart local v6    # "numTilesHigh":I
    :cond_c2
    move/from16 v23, v6

    .end local v6    # "numTilesHigh":I
    .restart local v23    # "numTilesHigh":I
    const/4 v5, 0x0

    .line 203
    .local v5, "x":I
    const/4 v6, 0x0

    .line 204
    .local v6, "y":I
    invoke-interface/range {p1 .. p1}, Lnav_msgs/OccupancyGrid;->getData()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v9

    .line 205
    .local v9, "buffer":Lorg/jboss/netty/buffer/ChannelBuffer;
    :goto_ca
    invoke-interface {v9}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v10

    const/4 v11, 0x1

    if-eqz v10, :cond_11b

    .line 206
    if-ge v6, v3, :cond_d4

    goto :goto_d5

    :cond_d4
    const/4 v11, 0x0

    :goto_d5
    invoke-static {v11}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 207
    div-int/lit16 v10, v6, 0x400

    mul-int v10, v10, v4

    div-int/lit16 v11, v5, 0x400

    add-int/2addr v10, v11

    .line 208
    .local v10, "tileIndex":I
    invoke-interface {v9}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v11

    .line 209
    .local v11, "pixel":B
    const/4 v12, -0x1

    if-ne v11, v12, :cond_f5

    .line 210
    iget-object v12, v0, Lorg/ros/android/view/visualization/layer/OccupancyGridLayer;->tiles:Ljava/util/List;

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/ros/android/view/visualization/layer/OccupancyGridLayer$Tile;

    const v13, -0x222223

    invoke-virtual {v12, v13}, Lorg/ros/android/view/visualization/layer/OccupancyGridLayer$Tile;->writeInt(I)V

    goto :goto_113

    .line 212
    :cond_f5
    const/16 v13, 0x32

    if-ge v11, v13, :cond_105

    .line 213
    iget-object v13, v0, Lorg/ros/android/view/visualization/layer/OccupancyGridLayer;->tiles:Ljava/util/List;

    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/ros/android/view/visualization/layer/OccupancyGridLayer$Tile;

    invoke-virtual {v13, v12}, Lorg/ros/android/view/visualization/layer/OccupancyGridLayer$Tile;->writeInt(I)V

    goto :goto_113

    .line 215
    :cond_105
    iget-object v12, v0, Lorg/ros/android/view/visualization/layer/OccupancyGridLayer;->tiles:Ljava/util/List;

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/ros/android/view/visualization/layer/OccupancyGridLayer$Tile;

    const v13, -0xeeeeef

    invoke-virtual {v12, v13}, Lorg/ros/android/view/visualization/layer/OccupancyGridLayer$Tile;->writeInt(I)V

    .line 219
    :goto_113
    add-int/lit8 v5, v5, 0x1

    .line 220
    if-ne v5, v2, :cond_11a

    .line 221
    const/4 v5, 0x0

    .line 222
    add-int/lit8 v6, v6, 0x1

    .line 224
    .end local v10    # "tileIndex":I
    .end local v11    # "pixel":B
    :cond_11a
    goto :goto_ca

    .line 226
    :cond_11b
    iget-object v10, v0, Lorg/ros/android/view/visualization/layer/OccupancyGridLayer;->tiles:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_121
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_131

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/ros/android/view/visualization/layer/OccupancyGridLayer$Tile;

    .line 227
    .local v12, "tile":Lorg/ros/android/view/visualization/layer/OccupancyGridLayer$Tile;
    invoke-virtual {v12}, Lorg/ros/android/view/visualization/layer/OccupancyGridLayer$Tile;->update()V

    .line 228
    .end local v12    # "tile":Lorg/ros/android/view/visualization/layer/OccupancyGridLayer$Tile;
    goto :goto_121

    .line 230
    :cond_131
    invoke-interface/range {p1 .. p1}, Lnav_msgs/OccupancyGrid;->getHeader()Lstd_msgs/Header;

    move-result-object v10

    invoke-interface {v10}, Lstd_msgs/Header;->getFrameId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v10

    iput-object v10, v0, Lorg/ros/android/view/visualization/layer/OccupancyGridLayer;->frame:Lorg/ros/namespace/GraphName;

    .line 231
    iput-boolean v11, v0, Lorg/ros/android/view/visualization/layer/OccupancyGridLayer;->ready:Z

    .line 232
    return-void
.end method


# virtual methods
.method public draw(Lorg/ros/android/view/visualization/VisualizationView;Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 5
    .param p1, "view"    # Lorg/ros/android/view/visualization/VisualizationView;
    .param p2, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .line 145
    iget-object v0, p0, Lorg/ros/android/view/visualization/layer/OccupancyGridLayer;->previousGl:Ljavax/microedition/khronos/opengles/GL10;

    if-eq v0, p2, :cond_1c

    .line 146
    iget-object v0, p0, Lorg/ros/android/view/visualization/layer/OccupancyGridLayer;->tiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ros/android/view/visualization/layer/OccupancyGridLayer$Tile;

    .line 147
    .local v1, "tile":Lorg/ros/android/view/visualization/layer/OccupancyGridLayer$Tile;
    invoke-virtual {v1}, Lorg/ros/android/view/visualization/layer/OccupancyGridLayer$Tile;->clearHandle()V

    .line 148
    .end local v1    # "tile":Lorg/ros/android/view/visualization/layer/OccupancyGridLayer$Tile;
    goto :goto_a

    .line 149
    :cond_1a
    iput-object p2, p0, Lorg/ros/android/view/visualization/layer/OccupancyGridLayer;->previousGl:Ljavax/microedition/khronos/opengles/GL10;

    .line 151
    :cond_1c
    iget-boolean v0, p0, Lorg/ros/android/view/visualization/layer/OccupancyGridLayer;->ready:Z

    if-eqz v0, :cond_36

    .line 152
    iget-object v0, p0, Lorg/ros/android/view/visualization/layer/OccupancyGridLayer;->tiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ros/android/view/visualization/layer/OccupancyGridLayer$Tile;

    .line 153
    .restart local v1    # "tile":Lorg/ros/android/view/visualization/layer/OccupancyGridLayer$Tile;
    invoke-virtual {v1, p1, p2}, Lorg/ros/android/view/visualization/layer/OccupancyGridLayer$Tile;->draw(Lorg/ros/android/view/visualization/VisualizationView;Ljavax/microedition/khronos/opengles/GL10;)V

    .line 154
    .end local v1    # "tile":Lorg/ros/android/view/visualization/layer/OccupancyGridLayer$Tile;
    goto :goto_26

    .line 156
    :cond_36
    return-void
.end method

.method public getFrame()Lorg/ros/namespace/GraphName;
    .registers 2

    .line 160
    iget-object v0, p0, Lorg/ros/android/view/visualization/layer/OccupancyGridLayer;->frame:Lorg/ros/namespace/GraphName;

    return-object v0
.end method

.method public onStart(Lorg/ros/android/view/visualization/VisualizationView;Lorg/ros/node/ConnectedNode;)V
    .registers 5
    .param p1, "view"    # Lorg/ros/android/view/visualization/VisualizationView;
    .param p2, "connectedNode"    # Lorg/ros/node/ConnectedNode;

    .line 165
    invoke-super {p0, p1, p2}, Lorg/ros/android/view/visualization/layer/SubscriberLayer;->onStart(Lorg/ros/android/view/visualization/VisualizationView;Lorg/ros/node/ConnectedNode;)V

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/ros/android/view/visualization/layer/OccupancyGridLayer;->previousGl:Ljavax/microedition/khronos/opengles/GL10;

    .line 167
    invoke-virtual {p0}, Lorg/ros/android/view/visualization/layer/OccupancyGridLayer;->getSubscriber()Lorg/ros/node/topic/Subscriber;

    move-result-object v0

    new-instance v1, Lorg/ros/android/view/visualization/layer/OccupancyGridLayer$1;

    invoke-direct {v1, p0}, Lorg/ros/android/view/visualization/layer/OccupancyGridLayer$1;-><init>(Lorg/ros/android/view/visualization/layer/OccupancyGridLayer;)V

    invoke-interface {v0, v1}, Lorg/ros/node/topic/Subscriber;->addMessageListener(Lorg/ros/message/MessageListener;)V

    .line 173
    return-void
.end method
