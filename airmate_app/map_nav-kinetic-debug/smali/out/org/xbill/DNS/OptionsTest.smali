.class public Lorg/xbill/DNS/OptionsTest;
.super Ljunit/framework/TestCase;
.source "OptionsTest.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljunit/framework/TestCase;-><init>()V

    return-void
.end method


# virtual methods
.method public setUp()V
    .registers 1

    .line 44
    invoke-static {}, Lorg/xbill/DNS/Options;->clear()V

    .line 45
    return-void
.end method

.method public test_check()V
    .registers 2

    .line 76
    const-string v0, "No Options yet"

    invoke-static {v0}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lorg/xbill/DNS/OptionsTest;->assertFalse(Z)V

    .line 78
    const-string v0, "First Option"

    invoke-static {v0}, Lorg/xbill/DNS/Options;->set(Ljava/lang/String;)V

    .line 79
    const-string v0, "Not a valid option name"

    invoke-static {v0}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lorg/xbill/DNS/OptionsTest;->assertFalse(Z)V

    .line 80
    const-string v0, "First Option"

    invoke-static {v0}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lorg/xbill/DNS/OptionsTest;->assertTrue(Z)V

    .line 81
    const-string v0, "FIRST option"

    invoke-static {v0}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lorg/xbill/DNS/OptionsTest;->assertTrue(Z)V

    .line 82
    return-void
.end method

