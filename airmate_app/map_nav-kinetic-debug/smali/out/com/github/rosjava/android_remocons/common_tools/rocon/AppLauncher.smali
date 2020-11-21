.class public Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher;
.super Ljava/lang/Object;
.source "AppLauncher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$AppType;,
        Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAppType(Ljava/lang/String;)Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$AppType;
    .registers 5
    .param p0, "app_name"    # Ljava/lang/String;

    .line 125
    const-string v0, "web_url("

    .line 126
    .local v0, "web_url_desc":Ljava/lang/String;
    const-string v1, "web_app("

    .line 127
    .local v1, "web_app_desc":Ljava/lang/String;
    sget-object v2, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_14

    .line 128
    sget-object v2, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$AppType;->URL:Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$AppType;

    return-object v2

    .line 130
    :cond_14
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1d

    .line 131
    sget-object v2, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$AppType;->NOTHING:Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$AppType;

    return-object v2

    .line 133
    :cond_1d
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 134
    sget-object v2, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$AppType;->WEB_APP:Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$AppType;

    return-object v2

    .line 136
    :cond_26
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 137
    sget-object v2, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$AppType;->WEB_URL:Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$AppType;

    return-object v2

    .line 140
    :cond_2f
    sget-object v2, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$AppType;->NATIVE:Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$AppType;

    return-object v2
.end method

.method public static launch(Landroid/app/Activity;Lcom/github/rosjava/android_remocons/common_tools/master/RoconDescription;Lrocon_interaction_msgs/Interaction;)Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;
    .registers 6
    .param p0, "parent"    # Landroid/app/Activity;
    .param p1, "concert"    # Lcom/github/rosjava/android_remocons/common_tools/master/RoconDescription;
    .param p2, "app"    # Lrocon_interaction_msgs/Interaction;

    .line 99
    const-string v0, "AppLaunch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launching concert app "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lrocon_interaction_msgs/Interaction;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " on service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lrocon_interaction_msgs/Interaction;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-interface {p2}, Lrocon_interaction_msgs/Interaction;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher;->checkAppType(Ljava/lang/String;)Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$AppType;

    move-result-object v0

    .line 102
    .local v0, "app_type":Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$AppType;
    sget-object v1, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$AppType;->URL:Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$AppType;

    if-ne v0, v1, :cond_37

    .line 103
    invoke-static {p0, p1, p2}, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher;->launchUrl(Landroid/app/Activity;Lcom/github/rosjava/android_remocons/common_tools/master/RoconDescription;Lrocon_interaction_msgs/Interaction;)Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;

    move-result-object v1

    return-object v1

    .line 105
    :cond_37
    sget-object v1, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$AppType;->WEB_URL:Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$AppType;

    if-ne v0, v1, :cond_40

    .line 106
    invoke-static {p0, p1, p2}, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher;->launchWebUrl(Landroid/app/Activity;Lcom/github/rosjava/android_remocons/common_tools/master/RoconDescription;Lrocon_interaction_msgs/Interaction;)Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;

    move-result-object v1

    return-object v1

    .line 108
    :cond_40
    sget-object v1, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$AppType;->WEB_APP:Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$AppType;

    if-ne v0, v1, :cond_49

    .line 109
    invoke-static {p0, p1, p2}, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher;->launchWebApp(Landroid/app/Activity;Lcom/github/rosjava/android_remocons/common_tools/master/RoconDescription;Lrocon_interaction_msgs/Interaction;)Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;

    move-result-object v1

    return-object v1

    .line 111
    :cond_49
    sget-object v1, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$AppType;->NATIVE:Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$AppType;

    if-ne v0, v1, :cond_52

    .line 112
    invoke-static {p0, p1, p2}, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher;->launchAndroidApp(Landroid/app/Activity;Lcom/github/rosjava/android_remocons/common_tools/master/RoconDescription;Lrocon_interaction_msgs/Interaction;)Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;

    move-result-object v1

    return-object v1

    .line 114
    :cond_52
    sget-object v1, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$AppType;->NOTHING:Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$AppType;

    if-ne v0, v1, :cond_59

    .line 115
    sget-object v1, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;->NOTHING:Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;

    return-object v1

    .line 118
    :cond_59
    sget-object v1, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;->NOTHING:Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;

    return-object v1
