.class public final Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;
.super Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
.source "XMSSMTPublicKeyParameters.java"

# interfaces
.implements Lorg/spongycastle/pqc/crypto/xmss/XMSSStoreableObjectInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters$Builder;
    }
.end annotation


# instance fields
.field private final params:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;

.field private final publicSeed:[B

.field private final root:[B


# direct methods
.method private constructor <init>(Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters$Builder;)V
    .locals 10
    .param p1, "builder"    # Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters$Builder;

    .prologue
    .line 20
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    .line 21
    invoke-static {p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters$Builder;->access$000(Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters$Builder;)Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;

    move-result-object v8

    iput-object v8, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;

    .line 22
    iget-object v8, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;

    if-nez v8, :cond_0

    .line 24
    new-instance v8, Ljava/lang/NullPointerException;

    const-string v9, "params == null"

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 26
    :cond_0
    iget-object v8, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;

    invoke-virtual {v8}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;->getDigestSize()I

    move-result v0

    .line 27
    .local v0, "n":I
    invoke-static {p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters$Builder;->access$100(Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters$Builder;)[B

    move-result-object v2

    .line 28
    .local v2, "publicKey":[B
    if-eqz v2, :cond_2

    .line 32
    move v4, v0

    .line 33
    .local v4, "rootSize":I
    move v3, v0

    .line 34
    .local v3, "publicSeedSize":I
    add-int v7, v4, v3

    .line 35
    .local v7, "totalSize":I
    array-length v8, v2

    if-eq v8, v7, :cond_1

    .line 37
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "public key has wrong size"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 39
    :cond_1
    const/4 v1, 0x0

    .line 45
    .local v1, "position":I
    invoke-static {v2, v1, v4}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->extractBytesAtOffset([BII)[B

    move-result-object v8

    iput-object v8, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;->root:[B

    .line 46
    add-int/2addr v1, v4

    .line 47
    invoke-static {v2, v1, v3}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->extractBytesAtOffset([BII)[B

    move-result-object v8

    iput-object v8, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;->publicSeed:[B

    .line 79
    .end local v1    # "position":I
    .end local v3    # "publicSeedSize":I
    .end local v4    # "rootSize":I
    .end local v7    # "totalSize":I
    :goto_0
    return-void

    .line 52
    :cond_2
    invoke-static {p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters$Builder;->access$200(Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters$Builder;)[B

    move-result-object v6

    .line 53
    .local v6, "tmpRoot":[B
    if-eqz v6, :cond_4

    .line 55
    array-length v8, v6

    if-eq v8, v0, :cond_3

    .line 57
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "length of root must be equal to length of digest"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 59
    :cond_3
    iput-object v6, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;->root:[B

    .line 65
    :goto_1
    invoke-static {p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters$Builder;->access$300(Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters$Builder;)[B

    move-result-object v5

    .line 66
    .local v5, "tmpPublicSeed":[B
    if-eqz v5, :cond_6

    .line 68
    array-length v8, v5

    if-eq v8, v0, :cond_5

    .line 70
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "length of publicSeed must be equal to length of digest"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 63
    .end local v5    # "tmpPublicSeed":[B
    :cond_4
    new-array v8, v0, [B

    iput-object v8, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;->root:[B

    goto :goto_1

    .line 72
    .restart local v5    # "tmpPublicSeed":[B
    :cond_5
    iput-object v5, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;->publicSeed:[B

    goto :goto_0

    .line 76
    :cond_6
    new-array v8, v0, [B

    iput-object v8, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;->publicSeed:[B

    goto :goto_0
.end method

.method synthetic constructor <init>(Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters$Builder;Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters$Builder;
    .param p2, "x1"    # Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters$1;

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;-><init>(Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters$Builder;)V

    return-void
.end method


# virtual methods
.method public getParameters()Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;

    return-object v0
.end method

.method public getPublicSeed()[B
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;->publicSeed:[B

    invoke-static {v0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->cloneArray([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getRoot()[B
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;->root:[B

    invoke-static {v0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->cloneArray([B)[B

    move-result-object v0

    return-object v0
.end method

.method public toByteArray()[B
    .locals 7

    .prologue
    .line 124
    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;

    invoke-virtual {v6}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;->getDigestSize()I

    move-result v0

    .line 126
    .local v0, "n":I
    move v4, v0

    .line 127
    .local v4, "rootSize":I
    move v3, v0

    .line 128
    .local v3, "publicSeedSize":I
    add-int v5, v4, v3

    .line 130
    .local v5, "totalSize":I
    new-array v1, v5, [B

    .line 131
    .local v1, "out":[B
    const/4 v2, 0x0

    .line 138
    .local v2, "position":I
    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;->root:[B

    invoke-static {v1, v6, v2}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->copyBytesAtOffset([B[BI)V

    .line 139
    add-int/2addr v2, v4

    .line 141
    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;->publicSeed:[B

    invoke-static {v1, v6, v2}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->copyBytesAtOffset([B[BI)V

    .line 142
    return-object v1
.end method
