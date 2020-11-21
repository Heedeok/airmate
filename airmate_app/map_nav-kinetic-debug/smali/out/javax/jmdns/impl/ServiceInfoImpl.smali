.class public Ljavax/jmdns/impl/ServiceInfoImpl;
.super Ljavax/jmdns/ServiceInfo;
.source "ServiceInfoImpl.java"

# interfaces
.implements Ljavax/jmdns/impl/DNSListener;
.implements Ljavax/jmdns/impl/DNSStatefulObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;,
        Ljavax/jmdns/impl/ServiceInfoImpl$Delegate;
    }
.end annotation


# static fields
.field private static logger:Ljava/util/logging/Logger;


# instance fields
.field private _application:Ljava/lang/String;

.field private _delegate:Ljavax/jmdns/impl/ServiceInfoImpl$Delegate;

.field private _domain:Ljava/lang/String;

.field private final _ipv4Addresses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/net/Inet4Address;",
            ">;"
        }
    .end annotation
.end field

.field private final _ipv6Addresses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/net/Inet6Address;",
            ">;"
        }
    .end annotation
.end field

.field private transient _key:Ljava/lang/String;

.field private _name:Ljava/lang/String;

.field private _needTextAnnouncing:Z

.field private _persistent:Z

.field private _port:I

.field private _priority:I

.field private _props:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private _protocol:Ljava/lang/String;

.field private _server:Ljava/lang/String;

.field private final _state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

.field private _subtype:Ljava/lang/String;

.field private _text:[B

.field private _weight:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 43
    const-class v0, Ljavax/jmdns/impl/ServiceInfoImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljavax/jmdns/impl/ServiceInfoImpl;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;)V
    .registers 16
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "subtype"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "weight"    # I
    .param p6, "priority"    # I
    .param p7, "persistent"    # Z
    .param p8, "text"    # Ljava/lang/String;

    .line 128
    invoke-static {p1, p2, p3}, Ljavax/jmdns/impl/ServiceInfoImpl;->decodeQualifiedNameMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    const/4 v0, 0x0

    move-object v6, v0

    check-cast v6, [B

    move-object v0, p0

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v6}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljava/util/Map;IIIZ[B)V

    .line 129
    iput-object p8, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_server:Ljava/lang/String;

    .line 131
    :try_start_12
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p8}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 132
    .local v0, "out":Ljava/io/ByteArrayOutputStream;
    invoke-static {v0, p8}, Ljavax/jmdns/impl/ServiceInfoImpl;->writeUTF(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 133
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_text:[B
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_24} :catch_26

    .line 136
    .end local v0    # "out":Ljava/io/ByteArrayOutputStream;
    nop

    .line 137
    return-void

    .line 134
    :catch_26
    move-exception v0

    .line 135
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/util/Map;)V
    .registers 16
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "subtype"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "weight"    # I
    .param p6, "priority"    # I
    .param p7, "persistent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .line 151
    .local p8, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-static {p1, p2, p3}, Ljavax/jmdns/impl/ServiceInfoImpl;->decodeQualifiedNameMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p8}, Ljavax/jmdns/impl/ServiceInfoImpl;->textFromProperties(Ljava/util/Map;)[B

    move-result-object v6

    move-object v0, p0

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v6}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljava/util/Map;IIIZ[B)V

    .line 152
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ[B)V
    .registers 16
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "subtype"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "weight"    # I
    .param p6, "priority"    # I
    .param p7, "persistent"    # Z
    .param p8, "text"    # [B

    .line 166
    invoke-static {p1, p2, p3}, Ljavax/jmdns/impl/ServiceInfoImpl;->decodeQualifiedNameMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    move-object v0, p0

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    move-object v6, p8

    invoke-direct/range {v0 .. v6}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljava/util/Map;IIIZ[B)V

    .line 167
    return-void
.end method

