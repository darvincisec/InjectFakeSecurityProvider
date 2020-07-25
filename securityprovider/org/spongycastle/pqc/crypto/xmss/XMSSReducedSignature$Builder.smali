.class public Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;
.super Ljava/lang/Object;
.source "XMSSReducedSignature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private authPath:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;",
            ">;"
        }
    .end annotation
.end field

.field private final params:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

.field private reducedSignature:[B

.field private wotsPlusSignature:Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusSignature;


# direct methods
.method public constructor <init>(Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;)V
    .locals 1
    .param p1, "params"    # Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    .prologue
    const/4 v0, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;->wotsPlusSignature:Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusSignature;

    .line 91
    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;->authPath:Ljava/util/List;

    .line 92
    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;->reducedSignature:[B

    .line 97
    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    .line 98
    return-void
.end method

.method static synthetic access$000(Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;)Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;

    .prologue
    .line 84
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    return-object v0
.end method

.method static synthetic access$100(Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;)[B
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;

    .prologue
    .line 84
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;->reducedSignature:[B

    return-object v0
.end method

.method static synthetic access$200(Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;)Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusSignature;
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;

    .prologue
    .line 84
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;->wotsPlusSignature:Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusSignature;

    return-object v0
.end method

.method static synthetic access$300(Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;

    .prologue
    .line 84
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;->authPath:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public build()Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature;
    .locals 1

    .prologue
    .line 120
    new-instance v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature;

    invoke-direct {v0, p0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature;-><init>(Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;)V

    return-object v0
.end method

.method public withAuthPath(Ljava/util/List;)Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;",
            ">;)",
            "Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;"
        }
    .end annotation

    .prologue
    .line 108
    .local p1, "val":Ljava/util/List;, "Ljava/util/List<Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;>;"
    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;->authPath:Ljava/util/List;

    .line 109
    return-object p0
.end method

.method public withReducedSignature([B)Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;
    .locals 1
    .param p1, "val"    # [B

    .prologue
    .line 114
    invoke-static {p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->cloneArray([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;->reducedSignature:[B

    .line 115
    return-object p0
.end method

.method public withWOTSPlusSignature(Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusSignature;)Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;
    .locals 0
    .param p1, "val"    # Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusSignature;

    .prologue
    .line 102
    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;->wotsPlusSignature:Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusSignature;

    .line 103
    return-object p0
.end method
