.class public final Lorg/spongycastle/crypto/engines/TnepresEngine;
.super Lorg/spongycastle/crypto/engines/SerpentEngineBase;
.source "TnepresEngine.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
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
    .line 229
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v1, 0x83

    aget v0, v0, v1

    invoke-static {p1, p2}, Lorg/spongycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    .line 230
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v1, 0x82

    aget v0, v0, v1

    add-int/lit8 v1, p2, 0x4

    invoke-static {p1, v1}, Lorg/spongycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    .line 231
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v1, 0x81

    aget v0, v0, v1

    add-int/lit8 v1, p2, 0x8

    invoke-static {p1, v1}, Lorg/spongycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    .line 232
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v1, 0x80

    aget v0, v0, v1

    add-int/lit8 v1, p2, 0xc

    invoke-static {p1, v1}, Lorg/spongycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    .line 234
    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/TnepresEngine;->ib7(IIII)V

    .line 235
    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x7c

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x7d

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x7e

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x7f

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    .line 236
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/TnepresEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/TnepresEngine;->ib6(IIII)V

    .line 237
    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x78

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x79

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x7a

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x7b

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    .line 238
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/TnepresEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/TnepresEngine;->ib5(IIII)V

    .line 239
    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x74

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x75

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x76

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x77

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    .line 240
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/TnepresEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/TnepresEngine;->ib4(IIII)V

    .line 241
    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x70

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x71

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x72

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x73

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    .line 242
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/TnepresEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/TnepresEngine;->ib3(IIII)V

    .line 243
    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x6c

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x6d

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x6e

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x6f

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    .line 244
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/TnepresEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/TnepresEngine;->ib2(IIII)V

    .line 245
    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x68

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x69

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x6a

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x6b

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    .line 246
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/TnepresEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/TnepresEngine;->ib1(IIII)V

    .line 247
    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x64

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x65

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x66

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x67

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    .line 248
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/TnepresEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/TnepresEngine;->ib0(IIII)V

    .line 249
    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x60

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x61

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x62

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x63

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    .line 250
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/TnepresEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/TnepresEngine;->ib7(IIII)V

    .line 251
    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x5c

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x5d

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x5e

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x5f

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    .line 252
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/TnepresEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/TnepresEngine;->ib6(IIII)V

    .line 253
    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x58

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x59

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x5a

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x5b

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    .line 254
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/TnepresEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/TnepresEngine;->ib5(IIII)V

    .line 255
    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x54

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x55

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x56

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x57

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    .line 256
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/TnepresEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/TnepresEngine;->ib4(IIII)V

    .line 257
    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x50

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x51

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x52

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x53

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    .line 258
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/TnepresEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/TnepresEngine;->ib3(IIII)V

    .line 259
    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x4c

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x4d

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x4e

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x4f

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    .line 260
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/TnepresEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/TnepresEngine;->ib2(IIII)V

    .line 261
    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x48

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x49

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x4a

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x4b

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    .line 262
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/TnepresEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/TnepresEngine;->ib1(IIII)V

    .line 263
    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x44

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x45

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x46

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x47

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    .line 264
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/TnepresEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/TnepresEngine;->ib0(IIII)V

    .line 265
    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x40

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x41

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x42

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x43

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    .line 266
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/TnepresEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/TnepresEngine;->ib7(IIII)V

    .line 267
    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x3c

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x3d

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x3e

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x3f

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    .line 268
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/TnepresEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/TnepresEngine;->ib6(IIII)V

    .line 269
    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x38

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x39

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x3a

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x3b

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    .line 270
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/TnepresEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/TnepresEngine;->ib5(IIII)V

    .line 271
    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x34

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x35

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x36

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x37

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    .line 272
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/TnepresEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/TnepresEngine;->ib4(IIII)V

    .line 273
    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x30

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x31

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x32

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x33

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    .line 274
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/TnepresEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/TnepresEngine;->ib3(IIII)V

    .line 275
    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x2c

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x2d

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x2e

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x2f

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    .line 276
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/TnepresEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/TnepresEngine;->ib2(IIII)V

    .line 277
    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x28

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x29

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x2a

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x2b

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    .line 278
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/TnepresEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/TnepresEngine;->ib1(IIII)V

    .line 279
    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x24

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x25

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x26

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x27

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    .line 280
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/TnepresEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/TnepresEngine;->ib0(IIII)V

    .line 281
    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x20

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x21

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x22

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x23

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    .line 282
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/TnepresEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/TnepresEngine;->ib7(IIII)V

    .line 283
    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x1c

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x1d

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x1e

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x1f

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    .line 284
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/TnepresEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/TnepresEngine;->ib6(IIII)V

    .line 285
    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x18

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x19

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x1a

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x1b

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    .line 286
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/TnepresEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/TnepresEngine;->ib5(IIII)V

    .line 287
    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x14

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x15

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x16

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x17

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    .line 288
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/TnepresEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/TnepresEngine;->ib4(IIII)V

    .line 289
    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x10

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x11

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x12

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x13

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    .line 290
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/TnepresEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/TnepresEngine;->ib3(IIII)V

    .line 291
    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0xc

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0xd

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0xe

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0xf

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    .line 292
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/TnepresEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/TnepresEngine;->ib2(IIII)V

    .line 293
    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x8

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x9

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0xa

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0xb

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    .line 294
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/TnepresEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/TnepresEngine;->ib1(IIII)V

    .line 295
    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/4 v2, 0x4

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/4 v2, 0x5

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/4 v2, 0x6

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/4 v2, 0x7

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    .line 296
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/TnepresEngine;->inverseLT()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/TnepresEngine;->ib0(IIII)V

    .line 298
    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    xor-int/2addr v0, v1

    invoke-static {v0, p3, p4}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 299
    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    xor-int/2addr v0, v1

    add-int/lit8 v1, p4, 0x4

    invoke-static {v0, p3, v1}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 300
    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    xor-int/2addr v0, v1

    add-int/lit8 v1, p4, 0x8

    invoke-static {v0, p3, v1}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 301
    iget v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    xor-int/2addr v0, v1

    add-int/lit8 v1, p4, 0xc

    invoke-static {v0, p3, v1}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 302
    return-void
