.class public abstract Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;
.super Ljava/lang/Object;
.source "XMSSAddress.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;
    }
.end annotation


# instance fields
.field private final keyAndMask:I

.field private final layerAddress:I

.field private final treeAddress:J

.field private final type:I


# direct methods
.method protected constructor <init>(Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;)V
    .locals 2
    .param p1, "builder"    # Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->access$000(Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->layerAddress:I

    .line 19
    invoke-static {p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->access$100(Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->treeAddress:J

    .line 20
    invoke-static {p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->access$200(Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->type:I

    .line 21
    invoke-static {p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->access$300(Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->keyAndMask:I

    .line 22
    return-void
.end method


# virtual methods
.method public final getKeyAndMask()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->keyAndMask:I

    return v0
.end method

.method protected final getLayerAddress()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->layerAddress:I

    return v0
.end method

.method protected final getTreeAddress()J
    .locals 2

    .prologue
    .line 80
    iget-wide v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->treeAddress:J

    return-wide v0
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->type:I

    return v0
.end method

.method protected toByteArray()[B
    .locals 4

    .prologue
    .line 65
    const/16 v1, 0x20

    new-array v0, v1, [B

    .line 66
    .local v0, "byteRepresentation":[B
    iget v1, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->layerAddress:I

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 67
    iget-wide v2, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->treeAddress:J

    const/4 v1, 0x4

    invoke-static {v2, v3, v0, v1}, Lorg/spongycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 68
    iget v1, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->type:I

    const/16 v2, 0xc

    invoke-static {v1, v0, v2}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 69
    iget v1, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->keyAndMask:I

    const/16 v2, 0x1c

    invoke-static {v1, v0, v2}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 70
    return-object v0
.end method