.end method

.method private static launchAndroidApp(Landroid/app/Activity;Lcom/github/rosjava/android_remocons/common_tools/master/RoconDescription;Lrocon_interaction_msgs/Interaction;)Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;
    .registers 11
    .param p0, "parent"    # Landroid/app/Activity;
    .param p1, "concert"    # Lcom/github/rosjava/android_remocons/common_tools/master/RoconDescription;
    .param p2, "app"    # Lrocon_interaction_msgs/Interaction;

    .line 150
    sget-object v0, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;->OTHER_ERROR:Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;

    .line 151
    .local v0, "result":Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;
    invoke-interface {p2}, Lrocon_interaction_msgs/Interaction;->getName()Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, "appName":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 154
    .local v2, "intent":Landroid/content/Intent;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "com.github.rosjava.android_remocons.common_tools.rocon.Constants."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/InteractionMode;->CONCERT:Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/InteractionMode;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "_app_name"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    const-string v3, "com.github.rosjava.android_remocons.master.MasterDescription"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 156
    const-string v3, "RemoconActivity"

    const-string v4, "com.github.rosjava.android_remocons.rocon_remocon.Remocon"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    const-string v3, "Parameters"

    invoke-interface {p2}, Lrocon_interaction_msgs/Interaction;->getParameters()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    invoke-interface {p2}, Lrocon_interaction_msgs/Interaction;->getRemappings()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_a7

    invoke-interface {p2}, Lrocon_interaction_msgs/Interaction;->getRemappings()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_a7

    .line 161
    const-string v3, "{"

    .line 162
    .local v3, "remaps":Ljava/lang/String;
    invoke-interface {p2}, Lrocon_interaction_msgs/Interaction;->getRemappings()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_55
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_86

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lrocon_std_msgs/Remapping;

    .line 163
    .local v5, "remap":Lrocon_std_msgs/Remapping;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Lrocon_std_msgs/Remapping;->getRemapFrom()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Lrocon_std_msgs/Remapping;->getRemapTo()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_55

    .line 164
    .end local v5    # "remap":Lrocon_std_msgs/Remapping;
    :cond_86
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 165
    const-string v4, "Remappings"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    .end local v3    # "remaps":Ljava/lang/String;
    :cond_a7
    :try_start_a7
    const-string v3, "AppLaunch"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "launchAndroidApp trying to start activity (action: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " )"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 170
    sget-object v3, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;->SUCCESS:Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;
    :try_end_c7
    .catch Landroid/content/ActivityNotFoundException; {:try_start_a7 .. :try_end_c7} :catch_c9

    move-object v0, v3

    .line 174
    goto :goto_e4

    .line 171
    :catch_c9
    move-exception v3

    .line 172
    .local v3, "e":Landroid/content/ActivityNotFoundException;
    const-string v4, "AppLaunch"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "launchAndroidApp activity not found for action, find package name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-static {p0, p1, p2}, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher;->launchAndroidAppWithPkgName(Landroid/app/Activity;Lcom/github/rosjava/android_remocons/common_tools/master/RoconDescription;Lrocon_interaction_msgs/Interaction;)Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;

    move-result-object v0

    .line 175
    .end local v3    # "e":Landroid/content/ActivityNotFoundException;
    :goto_e4
    return-object v0
.end method

