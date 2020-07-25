.class public abstract Lorg/spongycastle/math/raw/Nat384;
.super Ljava/lang/Object;
.source "Nat384.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static mul([I[I[I)V
    .locals 17
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "zz"    # [I

    .prologue
    .line 8
    invoke-static/range {p0 .. p2}, Lorg/spongycastle/math/raw/Nat192;->mul([I[I[I)V

    .line 9
    const/4 v3, 0x6

    const/4 v5, 0x6

    const/16 v7, 0xc

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v6, p2

    invoke-static/range {v2 .. v7}, Lorg/spongycastle/math/raw/Nat192;->mul([II[II[II)V

    .line 11
    const/4 v2, 0x6

    const/16 v3, 0xc

    move-object/from16 v0, p2

    move-object/from16 v1, p2

    invoke-static {v0, v2, v1, v3}, Lorg/spongycastle/math/raw/Nat192;->addToEachOther([II[II)I

    move-result v14

    .line 12
    .local v14, "c18":I
    const/4 v2, 0x0

    const/4 v3, 0x6

    const/4 v4, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p2

    invoke-static {v0, v2, v1, v3, v4}, Lorg/spongycastle/math/raw/Nat192;->addTo([II[III)I

    move-result v2

    add-int v13, v14, v2

    .line 13
    .local v13, "c12":I
    const/16 v2, 0x12

    const/16 v3, 0xc

    move-object/from16 v0, p2

    move-object/from16 v1, p2

    invoke-static {v0, v2, v1, v3, v13}, Lorg/spongycastle/math/raw/Nat192;->addTo([II[III)I

    move-result v2

    add-int/2addr v14, v2

    .line 15
    invoke-static {}, Lorg/spongycastle/math/raw/Nat192;->create()[I

    move-result-object v6

    .local v6, "dx":[I
    invoke-static {}, Lorg/spongycastle/math/raw/Nat192;->create()[I

    move-result-object v11

    .line 16
    .local v11, "dy":[I
    const/4 v3, 0x6

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v4, p0

    invoke-static/range {v2 .. v7}, Lorg/spongycastle/math/raw/Nat192;->diff([II[II[II)Z

    move-result v2

    const/4 v8, 0x6

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p1

    move-object/from16 v9, p1

    invoke-static/range {v7 .. v12}, Lorg/spongycastle/math/raw/Nat192;->diff([II[II[II)Z

    move-result v3

    if-eq v2, v3, :cond_0

    const/4 v15, 0x1

    .line 18
    .local v15, "neg":Z
    :goto_0
    invoke-static {}, Lorg/spongycastle/math/raw/Nat192;->createExt()[I

    move-result-object v16

    .line 19
    .local v16, "tt":[I
    move-object/from16 v0, v16

    invoke-static {v6, v11, v0}, Lorg/spongycastle/math/raw/Nat192;->mul([I[I[I)V

    .line 21
    if-eqz v15, :cond_1

    const/16 v2, 0xc

    const/4 v3, 0x0

    const/4 v4, 0x6

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v2, v0, v3, v1, v4}, Lorg/spongycastle/math/raw/Nat;->addTo(I[II[II)I

    move-result v2

    :goto_1
    add-int/2addr v14, v2

    .line 22
    const/16 v2, 0x18

    const/16 v3, 0x12

    move-object/from16 v0, p2

    invoke-static {v2, v14, v0, v3}, Lorg/spongycastle/math/raw/Nat;->addWordAt(II[II)I

    .line 23
    return-void

    .line 16
    .end local v15    # "neg":Z
    .end local v16    # "tt":[I
    :cond_0
    const/4 v15, 0x0

    goto :goto_0

    .line 21
    .restart local v15    # "neg":Z
    .restart local v16    # "tt":[I
    :cond_1
    const/16 v2, 0xc

    const/4 v3, 0x0

    const/4 v4, 0x6

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v2, v0, v3, v1, v4}, Lorg/spongycastle/math/raw/Nat;->subFrom(I[II[II)I

    move-result v2

    goto :goto_1
.end method

.method public static square([I[I)V
    .locals 11
    .param p0, "x"    # [I
    .param p1, "zz"    # [I

    .prologue
    const/16 v10, 0x12

    const/16 v9, 0xc

    const/4 v1, 0x6

    const/4 v3, 0x0

    .line 27
    invoke-static {p0, p1}, Lorg/spongycastle/math/raw/Nat192;->square([I[I)V

    .line 28
    invoke-static {p0, v1, p1, v9}, Lorg/spongycastle/math/raw/Nat192;->square([II[II)V

    .line 30
    invoke-static {p1, v1, p1, v9}, Lorg/spongycastle/math/raw/Nat192;->addToEachOther([II[II)I

    move-result v7

    .line 31
    .local v7, "c18":I
    invoke-static {p1, v3, p1, v1, v3}, Lorg/spongycastle/math/raw/Nat192;->addTo([II[III)I

    move-result v0

    add-int v6, v7, v0

    .line 32
    .local v6, "c12":I
    invoke-static {p1, v10, p1, v9, v6}, Lorg/spongycastle/math/raw/Nat192;->addTo([II[III)I

    move-result v0

    add-int/2addr v7, v0

    .line 34
    invoke-static {}, Lorg/spongycastle/math/raw/Nat192;->create()[I

    move-result-object v4

    .local v4, "dx":[I
    move-object v0, p0

    move-object v2, p0

    move v5, v3

    .line 35
    invoke-static/range {v0 .. v5}, Lorg/spongycastle/math/raw/Nat192;->diff([II[II[II)Z

    .line 37
    invoke-static {}, Lorg/spongycastle/math/raw/Nat192;->createExt()[I

    move-result-object v8

    .line 38
    .local v8, "tt":[I
    invoke-static {v4, v8}, Lorg/spongycastle/math/raw/Nat192;->square([I[I)V

    .line 40
    invoke-static {v9, v8, v3, p1, v1}, Lorg/spongycastle/math/raw/Nat;->subFrom(I[II[II)I

    move-result v0

    add-int/2addr v7, v0

    .line 41
    const/16 v0, 0x18

    invoke-static {v0, v7, p1, v10}, Lorg/spongycastle/math/raw/Nat;->addWordAt(II[II)I

    .line 42
    return-void
.end method
