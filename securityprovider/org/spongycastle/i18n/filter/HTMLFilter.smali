.class public Lorg/spongycastle/i18n/filter/HTMLFilter;
.super Ljava/lang/Object;
.source "HTMLFilter.java"

# interfaces
.implements Lorg/spongycastle/i18n/filter/Filter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFilter(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 12
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 13
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 14
    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 16
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    .line 17
    .local v1, "ch":C
    packed-switch v1, :pswitch_data_0

    .line 56
    :pswitch_0
    add-int/lit8 v2, v2, -0x3

    .line 58
    :goto_1
    add-int/lit8 v2, v2, 0x4

    .line 59
    goto :goto_0

    .line 20
    :pswitch_1
    add-int/lit8 v3, v2, 0x1

    const-string v4, "&#60"

    invoke-virtual {v0, v2, v3, v4}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 23
    :pswitch_2
    add-int/lit8 v3, v2, 0x1

    const-string v4, "&#62"

    invoke-virtual {v0, v2, v3, v4}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 26
    :pswitch_3
    add-int/lit8 v3, v2, 0x1

    const-string v4, "&#40"

    invoke-virtual {v0, v2, v3, v4}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 29
    :pswitch_4
    add-int/lit8 v3, v2, 0x1

    const-string v4, "&#41"

    invoke-virtual {v0, v2, v3, v4}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 32
    :pswitch_5
    add-int/lit8 v3, v2, 0x1

    const-string v4, "&#35"

    invoke-virtual {v0, v2, v3, v4}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 35
    :pswitch_6
    add-int/lit8 v3, v2, 0x1

    const-string v4, "&#38"

    invoke-virtual {v0, v2, v3, v4}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 38
    :pswitch_7
    add-int/lit8 v3, v2, 0x1

    const-string v4, "&#34"

    invoke-virtual {v0, v2, v3, v4}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 41
    :pswitch_8
    add-int/lit8 v3, v2, 0x1

    const-string v4, "&#39"

    invoke-virtual {v0, v2, v3, v4}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 44
    :pswitch_9
    add-int/lit8 v3, v2, 0x1

    const-string v4, "&#37"

    invoke-virtual {v0, v2, v3, v4}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 47
    :pswitch_a
    add-int/lit8 v3, v2, 0x1

    const-string v4, "&#59"

    invoke-virtual {v0, v2, v3, v4}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 50
    :pswitch_b
    add-int/lit8 v3, v2, 0x1

    const-string v4, "&#43"

    invoke-virtual {v0, v2, v3, v4}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 53
    :pswitch_c
    add-int/lit8 v3, v2, 0x1

    const-string v4, "&#45"

    invoke-virtual {v0, v2, v3, v4}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 60
    .end local v1    # "ch":C
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 17
    nop

    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_7
        :pswitch_5
        :pswitch_0
        :pswitch_9
        :pswitch_6
        :pswitch_8
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public doFilterUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lorg/spongycastle/i18n/filter/HTMLFilter;->doFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
