.class public Lorg/spongycastle/util/Properties;
.super Ljava/lang/Object;
.source "Properties.java"


# static fields
.field private static final threadProperties:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/spongycastle/util/Properties;->threadProperties:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method static synthetic access$000()Ljava/lang/ThreadLocal;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lorg/spongycastle/util/Properties;->threadProperties:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method public static asBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 2
    .param p0, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-static {p0}, Lorg/spongycastle/util/Properties;->fetchProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "p":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 111
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 114
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static asKeySet(Ljava/lang/String;)Ljava/util/Set;
    .locals 4
    .param p0, "propertyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 121
    .local v2, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p0}, Lorg/spongycastle/util/Properties;->fetchProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "p":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 125
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v3, ","

    invoke-direct {v1, v0, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .local v1, "sTok":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 128
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 132
    .end local v1    # "sTok":Ljava/util/StringTokenizer;
    :cond_0
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    return-object v3
.end method

.method private static fetchProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 137
    new-instance v0, Lorg/spongycastle/util/Properties$1;

    invoke-direct {v0, p0}, Lorg/spongycastle/util/Properties$1;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static isOverrideSet(Ljava/lang/String;)Z
    .locals 5
    .param p0, "propertyName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 36
    :try_start_0
    invoke-static {p0}, Lorg/spongycastle/util/Properties;->fetchProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, "p":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 40
    const-string v3, "true"

    invoke-static {v1}, Lorg/spongycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 47
    .end local v1    # "p":Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 45
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/security/AccessControlException;
    goto :goto_0
.end method

.method public static removeThreadOverride(Ljava/lang/String;)Z
    .locals 3
    .param p0, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-static {p0}, Lorg/spongycastle/util/Properties;->isOverrideSet(Ljava/lang/String;)Z

    move-result v0

    .line 85
    .local v0, "isSet":Z
    sget-object v2, Lorg/spongycastle/util/Properties;->threadProperties:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 86
    .local v1, "localProps":Ljava/util/Map;
    if-nez v1, :cond_0

    .line 88
    const/4 v0, 0x0

    .line 102
    .end local v0    # "isSet":Z
    :goto_0
    return v0

    .line 91
    .restart local v0    # "isSet":Z
    :cond_0
    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 95
    sget-object v2, Lorg/spongycastle/util/Properties;->threadProperties:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_0

    .line 99
    :cond_1
    sget-object v2, Lorg/spongycastle/util/Properties;->threadProperties:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static setThreadOverride(Ljava/lang/String;Z)Z
    .locals 3
    .param p0, "propertyName"    # Ljava/lang/String;
    .param p1, "enable"    # Z

    .prologue
    .line 60
    invoke-static {p0}, Lorg/spongycastle/util/Properties;->isOverrideSet(Ljava/lang/String;)Z

    move-result v0

    .line 62
    .local v0, "isSet":Z
    sget-object v2, Lorg/spongycastle/util/Properties;->threadProperties:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 63
    .local v1, "localProps":Ljava/util/Map;
    if-nez v1, :cond_0

    .line 65
    new-instance v1, Ljava/util/HashMap;

    .end local v1    # "localProps":Ljava/util/Map;
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 68
    .restart local v1    # "localProps":Ljava/util/Map;
    :cond_0
    if-eqz p1, :cond_1

    const-string v2, "true"

    :goto_0
    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v2, Lorg/spongycastle/util/Properties;->threadProperties:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 72
    return v0

    .line 68
    :cond_1
    const-string v2, "false"

    goto :goto_0
.end method
