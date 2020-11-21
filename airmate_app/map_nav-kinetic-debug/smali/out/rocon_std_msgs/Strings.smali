.class public interface abstract Lrocon_std_msgs/Strings;
.super Ljava/lang/Object;
.source "Strings.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final APPLICATION_FRAMEWORK_GROOVY:Ljava/lang/String; = "groovy"

.field public static final APPLICATION_FRAMEWORK_HYDRO:Ljava/lang/String; = "hydro"

.field public static final APPLICATION_FRAMEWORK_INDIGO:Ljava/lang/String; = "indigo"

.field public static final APPLICATION_FRAMEWORK_OPROS:Ljava/lang/String; = "opros"

.field public static final APPLICATION_FRAMEWORK_OTHER:Ljava/lang/String; = "application_framework_other"

.field public static final APPLICATION_FRAMEWORK_ROS_OTHER:Ljava/lang/String; = "ros_other"

.field public static final HW_GALAXY:Ljava/lang/String; = "galaxy"

.field public static final HW_MEGA:Ljava/lang/String; = "mega"

.field public static final HW_NOTE10:Ljava/lang/String; = "note10"

.field public static final HW_NOTE3:Ljava/lang/String; = "note3"

.field public static final HW_PC:Ljava/lang/String; = "pc"

.field public static final HW_PHONE_OTHER:Ljava/lang/String; = "phone_other"

.field public static final HW_PR2:Ljava/lang/String; = "pr2"

.field public static final HW_ROBOT_OTHER:Ljava/lang/String; = "robot_other"

.field public static final HW_TABLET_OTHER:Ljava/lang/String; = "tablet_other"

.field public static final HW_TURTLEBOT2:Ljava/lang/String; = "turtlebot2"

.field public static final HW_WAITERBOT:Ljava/lang/String; = "waiterbot"

.field public static final HW_XOOM:Ljava/lang/String; = "xoom"

.field public static final OS_ARCH:Ljava/lang/String; = "arch"

.field public static final OS_CHROME:Ljava/lang/String; = "chrome"

.field public static final OS_DEBIAN:Ljava/lang/String; = "debian"

.field public static final OS_FEDORA:Ljava/lang/String; = "fedora"

.field public static final OS_FIREFOX:Ljava/lang/String; = "firefox"

.field public static final OS_FREEBSD:Ljava/lang/String; = "freebsd"

.field public static final OS_GENTOO:Ljava/lang/String; = "gentoo"

.field public static final OS_HONEYCOMB:Ljava/lang/String; = "honeycomb"

.field public static final OS_ICE_CREAM_SANDWICH:Ljava/lang/String; = "ice_cream_sandwich"

.field public static final OS_INTERNET_EXPLORER:Ljava/lang/String; = "internet_explorer"

.field public static final OS_JELLYBEAN:Ljava/lang/String; = "jellybean"

.field public static final OS_KITKAT:Ljava/lang/String; = "kitkat"

.field public static final OS_OPERA:Ljava/lang/String; = "opera"

.field public static final OS_OSX:Ljava/lang/String; = "osx"

.field public static final OS_PRECISE:Ljava/lang/String; = "precise"

.field public static final OS_QUANTAL:Ljava/lang/String; = "quantal"

.field public static final OS_RARING:Ljava/lang/String; = "raring"

.field public static final OS_SAFARI:Ljava/lang/String; = "safari"

.field public static final OS_SAUCY:Ljava/lang/String; = "saucy"

.field public static final OS_WINDOWS7:Ljava/lang/String; = "windows7"

.field public static final OS_WINXP:Ljava/lang/String; = "winxp"

.field public static final ROCON_VERSION:Ljava/lang/String; = "acdc"

.field public static final TAG_GAZEBO_ROBOT_TYPE:Ljava/lang/String; = "concert_gazebo"

.field public static final TAG_RAPP:Ljava/lang/String; = "rocon_app"

.field public static final TAG_SERVICE:Ljava/lang/String; = "concert_service"

.field public static final TAG_SOFTWARE:Ljava/lang/String; = "software_farm"

.field public static final URI_WILDCARD:Ljava/lang/String; = "*"

.field public static final _DEFINITION:Ljava/lang/String; = "# Strings used in the rocon framework.\n\n################################ Versions ####################################\n\n# Rocon versions come from the names of classical composers.\n#\n# ACDC - http://en.wikipedia.org/?title=AC/DC\n#     Australian, awesome and on a highway to hell.\n\nstring ROCON_VERSION=acdc\n\n######################## Rocon URIS ###########################################\n\n# These are a convenience to help avoid typos and make easy lookups whatever\n# language you are in. The real deal is in rocon_uri/yaml/rules.yaml - make\n# sure these stay up to date with respect to each other (TODO: perhaps an\n# autogenerator of this msg file?).\n\n###### GENERAL IDENTIFIERS ######\n\nstring URI_WILDCARD=*\n\n###### HARDWARE_PLATFORMS ######\nstring HW_PC=pc\nstring HW_TURTLEBOT2=turtlebot2\nstring HW_PR2=pr2\nstring HW_WAITERBOT=waiterbot\nstring HW_ROBOT_OTHER=robot_other\n# Phones\nstring HW_GALAXY=galaxy\nstring HW_MEGA=mega\nstring HW_NOTE3=note3\nstring HW_PHONE_OTHER=phone_other\n# Tablets\nstring HW_XOOM=xoom\nstring HW_NOTE10=note10\nstring HW_TABLET_OTHER=tablet_other\n\n###### APPLICATION_FRAMEWORKS ######\nstring APPLICATION_FRAMEWORK_OTHER=application_framework_other\nstring APPLICATION_FRAMEWORK_OPROS=opros\n# Ros\nstring APPLICATION_FRAMEWORK_GROOVY=groovy\nstring APPLICATION_FRAMEWORK_HYDRO=hydro\nstring APPLICATION_FRAMEWORK_INDIGO=indigo\nstring APPLICATION_FRAMEWORK_ROS_OTHER=ros_other\n\n###### OPERATING SYSTEMS ######\nstring OS_OSX=osx\nstring OS_FREEBSD=freebsd\n# Windows\nstring OS_WINXP=winxp\nstring OS_WINDOWS7=windows7\n# linux\nstring OS_ARCH=arch\nstring OS_DEBIAN=debian\nstring OS_FEDORA=fedora\nstring OS_GENTOO=gentoo\n# linux/ubuntu \nstring OS_PRECISE=precise\nstring OS_QUANTAL=quantal\nstring OS_RARING=raring\nstring OS_SAUCY=saucy\n# Android\nstring OS_HONEYCOMB=honeycomb\nstring OS_ICE_CREAM_SANDWICH=ice_cream_sandwich\nstring OS_JELLYBEAN=jellybean\nstring OS_KITKAT=kitkat\n# Web\nstring OS_CHROME=chrome\nstring OS_FIREFOX=firefox\nstring OS_INTERNET_EXPLORER=internet_explorer\nstring OS_SAFARI=safari\nstring OS_OPERA=opera\n\n######################## Rocon Export Tags################################\n\n# Package exports used in concert_service_manager and rocon_app_utilities\nstring TAG_SERVICE=concert_service\nstring TAG_RAPP=rocon_app\nstring TAG_GAZEBO_ROBOT_TYPE=concert_gazebo\nstring TAG_SOFTWARE=software_farm\n"

.field public static final _TYPE:Ljava/lang/String; = "rocon_std_msgs/Strings"