.method private static launchAndroidAppWithAppId(Landroid/app/Activity;Lcom/github/rosjava/android_remocons/common_tools/master/RoconDescription;Lrocon_interaction_msgs/Interaction;)Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;
    .registers 14
    .param p0, "parent"    # Landroid/app/Activity;
    .param p1, "concert"    # Lcom/github/rosjava/android_remocons/common_tools/master/RoconDescription;
    .param p2, "app"    # Lrocon_interaction_msgs/Interaction;

    .line 218
    sget-object v0, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;->OTHER_ERROR:Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;

    .line 219
    .local v0, "result":Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;
    const-string v1, ""

    .line 220
    .local v1, "launchablePkgName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 221
    .local v2, "manager":Landroid/content/pm/PackageManager;
    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v3

    .line 222
    .local v3, "applicationInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v4, 0x0

    const/4 v5, 0x0

    .local v5, "i":I
    :goto_10
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_2e

    .line 223
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ApplicationInfo;

    .line 224
    .local v6, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-interface {p2}, Lrocon_interaction_msgs/Interaction;->getName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v6, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2b

    .line 225
    iget-object v1, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 226
    goto :goto_2e

    .line 222
    .end local v6    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_2b
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    .line 229
    .end local v5    # "i":I
    :cond_2e
    :goto_2e
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_110

    .line 230
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 231
    .local v5, "intent":Landroid/content/Intent;
    if-eqz v5, :cond_110

    .line 233
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "com.github.rosjava.android_remocons.common_tools.rocon.Constants."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/InteractionMode;->CONCERT:Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/InteractionMode;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "_app_name"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    const-string v6, "com.github.rosjava.android_remocons.master.MasterDescription"

    invoke-virtual {v5, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 235
    const-string v6, "RemoconActivity"

    const-string v7, "com.github.rosjava.android_remocons.rocon_remocon.Remocon"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    const-string v6, "Parameters"

    invoke-interface {p2}, Lrocon_interaction_msgs/Interaction;->getParameters()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    invoke-interface {p2}, Lrocon_interaction_msgs/Interaction;->getRemappings()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_d5

    invoke-interface {p2}, Lrocon_interaction_msgs/Interaction;->getRemappings()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_d5

    .line 239
    const-string v6, "{"

    .line 240
    .local v6, "remaps":Ljava/lang/String;
    invoke-interface {p2}, Lrocon_interaction_msgs/Interaction;->getRemappings()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_84
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lrocon_std_msgs/Remapping;

    .line 241
    .local v8, "remap":Lrocon_std_msgs/Remapping;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Lrocon_std_msgs/Remapping;->getRemapFrom()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Lrocon_std_msgs/Remapping;->getRemapTo()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_84

    .line 242
    .end local v8    # "remap":Lrocon_std_msgs/Remapping;
    :cond_b5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    invoke-virtual {v6, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "}"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 243
    .end local v6    # "remaps":Ljava/lang/String;
    .local v4, "remaps":Ljava/lang/String;
    const-string v6, "Remappings"

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    .end local v4    # "remaps":Ljava/lang/String;
    :cond_d5
    :try_start_d5
    const-string v4, "AppLaunch"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "launchAndroidAppWithoutRosVer trying to start activity (action: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " )"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-virtual {p0, v5}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 248
    sget-object v4, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;->SUCCESS:Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;
    :try_end_f5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_d5 .. :try_end_f5} :catch_f7

    move-object v0, v4

    .line 252
    goto :goto_110

    .line 249
    :catch_f7
    move-exception v4

    .line 250
    .local v4, "e":Landroid/content/ActivityNotFoundException;
    const-string v6, "AppLaunch"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "launchAndroidAppWithoutRosVer activity not found for action, find package name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    sget-object v0, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;->NOT_INSTALLED:Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;

    .line 256
    .end local v4    # "e":Landroid/content/ActivityNotFoundException;
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_110
    :goto_110
    sget-object v0, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;->NOT_INSTALLED:Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;

    .line 258
    return-object v0
.end method

