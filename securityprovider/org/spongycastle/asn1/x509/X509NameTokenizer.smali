.class public Lorg/spongycastle/asn1/x509/X509NameTokenizer;
.super Ljava/lang/Object;
.source "X509NameTokenizer.java"


# instance fields
.field private buf:Ljava/lang/StringBuffer;

.field private index:I

.field private separator:C

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "oid"    # Ljava/lang/String;

    .prologue
    .line 20
    const/16 v0, 0x2c

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/asn1/x509/X509NameTokenizer;-><init>(Ljava/lang/String;C)V

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;C)V
    .locals 1
    .param p1, "oid"    # Ljava/lang/String;
    .param p2, "separator"    # C

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    .line 27
    iput-object p1, p0, Lorg/spongycastle/asn1/x509/X509NameTokenizer;->value:Ljava/lang/String;

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lorg/spongycastle/asn1/x509/X509NameTokenizer;->index:I

    .line 29
    iput-char p2, p0, Lorg/spongycastle/asn1/x509/X509NameTokenizer;->separator:C

    .line 30
    return-void
.end method


# virtual methods
.method public hasMoreTokens()Z
    .locals 2

    .prologue
    .line 34
    iget v0, p0, Lorg/spongycastle/asn1/x509/X509NameTokenizer;->index:I

    iget-object v1, p0, Lorg/spongycastle/asn1/x509/X509NameTokenizer;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextToken()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 39
    iget v5, p0, Lorg/spongycastle/asn1/x509/X509NameTokenizer;->index:I

    iget-object v6, p0, Lorg/spongycastle/asn1/x509/X509NameTokenizer;->value:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 41
    const/4 v4, 0x0

    .line 89
    :goto_0
    return-object v4

    .line 44
    :cond_0
    iget v5, p0, Lorg/spongycastle/asn1/x509/X509NameTokenizer;->index:I

    add-int/lit8 v1, v5, 0x1

    .line 45
    .local v1, "end":I
    const/4 v3, 0x0

    .line 46
    .local v3, "quoted":Z
    const/4 v2, 0x0

    .line 48
    .local v2, "escaped":Z
    iget-object v5, p0, Lorg/spongycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 50
    :goto_1
    iget-object v5, p0, Lorg/spongycastle/asn1/x509/X509NameTokenizer;->value:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v1, v5, :cond_7

    .line 52
    iget-object v5, p0, Lorg/spongycastle/asn1/x509/X509NameTokenizer;->value:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 54
    .local v0, "c":C
    const/16 v5, 0x22

    if-ne v0, v5, :cond_3

    .line 56
    if-nez v2, :cond_1

    .line 58
    if-nez v3, :cond_2

    const/4 v3, 0x1

    .line 60
    :cond_1
    :goto_2
    iget-object v5, p0, Lorg/spongycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 61
    const/4 v2, 0x0

    .line 84
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 85
    goto :goto_1

    :cond_2
    move v3, v4

    .line 58
    goto :goto_2

    .line 65
    :cond_3
    if-nez v2, :cond_4

    if-eqz v3, :cond_5

    .line 67
    :cond_4
    iget-object v5, p0, Lorg/spongycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 68
    const/4 v2, 0x0

    goto :goto_3

    .line 70
    :cond_5
    const/16 v5, 0x5c

    if-ne v0, v5, :cond_6

    .line 72
    iget-object v5, p0, Lorg/spongycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 73
    const/4 v2, 0x1

    goto :goto_3

    .line 75
    :cond_6
    iget-char v5, p0, Lorg/spongycastle/asn1/x509/X509NameTokenizer;->separator:C

    if-ne v0, v5, :cond_8

    .line 87
    .end local v0    # "c":C
    :cond_7
    iput v1, p0, Lorg/spongycastle/asn1/x509/X509NameTokenizer;->index:I

    .line 89
    iget-object v4, p0, Lorg/spongycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 81
    .restart local v0    # "c":C
    :cond_8
    iget-object v5, p0, Lorg/spongycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3
.end method
