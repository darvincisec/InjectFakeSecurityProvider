.class public final Lorg/spongycastle/crypto/engines/SerpentEngine;
.super Lorg/spongycastle/crypto/engines/SerpentEngineBase;
.source "SerpentEngine.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngineBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected decryptBlock([BI[BI)V
    .locals 4
    .param p1, "input"    # [B
    .param p2, "inOff"    # I
    .param p3, "output"    # [B
    .param p4, "outOff"    # I

    .prologue
    .line 222
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x80

    aget v0, v0, v1

    invoke-static {p1, p2}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    .line 223
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x81

    aget v0, v0, v1

    add-int/lit8 v1, p2, 0x4

    invoke-static {p1, v1}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    .line 224
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x82

    aget v0, v0, v1

    add-int/lit8 v1, p2, 0x8

    invoke-static {p1, v1}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    .line 225
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x83

    aget v0, v0, v1

    add-int/lit8 v1, p2, 0xc

    invoke-static {p1, v1}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 227
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib7(IIII)V

    .line 228
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x7c

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x7d

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x7e

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x7f

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 229
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib6(IIII)V

    .line 230
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x78

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x79

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x7a

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x7b

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 231
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib5(IIII)V

    .line 232
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x74

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x75

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x76

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x77

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 233
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib4(IIII)V

    .line 234
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x70

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x71

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x72

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x73

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 235
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib3(IIII)V

    .line 236
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x6c

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x6d

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x6e

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x6f

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 237
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib2(IIII)V

    .line 238
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x68

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x69

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x6a

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x6b

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 239
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib1(IIII)V

    .line 240
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x64

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x65

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x66

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x67

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 241
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib0(IIII)V

    .line 242
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x60

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x61

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x62

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x63

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 243
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib7(IIII)V

    .line 244
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x5c

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x5d

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x5e

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x5f

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 245
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib6(IIII)V

    .line 246
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x58

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x59

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x5a

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x5b

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 247
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib5(IIII)V

    .line 248
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x54

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x55

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x56

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x57

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 249
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib4(IIII)V

    .line 250
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x50

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x51

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x52

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x53

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 251
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib3(IIII)V

    .line 252
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x4c

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x4d

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x4e

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x4f

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 253
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib2(IIII)V

    .line 254
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x48

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x49

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x4a

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x4b

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 255
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib1(IIII)V

    .line 256
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x44

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x45

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x46

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x47

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 257
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib0(IIII)V

    .line 258
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x40

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x41

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x42

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x43

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 259
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib7(IIII)V

    .line 260
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x3c

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x3d

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x3e

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x3f

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 261
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib6(IIII)V

    .line 262
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x38

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x39

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x3a

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x3b

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 263
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib5(IIII)V

    .line 264
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x34

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x35

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x36

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x37

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 265
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib4(IIII)V

    .line 266
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x30

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x31

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x32

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x33

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 267
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib3(IIII)V

    .line 268
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x2c

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x2d

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x2e

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x2f

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 269
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib2(IIII)V

    .line 270
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x28

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x29

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x2a

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x2b

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 271
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib1(IIII)V

    .line 272
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x24

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x25

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x26

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x27

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 273
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib0(IIII)V

    .line 274
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x20

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x21

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x22

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x23

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 275
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib7(IIII)V

    .line 276
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x1c

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x1d

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x1e

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x1f

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 277
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib6(IIII)V

    .line 278
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x18

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x19

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x1a

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x1b

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 279
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib5(IIII)V

    .line 280
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x14

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x15

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x16

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x17

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 281
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib4(IIII)V

    .line 282
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x10

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x11

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x12

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x13

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 283
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib3(IIII)V

    .line 284
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0xc

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0xd

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0xe

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0xf

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 285
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib2(IIII)V

    .line 286
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x8

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x9

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0xa

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0xb

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 287
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib1(IIII)V

    .line 288
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v2, 0x4

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v2, 0x5

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v2, 0x6

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v2, 0x7

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 289
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib0(IIII)V

    .line 291
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    xor-int/2addr v0, v1

    invoke-static {v0, p3, p4}, Lorg/spongycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 292
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    xor-int/2addr v0, v1

    add-int/lit8 v1, p4, 0x4

    invoke-static {v0, p3, v1}, Lorg/spongycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 293
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    xor-int/2addr v0, v1

    add-int/lit8 v1, p4, 0x8

    invoke-static {v0, p3, v1}, Lorg/spongycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 294
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    xor-int/2addr v0, v1

    add-int/lit8 v1, p4, 0xc

    invoke-static {v0, p3, v1}, Lorg/spongycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 295
    return-void
