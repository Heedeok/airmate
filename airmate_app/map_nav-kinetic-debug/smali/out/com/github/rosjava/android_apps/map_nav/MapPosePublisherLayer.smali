.class public Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer;
.super Lorg/ros/android/view/visualization/layer/DefaultLayer;
.source "MapPosePublisherLayer.java"


# static fields
.field private static final GOAL_MODE:I = 0x1

.field private static final POSE_MODE:I


# instance fields
.field private androidGoalPublisher:Lorg/ros/node/topic/Publisher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ros/node/topic/Publisher<",
            "Lgeometry_msgs/PoseStamped;",
            ">;"
        }
    .end annotation
.end field

.field private connectedNode:Lorg/ros/node/ConnectedNode;

.field public fixedPose:Lorg/ros/rosjava_geometry/Transform;

.field public gestureDetector:Landroid/view/GestureDetector;

.field private goalPublisher:Lorg/ros/node/topic/Publisher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ros/node/topic/Publisher<",
            "Lmove_base_msgs/MoveBaseActionGoal;",
            ">;"
        }
    .end annotation
.end field

.field private initialPosePublisher:Lorg/ros/node/topic/Publisher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ros/node/topic/Publisher<",
            "Lgeometry_msgs/PoseWithCovarianceStamped;",
            ">;"
        }
    .end annotation
.end field

.field private initialPoseTopic:Ljava/lang/String;

.field public mapFrame:Ljava/lang/String;

.field private mode:I

.field private moveBaseGoalTopic:Ljava/lang/String;

.field private nameResolver:Lorg/ros/namespace/NameResolver;

.field public pose:Lorg/ros/rosjava_geometry/Transform;

.field public robotFrame:Ljava/lang/String;

.field public shape:Lorg/ros/android/view/visualization/shape/Shape;

.field private simpleGoalTopic:Ljava/lang/String;

.field public visible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/ros/namespace/NameResolver;Lcom/github/rosjava/android_remocons/common_tools/apps/AppParameters;Lcom/github/rosjava/android_remocons/common_tools/apps/AppRemappings;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "newNameResolver"    # Lorg/ros/namespace/NameResolver;
    .param p3, "params"    # Lcom/github/rosjava/android_remocons/common_tools/apps/AppParameters;
    .param p4, "remaps"    # Lcom/github/rosjava/android_remocons/common_tools/apps/AppRemappings;

    .line 53
    invoke-direct {p0}, Lorg/ros/android/view/visualization/layer/DefaultLayer;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer;->visible:Z

    .line 54
    iput-object p2, p0, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer;->nameResolver:Lorg/ros/namespace/NameResolver;

    .line 55
    const-string v0, "map_frame"

    const v1, 0x7f0c002a

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lcom/github/rosjava/android_remocons/common_tools/apps/AppParameters;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer;->mapFrame:Ljava/lang/String;

    .line 56
    const-string v0, "robot_frame"

    const v1, 0x7f0c0032

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lcom/github/rosjava/android_remocons/common_tools/apps/AppParameters;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer;->robotFrame:Ljava/lang/String;

    .line 57
    const v0, 0x7f0c0027

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/github/rosjava/android_remocons/common_tools/apps/AppRemappings;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer;->initialPoseTopic:Ljava/lang/String;

    .line 58
    const v0, 0x7f0c0037

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/github/rosjava/android_remocons/common_tools/apps/AppRemappings;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer;->simpleGoalTopic:Ljava/lang/String;

    .line 59
    const v0, 0x7f0c002d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/github/rosjava/android_remocons/common_tools/apps/AppRemappings;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer;->moveBaseGoalTopic:Ljava/lang/String;

    .line 60
    return-void
.end method

