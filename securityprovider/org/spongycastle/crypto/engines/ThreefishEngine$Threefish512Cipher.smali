.class final Lorg/spongycastle/crypto/engines/ThreefishEngine$Threefish512Cipher;
.super Lorg/spongycastle/crypto/engines/ThreefishEngine$ThreefishCipher;
.source "ThreefishEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/crypto/engines/ThreefishEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Threefish512Cipher"
.end annotation


# static fields
.field private static final ROTATION_0_0:I = 0x2e

.field private static final ROTATION_0_1:I = 0x24

.field private static final ROTATION_0_2:I = 0x13

.field private static final ROTATION_0_3:I = 0x25

.field private static final ROTATION_1_0:I = 0x21

.field private static final ROTATION_1_1:I = 0x1b

.field private static final ROTATION_1_2:I = 0xe

.field private static final ROTATION_1_3:I = 0x2a

.field private static final ROTATION_2_0:I = 0x11

.field private static final ROTATION_2_1:I = 0x31

.field private static final ROTATION_2_2:I = 0x24

.field private static final ROTATION_2_3:I = 0x27

.field private static final ROTATION_3_0:I = 0x2c

.field private static final ROTATION_3_1:I = 0x9

.field private static final ROTATION_3_2:I = 0x36

.field private static final ROTATION_3_3:I = 0x38

.field private static final ROTATION_4_0:I = 0x27

.field private static final ROTATION_4_1:I = 0x1e

.field private static final ROTATION_4_2:I = 0x22

.field private static final ROTATION_4_3:I = 0x18

.field private static final ROTATION_5_0:I = 0xd

.field private static final ROTATION_5_1:I = 0x32

.field private static final ROTATION_5_2:I = 0xa

.field private static final ROTATION_5_3:I = 0x11

.field private static final ROTATION_6_0:I = 0x19

.field private static final ROTATION_6_1:I = 0x1d

.field private static final ROTATION_6_2:I = 0x27

.field private static final ROTATION_6_3:I = 0x2b

.field private static final ROTATION_7_0:I = 0x8

.field private static final ROTATION_7_1:I = 0x23

.field private static final ROTATION_7_2:I = 0x38

.field private static final ROTATION_7_3:I = 0x16


