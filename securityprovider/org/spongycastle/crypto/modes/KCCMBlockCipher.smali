.class public Lorg/spongycastle/crypto/modes/KCCMBlockCipher;
.super Ljava/lang/Object;
.source "KCCMBlockCipher.java"

# interfaces
.implements Lorg/spongycastle/crypto/modes/AEADBlockCipher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/crypto/modes/KCCMBlockCipher$ExposedByteArrayOutputStream;
    }
.end annotation


# static fields
.field private static final BITS_IN_BYTE:I = 0x8

.field private static final BYTES_IN_INT:I = 0x4

.field private static final MAX_MAC_BIT_LENGTH:I = 0x200

.field private static final MIN_MAC_BIT_LENGTH:I = 0x40


# instance fields
.field private G1:[B

.field private Nb_:I

.field private associatedText:Lorg/spongycastle/crypto/modes/KCCMBlockCipher$ExposedByteArrayOutputStream;

.field private buffer:[B

.field private counter:[B

.field private data:Lorg/spongycastle/crypto/modes/KCCMBlockCipher$ExposedByteArrayOutputStream;

.field private engine:Lorg/spongycastle/crypto/BlockCipher;

.field private forEncryption:Z

.field private initialAssociatedText:[B

.field private mac:[B

.field private macBlock:[B

.field private macSize:I

.field private nonce:[B

.field private s:[B


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/BlockCipher;)V
    .locals 1
    .param p1, "engine"    # Lorg/spongycastle/crypto/BlockCipher;

    .prologue
    .line 70
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;I)V

    .line 71
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/BlockCipher;I)V
    .locals 1
    .param p1, "engine"    # Lorg/spongycastle/crypto/BlockCipher;
    .param p2, "nB"    # I

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-direct {v0, p0}, Lorg/spongycastle/crypto/modes/KCCMBlockCipher$ExposedByteArrayOutputStream;-><init>(Lorg/spongycastle/crypto/modes/KCCMBlockCipher;)V

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->associatedText:Lorg/spongycastle/crypto/modes/KCCMBlockCipher$ExposedByteArrayOutputStream;

    .line 46
    new-instance v0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-direct {v0, p0}, Lorg/spongycastle/crypto/modes/KCCMBlockCipher$ExposedByteArrayOutputStream;-><init>(Lorg/spongycastle/crypto/modes/KCCMBlockCipher;)V

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->data:Lorg/spongycastle/crypto/modes/KCCMBlockCipher$ExposedByteArrayOutputStream;

    .line 49
    const/4 v0, 0x4

    iput v0, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->Nb_:I

    .line 87
    iput-object p1, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    .line 88
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->macSize:I

    .line 89
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->nonce:[B

    .line 90
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->initialAssociatedText:[B

    .line 91
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->mac:[B

    .line 92
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->macBlock:[B

    .line 93
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->G1:[B

    .line 94
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->buffer:[B

    .line 95
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->s:[B

    .line 96
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->counter:[B

    .line 97
    invoke-direct {p0, p2}, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->setNb(I)V

    .line 98
    return-void
.end method

.method private CalculateMac([BII)V
    .locals 6
    .param p1, "authText"    # [B
    .param p2, "authOff"    # I
    .param p3, "len"    # I

    .prologue
    const/4 v5, 0x0

    .line 388
    move v1, p3

    .line 389
    .local v1, "totalLen":I
    :goto_0
    if-lez v1, :cond_1

    .line 391
    const/4 v0, 0x0

    .local v0, "byteIndex":I
    :goto_1
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v2}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 393
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->macBlock:[B

    aget-byte v3, v2, v0

    add-int v4, p2, v0

    aget-byte v4, p1, v4

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 391
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 396
    :cond_0
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v3, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->macBlock:[B

    iget-object v4, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->macBlock:[B

    invoke-interface {v2, v3, v5, v4, v5}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 398
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v2}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v2

    sub-int/2addr v1, v2

    .line 399
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v2}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v2

    add-int/2addr p2, v2

    goto :goto_0

    .line 401
    .end local v0    # "byteIndex":I
    :cond_1
    return-void
.end method

.method private ProcessBlock([BII[BI)V
    .locals 5
    .param p1, "input"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I
    .param p4, "output"    # [B
    .param p5, "outOff"    # I

    .prologue
    const/4 v4, 0x0

    .line 373
    const/4 v0, 0x0

    .local v0, "byteIndex":I
    :goto_0
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->counter:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 375
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->s:[B

    aget-byte v2, v1, v0

    iget-object v3, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->counter:[B

    aget-byte v3, v3, v0

    add-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 373
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 378
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->s:[B

    iget-object v3, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->buffer:[B

    invoke-interface {v1, v2, v4, v3, v4}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 380
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 382
    add-int v1, p5, v0

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->buffer:[B

    aget-byte v2, v2, v0

    add-int v3, p2, v0

    aget-byte v3, p1, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p4, v1

    .line 380
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 384
    :cond_1
    return-void
.end method

.method private getFlag(ZI)B
    .locals 5
    .param p1, "authTextPresents"    # Z
    .param p2, "macSize"    # I

    .prologue
    .line 458
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 460
    .local v1, "flagByte":Ljava/lang/StringBuffer;
    if-eqz p1, :cond_0

    .line 462
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 470
    :goto_0
    sparse-switch p2, :sswitch_data_0

    .line 489
    :goto_1
    iget v2, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->Nb_:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    .line 490
    .local v0, "binaryNb":Ljava/lang/String;
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    .line 492
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const-string v4, "0"

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 466
    .end local v0    # "binaryNb":Ljava/lang/String;
    :cond_0
    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 473
    :sswitch_0
    const-string v2, "010"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 476
    :sswitch_1
    const-string v2, "011"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 479
    :sswitch_2
    const-string v2, "100"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 482
    :sswitch_3
    const-string v2, "101"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 485
    :sswitch_4
    const-string v2, "110"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 495
    .restart local v0    # "binaryNb":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 497
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    return v2

    .line 470
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0x10 -> :sswitch_1
        0x20 -> :sswitch_2
        0x30 -> :sswitch_3
        0x40 -> :sswitch_4
    .end sparse-switch
.end method

.method private intToBytes(I[BI)V
    .locals 2
    .param p1, "num"    # I
    .param p2, "outBytes"    # [B
    .param p3, "outOff"    # I

    .prologue
    .line 450
    add-int/lit8 v0, p3, 0x3

    shr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 451
    add-int/lit8 v0, p3, 0x2

    shr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 452
    add-int/lit8 v0, p3, 0x1

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 453
    int-to-byte v0, p1

    aput-byte v0, p2, p3

    .line 454
    return-void
.end method

.method private processAAD([BIII)V
    .locals 7
    .param p1, "assocText"    # [B
    .param p2, "assocOff"    # I
    .param p3, "assocLen"    # I
    .param p4, "dataLen"    # I

    .prologue
    const/4 v6, 0x0

    .line 166
    sub-int v2, p3, p2

    iget-object v3, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v3}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 168
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "authText buffer too short"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 170
    :cond_0
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v2}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v2

    rem-int v2, p3, v2

    if-eqz v2, :cond_1

    .line 172
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "padding not supported"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 175
    :cond_1
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->nonce:[B

    iget-object v3, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->G1:[B

    iget-object v4, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->nonce:[B

    array-length v4, v4

    iget v5, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->Nb_:I

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    invoke-static {v2, v6, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 177
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->buffer:[B

    invoke-direct {p0, p4, v2, v6}, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->intToBytes(I[BI)V

    .line 179
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->buffer:[B

    iget-object v3, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->G1:[B

    iget-object v4, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->nonce:[B

    array-length v4, v4

    iget v5, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->Nb_:I

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x4

    invoke-static {v2, v6, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 181
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->G1:[B

    iget-object v3, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->G1:[B

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x1

    iget v5, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->macSize:I

    invoke-direct {p0, v4, v5}, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->getFlag(ZI)B

    move-result v4

    aput-byte v4, v2, v3

    .line 183
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v3, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->G1:[B

    iget-object v4, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->macBlock:[B

    invoke-interface {v2, v3, v6, v4, v6}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 185
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->buffer:[B

    invoke-direct {p0, p3, v2, v6}, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->intToBytes(I[BI)V

    .line 187
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v2}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v2

    iget v3, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->Nb_:I

    sub-int/2addr v2, v3

    if-gt p3, v2, :cond_5

    .line 189
    const/4 v1, 0x0

    .local v1, "byteIndex":I
    :goto_0
    if-ge v1, p3, :cond_2

    .line 191
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->buffer:[B

    iget v3, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->Nb_:I

    add-int/2addr v3, v1

    aget-byte v4, v2, v3

    add-int v5, p2, v1

    aget-byte v5, p1, v5

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 189
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 194
    :cond_2
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v2}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 196
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->macBlock:[B

    aget-byte v3, v2, v1

    iget-object v4, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->buffer:[B

    aget-byte v4, v4, v1

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 194
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 199
    :cond_3
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v3, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->macBlock:[B

    iget-object v4, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->macBlock:[B

    invoke-interface {v2, v3, v6, v4, v6}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 224
    :cond_4
    return-void

    .line 204
    .end local v1    # "byteIndex":I
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "byteIndex":I
    :goto_2
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v2}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 206
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->macBlock:[B

    aget-byte v3, v2, v1

    iget-object v4, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->buffer:[B

    aget-byte v4, v4, v1

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 204
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 209
    :cond_6
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v3, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->macBlock:[B

    iget-object v4, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->macBlock:[B

    invoke-interface {v2, v3, v6, v4, v6}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 211
    move v0, p3

    .line 212
    .local v0, "authLen":I
    :goto_3
    if-eqz v0, :cond_4

    .line 214
    const/4 v1, 0x0

    :goto_4
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v2}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 216
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->macBlock:[B

    aget-byte v3, v2, v1

    add-int v4, v1, p2

    aget-byte v4, p1, v4

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 214
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 219
    :cond_7
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v3, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->macBlock:[B

    iget-object v4, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->macBlock:[B

    invoke-interface {v2, v3, v6, v4, v6}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 221
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v2}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v2

    add-int/2addr p2, v2

    .line 222
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v2}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v2

    sub-int/2addr v0, v2

    goto :goto_3
.end method

.method private setNb(I)V
    .locals 2
    .param p1, "Nb"    # I

    .prologue
    .line 53
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 55
    :cond_0
    iput p1, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->Nb_:I

    .line 61
    return-void

    .line 59
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Nb = 4 is recommended by DSTU7624 but can be changed to only 6 or 8 in this implementation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 7
    .param p1, "out"    # [B
    .param p2, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lorg/spongycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    .line 406
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->data:Lorg/spongycastle/crypto/modes/KCCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/modes/KCCMBlockCipher$ExposedByteArrayOutputStream;->getBuffer()[B

    move-result-object v1

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->data:Lorg/spongycastle/crypto/modes/KCCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/modes/KCCMBlockCipher$ExposedByteArrayOutputStream;->size()I

    move-result v3

    move-object v0, p0

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->processPacket([BII[BI)I

    move-result v6

    .line 408
    .local v6, "len":I
    invoke-virtual {p0}, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->reset()V

    .line 410
    return v6
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lorg/spongycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/KCCM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMac()[B
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->mac:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getOutputSize(I)I
    .locals 1
    .param p1, "len"    # I

    .prologue
    .line 425
    iget v0, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->macSize:I

    add-int/2addr v0, p1

    return v0
.end method

.method public getUnderlyingCipher()Lorg/spongycastle/crypto/BlockCipher;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    return-object v0
.end method

.method public getUpdateOutputSize(I)I
    .locals 0
    .param p1, "len"    # I

    .prologue
    .line 420
    return p1
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 6
    .param p1, "forEncryption"    # Z
    .param p2, "params"    # Lorg/spongycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 105
    instance-of v2, p2, Lorg/spongycastle/crypto/params/AEADParameters;

    if-eqz v2, :cond_3

    move-object v1, p2

    .line 108
    check-cast v1, Lorg/spongycastle/crypto/params/AEADParameters;

    .line 110
    .local v1, "parameters":Lorg/spongycastle/crypto/params/AEADParameters;
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/AEADParameters;->getMacSize()I

    move-result v2

    const/16 v3, 0x200

    if-gt v2, v3, :cond_0

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/AEADParameters;->getMacSize()I

    move-result v2

    const/16 v3, 0x40

    if-lt v2, v3, :cond_0

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/AEADParameters;->getMacSize()I

    move-result v2

    rem-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_1

    .line 112
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid mac size specified"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 115
    :cond_1
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/AEADParameters;->getNonce()[B

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->nonce:[B

    .line 116
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/AEADParameters;->getMacSize()I

    move-result v2

    div-int/lit8 v2, v2, 0x8

    iput v2, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->macSize:I

    .line 117
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/AEADParameters;->getAssociatedText()[B

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->initialAssociatedText:[B

    .line 118
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/AEADParameters;->getKey()Lorg/spongycastle/crypto/params/KeyParameter;

    move-result-object v0

    .line 132
    .end local v1    # "parameters":Lorg/spongycastle/crypto/params/AEADParameters;
    .end local p2    # "params":Lorg/spongycastle/crypto/CipherParameters;
    .local v0, "cipherParameters":Lorg/spongycastle/crypto/CipherParameters;
    :goto_0
    iget v2, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->macSize:I

    new-array v2, v2, [B

    iput-object v2, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->mac:[B

    .line 133
    iput-boolean p1, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->forEncryption:Z

    .line 134
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v2, v5, v0}, Lorg/spongycastle/crypto/BlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 136
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->counter:[B

    aput-byte v5, v2, v4

    .line 138
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->initialAssociatedText:[B

    if-eqz v2, :cond_2

    .line 140
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->initialAssociatedText:[B

    iget-object v3, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->initialAssociatedText:[B

    array-length v3, v3

    invoke-virtual {p0, v2, v4, v3}, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->processAADBytes([BII)V

    .line 142
    :cond_2
    return-void

    .line 120
    .end local v0    # "cipherParameters":Lorg/spongycastle/crypto/CipherParameters;
    .restart local p2    # "params":Lorg/spongycastle/crypto/CipherParameters;
    :cond_3
    instance-of v2, p2, Lorg/spongycastle/crypto/params/ParametersWithIV;

    if-eqz v2, :cond_4

    move-object v2, p2

    .line 122
    check-cast v2, Lorg/spongycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->nonce:[B

    .line 123
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v2}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v2

    iput v2, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->macSize:I

    .line 124
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->initialAssociatedText:[B

    .line 125
    check-cast p2, Lorg/spongycastle/crypto/params/ParametersWithIV;

    .end local p2    # "params":Lorg/spongycastle/crypto/CipherParameters;
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    .restart local v0    # "cipherParameters":Lorg/spongycastle/crypto/CipherParameters;
    goto :goto_0

    .line 129
    .end local v0    # "cipherParameters":Lorg/spongycastle/crypto/CipherParameters;
    .restart local p2    # "params":Lorg/spongycastle/crypto/CipherParameters;
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid parameters specified"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public processAADByte(B)V
    .locals 1
    .param p1, "in"    # B

    .prologue
    .line 156
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->associatedText:Lorg/spongycastle/crypto/modes/KCCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0, p1}, Lorg/spongycastle/crypto/modes/KCCMBlockCipher$ExposedByteArrayOutputStream;->write(I)V

    .line 157
    return-void
.end method

.method public processAADBytes([BII)V
    .locals 1
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I

    .prologue
    .line 161
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->associatedText:Lorg/spongycastle/crypto/modes/KCCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lorg/spongycastle/crypto/modes/KCCMBlockCipher$ExposedByteArrayOutputStream;->write([BII)V

    .line 162
    return-void
.end method

.method public processByte(B[BI)I
    .locals 1
    .param p1, "in"    # B
    .param p2, "out"    # [B
    .param p3, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 229
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->data:Lorg/spongycastle/crypto/modes/KCCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0, p1}, Lorg/spongycastle/crypto/modes/KCCMBlockCipher$ExposedByteArrayOutputStream;->write(I)V

    .line 231
    const/4 v0, 0x0

    return v0
.end method

.method public processBytes([BII[BI)I
    .locals 2
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .param p4, "out"    # [B
    .param p5, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 237
    array-length v0, p1

    add-int v1, p2, p3

    if-ge v0, v1, :cond_0

    .line 239
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->data:Lorg/spongycastle/crypto/modes/KCCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lorg/spongycastle/crypto/modes/KCCMBlockCipher$ExposedByteArrayOutputStream;->write([BII)V

    .line 243
    const/4 v0, 0x0

    return v0
.end method

.method public processPacket([BII[BI)I
    .locals 10
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I
    .param p4, "out"    # [B
    .param p5, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lorg/spongycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 249
    array-length v5, p1

    sub-int/2addr v5, p2

    if-ge v5, p3, :cond_0

    .line 251
    new-instance v5, Lorg/spongycastle/crypto/DataLengthException;

    const-string v6, "input buffer too short"

    invoke-direct {v5, v6}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 253
    :cond_0
    array-length v5, p4

    sub-int/2addr v5, p5

    if-ge v5, p3, :cond_1

    .line 255
    new-instance v5, Lorg/spongycastle/crypto/OutputLengthException;

    const-string v6, "output buffer too short"

    invoke-direct {v5, v6}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 258
    :cond_1
    iget-object v5, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->associatedText:Lorg/spongycastle/crypto/modes/KCCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v5}, Lorg/spongycastle/crypto/modes/KCCMBlockCipher$ExposedByteArrayOutputStream;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 260
    iget-boolean v5, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->forEncryption:Z

    if-eqz v5, :cond_3

    .line 262
    iget-object v5, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->associatedText:Lorg/spongycastle/crypto/modes/KCCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v5}, Lorg/spongycastle/crypto/modes/KCCMBlockCipher$ExposedByteArrayOutputStream;->getBuffer()[B

    move-result-object v5

    iget-object v6, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->associatedText:Lorg/spongycastle/crypto/modes/KCCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v6}, Lorg/spongycastle/crypto/modes/KCCMBlockCipher$ExposedByteArrayOutputStream;->size()I

    move-result v6

    iget-object v7, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->data:Lorg/spongycastle/crypto/modes/KCCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v7}, Lorg/spongycastle/crypto/modes/KCCMBlockCipher$ExposedByteArrayOutputStream;->size()I

    move-result v7

    invoke-direct {p0, v5, v9, v6, v7}, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->processAAD([BIII)V

    .line 270
    :cond_2
    :goto_0
    iget-boolean v5, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->forEncryption:Z

    if-eqz v5, :cond_8

    .line 272
    iget-object v5, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v5}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v5

    rem-int v5, p3, v5

    if-eqz v5, :cond_4

    .line 274
    new-instance v5, Lorg/spongycastle/crypto/DataLengthException;

    const-string v6, "partial blocks not supported"

    invoke-direct {v5, v6}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 266
    :cond_3
    iget-object v5, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->associatedText:Lorg/spongycastle/crypto/modes/KCCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v5}, Lorg/spongycastle/crypto/modes/KCCMBlockCipher$ExposedByteArrayOutputStream;->getBuffer()[B

    move-result-object v5

    iget-object v6, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->associatedText:Lorg/spongycastle/crypto/modes/KCCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v6}, Lorg/spongycastle/crypto/modes/KCCMBlockCipher$ExposedByteArrayOutputStream;->size()I

    move-result v6

    iget-object v7, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->data:Lorg/spongycastle/crypto/modes/KCCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v7}, Lorg/spongycastle/crypto/modes/KCCMBlockCipher$ExposedByteArrayOutputStream;->size()I

    move-result v7

    iget v8, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->macSize:I

    sub-int/2addr v7, v8

    invoke-direct {p0, v5, v9, v6, v7}, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->processAAD([BIII)V

    goto :goto_0

    .line 277
    :cond_4
    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->CalculateMac([BII)V

    .line 278
    iget-object v5, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v6, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->nonce:[B

    iget-object v7, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->s:[B

    invoke-interface {v5, v6, v9, v7, v9}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 280
    move v4, p3

    .line 281
    .local v4, "totalLength":I
    :goto_1
    if-lez v4, :cond_5

    .line 283
    invoke-direct/range {p0 .. p5}, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->ProcessBlock([BII[BI)V

    .line 284
    iget-object v5, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v5}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v5

    sub-int/2addr v4, v5

    .line 285
    iget-object v5, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v5}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v5

    add-int/2addr p2, v5

    .line 286
    iget-object v5, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v5}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v5

    add-int/2addr p5, v5

    goto :goto_1

    .line 289
    :cond_5
    const/4 v2, 0x0

    .local v2, "byteIndex":I
    :goto_2
    iget-object v5, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->counter:[B

    array-length v5, v5

    if-ge v2, v5, :cond_6

    .line 291
    iget-object v5, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->s:[B

    aget-byte v6, v5, v2

    iget-object v7, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->counter:[B

    aget-byte v7, v7, v2

    add-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v5, v2

    .line 289
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 294
    :cond_6
    iget-object v5, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v6, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->s:[B

    iget-object v7, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->buffer:[B

    invoke-interface {v5, v6, v9, v7, v9}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 296
    const/4 v2, 0x0

    :goto_3
    iget v5, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->macSize:I

    if-ge v2, v5, :cond_7

    .line 298
    add-int v5, p5, v2

    iget-object v6, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->buffer:[B

    aget-byte v6, v6, v2

    iget-object v7, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->macBlock:[B

    aget-byte v7, v7, v2

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, p4, v5

    .line 296
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 301
    :cond_7
    iget-object v5, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->macBlock:[B

    iget-object v6, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->mac:[B

    iget v7, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->macSize:I

    invoke-static {v5, v9, v6, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 303
    invoke-virtual {p0}, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->reset()V

    .line 305
    iget v5, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->macSize:I

    add-int/2addr v5, p3

    .line 366
    .end local v4    # "totalLength":I
    :goto_4
    return v5

    .line 309
    .end local v2    # "byteIndex":I
    :cond_8
    iget v5, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->macSize:I

    sub-int v5, p3, v5

    iget-object v6, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v6}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v6

    rem-int/2addr v5, v6

    if-eqz v5, :cond_9

    .line 311
    new-instance v5, Lorg/spongycastle/crypto/DataLengthException;

    const-string v6, "partial blocks not supported"

    invoke-direct {v5, v6}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 314
    :cond_9
    iget-object v5, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v6, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->nonce:[B

    iget-object v7, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->s:[B

    invoke-interface {v5, v6, v9, v7, v9}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 316
    iget-object v5, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v5}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v5

    div-int v1, p3, v5

    .line 318
    .local v1, "blocks":I
    const/4 v0, 0x0

    .local v0, "blockNum":I
    :goto_5
    if-ge v0, v1, :cond_a

    .line 320
    invoke-direct/range {p0 .. p5}, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->ProcessBlock([BII[BI)V

    .line 322
    iget-object v5, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v5}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v5

    add-int/2addr p2, v5

    .line 323
    iget-object v5, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v5}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v5

    add-int/2addr p5, v5

    .line 318
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 326
    :cond_a
    if-le p3, p2, :cond_d

    .line 328
    const/4 v2, 0x0

    .restart local v2    # "byteIndex":I
    :goto_6
    iget-object v5, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->counter:[B

    array-length v5, v5

    if-ge v2, v5, :cond_b

    .line 330
    iget-object v5, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->s:[B

    aget-byte v6, v5, v2

    iget-object v7, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->counter:[B

    aget-byte v7, v7, v2

    add-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v5, v2

    .line 328
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 333
    :cond_b
    iget-object v5, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v6, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->s:[B

    iget-object v7, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->buffer:[B

    invoke-interface {v5, v6, v9, v7, v9}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 335
    const/4 v2, 0x0

    :goto_7
    iget v5, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->macSize:I

    if-ge v2, v5, :cond_c

    .line 337
    add-int v5, p5, v2

    iget-object v6, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->buffer:[B

    aget-byte v6, v6, v2

    add-int v7, p2, v2

    aget-byte v7, p1, v7

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, p4, v5

    .line 335
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 339
    :cond_c
    iget v5, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->macSize:I

    add-int/2addr p5, v5

    .line 342
    .end local v2    # "byteIndex":I
    :cond_d
    const/4 v2, 0x0

    .restart local v2    # "byteIndex":I
    :goto_8
    iget-object v5, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->counter:[B

    array-length v5, v5

    if-ge v2, v5, :cond_e

    .line 344
    iget-object v5, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->s:[B

    aget-byte v6, v5, v2

    iget-object v7, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->counter:[B

    aget-byte v7, v7, v2

    add-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v5, v2

    .line 342
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 347
    :cond_e
    iget-object v5, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v6, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->s:[B

    iget-object v7, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->buffer:[B

    invoke-interface {v5, v6, v9, v7, v9}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 349
    iget v5, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->macSize:I

    sub-int v5, p5, v5

    iget-object v6, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->buffer:[B

    iget v7, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->macSize:I

    invoke-static {p4, v5, v6, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 351
    iget v5, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->macSize:I

    sub-int v5, p5, v5

    invoke-direct {p0, p4, v9, v5}, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->CalculateMac([BII)V

    .line 353
    iget-object v5, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->macBlock:[B

    iget-object v6, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->mac:[B

    iget v7, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->macSize:I

    invoke-static {v5, v9, v6, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 355
    iget v5, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->macSize:I

    new-array v3, v5, [B

    .line 357
    .local v3, "calculatedMac":[B
    iget-object v5, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->buffer:[B

    iget v6, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->macSize:I

    invoke-static {v5, v9, v3, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 359
    iget-object v5, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->mac:[B

    invoke-static {v5, v3}, Lorg/spongycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v5

    if-nez v5, :cond_f

    .line 361
    new-instance v5, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v6, "mac check failed"

    invoke-direct {v5, v6}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 364
    :cond_f
    invoke-virtual {p0}, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->reset()V

    .line 366
    iget v5, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->macSize:I

    sub-int v5, p3, v5

    goto/16 :goto_4
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 430
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->G1:[B

    invoke-static {v0, v2}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 431
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->buffer:[B

    invoke-static {v0, v2}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 432
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->counter:[B

    invoke-static {v0, v2}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 433
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->macBlock:[B

    invoke-static {v0, v2}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 434
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->counter:[B

    const/4 v1, 0x1

    aput-byte v1, v0, v2

    .line 435
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->data:Lorg/spongycastle/crypto/modes/KCCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/modes/KCCMBlockCipher$ExposedByteArrayOutputStream;->reset()V

    .line 436
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->associatedText:Lorg/spongycastle/crypto/modes/KCCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/modes/KCCMBlockCipher$ExposedByteArrayOutputStream;->reset()V

    .line 438
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->initialAssociatedText:[B

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->initialAssociatedText:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->initialAssociatedText:[B

    array-length v1, v1

    invoke-virtual {p0, v0, v2, v1}, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;->processAADBytes([BII)V

    .line 442
    :cond_0
    return-void
.end method
