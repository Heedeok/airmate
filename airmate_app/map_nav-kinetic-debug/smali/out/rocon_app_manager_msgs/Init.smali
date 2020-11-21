.class public interface abstract Lrocon_app_manager_msgs/Init;
.super Ljava/lang/Object;
.source "Init.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# Reset the robot_name configured by the app manager, i.e. \n# renamespace the app manager\'s connections. This is typically\n# not necessary as the app manager will just use whatever param\n# is passed in as the robot_name for the namespace. It does get\n# used by later frameworks (e.g. concert) which can pass the \n# app manager a guaranteed unique name.\n#\n# I might be in favour of dropping this necessity in favour of \n# more ugly, but less tedious to handle anonymous names. This\n# may in fact become necessary if we go multi-hub (DJS).\n#\n# Will return False if the app manager is busy (running an app)\n\nstring name\n---\nbool result\n"

.field public static final _TYPE:Ljava/lang/String; = "rocon_app_manager_msgs/Init"
