.class public final Lorg/xbill/DNS/Lookup;
.super Ljava/lang/Object;
.source "Lookup.java"


# static fields
.field public static final HOST_NOT_FOUND:I = 0x3

.field public static final SUCCESSFUL:I = 0x0

.field public static final TRY_AGAIN:I = 0x2

.field public static final TYPE_NOT_FOUND:I = 0x4

.field public static final UNRECOVERABLE:I = 0x1

.field static synthetic class$org$xbill$DNS$Lookup:Ljava/lang/Class;

.field private static defaultCaches:Ljava/util/Map;

.field private static defaultNdots:I

.field private static defaultResolver:Lorg/xbill/DNS/Resolver;

.field private static defaultSearchPath:[Lorg/xbill/DNS/Name;

.field private static final noAliases:[Lorg/xbill/DNS/Name;


# instance fields
.field private aliases:Ljava/util/List;

.field private answers:[Lorg/xbill/DNS/Record;

.field private badresponse:Z

.field private badresponse_error:Ljava/lang/String;

.field private cache:Lorg/xbill/DNS/Cache;

.field private credibility:I

.field private dclass:I

.field private done:Z

.field private doneCurrent:Z

.field private error:Ljava/lang/String;

.field private foundAlias:Z

.field private iterations:I

.field private name:Lorg/xbill/DNS/Name;

.field private nametoolong:Z

.field private networkerror:Z

.field private nxdomain:Z

.field private referral:Z

.field private resolver:Lorg/xbill/DNS/Resolver;

.field private result:I

.field private searchPath:[Lorg/xbill/DNS/Name;

.field private temporary_cache:Z

.field private timedout:Z

.field private type:I

.field private verbose:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 59
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/xbill/DNS/Name;

    sput-object v0, Lorg/xbill/DNS/Lookup;->noAliases:[Lorg/xbill/DNS/Name;

    .line 97
    invoke-static {}, Lorg/xbill/DNS/Lookup;->refreshDefault()V

    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 300
    invoke-static {p1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v1}, Lorg/xbill/DNS/Lookup;-><init>(Lorg/xbill/DNS/Name;II)V

    .line 301
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 288
    invoke-static {p1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, v1}, Lorg/xbill/DNS/Lookup;-><init>(Lorg/xbill/DNS/Name;II)V

    .line 289
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "dclass"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 274
    invoke-static {p1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lorg/xbill/DNS/Lookup;-><init>(Lorg/xbill/DNS/Name;II)V

    .line 275
    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;)V
    .registers 3
    .param p1, "name"    # Lorg/xbill/DNS/Name;

    .line 259
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0}, Lorg/xbill/DNS/Lookup;-><init>(Lorg/xbill/DNS/Name;II)V

    .line 260
    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;I)V
    .registers 4
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "type"    # I

    .line 248
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/xbill/DNS/Lookup;-><init>(Lorg/xbill/DNS/Name;II)V

    .line 249
    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;II)V
    .registers 6
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "type"    # I
    .param p3, "dclass"    # I

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    invoke-static {p2}, Lorg/xbill/DNS/Type;->check(I)V

    .line 221
    invoke-static {p3}, Lorg/xbill/DNS/DClass;->check(I)V

    .line 222
    invoke-static {p2}, Lorg/xbill/DNS/Type;->isRR(I)Z

    move-result v0

    if-nez v0, :cond_1c

    const/16 v0, 0xff

    if-ne p2, v0, :cond_14

    goto :goto_1c

    .line 223
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot query for meta-types other than ANY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_1c
    :goto_1c
    iput-object p1, p0, Lorg/xbill/DNS/Lookup;->name:Lorg/xbill/DNS/Name;

    .line 226
    iput p2, p0, Lorg/xbill/DNS/Lookup;->type:I

    .line 227
    iput p3, p0, Lorg/xbill/DNS/Lookup;->dclass:I

    .line 228
    sget-object v0, Lorg/xbill/DNS/Lookup;->class$org$xbill$DNS$Lookup:Ljava/lang/Class;

    if-nez v0, :cond_2f

    const-string v0, "org.xbill.DNS.Lookup"

    invoke-static {v0}, Lorg/xbill/DNS/Lookup;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/Lookup;->class$org$xbill$DNS$Lookup:Ljava/lang/Class;

    goto :goto_31

    :cond_2f
    sget-object v0, Lorg/xbill/DNS/Lookup;->class$org$xbill$DNS$Lookup:Ljava/lang/Class;

    :goto_31
    monitor-enter v0

    .line 229
    :try_start_32
    invoke-static {}, Lorg/xbill/DNS/Lookup;->getDefaultResolver()Lorg/xbill/DNS/Resolver;

    move-result-object v1

    iput-object v1, p0, Lorg/xbill/DNS/Lookup;->resolver:Lorg/xbill/DNS/Resolver;

    .line 230
    invoke-static {}, Lorg/xbill/DNS/Lookup;->getDefaultSearchPath()[Lorg/xbill/DNS/Name;

    move-result-object v1

    iput-object v1, p0, Lorg/xbill/DNS/Lookup;->searchPath:[Lorg/xbill/DNS/Name;

    .line 231
    invoke-static {p3}, Lorg/xbill/DNS/Lookup;->getDefaultCache(I)Lorg/xbill/DNS/Cache;

    move-result-object v1

    iput-object v1, p0, Lorg/xbill/DNS/Lookup;->cache:Lorg/xbill/DNS/Cache;

    .line 232
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_32 .. :try_end_45} :catchall_54

    .line 233
    const/4 v0, 0x3

    iput v0, p0, Lorg/xbill/DNS/Lookup;->credibility:I

    .line 234
    const-string v0, "verbose"

    invoke-static {v0}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/xbill/DNS/Lookup;->verbose:Z

    .line 235
    const/4 v0, -0x1

    iput v0, p0, Lorg/xbill/DNS/Lookup;->result:I

    .line 236
    return-void

    .line 232
    :catchall_54
    move-exception v1

    :try_start_55
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw v1
.end method

.method private checkDone()V
    .registers 4

    .line 579
    iget-boolean v0, p0, Lorg/xbill/DNS/Lookup;->done:Z

    if-eqz v0, :cond_a

    iget v0, p0, Lorg/xbill/DNS/Lookup;->result:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    .line 580
    return-void

    .line 581
    :cond_a
    new-instance v0, Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Lookup of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/xbill/DNS/Lookup;->name:Lorg/xbill/DNS/Name;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 582
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget v1, p0, Lorg/xbill/DNS/Lookup;->dclass:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_46

    .line 583
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget v2, p0, Lorg/xbill/DNS/Lookup;->dclass:I

    invoke-static {v2}, Lorg/xbill/DNS/DClass;->string(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 584
    :cond_46
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget v2, p0, Lorg/xbill/DNS/Lookup;->type:I

    invoke-static {v2}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " isn\'t done"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 585
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .param p0, "x0"    # Ljava/lang/String;

    .line 228
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    :catch_5
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method

.method private follow(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V
    .registers 6
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "oldname"    # Lorg/xbill/DNS/Name;

    .line 386
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/xbill/DNS/Lookup;->foundAlias:Z

    .line 387
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/xbill/DNS/Lookup;->badresponse:Z

    .line 388
    iput-boolean v1, p0, Lorg/xbill/DNS/Lookup;->networkerror:Z

    .line 389
    iput-boolean v1, p0, Lorg/xbill/DNS/Lookup;->timedout:Z

    .line 390
    iput-boolean v1, p0, Lorg/xbill/DNS/Lookup;->nxdomain:Z

    .line 391
    iput-boolean v1, p0, Lorg/xbill/DNS/Lookup;->referral:Z

    .line 392
    iget v1, p0, Lorg/xbill/DNS/Lookup;->iterations:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/xbill/DNS/Lookup;->iterations:I

    .line 393
    iget v1, p0, Lorg/xbill/DNS/Lookup;->iterations:I

    const/4 v2, 0x6

    if-ge v1, v2, :cond_33

    invoke-virtual {p1, p2}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    goto :goto_33

    .line 399
    :cond_1f
    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->aliases:Ljava/util/List;

    if-nez v0, :cond_2a

    .line 400
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/xbill/DNS/Lookup;->aliases:Ljava/util/List;

    .line 401
    :cond_2a
    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->aliases:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    invoke-direct {p0, p1}, Lorg/xbill/DNS/Lookup;->lookup(Lorg/xbill/DNS/Name;)V

    .line 403
    return-void

    .line 394
    :cond_33
    :goto_33
    iput v0, p0, Lorg/xbill/DNS/Lookup;->result:I

    .line 395
    const-string v1, "CNAME loop"

    iput-object v1, p0, Lorg/xbill/DNS/Lookup;->error:Ljava/lang/String;

    .line 396
    iput-boolean v0, p0, Lorg/xbill/DNS/Lookup;->done:Z

    .line 397
    return-void
.end method

.method public static declared-synchronized getDefaultCache(I)Lorg/xbill/DNS/Cache;
    .registers 5
    .param p0, "dclass"    # I

    const-class v0, Lorg/xbill/DNS/Lookup;

    monitor-enter v0

    .line 126
    :try_start_3
    invoke-static {p0}, Lorg/xbill/DNS/DClass;->check(I)V

    .line 127
    sget-object v1, Lorg/xbill/DNS/Lookup;->defaultCaches:Ljava/util/Map;

    invoke-static {p0}, Lorg/xbill/DNS/Mnemonic;->toInteger(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/Cache;

    .line 128
    .local v1, "c":Lorg/xbill/DNS/Cache;
    if-nez v1, :cond_23

    .line 129
    new-instance v2, Lorg/xbill/DNS/Cache;

    invoke-direct {v2, p0}, Lorg/xbill/DNS/Cache;-><init>(I)V

    move-object v1, v2

    .line 130
    sget-object v2, Lorg/xbill/DNS/Lookup;->defaultCaches:Ljava/util/Map;

    invoke-static {p0}, Lorg/xbill/DNS/Mnemonic;->toInteger(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_25

    .line 132
    :cond_23
    monitor-exit v0

    return-object v1

    .line 125
    .end local v1    # "c":Lorg/xbill/DNS/Cache;
    .end local p0    # "dclass":I
    :catchall_25
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getDefaultResolver()Lorg/xbill/DNS/Resolver;
    .registers 2

    const-class v0, Lorg/xbill/DNS/Lookup;

    monitor-enter v0

    .line 106
    :try_start_3
    sget-object v1, Lorg/xbill/DNS/Lookup;->defaultResolver:Lorg/xbill/DNS/Resolver;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getDefaultSearchPath()[Lorg/xbill/DNS/Name;
    .registers 2

    const-class v0, Lorg/xbill/DNS/Lookup;

    monitor-enter v0

    .line 153
    :try_start_3
    sget-object v1, Lorg/xbill/DNS/Lookup;->defaultSearchPath:[Lorg/xbill/DNS/Name;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private lookup(Lorg/xbill/DNS/Name;)V
    .registers 10
    .param p1, "current"    # Lorg/xbill/DNS/Name;

    .line 453
    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->cache:Lorg/xbill/DNS/Cache;

    iget v1, p0, Lorg/xbill/DNS/Lookup;->type:I

    iget v2, p0, Lorg/xbill/DNS/Lookup;->credibility:I

    invoke-virtual {v0, p1, v1, v2}, Lorg/xbill/DNS/Cache;->lookupRecords(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/SetResponse;

    move-result-object v0

    .line 454
    .local v0, "sr":Lorg/xbill/DNS/SetResponse;
    iget-boolean v1, p0, Lorg/xbill/DNS/Lookup;->verbose:Z

    if-eqz v1, :cond_37

    .line 455
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "lookup "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v3, p0, Lorg/xbill/DNS/Lookup;->type:I

    invoke-static {v3}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 457
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 459
    :cond_37
    invoke-direct {p0, p1, v0}, Lorg/xbill/DNS/Lookup;->processResponse(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/SetResponse;)V

    .line 460
    iget-boolean v1, p0, Lorg/xbill/DNS/Lookup;->done:Z

    if-nez v1, :cond_d3

    iget-boolean v1, p0, Lorg/xbill/DNS/Lookup;->doneCurrent:Z

    if-eqz v1, :cond_44

    goto/16 :goto_d3

    .line 463
    :cond_44
    iget v1, p0, Lorg/xbill/DNS/Lookup;->type:I

    iget v2, p0, Lorg/xbill/DNS/Lookup;->dclass:I

    invoke-static {p1, v1, v2}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/Record;

    move-result-object v1

    .line 464
    .local v1, "question":Lorg/xbill/DNS/Record;
    invoke-static {v1}, Lorg/xbill/DNS/Message;->newQuery(Lorg/xbill/DNS/Record;)Lorg/xbill/DNS/Message;

    move-result-object v2

    .line 465
    .local v2, "query":Lorg/xbill/DNS/Message;
    const/4 v3, 0x0

    .line 467
    .local v3, "response":Lorg/xbill/DNS/Message;
    const/4 v4, 0x1

    :try_start_52
    iget-object v5, p0, Lorg/xbill/DNS/Lookup;->resolver:Lorg/xbill/DNS/Resolver;

    invoke-interface {v5, v2}, Lorg/xbill/DNS/Resolver;->send(Lorg/xbill/DNS/Message;)Lorg/xbill/DNS/Message;

    move-result-object v5
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_58} :catch_c8

    move-object v3, v5

    .line 476
    nop

    .line 477
    invoke-virtual {v3}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v5

    invoke-virtual {v5}, Lorg/xbill/DNS/Header;->getRcode()I

    move-result v5

    .line 478
    .local v5, "rcode":I
    if-eqz v5, :cond_70

    const/4 v6, 0x3

    if-eq v5, v6, :cond_70

    .line 481
    iput-boolean v4, p0, Lorg/xbill/DNS/Lookup;->badresponse:Z

    .line 482
    invoke-static {v5}, Lorg/xbill/DNS/Rcode;->string(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/xbill/DNS/Lookup;->badresponse_error:Ljava/lang/String;

    .line 483
    return-void

    .line 486
    :cond_70
    invoke-virtual {v2}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v6

    invoke-virtual {v3}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/xbill/DNS/Record;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_85

    .line 488
    iput-boolean v4, p0, Lorg/xbill/DNS/Lookup;->badresponse:Z

    .line 489
    const-string v4, "response does not match query"

    iput-object v4, p0, Lorg/xbill/DNS/Lookup;->badresponse_error:Ljava/lang/String;

    .line 490
    return-void

    .line 493
    :cond_85
    iget-object v4, p0, Lorg/xbill/DNS/Lookup;->cache:Lorg/xbill/DNS/Cache;

    invoke-virtual {v4, v3}, Lorg/xbill/DNS/Cache;->addMessage(Lorg/xbill/DNS/Message;)Lorg/xbill/DNS/SetResponse;

    move-result-object v0

    .line 494
    if-nez v0, :cond_97

    .line 495
    iget-object v4, p0, Lorg/xbill/DNS/Lookup;->cache:Lorg/xbill/DNS/Cache;

    iget v6, p0, Lorg/xbill/DNS/Lookup;->type:I

    iget v7, p0, Lorg/xbill/DNS/Lookup;->credibility:I

    invoke-virtual {v4, p1, v6, v7}, Lorg/xbill/DNS/Cache;->lookupRecords(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/SetResponse;

    move-result-object v0

    .line 496
    :cond_97
    iget-boolean v4, p0, Lorg/xbill/DNS/Lookup;->verbose:Z

    if-eqz v4, :cond_c4

    .line 497
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "queried "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v7, p0, Lorg/xbill/DNS/Lookup;->type:I

    invoke-static {v7}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 499
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 501
    :cond_c4
    invoke-direct {p0, p1, v0}, Lorg/xbill/DNS/Lookup;->processResponse(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/SetResponse;)V

    .line 502
    return-void

    .line 469
    .end local v5    # "rcode":I
    :catch_c8
    move-exception v5

    .line 471
    .local v5, "e":Ljava/io/IOException;
    instance-of v6, v5, Ljava/io/InterruptedIOException;

    if-eqz v6, :cond_d0

    .line 472
    iput-boolean v4, p0, Lorg/xbill/DNS/Lookup;->timedout:Z

    goto :goto_d2

    .line 474
    :cond_d0
    iput-boolean v4, p0, Lorg/xbill/DNS/Lookup;->networkerror:Z

    .line 475
    :goto_d2
    return-void

    .line 461
    .end local v1    # "question":Lorg/xbill/DNS/Record;
    .end local v2    # "query":Lorg/xbill/DNS/Message;
    .end local v3    # "response":Lorg/xbill/DNS/Message;
    .end local v5    # "e":Ljava/io/IOException;
    :cond_d3
    :goto_d3
    return-void
.end method

.method private processResponse(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/SetResponse;)V
    .registers 10
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "response"    # Lorg/xbill/DNS/SetResponse;

    .line 407
    invoke-virtual {p2}, Lorg/xbill/DNS/SetResponse;->isSuccessful()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3f

    .line 408
    invoke-virtual {p2}, Lorg/xbill/DNS/SetResponse;->answers()[Lorg/xbill/DNS/RRset;

    move-result-object v0

    .line 409
    .local v0, "rrsets":[Lorg/xbill/DNS/RRset;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 413
    .local v2, "l":Ljava/util/List;
    const/4 v3, 0x0

    const/4 v4, 0x0

    .local v4, "i":I
    :goto_12
    array-length v5, v0

    if-ge v4, v5, :cond_2c

    .line 414
    aget-object v5, v0, v4

    invoke-virtual {v5}, Lorg/xbill/DNS/RRset;->rrs()Ljava/util/Iterator;

    move-result-object v5

    .line 415
    .local v5, "it":Ljava/util/Iterator;
    :goto_1b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_29

    .line 416
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 413
    :cond_29
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 419
    .end local v5    # "it":Ljava/util/Iterator;
    :cond_2c
    iput v3, p0, Lorg/xbill/DNS/Lookup;->result:I

    .line 420
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lorg/xbill/DNS/Record;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/xbill/DNS/Record;

    iput-object v3, p0, Lorg/xbill/DNS/Lookup;->answers:[Lorg/xbill/DNS/Record;

    .line 421
    iput-boolean v1, p0, Lorg/xbill/DNS/Lookup;->done:Z

    .line 422
    .end local v0    # "rrsets":[Lorg/xbill/DNS/RRset;
    .end local v2    # "l":Ljava/util/List;
    .end local v4    # "i":I
    goto :goto_98

    :cond_3f
    invoke-virtual {p2}, Lorg/xbill/DNS/SetResponse;->isNXDOMAIN()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 423
    iput-boolean v1, p0, Lorg/xbill/DNS/Lookup;->nxdomain:Z

    .line 424
    iput-boolean v1, p0, Lorg/xbill/DNS/Lookup;->doneCurrent:Z

    .line 425
    iget v0, p0, Lorg/xbill/DNS/Lookup;->iterations:I

    if-lez v0, :cond_98

    .line 426
    const/4 v0, 0x3

    iput v0, p0, Lorg/xbill/DNS/Lookup;->result:I

    .line 427
    iput-boolean v1, p0, Lorg/xbill/DNS/Lookup;->done:Z

    goto :goto_98

    .line 429
    :cond_53
    invoke-virtual {p2}, Lorg/xbill/DNS/SetResponse;->isNXRRSET()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 430
    const/4 v0, 0x4

    iput v0, p0, Lorg/xbill/DNS/Lookup;->result:I

    .line 431
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xbill/DNS/Lookup;->answers:[Lorg/xbill/DNS/Record;

    .line 432
    iput-boolean v1, p0, Lorg/xbill/DNS/Lookup;->done:Z

    goto :goto_98

    .line 433
    :cond_62
    invoke-virtual {p2}, Lorg/xbill/DNS/SetResponse;->isCNAME()Z

    move-result v0

    if-eqz v0, :cond_74

    .line 434
    invoke-virtual {p2}, Lorg/xbill/DNS/SetResponse;->getCNAME()Lorg/xbill/DNS/CNAMERecord;

    move-result-object v0

    .line 435
    .local v0, "cname":Lorg/xbill/DNS/CNAMERecord;
    invoke-virtual {v0}, Lorg/xbill/DNS/CNAMERecord;->getTarget()Lorg/xbill/DNS/Name;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lorg/xbill/DNS/Lookup;->follow(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V

    .line 436
    .end local v0    # "cname":Lorg/xbill/DNS/CNAMERecord;
    goto :goto_98

    :cond_74
    invoke-virtual {p2}, Lorg/xbill/DNS/SetResponse;->isDNAME()Z

    move-result v0

    if-eqz v0, :cond_90

    .line 437
    invoke-virtual {p2}, Lorg/xbill/DNS/SetResponse;->getDNAME()Lorg/xbill/DNS/DNAMERecord;

    move-result-object v0

    .line 439
    .local v0, "dname":Lorg/xbill/DNS/DNAMERecord;
    :try_start_7e
    invoke-virtual {p1, v0}, Lorg/xbill/DNS/Name;->fromDNAME(Lorg/xbill/DNS/DNAMERecord;)Lorg/xbill/DNS/Name;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lorg/xbill/DNS/Lookup;->follow(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V
    :try_end_85
    .catch Lorg/xbill/DNS/NameTooLongException; {:try_start_7e .. :try_end_85} :catch_86

    .line 444
    goto :goto_8f

    .line 440
    :catch_86
    move-exception v2

    .line 441
    .local v2, "e":Lorg/xbill/DNS/NameTooLongException;
    iput v1, p0, Lorg/xbill/DNS/Lookup;->result:I

    .line 442
    const-string v3, "Invalid DNAME target"

    iput-object v3, p0, Lorg/xbill/DNS/Lookup;->error:Ljava/lang/String;

    .line 443
    iput-boolean v1, p0, Lorg/xbill/DNS/Lookup;->done:Z

    .line 445
    .end local v0    # "dname":Lorg/xbill/DNS/DNAMERecord;
    .end local v2    # "e":Lorg/xbill/DNS/NameTooLongException;
    :goto_8f
    goto :goto_98

    :cond_90
    invoke-virtual {p2}, Lorg/xbill/DNS/SetResponse;->isDelegation()Z

    move-result v0

    if-eqz v0, :cond_98

    .line 447
    iput-boolean v1, p0, Lorg/xbill/DNS/Lookup;->referral:Z

    .line 449
    :cond_98
    :goto_98
    return-void
.end method

.method public static declared-synchronized refreshDefault()V
    .registers 4

    const-class v0, Lorg/xbill/DNS/Lookup;

    monitor-enter v0

    .line 86
    :try_start_3
    new-instance v1, Lorg/xbill/DNS/ExtendedResolver;

    invoke-direct {v1}, Lorg/xbill/DNS/ExtendedResolver;-><init>()V

    sput-object v1, Lorg/xbill/DNS/Lookup;->defaultResolver:Lorg/xbill/DNS/Resolver;
    :try_end_a
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_a} :catch_2a
    .catchall {:try_start_3 .. :try_end_a} :catchall_28

    .line 90
    nop

    .line 91
    :try_start_b
    invoke-static {}, Lorg/xbill/DNS/ResolverConfig;->getCurrentConfig()Lorg/xbill/DNS/ResolverConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xbill/DNS/ResolverConfig;->searchPath()[Lorg/xbill/DNS/Name;

    move-result-object v1

    sput-object v1, Lorg/xbill/DNS/Lookup;->defaultSearchPath:[Lorg/xbill/DNS/Name;

    .line 92
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lorg/xbill/DNS/Lookup;->defaultCaches:Ljava/util/Map;

    .line 93
    invoke-static {}, Lorg/xbill/DNS/ResolverConfig;->getCurrentConfig()Lorg/xbill/DNS/ResolverConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xbill/DNS/ResolverConfig;->ndots()I

    move-result v1

    sput v1, Lorg/xbill/DNS/Lookup;->defaultNdots:I
    :try_end_26
    .catchall {:try_start_b .. :try_end_26} :catchall_28

    .line 94
    monitor-exit v0

    return-void

    .line 85
    :catchall_28
    move-exception v1

    goto :goto_33

    .line 88
    :catch_2a
    move-exception v1

    .line 89
    .local v1, "e":Ljava/net/UnknownHostException;
    :try_start_2b
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed to initialize resolver"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_28

    .line 85
    .end local v1    # "e":Ljava/net/UnknownHostException;
    :goto_33
    monitor-exit v0

    throw v1
.end method

.method private final reset()V
    .registers 4

    .line 184
    const/4 v0, 0x0

    iput v0, p0, Lorg/xbill/DNS/Lookup;->iterations:I

    .line 185
    iput-boolean v0, p0, Lorg/xbill/DNS/Lookup;->foundAlias:Z

    .line 186
    iput-boolean v0, p0, Lorg/xbill/DNS/Lookup;->done:Z

    .line 187
    iput-boolean v0, p0, Lorg/xbill/DNS/Lookup;->doneCurrent:Z

    .line 188
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/xbill/DNS/Lookup;->aliases:Ljava/util/List;

    .line 189
    iput-object v1, p0, Lorg/xbill/DNS/Lookup;->answers:[Lorg/xbill/DNS/Record;

    .line 190
    const/4 v2, -0x1

    iput v2, p0, Lorg/xbill/DNS/Lookup;->result:I

    .line 191
    iput-object v1, p0, Lorg/xbill/DNS/Lookup;->error:Ljava/lang/String;

    .line 192
    iput-boolean v0, p0, Lorg/xbill/DNS/Lookup;->nxdomain:Z

    .line 193
    iput-boolean v0, p0, Lorg/xbill/DNS/Lookup;->badresponse:Z

    .line 194
    iput-object v1, p0, Lorg/xbill/DNS/Lookup;->badresponse_error:Ljava/lang/String;

    .line 195
    iput-boolean v0, p0, Lorg/xbill/DNS/Lookup;->networkerror:Z

    .line 196
    iput-boolean v0, p0, Lorg/xbill/DNS/Lookup;->timedout:Z

    .line 197
    iput-boolean v0, p0, Lorg/xbill/DNS/Lookup;->nametoolong:Z

    .line 198
    iput-boolean v0, p0, Lorg/xbill/DNS/Lookup;->referral:Z

    .line 199
    iget-boolean v0, p0, Lorg/xbill/DNS/Lookup;->temporary_cache:Z

    if-eqz v0, :cond_2a

    .line 200
    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->cache:Lorg/xbill/DNS/Cache;

    invoke-virtual {v0}, Lorg/xbill/DNS/Cache;->clearCache()V

    .line 201
    :cond_2a
    return-void
.end method

.method private resolve(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V
    .registers 6
    .param p1, "current"    # Lorg/xbill/DNS/Name;
    .param p2, "suffix"    # Lorg/xbill/DNS/Name;

    .line 506
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/xbill/DNS/Lookup;->doneCurrent:Z

    .line 507
    const/4 v0, 0x0

    .line 508
    .local v0, "tname":Lorg/xbill/DNS/Name;
    if-nez p2, :cond_8

    .line 509
    move-object v0, p1

    goto :goto_e

    .line 512
    :cond_8
    :try_start_8
    invoke-static {p1, p2}, Lorg/xbill/DNS/Name;->concatenate(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v1
    :try_end_c
    .catch Lorg/xbill/DNS/NameTooLongException; {:try_start_8 .. :try_end_c} :catch_12

    move-object v0, v1

    .line 517
    nop

    .line 519
    :goto_e
    invoke-direct {p0, v0}, Lorg/xbill/DNS/Lookup;->lookup(Lorg/xbill/DNS/Name;)V

    .line 520
    return-void

    .line 514
    :catch_12
    move-exception v1

    .line 515
    .local v1, "e":Lorg/xbill/DNS/NameTooLongException;
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/xbill/DNS/Lookup;->nametoolong:Z

    .line 516
    return-void
.end method

.method public static declared-synchronized setDefaultCache(Lorg/xbill/DNS/Cache;I)V
    .registers 5
    .param p0, "cache"    # Lorg/xbill/DNS/Cache;
    .param p1, "dclass"    # I

    const-class v0, Lorg/xbill/DNS/Lookup;

    monitor-enter v0

    .line 143
    :try_start_3
    invoke-static {p1}, Lorg/xbill/DNS/DClass;->check(I)V

    .line 144
    sget-object v1, Lorg/xbill/DNS/Lookup;->defaultCaches:Ljava/util/Map;

    invoke-static {p1}, Lorg/xbill/DNS/Mnemonic;->toInteger(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_11

    .line 145
    monitor-exit v0

    return-void

    .line 142
    .end local p0    # "cache":Lorg/xbill/DNS/Cache;
    .end local p1    # "dclass":I
    :catchall_11
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setDefaultResolver(Lorg/xbill/DNS/Resolver;)V
    .registers 2
    .param p0, "resolver"    # Lorg/xbill/DNS/Resolver;

    const-class v0, Lorg/xbill/DNS/Lookup;

    monitor-enter v0

    .line 115
    :try_start_3
    sput-object p0, Lorg/xbill/DNS/Lookup;->defaultResolver:Lorg/xbill/DNS/Resolver;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    .line 116
    monitor-exit v0

    return-void

    .line 114
    .end local p0    # "resolver":Lorg/xbill/DNS/Resolver;
    :catchall_7
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setDefaultSearchPath([Ljava/lang/String;)V
    .registers 6
    .param p0, "domains"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    const-class v0, Lorg/xbill/DNS/Lookup;

    monitor-enter v0

    .line 172
    if-nez p0, :cond_c

    .line 173
    const/4 v1, 0x0

    :try_start_6
    sput-object v1, Lorg/xbill/DNS/Lookup;->defaultSearchPath:[Lorg/xbill/DNS/Name;
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_a

    .line 174
    monitor-exit v0

    return-void

    .line 171
    .end local p0    # "domains":[Ljava/lang/String;
    :catchall_a
    move-exception p0

    goto :goto_24

    .line 176
    .restart local p0    # "domains":[Ljava/lang/String;
    :cond_c
    :try_start_c
    array-length v1, p0

    new-array v1, v1, [Lorg/xbill/DNS/Name;

    .line 177
    .local v1, "newdomains":[Lorg/xbill/DNS/Name;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    array-length v3, p0

    if-ge v2, v3, :cond_20

    .line 178
    aget-object v3, p0, v2

    sget-object v4, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-static {v3, v4}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v3

    aput-object v3, v1, v2

    .line 177
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 179
    .end local v2    # "i":I
    :cond_20
    sput-object v1, Lorg/xbill/DNS/Lookup;->defaultSearchPath:[Lorg/xbill/DNS/Name;
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_a

    .line 180
    monitor-exit v0

    return-void

    .line 171
    .end local v1    # "newdomains":[Lorg/xbill/DNS/Name;
    .end local p0    # "domains":[Ljava/lang/String;
    :goto_24
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setDefaultSearchPath([Lorg/xbill/DNS/Name;)V
    .registers 2
    .param p0, "domains"    # [Lorg/xbill/DNS/Name;

    const-class v0, Lorg/xbill/DNS/Lookup;

    monitor-enter v0

    .line 162
    :try_start_3
    sput-object p0, Lorg/xbill/DNS/Lookup;->defaultSearchPath:[Lorg/xbill/DNS/Name;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    .line 163
    monitor-exit v0

    return-void

    .line 161
    .end local p0    # "domains":[Lorg/xbill/DNS/Name;
    :catchall_7
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public getAliases()[Lorg/xbill/DNS/Name;
    .registers 3

    .line 608
    invoke-direct {p0}, Lorg/xbill/DNS/Lookup;->checkDone()V

    .line 609
    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->aliases:Ljava/util/List;

    if-nez v0, :cond_a

    .line 610
    sget-object v0, Lorg/xbill/DNS/Lookup;->noAliases:[Lorg/xbill/DNS/Name;

    return-object v0

    .line 611
    :cond_a
    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->aliases:Ljava/util/List;

    iget-object v1, p0, Lorg/xbill/DNS/Lookup;->aliases:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/xbill/DNS/Name;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/xbill/DNS/Name;

    return-object v0
.end method

.method public getAnswers()[Lorg/xbill/DNS/Record;
    .registers 2

    .line 595
    invoke-direct {p0}, Lorg/xbill/DNS/Lookup;->checkDone()V

    .line 596
    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->answers:[Lorg/xbill/DNS/Record;

    return-object v0
.end method

.method public getErrorString()Ljava/lang/String;
    .registers 3

    .line 634
    invoke-direct {p0}, Lorg/xbill/DNS/Lookup;->checkDone()V

    .line 635
    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->error:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 636
    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->error:Ljava/lang/String;

    return-object v0

    .line 637
    :cond_a
    iget v0, p0, Lorg/xbill/DNS/Lookup;->result:I

    packed-switch v0, :pswitch_data_26

    .line 644
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unknown result"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 642
    :pswitch_17
    const-string v0, "type not found"

    return-object v0

    .line 641
    :pswitch_1a
    const-string v0, "host not found"

    return-object v0

    .line 640
    :pswitch_1d
    const-string v0, "try again"

    return-object v0

    .line 639
    :pswitch_20
    const-string v0, "unrecoverable error"

    return-object v0

    .line 638
    :pswitch_23
    const-string v0, "successful"

    return-object v0

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
    .end packed-switch
.end method

.method public getResult()I
    .registers 2

    .line 622
    invoke-direct {p0}, Lorg/xbill/DNS/Lookup;->checkDone()V

    .line 623
    iget v0, p0, Lorg/xbill/DNS/Lookup;->result:I

    return v0
.end method

.method public run()[Lorg/xbill/DNS/Record;
    .registers 4

    .line 528
    iget-boolean v0, p0, Lorg/xbill/DNS/Lookup;->done:Z

    if-eqz v0, :cond_7

    .line 529
    invoke-direct {p0}, Lorg/xbill/DNS/Lookup;->reset()V

    .line 530
    :cond_7
    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->name:Lorg/xbill/DNS/Name;

    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 531
    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->name:Lorg/xbill/DNS/Name;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/xbill/DNS/Lookup;->resolve(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V

    goto :goto_58

    .line 532
    :cond_16
    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->searchPath:[Lorg/xbill/DNS/Name;

    if-nez v0, :cond_22

    .line 533
    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->name:Lorg/xbill/DNS/Name;

    sget-object v1, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-direct {p0, v0, v1}, Lorg/xbill/DNS/Lookup;->resolve(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V

    goto :goto_58

    .line 535
    :cond_22
    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->name:Lorg/xbill/DNS/Name;

    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v0

    sget v1, Lorg/xbill/DNS/Lookup;->defaultNdots:I

    if-le v0, v1, :cond_33

    .line 536
    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->name:Lorg/xbill/DNS/Name;

    sget-object v1, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-direct {p0, v0, v1}, Lorg/xbill/DNS/Lookup;->resolve(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V

    .line 537
    :cond_33
    iget-boolean v0, p0, Lorg/xbill/DNS/Lookup;->done:Z

    if-eqz v0, :cond_3a

    .line 538
    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->answers:[Lorg/xbill/DNS/Record;

    return-object v0

    .line 540
    :cond_3a
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3b
    iget-object v1, p0, Lorg/xbill/DNS/Lookup;->searchPath:[Lorg/xbill/DNS/Name;

    array-length v1, v1

    if-ge v0, v1, :cond_58

    .line 541
    iget-object v1, p0, Lorg/xbill/DNS/Lookup;->name:Lorg/xbill/DNS/Name;

    iget-object v2, p0, Lorg/xbill/DNS/Lookup;->searchPath:[Lorg/xbill/DNS/Name;

    aget-object v2, v2, v0

    invoke-direct {p0, v1, v2}, Lorg/xbill/DNS/Lookup;->resolve(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V

    .line 542
    iget-boolean v1, p0, Lorg/xbill/DNS/Lookup;->done:Z

    if-eqz v1, :cond_50

    .line 543
    iget-object v1, p0, Lorg/xbill/DNS/Lookup;->answers:[Lorg/xbill/DNS/Record;

    return-object v1

    .line 544
    :cond_50
    iget-boolean v1, p0, Lorg/xbill/DNS/Lookup;->foundAlias:Z

    if-eqz v1, :cond_55

    .line 545
    goto :goto_58

    .line 540
    :cond_55
    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    .line 548
    .end local v0    # "i":I
    :cond_58
    :goto_58
    iget-boolean v0, p0, Lorg/xbill/DNS/Lookup;->done:Z

    if-nez v0, :cond_a8

    .line 549
    iget-boolean v0, p0, Lorg/xbill/DNS/Lookup;->badresponse:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_6b

    .line 550
    iput v1, p0, Lorg/xbill/DNS/Lookup;->result:I

    .line 551
    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->badresponse_error:Ljava/lang/String;

    iput-object v0, p0, Lorg/xbill/DNS/Lookup;->error:Ljava/lang/String;

    .line 552
    iput-boolean v2, p0, Lorg/xbill/DNS/Lookup;->done:Z

    goto :goto_a8

    .line 553
    :cond_6b
    iget-boolean v0, p0, Lorg/xbill/DNS/Lookup;->timedout:Z

    if-eqz v0, :cond_78

    .line 554
    iput v1, p0, Lorg/xbill/DNS/Lookup;->result:I

    .line 555
    const-string v0, "timed out"

    iput-object v0, p0, Lorg/xbill/DNS/Lookup;->error:Ljava/lang/String;

    .line 556
    iput-boolean v2, p0, Lorg/xbill/DNS/Lookup;->done:Z

    goto :goto_a8

    .line 557
    :cond_78
    iget-boolean v0, p0, Lorg/xbill/DNS/Lookup;->networkerror:Z

    if-eqz v0, :cond_85

    .line 558
    iput v1, p0, Lorg/xbill/DNS/Lookup;->result:I

    .line 559
    const-string v0, "network error"

    iput-object v0, p0, Lorg/xbill/DNS/Lookup;->error:Ljava/lang/String;

    .line 560
    iput-boolean v2, p0, Lorg/xbill/DNS/Lookup;->done:Z

    goto :goto_a8

    .line 561
    :cond_85
    iget-boolean v0, p0, Lorg/xbill/DNS/Lookup;->nxdomain:Z

    if-eqz v0, :cond_8f

    .line 562
    const/4 v0, 0x3

    iput v0, p0, Lorg/xbill/DNS/Lookup;->result:I

    .line 563
    iput-boolean v2, p0, Lorg/xbill/DNS/Lookup;->done:Z

    goto :goto_a8

    .line 564
    :cond_8f
    iget-boolean v0, p0, Lorg/xbill/DNS/Lookup;->referral:Z

    if-eqz v0, :cond_9c

    .line 565
    iput v2, p0, Lorg/xbill/DNS/Lookup;->result:I

    .line 566
    const-string v0, "referral"

    iput-object v0, p0, Lorg/xbill/DNS/Lookup;->error:Ljava/lang/String;

    .line 567
    iput-boolean v2, p0, Lorg/xbill/DNS/Lookup;->done:Z

    goto :goto_a8

    .line 568
    :cond_9c
    iget-boolean v0, p0, Lorg/xbill/DNS/Lookup;->nametoolong:Z

    if-eqz v0, :cond_a8

    .line 569
    iput v2, p0, Lorg/xbill/DNS/Lookup;->result:I

    .line 570
    const-string v0, "name too long"

    iput-object v0, p0, Lorg/xbill/DNS/Lookup;->error:Ljava/lang/String;

    .line 571
    iput-boolean v2, p0, Lorg/xbill/DNS/Lookup;->done:Z

    .line 574
    :cond_a8
    :goto_a8
    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->answers:[Lorg/xbill/DNS/Record;

    return-object v0
.end method

.method public setCache(Lorg/xbill/DNS/Cache;)V
    .registers 4
    .param p1, "cache"    # Lorg/xbill/DNS/Cache;

    .line 349
    if-nez p1, :cond_f

    .line 350
    new-instance v0, Lorg/xbill/DNS/Cache;

    iget v1, p0, Lorg/xbill/DNS/Lookup;->dclass:I

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Cache;-><init>(I)V

    iput-object v0, p0, Lorg/xbill/DNS/Lookup;->cache:Lorg/xbill/DNS/Cache;

    .line 351
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/xbill/DNS/Lookup;->temporary_cache:Z

    goto :goto_14

    .line 353
    :cond_f
    iput-object p1, p0, Lorg/xbill/DNS/Lookup;->cache:Lorg/xbill/DNS/Cache;

    .line 354
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/xbill/DNS/Lookup;->temporary_cache:Z

    .line 356
    :goto_14
    return-void
.end method

.method public setCredibility(I)V
    .registers 2
    .param p1, "credibility"    # I

    .line 381
    iput p1, p0, Lorg/xbill/DNS/Lookup;->credibility:I

    .line 382
    return-void
.end method

.method public setNdots(I)V
    .registers 5
    .param p1, "ndots"    # I

    .line 368
    if-ltz p1, :cond_5

    .line 371
    sput p1, Lorg/xbill/DNS/Lookup;->defaultNdots:I

    .line 372
    return-void

    .line 369
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Illegal ndots value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setResolver(Lorg/xbill/DNS/Resolver;)V
    .registers 2
    .param p1, "resolver"    # Lorg/xbill/DNS/Resolver;

    .line 310
    iput-object p1, p0, Lorg/xbill/DNS/Lookup;->resolver:Lorg/xbill/DNS/Resolver;

    .line 311
    return-void
.end method

.method public setSearchPath([Ljava/lang/String;)V
    .registers 6
    .param p1, "domains"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 331
    if-nez p1, :cond_6

    .line 332
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xbill/DNS/Lookup;->searchPath:[Lorg/xbill/DNS/Name;

    .line 333
    return-void

    .line 335
    :cond_6
    array-length v0, p1

    new-array v0, v0, [Lorg/xbill/DNS/Name;

    .line 336
    .local v0, "newdomains":[Lorg/xbill/DNS/Name;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    array-length v2, p1

    if-ge v1, v2, :cond_1a

    .line 337
    aget-object v2, p1, v1

    sget-object v3, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-static {v2, v3}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v2

    aput-object v2, v0, v1

    .line 336
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 338
    .end local v1    # "i":I
    :cond_1a
    iput-object v0, p0, Lorg/xbill/DNS/Lookup;->searchPath:[Lorg/xbill/DNS/Name;

    .line 339
    return-void
.end method

.method public setSearchPath([Lorg/xbill/DNS/Name;)V
    .registers 2
    .param p1, "domains"    # [Lorg/xbill/DNS/Name;

    .line 320
    iput-object p1, p0, Lorg/xbill/DNS/Lookup;->searchPath:[Lorg/xbill/DNS/Name;

    .line 321
    return-void
.end method
