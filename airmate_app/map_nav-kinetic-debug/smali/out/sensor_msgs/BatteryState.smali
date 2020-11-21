.class public interface abstract Lsensor_msgs/BatteryState;
.super Ljava/lang/Object;
.source "BatteryState.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final POWER_SUPPLY_HEALTH_COLD:B = 0x6t

.field public static final POWER_SUPPLY_HEALTH_DEAD:B = 0x3t

.field public static final POWER_SUPPLY_HEALTH_GOOD:B = 0x1t

.field public static final POWER_SUPPLY_HEALTH_OVERHEAT:B = 0x2t

.field public static final POWER_SUPPLY_HEALTH_OVERVOLTAGE:B = 0x4t

.field public static final POWER_SUPPLY_HEALTH_SAFETY_TIMER_EXPIRE:B = 0x8t

.field public static final POWER_SUPPLY_HEALTH_UNKNOWN:B = 0x0t

.field public static final POWER_SUPPLY_HEALTH_UNSPEC_FAILURE:B = 0x5t

.field public static final POWER_SUPPLY_HEALTH_WATCHDOG_TIMER_EXPIRE:B = 0x7t

.field public static final POWER_SUPPLY_STATUS_CHARGING:B = 0x1t

.field public static final POWER_SUPPLY_STATUS_DISCHARGING:B = 0x2t

.field public static final POWER_SUPPLY_STATUS_FULL:B = 0x4t

.field public static final POWER_SUPPLY_STATUS_NOT_CHARGING:B = 0x3t

.field public static final POWER_SUPPLY_STATUS_UNKNOWN:B = 0x0t

.field public static final POWER_SUPPLY_TECHNOLOGY_LIFE:B = 0x4t

.field public static final POWER_SUPPLY_TECHNOLOGY_LIMN:B = 0x6t

.field public static final POWER_SUPPLY_TECHNOLOGY_LION:B = 0x2t

.field public static final POWER_SUPPLY_TECHNOLOGY_LIPO:B = 0x3t

.field public static final POWER_SUPPLY_TECHNOLOGY_NICD:B = 0x5t

.field public static final POWER_SUPPLY_TECHNOLOGY_NIMH:B = 0x1t

.field public static final POWER_SUPPLY_TECHNOLOGY_UNKNOWN:B = 0x0t

.field public static final _DEFINITION:Ljava/lang/String; = "\n# Constants are chosen to match the enums in the linux kernel\n# defined in include/linux/power_supply.h as of version 3.7\n# The one difference is for style reasons the constants are\n# all uppercase not mixed case.\n\n# Power supply status constants\nuint8 POWER_SUPPLY_STATUS_UNKNOWN = 0\nuint8 POWER_SUPPLY_STATUS_CHARGING = 1\nuint8 POWER_SUPPLY_STATUS_DISCHARGING = 2\nuint8 POWER_SUPPLY_STATUS_NOT_CHARGING = 3\nuint8 POWER_SUPPLY_STATUS_FULL = 4\n\n# Power supply health constants\nuint8 POWER_SUPPLY_HEALTH_UNKNOWN = 0\nuint8 POWER_SUPPLY_HEALTH_GOOD = 1\nuint8 POWER_SUPPLY_HEALTH_OVERHEAT = 2\nuint8 POWER_SUPPLY_HEALTH_DEAD = 3\nuint8 POWER_SUPPLY_HEALTH_OVERVOLTAGE = 4\nuint8 POWER_SUPPLY_HEALTH_UNSPEC_FAILURE = 5\nuint8 POWER_SUPPLY_HEALTH_COLD = 6\nuint8 POWER_SUPPLY_HEALTH_WATCHDOG_TIMER_EXPIRE = 7\nuint8 POWER_SUPPLY_HEALTH_SAFETY_TIMER_EXPIRE = 8\n\n# Power supply technology (chemistry) constants\nuint8 POWER_SUPPLY_TECHNOLOGY_UNKNOWN = 0\nuint8 POWER_SUPPLY_TECHNOLOGY_NIMH = 1\nuint8 POWER_SUPPLY_TECHNOLOGY_LION = 2\nuint8 POWER_SUPPLY_TECHNOLOGY_LIPO = 3\nuint8 POWER_SUPPLY_TECHNOLOGY_LIFE = 4\nuint8 POWER_SUPPLY_TECHNOLOGY_NICD = 5\nuint8 POWER_SUPPLY_TECHNOLOGY_LIMN = 6\n\nHeader  header\nfloat32 voltage          # Voltage in Volts (Mandatory)\nfloat32 current          # Negative when discharging (A)  (If unmeasured NaN)\nfloat32 charge           # Current charge in Ah  (If unmeasured NaN)\nfloat32 capacity         # Capacity in Ah (last full capacity)  (If unmeasured NaN)\nfloat32 design_capacity  # Capacity in Ah (design capacity)  (If unmeasured NaN)\nfloat32 percentage       # Charge percentage on 0 to 1 range  (If unmeasured NaN)\nuint8   power_supply_status     # The charging status as reported. Values defined above\nuint8   power_supply_health     # The battery health metric. Values defined above\nuint8   power_supply_technology # The battery chemistry. Values defined above\nbool    present          # True if the battery is present\n\nfloat32[] cell_voltage   # An array of individual cell voltages for each cell in the pack\n                         # If individual voltages unknown but number of cells known set each to NaN\nstring location          # The location into which the battery is inserted. (slot number or plug)\nstring serial_number     # The best approximation of the battery serial number\n"

.field public static final _TYPE:Ljava/lang/String; = "sensor_msgs/BatteryState"


# virtual methods
.method public abstract getCapacity()F
.end method

.method public abstract getCellVoltage()[F
.end method

.method public abstract getCharge()F
.end method

.method public abstract getCurrent()F
.end method

.method public abstract getDesignCapacity()F
.end method

.method public abstract getHeader()Lstd_msgs/Header;
.end method

.method public abstract getLocation()Ljava/lang/String;
.end method

.method public abstract getPercentage()F
.end method

.method public abstract getPowerSupplyHealth()B
.end method

.method public abstract getPowerSupplyStatus()B
.end method

.method public abstract getPowerSupplyTechnology()B
.end method

.method public abstract getPresent()Z
.end method

.method public abstract getSerialNumber()Ljava/lang/String;
.end method

.method public abstract getVoltage()F
.end method

.method public abstract setCapacity(F)V
.end method

.method public abstract setCellVoltage([F)V
.end method

.method public abstract setCharge(F)V
.end method

.method public abstract setCurrent(F)V
.end method

.method public abstract setDesignCapacity(F)V
.end method

.method public abstract setHeader(Lstd_msgs/Header;)V
.end method

.method public abstract setLocation(Ljava/lang/String;)V
.end method

.method public abstract setPercentage(F)V
.end method

.method public abstract setPowerSupplyHealth(B)V
.end method

.method public abstract setPowerSupplyStatus(B)V
.end method

.method public abstract setPowerSupplyTechnology(B)V
.end method

.method public abstract setPresent(Z)V
.end method

.method public abstract setSerialNumber(Ljava/lang/String;)V
.end method

.method public abstract setVoltage(F)V
.end method