.method private static launchAndroidAppWithPkgName(Landroid/app/Activity;Lcom/github/rosjava/android_remocons/common_tools/master/RoconDescription;Lrocon_interaction_msgs/Interaction;)Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;
    .registers 12
    .param p0, "parent"    # Landroid/app/Activity;
    .param p1, "concert"    # Lcom/github/rosjava/android_remocons/common_tools/master/RoconDescription;
    .param p2, "app"    # Lrocon_interaction_msgs/Interaction;

    .line 181
    sget-object v0, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;->OTHER_ERROR:Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;

    .line 182
    .local v0, "result":Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;
    invoke-interface {p2}, Lrocon_interaction_msgs/Interaction;->getName()Ljava/lang/String;

    move-result-object v1

    .line 183
    .local v1, "appName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 184
    .local v2, "manager":Landroid/content/pm/PackageManager;
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 185
    .local v3, "intent":Landroid/content/Intent;
    if-eqz v3, :cond_e9

    .line 187
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "com.github.rosjava.android_remocons.common_tools.rocon.Constants."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/InteractionMode;->CONCERT:Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/InteractionMode;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "_app_name"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    const-string v4, "com.github.rosjava.android_remocons.master.MasterDescription"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 189
    const-string v4, "RemoconActivity"

    const-string v5, "com.github.rosjava.android_remocons.rocon_remocon.Remocon"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    const-string v4, "Parameters"

    invoke-interface {p2}, Lrocon_interaction_msgs/Interaction;->getParameters()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    invoke-interface {p2}, Lrocon_interaction_msgs/Interaction;->getRemappings()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_ac

    invoke-interface {p2}, Lrocon_interaction_msgs/Interaction;->getRemappings()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_ac

    .line 194
    const-string v4, "{"

    .line 195
    .local v4, "remaps":Ljava/lang/String;
    invoke-interface {p2}, Lrocon_interaction_msgs/Interaction;->getRemappings()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lrocon_std_msgs/Remapping;

    .line 196
    .local v6, "remap":Lrocon_std_msgs/Remapping;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Lrocon_std_msgs/Remapping;->getRemapFrom()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Lrocon_std_msgs/Remapping;->getRemapTo()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_5a

    .line 197
    .end local v6    # "remap":Lrocon_std_msgs/Remapping;
    :cond_8b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 198
    const-string v5, "Remappings"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    .end local v4    # "remaps":Ljava/lang/String;
    :cond_ac
    :try_start_ac
    const-string v4, "AppLaunch"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "launchAndroidAppWithPkgName trying to start activity (action: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " )"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-virtual {p0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 203
    sget-object v4, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;->SUCCESS:Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;
    :try_end_cc
    .catch Landroid/content/ActivityNotFoundException; {:try_start_ac .. :try_end_cc} :catch_cd

    return-object v4

    .line 204
    :catch_cd
    move-exception v4

    .line 205
    .local v4, "e":Landroid/content/ActivityNotFoundException;
    const-string v5, "AppLaunch"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "launchAndroidAppWithPkgName activity not found for action: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-static {p0, p1, p2}, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher;->launchAndroidAppWithAppId(Landroid/app/Activity;Lcom/github/rosjava/android_remocons/common_tools/master/RoconDescription;Lrocon_interaction_msgs/Interaction;)Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;

    move-result-object v0

    .line 207
    .end local v4    # "e":Landroid/content/ActivityNotFoundException;
    goto :goto_ed

    .line 210
    :cond_e9
    invoke-static {p0, p1, p2}, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher;->launchAndroidAppWithAppId(Landroid/app/Activity;Lcom/github/rosjava/android_remocons/common_tools/master/RoconDescription;Lrocon_interaction_msgs/Interaction;)Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;

    move-result-object v0

    .line 212
    :goto_ed
    return-object v0
.end method

