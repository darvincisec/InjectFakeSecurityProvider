.class public Lorg/spongycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;
.super Ljava/lang/Object;
.source "XMSSPublicKeyParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final params:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

.field private publicKey:[B

.field private publicSeed:[B

.field private root:[B


# direct methods
.method public constructor <init>(Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;)V
    .locals 1
    .param p1, "params"    # Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    .prologue
    const/4 v0, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;->root:[B

    .line 93
    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;->publicSeed:[B

    .line 94
    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;->publicKey:[B

    .line 99
    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    .line 100
    return-void
.end method

.method static synthetic access$000(Lorg/spongycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;)Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;

    .prologue
    .line 86
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    return-object v0
.end method

.method static synthetic access$100(Lorg/spongycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;)[B
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;

    .prologue
    .line 86
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;->publicKey:[B

    return-object v0
.end method

.method static synthetic access$200(Lorg/spongycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;)[B
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;

    .prologue
    .line 86
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;->root:[B

    return-object v0
.end method

.method static synthetic access$300(Lorg/spongycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;)[B
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;

    .prologue
    .line 86
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;->publicSeed:[B

    return-object v0
.end method


# virtual methods
.method public build()Lorg/spongycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;
    .locals 2

    .prologue
    .line 122
    new-instance v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;-><init>(Lorg/spongycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;Lorg/spongycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$1;)V

    return-object v0
.end method

.method public withPublicKey([B)Lorg/spongycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;
    .locals 1
    .param p1, "val"    # [B

    .prologue
    .line 116
    invoke-static {p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->cloneArray([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;->publicKey:[B

    .line 117
    return-object p0
.end method

.method public withPublicSeed([B)Lorg/spongycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;
    .locals 1
    .param p1, "val"    # [B

    .prologue
    .line 110
    invoke-static {p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->cloneArray([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;->publicSeed:[B

    .line 111
    return-object p0
.end method

.method public withRoot([B)Lorg/spongycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;
    .locals 1
    .param p1, "val"    # [B

    .prologue
    .line 104
    invoke-static {p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->cloneArray([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;->root:[B

    .line 105
    return-object p0
.end method
