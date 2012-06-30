.class public Lcom/android/OriginalSettings/wifi/IwlanEnabler;
.super Ljava/lang/Object;
.source "IwlanEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final IWLAN_FREE_SPACE:Ljava/lang/Long;


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDefaultPdgDomainName:Ljava/lang/String;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIsVpnConnected:Z

.field private mIsWifiConnected:Z

.field private mIwlanCheckBoxPref:Landroid/preference/CheckBoxPreference;

.field private mIwlanNetworks:Landroid/preference/PreferenceCategory;

.field private mIwlandState:I

.field private mPdgDomainName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 67
    const-wide/16 v0, 0x2800

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/android/OriginalSettings/wifi/IwlanEnabler;->IWLAN_FREE_SPACE:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Lcom/android/OriginalSettings/SettingsPreferenceFragment;)V
    .locals 3
    .parameter "obj"

    .prologue
    const/4 v2, 0x0

    .line 142
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v1, ""

    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/IwlanEnabler;->mPdgDomainName:Ljava/lang/String;

    .line 35
    const-string v1, ""

    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/IwlanEnabler;->mDefaultPdgDomainName:Ljava/lang/String;

    .line 73
    iput-boolean v2, p0, Lcom/android/OriginalSettings/wifi/IwlanEnabler;->mIsWifiConnected:Z

    .line 74
    iput-boolean v2, p0, Lcom/android/OriginalSettings/wifi/IwlanEnabler;->mIsVpnConnected:Z

    .line 80
    new-instance v1, Lcom/android/OriginalSettings/wifi/IwlanEnabler$1;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/wifi/IwlanEnabler$1;-><init>(Lcom/android/OriginalSettings/wifi/IwlanEnabler;)V

    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/IwlanEnabler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 144
    invoke-virtual {p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/IwlanEnabler;->mContext:Landroid/content/Context;

    .line 146
    invoke-virtual {p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 148
    .local v0, parentPreference:Landroid/preference/PreferenceGroup;
    const-string v1, "iwlan_enabled"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/IwlanEnabler;->mIwlanCheckBoxPref:Landroid/preference/CheckBoxPreference;

    .line 149
    const-string v1, "iwlan_networks"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/IwlanEnabler;->mIwlanNetworks:Landroid/preference/PreferenceCategory;

    .line 151
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/IwlanEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 152
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/IwlanEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/IwlanEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/IwlanEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "vpn.connectivity"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/IwlanEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "action.iwlan.connectivity"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/wifi/IwlanEnabler;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/IwlanEnabler;->isWifiConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/wifi/IwlanEnabler;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/android/OriginalSettings/wifi/IwlanEnabler;->mIwlandState:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/OriginalSettings/wifi/IwlanEnabler;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput p1, p0, Lcom/android/OriginalSettings/wifi/IwlanEnabler;->mIwlandState:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/wifi/IwlanEnabler;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/IwlanEnabler;->isAvailableDataStorage()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/wifi/IwlanEnabler;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/IwlanEnabler;->mIwlanCheckBoxPref:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/OriginalSettings/wifi/IwlanEnabler;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/IwlanEnabler;->mPdgDomainName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/OriginalSettings/wifi/IwlanEnabler;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/IwlanEnabler;->mDefaultPdgDomainName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/OriginalSettings/wifi/IwlanEnabler;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/IwlanEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/OriginalSettings/wifi/IwlanEnabler;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/android/OriginalSettings/wifi/IwlanEnabler;->mIsVpnConnected:Z

    return p1
.end method

.method private isAvailableDataStorage()Z
    .locals 5

    .prologue
    .line 393
    new-instance v2, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 394
    .local v2, stat:Landroid/os/StatFs;
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v4

    mul-int/2addr v3, v4

    int-to-long v0, v3

    .line 395
    .local v0, space:J
    sget-object v3, Lcom/android/OriginalSettings/wifi/IwlanEnabler;->IWLAN_FREE_SPACE:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v0, v3

    if-gez v3, :cond_0

    .line 396
    const/4 v3, 0x0

    .line 398
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private isDeamonRunning(Ljava/lang/String;)Z
    .locals 10
    .parameter "deamon"

    .prologue
    const/4 v6, 0x0

    .line 343
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ps "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 346
    .local v2, process:Ljava/lang/Process;
    const/16 v7, 0x200

    new-array v4, v7, [B

    .line 347
    .local v4, readBuffer:[B
    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .local v5, readLength:I
    if-lez v5, :cond_0

    .line 348
    new-instance v3, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v3, v4, v7, v5}, Ljava/lang/String;-><init>([BII)V

    .line 349
    .local v3, ps:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    add-int/lit8 v7, v5, -0x6

    if-ge v1, v7, :cond_0

    .line 350
    add-int/lit8 v7, v1, 0x6

    invoke-virtual {v3, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_1

    .line 351
    const/4 v6, 0x1

    .line 359
    .end local v1           #i:I
    .end local v2           #process:Ljava/lang/Process;
    .end local v3           #ps:Ljava/lang/String;
    .end local v4           #readBuffer:[B
    .end local v5           #readLength:I
    :cond_0
    :goto_1
    return v6

    .line 349
    .restart local v1       #i:I
    .restart local v2       #process:Ljava/lang/Process;
    .restart local v3       #ps:Ljava/lang/String;
    .restart local v4       #readBuffer:[B
    .restart local v5       #readLength:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 356
    .end local v1           #i:I
    .end local v2           #process:Ljava/lang/Process;
    .end local v3           #ps:Ljava/lang/String;
    .end local v4           #readBuffer:[B
    .end local v5           #readLength:I
    :catch_0
    move-exception v0

    .line 357
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private isWifiConnected()Z
    .locals 4

    .prologue
    .line 371
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/IwlanEnabler;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 372
    .local v1, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 373
    .local v0, wifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v2

    if-nez v2, :cond_0

    .line 374
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/OriginalSettings/wifi/IwlanEnabler;->mIsWifiConnected:Z

    .line 379
    :goto_0
    iget-boolean v2, p0, Lcom/android/OriginalSettings/wifi/IwlanEnabler;->mIsWifiConnected:Z

    return v2

    .line 376
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/OriginalSettings/wifi/IwlanEnabler;->mIsWifiConnected:Z

    goto :goto_0
.end method

.method private setIwlanEnabled(Z)V
    .locals 5
    .parameter "enable"

    .prologue
    .line 168
    const/4 v1, 0x0

    .line 170
    .local v1, str:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/IwlanEnabler;->mIwlanCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 172
    if-eqz p1, :cond_0

    .line 173
    new-instance v0, Landroid/content/Intent;

    const-string v2, "actoin.IWLAN_ACTIVITY_REQUEST_CONNECT_IWLAN_NETWORK"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 174
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/IwlanEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 180
    :goto_0
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/IwlanEnabler;->mPdgDomainName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 195
    :goto_1
    return-void

    .line 176
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "actoin.IWLAN_ACTIVITY_REQUEST_DISCONNECT_IWLAN_NETWORK"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 177
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/IwlanEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 182
    :cond_1
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/IwlanEnabler;->mPdgDomainName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/IwlanEnabler;->mDefaultPdgDomainName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 183
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/IwlanEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0a3c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 188
    :goto_2
    iget v2, p0, Lcom/android/OriginalSettings/wifi/IwlanEnabler;->mIwlandState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/IwlanEnabler;->mContext:Landroid/content/Context;

    const v4, 0x7f0d0a42

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 193
    :goto_3
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/IwlanEnabler;->mIwlanCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 185
    :cond_2
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/IwlanEnabler;->mPdgDomainName:Ljava/lang/String;

    goto :goto_2

    .line 191
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/IwlanEnabler;->mContext:Landroid/content/Context;

    const v4, 0x7f0d0a41

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3
.end method

.method private showAlertDialog(Ljava/lang/String;)V
    .locals 3
    .parameter "str"

    .prologue
    .line 383
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/IwlanEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/IwlanEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0a52

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/OriginalSettings/wifi/IwlanEnabler$2;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/wifi/IwlanEnabler$2;-><init>(Lcom/android/OriginalSettings/wifi/IwlanEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 390
    return-void
.end method


# virtual methods
.method public getPdgName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "pdgName"

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/IwlanEnabler;->mDefaultPdgDomainName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/IwlanEnabler;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0a3c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 338
    :cond_0
    return-object p1
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "value"

    .prologue
    .line 160
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wifi/IwlanEnabler;->setIwlanEnabled(Z)V

    .line 161
    const-string v0, "racoon"

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wifi/IwlanEnabler;->isDeamonRunning(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/wifi/IwlanEnabler;->mIsVpnConnected:Z

    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 199
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/IwlanEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/IwlanEnabler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/IwlanEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 201
    new-instance v0, Landroid/content/Intent;

    const-string v1, "action.iwlan.start"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 202
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/IwlanEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 203
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/IwlanEnabler;->mIwlanCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 205
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 210
    :try_start_0
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/IwlanEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/IwlanEnabler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :goto_0
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/IwlanEnabler;->mIwlanCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 217
    new-instance v0, Landroid/content/Intent;

    const-string v1, "action.IWLAN_ACTIVITY_REQUEST_GET_STATE_IWLAN_NETWORKS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 218
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "extra.IWLAN_CONNECTING"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 219
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/IwlanEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 221
    return-void

    .line 211
    .end local v0           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public updataIwlanNetworks(Landroid/content/Intent;)V
    .locals 16
    .parameter "intent"

    .prologue
    .line 225
    const/4 v11, 0x0

    .line 227
    .local v11, summary:Ljava/lang/String;
    const-string v12, "extra.IWLAN_NETWORKS"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 228
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/IwlanEnabler;->mIwlanNetworks:Landroid/preference/PreferenceCategory;

    invoke-virtual {v12}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 230
    const/4 v7, 0x0

    .line 231
    .local v7, jsonObject:Lorg/json/JSONObject;
    const-string v12, "extra.IWLAN_NETWORKS"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 234
    .local v9, jsonString:Ljava/lang/String;
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    .end local v7           #jsonObject:Lorg/json/JSONObject;
    .local v8, jsonObject:Lorg/json/JSONObject;
    :try_start_1
    const-string v12, "SELECTED"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 237
    .local v10, pdgDomainName:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 238
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/OriginalSettings/wifi/IwlanEnabler;->mPdgDomainName:Ljava/lang/String;

    .line 241
    :cond_0
    const-string v12, "DEFAULT"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 242
    .local v2, defaultPdgDomainName:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 243
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/OriginalSettings/wifi/IwlanEnabler;->mDefaultPdgDomainName:Ljava/lang/String;

    .line 246
    :cond_1
    const-string v12, "LIST"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 247
    .local v6, jsonArray:Lorg/json/JSONArray;
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-lez v12, :cond_3

    .line 248
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v4, v12, :cond_3

    .line 249
    const-string v12, "SELECTED"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 250
    .local v1, connectedNetworkName:Ljava/lang/String;
    const/4 v5, 0x0

    .line 251
    .local v5, iwlanNetwork:Lcom/android/OriginalSettings/wifi/IwlanNetwork;
    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 252
    new-instance v5, Lcom/android/OriginalSettings/wifi/IwlanNetwork;

    .end local v5           #iwlanNetwork:Lcom/android/OriginalSettings/wifi/IwlanNetwork;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/IwlanEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    const/4 v14, 0x1

    const-string v15, "DEFAULT"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v5, v12, v13, v14, v15}, Lcom/android/OriginalSettings/wifi/IwlanNetwork;-><init>(Landroid/content/Context;Lorg/json/JSONObject;ZLjava/lang/String;)V

    .line 259
    .restart local v5       #iwlanNetwork:Lcom/android/OriginalSettings/wifi/IwlanNetwork;
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/IwlanEnabler;->mIwlanNetworks:Landroid/preference/PreferenceCategory;

    invoke-virtual {v12, v5}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 260
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/IwlanEnabler;->mIwlanCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v12}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Lcom/android/OriginalSettings/wifi/IwlanNetwork;->setDependency(Ljava/lang/String;)V

    .line 248
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 255
    :cond_2
    new-instance v5, Lcom/android/OriginalSettings/wifi/IwlanNetwork;

    .end local v5           #iwlanNetwork:Lcom/android/OriginalSettings/wifi/IwlanNetwork;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/IwlanEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    const/4 v14, 0x0

    const-string v15, "DEFAULT"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v5, v12, v13, v14, v15}, Lcom/android/OriginalSettings/wifi/IwlanNetwork;-><init>(Landroid/content/Context;Lorg/json/JSONObject;ZLjava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v5       #iwlanNetwork:Lcom/android/OriginalSettings/wifi/IwlanNetwork;
    goto :goto_1

    .line 263
    .end local v1           #connectedNetworkName:Ljava/lang/String;
    .end local v2           #defaultPdgDomainName:Ljava/lang/String;
    .end local v4           #i:I
    .end local v5           #iwlanNetwork:Lcom/android/OriginalSettings/wifi/IwlanNetwork;
    .end local v6           #jsonArray:Lorg/json/JSONArray;
    .end local v8           #jsonObject:Lorg/json/JSONObject;
    .end local v10           #pdgDomainName:Ljava/lang/String;
    .restart local v7       #jsonObject:Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    .line 264
    .local v3, e:Lorg/json/JSONException;
    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 268
    .end local v3           #e:Lorg/json/JSONException;
    .end local v7           #jsonObject:Lorg/json/JSONObject;
    .end local v9           #jsonString:Ljava/lang/String;
    :cond_3
    const-string v12, "extra.iwlan.state"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 269
    const-string v12, "extra.iwlan.state"

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/OriginalSettings/wifi/IwlanEnabler;->mIwlandState:I

    .line 272
    :cond_4
    const-string v12, "extra.IWLAN_PDG_NAME"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 273
    const-string v12, "extra.IWLAN_PDG_NAME"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/OriginalSettings/wifi/IwlanEnabler;->mPdgDomainName:Ljava/lang/String;

    .line 276
    :cond_5
    const-string v12, "extra.IWLAN_CHECKBOX_SUMMARY_PDG_NAME"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 277
    const-string v12, "extra.IWLAN_CHECKBOX_SUMMARY_PDG_NAME"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/OriginalSettings/wifi/IwlanEnabler;->getPdgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 282
    :goto_3
    const-string v12, "extra.IWLAN_CHECKBOX_SUMMARY_STATE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 283
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "extra.IWLAN_CHECKBOX_SUMMARY_STATE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 288
    :goto_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/IwlanEnabler;->mIwlanCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v12, v11}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 292
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/OriginalSettings/wifi/IwlanEnabler;->mIwlandState:I

    if-gtz v12, :cond_e

    .line 293
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/OriginalSettings/wifi/IwlanEnabler;->mIsWifiConnected:Z

    if-eqz v12, :cond_d

    .line 295
    invoke-direct/range {p0 .. p0}, Lcom/android/OriginalSettings/wifi/IwlanEnabler;->isAvailableDataStorage()Z

    move-result v12

    if-eqz v12, :cond_c

    .line 296
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/IwlanEnabler;->mIwlanCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 303
    :goto_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/IwlanEnabler;->mIwlanCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 317
    :cond_6
    :goto_6
    const-string v12, "extra.IWLAN_CHECKBOX_ENABLED"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 318
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/IwlanEnabler;->mIwlanCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const-string v13, "extra.IWLAN_CHECKBOX_ENABLED"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    invoke-virtual {v12, v13}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 321
    :cond_7
    const-string v12, "extra.IWLAN_CHECKBOX_CHECKED"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 322
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/IwlanEnabler;->mIwlanCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v12}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 323
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/IwlanEnabler;->mIwlanCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const-string v13, "extra.IWLAN_CHECKBOX_CHECKED"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    invoke-virtual {v12, v13}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 327
    :cond_8
    const-string v12, "extra.IWLAN_ALERTDIALOG_MESSAGE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 328
    const-string v12, "extra.IWLAN_ALERTDIALOG_MESSAGE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/OriginalSettings/wifi/IwlanEnabler;->showAlertDialog(Ljava/lang/String;)V

    .line 331
    :cond_9
    return-void

    .line 279
    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/IwlanEnabler;->mPdgDomainName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/OriginalSettings/wifi/IwlanEnabler;->getPdgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_3

    .line 285
    :cond_b
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/wifi/IwlanEnabler;->mContext:Landroid/content/Context;

    const v14, 0x7f0d0a43

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_4

    .line 298
    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/IwlanEnabler;->mIwlanCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_5

    .line 301
    :cond_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/IwlanEnabler;->mIwlanCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_5

    .line 304
    :cond_e
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/OriginalSettings/wifi/IwlanEnabler;->mIwlandState:I

    const/4 v13, 0x1

    if-eq v12, v13, :cond_f

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/OriginalSettings/wifi/IwlanEnabler;->mIwlandState:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_10

    .line 305
    :cond_f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/IwlanEnabler;->mIwlanCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 306
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/IwlanEnabler;->mIwlanCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_6

    .line 307
    :cond_10
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/OriginalSettings/wifi/IwlanEnabler;->mIwlandState:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_6

    .line 309
    invoke-direct/range {p0 .. p0}, Lcom/android/OriginalSettings/wifi/IwlanEnabler;->isAvailableDataStorage()Z

    move-result v12

    if-eqz v12, :cond_11

    .line 310
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/IwlanEnabler;->mIwlanCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 314
    :goto_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/IwlanEnabler;->mIwlanCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_6

    .line 312
    :cond_11
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/IwlanEnabler;->mIwlanCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_7

    .line 263
    .restart local v8       #jsonObject:Lorg/json/JSONObject;
    .restart local v9       #jsonString:Ljava/lang/String;
    :catch_1
    move-exception v3

    move-object v7, v8

    .end local v8           #jsonObject:Lorg/json/JSONObject;
    .restart local v7       #jsonObject:Lorg/json/JSONObject;
    goto/16 :goto_2
.end method