.method private static launchUrl(Landroid/app/Activity;Lcom/github/rosjava/android_remocons/common_tools/master/RoconDescription;Lrocon_interaction_msgs/Interaction;)Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;
    .registers 11
    .param p0, "parent"    # Landroid/app/Activity;
    .param p1, "concert"    # Lcom/github/rosjava/android_remocons/common_tools/master/RoconDescription;
    .param p2, "app"    # Lrocon_interaction_msgs/Interaction;

    .line 269
    :try_start_0
    const-string v0, ""

    .line 270
    .local v0, "app_name":Ljava/lang/String;
    invoke-interface {p2}, Lrocon_interaction_msgs/Interaction;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 271
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 296
    .local v1, "appURL":Ljava/net/URL;
    move-object v2, v0

    .line 297
    .local v2, "appUriStr":Ljava/lang/String;
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 300
    .local v3, "appURI":Landroid/net/Uri;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v4, v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 301
    .local v4, "intent":Landroid/content/Intent;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "com.github.rosjava.android_remocons.common_tools.rocon.Constants."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/InteractionMode;->CONCERT:Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/InteractionMode;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "_app_name"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 303
    const-string v5, "AppLaunch"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "trying to start web app (URI: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    invoke-virtual {p0, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 305
    sget-object v5, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;->SUCCESS:Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;
    :try_end_53
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_53} :catch_6a
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_53} :catch_60
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_53} :catch_54

    return-object v5

    .line 314
    .end local v0    # "app_name":Ljava/lang/String;
    .end local v1    # "appURL":Ljava/net/URL;
    .end local v2    # "appUriStr":Ljava/lang/String;
    .end local v3    # "appURI":Landroid/net/Uri;
    .end local v4    # "intent":Landroid/content/Intent;
    :catch_54
    move-exception v0

    .line 316
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;->OTHER_ERROR:Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;->withMsg(Ljava/lang/String;)Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;

    move-result-object v1

    return-object v1

    .line 311
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_60
    move-exception v0

    .line 313
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    sget-object v1, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;->NOT_INSTALLED:Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;

    const-string v2, "Activity not found for view action??? muoia???"

    invoke-virtual {v1, v2}, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;->withMsg(Ljava/lang/String;)Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;

    move-result-object v1

    return-object v1

    .line 307
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :catch_6a
    move-exception v0

    .line 309
    .local v0, "e":Ljava/net/MalformedURLException;
    sget-object v1, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;->MALFORMED_URI:Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "App URL is not valid. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;->withMsg(Ljava/lang/String;)Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;

    move-result-object v1

    return-object v1
.end method

