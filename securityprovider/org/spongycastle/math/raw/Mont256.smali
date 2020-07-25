.class public abstract Lorg/spongycastle/math/raw/Mont256;
.super Ljava/lang/Object;
.source "Mont256.java"


# static fields
.field private static final M:J = 0xffffffffL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inverse32(I)I
    .locals 2
    .param p0, "x"    # I

    .prologue
    .line 10
    move v0, p0

    .line 11
    .local v0, "z":I
    mul-int v1, p0, v0

    rsub-int/lit8 v1, v1, 0x2

    mul-int/2addr v0, v1

    .line 12
    mul-int v1, p0, v0

    rsub-int/lit8 v1, v1, 0x2

    mul-int/2addr v0, v1

    .line 13
    mul-int v1, p0, v0

    rsub-int/lit8 v1, v1, 0x2

    mul-int/2addr v0, v1

    .line 14
    mul-int v1, p0, v0

    rsub-int/lit8 v1, v1, 0x2

    mul-int/2addr v0, v1

    .line 16
    return v0
.end method

.method public static multAdd([I[I[I[II)V
    .locals 28
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I
    .param p3, "m"    # [I
    .param p4, "mInv32"    # I

    .prologue
    .line 21
    const/16 v20, 0x0

    .line 22
    .local v20, "z_8":I
    const/16 v21, 0x0

    aget v21, p1, v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v16, v22, v24

    .line 24
    .local v16, "y_0":J
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    const/16 v21, 0x8

    move/from16 v0, v21

    if-ge v6, v0, :cond_1

    .line 26
    const/16 v21, 0x0

    aget v21, p2, v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v18, v22, v24

    .line 27
    .local v18, "z_0":J
    aget v21, p0, v6

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v14, v22, v24

    .line 29
    .local v14, "x_i":J
    mul-long v8, v14, v16

    .line 30
    .local v8, "prod1":J
    const-wide v22, 0xffffffffL

    and-long v22, v22, v8

    add-long v4, v22, v18

    .line 32
    .local v4, "carry":J
    long-to-int v0, v4

    move/from16 v21, v0

    mul-int v21, v21, p4

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v12, v22, v24

    .line 34
    .local v12, "t":J
    const/16 v21, 0x0

    aget v21, p3, v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v22, v22, v24

    mul-long v10, v12, v22

    .line 35
    .local v10, "prod2":J
    const-wide v22, 0xffffffffL

    and-long v22, v22, v10

    add-long v4, v4, v22

    .line 37
    const/16 v21, 0x20

    ushr-long v22, v4, v21

    const/16 v21, 0x20

    ushr-long v24, v8, v21

    add-long v22, v22, v24

    const/16 v21, 0x20

    ushr-long v24, v10, v21

    add-long v4, v22, v24

    .line 39
    const/4 v7, 0x1

    .local v7, "j":I
    :goto_1
    const/16 v21, 0x8

    move/from16 v0, v21

    if-ge v7, v0, :cond_0

    .line 41
    aget v21, p1, v7

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v22, v22, v24

    mul-long v8, v14, v22

    .line 42
    aget v21, p3, v7

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v22, v22, v24

    mul-long v10, v12, v22

    .line 44
    const-wide v22, 0xffffffffL

    and-long v22, v22, v8

    const-wide v24, 0xffffffffL

    and-long v24, v24, v10

    add-long v22, v22, v24

    aget v21, p2, v7

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v24, v24, v26

    add-long v22, v22, v24

    add-long v4, v4, v22

    .line 45
    add-int/lit8 v21, v7, -0x1

    long-to-int v0, v4

    move/from16 v22, v0

    aput v22, p2, v21

    .line 46
    const/16 v21, 0x20

    ushr-long v22, v4, v21

    const/16 v21, 0x20

    ushr-long v24, v8, v21

    add-long v22, v22, v24

    const/16 v21, 0x20

    ushr-long v24, v10, v21

    add-long v4, v22, v24

    .line 39
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 49
    :cond_0
    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v22, v22, v24

    add-long v4, v4, v22

    .line 50
    const/16 v21, 0x7

    long-to-int v0, v4

    move/from16 v22, v0

    aput v22, p2, v21

    .line 51
    const/16 v21, 0x20

    ushr-long v22, v4, v21

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v20, v0

    .line 24
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 54
    .end local v4    # "carry":J
    .end local v7    # "j":I
    .end local v8    # "prod1":J
    .end local v10    # "prod2":J
    .end local v12    # "t":J
    .end local v14    # "x_i":J
    .end local v18    # "z_0":J
    :cond_1
    if-nez v20, :cond_2

    invoke-static/range {p2 .. p3}, Lorg/spongycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 56
    :cond_2
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lorg/spongycastle/math/raw/Nat256;->sub([I[I[I)I

    .line 58
    :cond_3
    return-void
.end method

.method public static multAddXF([I[I[I[I)V
    .locals 26
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I
    .param p3, "m"    # [I

    .prologue
    .line 64
    const/16 v18, 0x0

    .line 65
    .local v18, "z_8":I
    const/16 v19, 0x0

    aget v19, p1, v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v16, v20, v22

    .line 67
    .local v16, "y_0":J
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    const/16 v19, 0x8

    move/from16 v0, v19

    if-ge v6, v0, :cond_1

    .line 69
    aget v19, p0, v6

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v14, v20, v22

    .line 71
    .local v14, "x_i":J
    mul-long v20, v14, v16

    const/16 v19, 0x0

    aget v19, p2, v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v22, v22, v24

    add-long v4, v20, v22

    .line 72
    .local v4, "carry":J
    const-wide v20, 0xffffffffL

    and-long v12, v4, v20

    .line 73
    .local v12, "t":J
    const/16 v19, 0x20

    ushr-long v20, v4, v19

    add-long v4, v20, v12

    .line 75
    const/4 v7, 0x1

    .local v7, "j":I
    :goto_1
    const/16 v19, 0x8

    move/from16 v0, v19

    if-ge v7, v0, :cond_0

    .line 77
    aget v19, p1, v7

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v20, v20, v22

    mul-long v8, v14, v20

    .line 78
    .local v8, "prod1":J
    aget v19, p3, v7

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v20, v20, v22

    mul-long v10, v12, v20

    .line 80
    .local v10, "prod2":J
    const-wide v20, 0xffffffffL

    and-long v20, v20, v8

    const-wide v22, 0xffffffffL

    and-long v22, v22, v10

    add-long v20, v20, v22

    aget v19, p2, v7

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v22, v22, v24

    add-long v20, v20, v22

    add-long v4, v4, v20

    .line 81
    add-int/lit8 v19, v7, -0x1

    long-to-int v0, v4

    move/from16 v20, v0

    aput v20, p2, v19

    .line 82
    const/16 v19, 0x20

    ushr-long v20, v4, v19

    const/16 v19, 0x20

    ushr-long v22, v8, v19

    add-long v20, v20, v22

    const/16 v19, 0x20

    ushr-long v22, v10, v19

    add-long v4, v20, v22

    .line 75
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 85
    .end local v8    # "prod1":J
    .end local v10    # "prod2":J
    :cond_0
    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v20, v20, v22

    add-long v4, v4, v20

    .line 86
    const/16 v19, 0x7

    long-to-int v0, v4

    move/from16 v20, v0

    aput v20, p2, v19

    .line 87
    const/16 v19, 0x20

    ushr-long v20, v4, v19

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v18, v0

    .line 67
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 90
    .end local v4    # "carry":J
    .end local v7    # "j":I
    .end local v12    # "t":J
    .end local v14    # "x_i":J
    :cond_1
    if-nez v18, :cond_2

    invoke-static/range {p2 .. p3}, Lorg/spongycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 92
    :cond_2
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lorg/spongycastle/math/raw/Nat256;->sub([I[I[I)I

    .line 94
    :cond_3
    return-void
.end method

.method public static reduce([I[II)V
    .locals 14
    .param p0, "z"    # [I
    .param p1, "m"    # [I
    .param p2, "mInv32"    # I

    .prologue
    .line 98
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v7, 0x8

    if-ge v2, v7, :cond_1

    .line 100
    const/4 v7, 0x0

    aget v6, p0, v7

    .line 102
    .local v6, "z_0":I
    mul-int v7, v6, p2

    int-to-long v8, v7

    const-wide v10, 0xffffffffL

    and-long v4, v8, v10

    .line 104
    .local v4, "t":J
    const/4 v7, 0x0

    aget v7, p1, v7

    int-to-long v8, v7

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    mul-long/2addr v8, v4

    int-to-long v10, v6

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    add-long v0, v8, v10

    .line 106
    .local v0, "carry":J
    const/16 v7, 0x20

    ushr-long/2addr v0, v7

    .line 108
    const/4 v3, 0x1

    .local v3, "j":I
    :goto_1
    const/16 v7, 0x8

    if-ge v3, v7, :cond_0

    .line 110
    aget v7, p1, v3

    int-to-long v8, v7

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    mul-long/2addr v8, v4

    aget v7, p0, v3

    int-to-long v10, v7

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    add-long/2addr v8, v10

    add-long/2addr v0, v8

    .line 111
    add-int/lit8 v7, v3, -0x1

    long-to-int v8, v0

    aput v8, p0, v7

    .line 112
    const/16 v7, 0x20

    ushr-long/2addr v0, v7

    .line 108
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 115
    :cond_0
    const/4 v7, 0x7

    long-to-int v8, v0

    aput v8, p0, v7

    .line 98
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 119
    .end local v0    # "carry":J
    .end local v3    # "j":I
    .end local v4    # "t":J
    .end local v6    # "z_0":I
    :cond_1
    invoke-static {p0, p1}, Lorg/spongycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 121
    invoke-static {p0, p1, p0}, Lorg/spongycastle/math/raw/Nat256;->sub([I[I[I)I

    .line 123
    :cond_2
    return-void
.end method

.method public static reduceXF([I[I)V
    .locals 14
    .param p0, "z"    # [I
    .param p1, "m"    # [I

    .prologue
    .line 129
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v7, 0x8

    if-ge v2, v7, :cond_1

    .line 131
    const/4 v7, 0x0

    aget v6, p0, v7

    .line 133
    .local v6, "z_0":I
    int-to-long v8, v6

    const-wide v10, 0xffffffffL

    and-long v4, v8, v10

    .line 134
    .local v4, "t":J
    move-wide v0, v4

    .line 136
    .local v0, "carry":J
    const/4 v3, 0x1

    .local v3, "j":I
    :goto_1
    const/16 v7, 0x8

    if-ge v3, v7, :cond_0

    .line 138
    aget v7, p1, v3

    int-to-long v8, v7

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    mul-long/2addr v8, v4

    aget v7, p0, v3

    int-to-long v10, v7

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    add-long/2addr v8, v10

    add-long/2addr v0, v8

    .line 139
    add-int/lit8 v7, v3, -0x1

    long-to-int v8, v0

    aput v8, p0, v7

    .line 140
    const/16 v7, 0x20

    ushr-long/2addr v0, v7

    .line 136
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 143
    :cond_0
    const/4 v7, 0x7

    long-to-int v8, v0

    aput v8, p0, v7

    .line 129
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 147
    .end local v0    # "carry":J
    .end local v3    # "j":I
    .end local v4    # "t":J
    .end local v6    # "z_0":I
    :cond_1
    invoke-static {p0, p1}, Lorg/spongycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 149
    invoke-static {p0, p1, p0}, Lorg/spongycastle/math/raw/Nat256;->sub([I[I[I)I

    .line 151
    :cond_2
    return-void
.end method
