.class final Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;
.super Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;
.source "HashTreeAddress.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;
    }
.end annotation


# static fields
.field private static final PADDING:I = 0x0

.field private static final TYPE:I = 0x2


# instance fields
.field private final padding:I

.field private final treeHeight:I

.field private final treeIndex:I


# direct methods
.method private constructor <init>(Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;)V
    .locals 1
    .param p1, "builder"    # Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;-><init>(Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;)V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;->padding:I

    .line 23
    invoke-static {p1}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->access$000(Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;->treeHeight:I

    .line 24
    invoke-static {p1}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->access$100(Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;->treeIndex:I

    .line 25
    return-void
.end method

.method synthetic constructor <init>(Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;
    .param p2, "x1"    # Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$1;

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;-><init>(Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;)V

    return-void
.end method


# virtual methods
.method protected getPadding()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;->padding:I

    return v0
.end method

.method protected getTreeHeight()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;->treeHeight:I

    return v0
.end method

.method protected getTreeIndex()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;->treeIndex:I

    return v0
.end method

.method protected toByteArray()[B
    .locals 3

    .prologue
    .line 68
    invoke-super {p0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->toByteArray()[B

    move-result-object v0

    .line 69
    .local v0, "byteRepresentation":[B
    iget v1, p0, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;->padding:I

    const/16 v2, 0x10

    invoke-static {v1, v0, v2}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 70
    iget v1, p0, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;->treeHeight:I

    const/16 v2, 0x14

    invoke-static {v1, v0, v2}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 71
    iget v1, p0, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;->treeIndex:I

    const/16 v2, 0x18

    invoke-static {v1, v0, v2}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 72
    return-object v0
.end method
