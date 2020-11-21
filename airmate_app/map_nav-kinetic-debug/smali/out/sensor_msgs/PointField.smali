.class public interface abstract Lsensor_msgs/PointField;
.super Ljava/lang/Object;
.source "PointField.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final FLOAT32:B = 0x7t

.field public static final FLOAT64:B = 0x8t

.field public static final INT16:B = 0x3t

.field public static final INT32:B = 0x5t

.field public static final INT8:B = 0x1t

.field public static final UINT16:B = 0x4t

.field public static final UINT32:B = 0x6t

.field public static final UINT8:B = 0x2t

.field public static final _DEFINITION:Ljava/lang/String; = "# This message holds the description of one point entry in the\n# PointCloud2 message format.\nuint8 INT8    = 1\nuint8 UINT8   = 2\nuint8 INT16   = 3\nuint8 UINT16  = 4\nuint8 INT32   = 5\nuint8 UINT32  = 6\nuint8 FLOAT32 = 7\nuint8 FLOAT64 = 8\n\nstring name      # Name of field\nuint32 offset    # Offset from start of point struct\nuint8  datatype  # Datatype enumeration, see above\nuint32 count     # How many elements in the field\n"

.field public static final _TYPE:Ljava/lang/String; = "sensor_msgs/PointField"


# virtual methods
.method public abstract getCount()I
.end method

.method public abstract getDatatype()B
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getOffset()I
.end method

.method public abstract setCount(I)V
.end method

.method public abstract setDatatype(B)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setOffset(I)V
.end method
