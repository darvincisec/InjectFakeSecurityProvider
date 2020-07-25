.class public Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;
.super Ljava/lang/Object;
.source "DSTU7624WrapEngine.java"

# interfaces
.implements Lorg/spongycastle/crypto/Wrapper;


# static fields
.field private static final BYTES_IN_INTEGER:I = 0x4


# instance fields
.field private B:[B

.field private Btemp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private checkSumArray:[B

.field private engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

.field private forWrapping:Z

.field private intArray:[B

.field private zeroArray:[B


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "blockBitLength"    # I

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-direct {v0, p1}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;-><init>(I)V

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    .line 34
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->B:[B

    .line 35
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->checkSumArray:[B

    .line 36
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->zeroArray:[B

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->Btemp:Ljava/util/ArrayList;

    .line 38
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->intArray:[B

    .line 40
    return-void
.end method

.method private intToBytes(I[BI)V
    .locals 2
    .param p1, "number"    # I
    .param p2, "outBytes"    # [B
    .param p3, "outOff"    # I

    .prologue
    .line 234
    add-int/lit8 v0, p3, 0x3

    shr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 235
    add-int/lit8 v0, p3, 0x2

    shr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 236
    add-int/lit8 v0, p3, 0x1

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 237
    int-to-byte v0, p1

    aput-byte v0, p2, p3

    .line 238
    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    const-string v0, "DSTU7624WrapEngine"

    return-object v0
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 2
    .param p1, "forWrapping"    # Z
    .param p2, "param"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 44
    instance-of v0, p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_0

    .line 46
    check-cast p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    .end local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object p2

    .line 49
    .restart local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_0
    iput-boolean p1, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->forWrapping:Z

    .line 50
    instance-of v0, p2, Lorg/spongycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_1

    .line 52
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {v0, p1, p2}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 59
    return-void

    .line 56
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid parameters passed to DSTU7624WrapEngine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unwrap([BII)[B
    .locals 19
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    .line 148
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->forWrapping:Z

    if-eqz v14, :cond_0

    .line 150
    new-instance v14, Ljava/lang/IllegalStateException;

    const-string v15, "not set for unwrapping"

    invoke-direct {v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 153
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {v14}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result v14

    rem-int v14, p3, v14

    if-eqz v14, :cond_1

    .line 156
    new-instance v14, Lorg/spongycastle/crypto/DataLengthException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "unwrap data must be a multiple of "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " bytes"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 159
    :cond_1
    mul-int/lit8 v14, p3, 0x2

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {v15}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result v15

    div-int v11, v14, v15

    .line 161
    .local v11, "n":I
    add-int/lit8 v14, v11, -0x1

    mul-int/lit8 v4, v14, 0x6

    .line 163
    .local v4, "V":I
    move/from16 v0, p3

    new-array v7, v0, [B

    .line 164
    .local v7, "buffer":[B
    const/4 v14, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v0, v1, v7, v14, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 166
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {v14}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    new-array v3, v14, [B

    .line 167
    .local v3, "B":[B
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    invoke-static {v7, v14, v3, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 169
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->Btemp:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 171
    array-length v14, v7

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {v15}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    sub-int v5, v14, v15

    .line 172
    .local v5, "bHalfBlocksLen":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {v14}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result v14

    div-int/lit8 v6, v14, 0x2

    .line 173
    .local v6, "bufOff":I
    :goto_0
    if-eqz v5, :cond_2

    .line 175
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {v14}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    new-array v12, v14, [B

    .line 176
    .local v12, "temp":[B
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {v15}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    invoke-static {v7, v6, v12, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 178
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->Btemp:Ljava/util/ArrayList;

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {v14}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    sub-int/2addr v5, v14

    .line 181
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {v14}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v6, v14

    .line 182
    goto :goto_0

    .line 184
    .end local v12    # "temp":[B
    :cond_2
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_1
    if-ge v10, v4, :cond_5

    .line 186
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->Btemp:Ljava/util/ArrayList;

    add-int/lit8 v15, v11, -0x2

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result v17

    div-int/lit8 v17, v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v14, v15, v7, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 187
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {v15}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    invoke-static {v3, v14, v7, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 188
    sub-int v14, v4, v10

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->intArray:[B

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v14, v15, v1}, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->intToBytes(I[BI)V

    .line 189
    const/4 v8, 0x0

    .local v8, "byteNum":I
    :goto_2
    const/4 v14, 0x4

    if-ge v8, v14, :cond_3

    .line 191
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {v14}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v14, v8

    aget-byte v15, v7, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->intArray:[B

    move-object/from16 v16, v0

    aget-byte v16, v16, v8

    xor-int v15, v15, v16

    int-to-byte v15, v15

    aput-byte v15, v7, v14

    .line 189
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 194
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v7, v15, v7, v0}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->processBlock([BI[BI)I

    .line 196
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    invoke-static {v7, v14, v3, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 198
    const/4 v9, 0x2

    .local v9, "i":I
    :goto_3
    if-ge v9, v11, :cond_4

    .line 200
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->Btemp:Ljava/util/ArrayList;

    sub-int v15, v11, v9

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->Btemp:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    sub-int v17, v11, v9

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    invoke-static/range {v14 .. v18}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 198
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 203
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {v14}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->Btemp:Ljava/util/ArrayList;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result v17

    div-int/lit8 v17, v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v7, v14, v15, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 184
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 206
    .end local v8    # "byteNum":I
    .end local v9    # "i":I
    :cond_5
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    invoke-static {v3, v14, v7, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 207
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {v14}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result v14

    div-int/lit8 v6, v14, 0x2

    .line 209
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_4
    add-int/lit8 v14, v11, -0x1

    if-ge v9, v14, :cond_6

    .line 211
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->Btemp:Ljava/util/ArrayList;

    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    invoke-static {v14, v15, v7, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 212
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {v14}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v6, v14

    .line 209
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 215
    :cond_6
    array-length v14, v7

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {v15}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result v15

    sub-int/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->checkSumArray:[B

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v7, v14, v15, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 217
    array-length v14, v7

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {v15}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result v15

    sub-int/2addr v14, v15

    new-array v13, v14, [B

    .line 218
    .local v13, "wrappedBuffer":[B
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->checkSumArray:[B

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->zeroArray:[B

    invoke-static {v14, v15}, Lorg/spongycastle/util/Arrays;->areEqual([B[B)Z

    move-result v14

    if-nez v14, :cond_7

    .line 220
    new-instance v14, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v15, "checksum failed"

    invoke-direct {v14, v15}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 224
    :cond_7
    const/4 v14, 0x0

    const/4 v15, 0x0

    array-length v0, v7

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result v17

    sub-int v16, v16, v17

    move/from16 v0, v16

    invoke-static {v7, v14, v13, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 228
    return-object v13
.end method

.method public wrap([BII)[B
    .locals 17
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I

    .prologue
    .line 68
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->forWrapping:Z

    if-nez v12, :cond_0

    .line 70
    new-instance v12, Ljava/lang/IllegalStateException;

    const-string v13, "not set for wrapping"

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 73
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {v12}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result v12

    rem-int v12, p3, v12

    if-eqz v12, :cond_1

    .line 76
    new-instance v12, Lorg/spongycastle/crypto/DataLengthException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "wrap data must be a multiple of "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {v14}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " bytes"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 79
    :cond_1
    add-int v12, p2, p3

    move-object/from16 v0, p1

    array-length v13, v0

    if-le v12, v13, :cond_2

    .line 81
    new-instance v12, Lorg/spongycastle/crypto/DataLengthException;

    const-string v13, "input buffer too short"

    invoke-direct {v12, v13}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 84
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {v12}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result v12

    div-int v12, p3, v12

    add-int/lit8 v12, v12, 0x1

    mul-int/lit8 v9, v12, 0x2

    .line 85
    .local v9, "n":I
    add-int/lit8 v12, v9, -0x1

    mul-int/lit8 v3, v12, 0x6

    .line 88
    .local v3, "V":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {v12}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result v12

    add-int v12, v12, p3

    new-array v11, v12, [B

    .line 89
    .local v11, "wrappedBuffer":[B
    const/4 v12, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v0, v1, v11, v12, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->B:[B

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {v15}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    invoke-static {v11, v12, v13, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->Btemp:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 95
    array-length v12, v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {v13}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    sub-int v4, v12, v13

    .line 96
    .local v4, "bHalfBlocksLen":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {v12}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result v12

    div-int/lit8 v5, v12, 0x2

    .line 97
    .local v5, "bufOff":I
    :goto_0
    if-eqz v4, :cond_3

    .line 99
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {v12}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    new-array v10, v12, [B

    .line 100
    .local v10, "temp":[B
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {v13}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    invoke-static {v11, v5, v10, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->Btemp:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {v12}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    sub-int/2addr v4, v12

    .line 105
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {v12}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v5, v12

    .line 106
    goto :goto_0

    .line 108
    .end local v10    # "temp":[B
    :cond_3
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    if-ge v8, v3, :cond_6

    .line 110
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->B:[B

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {v15}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    invoke-static {v12, v13, v11, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->Btemp:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {v14}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {v15}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    invoke-static {v12, v13, v11, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v12, v11, v13, v11, v14}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->processBlock([BI[BI)I

    .line 115
    add-int/lit8 v12, v8, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->intArray:[B

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14}, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->intToBytes(I[BI)V

    .line 116
    const/4 v6, 0x0

    .local v6, "byteNum":I
    :goto_2
    const/4 v12, 0x4

    if-ge v6, v12, :cond_4

    .line 118
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {v12}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v12, v6

    aget-byte v13, v11, v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->intArray:[B

    aget-byte v14, v14, v6

    xor-int/2addr v13, v14

    int-to-byte v13, v13

    aput-byte v13, v11, v12

    .line 116
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 121
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {v12}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->B:[B

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {v15}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    invoke-static {v11, v12, v13, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 123
    const/4 v7, 0x2

    .local v7, "i":I
    :goto_3
    if-ge v7, v9, :cond_5

    .line 125
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->Btemp:Ljava/util/ArrayList;

    add-int/lit8 v13, v7, -0x1

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->Btemp:Ljava/util/ArrayList;

    add-int/lit8 v15, v7, -0x2

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    invoke-static/range {v12 .. v16}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 123
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 128
    :cond_5
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->Btemp:Ljava/util/ArrayList;

    add-int/lit8 v14, v9, -0x2

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {v15}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    invoke-static {v11, v12, v13, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 108
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 132
    .end local v6    # "byteNum":I
    .end local v7    # "i":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->B:[B

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {v15}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    invoke-static {v12, v13, v11, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {v12}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result v12

    div-int/lit8 v5, v12, 0x2

    .line 135
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_4
    add-int/lit8 v12, v9, -0x1

    if-ge v7, v12, :cond_7

    .line 137
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->Btemp:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {v14}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    invoke-static {v12, v13, v11, v5, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 138
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {v12}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v5, v12

    .line 135
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 141
    :cond_7
    return-object v11
.end method