.method private angle(DDDD)D
    .registers 13
    .param p1, "x1"    # D
    .param p3, "y1"    # D
    .param p5, "x2"    # D
    .param p7, "y2"    # D

    .line 78
    sub-double v0, p3, p7

    sub-double v2, p1, p5

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public draw(Lorg/ros/android/view/visualization/VisualizationView;Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 4
    .param p1, "view"    # Lorg/ros/android/view/visualization/VisualizationView;
    .param p2, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .line 71
    iget-boolean v0, p0, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer;->visible:Z

    if-eqz v0, :cond_e

    .line 72
    iget-object v0, p0, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer;->pose:Lorg/ros/rosjava_geometry/Transform;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer;->shape:Lorg/ros/android/view/visualization/shape/Shape;

    invoke-interface {v0, p1, p2}, Lorg/ros/android/view/visualization/shape/Shape;->draw(Lorg/ros/android/view/visualization/VisualizationView;Ljavax/microedition/khronos/opengles/GL10;)V

    .line 75
    :cond_e
    return-void
.end method

.method public onShutdown(Lorg/ros/android/view/visualization/VisualizationView;Lorg/ros/node/Node;)V
    .registers 4
    .param p1, "view"    # Lorg/ros/android/view/visualization/VisualizationView;
    .param p2, "node"    # Lorg/ros/node/Node;

    .line 151
    iget-object v0, p0, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer;->initialPosePublisher:Lorg/ros/node/topic/Publisher;

    invoke-interface {v0}, Lorg/ros/node/topic/Publisher;->shutdown()V

    .line 152
    iget-object v0, p0, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer;->androidGoalPublisher:Lorg/ros/node/topic/Publisher;

    invoke-interface {v0}, Lorg/ros/node/topic/Publisher;->shutdown()V

    .line 153
    iget-object v0, p0, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer;->goalPublisher:Lorg/ros/node/topic/Publisher;

    invoke-interface {v0}, Lorg/ros/node/topic/Publisher;->shutdown()V

    .line 154
    return-void
.end method

.method public onStart(Lorg/ros/android/view/visualization/VisualizationView;Lorg/ros/node/ConnectedNode;)V
    .registers 5
    .param p1, "view"    # Lorg/ros/android/view/visualization/VisualizationView;
    .param p2, "connectedNode2"    # Lorg/ros/node/ConnectedNode;

    .line 128
    iput-object p2, p0, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer;->connectedNode:Lorg/ros/node/ConnectedNode;

    .line 129
    new-instance v0, Lorg/ros/android/view/visualization/shape/PixelSpacePoseShape;

    invoke-direct {v0}, Lorg/ros/android/view/visualization/shape/PixelSpacePoseShape;-><init>()V

    iput-object v0, p0, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer;->shape:Lorg/ros/android/view/visualization/shape/Shape;

    .line 130
    const/4 v0, 0x1

    iput v0, p0, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer;->mode:I

    .line 131
    iget-object v0, p0, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer;->nameResolver:Lorg/ros/namespace/NameResolver;

    iget-object v1, p0, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer;->initialPoseTopic:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/ros/namespace/NameResolver;->resolve(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "geometry_msgs/PoseWithCovarianceStamped"

    invoke-interface {p2, v0, v1}, Lorg/ros/node/ConnectedNode;->newPublisher(Ljava/lang/String;Ljava/lang/String;)Lorg/ros/node/topic/Publisher;

    move-result-object v0

    iput-object v0, p0, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer;->initialPosePublisher:Lorg/ros/node/topic/Publisher;

    .line 132
    iget-object v0, p0, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer;->nameResolver:Lorg/ros/namespace/NameResolver;

    iget-object v1, p0, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer;->simpleGoalTopic:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/ros/namespace/NameResolver;->resolve(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "geometry_msgs/PoseStamped"

    invoke-interface {p2, v0, v1}, Lorg/ros/node/ConnectedNode;->newPublisher(Ljava/lang/String;Ljava/lang/String;)Lorg/ros/node/topic/Publisher;

    move-result-object v0

    iput-object v0, p0, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer;->androidGoalPublisher:Lorg/ros/node/topic/Publisher;

    .line 133
    iget-object v0, p0, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer;->nameResolver:Lorg/ros/namespace/NameResolver;

    iget-object v1, p0, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer;->moveBaseGoalTopic:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/ros/namespace/NameResolver;->resolve(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "move_base_msgs/MoveBaseActionGoal"

    invoke-interface {p2, v0, v1}, Lorg/ros/node/ConnectedNode;->newPublisher(Ljava/lang/String;Ljava/lang/String;)Lorg/ros/node/topic/Publisher;

    move-result-object v0

    iput-object v0, p0, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer;->goalPublisher:Lorg/ros/node/topic/Publisher;

    .line 134
    new-instance v0, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer$1;

    invoke-direct {v0, p0, p1}, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer$1;-><init>(Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer;Lorg/ros/android/view/visualization/VisualizationView;)V

    invoke-virtual {p1, v0}, Lorg/ros/android/view/visualization/VisualizationView;->post(Ljava/lang/Runnable;)Z

    .line 148
    return-void
.end method

.method public onTouchEvent(Lorg/ros/android/view/visualization/VisualizationView;Landroid/view/MotionEvent;)Z
    .registers 18
    .param p1, "view"    # Lorg/ros/android/view/visualization/VisualizationView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 82
    move-object v9, p0

    iget-boolean v0, v9, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer;->visible:Z

    const/4 v10, 0x0

    if-eqz v0, :cond_17a

    .line 83
    iget-object v0, v9, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer;->pose:Lorg/ros/rosjava_geometry/Transform;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v11, 0x1

    if-ne v0, v1, :cond_5a

    .line 85
    iget-object v0, v9, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer;->pose:Lorg/ros/rosjava_geometry/Transform;

    invoke-static {}, Lorg/ros/rosjava_geometry/Vector3;->zero()Lorg/ros/rosjava_geometry/Vector3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ros/rosjava_geometry/Transform;->apply(Lorg/ros/rosjava_geometry/Vector3;)Lorg/ros/rosjava_geometry/Vector3;

    move-result-object v10

    .line 86
    .local v10, "poseVector":Lorg/ros/rosjava_geometry/Vector3;
    invoke-virtual/range {p1 .. p1}, Lorg/ros/android/view/visualization/VisualizationView;->getCamera()Lorg/ros/android/view/visualization/XYOrthographicCamera;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lorg/ros/android/view/visualization/XYOrthographicCamera;->toCameraFrame(II)Lorg/ros/rosjava_geometry/Vector3;

    move-result-object v12

    .line 87
    .local v12, "pointerVector":Lorg/ros/rosjava_geometry/Vector3;
    invoke-static {v10}, Lorg/ros/rosjava_geometry/Transform;->translation(Lorg/ros/rosjava_geometry/Vector3;)Lorg/ros/rosjava_geometry/Transform;

    move-result-object v13

    invoke-virtual {v12}, Lorg/ros/rosjava_geometry/Vector3;->getX()D

    move-result-wide v1

    invoke-virtual {v12}, Lorg/ros/rosjava_geometry/Vector3;->getY()D

    move-result-wide v3

    invoke-virtual {v10}, Lorg/ros/rosjava_geometry/Vector3;->getX()D

    move-result-wide v5

    invoke-virtual {v10}, Lorg/ros/rosjava_geometry/Vector3;->getY()D

    move-result-wide v7

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer;->angle(DDDD)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/ros/rosjava_geometry/Transform;->zRotation(D)Lorg/ros/rosjava_geometry/Transform;

    move-result-object v0

    invoke-virtual {v13, v0}, Lorg/ros/rosjava_geometry/Transform;->multiply(Lorg/ros/rosjava_geometry/Transform;)Lorg/ros/rosjava_geometry/Transform;

    move-result-object v0

    iput-object v0, v9, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer;->pose:Lorg/ros/rosjava_geometry/Transform;

    .line 88
    iget-object v0, v9, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer;->shape:Lorg/ros/android/view/visualization/shape/Shape;

    iget-object v1, v9, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer;->pose:Lorg/ros/rosjava_geometry/Transform;

    invoke-interface {v0, v1}, Lorg/ros/android/view/visualization/shape/Shape;->setTransform(Lorg/ros/rosjava_geometry/Transform;)V

    .line 89
    return v11

    .line 90
    .end local v10    # "poseVector":Lorg/ros/rosjava_geometry/Vector3;
    .end local v12    # "pointerVector":Lorg/ros/rosjava_geometry/Vector3;
    :cond_5a
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v11, :cond_17a

    .line 91
    iget v0, v9, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer;->mode:I

    packed-switch v0, :pswitch_data_182

    goto/16 :goto_177

    .line 109
    :pswitch_67
    iget-object v0, v9, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer;->pose:Lorg/ros/rosjava_geometry/Transform;

    iget-object v1, v9, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer;->robotFrame:Ljava/lang/String;

    invoke-static {v1}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v1

    iget-object v2, v9, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer;->connectedNode:Lorg/ros/node/ConnectedNode;

    invoke-interface {v2}, Lorg/ros/node/ConnectedNode;->getCurrentTime()Lorg/ros/message/Time;

    move-result-object v2

    iget-object v3, v9, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer;->androidGoalPublisher:Lorg/ros/node/topic/Publisher;

    invoke-interface {v3}, Lorg/ros/node/topic/Publisher;->newMessage()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgeometry_msgs/PoseStamped;

    invoke-virtual {v0, v1, v2, v3}, Lorg/ros/rosjava_geometry/Transform;->toPoseStampedMessage(Lorg/ros/namespace/GraphName;Lorg/ros/message/Time;Lgeometry_msgs/PoseStamped;)Lgeometry_msgs/PoseStamped;

    move-result-object v0

    .line 110
    .local v0, "poseStamped2":Lgeometry_msgs/PoseStamped;
    iget-object v1, v9, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer;->androidGoalPublisher:Lorg/ros/node/topic/Publisher;

    invoke-interface {v1, v0}, Lorg/ros/node/topic/Publisher;->publish(Ljava/lang/Object;)V

    .line 111
    iget-object v1, v9, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer;->goalPublisher:Lorg/ros/node/topic/Publisher;

    invoke-interface {v1}, Lorg/ros/node/topic/Publisher;->newMessage()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmove_base_msgs/MoveBaseActionGoal;

    .line 112
    .local v1, "message":Lmove_base_msgs/MoveBaseActionGoal;
    invoke-interface {v0}, Lgeometry_msgs/PoseStamped;->getHeader()Lstd_msgs/Header;

    move-result-object v2

    invoke-interface {v1, v2}, Lmove_base_msgs/MoveBaseActionGoal;->setHeader(Lstd_msgs/Header;)V

    .line 113
    invoke-interface {v1}, Lmove_base_msgs/MoveBaseActionGoal;->getGoalId()Lactionlib_msgs/GoalID;

    move-result-object v2

    iget-object v3, v9, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer;->connectedNode:Lorg/ros/node/ConnectedNode;

    invoke-interface {v3}, Lorg/ros/node/ConnectedNode;->getCurrentTime()Lorg/ros/message/Time;

    move-result-object v3

    invoke-interface {v2, v3}, Lactionlib_msgs/GoalID;->setStamp(Lorg/ros/message/Time;)V

    .line 114
    invoke-interface {v1}, Lmove_base_msgs/MoveBaseActionGoal;->getGoalId()Lactionlib_msgs/GoalID;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "move_base/move_base_client_android"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v9, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer;->connectedNode:Lorg/ros/node/ConnectedNode;

    invoke-interface {v4}, Lorg/ros/node/ConnectedNode;->getCurrentTime()Lorg/ros/message/Time;

    move-result-object v4

    invoke-virtual {v4}, Lorg/ros/message/Time;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lactionlib_msgs/GoalID;->setId(Ljava/lang/String;)V

    .line 115
    invoke-interface {v1}, Lmove_base_msgs/MoveBaseActionGoal;->getGoal()Lmove_base_msgs/MoveBaseGoal;

    move-result-object v2

    invoke-interface {v2, v0}, Lmove_base_msgs/MoveBaseGoal;->setTargetPose(Lgeometry_msgs/PoseStamped;)V

    .line 116
    iget-object v2, v9, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer;->goalPublisher:Lorg/ros/node/topic/Publisher;

    invoke-interface {v2, v1}, Lorg/ros/node/topic/Publisher;->publish(Ljava/lang/Object;)V

    goto/16 :goto_177

    .line 93
    .end local v0    # "poseStamped2":Lgeometry_msgs/PoseStamped;
    .end local v1    # "message":Lmove_base_msgs/MoveBaseActionGoal;
    :pswitch_d2
    invoke-virtual/range {p1 .. p1}, Lorg/ros/android/view/visualization/VisualizationView;->getCamera()Lorg/ros/android/view/visualization/XYOrthographicCamera;

    move-result-object v0

    iget-object v1, v9, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer;->mapFrame:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/ros/android/view/visualization/XYOrthographicCamera;->setFrame(Ljava/lang/String;)V

    .line 94
    iget-object v0, v9, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer;->fixedPose:Lorg/ros/rosjava_geometry/Transform;

    invoke-static {}, Lorg/ros/rosjava_geometry/Vector3;->zero()Lorg/ros/rosjava_geometry/Vector3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ros/rosjava_geometry/Transform;->apply(Lorg/ros/rosjava_geometry/Vector3;)Lorg/ros/rosjava_geometry/Vector3;

    move-result-object v12

    .line 95
    .local v12, "poseVector2":Lorg/ros/rosjava_geometry/Vector3;
    invoke-virtual/range {p1 .. p1}, Lorg/ros/android/view/visualization/VisualizationView;->getCamera()Lorg/ros/android/view/visualization/XYOrthographicCamera;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lorg/ros/android/view/visualization/XYOrthographicCamera;->toCameraFrame(II)Lorg/ros/rosjava_geometry/Vector3;

    move-result-object v13

    .line 96
    .local v13, "pointerVector2":Lorg/ros/rosjava_geometry/Vector3;
    invoke-static {v12}, Lorg/ros/rosjava_geometry/Transform;->translation(Lorg/ros/rosjava_geometry/Vector3;)Lorg/ros/rosjava_geometry/Transform;

    move-result-object v14

    invoke-virtual {v13}, Lorg/ros/rosjava_geometry/Vector3;->getX()D

    move-result-wide v1

    invoke-virtual {v13}, Lorg/ros/rosjava_geometry/Vector3;->getY()D

    move-result-wide v3

    invoke-virtual {v12}, Lorg/ros/rosjava_geometry/Vector3;->getX()D

    move-result-wide v5

    invoke-virtual {v12}, Lorg/ros/rosjava_geometry/Vector3;->getY()D

    move-result-wide v7

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer;->angle(DDDD)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/ros/rosjava_geometry/Transform;->zRotation(D)Lorg/ros/rosjava_geometry/Transform;

    move-result-object v0

    invoke-virtual {v14, v0}, Lorg/ros/rosjava_geometry/Transform;->multiply(Lorg/ros/rosjava_geometry/Transform;)Lorg/ros/rosjava_geometry/Transform;

    move-result-object v0

    iput-object v0, v9, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer;->fixedPose:Lorg/ros/rosjava_geometry/Transform;

    .line 97
    invoke-virtual/range {p1 .. p1}, Lorg/ros/android/view/visualization/VisualizationView;->getCamera()Lorg/ros/android/view/visualization/XYOrthographicCamera;

    move-result-object v0

    iget-object v1, v9, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer;->robotFrame:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/ros/android/view/visualization/XYOrthographicCamera;->setFrame(Ljava/lang/String;)V

    .line 98
    iget-object v0, v9, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer;->fixedPose:Lorg/ros/rosjava_geometry/Transform;

    iget-object v1, v9, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer;->robotFrame:Ljava/lang/String;

    invoke-static {v1}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v1

    iget-object v2, v9, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer;->connectedNode:Lorg/ros/node/ConnectedNode;

    invoke-interface {v2}, Lorg/ros/node/ConnectedNode;->getCurrentTime()Lorg/ros/message/Time;

    move-result-object v2

    iget-object v3, v9, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer;->androidGoalPublisher:Lorg/ros/node/topic/Publisher;

    invoke-interface {v3}, Lorg/ros/node/topic/Publisher;->newMessage()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgeometry_msgs/PoseStamped;

    invoke-virtual {v0, v1, v2, v3}, Lorg/ros/rosjava_geometry/Transform;->toPoseStampedMessage(Lorg/ros/namespace/GraphName;Lorg/ros/message/Time;Lgeometry_msgs/PoseStamped;)Lgeometry_msgs/PoseStamped;

    move-result-object v0

    .line 99
    .local v0, "poseStamped":Lgeometry_msgs/PoseStamped;
    iget-object v1, v9, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer;->initialPosePublisher:Lorg/ros/node/topic/Publisher;

    invoke-interface {v1}, Lorg/ros/node/topic/Publisher;->newMessage()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgeometry_msgs/PoseWithCovarianceStamped;

    .line 100
    .local v1, "initialPose":Lgeometry_msgs/PoseWithCovarianceStamped;
    invoke-interface {v1}, Lgeometry_msgs/PoseWithCovarianceStamped;->getHeader()Lstd_msgs/Header;

    move-result-object v2

    iget-object v3, v9, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer;->mapFrame:Ljava/lang/String;

    invoke-interface {v2, v3}, Lstd_msgs/Header;->setFrameId(Ljava/lang/String;)V

    .line 101
    invoke-interface {v1}, Lgeometry_msgs/PoseWithCovarianceStamped;->getPose()Lgeometry_msgs/PoseWithCovariance;

    move-result-object v2

    invoke-interface {v0}, Lgeometry_msgs/PoseStamped;->getPose()Lgeometry_msgs/Pose;

    move-result-object v3

    invoke-interface {v2, v3}, Lgeometry_msgs/PoseWithCovariance;->setPose(Lgeometry_msgs/Pose;)V

    .line 102
    invoke-interface {v1}, Lgeometry_msgs/PoseWithCovarianceStamped;->getPose()Lgeometry_msgs/PoseWithCovariance;

    move-result-object v2

    invoke-interface {v2}, Lgeometry_msgs/PoseWithCovariance;->getCovariance()[D

    move-result-object v2

    .line 103
    .local v2, "covariance":[D
    const-wide/high16 v3, 0x3fd0000000000000L    # 0.25

    aput-wide v3, v2, v10

    .line 104
    const/4 v5, 0x7

    aput-wide v3, v2, v5

    .line 105
    const/16 v3, 0x23

    const-wide v4, 0x3fb18bc440000000L    # 0.06853891909122467

    aput-wide v4, v2, v3

    .line 106
    iget-object v3, v9, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer;->initialPosePublisher:Lorg/ros/node/topic/Publisher;

    invoke-interface {v3, v1}, Lorg/ros/node/topic/Publisher;->publish(Ljava/lang/Object;)V

    .line 107
    nop

    .line 119
    .end local v0    # "poseStamped":Lgeometry_msgs/PoseStamped;
    .end local v1    # "initialPose":Lgeometry_msgs/PoseWithCovarianceStamped;
    .end local v2    # "covariance":[D
    .end local v12    # "poseVector2":Lorg/ros/rosjava_geometry/Vector3;
    .end local v13    # "pointerVector2":Lorg/ros/rosjava_geometry/Vector3;
    :goto_177
    iput-boolean v10, v9, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer;->visible:Z

    .line 120
    return v11

    .line 123
    :cond_17a
    iget-object v0, v9, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer;->gestureDetector:Landroid/view/GestureDetector;

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 124
    return v10

    :pswitch_data_182
    .packed-switch 0x0
        :pswitch_d2
        :pswitch_67
    .end packed-switch
.end method

.method public setGoalMode()V
    .registers 2

    .line 67
    const/4 v0, 0x1

    iput v0, p0, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer;->mode:I

    .line 68
    return-void
.end method

.method public setPoseMode()V
    .registers 2

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer;->mode:I

    .line 64
    return-void
.end method
