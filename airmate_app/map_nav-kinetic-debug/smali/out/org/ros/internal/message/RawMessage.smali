.class public interface abstract Lorg/ros/internal/message/RawMessage;
.super Ljava/lang/Object;
.source "RawMessage.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# virtual methods
.method public abstract getBool(Ljava/lang/String;)Z
.end method

.method public abstract getBoolArray(Ljava/lang/String;)[Z
.end method

.method public abstract getByte(Ljava/lang/String;)B
.end method

.method public abstract getByteArray(Ljava/lang/String;)[B
.end method

.method public abstract getChannelBuffer(Ljava/lang/String;)Lorg/jboss/netty/buffer/ChannelBuffer;
.end method

.method public abstract getChar(Ljava/lang/String;)S
.end method

.method public abstract getCharArray(Ljava/lang/String;)[S
.end method

.method public abstract getDefinition()Ljava/lang/String;
.end method

.method public abstract getDuration(Ljava/lang/String;)Lorg/ros/message/Duration;
.end method

.method public abstract getDurationList(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/ros/message/Duration;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFields()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/ros/internal/message/field/Field;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFloat32(Ljava/lang/String;)F
.end method

.method public abstract getFloat32Array(Ljava/lang/String;)[F
.end method

.method public abstract getFloat64(Ljava/lang/String;)D
.end method

.method public abstract getFloat64Array(Ljava/lang/String;)[D
.end method

.method public abstract getIdentifier()Lorg/ros/message/MessageIdentifier;
.end method

.method public abstract getInt16(Ljava/lang/String;)S
.end method

.method public abstract getInt16Array(Ljava/lang/String;)[S
.end method

.method public abstract getInt32(Ljava/lang/String;)I
.end method

.method public abstract getInt32Array(Ljava/lang/String;)[I
.end method

.method public abstract getInt64(Ljava/lang/String;)J
.end method

.method public abstract getInt64Array(Ljava/lang/String;)[J
.end method

.method public abstract getInt8(Ljava/lang/String;)B
.end method

.method public abstract getInt8Array(Ljava/lang/String;)Lorg/jboss/netty/buffer/ChannelBuffer;
.end method

.method public abstract getMessage(Ljava/lang/String;)Lorg/ros/internal/message/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/ros/internal/message/Message;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract getMessageList(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/ros/internal/message/Message;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getPackage()Ljava/lang/String;
.end method

.method public abstract getString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getStringList(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTime(Ljava/lang/String;)Lorg/ros/message/Time;
.end method

.method public abstract getTimeList(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/ros/message/Time;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getType()Ljava/lang/String;
.end method

.method public abstract getUInt16(Ljava/lang/String;)S
.end method

.method public abstract getUInt16Array(Ljava/lang/String;)[S
.end method

.method public abstract getUInt32(Ljava/lang/String;)I
.end method

.method public abstract getUInt32Array(Ljava/lang/String;)[I
.end method

.method public abstract getUInt64(Ljava/lang/String;)J
.end method

.method public abstract getUInt64Array(Ljava/lang/String;)[J
.end method

.method public abstract getUInt8(Ljava/lang/String;)S
.end method

.method public abstract getUInt8Array(Ljava/lang/String;)[S
.end method

.method public abstract setBool(Ljava/lang/String;Z)V
.end method

.method public abstract setBoolArray(Ljava/lang/String;[Z)V
.end method

.method public abstract setByte(Ljava/lang/String;B)V
.end method

.method public abstract setByteArray(Ljava/lang/String;[B)V
.end method

.method public abstract setChannelBuffer(Ljava/lang/String;Lorg/jboss/netty/buffer/ChannelBuffer;)V
.end method

.method public abstract setChar(Ljava/lang/String;S)V
.end method

.method public abstract setCharArray(Ljava/lang/String;[S)V
.end method

.method public abstract setDuration(Ljava/lang/String;Lorg/ros/message/Duration;)V
.end method

.method public abstract setDurationList(Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/ros/message/Duration;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setFloat32(Ljava/lang/String;F)V
.end method

.method public abstract setFloat32Array(Ljava/lang/String;[F)V
.end method

.method public abstract setFloat64(Ljava/lang/String;D)V
.end method

.method public abstract setFloat64Array(Ljava/lang/String;[D)V
.end method

.method public abstract setInt16(Ljava/lang/String;S)V
.end method

.method public abstract setInt16Array(Ljava/lang/String;[S)V
.end method

.method public abstract setInt32(Ljava/lang/String;I)V
.end method

.method public abstract setInt32Array(Ljava/lang/String;[I)V
.end method

.method public abstract setInt64(Ljava/lang/String;J)V
.end method

.method public abstract setInt64Array(Ljava/lang/String;[J)V
.end method

.method public abstract setInt8(Ljava/lang/String;B)V
.end method

.method public abstract setInt8Array(Ljava/lang/String;[B)V
.end method

.method public abstract setMessage(Ljava/lang/String;Lorg/ros/internal/message/Message;)V
.end method

.method public abstract setMessageList(Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/ros/internal/message/Message;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setString(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setStringList(Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setTime(Ljava/lang/String;Lorg/ros/message/Time;)V
.end method

.method public abstract setTimeList(Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/ros/message/Time;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setUInt16(Ljava/lang/String;S)V
.end method

.method public abstract setUInt16Array(Ljava/lang/String;[S)V
.end method

.method public abstract setUInt32(Ljava/lang/String;I)V
.end method

.method public abstract setUInt32Array(Ljava/lang/String;[I)V
.end method

.method public abstract setUInt64(Ljava/lang/String;J)V
.end method

.method public abstract setUInt64Array(Ljava/lang/String;[J)V
.end method

.method public abstract setUInt8(Ljava/lang/String;B)V
.end method

.method public abstract setUInt8Array(Ljava/lang/String;[B)V
.end method
