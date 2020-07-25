.class public Lorg/spongycastle/asn1/OIDTokenizer;
.super Ljava/lang/Object;
.source "OIDTokenizer.java"


# instance fields
.field private index:I

.field private oid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "oid"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/spongycastle/asn1/OIDTokenizer;->oid:Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/asn1/OIDTokenizer;->index:I

    .line 24
    return-void
.end method


# virtual methods
.method public hasMoreTokens()Z
    .locals 2

    .prologue
    .line 33
    iget v0, p0, Lorg/spongycastle/asn1/OIDTokenizer;->index:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextToken()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 43
    iget v2, p0, Lorg/spongycastle/asn1/OIDTokenizer;->index:I

    if-ne v2, v5, :cond_0

    .line 45
    const/4 v1, 0x0

    .line 61
    :goto_0
    return-object v1

    .line 49
    :cond_0
    iget-object v2, p0, Lorg/spongycastle/asn1/OIDTokenizer;->oid:Ljava/lang/String;

    const/16 v3, 0x2e

    iget v4, p0, Lorg/spongycastle/asn1/OIDTokenizer;->index:I

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 51
    .local v0, "end":I
    if-ne v0, v5, :cond_1

    .line 53
    iget-object v2, p0, Lorg/spongycastle/asn1/OIDTokenizer;->oid:Ljava/lang/String;

    iget v3, p0, Lorg/spongycastle/asn1/OIDTokenizer;->index:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, "token":Ljava/lang/String;
    iput v5, p0, Lorg/spongycastle/asn1/OIDTokenizer;->index:I

    goto :goto_0

    .line 58
    .end local v1    # "token":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lorg/spongycastle/asn1/OIDTokenizer;->oid:Ljava/lang/String;

    iget v3, p0, Lorg/spongycastle/asn1/OIDTokenizer;->index:I

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 60
    .restart local v1    # "token":Ljava/lang/String;
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/spongycastle/asn1/OIDTokenizer;->index:I

    goto :goto_0
.end method