# direct methods
.method protected constructor <init>([J[J)V
    .locals 0
    .param p1, "kw"    # [J
    .param p2, "t"    # [J

    .prologue
    .line 691
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/crypto/engines/ThreefishEngine$ThreefishCipher;-><init>([J[J)V

    .line 692
    return-void
.end method


# virtual methods
.method public decryptBlock([J[J)V
    .locals 34
    .param p1, "block"    # [J
    .param p2, "state"    # [J

    .prologue
    .line 840
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/ThreefishEngine$Threefish512Cipher;->kw:[J

    move-object/from16 v25, v0

    .line 841
    .local v25, "kw":[J
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/ThreefishEngine$Threefish512Cipher;->t:[J

    move-object/from16 v28, v0

    .line 842
    .local v28, "t":[J
    invoke-static {}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->access$200()[I

    move-result-object v27

    .line 843
    .local v27, "mod9":[I
    invoke-static {}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->access$100()[I

    move-result-object v26

    .line 846
    .local v26, "mod3":[I
    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v29, v0

    const/16 v30, 0x11

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_0

    .line 848
    new-instance v29, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v29 .. v29}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v29

    .line 850
    :cond_0
    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v29, v0

    const/16 v30, 0x5

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_1

    .line 852
    new-instance v29, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v29 .. v29}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v29

    .line 855
    :cond_1
    const/16 v29, 0x0

    aget-wide v6, p1, v29

    .line 856
    .local v6, "b0":J
    const/16 v29, 0x1

    aget-wide v8, p1, v29

    .line 857
    .local v8, "b1":J
    const/16 v29, 0x2

    aget-wide v10, p1, v29

    .line 858
    .local v10, "b2":J
    const/16 v29, 0x3

    aget-wide v12, p1, v29

    .line 859
    .local v12, "b3":J
    const/16 v29, 0x4

    aget-wide v14, p1, v29

    .line 860
    .local v14, "b4":J
    const/16 v29, 0x5

    aget-wide v16, p1, v29

    .line 861
    .local v16, "b5":J
    const/16 v29, 0x6

    aget-wide v18, p1, v29

    .line 862
    .local v18, "b6":J
    const/16 v29, 0x7

    aget-wide v20, p1, v29

    .line 864
    .local v20, "b7":J
    const/16 v22, 0x11

    .local v22, "d":I
    :goto_0
    const/16 v29, 0x1

    move/from16 v0, v22

    move/from16 v1, v29

    if-lt v0, v1, :cond_2

    .line 866
    aget v24, v27, v22

    .line 867
    .local v24, "dm9":I
    aget v23, v26, v22

    .line 870
    .local v23, "dm3":I
    add-int/lit8 v29, v24, 0x1

    aget-wide v30, v25, v29

    sub-long v6, v6, v30

    .line 871
    add-int/lit8 v29, v24, 0x2

    aget-wide v30, v25, v29

    sub-long v8, v8, v30

    .line 872
    add-int/lit8 v29, v24, 0x3

    aget-wide v30, v25, v29

    sub-long v10, v10, v30

    .line 873
    add-int/lit8 v29, v24, 0x4

    aget-wide v30, v25, v29

    sub-long v12, v12, v30

    .line 874
    add-int/lit8 v29, v24, 0x5

    aget-wide v30, v25, v29

    sub-long v14, v14, v30

    .line 875
    add-int/lit8 v29, v24, 0x6

    aget-wide v30, v25, v29

    add-int/lit8 v29, v23, 0x1

    aget-wide v32, v28, v29

    add-long v30, v30, v32

    sub-long v16, v16, v30

    .line 876
    add-int/lit8 v29, v24, 0x7

    aget-wide v30, v25, v29

    add-int/lit8 v29, v23, 0x2

    aget-wide v32, v28, v29

    add-long v30, v30, v32

    sub-long v18, v18, v30

    .line 877
    add-int/lit8 v29, v24, 0x8

    aget-wide v30, v25, v29

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v32, v0

    add-long v30, v30, v32

    const-wide/16 v32, 0x1

    add-long v30, v30, v32

    sub-long v20, v20, v30

    .line 881
    const/16 v29, 0x8

    move/from16 v0, v29

    move-wide/from16 v1, v18

    invoke-static {v8, v9, v0, v1, v2}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v8

    .line 882
    sub-long v18, v18, v8

    .line 883
    const/16 v29, 0x23

    move-wide/from16 v0, v20

    move/from16 v2, v29

    invoke-static {v0, v1, v2, v6, v7}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v20

    .line 884
    sub-long v6, v6, v20

    .line 885
    const/16 v29, 0x38

    move-wide/from16 v0, v16

    move/from16 v2, v29

    invoke-static {v0, v1, v2, v10, v11}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v16

    .line 886
    sub-long v10, v10, v16

    .line 887
    const/16 v29, 0x16

    move/from16 v0, v29

    invoke-static {v12, v13, v0, v14, v15}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v12

    .line 888
    sub-long/2addr v14, v12

    .line 890
    const/16 v29, 0x19

    move/from16 v0, v29

    invoke-static {v8, v9, v0, v14, v15}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v8

    .line 891
    sub-long/2addr v14, v8

    .line 892
    const/16 v29, 0x1d

    move/from16 v0, v29

    move-wide/from16 v1, v18

    invoke-static {v12, v13, v0, v1, v2}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v12

    .line 893
    sub-long v18, v18, v12

    .line 894
    const/16 v29, 0x27

    move-wide/from16 v0, v16

    move/from16 v2, v29

    invoke-static {v0, v1, v2, v6, v7}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v16

    .line 895
    sub-long v6, v6, v16

    .line 896
    const/16 v29, 0x2b

    move-wide/from16 v0, v20

    move/from16 v2, v29

    invoke-static {v0, v1, v2, v10, v11}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v20

    .line 897
    sub-long v10, v10, v20

    .line 899
    const/16 v29, 0xd

    move/from16 v0, v29

    invoke-static {v8, v9, v0, v10, v11}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v8

    .line 900
    sub-long/2addr v10, v8

    .line 901
    const/16 v29, 0x32

    move-wide/from16 v0, v20

    move/from16 v2, v29

    invoke-static {v0, v1, v2, v14, v15}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v20

    .line 902
    sub-long v14, v14, v20

    .line 903
    const/16 v29, 0xa

    move-wide/from16 v0, v16

    move/from16 v2, v29

    move-wide/from16 v3, v18

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v16

    .line 904
    sub-long v18, v18, v16

    .line 905
    const/16 v29, 0x11

    move/from16 v0, v29

    invoke-static {v12, v13, v0, v6, v7}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v12

    .line 906
    sub-long/2addr v6, v12

    .line 908
    const/16 v29, 0x27

    move/from16 v0, v29

    invoke-static {v8, v9, v0, v6, v7}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v8

    .line 909
    sub-long/2addr v6, v8

    .line 910
    const/16 v29, 0x1e

    move/from16 v0, v29

    invoke-static {v12, v13, v0, v10, v11}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v12

    .line 911
    sub-long/2addr v10, v12

    .line 912
    const/16 v29, 0x22

    move-wide/from16 v0, v16

    move/from16 v2, v29

    invoke-static {v0, v1, v2, v14, v15}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v16

    .line 913
    sub-long v14, v14, v16

    .line 914
    const/16 v29, 0x18

    move-wide/from16 v0, v20

    move/from16 v2, v29

    move-wide/from16 v3, v18

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v20

    .line 915
    sub-long v18, v18, v20

    .line 918
    aget-wide v30, v25, v24

    sub-long v6, v6, v30

    .line 919
    add-int/lit8 v29, v24, 0x1

    aget-wide v30, v25, v29

    sub-long v8, v8, v30

    .line 920
    add-int/lit8 v29, v24, 0x2

    aget-wide v30, v25, v29

    sub-long v10, v10, v30

    .line 921
    add-int/lit8 v29, v24, 0x3

    aget-wide v30, v25, v29

    sub-long v12, v12, v30

    .line 922
    add-int/lit8 v29, v24, 0x4

    aget-wide v30, v25, v29

    sub-long v14, v14, v30

    .line 923
    add-int/lit8 v29, v24, 0x5

    aget-wide v30, v25, v29

    aget-wide v32, v28, v23

    add-long v30, v30, v32

    sub-long v16, v16, v30

    .line 924
    add-int/lit8 v29, v24, 0x6

    aget-wide v30, v25, v29

    add-int/lit8 v29, v23, 0x1

    aget-wide v32, v28, v29

    add-long v30, v30, v32

    sub-long v18, v18, v30

    .line 925
    add-int/lit8 v29, v24, 0x7

    aget-wide v30, v25, v29

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v32, v0

    add-long v30, v30, v32

    sub-long v20, v20, v30

    .line 928
    const/16 v29, 0x2c

    move/from16 v0, v29

    move-wide/from16 v1, v18

    invoke-static {v8, v9, v0, v1, v2}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v8

    .line 929
    sub-long v18, v18, v8

    .line 930
    const/16 v29, 0x9

    move-wide/from16 v0, v20

    move/from16 v2, v29

    invoke-static {v0, v1, v2, v6, v7}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v20

    .line 931
    sub-long v6, v6, v20

    .line 932
    const/16 v29, 0x36

    move-wide/from16 v0, v16

    move/from16 v2, v29

    invoke-static {v0, v1, v2, v10, v11}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v16

    .line 933
    sub-long v10, v10, v16

    .line 934
    const/16 v29, 0x38

    move/from16 v0, v29

    invoke-static {v12, v13, v0, v14, v15}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v12

    .line 935
    sub-long/2addr v14, v12

    .line 937
    const/16 v29, 0x11

    move/from16 v0, v29

    invoke-static {v8, v9, v0, v14, v15}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v8

    .line 938
    sub-long/2addr v14, v8

    .line 939
    const/16 v29, 0x31

    move/from16 v0, v29

    move-wide/from16 v1, v18

    invoke-static {v12, v13, v0, v1, v2}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v12

    .line 940
    sub-long v18, v18, v12

    .line 941
    const/16 v29, 0x24

    move-wide/from16 v0, v16

    move/from16 v2, v29

    invoke-static {v0, v1, v2, v6, v7}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v16

    .line 942
    sub-long v6, v6, v16

    .line 943
    const/16 v29, 0x27

    move-wide/from16 v0, v20

    move/from16 v2, v29

    invoke-static {v0, v1, v2, v10, v11}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v20

    .line 944
    sub-long v10, v10, v20

    .line 946
    const/16 v29, 0x21

    move/from16 v0, v29

    invoke-static {v8, v9, v0, v10, v11}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v8

    .line 947
    sub-long/2addr v10, v8

    .line 948
    const/16 v29, 0x1b

    move-wide/from16 v0, v20

    move/from16 v2, v29

    invoke-static {v0, v1, v2, v14, v15}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v20

    .line 949
    sub-long v14, v14, v20

    .line 950
    const/16 v29, 0xe

    move-wide/from16 v0, v16

    move/from16 v2, v29

    move-wide/from16 v3, v18

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v16

    .line 951
    sub-long v18, v18, v16

    .line 952
    const/16 v29, 0x2a

    move/from16 v0, v29

    invoke-static {v12, v13, v0, v6, v7}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v12

    .line 953
    sub-long/2addr v6, v12

    .line 955
    const/16 v29, 0x2e

    move/from16 v0, v29

    invoke-static {v8, v9, v0, v6, v7}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v8

    .line 956
    sub-long/2addr v6, v8

    .line 957
    const/16 v29, 0x24

    move/from16 v0, v29

    invoke-static {v12, v13, v0, v10, v11}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v12

    .line 958
    sub-long/2addr v10, v12

    .line 959
    const/16 v29, 0x13

    move-wide/from16 v0, v16

    move/from16 v2, v29

    invoke-static {v0, v1, v2, v14, v15}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v16

    .line 960
    sub-long v14, v14, v16

    .line 961
    const/16 v29, 0x25

    move-wide/from16 v0, v20

    move/from16 v2, v29

    move-wide/from16 v3, v18

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v20

    .line 962
    sub-long v18, v18, v20

    .line 864
    add-int/lit8 v22, v22, -0x2

    goto/16 :goto_0

    .line 968
    .end local v23    # "dm3":I
    .end local v24    # "dm9":I
    :cond_2
    const/16 v29, 0x0

    aget-wide v30, v25, v29

    sub-long v6, v6, v30

    .line 969
    const/16 v29, 0x1

    aget-wide v30, v25, v29

    sub-long v8, v8, v30

    .line 970
    const/16 v29, 0x2

    aget-wide v30, v25, v29

    sub-long v10, v10, v30

    .line 971
    const/16 v29, 0x3

    aget-wide v30, v25, v29

    sub-long v12, v12, v30

    .line 972
    const/16 v29, 0x4

    aget-wide v30, v25, v29

    sub-long v14, v14, v30

    .line 973
    const/16 v29, 0x5

    aget-wide v30, v25, v29

    const/16 v29, 0x0

    aget-wide v32, v28, v29

    add-long v30, v30, v32

    sub-long v16, v16, v30

    .line 974
    const/16 v29, 0x6

    aget-wide v30, v25, v29

    const/16 v29, 0x1

    aget-wide v32, v28, v29

    add-long v30, v30, v32

    sub-long v18, v18, v30

    .line 975
    const/16 v29, 0x7

    aget-wide v30, v25, v29

    sub-long v20, v20, v30

    .line 980
    const/16 v29, 0x0

    aput-wide v6, p2, v29

    .line 981
    const/16 v29, 0x1

    aput-wide v8, p2, v29

    .line 982
    const/16 v29, 0x2

    aput-wide v10, p2, v29

    .line 983
    const/16 v29, 0x3

    aput-wide v12, p2, v29

    .line 984
    const/16 v29, 0x4

    aput-wide v14, p2, v29

    .line 985
    const/16 v29, 0x5

    aput-wide v16, p2, v29

    .line 986
    const/16 v29, 0x6

    aput-wide v18, p2, v29

    .line 987
    const/16 v29, 0x7

    aput-wide v20, p2, v29

    .line 988
    return-void
.end method

.method public encryptBlock([J[J)V
    .locals 34
    .param p1, "block"    # [J
    .param p2, "out"    # [J

    .prologue
    .line 696
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/ThreefishEngine$Threefish512Cipher;->kw:[J

    move-object/from16 v25, v0

    .line 697
    .local v25, "kw":[J
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/ThreefishEngine$Threefish512Cipher;->t:[J

    move-object/from16 v28, v0

    .line 698
    .local v28, "t":[J
    invoke-static {}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->access$200()[I

    move-result-object v27

    .line 699
    .local v27, "mod9":[I
    invoke-static {}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->access$100()[I

    move-result-object v26

    .line 702
    .local v26, "mod3":[I
    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v29, v0

    const/16 v30, 0x11

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_0

    .line 704
    new-instance v29, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v29 .. v29}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v29

    .line 706
    :cond_0
    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v29, v0

    const/16 v30, 0x5

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_1

    .line 708
    new-instance v29, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v29 .. v29}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v29

    .line 714
    :cond_1
    const/16 v29, 0x0

    aget-wide v6, p1, v29

    .line 715
    .local v6, "b0":J
    const/16 v29, 0x1

    aget-wide v8, p1, v29

    .line 716
    .local v8, "b1":J
    const/16 v29, 0x2

    aget-wide v10, p1, v29

    .line 717
    .local v10, "b2":J
    const/16 v29, 0x3

    aget-wide v12, p1, v29

    .line 718
    .local v12, "b3":J
    const/16 v29, 0x4

    aget-wide v14, p1, v29

    .line 719
    .local v14, "b4":J
    const/16 v29, 0x5

    aget-wide v16, p1, v29

    .line 720
    .local v16, "b5":J
    const/16 v29, 0x6

    aget-wide v18, p1, v29

    .line 721
    .local v18, "b6":J
    const/16 v29, 0x7

    aget-wide v20, p1, v29

    .line 726
    .local v20, "b7":J
    const/16 v29, 0x0

    aget-wide v30, v25, v29

    add-long v6, v6, v30

    .line 727
    const/16 v29, 0x1

    aget-wide v30, v25, v29

    add-long v8, v8, v30

    .line 728
    const/16 v29, 0x2

    aget-wide v30, v25, v29

    add-long v10, v10, v30

    .line 729
    const/16 v29, 0x3

    aget-wide v30, v25, v29

    add-long v12, v12, v30

    .line 730
    const/16 v29, 0x4

    aget-wide v30, v25, v29

    add-long v14, v14, v30

    .line 731
    const/16 v29, 0x5

    aget-wide v30, v25, v29

    const/16 v29, 0x0

    aget-wide v32, v28, v29

    add-long v30, v30, v32

    add-long v16, v16, v30

    .line 732
    const/16 v29, 0x6

    aget-wide v30, v25, v29

    const/16 v29, 0x1

    aget-wide v32, v28, v29

    add-long v30, v30, v32

    add-long v18, v18, v30

    .line 733
    const/16 v29, 0x7

    aget-wide v30, v25, v29

    add-long v20, v20, v30

    .line 746
    const/16 v22, 0x1

    .local v22, "d":I
    :goto_0
    const/16 v29, 0x12

    move/from16 v0, v22

    move/from16 v1, v29

    if-ge v0, v1, :cond_2

    .line 748
    aget v24, v27, v22

    .line 749
    .local v24, "dm9":I
    aget v23, v26, v22

    .line 757
    .local v23, "dm3":I
    const/16 v29, 0x2e

    add-long/2addr v6, v8

    move/from16 v0, v29

    invoke-static {v8, v9, v0, v6, v7}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    .line 758
    const/16 v29, 0x24

    add-long/2addr v10, v12

    move/from16 v0, v29

    invoke-static {v12, v13, v0, v10, v11}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v12

    .line 759
    const/16 v29, 0x13

    add-long v14, v14, v16

    move-wide/from16 v0, v16

    move/from16 v2, v29

    invoke-static {v0, v1, v2, v14, v15}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v16

    .line 760
    const/16 v29, 0x25

    add-long v18, v18, v20

    move-wide/from16 v0, v20

    move/from16 v2, v29

    move-wide/from16 v3, v18

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v20

    .line 762
    const/16 v29, 0x21

    add-long/2addr v10, v8

    move/from16 v0, v29

    invoke-static {v8, v9, v0, v10, v11}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    .line 763
    const/16 v29, 0x1b

    add-long v14, v14, v20

    move-wide/from16 v0, v20

    move/from16 v2, v29

    invoke-static {v0, v1, v2, v14, v15}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v20

    .line 764
    const/16 v29, 0xe

    add-long v18, v18, v16

    move-wide/from16 v0, v16

    move/from16 v2, v29

    move-wide/from16 v3, v18

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v16

    .line 765
    const/16 v29, 0x2a

    add-long/2addr v6, v12

    move/from16 v0, v29

    invoke-static {v12, v13, v0, v6, v7}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v12

    .line 767
    const/16 v29, 0x11

    add-long/2addr v14, v8

    move/from16 v0, v29

    invoke-static {v8, v9, v0, v14, v15}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    .line 768
    const/16 v29, 0x31

    add-long v18, v18, v12

    move/from16 v0, v29

    move-wide/from16 v1, v18

    invoke-static {v12, v13, v0, v1, v2}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v12

    .line 769
    const/16 v29, 0x24

    add-long v6, v6, v16

    move-wide/from16 v0, v16

    move/from16 v2, v29

    invoke-static {v0, v1, v2, v6, v7}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v16

    .line 770
    const/16 v29, 0x27

    add-long v10, v10, v20

    move-wide/from16 v0, v20

    move/from16 v2, v29

    invoke-static {v0, v1, v2, v10, v11}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v20

    .line 772
    const/16 v29, 0x2c

    add-long v18, v18, v8

    move/from16 v0, v29

    move-wide/from16 v1, v18

    invoke-static {v8, v9, v0, v1, v2}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    .line 773
    const/16 v29, 0x9

    add-long v6, v6, v20

    move-wide/from16 v0, v20

    move/from16 v2, v29

    invoke-static {v0, v1, v2, v6, v7}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v20

    .line 774
    const/16 v29, 0x36

    add-long v10, v10, v16

    move-wide/from16 v0, v16

    move/from16 v2, v29

    invoke-static {v0, v1, v2, v10, v11}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v16

    .line 775
    const/16 v29, 0x38

    add-long/2addr v14, v12

    move/from16 v0, v29

    invoke-static {v12, v13, v0, v14, v15}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v12

    .line 780
    aget-wide v30, v25, v24

    add-long v6, v6, v30

    .line 781
    add-int/lit8 v29, v24, 0x1

    aget-wide v30, v25, v29

    add-long v8, v8, v30

    .line 782
    add-int/lit8 v29, v24, 0x2

    aget-wide v30, v25, v29

    add-long v10, v10, v30

    .line 783
    add-int/lit8 v29, v24, 0x3

    aget-wide v30, v25, v29

    add-long v12, v12, v30

    .line 784
    add-int/lit8 v29, v24, 0x4

    aget-wide v30, v25, v29

    add-long v14, v14, v30

    .line 785
    add-int/lit8 v29, v24, 0x5

    aget-wide v30, v25, v29

    aget-wide v32, v28, v23

    add-long v30, v30, v32

    add-long v16, v16, v30

    .line 786
    add-int/lit8 v29, v24, 0x6

    aget-wide v30, v25, v29

    add-int/lit8 v29, v23, 0x1

    aget-wide v32, v28, v29

    add-long v30, v30, v32

    add-long v18, v18, v30

    .line 787
    add-int/lit8 v29, v24, 0x7

    aget-wide v30, v25, v29

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v32, v0

    add-long v30, v30, v32

    add-long v20, v20, v30

    .line 792
    const/16 v29, 0x27

    add-long/2addr v6, v8

    move/from16 v0, v29

    invoke-static {v8, v9, v0, v6, v7}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    .line 793
    const/16 v29, 0x1e

    add-long/2addr v10, v12

    move/from16 v0, v29

    invoke-static {v12, v13, v0, v10, v11}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v12

    .line 794
    const/16 v29, 0x22

    add-long v14, v14, v16

    move-wide/from16 v0, v16

    move/from16 v2, v29

    invoke-static {v0, v1, v2, v14, v15}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v16

    .line 795
    const/16 v29, 0x18

    add-long v18, v18, v20

    move-wide/from16 v0, v20

    move/from16 v2, v29

    move-wide/from16 v3, v18

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v20

    .line 797
    const/16 v29, 0xd

    add-long/2addr v10, v8

    move/from16 v0, v29

    invoke-static {v8, v9, v0, v10, v11}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    .line 798
    const/16 v29, 0x32

    add-long v14, v14, v20

    move-wide/from16 v0, v20

    move/from16 v2, v29

    invoke-static {v0, v1, v2, v14, v15}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v20

    .line 799
    const/16 v29, 0xa

    add-long v18, v18, v16

    move-wide/from16 v0, v16

    move/from16 v2, v29

    move-wide/from16 v3, v18

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v16

    .line 800
    const/16 v29, 0x11

    add-long/2addr v6, v12

    move/from16 v0, v29

    invoke-static {v12, v13, v0, v6, v7}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v12

    .line 802
    const/16 v29, 0x19

    add-long/2addr v14, v8

    move/from16 v0, v29

    invoke-static {v8, v9, v0, v14, v15}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    .line 803
    const/16 v29, 0x1d

    add-long v18, v18, v12

    move/from16 v0, v29

    move-wide/from16 v1, v18

    invoke-static {v12, v13, v0, v1, v2}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v12

    .line 804
    const/16 v29, 0x27

    add-long v6, v6, v16

    move-wide/from16 v0, v16

    move/from16 v2, v29

    invoke-static {v0, v1, v2, v6, v7}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v16

    .line 805
    const/16 v29, 0x2b

    add-long v10, v10, v20

    move-wide/from16 v0, v20

    move/from16 v2, v29

    invoke-static {v0, v1, v2, v10, v11}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v20

    .line 807
    const/16 v29, 0x8

    add-long v18, v18, v8

    move/from16 v0, v29

    move-wide/from16 v1, v18

    invoke-static {v8, v9, v0, v1, v2}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    .line 808
    const/16 v29, 0x23

    add-long v6, v6, v20

    move-wide/from16 v0, v20

    move/from16 v2, v29

    invoke-static {v0, v1, v2, v6, v7}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v20

    .line 809
    const/16 v29, 0x38

    add-long v10, v10, v16

    move-wide/from16 v0, v16

    move/from16 v2, v29

    invoke-static {v0, v1, v2, v10, v11}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v16

    .line 810
    const/16 v29, 0x16

    add-long/2addr v14, v12

    move/from16 v0, v29

    invoke-static {v12, v13, v0, v14, v15}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v12

    .line 815
    add-int/lit8 v29, v24, 0x1

    aget-wide v30, v25, v29

    add-long v6, v6, v30

    .line 816
    add-int/lit8 v29, v24, 0x2

    aget-wide v30, v25, v29

    add-long v8, v8, v30

    .line 817
    add-int/lit8 v29, v24, 0x3

    aget-wide v30, v25, v29

    add-long v10, v10, v30

    .line 818
    add-int/lit8 v29, v24, 0x4

    aget-wide v30, v25, v29

    add-long v12, v12, v30

    .line 819
    add-int/lit8 v29, v24, 0x5

    aget-wide v30, v25, v29

    add-long v14, v14, v30

    .line 820
    add-int/lit8 v29, v24, 0x6

    aget-wide v30, v25, v29

    add-int/lit8 v29, v23, 0x1

    aget-wide v32, v28, v29

    add-long v30, v30, v32

    add-long v16, v16, v30

    .line 821
    add-int/lit8 v29, v24, 0x7

    aget-wide v30, v25, v29

    add-int/lit8 v29, v23, 0x2

    aget-wide v32, v28, v29

    add-long v30, v30, v32

    add-long v18, v18, v30

    .line 822
    add-int/lit8 v29, v24, 0x8

    aget-wide v30, v25, v29

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v32, v0

    add-long v30, v30, v32

    const-wide/16 v32, 0x1

    add-long v30, v30, v32

    add-long v20, v20, v30

    .line 746
    add-int/lit8 v22, v22, 0x2

    goto/16 :goto_0

    .line 828
    .end local v23    # "dm3":I
    .end local v24    # "dm9":I
    :cond_2
    const/16 v29, 0x0

    aput-wide v6, p2, v29

    .line 829
    const/16 v29, 0x1

    aput-wide v8, p2, v29

    .line 830
    const/16 v29, 0x2

    aput-wide v10, p2, v29

    .line 831
    const/16 v29, 0x3

    aput-wide v12, p2, v29

    .line 832
    const/16 v29, 0x4

    aput-wide v14, p2, v29

    .line 833
    const/16 v29, 0x5

    aput-wide v16, p2, v29

    .line 834
    const/16 v29, 0x6

    aput-wide v18, p2, v29

    .line 835
    const/16 v29, 0x7

    aput-wide v20, p2, v29

    .line 836
    return-void
.end method