.method public test_intValue()V
    .registers 4

    .line 115
    const-string v0, "Table is Null"

    invoke-static {v0}, Lorg/xbill/DNS/Options;->intValue(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    invoke-static {v1, v0}, Lorg/xbill/DNS/OptionsTest;->assertEquals(II)V

    .line 117
    const-string v0, "A Boolean Option"

    invoke-static {v0}, Lorg/xbill/DNS/Options;->set(Ljava/lang/String;)V

    .line 118
    const-string v0, "An Int Option"

    const-string v2, "13"

    invoke-static {v0, v2}, Lorg/xbill/DNS/Options;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v0, "Not An Int Option"

    const-string v2, "NotAnInt"

    invoke-static {v0, v2}, Lorg/xbill/DNS/Options;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v0, "A Negative Int Value"

    const-string v2, "-1000"

    invoke-static {v0, v2}, Lorg/xbill/DNS/Options;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v0, "A Boolean Option"

    invoke-static {v0}, Lorg/xbill/DNS/Options;->intValue(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v0}, Lorg/xbill/DNS/OptionsTest;->assertEquals(II)V

    .line 123
    const-string v0, "Not an Option NAME"

    invoke-static {v0}, Lorg/xbill/DNS/Options;->intValue(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v0}, Lorg/xbill/DNS/OptionsTest;->assertEquals(II)V

    .line 124
    const-string v0, "an int option"

    invoke-static {v0}, Lorg/xbill/DNS/Options;->intValue(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0xd

    invoke-static {v2, v0}, Lorg/xbill/DNS/OptionsTest;->assertEquals(II)V

    .line 125
    const-string v0, "NOT an INT option"

    invoke-static {v0}, Lorg/xbill/DNS/Options;->intValue(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v0}, Lorg/xbill/DNS/OptionsTest;->assertEquals(II)V

    .line 126
    const-string v0, "A negative int Value"

    invoke-static {v0}, Lorg/xbill/DNS/Options;->intValue(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v0}, Lorg/xbill/DNS/OptionsTest;->assertEquals(II)V

    .line 127
    return-void
.end method

.method public test_set_1arg()V
    .registers 3

    .line 49
    const-string v0, "Option1"

    invoke-static {v0}, Lorg/xbill/DNS/Options;->set(Ljava/lang/String;)V

    .line 50
    const-string v0, "true"

    const-string v1, "option1"

    invoke-static {v1}, Lorg/xbill/DNS/Options;->value(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/xbill/DNS/OptionsTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v0, "OPTION2"

    invoke-static {v0}, Lorg/xbill/DNS/Options;->set(Ljava/lang/String;)V

    .line 53
    const-string v0, "true"

    const-string v1, "option1"

    invoke-static {v1}, Lorg/xbill/DNS/Options;->value(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/xbill/DNS/OptionsTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v0, "true"

    const-string v1, "OpTIOn2"

    invoke-static {v1}, Lorg/xbill/DNS/Options;->value(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/xbill/DNS/OptionsTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v0, "option2"

    invoke-static {v0}, Lorg/xbill/DNS/Options;->set(Ljava/lang/String;)V

    .line 57
    const-string v0, "true"

    const-string v1, "option2"

    invoke-static {v1}, Lorg/xbill/DNS/Options;->value(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/xbill/DNS/OptionsTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public test_set_2arg()V
    .registers 3

    .line 62
    const-string v0, "OPTION1"

    const-string v1, "Value1"

    invoke-static {v0, v1}, Lorg/xbill/DNS/Options;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v0, "value1"

    const-string v1, "Option1"

    invoke-static {v1}, Lorg/xbill/DNS/Options;->value(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/xbill/DNS/OptionsTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v0, "option2"

    const-string v1, "value2"

    invoke-static {v0, v1}, Lorg/xbill/DNS/Options;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v0, "value1"

    const-string v1, "Option1"

    invoke-static {v1}, Lorg/xbill/DNS/Options;->value(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/xbill/DNS/OptionsTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v0, "value2"

    const-string v1, "OPTION2"

    invoke-static {v1}, Lorg/xbill/DNS/Options;->value(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/xbill/DNS/OptionsTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v0, "OPTION2"

    const-string v1, "value2b"

    invoke-static {v0, v1}, Lorg/xbill/DNS/Options;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v0, "value1"

    const-string v1, "Option1"

    invoke-static {v1}, Lorg/xbill/DNS/Options;->value(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/xbill/DNS/OptionsTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v0, "value2b"

    const-string v1, "option2"

    invoke-static {v1}, Lorg/xbill/DNS/Options;->value(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/xbill/DNS/OptionsTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public test_systemProperty()V
    .registers 4

    .line 131
    const-string v0, "dnsjava.options"

    const-string v1, "booleanOption,valuedOption1=10,valuedOption2=NotAnInteger"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 133
    invoke-static {}, Lorg/xbill/DNS/Options;->refresh()V

    .line 135
    const-string v0, "booleanOPTION"

    invoke-static {v0}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lorg/xbill/DNS/OptionsTest;->assertTrue(Z)V

    .line 136
    const-string v0, "booleanOption"

    invoke-static {v0}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lorg/xbill/DNS/OptionsTest;->assertTrue(Z)V

    .line 137
    const-string v0, "valuedOption1"

    invoke-static {v0}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lorg/xbill/DNS/OptionsTest;->assertTrue(Z)V

    .line 138
    const-string v0, "ValuedOption2"

    invoke-static {v0}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lorg/xbill/DNS/OptionsTest;->assertTrue(Z)V

    .line 140
    const-string v0, "true"

    const-string v1, "booleanOption"

    invoke-static {v1}, Lorg/xbill/DNS/Options;->value(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/xbill/DNS/OptionsTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v0, "BOOLEANOPTION"

    invoke-static {v0}, Lorg/xbill/DNS/Options;->intValue(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    invoke-static {v1, v0}, Lorg/xbill/DNS/OptionsTest;->assertEquals(II)V

    .line 142
    const-string v0, "10"

    const-string v2, "valuedOption1"

    invoke-static {v2}, Lorg/xbill/DNS/Options;->value(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/xbill/DNS/OptionsTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v0, "valuedOption1"

    invoke-static {v0}, Lorg/xbill/DNS/Options;->intValue(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0xa

    invoke-static {v2, v0}, Lorg/xbill/DNS/OptionsTest;->assertEquals(II)V

    .line 144
    const-string v0, "notaninteger"

    const-string v2, "VALUEDOPTION2"

    invoke-static {v2}, Lorg/xbill/DNS/Options;->value(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/xbill/DNS/OptionsTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v0, "valuedOption2"

    invoke-static {v0}, Lorg/xbill/DNS/Options;->intValue(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v0}, Lorg/xbill/DNS/OptionsTest;->assertEquals(II)V

    .line 146
    return-void
.end method

.method public test_unset()V
    .registers 2

    .line 87
    const-string v0, "Not an option Name"

    invoke-static {v0}, Lorg/xbill/DNS/Options;->unset(Ljava/lang/String;)V

    .line 89
    const-string v0, "Temporary Option"

    invoke-static {v0}, Lorg/xbill/DNS/Options;->set(Ljava/lang/String;)V

    .line 90
    const-string v0, "Temporary Option"

    invoke-static {v0}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lorg/xbill/DNS/OptionsTest;->assertTrue(Z)V

    .line 91
    const-string v0, "Temporary Option"

    invoke-static {v0}, Lorg/xbill/DNS/Options;->unset(Ljava/lang/String;)V

    .line 92
    const-string v0, "Temporary Option"

    invoke-static {v0}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lorg/xbill/DNS/OptionsTest;->assertFalse(Z)V

    .line 94
    const-string v0, "Temporary Option"

    invoke-static {v0}, Lorg/xbill/DNS/Options;->set(Ljava/lang/String;)V

    .line 95
    const-string v0, "Temporary Option"

    invoke-static {v0}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lorg/xbill/DNS/OptionsTest;->assertTrue(Z)V

    .line 96
    const-string v0, "temporary option"

    invoke-static {v0}, Lorg/xbill/DNS/Options;->unset(Ljava/lang/String;)V

    .line 97
    const-string v0, "Temporary Option"

    invoke-static {v0}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lorg/xbill/DNS/OptionsTest;->assertFalse(Z)V

    .line 100
    const-string v0, "Still Not an Option Name"

    invoke-static {v0}, Lorg/xbill/DNS/Options;->unset(Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public test_value()V
    .registers 3

    .line 105
    const-string v0, "Table is Null"

    invoke-static {v0}, Lorg/xbill/DNS/Options;->value(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/xbill/DNS/OptionsTest;->assertNull(Ljava/lang/Object;)V

    .line 107
    const-string v0, "Testing Option"

    invoke-static {v0}, Lorg/xbill/DNS/Options;->set(Ljava/lang/String;)V

    .line 108
    const-string v0, "Not an Option Name"

    invoke-static {v0}, Lorg/xbill/DNS/Options;->value(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/xbill/DNS/OptionsTest;->assertNull(Ljava/lang/Object;)V

    .line 110
    const-string v0, "true"

    const-string v1, "Testing OPTION"

    invoke-static {v1}, Lorg/xbill/DNS/Options;->value(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/xbill/DNS/OptionsTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return-void
.end method
