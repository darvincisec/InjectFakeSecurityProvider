.class public Lorg/spongycastle/i18n/MissingEntryException;
.super Ljava/lang/RuntimeException;
.source "MissingEntryException.java"


# instance fields
.field private debugMsg:Ljava/lang/String;

.field protected final key:Ljava/lang/String;

.field protected final loader:Ljava/lang/ClassLoader;

.field protected final locale:Ljava/util/Locale;

.field protected final resource:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "resource"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "locale"    # Ljava/util/Locale;
    .param p5, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 20
    iput-object p2, p0, Lorg/spongycastle/i18n/MissingEntryException;->resource:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lorg/spongycastle/i18n/MissingEntryException;->key:Ljava/lang/String;

    .line 22
    iput-object p4, p0, Lorg/spongycastle/i18n/MissingEntryException;->locale:Ljava/util/Locale;

    .line 23
    iput-object p5, p0, Lorg/spongycastle/i18n/MissingEntryException;->loader:Ljava/lang/ClassLoader;

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .param p3, "resource"    # Ljava/lang/String;
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "locale"    # Ljava/util/Locale;
    .param p6, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    iput-object p3, p0, Lorg/spongycastle/i18n/MissingEntryException;->resource:Ljava/lang/String;

    .line 30
    iput-object p4, p0, Lorg/spongycastle/i18n/MissingEntryException;->key:Ljava/lang/String;

    .line 31
    iput-object p5, p0, Lorg/spongycastle/i18n/MissingEntryException;->locale:Ljava/util/Locale;

    .line 32
    iput-object p6, p0, Lorg/spongycastle/i18n/MissingEntryException;->loader:Ljava/lang/ClassLoader;

    .line 33
    return-void
.end method


# virtual methods
.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/spongycastle/i18n/MissingEntryException;->loader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getDebugMsg()Ljava/lang/String;
    .locals 4

    .prologue
    .line 57
    iget-object v2, p0, Lorg/spongycastle/i18n/MissingEntryException;->debugMsg:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not find entry "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/spongycastle/i18n/MissingEntryException;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in resource file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/spongycastle/i18n/MissingEntryException;->resource:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for the locale "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/spongycastle/i18n/MissingEntryException;->locale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/i18n/MissingEntryException;->debugMsg:Ljava/lang/String;

    .line 60
    iget-object v2, p0, Lorg/spongycastle/i18n/MissingEntryException;->loader:Ljava/lang/ClassLoader;

    instance-of v2, v2, Ljava/net/URLClassLoader;

    if-eqz v2, :cond_0

    .line 62
    iget-object v2, p0, Lorg/spongycastle/i18n/MissingEntryException;->loader:Ljava/lang/ClassLoader;

    check-cast v2, Ljava/net/URLClassLoader;

    invoke-virtual {v2}, Ljava/net/URLClassLoader;->getURLs()[Ljava/net/URL;

    move-result-object v1

    .line 63
    .local v1, "urls":[Ljava/net/URL;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/spongycastle/i18n/MissingEntryException;->debugMsg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " The following entries in the classpath were searched: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/i18n/MissingEntryException;->debugMsg:Ljava/lang/String;

    .line 64
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-eq v0, v2, :cond_0

    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/spongycastle/i18n/MissingEntryException;->debugMsg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/i18n/MissingEntryException;->debugMsg:Ljava/lang/String;

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    .end local v0    # "i":I
    .end local v1    # "urls":[Ljava/net/URL;
    :cond_0
    iget-object v2, p0, Lorg/spongycastle/i18n/MissingEntryException;->debugMsg:Ljava/lang/String;

    return-object v2
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lorg/spongycastle/i18n/MissingEntryException;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/spongycastle/i18n/MissingEntryException;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public getResource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/spongycastle/i18n/MissingEntryException;->resource:Ljava/lang/String;

    return-object v0
.end method
