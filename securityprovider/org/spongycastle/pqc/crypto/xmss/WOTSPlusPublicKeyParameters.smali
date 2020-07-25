.class final Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusPublicKeyParameters;
.super Ljava/lang/Object;
.source "WOTSPlusPublicKeyParameters.java"


# instance fields
.field private final publicKey:[[B


# direct methods
.method protected constructor <init>(Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;[[B)V
    .locals 3
    .param p1, "params"    # Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;
    .param p2, "publicKey"    # [[B

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    if-nez p1, :cond_0

    .line 16
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "params == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 18
    :cond_0
    if-nez p2, :cond_1

    .line 20
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "publicKey == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 22
    :cond_1
    invoke-static {p2}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->hasNullPointer([[B)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 24
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "publicKey byte array == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 26
    :cond_2
    array-length v1, p2

    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->getLen()I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 28
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "wrong publicKey size"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 30
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_5

    .line 32
    aget-object v1, p2, v0

    array-length v1, v1

    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->getDigestSize()I

    move-result v2

    if-eq v1, v2, :cond_4

    .line 34
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "wrong publicKey format"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 30
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 37
    :cond_5
    invoke-static {p2}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->cloneArray([[B)[[B

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusPublicKeyParameters;->publicKey:[[B

    .line 38
    return-void
.end method


# virtual methods
.method protected toByteArray()[[B
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusPublicKeyParameters;->publicKey:[[B

    invoke-static {v0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->cloneArray([[B)[[B

    move-result-object v0

    return-object v0
.end method
