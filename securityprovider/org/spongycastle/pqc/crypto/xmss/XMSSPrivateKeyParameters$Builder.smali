.class public Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;
.super Ljava/lang/Object;
.source "XMSSPrivateKeyParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private bdsState:Lorg/spongycastle/pqc/crypto/xmss/BDS;

.field private index:I

.field private final params:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

.field private privateKey:[B

.field private publicSeed:[B

.field private root:[B

.field private secretKeyPRF:[B

.field private secretKeySeed:[B

.field private xmss:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;


# direct methods
.method public constructor <init>(Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;)V
    .locals 2
    .param p1, "params"    # Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    .prologue
    const/4 v1, 0x0

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->index:I

    .line 191
    iput-object v1, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->secretKeySeed:[B

    .line 192
    iput-object v1, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->secretKeyPRF:[B

    .line 193
    iput-object v1, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->publicSeed:[B

    .line 194
    iput-object v1, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->root:[B

    .line 195
    iput-object v1, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->bdsState:Lorg/spongycastle/pqc/crypto/xmss/BDS;

    .line 196
    iput-object v1, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->privateKey:[B

    .line 197
    iput-object v1, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->xmss:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    .line 202
    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    .line 203
    return-void
.end method

.method static synthetic access$000(Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;)Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    .prologue
    .line 184
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    return-object v0
.end method

.method static synthetic access$100(Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;)[B
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    .prologue
    .line 184
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->privateKey:[B

    return-object v0
.end method

.method static synthetic access$200(Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;)Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    .prologue
    .line 184
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->xmss:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    return-object v0
.end method

.method static synthetic access$300(Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;)[B
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    .prologue
    .line 184
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->secretKeySeed:[B

    return-object v0
.end method

.method static synthetic access$400(Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;)[B
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    .prologue
    .line 184
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->secretKeyPRF:[B

    return-object v0
.end method

.method static synthetic access$500(Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;)[B
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    .prologue
    .line 184
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->publicSeed:[B

    return-object v0
.end method

.method static synthetic access$600(Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;)[B
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    .prologue
    .line 184
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->root:[B

    return-object v0
.end method

.method static synthetic access$700(Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;)Lorg/spongycastle/pqc/crypto/xmss/BDS;
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    .prologue
    .line 184
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->bdsState:Lorg/spongycastle/pqc/crypto/xmss/BDS;

    return-object v0
.end method

.method static synthetic access$800(Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;)I
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    .prologue
    .line 184
    iget v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->index:I

    return v0
.end method


# virtual methods
.method public build()Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;
    .locals 2

    .prologue
    .line 250
    new-instance v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;-><init>(Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$1;)V

    return-object v0
.end method

.method public withBDSState(Lorg/spongycastle/pqc/crypto/xmss/BDS;)Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;
    .locals 0
    .param p1, "valBDS"    # Lorg/spongycastle/pqc/crypto/xmss/BDS;

    .prologue
    .line 237
    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->bdsState:Lorg/spongycastle/pqc/crypto/xmss/BDS;

    .line 238
    return-object p0
.end method

.method public withIndex(I)Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;
    .locals 0
    .param p1, "val"    # I

    .prologue
    .line 207
    iput p1, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->index:I

    .line 208
    return-object p0
.end method

.method public withPrivateKey([BLorg/spongycastle/pqc/crypto/xmss/XMSSParameters;)Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;
    .locals 1
    .param p1, "privateKeyVal"    # [B
    .param p2, "xmssParameters"    # Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    .prologue
    .line 243
    invoke-static {p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->cloneArray([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->privateKey:[B

    .line 244
    iput-object p2, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->xmss:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    .line 245
    return-object p0
.end method

.method public withPublicSeed([B)Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;
    .locals 1
    .param p1, "val"    # [B

    .prologue
    .line 225
    invoke-static {p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->cloneArray([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->publicSeed:[B

    .line 226
    return-object p0
.end method

.method public withRoot([B)Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;
    .locals 1
    .param p1, "val"    # [B

    .prologue
    .line 231
    invoke-static {p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->cloneArray([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->root:[B

    .line 232
    return-object p0
.end method

.method public withSecretKeyPRF([B)Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;
    .locals 1
    .param p1, "val"    # [B

    .prologue
    .line 219
    invoke-static {p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->cloneArray([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->secretKeyPRF:[B

    .line 220
    return-object p0
.end method

.method public withSecretKeySeed([B)Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;
    .locals 1
    .param p1, "val"    # [B

    .prologue
    .line 213
    invoke-static {p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->cloneArray([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->secretKeySeed:[B

    .line 214
    return-object p0
.end method