.end method

.method protected encryptBlock([BI[BI)V
    .locals 5
    .param p1, "input"    # [B
    .param p2, "inOff"    # I
    .param p3, "output"    # [B
    .param p4, "outOff"    # I

    .prologue
    .line 164
    invoke-static {p1, p2}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    .line 165
    add-int/lit8 v0, p2, 0x4

    invoke-static {p1, v0}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    .line 166
    add-int/lit8 v0, p2, 0x8

    invoke-static {p1, v0}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    .line 167
    add-int/lit8 v0, p2, 0xc

    invoke-static {p1, v0}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 169
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb0(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 170
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v2, 0x5

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v3, 0x6

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v4, 0x7

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb1(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 171
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x8

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x9

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0xa

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0xb

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb2(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 172
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0xc

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0xd

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0xe

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0xf

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb3(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 173
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x10

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x11

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x12

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x13

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb4(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 174
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x14

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x15

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x16

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x17

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb5(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 175
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x18

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x19

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x1a

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x1b

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb6(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 176
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x1c

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x1d

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x1e

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x1f

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb7(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 177
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x20

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x21

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x22

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x23

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb0(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 178
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x24

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x25

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x26

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x27

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb1(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 179
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x28

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x29

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x2a

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x2b

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb2(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 180
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x2c

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x2d

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x2e

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x2f

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb3(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 181
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x30

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x31

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x32

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x33

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb4(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 182
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x34

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x35

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x36

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x37

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb5(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 183
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x38

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x39

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x3a

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x3b

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb6(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 184
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x3c

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x3d

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x3e

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x3f

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb7(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 185
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x40

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x41

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x42

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x43

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb0(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 186
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x44

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x45

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x46

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x47

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb1(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 187
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x48

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x49

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x4a

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x4b

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb2(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 188
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x4c

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x4d

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x4e

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x4f

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb3(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 189
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x50

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x51

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x52

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x53

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb4(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 190
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x54

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x55

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x56

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x57

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb5(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 191
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x58

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x59

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x5a

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x5b

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb6(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 192
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x5c

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x5d

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x5e

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x5f

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb7(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 193
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x60

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x61

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x62

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x63

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb0(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 194
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x64

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x65

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x66

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x67

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb1(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 195
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x68

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x69

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x6a

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x6b

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb2(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 196
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x6c

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x6d

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x6e

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x6f

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb3(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 197
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x70

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x71

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x72

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x73

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb4(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 198
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x74

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x75

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x76

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x77

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb5(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 199
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x78

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x79

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x7a

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x7b

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb6(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 200
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x7c

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x7d

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x7e

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x7f

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb7(IIII)V

    .line 202
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x80

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    invoke-static {v0, p3, p4}, Lorg/spongycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 203
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x81

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v0, v1

    add-int/lit8 v1, p4, 0x4

    invoke-static {v0, p3, v1}, Lorg/spongycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 204
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x82

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v0, v1

    add-int/lit8 v1, p4, 0x8

    invoke-static {v0, p3, v1}, Lorg/spongycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 205
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x83

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v0, v1

    add-int/lit8 v1, p4, 0xc

    invoke-static {v0, p3, v1}, Lorg/spongycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 206
    return-void
.end method

.method protected makeWorkingKey([B)[I
    .locals 11
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 31
    const/16 v7, 0x10

    new-array v2, v7, [I

    .line 32
    .local v2, "kPad":[I
    const/4 v5, 0x0

    .line 33
    .local v5, "off":I
    const/4 v3, 0x0

    .line 35
    .local v3, "length":I
    const/4 v5, 0x0

    :goto_0
    add-int/lit8 v7, v5, 0x4

    array-length v8, p1

    if-ge v7, v8, :cond_0

    .line 37
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "length":I
    .local v4, "length":I
    invoke-static {p1, v5}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v7

    aput v7, v2, v3

    .line 35
    add-int/lit8 v5, v5, 0x4

    move v3, v4

    .end local v4    # "length":I
    .restart local v3    # "length":I
    goto :goto_0

    .line 40
    :cond_0
    rem-int/lit8 v7, v5, 0x4

    if-nez v7, :cond_2

    .line 42
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "length":I
    .restart local v4    # "length":I
    invoke-static {p1, v5}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v7

    aput v7, v2, v3

    .line 43
    const/16 v7, 0x8

    if-ge v4, v7, :cond_1

    .line 45
    const/4 v7, 0x1

    aput v7, v2, v4

    .line 56
    :cond_1
    const/16 v0, 0x84

    .line 57
    .local v0, "amount":I
    new-array v6, v0, [I

    .line 62
    .local v6, "w":[I
    const/16 v1, 0x8

    .local v1, "i":I
    :goto_1
    const/16 v7, 0x10

    if-ge v1, v7, :cond_3

    .line 64
    add-int/lit8 v7, v1, -0x8

    aget v7, v2, v7

    add-int/lit8 v8, v1, -0x5

    aget v8, v2, v8

    xor-int/2addr v7, v8

    add-int/lit8 v8, v1, -0x3

    aget v8, v2, v8

    xor-int/2addr v7, v8

    add-int/lit8 v8, v1, -0x1

    aget v8, v2, v8

    xor-int/2addr v7, v8

    const v8, -0x61c88647

    xor-int/2addr v7, v8

    add-int/lit8 v8, v1, -0x8

    xor-int/2addr v7, v8

    const/16 v8, 0xb

    invoke-static {v7, v8}, Lorg/spongycastle/crypto/engines/SerpentEngine;->rotateLeft(II)I

    move-result v7

    aput v7, v2, v1

    .line 62
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 50
    .end local v0    # "amount":I
    .end local v1    # "i":I
    .end local v4    # "length":I
    .end local v6    # "w":[I
    .restart local v3    # "length":I
    :cond_2
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "key must be a multiple of 4 bytes"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 67
    .end local v3    # "length":I
    .restart local v0    # "amount":I
    .restart local v1    # "i":I
    .restart local v4    # "length":I
    .restart local v6    # "w":[I
    :cond_3
    const/16 v7, 0x8

    const/4 v8, 0x0

    const/16 v9, 0x8

    invoke-static {v2, v7, v6, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    const/16 v1, 0x8

    :goto_2
    if-ge v1, v0, :cond_4

    .line 74
    add-int/lit8 v7, v1, -0x8

    aget v7, v6, v7

    add-int/lit8 v8, v1, -0x5

    aget v8, v6, v8

    xor-int/2addr v7, v8

    add-int/lit8 v8, v1, -0x3

    aget v8, v6, v8

    xor-int/2addr v7, v8

    add-int/lit8 v8, v1, -0x1

    aget v8, v6, v8

    xor-int/2addr v7, v8

    const v8, -0x61c88647

    xor-int/2addr v7, v8

    xor-int/2addr v7, v1

    const/16 v8, 0xb

    invoke-static {v7, v8}, Lorg/spongycastle/crypto/engines/SerpentEngine;->rotateLeft(II)I

    move-result v7

    aput v7, v6, v1

    .line 72
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 80
    :cond_4
    const/4 v7, 0x0

    aget v7, v6, v7

    const/4 v8, 0x1

    aget v8, v6, v8

    const/4 v9, 0x2

    aget v9, v6, v9

    const/4 v10, 0x3

    aget v10, v6, v10

    invoke-virtual {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb3(IIII)V

    .line 81
    const/4 v7, 0x0

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    const/4 v7, 0x1

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    const/4 v7, 0x2

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    const/4 v7, 0x3

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 82
    const/4 v7, 0x4

    aget v7, v6, v7

    const/4 v8, 0x5

    aget v8, v6, v8

    const/4 v9, 0x6

    aget v9, v6, v9

    const/4 v10, 0x7

    aget v10, v6, v10

    invoke-virtual {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb2(IIII)V

    .line 83
    const/4 v7, 0x4

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    const/4 v7, 0x5

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    const/4 v7, 0x6

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    const/4 v7, 0x7

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 84
    const/16 v7, 0x8

    aget v7, v6, v7

    const/16 v8, 0x9

    aget v8, v6, v8

    const/16 v9, 0xa

    aget v9, v6, v9

    const/16 v10, 0xb

    aget v10, v6, v10

    invoke-virtual {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb1(IIII)V

    .line 85
    const/16 v7, 0x8

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0x9

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0xa

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0xb

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 86
    const/16 v7, 0xc

    aget v7, v6, v7

    const/16 v8, 0xd

    aget v8, v6, v8

    const/16 v9, 0xe

    aget v9, v6, v9

    const/16 v10, 0xf

    aget v10, v6, v10

    invoke-virtual {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb0(IIII)V

    .line 87
    const/16 v7, 0xc

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0xd

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0xe

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0xf

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 88
    const/16 v7, 0x10

    aget v7, v6, v7

    const/16 v8, 0x11

    aget v8, v6, v8

    const/16 v9, 0x12

    aget v9, v6, v9

    const/16 v10, 0x13

    aget v10, v6, v10

    invoke-virtual {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb7(IIII)V

    .line 89
    const/16 v7, 0x10

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0x11

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0x12

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0x13

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 90
    const/16 v7, 0x14

    aget v7, v6, v7

    const/16 v8, 0x15

    aget v8, v6, v8

    const/16 v9, 0x16

    aget v9, v6, v9

    const/16 v10, 0x17

    aget v10, v6, v10

    invoke-virtual {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb6(IIII)V

    .line 91
    const/16 v7, 0x14

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0x15

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0x16

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0x17

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 92
    const/16 v7, 0x18

    aget v7, v6, v7

    const/16 v8, 0x19

    aget v8, v6, v8

    const/16 v9, 0x1a

    aget v9, v6, v9

    const/16 v10, 0x1b

    aget v10, v6, v10

    invoke-virtual {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb5(IIII)V

    .line 93
    const/16 v7, 0x18

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0x19

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0x1a

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0x1b

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 94
    const/16 v7, 0x1c

    aget v7, v6, v7

    const/16 v8, 0x1d

    aget v8, v6, v8

    const/16 v9, 0x1e

    aget v9, v6, v9

    const/16 v10, 0x1f

    aget v10, v6, v10

    invoke-virtual {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb4(IIII)V

    .line 95
    const/16 v7, 0x1c

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0x1d

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0x1e

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0x1f

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 96
    const/16 v7, 0x20

    aget v7, v6, v7

    const/16 v8, 0x21

    aget v8, v6, v8

    const/16 v9, 0x22

    aget v9, v6, v9

    const/16 v10, 0x23

    aget v10, v6, v10

    invoke-virtual {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb3(IIII)V

    .line 97
    const/16 v7, 0x20

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0x21

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0x22

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0x23

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 98
    const/16 v7, 0x24

    aget v7, v6, v7

    const/16 v8, 0x25

    aget v8, v6, v8

    const/16 v9, 0x26

    aget v9, v6, v9

    const/16 v10, 0x27

    aget v10, v6, v10

    invoke-virtual {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb2(IIII)V

    .line 99
    const/16 v7, 0x24

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0x25

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0x26

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0x27

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 100
    const/16 v7, 0x28

    aget v7, v6, v7

    const/16 v8, 0x29

    aget v8, v6, v8

    const/16 v9, 0x2a

    aget v9, v6, v9

    const/16 v10, 0x2b

    aget v10, v6, v10

    invoke-virtual {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb1(IIII)V

    .line 101
    const/16 v7, 0x28

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0x29

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0x2a

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0x2b

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 102
    const/16 v7, 0x2c

    aget v7, v6, v7

    const/16 v8, 0x2d

    aget v8, v6, v8

    const/16 v9, 0x2e

    aget v9, v6, v9

    const/16 v10, 0x2f

    aget v10, v6, v10

    invoke-virtual {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb0(IIII)V

    .line 103
    const/16 v7, 0x2c

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0x2d

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0x2e

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0x2f

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 104
    const/16 v7, 0x30

    aget v7, v6, v7

    const/16 v8, 0x31

    aget v8, v6, v8

    const/16 v9, 0x32

    aget v9, v6, v9

    const/16 v10, 0x33

    aget v10, v6, v10

    invoke-virtual {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb7(IIII)V

    .line 105
    const/16 v7, 0x30

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0x31

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0x32

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0x33

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 106
    const/16 v7, 0x34

    aget v7, v6, v7

    const/16 v8, 0x35

    aget v8, v6, v8

    const/16 v9, 0x36

    aget v9, v6, v9

    const/16 v10, 0x37

    aget v10, v6, v10

    invoke-virtual {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb6(IIII)V

    .line 107
    const/16 v7, 0x34

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0x35

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0x36

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0x37

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 108
    const/16 v7, 0x38

    aget v7, v6, v7

    const/16 v8, 0x39

    aget v8, v6, v8

    const/16 v9, 0x3a

    aget v9, v6, v9

    const/16 v10, 0x3b

    aget v10, v6, v10

    invoke-virtual {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb5(IIII)V

    .line 109
    const/16 v7, 0x38

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0x39

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0x3a

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0x3b

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 110
    const/16 v7, 0x3c

    aget v7, v6, v7

    const/16 v8, 0x3d

    aget v8, v6, v8

    const/16 v9, 0x3e

    aget v9, v6, v9

    const/16 v10, 0x3f

    aget v10, v6, v10

    invoke-virtual {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb4(IIII)V

    .line 111
    const/16 v7, 0x3c

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0x3d

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0x3e

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0x3f

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 112
    const/16 v7, 0x40

    aget v7, v6, v7

    const/16 v8, 0x41

    aget v8, v6, v8

    const/16 v9, 0x42

    aget v9, v6, v9

    const/16 v10, 0x43

    aget v10, v6, v10

    invoke-virtual {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb3(IIII)V

    .line 113
    const/16 v7, 0x40

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0x41

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0x42

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0x43

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 114
    const/16 v7, 0x44

    aget v7, v6, v7

    const/16 v8, 0x45

    aget v8, v6, v8

    const/16 v9, 0x46

    aget v9, v6, v9

    const/16 v10, 0x47

    aget v10, v6, v10

    invoke-virtual {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb2(IIII)V

    .line 115
    const/16 v7, 0x44

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0x45

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0x46

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0x47

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 116
    const/16 v7, 0x48

    aget v7, v6, v7

    const/16 v8, 0x49

    aget v8, v6, v8

    const/16 v9, 0x4a

    aget v9, v6, v9

    const/16 v10, 0x4b

    aget v10, v6, v10

    invoke-virtual {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb1(IIII)V

    .line 117
    const/16 v7, 0x48

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0x49

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0x4a

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0x4b

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 118
    const/16 v7, 0x4c

    aget v7, v6, v7

    const/16 v8, 0x4d

    aget v8, v6, v8

    const/16 v9, 0x4e

    aget v9, v6, v9

    const/16 v10, 0x4f

    aget v10, v6, v10

    invoke-virtual {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb0(IIII)V

    .line 119
    const/16 v7, 0x4c

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0x4d

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0x4e

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0x4f

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 120
    const/16 v7, 0x50

    aget v7, v6, v7

    const/16 v8, 0x51

    aget v8, v6, v8

    const/16 v9, 0x52

    aget v9, v6, v9

    const/16 v10, 0x53

    aget v10, v6, v10

    invoke-virtual {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb7(IIII)V

    .line 121
    const/16 v7, 0x50

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0x51

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0x52

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0x53

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 122
    const/16 v7, 0x54

    aget v7, v6, v7

    const/16 v8, 0x55

    aget v8, v6, v8

    const/16 v9, 0x56

    aget v9, v6, v9

    const/16 v10, 0x57

    aget v10, v6, v10

    invoke-virtual {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb6(IIII)V

    .line 123
    const/16 v7, 0x54

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0x55

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0x56

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0x57

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 124
    const/16 v7, 0x58

    aget v7, v6, v7

    const/16 v8, 0x59

    aget v8, v6, v8

    const/16 v9, 0x5a

    aget v9, v6, v9

    const/16 v10, 0x5b

    aget v10, v6, v10

    invoke-virtual {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb5(IIII)V

    .line 125
    const/16 v7, 0x58

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0x59

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0x5a

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0x5b

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 126
    const/16 v7, 0x5c

    aget v7, v6, v7

    const/16 v8, 0x5d

    aget v8, v6, v8

    const/16 v9, 0x5e

    aget v9, v6, v9

    const/16 v10, 0x5f

    aget v10, v6, v10

    invoke-virtual {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb4(IIII)V

    .line 127
    const/16 v7, 0x5c

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0x5d

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0x5e

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0x5f

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 128
    const/16 v7, 0x60

    aget v7, v6, v7

    const/16 v8, 0x61

    aget v8, v6, v8

    const/16 v9, 0x62

    aget v9, v6, v9

    const/16 v10, 0x63

    aget v10, v6, v10

    invoke-virtual {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb3(IIII)V

    .line 129
    const/16 v7, 0x60

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0x61

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0x62

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0x63

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 130
    const/16 v7, 0x64

    aget v7, v6, v7

    const/16 v8, 0x65

    aget v8, v6, v8

    const/16 v9, 0x66

    aget v9, v6, v9

    const/16 v10, 0x67

    aget v10, v6, v10

    invoke-virtual {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb2(IIII)V

    .line 131
    const/16 v7, 0x64

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0x65

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0x66

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0x67

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 132
    const/16 v7, 0x68

    aget v7, v6, v7

    const/16 v8, 0x69

    aget v8, v6, v8

    const/16 v9, 0x6a

    aget v9, v6, v9

    const/16 v10, 0x6b

    aget v10, v6, v10

    invoke-virtual {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb1(IIII)V

    .line 133
    const/16 v7, 0x68

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0x69

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0x6a

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0x6b

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 134
    const/16 v7, 0x6c

    aget v7, v6, v7

    const/16 v8, 0x6d

    aget v8, v6, v8

    const/16 v9, 0x6e

    aget v9, v6, v9

    const/16 v10, 0x6f

    aget v10, v6, v10

    invoke-virtual {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb0(IIII)V

    .line 135
    const/16 v7, 0x6c

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0x6d

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0x6e

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0x6f

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 136
    const/16 v7, 0x70

    aget v7, v6, v7

    const/16 v8, 0x71

    aget v8, v6, v8

    const/16 v9, 0x72

    aget v9, v6, v9

    const/16 v10, 0x73

    aget v10, v6, v10

    invoke-virtual {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb7(IIII)V

    .line 137
    const/16 v7, 0x70

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0x71

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0x72

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0x73

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 138
    const/16 v7, 0x74

    aget v7, v6, v7

    const/16 v8, 0x75

    aget v8, v6, v8

    const/16 v9, 0x76

    aget v9, v6, v9

    const/16 v10, 0x77

    aget v10, v6, v10

    invoke-virtual {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb6(IIII)V

    .line 139
    const/16 v7, 0x74

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0x75

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0x76

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0x77

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 140
    const/16 v7, 0x78

    aget v7, v6, v7

    const/16 v8, 0x79

    aget v8, v6, v8

    const/16 v9, 0x7a

    aget v9, v6, v9

    const/16 v10, 0x7b

    aget v10, v6, v10

    invoke-virtual {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb5(IIII)V

    .line 141
    const/16 v7, 0x78

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0x79

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0x7a

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0x7b

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 142
    const/16 v7, 0x7c

    aget v7, v6, v7

    const/16 v8, 0x7d

    aget v8, v6, v8

    const/16 v9, 0x7e

    aget v9, v6, v9

    const/16 v10, 0x7f

    aget v10, v6, v10

    invoke-virtual {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb4(IIII)V

    .line 143
    const/16 v7, 0x7c

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0x7d

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0x7e

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0x7f

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 144
    const/16 v7, 0x80

    aget v7, v6, v7

    const/16 v8, 0x81

    aget v8, v6, v8

    const/16 v9, 0x82

    aget v9, v6, v9

    const/16 v10, 0x83

    aget v10, v6, v10

    invoke-virtual {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb3(IIII)V

    .line 145
    const/16 v7, 0x80

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0x81

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0x82

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0x83

    iget v8, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 147
    return-object v6
.end method
