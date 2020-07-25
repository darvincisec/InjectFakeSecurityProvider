.class public Lorg/spongycastle/i18n/LocalizedMessage;
.super Ljava/lang/Object;
.source "LocalizedMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;
    }
.end annotation


# static fields
.field public static final DEFAULT_ENCODING:Ljava/lang/String; = "ISO-8859-1"


# instance fields
.field protected arguments:Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;

.field protected encoding:Ljava/lang/String;

.field protected extraArgs:Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;

.field protected filter:Lorg/spongycastle/i18n/filter/Filter;

.field protected final id:Ljava/lang/String;

.field protected loader:Ljava/lang/ClassLoader;

.field protected final resource:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "resource"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, "ISO-8859-1"

    iput-object v0, p0, Lorg/spongycastle/i18n/LocalizedMessage;->encoding:Ljava/lang/String;

    .line 29
    iput-object v1, p0, Lorg/spongycastle/i18n/LocalizedMessage;->extraArgs:Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;

    .line 31
    iput-object v1, p0, Lorg/spongycastle/i18n/LocalizedMessage;->filter:Lorg/spongycastle/i18n/filter/Filter;

    .line 33
    iput-object v1, p0, Lorg/spongycastle/i18n/LocalizedMessage;->loader:Ljava/lang/ClassLoader;

    .line 44
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 46
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 48
    :cond_1
    iput-object p2, p0, Lorg/spongycastle/i18n/LocalizedMessage;->id:Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lorg/spongycastle/i18n/LocalizedMessage;->resource:Ljava/lang/String;

    .line 50
    new-instance v0, Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;

    invoke-direct {v0, p0}, Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;-><init>(Lorg/spongycastle/i18n/LocalizedMessage;)V

    iput-object v0, p0, Lorg/spongycastle/i18n/LocalizedMessage;->arguments:Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "resource"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, "ISO-8859-1"

    iput-object v0, p0, Lorg/spongycastle/i18n/LocalizedMessage;->encoding:Ljava/lang/String;

    .line 29
    iput-object v1, p0, Lorg/spongycastle/i18n/LocalizedMessage;->extraArgs:Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;

    .line 31
    iput-object v1, p0, Lorg/spongycastle/i18n/LocalizedMessage;->filter:Lorg/spongycastle/i18n/filter/Filter;

    .line 33
    iput-object v1, p0, Lorg/spongycastle/i18n/LocalizedMessage;->loader:Ljava/lang/ClassLoader;

    .line 64
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 66
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 68
    :cond_1
    iput-object p2, p0, Lorg/spongycastle/i18n/LocalizedMessage;->id:Ljava/lang/String;

    .line 69
    iput-object p1, p0, Lorg/spongycastle/i18n/LocalizedMessage;->resource:Ljava/lang/String;

    .line 70
    new-instance v0, Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;

    invoke-direct {v0, p0}, Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;-><init>(Lorg/spongycastle/i18n/LocalizedMessage;)V

    iput-object v0, p0, Lorg/spongycastle/i18n/LocalizedMessage;->arguments:Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;

    .line 71
    invoke-static {p3}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 73
    new-instance v0, Ljava/io/UnsupportedEncodingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The encoding \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" is not supported."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_2
    iput-object p3, p0, Lorg/spongycastle/i18n/LocalizedMessage;->encoding:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "resource"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "encoding"    # Ljava/lang/String;
    .param p4, "arguments"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, "ISO-8859-1"

    iput-object v0, p0, Lorg/spongycastle/i18n/LocalizedMessage;->encoding:Ljava/lang/String;

    .line 29
    iput-object v1, p0, Lorg/spongycastle/i18n/LocalizedMessage;->extraArgs:Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;

    .line 31
    iput-object v1, p0, Lorg/spongycastle/i18n/LocalizedMessage;->filter:Lorg/spongycastle/i18n/filter/Filter;

    .line 33
    iput-object v1, p0, Lorg/spongycastle/i18n/LocalizedMessage;->loader:Ljava/lang/ClassLoader;

    .line 109
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p4, :cond_1

    .line 111
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 113
    :cond_1
    iput-object p2, p0, Lorg/spongycastle/i18n/LocalizedMessage;->id:Ljava/lang/String;

    .line 114
    iput-object p1, p0, Lorg/spongycastle/i18n/LocalizedMessage;->resource:Ljava/lang/String;

    .line 115
    new-instance v0, Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;

    invoke-direct {v0, p0, p4}, Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;-><init>(Lorg/spongycastle/i18n/LocalizedMessage;[Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/spongycastle/i18n/LocalizedMessage;->arguments:Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;

    .line 116
    invoke-static {p3}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 118
    new-instance v0, Ljava/io/UnsupportedEncodingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The encoding \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" is not supported."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_2
    iput-object p3, p0, Lorg/spongycastle/i18n/LocalizedMessage;->encoding:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "resource"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "arguments"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, "ISO-8859-1"

    iput-object v0, p0, Lorg/spongycastle/i18n/LocalizedMessage;->encoding:Ljava/lang/String;

    .line 29
    iput-object v1, p0, Lorg/spongycastle/i18n/LocalizedMessage;->extraArgs:Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;

    .line 31
    iput-object v1, p0, Lorg/spongycastle/i18n/LocalizedMessage;->filter:Lorg/spongycastle/i18n/filter/Filter;

    .line 33
    iput-object v1, p0, Lorg/spongycastle/i18n/LocalizedMessage;->loader:Ljava/lang/ClassLoader;

    .line 88
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 90
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 92
    :cond_1
    iput-object p2, p0, Lorg/spongycastle/i18n/LocalizedMessage;->id:Ljava/lang/String;

    .line 93
    iput-object p1, p0, Lorg/spongycastle/i18n/LocalizedMessage;->resource:Ljava/lang/String;

    .line 94
    new-instance v0, Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;

    invoke-direct {v0, p0, p3}, Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;-><init>(Lorg/spongycastle/i18n/LocalizedMessage;[Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/spongycastle/i18n/LocalizedMessage;->arguments:Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;

    .line 95
    return-void
.end method


# virtual methods
.method protected addExtraArgs(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 205
    iget-object v3, p0, Lorg/spongycastle/i18n/LocalizedMessage;->extraArgs:Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;

    if-eqz v3, :cond_1

    .line 207
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 208
    .local v2, "sb":Ljava/lang/StringBuffer;
    iget-object v3, p0, Lorg/spongycastle/i18n/LocalizedMessage;->extraArgs:Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;

    invoke-virtual {v3, p2}, Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;->getFilteredArgs(Ljava/util/Locale;)[Ljava/lang/Object;

    move-result-object v0

    .line 209
    .local v0, "filteredArgs":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 211
    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 209
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 213
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 215
    .end local v0    # "filteredArgs":[Ljava/lang/Object;
    .end local v1    # "i":I
    .end local v2    # "sb":Ljava/lang/StringBuffer;
    :cond_1
    return-object p1
.end method

.method protected formatWithTimeZone(Ljava/lang/String;[Ljava/lang/Object;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 5
    .param p1, "template"    # Ljava/lang/String;
    .param p2, "arguments"    # [Ljava/lang/Object;
    .param p3, "locale"    # Ljava/util/Locale;
    .param p4, "timezone"    # Ljava/util/TimeZone;

    .prologue
    .line 184
    new-instance v2, Ljava/text/MessageFormat;

    const-string v4, " "

    invoke-direct {v2, v4}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    .line 185
    .local v2, "mf":Ljava/text/MessageFormat;
    invoke-virtual {v2, p3}, Ljava/text/MessageFormat;->setLocale(Ljava/util/Locale;)V

    .line 186
    invoke-virtual {v2, p1}, Ljava/text/MessageFormat;->applyPattern(Ljava/lang/String;)V

    .line 187
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {p4, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 189
    invoke-virtual {v2}, Ljava/text/MessageFormat;->getFormats()[Ljava/text/Format;

    move-result-object v0

    .line 190
    .local v0, "formats":[Ljava/text/Format;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_1

    .line 192
    aget-object v4, v0, v1

    instance-of v4, v4, Ljava/text/DateFormat;

    if-eqz v4, :cond_0

    .line 194
    aget-object v3, v0, v1

    check-cast v3, Ljava/text/DateFormat;

    .line 195
    .local v3, "temp":Ljava/text/DateFormat;
    invoke-virtual {v3, p4}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 196
    invoke-virtual {v2, v1, v3}, Ljava/text/MessageFormat;->setFormat(ILjava/text/Format;)V

    .line 190
    .end local v3    # "temp":Ljava/text/DateFormat;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 200
    .end local v0    # "formats":[Ljava/text/Format;
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v2, p2}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public getArguments()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lorg/spongycastle/i18n/LocalizedMessage;->arguments:Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;

    invoke-virtual {v0}, Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;->getArguments()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lorg/spongycastle/i18n/LocalizedMessage;->loader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getEntry(Ljava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 11
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "loc"    # Ljava/util/Locale;
    .param p3, "timezone"    # Ljava/util/TimeZone;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/i18n/MissingEntryException;
        }
    .end annotation

    .prologue
    .line 134
    iget-object v3, p0, Lorg/spongycastle/i18n/LocalizedMessage;->id:Ljava/lang/String;

    .line 135
    .local v3, "entry":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 143
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/i18n/LocalizedMessage;->loader:Ljava/lang/ClassLoader;

    if-nez v0, :cond_3

    .line 145
    iget-object v0, p0, Lorg/spongycastle/i18n/LocalizedMessage;->resource:Ljava/lang/String;

    invoke-static {v0, p2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v6

    .line 151
    .local v6, "bundle":Ljava/util/ResourceBundle;
    :goto_0
    invoke-virtual {v6, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 152
    .local v8, "result":Ljava/lang/String;
    iget-object v0, p0, Lorg/spongycastle/i18n/LocalizedMessage;->encoding:Ljava/lang/String;

    const-string v1, "ISO-8859-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 154
    new-instance v9, Ljava/lang/String;

    const-string v0, "ISO-8859-1"

    invoke-virtual {v8, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/i18n/LocalizedMessage;->encoding:Ljava/lang/String;

    invoke-direct {v9, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .end local v8    # "result":Ljava/lang/String;
    .local v9, "result":Ljava/lang/String;
    move-object v8, v9

    .line 156
    .end local v9    # "result":Ljava/lang/String;
    .restart local v8    # "result":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/i18n/LocalizedMessage;->arguments:Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;

    invoke-virtual {v0}, Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 158
    iget-object v0, p0, Lorg/spongycastle/i18n/LocalizedMessage;->arguments:Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;

    invoke-virtual {v0, p2}, Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;->getFilteredArgs(Ljava/util/Locale;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v8, v0, p2, p3}, Lorg/spongycastle/i18n/LocalizedMessage;->formatWithTimeZone(Ljava/lang/String;[Ljava/lang/Object;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v8

    .line 160
    :cond_2
    invoke-virtual {p0, v8, p2}, Lorg/spongycastle/i18n/LocalizedMessage;->addExtraArgs(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    .line 161
    return-object v8

    .line 149
    .end local v6    # "bundle":Ljava/util/ResourceBundle;
    .end local v8    # "result":Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lorg/spongycastle/i18n/LocalizedMessage;->resource:Ljava/lang/String;

    iget-object v1, p0, Lorg/spongycastle/i18n/LocalizedMessage;->loader:Ljava/lang/ClassLoader;

    invoke-static {v0, p2, v1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .restart local v6    # "bundle":Ljava/util/ResourceBundle;
    goto :goto_0

    .line 163
    .end local v6    # "bundle":Ljava/util/ResourceBundle;
    :catch_0
    move-exception v7

    .line 165
    .local v7, "mre":Ljava/util/MissingResourceException;
    new-instance v0, Lorg/spongycastle/i18n/MissingEntryException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t find entry "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in resource file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/i18n/LocalizedMessage;->resource:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/i18n/LocalizedMessage;->resource:Ljava/lang/String;

    iget-object v4, p0, Lorg/spongycastle/i18n/LocalizedMessage;->loader:Ljava/lang/ClassLoader;

    if-eqz v4, :cond_4

    iget-object v5, p0, Lorg/spongycastle/i18n/LocalizedMessage;->loader:Ljava/lang/ClassLoader;

    :goto_1
    move-object v4, p2

    .line 169
    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/i18n/MissingEntryException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)V

    throw v0

    :cond_4
    invoke-virtual {p0}, Lorg/spongycastle/i18n/LocalizedMessage;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    goto :goto_1

    .line 171
    .end local v7    # "mre":Ljava/util/MissingResourceException;
    :catch_1
    move-exception v10

    .line 174
    .local v10, "use":Ljava/io/UnsupportedEncodingException;
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getExtraArgs()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lorg/spongycastle/i18n/LocalizedMessage;->extraArgs:Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/spongycastle/i18n/LocalizedMessage;->extraArgs:Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;

    invoke-virtual {v0}, Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;->getArguments()[Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getFilter()Lorg/spongycastle/i18n/filter/Filter;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lorg/spongycastle/i18n/LocalizedMessage;->filter:Lorg/spongycastle/i18n/filter/Filter;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lorg/spongycastle/i18n/LocalizedMessage;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getResource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lorg/spongycastle/i18n/LocalizedMessage;->resource:Ljava/lang/String;

    return-object v0
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 248
    iput-object p1, p0, Lorg/spongycastle/i18n/LocalizedMessage;->loader:Ljava/lang/ClassLoader;

    .line 249
    return-void
.end method

.method public setExtraArgument(Ljava/lang/Object;)V
    .locals 2
    .param p1, "extraArg"    # Ljava/lang/Object;

    .prologue
    .line 294
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lorg/spongycastle/i18n/LocalizedMessage;->setExtraArguments([Ljava/lang/Object;)V

    .line 295
    return-void
.end method

.method public setExtraArguments([Ljava/lang/Object;)V
    .locals 2
    .param p1, "extraArgs"    # [Ljava/lang/Object;

    .prologue
    .line 303
    if-eqz p1, :cond_0

    .line 305
    new-instance v0, Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;

    invoke-direct {v0, p0, p1}, Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;-><init>(Lorg/spongycastle/i18n/LocalizedMessage;[Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/spongycastle/i18n/LocalizedMessage;->extraArgs:Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;

    .line 306
    iget-object v0, p0, Lorg/spongycastle/i18n/LocalizedMessage;->extraArgs:Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;

    iget-object v1, p0, Lorg/spongycastle/i18n/LocalizedMessage;->filter:Lorg/spongycastle/i18n/filter/Filter;

    invoke-virtual {v0, v1}, Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;->setFilter(Lorg/spongycastle/i18n/filter/Filter;)V

    .line 312
    :goto_0
    return-void

    .line 310
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/i18n/LocalizedMessage;->extraArgs:Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;

    goto :goto_0
.end method

.method public setFilter(Lorg/spongycastle/i18n/filter/Filter;)V
    .locals 1
    .param p1, "filter"    # Lorg/spongycastle/i18n/filter/Filter;

    .prologue
    .line 224
    iget-object v0, p0, Lorg/spongycastle/i18n/LocalizedMessage;->arguments:Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;

    invoke-virtual {v0, p1}, Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;->setFilter(Lorg/spongycastle/i18n/filter/Filter;)V

    .line 225
    iget-object v0, p0, Lorg/spongycastle/i18n/LocalizedMessage;->extraArgs:Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lorg/spongycastle/i18n/LocalizedMessage;->extraArgs:Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;

    invoke-virtual {v0, p1}, Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;->setFilter(Lorg/spongycastle/i18n/filter/Filter;)V

    .line 229
    :cond_0
    iput-object p1, p0, Lorg/spongycastle/i18n/LocalizedMessage;->filter:Lorg/spongycastle/i18n/filter/Filter;

    .line 230
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 463
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 464
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "Resource: \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/i18n/LocalizedMessage;->resource:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 465
    const-string v1, "\" Id: \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/i18n/LocalizedMessage;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 466
    const-string v1, " Arguments: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/i18n/LocalizedMessage;->arguments:Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;

    invoke-virtual {v2}, Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;->getArguments()[Ljava/lang/Object;

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " normal"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 467
    iget-object v1, p0, Lorg/spongycastle/i18n/LocalizedMessage;->extraArgs:Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/spongycastle/i18n/LocalizedMessage;->extraArgs:Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;

    invoke-virtual {v1}, Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;->getArguments()[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_0

    .line 469
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/i18n/LocalizedMessage;->extraArgs:Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;

    invoke-virtual {v2}, Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;->getArguments()[Ljava/lang/Object;

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " extra"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 471
    :cond_0
    const-string v1, " Encoding: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/i18n/LocalizedMessage;->encoding:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 472
    const-string v1, " ClassLoader: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/i18n/LocalizedMessage;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 473
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