.end method

.method protected encryptBlock([BI[BI)V
    .locals 5
    .param p1, "input"    # [B
    .param p2, "inOff"    # I
    .param p3, "output"    # [B
    .param p4, "outOff"    # I

    .prologue
    .line 171
    invoke-static {p1, p2}, Lorg/spongycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    .line 172
    add-int/lit8 v0, p2, 0x4

    invoke-static {p1, v0}, Lorg/spongycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    .line 173
    add-int/lit8 v0, p2, 0x8

    invoke-static {p1, v0}, Lorg/spongycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    .line 174
    add-int/lit8 v0, p2, 0xc

    invoke-static {p1, v0}, Lorg/spongycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    .line 176
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/TnepresEngine;->sb0(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/TnepresEngine;->LT()V

    .line 177
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/4 v2, 0x5

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/4 v3, 0x6

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/4 v4, 0x7

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/TnepresEngine;->sb1(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/TnepresEngine;->LT()V

    .line 178
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v1, 0x8

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x9

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0xa

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v4, 0xb

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/TnepresEngine;->sb2(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/TnepresEngine;->LT()V

    .line 179
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v1, 0xc

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0xd

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0xe

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v4, 0xf

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/TnepresEngine;->sb3(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/TnepresEngine;->LT()V

    .line 180
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v1, 0x10

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x11

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x12

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v4, 0x13

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/TnepresEngine;->sb4(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/TnepresEngine;->LT()V

    .line 181
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v1, 0x14

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x15

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x16

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v4, 0x17

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/TnepresEngine;->sb5(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/TnepresEngine;->LT()V

    .line 182
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v1, 0x18

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x19

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x1a

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v4, 0x1b

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/TnepresEngine;->sb6(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/TnepresEngine;->LT()V

    .line 183
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v1, 0x1c

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x1d

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x1e

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v4, 0x1f

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/TnepresEngine;->sb7(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/TnepresEngine;->LT()V

    .line 184
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v1, 0x20

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x21

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x22

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v4, 0x23

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/TnepresEngine;->sb0(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/TnepresEngine;->LT()V

    .line 185
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v1, 0x24

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x25

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x26

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v4, 0x27

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/TnepresEngine;->sb1(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/TnepresEngine;->LT()V

    .line 186
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v1, 0x28

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x29

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x2a

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v4, 0x2b

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/TnepresEngine;->sb2(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/TnepresEngine;->LT()V

    .line 187
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v1, 0x2c

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x2d

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x2e

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v4, 0x2f

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/TnepresEngine;->sb3(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/TnepresEngine;->LT()V

    .line 188
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v1, 0x30

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x31

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x32

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v4, 0x33

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/TnepresEngine;->sb4(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/TnepresEngine;->LT()V

    .line 189
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v1, 0x34

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x35

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x36

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v4, 0x37

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/TnepresEngine;->sb5(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/TnepresEngine;->LT()V

    .line 190
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v1, 0x38

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x39

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x3a

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v4, 0x3b

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/TnepresEngine;->sb6(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/TnepresEngine;->LT()V

    .line 191
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v1, 0x3c

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x3d

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x3e

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v4, 0x3f

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/TnepresEngine;->sb7(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/TnepresEngine;->LT()V

    .line 192
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v1, 0x40

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x41

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x42

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v4, 0x43

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/TnepresEngine;->sb0(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/TnepresEngine;->LT()V

    .line 193
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v1, 0x44

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x45

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x46

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v4, 0x47

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/TnepresEngine;->sb1(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/TnepresEngine;->LT()V

    .line 194
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v1, 0x48

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x49

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x4a

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v4, 0x4b

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/TnepresEngine;->sb2(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/TnepresEngine;->LT()V

    .line 195
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v1, 0x4c

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x4d

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x4e

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v4, 0x4f

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/TnepresEngine;->sb3(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/TnepresEngine;->LT()V

    .line 196
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v1, 0x50

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x51

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x52

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v4, 0x53

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/TnepresEngine;->sb4(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/TnepresEngine;->LT()V

    .line 197
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v1, 0x54

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x55

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x56

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v4, 0x57

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/TnepresEngine;->sb5(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/TnepresEngine;->LT()V

    .line 198
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v1, 0x58

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x59

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x5a

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v4, 0x5b

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/TnepresEngine;->sb6(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/TnepresEngine;->LT()V

    .line 199
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v1, 0x5c

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x5d

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x5e

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v4, 0x5f

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/TnepresEngine;->sb7(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/TnepresEngine;->LT()V

    .line 200
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v1, 0x60

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x61

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x62

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v4, 0x63

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/TnepresEngine;->sb0(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/TnepresEngine;->LT()V

    .line 201
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v1, 0x64

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x65

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x66

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v4, 0x67

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/TnepresEngine;->sb1(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/TnepresEngine;->LT()V

    .line 202
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v1, 0x68

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x69

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x6a

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v4, 0x6b

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/TnepresEngine;->sb2(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/TnepresEngine;->LT()V

    .line 203
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v1, 0x6c

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x6d

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x6e

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v4, 0x6f

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/TnepresEngine;->sb3(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/TnepresEngine;->LT()V

    .line 204
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v1, 0x70

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x71

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x72

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v4, 0x73

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/TnepresEngine;->sb4(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/TnepresEngine;->LT()V

    .line 205
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v1, 0x74

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x75

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x76

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v4, 0x77

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/TnepresEngine;->sb5(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/TnepresEngine;->LT()V

    .line 206
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v1, 0x78

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x79

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x7a

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v4, 0x7b

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/TnepresEngine;->sb6(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/TnepresEngine;->LT()V

    .line 207
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v1, 0x7c

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x7d

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x7e

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v4, 0x7f

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/TnepresEngine;->sb7(IIII)V

    .line 209
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v1, 0x83

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    xor-int/2addr v0, v1

    invoke-static {v0, p3, p4}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 210
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v1, 0x82

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    xor-int/2addr v0, v1

    add-int/lit8 v1, p4, 0x4

    invoke-static {v0, p3, v1}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 211
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v1, 0x81

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    xor-int/2addr v0, v1

    add-int/lit8 v1, p4, 0x8

    invoke-static {v0, p3, v1}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 212
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v1, 0x80

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    xor-int/2addr v0, v1

    add-int/lit8 v1, p4, 0xc

    invoke-static {v0, p3, v1}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 213
    return-void
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    const-string v0, "Tnepres"

    return-object v0
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
    .line 38
    const/16 v7, 0x10

    new-array v2, v7, [I

    .line 39
    .local v2, "kPad":[I
    const/4 v5, 0x0

    .line 40
    .local v5, "off":I
    const/4 v3, 0x0

    .line 42
    .local v3, "length":I
    array-length v7, p1

    add-int/lit8 v5, v7, -0x4

    move v4, v3

    .end local v3    # "length":I
    .local v4, "length":I
    :goto_0
    if-lez v5, :cond_0

    .line 44
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "length":I
    .restart local v3    # "length":I
    invoke-static {p1, v5}, Lorg/spongycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v7

    aput v7, v2, v4

    .line 42
    add-int/lit8 v5, v5, -0x4

    move v4, v3

    .end local v3    # "length":I
    .restart local v4    # "length":I
    goto :goto_0

    .line 47
    :cond_0
    if-nez v5, :cond_2

    .line 49
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "length":I
    .restart local v3    # "length":I
    const/4 v7, 0x0

    invoke-static {p1, v7}, Lorg/spongycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v7

    aput v7, v2, v4

    .line 50
    const/16 v7, 0x8

    if-ge v3, v7, :cond_1

    .line 52
    const/4 v7, 0x1

    aput v7, v2, v3

    .line 63
    :cond_1
    const/16 v0, 0x84

    .line 64
    .local v0, "amount":I
    new-array v6, v0, [I

    .line 69
    .local v6, "w":[I
    const/16 v1, 0x8

    .local v1, "i":I
    :goto_1
    const/16 v7, 0x10

    if-ge v1, v7, :cond_3

    .line 71
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

    invoke-static {v7, v8}, Lorg/spongycastle/crypto/engines/TnepresEngine;->rotateLeft(II)I

    move-result v7

    aput v7, v2, v1

    .line 69
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 57
    .end local v0    # "amount":I
    .end local v1    # "i":I
    .end local v3    # "length":I
    .end local v6    # "w":[I
    .restart local v4    # "length":I
    :cond_2
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "key must be a multiple of 4 bytes"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 74
    .end local v4    # "length":I
    .restart local v0    # "amount":I
    .restart local v1    # "i":I
    .restart local v3    # "length":I
    .restart local v6    # "w":[I
    :cond_3
    const/16 v7, 0x8

    const/4 v8, 0x0

    const/16 v9, 0x8

    invoke-static {v2, v7, v6, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    const/16 v1, 0x8

    :goto_2
    if-ge v1, v0, :cond_4

    .line 81
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

    invoke-static {v7, v8}, Lorg/spongycastle/crypto/engines/TnepresEngine;->rotateLeft(II)I

    move-result v7

    aput v7, v6, v1

    .line 79
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 87
    :cond_4
    const/4 v7, 0x0

    aget v7, v6, v7

    const/4 v8, 0x1

    aget v8, v6, v8

    const/4 v9, 0x2

    aget v9, v6, v9

    const/4 v10, 0x3

    aget v10, v6, v10

    invoke-virtual {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/TnepresEngine;->sb3(IIII)V

    .line 88
    const/4 v7, 0x0

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    aput v8, v6, v7

    const/4 v7, 0x1

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    aput v8, v6, v7

    const/4 v7, 0x2

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    aput v8, v6, v7

    const/4 v7, 0x3

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    aput v8, v6, v7

    .line 89
    const/4 v7, 0x4

    aget v7, v6, v7

    const/4 v8, 0x5

    aget v8, v6, v8

    const/4 v9, 0x6

    aget v9, v6, v9

    const/4 v10, 0x7

    aget v10, v6, v10

    invoke-virtual {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/TnepresEngine;->sb2(IIII)V

    .line 90
    const/4 v7, 0x4

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    aput v8, v6, v7

    const/4 v7, 0x5

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    aput v8, v6, v7

    const/4 v7, 0x6

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    aput v8, v6, v7

    const/4 v7, 0x7

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    aput v8, v6, v7

    .line 91
    const/16 v7, 0x8

    aget v7, v6, v7

    const/16 v8, 0x9

    aget v8, v6, v8

    const/16 v9, 0xa

    aget v9, v6, v9

    const/16 v10, 0xb

    aget v10, v6, v10

    invoke-virtual {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/TnepresEngine;->sb1(IIII)V

    .line 92
    const/16 v7, 0x8

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0x9

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0xa

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0xb

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    aput v8, v6, v7

    .line 93
    const/16 v7, 0xc

    aget v7, v6, v7

    const/16 v8, 0xd

    aget v8, v6, v8

    const/16 v9, 0xe

    aget v9, v6, v9

    const/16 v10, 0xf

    aget v10, v6, v10

    invoke-virtual {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/TnepresEngine;->sb0(IIII)V

    .line 94
    const/16 v7, 0xc

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0xd

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0xe

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0xf

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    aput v8, v6, v7

    .line 95
    const/16 v7, 0x10

    aget v7, v6, v7

    const/16 v8, 0x11

    aget v8, v6, v8

    const/16 v9, 0x12

    aget v9, v6, v9

    const/16 v10, 0x13

    aget v10, v6, v10

    invoke-virtual {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/TnepresEngine;->sb7(IIII)V

    .line 96
    const/16 v7, 0x10

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0x11

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0x12

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0x13

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    aput v8, v6, v7

    .line 97
    const/16 v7, 0x14

    aget v7, v6, v7

    const/16 v8, 0x15

    aget v8, v6, v8

    const/16 v9, 0x16

    aget v9, v6, v9

    const/16 v10, 0x17

    aget v10, v6, v10

    invoke-virtual {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/TnepresEngine;->sb6(IIII)V

    .line 98
    const/16 v7, 0x14

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0x15

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0x16

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0x17

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    aput v8, v6, v7

    .line 99
    const/16 v7, 0x18

    aget v7, v6, v7

    const/16 v8, 0x19

    aget v8, v6, v8

    const/16 v9, 0x1a

    aget v9, v6, v9

    const/16 v10, 0x1b

    aget v10, v6, v10

    invoke-virtual {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/TnepresEngine;->sb5(IIII)V

    .line 100
    const/16 v7, 0x18

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0x19

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0x1a

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0x1b

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    aput v8, v6, v7

    .line 101
    const/16 v7, 0x1c

    aget v7, v6, v7

    const/16 v8, 0x1d

    aget v8, v6, v8

    const/16 v9, 0x1e

    aget v9, v6, v9

    const/16 v10, 0x1f

    aget v10, v6, v10

    invoke-virtual {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/TnepresEngine;->sb4(IIII)V

    .line 102
    const/16 v7, 0x1c

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0x1d

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0x1e

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0x1f

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    aput v8, v6, v7

    .line 103
    const/16 v7, 0x20

    aget v7, v6, v7

    const/16 v8, 0x21

    aget v8, v6, v8

    const/16 v9, 0x22

    aget v9, v6, v9

    const/16 v10, 0x23

    aget v10, v6, v10

    invoke-virtual {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/TnepresEngine;->sb3(IIII)V

    .line 104
    const/16 v7, 0x20

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0x21

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0x22

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0x23

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    aput v8, v6, v7

    .line 105
    const/16 v7, 0x24

    aget v7, v6, v7

    const/16 v8, 0x25

    aget v8, v6, v8

    const/16 v9, 0x26

    aget v9, v6, v9

    const/16 v10, 0x27

    aget v10, v6, v10

    invoke-virtual {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/TnepresEngine;->sb2(IIII)V

    .line 106
    const/16 v7, 0x24

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0x25

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0x26

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0x27

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    aput v8, v6, v7

    .line 107
    const/16 v7, 0x28

    aget v7, v6, v7

    const/16 v8, 0x29

    aget v8, v6, v8

    const/16 v9, 0x2a

    aget v9, v6, v9

    const/16 v10, 0x2b

    aget v10, v6, v10

    invoke-virtual {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/TnepresEngine;->sb1(IIII)V

    .line 108
    const/16 v7, 0x28

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0x29

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0x2a

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0x2b

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    aput v8, v6, v7

    .line 109
    const/16 v7, 0x2c

    aget v7, v6, v7

    const/16 v8, 0x2d

    aget v8, v6, v8

    const/16 v9, 0x2e

    aget v9, v6, v9

    const/16 v10, 0x2f

    aget v10, v6, v10

    invoke-virtual {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/TnepresEngine;->sb0(IIII)V

    .line 110
    const/16 v7, 0x2c

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0x2d

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0x2e

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0x2f

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    aput v8, v6, v7

    .line 111
    const/16 v7, 0x30

    aget v7, v6, v7

    const/16 v8, 0x31

    aget v8, v6, v8

    const/16 v9, 0x32

    aget v9, v6, v9

    const/16 v10, 0x33

    aget v10, v6, v10

    invoke-virtual {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/TnepresEngine;->sb7(IIII)V

    .line 112
    const/16 v7, 0x30

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0x31

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0x32

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0x33

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    aput v8, v6, v7

    .line 113
    const/16 v7, 0x34

    aget v7, v6, v7

    const/16 v8, 0x35

    aget v8, v6, v8

    const/16 v9, 0x36

    aget v9, v6, v9

    const/16 v10, 0x37

    aget v10, v6, v10

    invoke-virtual {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/TnepresEngine;->sb6(IIII)V

    .line 114
    const/16 v7, 0x34

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0x35

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0x36

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0x37

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    aput v8, v6, v7

    .line 115
    const/16 v7, 0x38

    aget v7, v6, v7

    const/16 v8, 0x39

    aget v8, v6, v8

    const/16 v9, 0x3a

    aget v9, v6, v9

    const/16 v10, 0x3b

    aget v10, v6, v10

    invoke-virtual {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/TnepresEngine;->sb5(IIII)V

    .line 116
    const/16 v7, 0x38

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0x39

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0x3a

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0x3b

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    aput v8, v6, v7

    .line 117
    const/16 v7, 0x3c

    aget v7, v6, v7

    const/16 v8, 0x3d

    aget v8, v6, v8

    const/16 v9, 0x3e

    aget v9, v6, v9

    const/16 v10, 0x3f

    aget v10, v6, v10

    invoke-virtual {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/TnepresEngine;->sb4(IIII)V

    .line 118
    const/16 v7, 0x3c

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0x3d

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0x3e

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0x3f

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    aput v8, v6, v7

    .line 119
    const/16 v7, 0x40

    aget v7, v6, v7

    const/16 v8, 0x41

    aget v8, v6, v8

    const/16 v9, 0x42

    aget v9, v6, v9

    const/16 v10, 0x43

    aget v10, v6, v10

    invoke-virtual {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/TnepresEngine;->sb3(IIII)V

    .line 120
    const/16 v7, 0x40

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0x41

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0x42

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0x43

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    aput v8, v6, v7

    .line 121
    const/16 v7, 0x44

    aget v7, v6, v7

    const/16 v8, 0x45

    aget v8, v6, v8

    const/16 v9, 0x46

    aget v9, v6, v9

    const/16 v10, 0x47

    aget v10, v6, v10

    invoke-virtual {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/TnepresEngine;->sb2(IIII)V

    .line 122
    const/16 v7, 0x44

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0x45

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0x46

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0x47

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    aput v8, v6, v7

    .line 123
    const/16 v7, 0x48

    aget v7, v6, v7

    const/16 v8, 0x49

    aget v8, v6, v8

    const/16 v9, 0x4a

    aget v9, v6, v9

    const/16 v10, 0x4b

    aget v10, v6, v10

    invoke-virtual {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/TnepresEngine;->sb1(IIII)V

    .line 124
    const/16 v7, 0x48

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0x49

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0x4a

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0x4b

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    aput v8, v6, v7

    .line 125
    const/16 v7, 0x4c

    aget v7, v6, v7

    const/16 v8, 0x4d

    aget v8, v6, v8

    const/16 v9, 0x4e

    aget v9, v6, v9

    const/16 v10, 0x4f

    aget v10, v6, v10

    invoke-virtual {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/TnepresEngine;->sb0(IIII)V

    .line 126
    const/16 v7, 0x4c

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0x4d

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0x4e

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0x4f

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    aput v8, v6, v7

    .line 127
    const/16 v7, 0x50

    aget v7, v6, v7

    const/16 v8, 0x51

    aget v8, v6, v8

    const/16 v9, 0x52

    aget v9, v6, v9

    const/16 v10, 0x53

    aget v10, v6, v10

    invoke-virtual {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/TnepresEngine;->sb7(IIII)V

    .line 128
    const/16 v7, 0x50

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0x51

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0x52

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0x53

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    aput v8, v6, v7

    .line 129
    const/16 v7, 0x54

    aget v7, v6, v7

    const/16 v8, 0x55

    aget v8, v6, v8

    const/16 v9, 0x56

    aget v9, v6, v9

    const/16 v10, 0x57

    aget v10, v6, v10

    invoke-virtual {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/TnepresEngine;->sb6(IIII)V

    .line 130
    const/16 v7, 0x54

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0x55

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0x56

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0x57

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    aput v8, v6, v7

    .line 131
    const/16 v7, 0x58

    aget v7, v6, v7

    const/16 v8, 0x59

    aget v8, v6, v8

    const/16 v9, 0x5a

    aget v9, v6, v9

    const/16 v10, 0x5b

    aget v10, v6, v10

    invoke-virtual {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/TnepresEngine;->sb5(IIII)V

    .line 132
    const/16 v7, 0x58

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0x59

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0x5a

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0x5b

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    aput v8, v6, v7

    .line 133
    const/16 v7, 0x5c

    aget v7, v6, v7

    const/16 v8, 0x5d

    aget v8, v6, v8

    const/16 v9, 0x5e

    aget v9, v6, v9

    const/16 v10, 0x5f

    aget v10, v6, v10

    invoke-virtual {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/TnepresEngine;->sb4(IIII)V

    .line 134
    const/16 v7, 0x5c

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0x5d

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0x5e

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0x5f

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    aput v8, v6, v7

    .line 135
    const/16 v7, 0x60

    aget v7, v6, v7

    const/16 v8, 0x61

    aget v8, v6, v8

    const/16 v9, 0x62

    aget v9, v6, v9

    const/16 v10, 0x63

    aget v10, v6, v10

    invoke-virtual {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/TnepresEngine;->sb3(IIII)V

    .line 136
    const/16 v7, 0x60

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0x61

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0x62

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0x63

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    aput v8, v6, v7

    .line 137
    const/16 v7, 0x64

    aget v7, v6, v7

    const/16 v8, 0x65

    aget v8, v6, v8

    const/16 v9, 0x66

    aget v9, v6, v9

    const/16 v10, 0x67

    aget v10, v6, v10

    invoke-virtual {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/TnepresEngine;->sb2(IIII)V

    .line 138
    const/16 v7, 0x64

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0x65

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0x66

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0x67

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    aput v8, v6, v7

    .line 139
    const/16 v7, 0x68

    aget v7, v6, v7

    const/16 v8, 0x69

    aget v8, v6, v8

    const/16 v9, 0x6a

    aget v9, v6, v9

    const/16 v10, 0x6b

    aget v10, v6, v10

    invoke-virtual {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/TnepresEngine;->sb1(IIII)V

    .line 140
    const/16 v7, 0x68

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0x69

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0x6a

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0x6b

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    aput v8, v6, v7

    .line 141
    const/16 v7, 0x6c

    aget v7, v6, v7

    const/16 v8, 0x6d

    aget v8, v6, v8

    const/16 v9, 0x6e

    aget v9, v6, v9

    const/16 v10, 0x6f

    aget v10, v6, v10

    invoke-virtual {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/TnepresEngine;->sb0(IIII)V

    .line 142
    const/16 v7, 0x6c

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0x6d

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0x6e

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0x6f

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    aput v8, v6, v7

    .line 143
    const/16 v7, 0x70

    aget v7, v6, v7

    const/16 v8, 0x71

    aget v8, v6, v8

    const/16 v9, 0x72

    aget v9, v6, v9

    const/16 v10, 0x73

    aget v10, v6, v10

    invoke-virtual {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/TnepresEngine;->sb7(IIII)V

    .line 144
    const/16 v7, 0x70

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0x71

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0x72

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0x73

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    aput v8, v6, v7

    .line 145
    const/16 v7, 0x74

    aget v7, v6, v7

    const/16 v8, 0x75

    aget v8, v6, v8

    const/16 v9, 0x76

    aget v9, v6, v9

    const/16 v10, 0x77

    aget v10, v6, v10

    invoke-virtual {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/TnepresEngine;->sb6(IIII)V

    .line 146
    const/16 v7, 0x74

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0x75

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0x76

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0x77

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    aput v8, v6, v7

    .line 147
    const/16 v7, 0x78

    aget v7, v6, v7

    const/16 v8, 0x79

    aget v8, v6, v8

    const/16 v9, 0x7a

    aget v9, v6, v9

    const/16 v10, 0x7b

    aget v10, v6, v10

    invoke-virtual {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/TnepresEngine;->sb5(IIII)V

    .line 148
    const/16 v7, 0x78

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0x79

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0x7a

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0x7b

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    aput v8, v6, v7

    .line 149
    const/16 v7, 0x7c

    aget v7, v6, v7

    const/16 v8, 0x7d

    aget v8, v6, v8

    const/16 v9, 0x7e

    aget v9, v6, v9

    const/16 v10, 0x7f

    aget v10, v6, v10

    invoke-virtual {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/TnepresEngine;->sb4(IIII)V

    .line 150
    const/16 v7, 0x7c

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0x7d

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0x7e

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0x7f

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    aput v8, v6, v7

    .line 151
    const/16 v7, 0x80

    aget v7, v6, v7

    const/16 v8, 0x81

    aget v8, v6, v8

    const/16 v9, 0x82

    aget v9, v6, v9

    const/16 v10, 0x83

    aget v10, v6, v10

    invoke-virtual {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/engines/TnepresEngine;->sb3(IIII)V

    .line 152
    const/16 v7, 0x80

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X0:I

    aput v8, v6, v7

    const/16 v7, 0x81

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X1:I

    aput v8, v6, v7

    const/16 v7, 0x82

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X2:I

    aput v8, v6, v7

    const/16 v7, 0x83

    iget v8, p0, Lorg/spongycastle/crypto/engines/TnepresEngine;->X3:I

    aput v8, v6, v7

    .line 154
    return-object v6
.end method