.method private static launchWebApp(Landroid/app/Activity;Lcom/github/rosjava/android_remocons/common_tools/master/RoconDescription;Lrocon_interaction_msgs/Interaction;)Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;
    .registers 19
    .param p0, "parent"    # Landroid/app/Activity;
    .param p1, "concert"    # Lcom/github/rosjava/android_remocons/common_tools/master/RoconDescription;
    .param p2, "app"    # Lrocon_interaction_msgs/Interaction;

    .line 390
    :try_start_0
    const-string v1, ""

    .line 391
    .local v1, "app_name":Ljava/lang/String;
    const-string v2, ""

    .line 392
    .local v2, "app_type":Ljava/lang/String;
    const-string v3, "web_app"

    move-object v2, v3

    .line 393
    invoke-interface/range {p2 .. p2}, Lrocon_interaction_msgs/Interaction;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-interface/range {p2 .. p2}, Lrocon_interaction_msgs/Interaction;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 394
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 424
    .local v3, "appURL":Ljava/net/URL;
    move-object v4, v1

    .line 425
    .local v4, "appUriStr":Ljava/lang/String;
    const-string v5, "{"

    .line 427
    .local v5, "interaction_data":Ljava/lang/String;
    const-string v6, "\"remappings\": {"

    .line 428
    .local v6, "remaps":Ljava/lang/String;
    invoke-interface/range {p2 .. p2}, Lrocon_interaction_msgs/Interaction;->getRemappings()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    if-eqz v7, :cond_97

    invoke-interface/range {p2 .. p2}, Lrocon_interaction_msgs/Interaction;->getRemappings()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_97

    .line 429
    invoke-interface/range {p2 .. p2}, Lrocon_interaction_msgs/Interaction;->getRemappings()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_43
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lrocon_std_msgs/Remapping;

    .line 430
    .local v9, "remap":Lrocon_std_msgs/Remapping;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v9}, Lrocon_std_msgs/Remapping;->getRemapFrom()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\":\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v9}, Lrocon_std_msgs/Remapping;->getRemapTo()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v6, v10

    goto :goto_43

    .line 431
    .end local v9    # "remap":Lrocon_std_msgs/Remapping;
    :cond_7a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "}"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    goto :goto_a9

    .line 434
    :cond_97
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "}"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 436
    :goto_a9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ","

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 437
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 440
    const-string v7, "\"display_name\":"

    .line 441
    .local v7, "displayname":Ljava/lang/String;
    invoke-interface/range {p2 .. p2}, Lrocon_interaction_msgs/Interaction;->getDisplayName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_fb

    invoke-interface/range {p2 .. p2}, Lrocon_interaction_msgs/Interaction;->getDisplayName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_fb

    .line 442
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Lrocon_interaction_msgs/Interaction;->getDisplayName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    .line 444
    :cond_fb
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    .line 445
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v5, v9

    .line 448
    const-string v9, "\"parameters\": {"

    .line 449
    .local v9, "parameters":Ljava/lang/String;
    invoke-interface/range {p2 .. p2}, Lrocon_interaction_msgs/Interaction;->getParameters()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_189

    invoke-interface/range {p2 .. p2}, Lrocon_interaction_msgs/Interaction;->getParameters()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x2

    if-le v10, v11, :cond_189

    .line 450
    new-instance v10, Lorg/yaml/snakeyaml/Yaml;

    invoke-direct {v10}, Lorg/yaml/snakeyaml/Yaml;-><init>()V

    .line 451
    .local v10, "yaml":Lorg/yaml/snakeyaml/Yaml;
    invoke-interface/range {p2 .. p2}, Lrocon_interaction_msgs/Interaction;->getParameters()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/yaml/snakeyaml/Yaml;->load(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map;

    .line 452
    .local v11, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_147
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_17e

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 453
    .local v13, "key":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "\""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "\":\""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v11, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "\","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v9, v14

    .line 454
    .end local v13    # "key":Ljava/lang/String;
    goto :goto_147

    .line 455
    :cond_17e
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v9, v8, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    move-object v9, v8

    .line 458
    .end local v10    # "yaml":Lorg/yaml/snakeyaml/Yaml;
    .end local v11    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_189
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "}"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 459
    .end local v9    # "parameters":Ljava/lang/String;
    .local v8, "parameters":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v5, v9

    .line 460
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "}"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v5, v9

    .line 462
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "?interaction_data="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v4, v9

    .line 463
    invoke-virtual {v3}, Ljava/net/URL;->toURI()Ljava/net/URI;

    .line 464
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 467
    .local v9, "appURI":Landroid/net/Uri;
    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.intent.action.VIEW"

    invoke-direct {v10, v11, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 468
    .local v10, "intent":Landroid/content/Intent;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "com.github.rosjava.android_remocons.common_tools.rocon.Constants."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/InteractionMode;->CONCERT:Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/InteractionMode;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, "_app_name"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 470
    const-string v11, "AppLaunch"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "trying to start web app (URI: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_219
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_219} :catch_265
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_219} :catch_245
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_219} :catch_238
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_219} :catch_229

    .line 471
    move-object/from16 v11, p0

    :try_start_21b
    invoke-virtual {v11, v10}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 472
    sget-object v12, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;->SUCCESS:Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;
    :try_end_220
    .catch Ljava/net/URISyntaxException; {:try_start_21b .. :try_end_220} :catch_227
    .catch Ljava/net/MalformedURLException; {:try_start_21b .. :try_end_220} :catch_225
    .catch Landroid/content/ActivityNotFoundException; {:try_start_21b .. :try_end_220} :catch_223
    .catch Ljava/lang/Exception; {:try_start_21b .. :try_end_220} :catch_221

    return-object v12

    .line 485
    .end local v1    # "app_name":Ljava/lang/String;
    .end local v2    # "app_type":Ljava/lang/String;
    .end local v3    # "appURL":Ljava/net/URL;
    .end local v4    # "appUriStr":Ljava/lang/String;
    .end local v5    # "interaction_data":Ljava/lang/String;
    .end local v6    # "remaps":Ljava/lang/String;
    .end local v7    # "displayname":Ljava/lang/String;
    .end local v8    # "parameters":Ljava/lang/String;
    .end local v9    # "appURI":Landroid/net/Uri;
    .end local v10    # "intent":Landroid/content/Intent;
    :catch_221
    move-exception v0

    goto :goto_22c

    .line 481
    :catch_223
    move-exception v0

    goto :goto_23b

    .line 477
    :catch_225
    move-exception v0

    goto :goto_248

    .line 474
    :catch_227
    move-exception v0

    goto :goto_268

    .line 485
    :catch_229
    move-exception v0

    move-object/from16 v11, p0

    :goto_22c
    move-object v1, v0

    .line 487
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;->OTHER_ERROR:Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;->withMsg(Ljava/lang/String;)Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;

    move-result-object v2

    return-object v2

    .line 481
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_238
    move-exception v0

    move-object/from16 v11, p0

    :goto_23b
    move-object v1, v0

    .line 483
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    sget-object v2, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;->NOT_INSTALLED:Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;

    const-string v3, "Activity not found for view action??? muoia???"

    invoke-virtual {v2, v3}, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;->withMsg(Ljava/lang/String;)Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;

    move-result-object v2

    return-object v2

    .line 477
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :catch_245
    move-exception v0

    move-object/from16 v11, p0

    :goto_248
    move-object v1, v0

    .line 479
    .local v1, "e":Ljava/net/MalformedURLException;
    sget-object v2, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;->MALFORMED_URI:Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "App URL is not valid. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;->withMsg(Ljava/lang/String;)Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;

    move-result-object v2

    return-object v2

    .line 474
    .end local v1    # "e":Ljava/net/MalformedURLException;
    :catch_265
    move-exception v0

    move-object/from16 v11, p0

    :goto_268
    move-object v1, v0

    .line 475
    .local v1, "e":Ljava/net/URISyntaxException;
    sget-object v2, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;->MALFORMED_URI:Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot convert URL into URI. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;->withMsg(Ljava/lang/String;)Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;

    move-result-object v2

    return-object v2
