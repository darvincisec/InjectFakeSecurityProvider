.class public Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;
.super Ljava/lang/Object;
.source "XMSSMTSignature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private index:J

.field private final params:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;

.field private random:[B

.field private reducedSignatures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature;",
            ">;"
        }
    .end annotation
.end field

.field private signature:[B


# direct methods
.method public constructor <init>(Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;)V
    .locals 3
    .param p1, "params"    # Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;

    .prologue
    const/4 v2, 0x0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;->index:J

    .line 96
    iput-object v2, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;->random:[B

    .line 97
    iput-object v2, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;->reducedSignatures:Ljava/util/List;

    .line 98
    iput-object v2, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;->signature:[B

    .line 103
    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;

    .line 104
    return-void
.end method

.method static synthetic access$000(Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;)Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;

    .prologue
    .line 89
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;

    return-object v0
.end method

.method static synthetic access$100(Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;)[B
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;

    .prologue
    .line 89
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;->signature:[B

    return-object v0
.end method

.method static synthetic access$200(Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;)J
    .locals 2
    .param p0, "x0"    # Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;

    .prologue
    .line 89
    iget-wide v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;->index:J

    return-wide v0
.end method

.method static synthetic access$300(Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;)[B
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;

    .prologue
    .line 89
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;->random:[B

    return-object v0
.end method

.method static synthetic access$400(Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;

    .prologue
    .line 89
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;->reducedSignatures:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public build()Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature;
    .locals 2

    .prologue
    .line 132
    new-instance v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature;-><init>(Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature$1;)V

    return-object v0
.end method

.method public withIndex(J)Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;
    .locals 1
    .param p1, "val"    # J

    .prologue
    .line 108
    iput-wide p1, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;->index:J

    .line 109
    return-object p0
.end method

.method public withRandom([B)Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;
    .locals 1
    .param p1, "val"    # [B

    .prologue
    .line 114
    invoke-static {p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->cloneArray([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;->random:[B

    .line 115
    return-object p0
.end method

.method public withReducedSignatures(Ljava/util/List;)Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature;",
            ">;)",
            "Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;"
        }
    .end annotation

    .prologue
    .line 120
    .local p1, "val":Ljava/util/List;, "Ljava/util/List<Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature;>;"
    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;->reducedSignatures:Ljava/util/List;

    .line 121
    return-object p0
.end method

.method public withSignature([B)Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;
    .locals 0
    .param p1, "val"    # [B

    .prologue
    .line 126
    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;->signature:[B

    .line 127
    return-object p0
.end method
