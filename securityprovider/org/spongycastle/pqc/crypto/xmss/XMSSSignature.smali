.class public final Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature;
.super Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature;
.source "XMSSSignature.java"

# interfaces
.implements Lorg/spongycastle/pqc/crypto/xmss/XMSSStoreableObjectInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature$Builder;
    }
.end annotation


# instance fields
.field private final index:I

.field private final random:[B


# direct methods
.method private constructor <init>(Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature$Builder;)V
    .locals 4
    .param p1, "builder"    # Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature$Builder;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature;-><init>(Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;)V

    .line 19
    invoke-static {p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature$Builder;->access$000(Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature$Builder;)I

    move-result v2

    iput v2, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature;->index:I

    .line 20
    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature;->getParams()Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;->getDigestSize()I

    move-result v0

    .line 21
    .local v0, "n":I
    invoke-static {p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature$Builder;->access$100(Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature$Builder;)[B

    move-result-object v1

    .line 22
    .local v1, "tmpRandom":[B
    if-eqz v1, :cond_1

    .line 24
    array-length v2, v1

    if-eq v2, v0, :cond_0

    .line 26
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "size of random needs to be equal to size of digest"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 28
    :cond_0
    iput-object v1, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature;->random:[B

    .line 34
    :goto_0
    return-void

    .line 32
    :cond_1
    new-array v2, v0, [B

    iput-object v2, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature;->random:[B

    goto :goto_0
.end method

.method synthetic constructor <init>(Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature$Builder;Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature$Builder;
    .param p2, "x1"    # Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature$1;

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature;-><init>(Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature$Builder;)V

    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature;->index:I

    return v0
.end method

.method public getRandom()[B
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature;->random:[B

    invoke-static {v0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->cloneArray([B)[B

    move-result-object v0

    return-object v0
.end method

.method public toByteArray()[B
    .locals 12

    .prologue
    .line 96
    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature;->getParams()Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    move-result-object v11

    invoke-virtual {v11}, Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;->getDigestSize()I

    move-result v3

    .line 97
    .local v3, "n":I
    const/4 v2, 0x4

    .line 98
    .local v2, "indexSize":I
    move v6, v3

    .line 99
    .local v6, "randomSize":I
    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature;->getParams()Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    move-result-object v11

    invoke-virtual {v11}, Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;->getWOTSPlus()Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;

    move-result-object v11

    invoke-virtual {v11}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->getParams()Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;

    move-result-object v11

    invoke-virtual {v11}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->getLen()I

    move-result v11

    mul-int v8, v11, v3

    .line 100
    .local v8, "signatureSize":I
    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature;->getParams()Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    move-result-object v11

    invoke-virtual {v11}, Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;->getHeight()I

    move-result v11

    mul-int v0, v11, v3

    .line 101
    .local v0, "authPathSize":I
    add-int v11, v2, v6

    add-int/2addr v11, v8

    add-int v9, v11, v0

    .line 102
    .local v9, "totalSize":I
    new-array v4, v9, [B

    .line 103
    .local v4, "out":[B
    const/4 v5, 0x0

    .line 105
    .local v5, "position":I
    iget v11, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature;->index:I

    invoke-static {v11, v4, v5}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 106
    add-int/2addr v5, v2

    .line 108
    iget-object v11, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature;->random:[B

    invoke-static {v4, v11, v5}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->copyBytesAtOffset([B[BI)V

    .line 109
    add-int/lit8 v5, v6, 0x4

    .line 111
    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature;->getWOTSPlusSignature()Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusSignature;

    move-result-object v11

    invoke-virtual {v11}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusSignature;->toByteArray()[[B

    move-result-object v7

    .line 112
    .local v7, "signature":[[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v11, v7

    if-ge v1, v11, :cond_0

    .line 114
    aget-object v11, v7, v1

    invoke-static {v4, v11, v5}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->copyBytesAtOffset([B[BI)V

    .line 115
    add-int/2addr v5, v3

    .line 112
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 118
    :cond_0
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature;->getAuthPath()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v1, v11, :cond_1

    .line 120
    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature;->getAuthPath()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;

    invoke-virtual {v11}, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;->getValue()[B

    move-result-object v10

    .line 121
    .local v10, "value":[B
    invoke-static {v4, v10, v5}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->copyBytesAtOffset([B[BI)V

    .line 122
    add-int/2addr v5, v3

    .line 118
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 124
    .end local v10    # "value":[B
    :cond_1
    return-object v4
.end method
