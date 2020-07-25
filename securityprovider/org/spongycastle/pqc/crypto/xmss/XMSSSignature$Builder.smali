.class public Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature$Builder;
.super Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;
.source "XMSSSignature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private index:I

.field private final params:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

.field private random:[B


# direct methods
.method public constructor <init>(Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;)V
    .locals 1
    .param p1, "params"    # Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;-><init>(Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;)V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature$Builder;->index:I

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature$Builder;->random:[B

    .line 48
    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature$Builder;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature$Builder;)I
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature$Builder;

    .prologue
    .line 36
    iget v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature$Builder;->index:I

    return v0
.end method

.method static synthetic access$100(Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature$Builder;)[B
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature$Builder;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature$Builder;->random:[B

    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature$Builder;->build()Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature;
    .locals 2

    .prologue
    .line 89
    new-instance v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature;-><init>(Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature$Builder;Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature$1;)V

    return-object v0
.end method

.method public withIndex(I)Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature$Builder;
    .locals 0
    .param p1, "val"    # I

    .prologue
    .line 53
    iput p1, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature$Builder;->index:I

    .line 54
    return-object p0
.end method

.method public withRandom([B)Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature$Builder;
    .locals 1
    .param p1, "val"    # [B

    .prologue
    .line 59
    invoke-static {p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->cloneArray([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature$Builder;->random:[B

    .line 60
    return-object p0
.end method

.method public withSignature([B)Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature$Builder;
    .locals 10
    .param p1, "val"    # [B

    .prologue
    .line 65
    if-nez p1, :cond_0

    .line 67
    new-instance v8, Ljava/lang/NullPointerException;

    const-string v9, "signature == null"

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 69
    :cond_0
    iget-object v8, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature$Builder;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-virtual {v8}, Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;->getDigestSize()I

    move-result v4

    .line 70
    .local v4, "n":I
    iget-object v8, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature$Builder;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-virtual {v8}, Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;->getWOTSPlus()Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;

    move-result-object v8

    invoke-virtual {v8}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->getParams()Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;

    move-result-object v8

    invoke-virtual {v8}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->getLen()I

    move-result v3

    .line 71
    .local v3, "len":I
    iget-object v8, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature$Builder;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-virtual {v8}, Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;->getHeight()I

    move-result v1

    .line 72
    .local v1, "height":I
    const/4 v2, 0x4

    .line 73
    .local v2, "indexSize":I
    move v6, v4

    .line 74
    .local v6, "randomSize":I
    mul-int v7, v3, v4

    .line 75
    .local v7, "signatureSize":I
    mul-int v0, v1, v4

    .line 76
    .local v0, "authPathSize":I
    const/4 v5, 0x0

    .line 78
    .local v5, "position":I
    invoke-static {p1, v5}, Lorg/spongycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v8

    iput v8, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature$Builder;->index:I

    .line 79
    add-int/2addr v5, v2

    .line 81
    invoke-static {p1, v5, v6}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->extractBytesAtOffset([BII)[B

    move-result-object v8

    iput-object v8, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature$Builder;->random:[B

    .line 82
    add-int/lit8 v5, v6, 0x4

    .line 83
    add-int v8, v7, v0

    invoke-static {p1, v5, v8}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->extractBytesAtOffset([BII)[B

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature$Builder;->withReducedSignature([B)Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;

    .line 84
    return-object p0
.end method
