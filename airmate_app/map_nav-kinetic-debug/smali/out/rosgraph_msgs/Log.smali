.class public interface abstract Lrosgraph_msgs/Log;
.super Ljava/lang/Object;
.source "Log.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final DEBUG:B = 0x1t

.field public static final ERROR:B = 0x8t

.field public static final FATAL:B = 0x10t

.field public static final INFO:B = 0x2t

.field public static final WARN:B = 0x4t

.field public static final _DEFINITION:Ljava/lang/String; = "##\n## Severity level constants\n##\nbyte DEBUG=1 #debug level\nbyte INFO=2  #general level\nbyte WARN=4  #warning level\nbyte ERROR=8 #error level\nbyte FATAL=16 #fatal/critical level\n##\n## Fields\n##\nHeader header\nbyte level\nstring name # name of the node\nstring msg # message \nstring file # file the message came from\nstring function # function the message came from\nuint32 line # line the message came from\nstring[] topics # topic names that the node publishes\n"

.field public static final _TYPE:Ljava/lang/String; = "rosgraph_msgs/Log"


# virtual methods
.method public abstract getFile()Ljava/lang/String;
.end method

.method public abstract getFunction()Ljava/lang/String;
.end method

.method public abstract getHeader()Lstd_msgs/Header;
.end method

.method public abstract getLevel()B
.end method

.method public abstract getLine()I
.end method

.method public abstract getMsg()Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getTopics()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setFile(Ljava/lang/String;)V
.end method

.method public abstract setFunction(Ljava/lang/String;)V
.end method

.method public abstract setHeader(Lstd_msgs/Header;)V
.end method

.method public abstract setLevel(B)V
.end method

.method public abstract setLine(I)V
.end method

.method public abstract setMsg(Ljava/lang/String;)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setTopics(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
