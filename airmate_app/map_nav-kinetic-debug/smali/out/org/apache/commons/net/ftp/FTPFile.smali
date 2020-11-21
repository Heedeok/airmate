.class public Lorg/apache/commons/net/ftp/FTPFile;
.super Ljava/lang/Object;
.source "FTPFile.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final DIRECTORY_TYPE:I = 0x1

.field public static final EXECUTE_PERMISSION:I = 0x2

.field public static final FILE_TYPE:I = 0x0

.field public static final GROUP_ACCESS:I = 0x1

.field public static final READ_PERMISSION:I = 0x0

.field public static final SYMBOLIC_LINK_TYPE:I = 0x2

.field public static final UNKNOWN_TYPE:I = 0x3

.field public static final USER_ACCESS:I = 0x0

.field public static final WORLD_ACCESS:I = 0x2

.field public static final WRITE_PERMISSION:I = 0x1


# instance fields
.field _date:Ljava/util/Calendar;

.field _group:Ljava/lang/String;

.field _hardLinkCount:I

.field _link:Ljava/lang/String;

.field _name:Ljava/lang/String;

.field _permissions:[[Z

.field _rawListing:Ljava/lang/String;

.field _size:J

.field _type:I

.field _user:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x3

    filled-new-array {v0, v0}, [I

    move-result-object v1

    const-class v2, Z

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Z

    iput-object v1, p0, Lorg/apache/commons/net/ftp/FTPFile;->_permissions:[[Z

    .line 81
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/net/ftp/FTPFile;->_rawListing:Ljava/lang/String;

    .line 82
    iput v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->_type:I

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->_hardLinkCount:I

    .line 84
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/apache/commons/net/ftp/FTPFile;->_size:J

    .line 85
    iput-object v1, p0, Lorg/apache/commons/net/ftp/FTPFile;->_user:Ljava/lang/String;

    .line 86
    iput-object v1, p0, Lorg/apache/commons/net/ftp/FTPFile;->_group:Ljava/lang/String;

    .line 87
    iput-object v1, p0, Lorg/apache/commons/net/ftp/FTPFile;->_date:Ljava/util/Calendar;

    .line 88
    iput-object v1, p0, Lorg/apache/commons/net/ftp/FTPFile;->_name:Ljava/lang/String;

    .line 89
    return-void
.end method


# virtual methods
.method public getGroup()Ljava/lang/String;
    .registers 2

    .line 270
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->_group:Ljava/lang/String;

    return-object v0
.end method

.method public getHardLinkCount()I
    .registers 2

    .line 246
    iget v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->_hardLinkCount:I

    return v0
.end method

.method public getLink()Ljava/lang/String;
    .registers 2

    .line 318
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->_link:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 201
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getRawListing()Ljava/lang/String;
    .registers 2

    .line 111
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->_rawListing:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .registers 3

    .line 222
    iget-wide v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->_size:J

    return-wide v0
.end method

.method public getTimestamp()Ljava/util/Calendar;
    .registers 2

    .line 342
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->_date:Ljava/util/Calendar;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .line 180
    iget v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->_type:I

    return v0
.end method

.method public getUser()Ljava/lang/String;
    .registers 2

    .line 293
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->_user:Ljava/lang/String;

    return-object v0
.end method

.method public hasPermission(II)Z
    .registers 4
    .param p1, "access"    # I
    .param p2, "permission"    # I

    .line 375
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->_permissions:[[Z

    aget-object v0, v0, p1

    aget-boolean v0, v0, p2

    return v0
.end method

.method public isDirectory()Z
    .registers 3

    .line 123
    iget v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->_type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public isFile()Z
    .registers 2

    .line 134
    iget v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->_type:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isSymbolicLink()Z
    .registers 3

    .line 145
    iget v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->_type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public isUnknown()Z
    .registers 3

    .line 156
    iget v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->_type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public setGroup(Ljava/lang/String;)V
    .registers 2
    .param p1, "group"    # Ljava/lang/String;

    .line 258
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPFile;->_group:Ljava/lang/String;

    .line 259
    return-void
.end method

.method public setHardLinkCount(I)V
    .registers 2
    .param p1, "links"    # I

    .line 234
    iput p1, p0, Lorg/apache/commons/net/ftp/FTPFile;->_hardLinkCount:I

    .line 235
    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .registers 2
    .param p1, "link"    # Ljava/lang/String;

    .line 305
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPFile;->_link:Ljava/lang/String;

    .line 306
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 191
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPFile;->_name:Ljava/lang/String;

    .line 192
    return-void
.end method

.method public setPermission(IIZ)V
    .registers 5
    .param p1, "access"    # I
    .param p2, "permission"    # I
    .param p3, "value"    # Z

    .line 359
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->_permissions:[[Z

    aget-object v0, v0, p1

    aput-boolean p3, v0, p2

    .line 360
    return-void
.end method

.method public setRawListing(Ljava/lang/String;)V
    .registers 2
    .param p1, "rawListing"    # Ljava/lang/String;

    .line 100
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPFile;->_rawListing:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setSize(J)V
    .registers 3
    .param p1, "size"    # J

    .line 211
    iput-wide p1, p0, Lorg/apache/commons/net/ftp/FTPFile;->_size:J

    .line 212
    return-void
.end method

.method public setTimestamp(Ljava/util/Calendar;)V
    .registers 2
    .param p1, "date"    # Ljava/util/Calendar;

    .line 331
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPFile;->_date:Ljava/util/Calendar;

    .line 332
    return-void
.end method

.method public setType(I)V
    .registers 2
    .param p1, "type"    # I

    .line 168
    iput p1, p0, Lorg/apache/commons/net/ftp/FTPFile;->_type:I

    .line 169
    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .registers 2
    .param p1, "user"    # Ljava/lang/String;

    .line 282
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPFile;->_user:Ljava/lang/String;

    .line 283
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 389
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->_rawListing:Ljava/lang/String;

    return-object v0
.end method