.end method

.method private static launchWebUrl(Landroid/app/Activity;Lcom/github/rosjava/android_remocons/common_tools/master/RoconDescription;Lrocon_interaction_msgs/Interaction;)Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;
    .registers 12
    .param p0, "parent"    # Landroid/app/Activity;
    .param p1, "concert"    # Lcom/github/rosjava/android_remocons/common_tools/master/RoconDescription;
    .param p2, "app"    # Lrocon_interaction_msgs/Interaction;

    .line 328
    :try_start_0
    const-string v0, ""

    .line 329
    .local v0, "app_name":Ljava/lang/String;
    const-string v1, "web_url"

    .line 330
    .local v1, "app_type":Ljava/lang/String;
    invoke-interface {p2}, Lrocon_interaction_msgs/Interaction;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-interface {p2}, Lrocon_interaction_msgs/Interaction;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 332
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 358
    .local v2, "appURL":Ljava/net/URL;
    move-object v3, v0

    .line 359
    .local v3, "appUriStr":Ljava/lang/String;
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 362
    .local v4, "appURI":Landroid/net/Uri;
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v5, v6, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 363
    .local v5, "intent":Landroid/content/Intent;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "com.github.rosjava.android_remocons.common_tools.rocon.Constants."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/InteractionMode;->CONCERT:Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/InteractionMode;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "_app_name"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 365
    const-string v6, "AppLaunch"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "trying to start web url (URI: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    invoke-virtual {p0, v5}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 367
    sget-object v6, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;->SUCCESS:Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;
    :try_end_69
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_69} :catch_80
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_69} :catch_76
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_69} :catch_6a

    return-object v6

    .line 377
    .end local v0    # "app_name":Ljava/lang/String;
    .end local v1    # "app_type":Ljava/lang/String;
    .end local v2    # "appURL":Ljava/net/URL;
    .end local v3    # "appUriStr":Ljava/lang/String;
    .end local v4    # "appURI":Landroid/net/Uri;
    .end local v5    # "intent":Landroid/content/Intent;
    :catch_6a
    move-exception v0

    .line 379
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;->OTHER_ERROR:Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;->withMsg(Ljava/lang/String;)Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;

    move-result-object v1

    return-object v1

    .line 373
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_76
    move-exception v0

    .line 375
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    sget-object v1, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;->NOT_INSTALLED:Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;

    const-string v2, "Activity not found for view action??? muoia???"

    invoke-virtual {v1, v2}, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;->withMsg(Ljava/lang/String;)Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;

    move-result-object v1

    return-object v1

    .line 369
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :catch_80
    move-exception v0

    .line 371
    .local v0, "e":Ljava/net/MalformedURLException;
    sget-object v1, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;->MALFORMED_URI:Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "App URL is not valid. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;->withMsg(Ljava/lang/String;)Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;

    move-result-object v1

    return-object v1
.end method
