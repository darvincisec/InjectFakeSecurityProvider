.class Lorg/slf4j/impl/AndroidLoggerFactory;
.super Ljava/lang/Object;
.source "AndroidLoggerFactory.java"

# interfaces
.implements Lorg/slf4j/ILoggerFactory;


# static fields
.field static final ANONYMOUS_TAG:Ljava/lang/String; = "null"

.field static final TAG_MAX_LENGTH:I = 0x17


# instance fields
.field private final loggerMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/slf4j/Logger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/slf4j/impl/AndroidLoggerFactory;->loggerMap:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method private static getSimpleName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "loggerName"    # Ljava/lang/String;

    .prologue
    .line 118
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 119
    .local v1, "length":I
    const/16 v2, 0x2e

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 120
    .local v0, "lastPeriodIndex":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    sub-int v2, v1, v2

    const/16 v3, 0x17

    if-gt v2, v3, :cond_0

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x2a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, -0x17

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method static loggerNameToTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "loggerName"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x2e

    const/16 v7, 0x17

    .line 74
    if-nez p0, :cond_1

    .line 75
    const-string/jumbo p0, "null"

    .line 113
    .end local p0    # "loggerName":Ljava/lang/String;
    .local v2, "length":I
    :cond_0
    :goto_0
    return-object p0

    .line 78
    .end local v2    # "length":I
    .restart local p0    # "loggerName":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 79
    .restart local v2    # "length":I
    if-le v2, v7, :cond_0

    .line 83
    const/4 v3, 0x0

    .line 84
    .local v3, "tagLength":I
    const/4 v1, 0x0

    .line 86
    .local v1, "lastTokenIndex":I
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v6, 0x1a

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 87
    .local v4, "tagName":Ljava/lang/StringBuilder;
    :cond_2
    invoke-virtual {p0, v8, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .local v0, "lastPeriodIndex":I
    const/4 v6, -0x1

    if-eq v0, v6, :cond_4

    .line 88
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 90
    sub-int v5, v0, v1

    .line 91
    .local v5, "tokenLength":I
    const/4 v6, 0x1

    if-le v5, v6, :cond_3

    .line 92
    const/16 v6, 0x2a

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 94
    :cond_3
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 95
    add-int/lit8 v1, v0, 0x1

    .line 98
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .line 99
    if-le v3, v7, :cond_2

    .line 100
    invoke-static {p0}, Lorg/slf4j/impl/AndroidLoggerFactory;->getSimpleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 106
    .end local v5    # "tokenLength":I
    :cond_4
    sub-int v5, v2, v1

    .line 107
    .restart local v5    # "tokenLength":I
    if-eqz v3, :cond_5

    add-int v6, v3, v5

    if-le v6, v7, :cond_6

    .line 108
    :cond_5
    invoke-static {p0}, Lorg/slf4j/impl/AndroidLoggerFactory;->getSimpleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 112
    :cond_6
    invoke-virtual {v4, p0, v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-static {p1}, Lorg/slf4j/impl/AndroidLoggerFactory;->loggerNameToTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 50
    .local v3, "tag":Ljava/lang/String;
    iget-object v4, p0, Lorg/slf4j/impl/AndroidLoggerFactory;->loggerMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/slf4j/Logger;

    .line 51
    .local v0, "logger":Lorg/slf4j/Logger;
    if-nez v0, :cond_0

    .line 52
    new-instance v1, Lorg/slf4j/impl/AndroidLoggerAdapter;

    invoke-direct {v1, v3}, Lorg/slf4j/impl/AndroidLoggerAdapter;-><init>(Ljava/lang/String;)V

    .line 53
    .local v1, "newInstance":Lorg/slf4j/Logger;
    iget-object v4, p0, Lorg/slf4j/impl/AndroidLoggerFactory;->loggerMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v3, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/slf4j/Logger;

    .line 54
    .local v2, "oldInstance":Lorg/slf4j/Logger;
    if-nez v2, :cond_1

    move-object v0, v1

    .line 56
    .end local v1    # "newInstance":Lorg/slf4j/Logger;
    .end local v2    # "oldInstance":Lorg/slf4j/Logger;
    :cond_0
    :goto_0
    return-object v0

    .restart local v1    # "newInstance":Lorg/slf4j/Logger;
    .restart local v2    # "oldInstance":Lorg/slf4j/Logger;
    :cond_1
    move-object v0, v2

    .line 54
    goto :goto_0
.end method
