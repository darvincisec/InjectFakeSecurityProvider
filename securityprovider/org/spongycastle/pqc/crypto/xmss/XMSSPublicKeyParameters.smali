.class public final Lorg/spongycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;
.super Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
.source "XMSSPublicKeyParameters.java"

# interfaces
.implements Lorg/spongycastle/pqc/crypto/xmss/XMSSStoreableObjectInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;
    }
.end annotation


# instance fields
.field private final params:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

.field private final publicSeed:[B

.field private final root:[B


# direct methods
.method private constructor <init>(Lorg/spongycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;)V
    .locals 10
    .param p1, "builder"    # Lorg/spongycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;

    .prologue
    .line 23
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    .line 24
    invoke-static {p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;->access$000(Lorg/spongycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;)Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    move-result-object v8

    iput-object v8, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    .line 25
    iget-object v8, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    if-nez v8, :cond_0

    .line 27
    new-instance v8, Ljava/lang/NullPointerException;

    const-string v9, "params == null"

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 29
    :cond_0
    iget-object v8, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-virtual {v8}, Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;->getDigestSize()I

    move-result v0

    .line 30
    .local v0, "n":I
    invoke-static {p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;->access$100(Lorg/spongycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;)[B

    move-result-object v2

    .line 31
    .local v2, "publicKey":[B
    if-eqz v2, :cond_2

    .line 35
    move v4, v0

    .line 36
    .local v4, "rootSize":I
    move v3, v0

    .line 38
    .local v3, "publicSeedSize":I
    add-int v7, v4, v3

    .line 39
    .local v7, "totalSize":I
    array-length v8, v2

    if-eq v8, v7, :cond_1

    .line 41
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "public key has wrong size"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 43
    :cond_1
    const/4 v1, 0x0

    .line 50
    .local v1, "position":I
    invoke-static {v2, v1, v4}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->extractBytesAtOffset([BII)[B

    move-result-object v8

    iput-object v8, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->root:[B

    .line 51
    add-int/2addr v1, v4

    .line 52
    invoke-static {v2, v1, v3}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->extractBytesAtOffset([BII)[B

    move-result-object v8

    iput-object v8, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->publicSeed:[B

    .line 84
    .end local v1    # "position":I
    .end local v3    # "publicSeedSize":I
    .end local v4    # "rootSize":I
    .end local v7    # "totalSize":I
    :goto_0
    return-void

    .line 57
    :cond_2
    invoke-static {p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;->access$200(Lorg/spongycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;)[B

    move-result-object v6

    .line 58
    .local v6, "tmpRoot":[B
    if-eqz v6, :cond_4

    .line 60
    array-length v8, v6

    if-eq v8, v0, :cond_3

    .line 62
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "length of root must be equal to length of digest"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 64
    :cond_3
    iput-object v6, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->root:[B

    .line 70
    :goto_1
    invoke-static {p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;->access$300(Lorg/spongycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;)[B

    move-result-object v5

    .line 71
    .local v5, "tmpPublicSeed":[B
    if-eqz v5, :cond_6

    .line 73
    array-length v8, v5

    if-eq v8, v0, :cond_5

    .line 75
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "length of publicSeed must be equal to length of digest"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 68
    .end local v5    # "tmpPublicSeed":[B
    :cond_4
    new-array v8, v0, [B

    iput-object v8, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->root:[B

    goto :goto_1

    .line 77
    .restart local v5    # "tmpPublicSeed":[B
    :cond_5
    iput-object v5, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->publicSeed:[B

    goto :goto_0

    .line 81
    :cond_6
    new-array v8, v0, [B

    iput-object v8, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->publicSeed:[B

    goto :goto_0
.end method

.method synthetic constructor <init>(Lorg/spongycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;Lorg/spongycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/spongycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;
    .param p2, "x1"    # Lorg/spongycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$1;

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;-><init>(Lorg/spongycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;)V

    return-void
.end method


# virtual methods
.method public getParameters()Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    return-object v0
.end method

.method public getPublicSeed()[B
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->publicSeed:[B

    invoke-static {v0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->cloneArray([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getRoot()[B
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->root:[B

    invoke-static {v0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->cloneArray([B)[B

    move-result-object v0

    return-object v0
.end method

.method public toByteArray()[B
    .locals 7

    .prologue
    .line 129
    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-virtual {v6}, Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;->getDigestSize()I

    move-result v0

    .line 131
    .local v0, "n":I
    move v4, v0

    .line 132
    .local v4, "rootSize":I
    move v3, v0

    .line 134
    .local v3, "publicSeedSize":I
    add-int v5, v4, v3

    .line 135
    .local v5, "totalSize":I
    new-array v1, v5, [B

    .line 136
    .local v1, "out":[B
    const/4 v2, 0x0

    .line 143
    .local v2, "position":I
    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->root:[B

    invoke-static {v1, v6, v2}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->copyBytesAtOffset([B[BI)V

    .line 144
    add-int/2addr v2, v4

    .line 146
    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->publicSeed:[B

    invoke-static {v1, v6, v2}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->copyBytesAtOffset([B[BI)V

    .line 147
    return-object v1
.end method