.method constructor <init>(Ljava/util/Map;IIIZLjava/lang/String;)V
    .registers 15
    .param p2, "port"    # I
    .param p3, "weight"    # I
    .param p4, "priority"    # I
    .param p5, "persistent"    # Z
    .param p6, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljavax/jmdns/ServiceInfo$Fields;",
            "Ljava/lang/String;",
            ">;IIIZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 174
    .local p1, "qualifiedNameMap":Ljava/util/Map;, "Ljava/util/Map<Ljavax/jmdns/ServiceInfo$Fields;Ljava/lang/String;>;"
    const/4 v0, 0x0

    move-object v7, v0

    check-cast v7, [B

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v7}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljava/util/Map;IIIZ[B)V

    .line 175
    iput-object p6, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_server:Ljava/lang/String;

    .line 177
    :try_start_f
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 178
    .local v0, "out":Ljava/io/ByteArrayOutputStream;
    invoke-static {v0, p6}, Ljavax/jmdns/impl/ServiceInfoImpl;->writeUTF(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 179
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_text:[B
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_21} :catch_23

    .line 182
    .end local v0    # "out":Ljava/io/ByteArrayOutputStream;
    nop

    .line 183
    return-void

    .line 180
    :catch_23
    move-exception v0

    .line 181
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Ljava/util/Map;IIIZLjava/util/Map;)V
    .registers 14
    .param p2, "port"    # I
    .param p3, "weight"    # I
    .param p4, "priority"    # I
    .param p5, "persistent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljavax/jmdns/ServiceInfo$Fields;",
            "Ljava/lang/String;",
            ">;IIIZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .line 170
    .local p1, "qualifiedNameMap":Ljava/util/Map;, "Ljava/util/Map<Ljavax/jmdns/ServiceInfo$Fields;Ljava/lang/String;>;"
    .local p6, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-static {p6}, Ljavax/jmdns/impl/ServiceInfoImpl;->textFromProperties(Ljava/util/Map;)[B

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljava/util/Map;IIIZ[B)V

    .line 171
    return-void
.end method

.method constructor <init>(Ljava/util/Map;IIIZ[B)V
    .registers 9
    .param p2, "port"    # I
    .param p3, "weight"    # I
    .param p4, "priority"    # I
    .param p5, "persistent"    # Z
    .param p6, "text"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljavax/jmdns/ServiceInfo$Fields;",
            "Ljava/lang/String;",
            ">;IIIZ[B)V"
        }
    .end annotation

    .line 185
    .local p1, "qualifiedNameMap":Ljava/util/Map;, "Ljava/util/Map<Ljavax/jmdns/ServiceInfo$Fields;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljavax/jmdns/ServiceInfo;-><init>()V

    .line 186
    invoke-static {p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->checkQualifiedNameMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 188
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljavax/jmdns/ServiceInfo$Fields;Ljava/lang/String;>;"
    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Domain:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_domain:Ljava/lang/String;

    .line 189
    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Protocol:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_protocol:Ljava/lang/String;

    .line 190
    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Application:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_application:Ljava/lang/String;

    .line 191
    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Instance:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_name:Ljava/lang/String;

    .line 192
    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Subtype:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_subtype:Ljava/lang/String;

    .line 194
    iput p2, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_port:I

    .line 195
    iput p3, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_weight:I

    .line 196
    iput p4, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_priority:I

    .line 197
    iput-object p6, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_text:[B

    .line 198
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljavax/jmdns/impl/ServiceInfoImpl;->setNeedTextAnnouncing(Z)V

    .line 199
    new-instance v1, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    invoke-direct {v1, p0}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;-><init>(Ljavax/jmdns/impl/ServiceInfoImpl;)V

    iput-object v1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    .line 200
    iput-boolean p5, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_persistent:Z

    .line 201
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv4Addresses:Ljava/util/Set;

    .line 202
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv6Addresses:Ljava/util/Set;

    .line 203
    return-void
.end method

.method constructor <init>(Ljavax/jmdns/ServiceInfo;)V
    .registers 8
    .param p1, "info"    # Ljavax/jmdns/ServiceInfo;

    .line 210
    invoke-direct {p0}, Ljavax/jmdns/ServiceInfo;-><init>()V

    .line 211
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv4Addresses:Ljava/util/Set;

    .line 212
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv6Addresses:Ljava/util/Set;

    .line 213
    if-eqz p1, :cond_7b

    .line 214
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->getDomain()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_domain:Ljava/lang/String;

    .line 215
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->getProtocol()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_protocol:Ljava/lang/String;

    .line 216
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->getApplication()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_application:Ljava/lang/String;

    .line 217
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_name:Ljava/lang/String;

    .line 218
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->getSubtype()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_subtype:Ljava/lang/String;

    .line 219
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->getPort()I

    move-result v0

    iput v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_port:I

    .line 220
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->getWeight()I

    move-result v0

    iput v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_weight:I

    .line 221
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->getPriority()I

    move-result v0

    iput v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_priority:I

    .line 222
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->getTextBytes()[B

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_text:[B

    .line 223
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->isPersistent()Z

    move-result v0

    iput-boolean v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_persistent:Z

    .line 224
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->getInet6Addresses()[Ljava/net/Inet6Address;

    move-result-object v0

    .line 225
    .local v0, "ipv6Addresses":[Ljava/net/Inet6Address;
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5e
    if-ge v3, v1, :cond_6a

    aget-object v4, v0, v3

    .line 226
    .local v4, "address":Ljava/net/Inet6Address;
    iget-object v5, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv6Addresses:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 225
    .end local v4    # "address":Ljava/net/Inet6Address;
    add-int/lit8 v3, v3, 0x1

    goto :goto_5e

    .line 228
    :cond_6a
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->getInet4Addresses()[Ljava/net/Inet4Address;

    move-result-object v1

    .line 229
    .local v1, "ipv4Addresses":[Ljava/net/Inet4Address;
    array-length v3, v1

    :goto_6f
    if-ge v2, v3, :cond_7b

    aget-object v4, v1, v2

    .line 230
    .local v4, "address":Ljava/net/Inet4Address;
    iget-object v5, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv4Addresses:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 229
    .end local v4    # "address":Ljava/net/Inet4Address;
    add-int/lit8 v2, v2, 0x1

    goto :goto_6f

    .line 233
    .end local v0    # "ipv6Addresses":[Ljava/net/Inet6Address;
    .end local v1    # "ipv4Addresses":[Ljava/net/Inet4Address;
    :cond_7b
    new-instance v0, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    invoke-direct {v0, p0}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;-><init>(Ljavax/jmdns/impl/ServiceInfoImpl;)V

    iput-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    .line 234
    return-void
.end method

.method protected static checkQualifiedNameMap(Ljava/util/Map;)Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljavax/jmdns/ServiceInfo$Fields;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljavax/jmdns/ServiceInfo$Fields;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 319
    .local p0, "qualifiedNameMap":Ljava/util/Map;, "Ljava/util/Map<Ljavax/jmdns/ServiceInfo$Fields;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 322
    .local v0, "checkedQualifiedNameMap":Ljava/util/Map;, "Ljava/util/Map<Ljavax/jmdns/ServiceInfo$Fields;Ljava/lang/String;>;"
    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Domain:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Domain:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_19

    :cond_17
    const-string v1, "local"

    .line 323
    .local v1, "domain":Ljava/lang/String;
    :goto_19
    if-eqz v1, :cond_21

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_23

    .line 324
    :cond_21
    const-string v1, "local"

    .line 326
    :cond_23
    invoke-static {v1}, Ljavax/jmdns/impl/ServiceInfoImpl;->removeSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 327
    sget-object v2, Ljavax/jmdns/ServiceInfo$Fields;->Domain:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    sget-object v2, Ljavax/jmdns/ServiceInfo$Fields;->Protocol:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {p0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    sget-object v2, Ljavax/jmdns/ServiceInfo$Fields;->Protocol:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_3f

    :cond_3d
    const-string v2, "tcp"

    .line 330
    .local v2, "protocol":Ljava/lang/String;
    :goto_3f
    if-eqz v2, :cond_47

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_49

    .line 331
    :cond_47
    const-string v2, "tcp"

    .line 333
    :cond_49
    invoke-static {v2}, Ljavax/jmdns/impl/ServiceInfoImpl;->removeSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 334
    sget-object v3, Ljavax/jmdns/ServiceInfo$Fields;->Protocol:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    sget-object v3, Ljavax/jmdns/ServiceInfo$Fields;->Application:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {p0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_63

    sget-object v3, Ljavax/jmdns/ServiceInfo$Fields;->Application:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_65

    :cond_63
    const-string v3, ""

    .line 337
    .local v3, "application":Ljava/lang/String;
    :goto_65
    if-eqz v3, :cond_6d

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_6f

    .line 338
    :cond_6d
    const-string v3, ""

    .line 340
    :cond_6f
    invoke-static {v3}, Ljavax/jmdns/impl/ServiceInfoImpl;->removeSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 341
    sget-object v4, Ljavax/jmdns/ServiceInfo$Fields;->Application:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    sget-object v4, Ljavax/jmdns/ServiceInfo$Fields;->Instance:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {p0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_89

    sget-object v4, Ljavax/jmdns/ServiceInfo$Fields;->Instance:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_8b

    :cond_89
    const-string v4, ""

    .line 344
    .local v4, "instance":Ljava/lang/String;
    :goto_8b
    if-eqz v4, :cond_93

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_95

    .line 345
    :cond_93
    const-string v4, ""

    .line 348
    :cond_95
    invoke-static {v4}, Ljavax/jmdns/impl/ServiceInfoImpl;->removeSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 349
    sget-object v5, Ljavax/jmdns/ServiceInfo$Fields;->Instance:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    sget-object v5, Ljavax/jmdns/ServiceInfo$Fields;->Subtype:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {p0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_af

    sget-object v5, Ljavax/jmdns/ServiceInfo$Fields;->Subtype:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_b1

    :cond_af
    const-string v5, ""

    .line 352
    .local v5, "subtype":Ljava/lang/String;
    :goto_b1
    if-eqz v5, :cond_b9

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_bb

    .line 353
    :cond_b9
    const-string v5, ""

    .line 355
    :cond_bb
    invoke-static {v5}, Ljavax/jmdns/impl/ServiceInfoImpl;->removeSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 356
    sget-object v6, Ljavax/jmdns/ServiceInfo$Fields;->Subtype:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    return-object v0
.end method

.method public static decodeQualifiedNameMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .registers 5
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "subtype"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljavax/jmdns/ServiceInfo$Fields;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 237
    invoke-static {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->decodeQualifiedNameMapForType(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 239
    .local v0, "qualifiedNameMap":Ljava/util/Map;, "Ljava/util/Map<Ljavax/jmdns/ServiceInfo$Fields;Ljava/lang/String;>;"
    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Instance:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Subtype:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    invoke-static {v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->checkQualifiedNameMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method public static decodeQualifiedNameMapForType(Ljava/lang/String;)Ljava/util/Map;
    .registers 13
    .param p0, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljavax/jmdns/ServiceInfo$Fields;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 248
    move-object v0, p0

    .line 250
    .local v0, "casePreservedType":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 251
    .local v1, "aType":Ljava/lang/String;
    move-object v2, v1

    .line 252
    .local v2, "application":Ljava/lang/String;
    const-string v3, ""

    .line 253
    .local v3, "protocol":Ljava/lang/String;
    const-string v4, ""

    .line 254
    .local v4, "subtype":Ljava/lang/String;
    const-string v5, ""

    .line 255
    .local v5, "name":Ljava/lang/String;
    const-string v6, ""

    .line 257
    .local v6, "domain":Ljava/lang/String;
    const-string v7, "in-addr.arpa"

    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_ed

    const-string v7, "ip6.arpa"

    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_21

    goto/16 :goto_ed

    .line 262
    :cond_21
    const-string v7, "_"

    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    const/16 v9, 0x2e

    if-nez v7, :cond_4b

    const-string v7, "."

    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4b

    .line 263
    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 264
    .local v7, "index":I
    invoke-virtual {v0, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljavax/jmdns/impl/ServiceInfoImpl;->removeSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 265
    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljavax/jmdns/impl/ServiceInfoImpl;->removeSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 266
    const-string v2, ""

    goto/16 :goto_10d

    .line 269
    .end local v7    # "index":I
    :cond_4b
    const-string v7, "_"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5b

    const-string v7, "_services"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_79

    .line 270
    :cond_5b
    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 271
    .restart local v7    # "index":I
    if-lez v7, :cond_79

    .line 273
    invoke-virtual {v0, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 274
    add-int/lit8 v10, v7, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v10, v11, :cond_79

    .line 275
    add-int/lit8 v10, v7, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 276
    add-int/lit8 v10, v7, 0x1

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 281
    .end local v7    # "index":I
    :cond_79
    const-string v7, "._"

    invoke-virtual {v1, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    .line 282
    .restart local v7    # "index":I
    if-lez v7, :cond_8b

    .line 283
    add-int/lit8 v10, v7, 0x2

    .line 284
    .local v10, "start":I
    invoke-virtual {v1, v9, v10}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    .line 285
    .local v9, "end":I
    invoke-virtual {v0, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 287
    .end local v9    # "end":I
    .end local v10    # "start":I
    :cond_8b
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_d2

    .line 288
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 289
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v9, v7

    add-int/lit8 v9, v9, 0x2

    .line 290
    .local v9, "start":I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    const-string v11, "."

    invoke-virtual {v1, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    sub-int/2addr v10, v11

    .line 291
    .local v10, "end":I
    if-le v10, v9, :cond_c7

    .line 292
    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 294
    :cond_c7
    if-lez v7, :cond_d0

    .line 295
    add-int/lit8 v11, v7, -0x1

    invoke-virtual {v0, v8, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_d2

    .line 297
    :cond_d0
    const-string v2, ""

    .line 300
    .end local v9    # "start":I
    .end local v10    # "end":I
    :cond_d2
    :goto_d2
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, "._sub"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 301
    if-lez v7, :cond_10d

    .line 302
    add-int/lit8 v9, v7, 0x5

    .line 303
    .restart local v9    # "start":I
    invoke-virtual {v2, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljavax/jmdns/impl/ServiceInfoImpl;->removeSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 304
    invoke-virtual {v2, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_10d

    .line 258
    .end local v7    # "index":I
    .end local v9    # "start":I
    :cond_ed
    :goto_ed
    const-string v7, "in-addr.arpa"

    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_fc

    const-string v7, "in-addr.arpa"

    :goto_f7
    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    goto :goto_ff

    :cond_fc
    const-string v7, "ip6.arpa"

    goto :goto_f7

    .line 259
    .restart local v7    # "index":I
    :goto_ff
    invoke-virtual {v0, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljavax/jmdns/impl/ServiceInfoImpl;->removeSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 260
    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 261
    const-string v2, ""

    .line 308
    :cond_10d
    :goto_10d
    new-instance v8, Ljava/util/HashMap;

    const/4 v9, 0x5

    invoke-direct {v8, v9}, Ljava/util/HashMap;-><init>(I)V

    .line 309
    .local v8, "qualifiedNameMap":Ljava/util/Map;, "Ljava/util/Map<Ljavax/jmdns/ServiceInfo$Fields;Ljava/lang/String;>;"
    sget-object v9, Ljavax/jmdns/ServiceInfo$Fields;->Domain:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-static {v6}, Ljavax/jmdns/impl/ServiceInfoImpl;->removeSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    sget-object v9, Ljavax/jmdns/ServiceInfo$Fields;->Protocol:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v8, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    sget-object v9, Ljavax/jmdns/ServiceInfo$Fields;->Application:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-static {v2}, Ljavax/jmdns/impl/ServiceInfoImpl;->removeSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    sget-object v9, Ljavax/jmdns/ServiceInfo$Fields;->Instance:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v8, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    sget-object v9, Ljavax/jmdns/ServiceInfo$Fields;->Subtype:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v8, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    return-object v8
.end method

.method private final hasInetAddress()Z
    .registers 2

    .line 1006
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv4Addresses:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_13

    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv6Addresses:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method private static removeSeparators(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "name"    # Ljava/lang/String;

    .line 362
    if-nez p0, :cond_5

    .line 363
    const-string v0, ""

    return-object v0

    .line 365
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 366
    .local v0, "newName":Ljava/lang/String;
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_16

    .line 367
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 369
    :cond_16
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 370
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 372
    :cond_22
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 373
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 375
    :cond_34
    return-object v0
.end method

.method private static textFromProperties(Ljava/util/Map;)[B
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)[B"
        }
    .end annotation

    .line 1290
    .local p0, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    const/4 v0, 0x0

    .line 1291
    .local v0, "text":[B
    if-eqz p0, :cond_cf

    .line 1293
    :try_start_3
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1294
    .local v1, "out":Ljava/io/ByteArrayOutputStream;
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1295
    .local v3, "key":Ljava/lang/String;
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1296
    .local v4, "val":Ljava/lang/Object;
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    const/16 v6, 0x64

    invoke-direct {v5, v6}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1297
    .local v5, "out2":Ljava/io/ByteArrayOutputStream;
    invoke-static {v5, v3}, Ljavax/jmdns/impl/ServiceInfoImpl;->writeUTF(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1298
    const/4 v6, 0x0

    if-nez v4, :cond_30

    goto :goto_56

    .line 1300
    :cond_30
    instance-of v7, v4, Ljava/lang/String;

    const/16 v8, 0x3d

    if-eqz v7, :cond_40

    .line 1301
    invoke-virtual {v5, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1302
    move-object v7, v4

    check-cast v7, Ljava/lang/String;

    invoke-static {v5, v7}, Ljavax/jmdns/impl/ServiceInfoImpl;->writeUTF(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_56

    .line 1303
    :cond_40
    instance-of v7, v4, [B

    if-eqz v7, :cond_9a

    .line 1304
    move-object v7, v4

    check-cast v7, [B

    check-cast v7, [B

    .line 1305
    .local v7, "bval":[B
    array-length v9, v7

    if-lez v9, :cond_54

    .line 1306
    invoke-virtual {v5, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1307
    array-length v8, v7

    invoke-virtual {v5, v7, v6, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_55

    .line 1309
    :cond_54
    const/4 v4, 0x0

    .line 1311
    .end local v7    # "bval":[B
    :goto_55
    nop

    .line 1314
    :goto_56
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    .line 1315
    .local v7, "data":[B
    array-length v8, v7

    const/16 v9, 0xff

    if-le v8, v9, :cond_8f

    .line 1316
    new-instance v2, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot have individual values larger that 255 chars. Offending value: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_73

    const-string v8, ""

    goto :goto_84

    :cond_73
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_84
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1318
    :cond_8f
    array-length v8, v7

    int-to-byte v8, v8

    invoke-virtual {v1, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1319
    array-length v8, v7

    invoke-virtual {v1, v7, v6, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1320
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "val":Ljava/lang/Object;
    .end local v5    # "out2":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "data":[B
    goto/16 :goto_12

    .line 1312
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v4    # "val":Ljava/lang/Object;
    .restart local v5    # "out2":Ljava/io/ByteArrayOutputStream;
    :cond_9a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invalid property value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1321
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "val":Ljava/lang/Object;
    .end local v5    # "out2":Ljava/io/ByteArrayOutputStream;
    :cond_b1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_b5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_b5} :catch_b7

    move-object v0, v2

    .line 1324
    .end local v1    # "out":Ljava/io/ByteArrayOutputStream;
    goto :goto_cf

    .line 1322
    :catch_b7
    move-exception v1

    .line 1323
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unexpected exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1326
    .end local v1    # "e":Ljava/io/IOException;
    :cond_cf
    :goto_cf
    if-eqz v0, :cond_d6

    array-length v1, v0

    if-lez v1, :cond_d6

    move-object v1, v0

    goto :goto_d8

    :cond_d6
    sget-object v1, Ljavax/jmdns/impl/DNSRecord;->EMPTY_TXT:[B

    :goto_d8
    return-object v1
.end method

.method static writeUTF(Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 6
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 757
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "len":I
    :goto_5
    if-ge v0, v1, :cond_4b

    .line 758
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 759
    .local v2, "c":I
    const/4 v3, 0x1

    if-lt v2, v3, :cond_16

    const/16 v3, 0x7f

    if-gt v2, v3, :cond_16

    .line 760
    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    goto :goto_48

    .line 762
    :cond_16
    const/16 v3, 0x7ff

    if-le v2, v3, :cond_36

    .line 763
    shr-int/lit8 v3, v2, 0xc

    and-int/lit8 v3, v3, 0xf

    or-int/lit16 v3, v3, 0xe0

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write(I)V

    .line 764
    shr-int/lit8 v3, v2, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write(I)V

    .line 765
    shr-int/lit8 v3, v2, 0x0

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write(I)V

    goto :goto_48

    .line 767
    :cond_36
    shr-int/lit8 v3, v2, 0x6

    and-int/lit8 v3, v3, 0x1f

    or-int/lit16 v3, v3, 0xc0

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write(I)V

    .line 768
    shr-int/lit8 v3, v2, 0x0

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write(I)V

    .line 757
    .end local v2    # "c":I
    :goto_48
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 772
    .end local v0    # "i":I
    .end local v1    # "len":I
    :cond_4b
    return-void
.end method


# virtual methods
.method _setText([B)V
    .registers 3
    .param p1, "text"    # [B

    .line 1285
    iput-object p1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_text:[B

    .line 1286
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_props:Ljava/util/Map;

    .line 1287
    return-void
.end method

.method addAddress(Ljava/net/Inet4Address;)V
    .registers 3
    .param p1, "addr"    # Ljava/net/Inet4Address;

    .line 491
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv4Addresses:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 492
    return-void
.end method

.method addAddress(Ljava/net/Inet6Address;)V
    .registers 3
    .param p1, "addr"    # Ljava/net/Inet6Address;

    .line 499
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv6Addresses:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 500
    return-void
.end method

.method public advanceState(Ljavax/jmdns/impl/tasks/DNSTask;)Z
    .registers 3
    .param p1, "task"    # Ljavax/jmdns/impl/tasks/DNSTask;

    .line 1016
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    invoke-virtual {v0, p1}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->advanceState(Ljavax/jmdns/impl/tasks/DNSTask;)Z

    move-result v0

    return v0
.end method

.method public answers(ZILjavax/jmdns/impl/HostInfo;)Ljava/util/Collection;
    .registers 28
    .param p1, "unique"    # Z
    .param p2, "ttl"    # I
    .param p3, "localHost"    # Ljavax/jmdns/impl/HostInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljavax/jmdns/impl/HostInfo;",
            ")",
            "Ljava/util/Collection<",
            "Ljavax/jmdns/impl/DNSRecord;",
            ">;"
        }
    .end annotation

    .line 1249
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1250
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/DNSRecord;>;"
    invoke-virtual/range {p0 .. p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getSubtype()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_27

    .line 1251
    new-instance v2, Ljavax/jmdns/impl/DNSRecord$Pointer;

    invoke-virtual/range {p0 .. p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getTypeWithSubtype()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v8

    move-object v3, v2

    move/from16 v7, p2

    invoke-direct/range {v3 .. v8}, Ljavax/jmdns/impl/DNSRecord$Pointer;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZILjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1253
    :cond_27
    new-instance v2, Ljavax/jmdns/impl/DNSRecord$Pointer;

    invoke-virtual/range {p0 .. p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getType()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    const/4 v12, 0x0

    invoke-virtual/range {p0 .. p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v14

    move-object v9, v2

    move/from16 v13, p2

    invoke-direct/range {v9 .. v14}, Ljavax/jmdns/impl/DNSRecord$Pointer;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZILjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1254
    new-instance v2, Ljavax/jmdns/impl/DNSRecord$Service;

    invoke-virtual/range {p0 .. p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v16

    sget-object v17, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    iget v3, v0, Ljavax/jmdns/impl/ServiceInfoImpl;->_priority:I

    iget v4, v0, Ljavax/jmdns/impl/ServiceInfoImpl;->_weight:I

    iget v5, v0, Ljavax/jmdns/impl/ServiceInfoImpl;->_port:I

    invoke-virtual/range {p3 .. p3}, Ljavax/jmdns/impl/HostInfo;->getName()Ljava/lang/String;

    move-result-object v23

    move-object v15, v2

    move/from16 v18, p1

    move/from16 v19, p2

    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v22, v5

    invoke-direct/range {v15 .. v23}, Ljavax/jmdns/impl/DNSRecord$Service;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZIIIILjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1255
    new-instance v2, Ljavax/jmdns/impl/DNSRecord$Text;

    invoke-virtual/range {p0 .. p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    invoke-virtual/range {p0 .. p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getTextBytes()[B

    move-result-object v11

    move-object v6, v2

    move/from16 v9, p1

    move/from16 v10, p2

    invoke-direct/range {v6 .. v11}, Ljavax/jmdns/impl/DNSRecord$Text;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZI[B)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1256
    return-object v1
.end method

.method public associateWithTask(Ljavax/jmdns/impl/tasks/DNSTask;Ljavax/jmdns/impl/constants/DNSState;)V
    .registers 4
    .param p1, "task"    # Ljavax/jmdns/impl/tasks/DNSTask;
    .param p2, "state"    # Ljavax/jmdns/impl/constants/DNSState;

    .line 1064
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    invoke-virtual {v0, p1, p2}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->associateWithTask(Ljavax/jmdns/impl/tasks/DNSTask;Ljavax/jmdns/impl/constants/DNSState;)V

    .line 1065
    return-void
.end method

.method public cancelState()Z
    .registers 2

    .line 1032
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->cancelState()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 42
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->clone()Ljavax/jmdns/impl/ServiceInfoImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljavax/jmdns/ServiceInfo;
    .registers 2

    .line 42
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->clone()Ljavax/jmdns/impl/ServiceInfoImpl;

    move-result-object v0

    return-object v0
.end method

.method public clone()Ljavax/jmdns/impl/ServiceInfoImpl;
    .registers 9

    .line 1191
    new-instance v7, Ljavax/jmdns/impl/ServiceInfoImpl;

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedNameMap()Ljava/util/Map;

    move-result-object v1

    iget v2, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_port:I

    iget v3, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_weight:I

    iget v4, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_priority:I

    iget-boolean v5, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_persistent:Z

    iget-object v6, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_text:[B

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljava/util/Map;IIIZ[B)V

    .line 1192
    .local v0, "serviceInfo":Ljavax/jmdns/impl/ServiceInfoImpl;
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getInet6Addresses()[Ljava/net/Inet6Address;

    move-result-object v1

    .line 1193
    .local v1, "ipv6Addresses":[Ljava/net/Inet6Address;
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1b
    if-ge v4, v2, :cond_27

    aget-object v5, v1, v4

    .line 1194
    .local v5, "address":Ljava/net/Inet6Address;
    iget-object v6, v0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv6Addresses:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1193
    .end local v5    # "address":Ljava/net/Inet6Address;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 1196
    :cond_27
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getInet4Addresses()[Ljava/net/Inet4Address;

    move-result-object v2

    .line 1197
    .local v2, "ipv4Addresses":[Ljava/net/Inet4Address;
    array-length v4, v2

    :goto_2c
    if-ge v3, v4, :cond_38

    aget-object v5, v2, v3

    .line 1198
    .local v5, "address":Ljava/net/Inet4Address;
    iget-object v6, v0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv4Addresses:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1197
    .end local v5    # "address":Ljava/net/Inet4Address;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    .line 1200
    :cond_38
    return-object v0
.end method

.method public closeState()Z
    .registers 2

    .line 1040
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->closeState()Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1160
    instance-of v0, p1, Ljavax/jmdns/impl/ServiceInfoImpl;

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljavax/jmdns/impl/ServiceInfoImpl;

    invoke-virtual {v1}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    return v0
.end method

.method public getAddress()Ljava/net/InetAddress;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 508
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getApplication()Ljava/lang/String;
    .registers 2

    .line 711
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_application:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_application:Ljava/lang/String;

    goto :goto_9

    :cond_7
    const-string v0, ""

    :goto_9
    return-object v0
.end method

.method getDelegate()Ljavax/jmdns/impl/ServiceInfoImpl$Delegate;
    .registers 2

    .line 1371
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_delegate:Ljavax/jmdns/impl/ServiceInfoImpl$Delegate;

    return-object v0
.end method

.method public getDns()Ljavax/jmdns/impl/JmDNSImpl;
    .registers 2

    .line 1338
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .registers 2

    .line 719
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_domain:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_domain:Ljava/lang/String;

    goto :goto_9

    :cond_7
    const-string v0, "local"

    :goto_9
    return-object v0
.end method

.method public getHostAddress()Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 465
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getHostAddresses()[Ljava/lang/String;

    move-result-object v0

    .line 466
    .local v0, "names":[Ljava/lang/String;
    array-length v1, v0

    if-lez v1, :cond_b

    const/4 v1, 0x0

    aget-object v1, v0, v1

    goto :goto_d

    :cond_b
    const-string v1, ""

    :goto_d
    return-object v1
.end method

.method public getHostAddresses()[Ljava/lang/String;
    .registers 8

    .line 474
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getInet4Addresses()[Ljava/net/Inet4Address;

    move-result-object v0

    .line 475
    .local v0, "ip4Aaddresses":[Ljava/net/Inet4Address;
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getInet6Addresses()[Ljava/net/Inet6Address;

    move-result-object v1

    .line 476
    .local v1, "ip6Aaddresses":[Ljava/net/Inet6Address;
    array-length v2, v0

    array-length v3, v1

    add-int/2addr v2, v3

    new-array v2, v2, [Ljava/lang/String;

    .line 477
    .local v2, "names":[Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x0

    .local v4, "i":I
    :goto_f
    array-length v5, v0

    if-ge v4, v5, :cond_1d

    .line 478
    aget-object v5, v0, v4

    invoke-virtual {v5}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 477
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 480
    .end local v4    # "i":I
    :cond_1d
    nop

    .local v3, "i":I
    :goto_1e
    array-length v4, v1

    if-ge v3, v4, :cond_44

    .line 481
    array-length v4, v0

    add-int/2addr v4, v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v1, v3

    invoke-virtual {v6}, Ljava/net/Inet6Address;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 480
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 483
    .end local v3    # "i":I
    :cond_44
    return-object v2
.end method

.method public getInet4Address()Ljava/net/Inet4Address;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 527
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getInet4Addresses()[Ljava/net/Inet4Address;

    move-result-object v0

    .line 528
    .local v0, "addresses":[Ljava/net/Inet4Address;
    array-length v1, v0

    if-lez v1, :cond_b

    const/4 v1, 0x0

    aget-object v1, v0, v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return-object v1
.end method

.method public getInet4Addresses()[Ljava/net/Inet4Address;
    .registers 3

    .line 559
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv4Addresses:Ljava/util/Set;

    iget-object v1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv4Addresses:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/net/Inet4Address;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/net/Inet4Address;

    return-object v0
.end method

.method public getInet6Address()Ljava/net/Inet6Address;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 537
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getInet6Addresses()[Ljava/net/Inet6Address;

    move-result-object v0

    .line 538
    .local v0, "addresses":[Ljava/net/Inet6Address;
    array-length v1, v0

    if-lez v1, :cond_b

    const/4 v1, 0x0

    aget-object v1, v0, v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return-object v1
.end method

.method public getInet6Addresses()[Ljava/net/Inet6Address;
    .registers 3

    .line 568
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv6Addresses:Ljava/util/Set;

    iget-object v1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv6Addresses:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/net/Inet6Address;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/net/Inet6Address;

    return-object v0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 517
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getInetAddresses()[Ljava/net/InetAddress;

    move-result-object v0

    .line 518
    .local v0, "addresses":[Ljava/net/InetAddress;
    array-length v1, v0

    if-lez v1, :cond_b

    const/4 v1, 0x0

    aget-object v1, v0, v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return-object v1
.end method

.method public getInetAddresses()[Ljava/net/InetAddress;
    .registers 4

    .line 547
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv4Addresses:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    iget-object v2, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv6Addresses:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 548
    .local v0, "aList":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    iget-object v1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv4Addresses:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 549
    iget-object v1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv6Addresses:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 550
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/net/InetAddress;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/net/InetAddress;

    return-object v1
.end method

.method public getKey()Ljava/lang/String;
    .registers 2

    .line 411
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_key:Ljava/lang/String;

    if-nez v0, :cond_e

    .line 412
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_key:Ljava/lang/String;

    .line 414
    :cond_e
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_key:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 403
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_name:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_name:Ljava/lang/String;

    goto :goto_9

    :cond_7
    const-string v0, ""

    :goto_9
    return-object v0
.end method

.method public getNiceTextString()Ljava/lang/String;
    .registers 6

    .line 1168
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1169
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getTextBytes()[B

    move-result-object v2

    array-length v2, v2

    .local v2, "len":I
    :goto_b
    if-ge v1, v2, :cond_3e

    .line 1170
    const/16 v3, 0xc8

    if-lt v1, v3, :cond_17

    .line 1171
    const-string v3, "..."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1172
    goto :goto_3e

    .line 1174
    :cond_17
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getTextBytes()[B

    move-result-object v3

    aget-byte v3, v3, v1

    and-int/lit16 v3, v3, 0xff

    .line 1175
    .local v3, "ch":I
    const/16 v4, 0x20

    if-lt v3, v4, :cond_2d

    const/16 v4, 0x7f

    if-le v3, v4, :cond_28

    goto :goto_2d

    .line 1179
    :cond_28
    int-to-char v4, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3b

    .line 1176
    :cond_2d
    :goto_2d
    const-string v4, "\\0"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1177
    const/16 v4, 0x8

    invoke-static {v3, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1169
    .end local v3    # "ch":I
    :goto_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1182
    .end local v1    # "i":I
    .end local v2    # "len":I
    :cond_3e
    :goto_3e
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPort()I
    .registers 2

    .line 576
    iget v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_port:I

    return v0
.end method

.method public getPriority()I
    .registers 2

    .line 584
    iget v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_priority:I

    return v0
.end method

.method declared-synchronized getProperties()Ljava/util/Map;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    monitor-enter p0

    .line 822
    :try_start_1
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_props:Ljava/util/Map;

    if-nez v0, :cond_80

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getTextBytes()[B

    move-result-object v0

    if-eqz v0, :cond_80

    .line 823
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_8d

    .line 825
    .local v0, "properties":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;[B>;"
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 826
    .local v2, "off":I
    :goto_12
    :try_start_12
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getTextBytes()[B

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_73

    .line 828
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getTextBytes()[B

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    .local v4, "off":I
    aget-byte v2, v3, v2

    .end local v2    # "off":I
    and-int/lit16 v2, v2, 0xff

    .line 829
    .local v2, "len":I
    if-eqz v2, :cond_6f

    add-int v3, v4, v2

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getTextBytes()[B

    move-result-object v5

    array-length v5, v5

    if-le v3, v5, :cond_2f

    goto :goto_6f

    .line 834
    :cond_2f
    const/4 v3, 0x0

    .line 835
    .local v3, "i":I
    :goto_30
    if-ge v3, v2, :cond_41

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getTextBytes()[B

    move-result-object v5

    add-int v6, v4, v3

    aget-byte v5, v5, v6

    const/16 v6, 0x3d

    if-eq v5, v6, :cond_41

    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    .line 840
    :cond_41
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getTextBytes()[B

    move-result-object v5

    invoke-virtual {p0, v5, v4, v3}, Ljavax/jmdns/impl/ServiceInfoImpl;->readUTF([BII)Ljava/lang/String;

    move-result-object v5

    .line 841
    .local v5, "name":Ljava/lang/String;
    if-nez v5, :cond_4f

    .line 842
    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 843
    goto :goto_73

    .line 845
    :cond_4f
    if-ne v3, v2, :cond_58

    .line 846
    sget-object v6, Ljavax/jmdns/impl/ServiceInfoImpl;->NO_VALUE:[B

    invoke-virtual {v0, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 853
    .end local v3    # "i":I
    .end local v4    # "off":I
    .end local v5    # "name":Ljava/lang/String;
    .local v2, "off":I
    :goto_56
    move v2, v4

    goto :goto_6e

    .line 848
    .local v2, "len":I
    .restart local v3    # "i":I
    .restart local v4    # "off":I
    .restart local v5    # "name":Ljava/lang/String;
    :cond_58
    add-int/lit8 v3, v3, 0x1

    sub-int v6, v2, v3

    new-array v6, v6, [B

    .line 849
    .local v6, "value":[B
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getTextBytes()[B

    move-result-object v7

    add-int v8, v4, v3

    sub-int v9, v2, v3

    invoke-static {v7, v8, v6, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 850
    invoke-virtual {v0, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 851
    add-int/2addr v4, v2

    goto :goto_56

    .line 853
    .end local v3    # "i":I
    .end local v4    # "off":I
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "value":[B
    .local v2, "off":I
    :goto_6e
    goto :goto_12

    .line 830
    .local v2, "len":I
    .restart local v4    # "off":I
    :cond_6f
    :goto_6f
    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_72} :catch_74
    .catchall {:try_start_12 .. :try_end_72} :catchall_8d

    .line 831
    nop

    .line 857
    .end local v2    # "len":I
    .end local v4    # "off":I
    :cond_73
    :goto_73
    goto :goto_7e

    .line 854
    :catch_74
    move-exception v1

    .line 856
    .local v1, "exception":Ljava/lang/Exception;
    :try_start_75
    sget-object v2, Ljavax/jmdns/impl/ServiceInfoImpl;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Malformed TXT Field "

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 858
    .end local v1    # "exception":Ljava/lang/Exception;
    :goto_7e
    iput-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_props:Ljava/util/Map;

    .line 860
    .end local v0    # "properties":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;[B>;"
    :cond_80
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_props:Ljava/util/Map;

    if-eqz v0, :cond_87

    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_props:Ljava/util/Map;

    goto :goto_8b

    :cond_87
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_8b
    .catchall {:try_start_75 .. :try_end_8b} :catchall_8d

    :goto_8b
    monitor-exit p0

    return-object v0

    .line 821
    :catchall_8d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPropertyBytes(Ljava/lang/String;)[B
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    monitor-enter p0

    .line 678
    :try_start_1
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getProperties()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-object v0

    .end local p1    # "name":Ljava/lang/String;
    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getPropertyNames()Ljava/util/Enumeration;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 701
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getProperties()Ljava/util/Map;

    move-result-object v0

    .line 702
    .local v0, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    if-eqz v0, :cond_b

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    goto :goto_f

    :cond_b
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    .line 703
    .local v1, "names":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :goto_f
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2, v1}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    return-object v2
.end method

.method public declared-synchronized getPropertyString(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    monitor-enter p0

    .line 686
    :try_start_1
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getProperties()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_20

    .line 687
    .local v0, "data":[B
    if-nez v0, :cond_10

    .line 688
    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    .line 690
    :cond_10
    :try_start_10
    sget-object v1, Ljavax/jmdns/impl/ServiceInfoImpl;->NO_VALUE:[B

    if-ne v0, v1, :cond_18

    .line 691
    const-string v1, "true"
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_20

    monitor-exit p0

    return-object v1

    .line 693
    :cond_18
    const/4 v1, 0x0

    :try_start_19
    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Ljavax/jmdns/impl/ServiceInfoImpl;->readUTF([BII)Ljava/lang/String;

    move-result-object v1
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_20

    monitor-exit p0

    return-object v1

    .line 685
    .end local v0    # "data":[B
    .end local p1    # "name":Ljava/lang/String;
    :catchall_20
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getProtocol()Ljava/lang/String;
    .registers 2

    .line 727
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_protocol:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_protocol:Ljava/lang/String;

    goto :goto_9

    :cond_7
    const-string v0, "tcp"

    :goto_9
    return-object v0
.end method

.method public getQualifiedName()Ljava/lang/String;
    .registers 8

    .line 433
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getDomain()Ljava/lang/String;

    move-result-object v0

    .line 434
    .local v0, "domain":Ljava/lang/String;
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getProtocol()Ljava/lang/String;

    move-result-object v1

    .line 435
    .local v1, "protocol":Ljava/lang/String;
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getApplication()Ljava/lang/String;

    move-result-object v2

    .line 436
    .local v2, "application":Ljava/lang/String;
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getName()Ljava/lang/String;

    move-result-object v3

    .line 440
    .local v3, "instance":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2d

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2f

    :cond_2d
    const-string v5, ""

    :goto_2f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4f

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_51

    :cond_4f
    const-string v5, ""

    :goto_51
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_71

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_73

    :cond_71
    const-string v5, ""

    :goto_73
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public getQualifiedNameMap()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljavax/jmdns/ServiceInfo$Fields;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 743
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 745
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljavax/jmdns/ServiceInfo$Fields;Ljava/lang/String;>;"
    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Domain:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getDomain()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Protocol:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Application:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getApplication()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Instance:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Subtype:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getSubtype()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    return-object v0
.end method

.method public getServer()Ljava/lang/String;
    .registers 2

    .line 448
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_server:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_server:Ljava/lang/String;

    goto :goto_9

    :cond_7
    const-string v0, ""

    :goto_9
    return-object v0
.end method

.method public getSubtype()Ljava/lang/String;
    .registers 2

    .line 735
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_subtype:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_subtype:Ljava/lang/String;

    goto :goto_9

    :cond_7
    const-string v0, ""

    :goto_9
    return-object v0
.end method

.method public getTextBytes()[B
    .registers 2

    .line 600
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_text:[B

    if-eqz v0, :cond_c

    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_text:[B

    array-length v0, v0

    if-lez v0, :cond_c

    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_text:[B

    goto :goto_e

    :cond_c
    sget-object v0, Ljavax/jmdns/impl/DNSRecord;->EMPTY_TXT:[B

    :goto_e
    return-object v0
.end method

.method public getTextString()Ljava/lang/String;
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 609
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getProperties()Ljava/util/Map;

    move-result-object v0

    .line 610
    .local v0, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 611
    .local v1, "key":Ljava/lang/String;
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 612
    .local v2, "value":[B
    if-eqz v2, :cond_3d

    array-length v3, v2

    if-lez v3, :cond_3d

    .line 613
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 615
    :cond_3d
    return-object v1

    .line 617
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":[B
    :cond_3e
    const-string v1, ""

    return-object v1
.end method

.method public getType()Ljava/lang/String;
    .registers 7

    .line 383
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getDomain()Ljava/lang/String;

    move-result-object v0

    .line 384
    .local v0, "domain":Ljava/lang/String;
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getProtocol()Ljava/lang/String;

    move-result-object v1

    .line 385
    .local v1, "protocol":Ljava/lang/String;
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getApplication()Ljava/lang/String;

    move-result-object v2

    .line 386
    .local v2, "application":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_30

    :cond_2e
    const-string v4, ""

    :goto_30
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_50

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_52

    :cond_50
    const-string v4, ""

    :goto_52
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getTypeWithSubtype()Ljava/lang/String;
    .registers 5

    .line 394
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getSubtype()Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, "subtype":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "._sub."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2c

    :cond_2a
    const-string v2, ""

    :goto_2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getURL()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 627
    const-string v0, "http"

    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getURL(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "protocol"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 646
    invoke-virtual {p0, p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->getURLs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 647
    .local v0, "urls":[Ljava/lang/String;
    array-length v1, v0

    if-lez v1, :cond_b

    const/4 v1, 0x0

    aget-object v1, v0, v1

    goto :goto_23

    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "://null:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_23
    return-object v1
.end method

.method public getURLs()[Ljava/lang/String;
    .registers 2

    .line 636
    const-string v0, "http"

    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getURLs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getURLs(Ljava/lang/String;)[Ljava/lang/String;
    .registers 10
    .param p1, "protocol"    # Ljava/lang/String;

    .line 656
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getInetAddresses()[Ljava/net/InetAddress;

    move-result-object v0

    .line 657
    .local v0, "addresses":[Ljava/net/InetAddress;
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    .line 658
    .local v1, "urls":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    array-length v3, v0

    if-ge v2, v3, :cond_72

    .line 659
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getPort()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 660
    .local v3, "url":Ljava/lang/String;
    const-string v4, "path"

    invoke-virtual {p0, v4}, Ljavax/jmdns/impl/ServiceInfoImpl;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 661
    .local v4, "path":Ljava/lang/String;
    if-eqz v4, :cond_6d

    .line 662
    const-string v5, "://"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_43

    .line 663
    move-object v3, v4

    goto :goto_6d

    .line 665
    :cond_43
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_55

    move-object v6, v4

    goto :goto_66

    :cond_55
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_66
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 668
    :cond_6d
    :goto_6d
    aput-object v3, v1, v2

    .line 658
    .end local v3    # "url":Ljava/lang/String;
    .end local v4    # "path":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 670
    .end local v2    # "i":I
    :cond_72
    return-object v1
.end method

.method public getWeight()I
    .registers 2

    .line 592
    iget v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_weight:I

    return v0
.end method

.method public declared-synchronized hasData()Z
    .registers 2

    monitor-enter p0

    .line 1001
    :try_start_1
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getServer()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-direct {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->hasInetAddress()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getTextBytes()[B

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getTextBytes()[B

    move-result-object v0

    array-length v0, v0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1f

    if-lez v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    monitor-exit p0

    return v0

    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hashCode()I
    .registers 2

    .line 1152
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAnnounced()Z
    .registers 2

    .line 1096
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->isAnnounced()Z

    move-result v0

    return v0
.end method

.method public isAnnouncing()Z
    .registers 2

    .line 1088
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->isAnnouncing()Z

    move-result v0

    return v0
.end method

.method public isAssociatedWithTask(Ljavax/jmdns/impl/tasks/DNSTask;Ljavax/jmdns/impl/constants/DNSState;)Z
    .registers 4
    .param p1, "task"    # Ljavax/jmdns/impl/tasks/DNSTask;
    .param p2, "state"    # Ljavax/jmdns/impl/constants/DNSState;

    .line 1072
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    invoke-virtual {v0, p1, p2}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->isAssociatedWithTask(Ljavax/jmdns/impl/tasks/DNSTask;Ljavax/jmdns/impl/constants/DNSState;)Z

    move-result v0

    return v0
.end method

.method public isCanceled()Z
    .registers 2

    .line 1112
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->isCanceled()Z

    move-result v0

    return v0
.end method

.method public isCanceling()Z
    .registers 2

    .line 1104
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->isCanceling()Z

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .registers 2

    .line 1128
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->isClosed()Z

    move-result v0

    return v0
.end method

.method public isClosing()Z
    .registers 2

    .line 1120
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->isClosing()Z

    move-result v0

    return v0
.end method

.method public isPersistent()Z
    .registers 2

    .line 1346
    iget-boolean v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_persistent:Z

    return v0
.end method

.method public isProbing()Z
    .registers 2

    .line 1080
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->isProbing()Z

    move-result v0

    return v0
.end method

.method public needTextAnnouncing()Z
    .registers 2

    .line 1364
    iget-boolean v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_needTextAnnouncing:Z

    return v0
.end method

.method readUTF([BII)Ljava/lang/String;
    .registers 10
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 778
    move v0, p2

    .line 779
    .local v0, "offset":I
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 780
    .local v1, "buf":Ljava/lang/StringBuffer;
    add-int v2, v0, p3

    .local v2, "end":I
    :goto_8
    if-ge v0, v2, :cond_61

    .line 781
    add-int/lit8 v3, v0, 0x1

    .local v3, "offset":I
    aget-byte v0, p1, v0

    .end local v0    # "offset":I
    and-int/lit16 v0, v0, 0xff

    .line 782
    .local v0, "ch":I
    shr-int/lit8 v4, v0, 0x4

    packed-switch v4, :pswitch_data_66

    const/4 v5, 0x0

    packed-switch v4, :pswitch_data_7a

    .line 809
    add-int/lit8 v4, v3, 0x1

    if-lt v4, p3, :cond_1e

    .line 810
    return-object v5

    .line 813
    :cond_1e
    and-int/lit8 v4, v0, 0x3f

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v3, 0x1

    .local v5, "offset":I
    aget-byte v3, p1, v3

    .end local v3    # "offset":I
    and-int/lit8 v3, v3, 0xf

    or-int v0, v4, v3

    goto :goto_5a

    .line 802
    .end local v5    # "offset":I
    .restart local v3    # "offset":I
    :pswitch_2b
    add-int/lit8 v4, v3, 0x2

    if-lt v4, p3, :cond_30

    .line 803
    return-object v5

    .line 806
    :cond_30
    and-int/lit8 v4, v0, 0xf

    shl-int/lit8 v4, v4, 0xc

    add-int/lit8 v5, v3, 0x1

    .restart local v5    # "offset":I
    aget-byte v3, p1, v3

    .end local v3    # "offset":I
    and-int/lit8 v3, v3, 0x3f

    shl-int/lit8 v3, v3, 0x6

    or-int/2addr v3, v4

    add-int/lit8 v4, v5, 0x1

    .local v4, "offset":I
    aget-byte v5, p1, v5

    .end local v5    # "offset":I
    and-int/lit8 v5, v5, 0x3f

    or-int v0, v3, v5

    .line 807
    nop

    .line 816
    move v5, v4

    goto :goto_5a

    .line 795
    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    :pswitch_48
    if-lt v3, p3, :cond_4b

    .line 796
    return-object v5

    .line 799
    :cond_4b
    and-int/lit8 v4, v0, 0x1f

    shl-int/lit8 v4, v4, 0x6

    add-int/lit8 v5, v3, 0x1

    .restart local v5    # "offset":I
    aget-byte v3, p1, v3

    .end local v3    # "offset":I
    and-int/lit8 v3, v3, 0x3f

    or-int v0, v4, v3

    .line 800
    goto :goto_5a

    .line 792
    .end local v5    # "offset":I
    .restart local v3    # "offset":I
    :pswitch_58
    nop

    .line 816
    move v5, v3

    .end local v3    # "offset":I
    .restart local v5    # "offset":I
    :goto_5a
    int-to-char v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 817
    .end local v0    # "ch":I
    nop

    .line 780
    move v0, v5

    goto :goto_8

    .line 818
    .end local v2    # "end":I
    .end local v5    # "offset":I
    .local v0, "offset":I
    :cond_61
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_58
        :pswitch_58
        :pswitch_58
        :pswitch_58
        :pswitch_58
        :pswitch_58
        :pswitch_58
        :pswitch_58
    .end packed-switch

    :pswitch_data_7a
    .packed-switch 0xc
        :pswitch_48
        :pswitch_48
        :pswitch_2b
    .end packed-switch
.end method

.method public recoverState()Z
    .registers 2

    .line 1048
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->recoverState()Z

    move-result v0

    return v0
.end method

.method public removeAssociationWithTask(Ljavax/jmdns/impl/tasks/DNSTask;)V
    .registers 3
    .param p1, "task"    # Ljavax/jmdns/impl/tasks/DNSTask;

    .line 1056
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    invoke-virtual {v0, p1}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->removeAssociationWithTask(Ljavax/jmdns/impl/tasks/DNSTask;)V

    .line 1057
    return-void
.end method

.method public revertState()Z
    .registers 2

    .line 1024
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->revertState()Z

    move-result v0

    return v0
.end method

.method setDelegate(Ljavax/jmdns/impl/ServiceInfoImpl$Delegate;)V
    .registers 2
    .param p1, "delegate"    # Ljavax/jmdns/impl/ServiceInfoImpl$Delegate;

    .line 1379
    iput-object p1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_delegate:Ljavax/jmdns/impl/ServiceInfoImpl$Delegate;

    .line 1380
    return-void
.end method

.method public setDns(Ljavax/jmdns/impl/JmDNSImpl;)V
    .registers 3
    .param p1, "dns"    # Ljavax/jmdns/impl/JmDNSImpl;

    .line 1330
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    invoke-virtual {v0, p1}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->setDns(Ljavax/jmdns/impl/JmDNSImpl;)V

    .line 1331
    return-void
.end method

.method setName(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 424
    iput-object p1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_name:Ljava/lang/String;

    .line 425
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_key:Ljava/lang/String;

    .line 426
    return-void
.end method

.method public setNeedTextAnnouncing(Z)V
    .registers 4
    .param p1, "needTextAnnouncing"    # Z

    .line 1354
    iput-boolean p1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_needTextAnnouncing:Z

    .line 1355
    iget-boolean v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_needTextAnnouncing:Z

    if-eqz v0, :cond_c

    .line 1356
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->setTask(Ljavax/jmdns/impl/tasks/DNSTask;)V

    .line 1358
    :cond_c
    return-void
.end method

.method setServer(Ljava/lang/String;)V
    .registers 2
    .param p1, "server"    # Ljava/lang/String;

    .line 456
    iput-object p1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_server:Ljava/lang/String;

    .line 457
    return-void
.end method

.method public setText(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1276
    .local p1, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-static {p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->textFromProperties(Ljava/util/Map;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->setText([B)V

    .line 1277
    return-void
.end method

.method public setText([B)V
    .registers 3
    .param p1, "text"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1264
    monitor-enter p0

    .line 1265
    :try_start_1
    iput-object p1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_text:[B

    .line 1266
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_props:Ljava/util/Map;

    .line 1267
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->setNeedTextAnnouncing(Z)V

    .line 1268
    monitor-exit p0

    .line 1269
    return-void

    .line 1268
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    .line 1208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1209
    .local v0, "buf":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1210
    const-string v1, "name: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_5e

    :cond_5c
    const-string v2, ""

    :goto_5e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getTypeWithSubtype()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1212
    const-string v1, "\' address: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1213
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getInetAddresses()[Ljava/net/InetAddress;

    move-result-object v1

    .line 1214
    .local v1, "addresses":[Ljava/net/InetAddress;
    array-length v2, v1

    if-lez v2, :cond_98

    .line 1215
    array-length v2, v1

    const/4 v3, 0x0

    :goto_7d
    if-ge v3, v2, :cond_a4

    aget-object v4, v1, v3

    .line 1216
    .local v4, "address":Ljava/net/InetAddress;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1217
    const/16 v5, 0x3a

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1218
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getPort()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1219
    const/16 v5, 0x20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1215
    .end local v4    # "address":Ljava/net/InetAddress;
    add-int/lit8 v3, v3, 0x1

    goto :goto_7d

    .line 1222
    :cond_98
    const-string v2, "(null):"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1223
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getPort()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1225
    :cond_a4
    const-string v2, "\' status: \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1226
    iget-object v2, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    invoke-virtual {v2}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1227
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_bb

    const-string v2, "\' is persistent,"

    goto :goto_bd

    :cond_bb
    const-string v2, "\',"

    :goto_bd
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1228
    const-string v2, " has "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1229
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->hasData()Z

    move-result v2

    if-eqz v2, :cond_ce

    const-string v2, ""

    goto :goto_d0

    :cond_ce
    const-string v2, "NO "

    :goto_d0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1230
    const-string v2, "data"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1231
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getTextBytes()[B

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_134

    .line 1234
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getProperties()Ljava/util/Map;

    move-result-object v2

    .line 1235
    .local v2, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_12f

    .line 1236
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1237
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_134

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1238
    .local v4, "key":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\t"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1239
    .end local v4    # "key":Ljava/lang/String;
    goto :goto_f6

    .line 1241
    :cond_12f
    const-string v3, " empty"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1244
    .end local v2    # "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    :cond_134
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1245
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public updateRecord(Ljavax/jmdns/impl/DNSCache;JLjavax/jmdns/impl/DNSEntry;)V
    .registers 11
    .param p1, "dnsCache"    # Ljavax/jmdns/impl/DNSCache;
    .param p2, "now"    # J
    .param p4, "rec"    # Ljavax/jmdns/impl/DNSEntry;

    .line 872
    instance-of v0, p4, Ljavax/jmdns/impl/DNSRecord;

    if-eqz v0, :cond_147

    invoke-virtual {p4, p2, p3}, Ljavax/jmdns/impl/DNSEntry;->isExpired(J)Z

    move-result v0

    if-nez v0, :cond_147

    .line 873
    const/4 v0, 0x0

    .line 876
    .local v0, "serviceUpdated":Z
    sget-object v1, Ljavax/jmdns/impl/ServiceInfoImpl$1;->$SwitchMap$javax$jmdns$impl$constants$DNSRecordType:[I

    invoke-virtual {p4}, Ljavax/jmdns/impl/DNSEntry;->getRecordType()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_148

    goto/16 :goto_118

    .line 971
    :pswitch_1c
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getSubtype()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_118

    invoke-virtual {p4}, Ljavax/jmdns/impl/DNSEntry;->getSubtype()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_118

    .line 972
    invoke-virtual {p4}, Ljavax/jmdns/impl/DNSEntry;->getSubtype()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_subtype:Ljava/lang/String;

    .line 973
    const/4 v0, 0x1

    goto/16 :goto_118

    .line 963
    :pswitch_39
    invoke-virtual {p4}, Ljavax/jmdns/impl/DNSEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_118

    .line 964
    move-object v1, p4

    check-cast v1, Ljavax/jmdns/impl/DNSRecord$Text;

    .line 965
    .local v1, "txt":Ljavax/jmdns/impl/DNSRecord$Text;
    invoke-virtual {v1}, Ljavax/jmdns/impl/DNSRecord$Text;->getText()[B

    move-result-object v2

    iput-object v2, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_text:[B

    .line 966
    const/4 v2, 0x0

    iput-object v2, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_props:Ljava/util/Map;

    .line 967
    const/4 v0, 0x1

    .line 968
    .end local v1    # "txt":Ljavax/jmdns/impl/DNSRecord$Text;
    goto/16 :goto_118

    .line 923
    :pswitch_56
    invoke-virtual {p4}, Ljavax/jmdns/impl/DNSEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_118

    .line 924
    move-object v1, p4

    check-cast v1, Ljavax/jmdns/impl/DNSRecord$Service;

    .line 942
    .local v1, "srv":Ljavax/jmdns/impl/DNSRecord$Service;
    iget-object v2, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_server:Ljava/lang/String;

    if-eqz v2, :cond_7a

    iget-object v2, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_server:Ljava/lang/String;

    invoke-virtual {v1}, Ljavax/jmdns/impl/DNSRecord$Service;->getServer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_78

    goto :goto_7a

    :cond_78
    const/4 v2, 0x0

    goto :goto_7b

    :cond_7a
    :goto_7a
    const/4 v2, 0x1

    .line 943
    .local v2, "serverChanged":Z
    :goto_7b
    invoke-virtual {v1}, Ljavax/jmdns/impl/DNSRecord$Service;->getServer()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_server:Ljava/lang/String;

    .line 944
    invoke-virtual {v1}, Ljavax/jmdns/impl/DNSRecord$Service;->getPort()I

    move-result v3

    iput v3, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_port:I

    .line 945
    invoke-virtual {v1}, Ljavax/jmdns/impl/DNSRecord$Service;->getWeight()I

    move-result v3

    iput v3, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_weight:I

    .line 946
    invoke-virtual {v1}, Ljavax/jmdns/impl/DNSRecord$Service;->getPriority()I

    move-result v3

    iput v3, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_priority:I

    .line 947
    if-eqz v2, :cond_db

    .line 948
    iget-object v3, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv4Addresses:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 949
    iget-object v3, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv6Addresses:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 950
    iget-object v3, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_server:Ljava/lang/String;

    sget-object v4, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_A:Ljavax/jmdns/impl/constants/DNSRecordType;

    sget-object v5, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    invoke-virtual {p1, v3, v4, v5}, Ljavax/jmdns/impl/DNSCache;->getDNSEntryList(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_ad
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_bd

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/jmdns/impl/DNSEntry;

    .line 951
    .local v4, "entry":Ljavax/jmdns/impl/DNSEntry;
    invoke-virtual {p0, p1, p2, p3, v4}, Ljavax/jmdns/impl/ServiceInfoImpl;->updateRecord(Ljavax/jmdns/impl/DNSCache;JLjavax/jmdns/impl/DNSEntry;)V

    .line 952
    .end local v4    # "entry":Ljavax/jmdns/impl/DNSEntry;
    goto :goto_ad

    .line 953
    :cond_bd
    iget-object v3, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_server:Ljava/lang/String;

    sget-object v4, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_AAAA:Ljavax/jmdns/impl/constants/DNSRecordType;

    sget-object v5, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    invoke-virtual {p1, v3, v4, v5}, Ljavax/jmdns/impl/DNSCache;->getDNSEntryList(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_cb
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_dc

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/jmdns/impl/DNSEntry;

    .line 954
    .restart local v4    # "entry":Ljavax/jmdns/impl/DNSEntry;
    invoke-virtual {p0, p1, p2, p3, v4}, Ljavax/jmdns/impl/ServiceInfoImpl;->updateRecord(Ljavax/jmdns/impl/DNSCache;JLjavax/jmdns/impl/DNSEntry;)V

    .line 955
    .end local v4    # "entry":Ljavax/jmdns/impl/DNSEntry;
    goto :goto_cb

    .line 958
    :cond_db
    const/4 v0, 0x1

    .line 960
    .end local v1    # "srv":Ljavax/jmdns/impl/DNSRecord$Service;
    .end local v2    # "serverChanged":Z
    :cond_dc
    goto :goto_118

    .line 916
    :pswitch_dd
    invoke-virtual {p4}, Ljavax/jmdns/impl/DNSEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getServer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_118

    .line 917
    iget-object v1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv6Addresses:Ljava/util/Set;

    move-object v2, p4

    check-cast v2, Ljavax/jmdns/impl/DNSRecord$Address;

    invoke-virtual {v2}, Ljavax/jmdns/impl/DNSRecord$Address;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    check-cast v2, Ljava/net/Inet6Address;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 918
    const/4 v0, 0x1

    goto :goto_118

    .line 894
    :pswitch_fb
    invoke-virtual {p4}, Ljavax/jmdns/impl/DNSEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getServer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_118

    .line 895
    iget-object v1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv4Addresses:Ljava/util/Set;

    move-object v2, p4

    check-cast v2, Ljavax/jmdns/impl/DNSRecord$Address;

    invoke-virtual {v2}, Ljavax/jmdns/impl/DNSRecord$Address;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    check-cast v2, Ljava/net/Inet4Address;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 896
    const/4 v0, 0x1

    .line 979
    :cond_118
    :goto_118
    if-eqz v0, :cond_13e

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->hasData()Z

    move-result v1

    if-eqz v1, :cond_13e

    .line 980
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    .line 981
    .local v1, "dns":Ljavax/jmdns/impl/JmDNSImpl;
    if-eqz v1, :cond_13e

    .line 982
    move-object v2, p4

    check-cast v2, Ljavax/jmdns/impl/DNSRecord;

    invoke-virtual {v2, v1}, Ljavax/jmdns/impl/DNSRecord;->getServiceEvent(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/ServiceEvent;

    move-result-object v2

    .line 983
    .local v2, "event":Ljavax/jmdns/ServiceEvent;
    new-instance v3, Ljavax/jmdns/impl/ServiceEventImpl;

    invoke-virtual {v2}, Ljavax/jmdns/ServiceEvent;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljavax/jmdns/ServiceEvent;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v1, v4, v5, p0}, Ljavax/jmdns/impl/ServiceEventImpl;-><init>(Ljavax/jmdns/impl/JmDNSImpl;Ljava/lang/String;Ljava/lang/String;Ljavax/jmdns/ServiceInfo;)V

    move-object v2, v3

    .line 984
    invoke-virtual {v1, v2}, Ljavax/jmdns/impl/JmDNSImpl;->handleServiceResolved(Ljavax/jmdns/ServiceEvent;)V

    .line 988
    .end local v1    # "dns":Ljavax/jmdns/impl/JmDNSImpl;
    .end local v2    # "event":Ljavax/jmdns/ServiceEvent;
    :cond_13e
    monitor-enter p0

    .line 989
    :try_start_13f
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 990
    monitor-exit p0

    goto :goto_147

    :catchall_144
    move-exception v1

    monitor-exit p0
    :try_end_146
    .catchall {:try_start_13f .. :try_end_146} :catchall_144

    throw v1

    .line 992
    .end local v0    # "serviceUpdated":Z
    :cond_147
    :goto_147
    return-void

    :pswitch_data_148
    .packed-switch 0x1
        :pswitch_fb
        :pswitch_dd
        :pswitch_56
        :pswitch_39
        :pswitch_1c
    .end packed-switch
.end method

.method public waitForAnnounced(J)Z
    .registers 4
    .param p1, "timeout"    # J

    .line 1136
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    invoke-virtual {v0, p1, p2}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->waitForAnnounced(J)Z

    move-result v0

    return v0
.end method

.method public waitForCanceled(J)Z
    .registers 4
    .param p1, "timeout"    # J

    .line 1144
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    invoke-virtual {v0, p1, p2}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->waitForCanceled(J)Z

    move-result v0

    return v0
.end method
