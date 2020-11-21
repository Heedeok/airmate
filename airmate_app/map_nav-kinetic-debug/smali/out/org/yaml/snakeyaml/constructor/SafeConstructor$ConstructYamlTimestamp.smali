.class public Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlTimestamp;
.super Lorg/yaml/snakeyaml/constructor/AbstractConstruct;
.source "SafeConstructor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/yaml/snakeyaml/constructor/SafeConstructor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConstructYamlTimestamp"
.end annotation


# instance fields
.field private calendar:Ljava/util/Calendar;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 279
    invoke-direct {p0}, Lorg/yaml/snakeyaml/constructor/AbstractConstruct;-><init>()V

    return-void
.end method


# virtual methods
.method public construct(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;
    .registers 25
    .param p1, "node"    # Lorg/yaml/snakeyaml/nodes/Node;

    .line 287
    move-object/from16 v0, p0

    move-object/from16 v2, p1

    check-cast v2, Lorg/yaml/snakeyaml/nodes/ScalarNode;

    .line 288
    .local v2, "scalar":Lorg/yaml/snakeyaml/nodes/ScalarNode;
    invoke-virtual {v2}, Lorg/yaml/snakeyaml/nodes/ScalarNode;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 289
    .local v3, "nodeValue":Ljava/lang/String;
    invoke-static {}, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->access$200()Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 290
    .local v4, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    const/4 v6, 0x3

    const/4 v7, 0x5

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eqz v5, :cond_5c

    .line 291
    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 292
    .local v5, "year_s":Ljava/lang/String;
    invoke-virtual {v4, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    .line 293
    .local v10, "month_s":Ljava/lang/String;
    invoke-virtual {v4, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 294
    .local v6, "day_s":Ljava/lang/String;
    const-string v11, "UTC"

    invoke-static {v11}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v11

    iput-object v11, v0, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlTimestamp;->calendar:Ljava/util/Calendar;

    .line 295
    iget-object v11, v0, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlTimestamp;->calendar:Ljava/util/Calendar;

    invoke-virtual {v11}, Ljava/util/Calendar;->clear()V

    .line 296
    iget-object v11, v0, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlTimestamp;->calendar:Ljava/util/Calendar;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v9, v12}, Ljava/util/Calendar;->set(II)V

    .line 298
    iget-object v11, v0, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlTimestamp;->calendar:Ljava/util/Calendar;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    sub-int/2addr v12, v9

    invoke-virtual {v11, v8, v12}, Ljava/util/Calendar;->set(II)V

    .line 299
    iget-object v8, v0, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlTimestamp;->calendar:Ljava/util/Calendar;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v7, v9}, Ljava/util/Calendar;->set(II)V

    .line 300
    iget-object v7, v0, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlTimestamp;->calendar:Ljava/util/Calendar;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    return-object v7

    .line 302
    .end local v5    # "year_s":Ljava/lang/String;
    .end local v6    # "day_s":Ljava/lang/String;
    .end local v10    # "month_s":Ljava/lang/String;
    :cond_5c
    invoke-static {}, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->access$300()Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 303
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_15d

    .line 306
    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 307
    .restart local v5    # "year_s":Ljava/lang/String;
    invoke-virtual {v4, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    .line 308
    .restart local v10    # "month_s":Ljava/lang/String;
    invoke-virtual {v4, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 309
    .restart local v6    # "day_s":Ljava/lang/String;
    const/4 v11, 0x4

    invoke-virtual {v4, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    .line 310
    .local v11, "hour_s":Ljava/lang/String;
    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    .line 312
    .local v12, "min_s":Ljava/lang/String;
    const/4 v13, 0x6

    invoke-virtual {v4, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    .line 313
    .local v13, "seconds":Ljava/lang/String;
    const/4 v14, 0x7

    invoke-virtual {v4, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    .line 314
    .local v14, "millis":Ljava/lang/String;
    if-eqz v14, :cond_9f

    .line 315
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "."

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 317
    :cond_9f
    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v16

    .line 318
    .local v16, "fractions":D
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->floor(D)D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v7, v8

    .line 319
    .local v7, "sec_s":I
    int-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v8, v16, v8

    const-wide v18, 0x408f400000000000L    # 1000.0

    mul-double v8, v8, v18

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v8, v8

    .line 321
    .local v8, "usec":I
    const/16 v9, 0x8

    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    .line 322
    .local v9, "timezoneh_s":Ljava/lang/String;
    const/16 v15, 0x9

    invoke-virtual {v4, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    .line 324
    .local v15, "timezonem_s":Ljava/lang/String;
    if-eqz v9, :cond_101

    .line 325
    if-eqz v15, :cond_e2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v2

    .end local v2    # "scalar":Lorg/yaml/snakeyaml/nodes/ScalarNode;
    .local v20, "scalar":Lorg/yaml/snakeyaml/nodes/ScalarNode;
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_e6

    .end local v20    # "scalar":Lorg/yaml/snakeyaml/nodes/ScalarNode;
    .restart local v2    # "scalar":Lorg/yaml/snakeyaml/nodes/ScalarNode;
    :cond_e2
    move-object/from16 v20, v2

    .end local v2    # "scalar":Lorg/yaml/snakeyaml/nodes/ScalarNode;
    .restart local v20    # "scalar":Lorg/yaml/snakeyaml/nodes/ScalarNode;
    const-string v1, "00"

    .line 326
    .local v1, "time":Ljava/lang/String;
    :goto_e6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v4

    .end local v4    # "match":Ljava/util/regex/Matcher;
    .local v21, "match":Ljava/util/regex/Matcher;
    const-string v4, "GMT"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 327
    .local v1, "timeZone":Ljava/util/TimeZone;
    goto :goto_10b

    .line 329
    .end local v1    # "timeZone":Ljava/util/TimeZone;
    .end local v20    # "scalar":Lorg/yaml/snakeyaml/nodes/ScalarNode;
    .end local v21    # "match":Ljava/util/regex/Matcher;
    .restart local v2    # "scalar":Lorg/yaml/snakeyaml/nodes/ScalarNode;
    .restart local v4    # "match":Ljava/util/regex/Matcher;
    :cond_101
    move-object/from16 v20, v2

    move-object/from16 v21, v4

    .end local v2    # "scalar":Lorg/yaml/snakeyaml/nodes/ScalarNode;
    .end local v4    # "match":Ljava/util/regex/Matcher;
    .restart local v20    # "scalar":Lorg/yaml/snakeyaml/nodes/ScalarNode;
    .restart local v21    # "match":Ljava/util/regex/Matcher;
    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 331
    .restart local v1    # "timeZone":Ljava/util/TimeZone;
    :goto_10b
    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, v0, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlTimestamp;->calendar:Ljava/util/Calendar;

    .line 332
    iget-object v2, v0, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlTimestamp;->calendar:Ljava/util/Calendar;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v22, v1

    const/4 v1, 0x1

    .end local v1    # "timeZone":Ljava/util/TimeZone;
    .local v22, "timeZone":Ljava/util/TimeZone;
    invoke-virtual {v2, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 334
    iget-object v2, v0, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlTimestamp;->calendar:Ljava/util/Calendar;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sub-int/2addr v4, v1

    const/4 v1, 0x2

    invoke-virtual {v2, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 335
    iget-object v1, v0, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlTimestamp;->calendar:Ljava/util/Calendar;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x5

    invoke-virtual {v1, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 336
    iget-object v1, v0, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlTimestamp;->calendar:Ljava/util/Calendar;

    const/16 v2, 0xb

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v2, v4}, Ljava/util/Calendar;->set(II)V

    .line 337
    iget-object v1, v0, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlTimestamp;->calendar:Ljava/util/Calendar;

    const/16 v2, 0xc

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v2, v4}, Ljava/util/Calendar;->set(II)V

    .line 338
    iget-object v1, v0, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlTimestamp;->calendar:Ljava/util/Calendar;

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v7}, Ljava/util/Calendar;->set(II)V

    .line 339
    iget-object v1, v0, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlTimestamp;->calendar:Ljava/util/Calendar;

    const/16 v2, 0xe

    invoke-virtual {v1, v2, v8}, Ljava/util/Calendar;->set(II)V

    .line 340
    iget-object v1, v0, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlTimestamp;->calendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1

    .line 304
    .end local v5    # "year_s":Ljava/lang/String;
    .end local v6    # "day_s":Ljava/lang/String;
    .end local v7    # "sec_s":I
    .end local v8    # "usec":I
    .end local v9    # "timezoneh_s":Ljava/lang/String;
    .end local v10    # "month_s":Ljava/lang/String;
    .end local v11    # "hour_s":Ljava/lang/String;
    .end local v12    # "min_s":Ljava/lang/String;
    .end local v13    # "seconds":Ljava/lang/String;
    .end local v14    # "millis":Ljava/lang/String;
    .end local v15    # "timezonem_s":Ljava/lang/String;
    .end local v16    # "fractions":D
    .end local v20    # "scalar":Lorg/yaml/snakeyaml/nodes/ScalarNode;
    .end local v21    # "match":Ljava/util/regex/Matcher;
    .end local v22    # "timeZone":Ljava/util/TimeZone;
    .restart local v2    # "scalar":Lorg/yaml/snakeyaml/nodes/ScalarNode;
    .restart local v4    # "match":Ljava/util/regex/Matcher;
    :cond_15d
    move-object/from16 v20, v2

    move-object/from16 v21, v4

    .end local v2    # "scalar":Lorg/yaml/snakeyaml/nodes/ScalarNode;
    .end local v4    # "match":Ljava/util/regex/Matcher;
    .restart local v20    # "scalar":Lorg/yaml/snakeyaml/nodes/ScalarNode;
    .restart local v21    # "match":Ljava/util/regex/Matcher;
    new-instance v1, Lorg/yaml/snakeyaml/error/YAMLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected timestamp: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getCalendar()Ljava/util/Calendar;
    .registers 2

    .line 283
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlTimestamp;->calendar:Ljava/util/Calendar;

    return-object v0
.end method
