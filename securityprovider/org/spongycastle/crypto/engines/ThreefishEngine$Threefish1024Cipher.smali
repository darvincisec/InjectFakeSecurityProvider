.class final Lorg/spongycastle/crypto/engines/ThreefishEngine$Threefish1024Cipher;
.super Lorg/spongycastle/crypto/engines/ThreefishEngine$ThreefishCipher;
.source "ThreefishEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/crypto/engines/ThreefishEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Threefish1024Cipher"
.end annotation


# static fields
.field private static final ROTATION_0_0:I = 0x18

.field private static final ROTATION_0_1:I = 0xd

.field private static final ROTATION_0_2:I = 0x8

.field private static final ROTATION_0_3:I = 0x2f

.field private static final ROTATION_0_4:I = 0x8

.field private static final ROTATION_0_5:I = 0x11

.field private static final ROTATION_0_6:I = 0x16

.field private static final ROTATION_0_7:I = 0x25

.field private static final ROTATION_1_0:I = 0x26

.field private static final ROTATION_1_1:I = 0x13

.field private static final ROTATION_1_2:I = 0xa

.field private static final ROTATION_1_3:I = 0x37

.field private static final ROTATION_1_4:I = 0x31

.field private static final ROTATION_1_5:I = 0x12

.field private static final ROTATION_1_6:I = 0x17

.field private static final ROTATION_1_7:I = 0x34

.field private static final ROTATION_2_0:I = 0x21

.field private static final ROTATION_2_1:I = 0x4

.field private static final ROTATION_2_2:I = 0x33

.field private static final ROTATION_2_3:I = 0xd

.field private static final ROTATION_2_4:I = 0x22

.field private static final ROTATION_2_5:I = 0x29

.field private static final ROTATION_2_6:I = 0x3b

.field private static final ROTATION_2_7:I = 0x11

.field private static final ROTATION_3_0:I = 0x5

.field private static final ROTATION_3_1:I = 0x14

.field private static final ROTATION_3_2:I = 0x30

.field private static final ROTATION_3_3:I = 0x29

.field private static final ROTATION_3_4:I = 0x2f

.field private static final ROTATION_3_5:I = 0x1c

.field private static final ROTATION_3_6:I = 0x10

.field private static final ROTATION_3_7:I = 0x19

.field private static final ROTATION_4_0:I = 0x29

.field private static final ROTATION_4_1:I = 0x9

.field private static final ROTATION_4_2:I = 0x25

.field private static final ROTATION_4_3:I = 0x1f

.field private static final ROTATION_4_4:I = 0xc

.field private static final ROTATION_4_5:I = 0x2f

.field private static final ROTATION_4_6:I = 0x2c

.field private static final ROTATION_4_7:I = 0x1e

.field private static final ROTATION_5_0:I = 0x10

.field private static final ROTATION_5_1:I = 0x22

.field private static final ROTATION_5_2:I = 0x38

.field private static final ROTATION_5_3:I = 0x33

.field private static final ROTATION_5_4:I = 0x4

.field private static final ROTATION_5_5:I = 0x35

.field private static final ROTATION_5_6:I = 0x2a

.field private static final ROTATION_5_7:I = 0x29

.field private static final ROTATION_6_0:I = 0x1f

.field private static final ROTATION_6_1:I = 0x2c

.field private static final ROTATION_6_2:I = 0x2f

.field private static final ROTATION_6_3:I = 0x2e

.field private static final ROTATION_6_4:I = 0x13

.field private static final ROTATION_6_5:I = 0x2a

.field private static final ROTATION_6_6:I = 0x2c

.field private static final ROTATION_6_7:I = 0x19

.field private static final ROTATION_7_0:I = 0x9

.field private static final ROTATION_7_1:I = 0x30

.field private static final ROTATION_7_2:I = 0x23

.field private static final ROTATION_7_3:I = 0x34

.field private static final ROTATION_7_4:I = 0x17

.field private static final ROTATION_7_5:I = 0x1f

.field private static final ROTATION_7_6:I = 0x25

.field private static final ROTATION_7_7:I = 0x14


# direct methods
.method public constructor <init>([J[J)V
    .locals 0
    .param p1, "kw"    # [J
    .param p2, "t"    # [J

    .prologue
    .line 1017
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/crypto/engines/ThreefishEngine$ThreefishCipher;-><init>([J[J)V

    .line 1018
    return-void
.end method


# virtual methods
.method decryptBlock([J[J)V
    .locals 50
    .param p1, "block"    # [J
    .param p2, "state"    # [J

    .prologue
    .line 1239
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/ThreefishEngine$Threefish1024Cipher;->kw:[J

    move-object/from16 v41, v0

    .line 1240
    .local v41, "kw":[J
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/ThreefishEngine$Threefish1024Cipher;->t:[J

    move-object/from16 v44, v0

    .line 1241
    .local v44, "t":[J
    invoke-static {}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->access$300()[I

    move-result-object v42

    .line 1242
    .local v42, "mod17":[I
    invoke-static {}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->access$100()[I

    move-result-object v43

    .line 1245
    .local v43, "mod3":[I
    move-object/from16 v0, v41

    array-length v0, v0

    move/from16 v45, v0

    const/16 v46, 0x21

    move/from16 v0, v45

    move/from16 v1, v46

    if-eq v0, v1, :cond_0

    .line 1247
    new-instance v45, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v45 .. v45}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v45

    .line 1249
    :cond_0
    move-object/from16 v0, v44

    array-length v0, v0

    move/from16 v45, v0

    const/16 v46, 0x5

    move/from16 v0, v45

    move/from16 v1, v46

    if-eq v0, v1, :cond_1

    .line 1251
    new-instance v45, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v45 .. v45}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v45

    .line 1254
    :cond_1
    const/16 v45, 0x0

    aget-wide v6, p1, v45

    .line 1255
    .local v6, "b0":J
    const/16 v45, 0x1

    aget-wide v8, p1, v45

    .line 1256
    .local v8, "b1":J
    const/16 v45, 0x2

    aget-wide v22, p1, v45

    .line 1257
    .local v22, "b2":J
    const/16 v45, 0x3

    aget-wide v24, p1, v45

    .line 1258
    .local v24, "b3":J
    const/16 v45, 0x4

    aget-wide v26, p1, v45

    .line 1259
    .local v26, "b4":J
    const/16 v45, 0x5

    aget-wide v28, p1, v45

    .line 1260
    .local v28, "b5":J
    const/16 v45, 0x6

    aget-wide v30, p1, v45

    .line 1261
    .local v30, "b6":J
    const/16 v45, 0x7

    aget-wide v32, p1, v45

    .line 1262
    .local v32, "b7":J
    const/16 v45, 0x8

    aget-wide v34, p1, v45

    .line 1263
    .local v34, "b8":J
    const/16 v45, 0x9

    aget-wide v36, p1, v45

    .line 1264
    .local v36, "b9":J
    const/16 v45, 0xa

    aget-wide v10, p1, v45

    .line 1265
    .local v10, "b10":J
    const/16 v45, 0xb

    aget-wide v12, p1, v45

    .line 1266
    .local v12, "b11":J
    const/16 v45, 0xc

    aget-wide v14, p1, v45

    .line 1267
    .local v14, "b12":J
    const/16 v45, 0xd

    aget-wide v16, p1, v45

    .line 1268
    .local v16, "b13":J
    const/16 v45, 0xe

    aget-wide v18, p1, v45

    .line 1269
    .local v18, "b14":J
    const/16 v45, 0xf

    aget-wide v20, p1, v45

    .line 1271
    .local v20, "b15":J
    const/16 v38, 0x13

    .local v38, "d":I
    :goto_0
    const/16 v45, 0x1

    move/from16 v0, v38

    move/from16 v1, v45

    if-lt v0, v1, :cond_2

    .line 1273
    aget v39, v42, v38

    .line 1274
    .local v39, "dm17":I
    aget v40, v43, v38

    .line 1277
    .local v40, "dm3":I
    add-int/lit8 v45, v39, 0x1

    aget-wide v46, v41, v45

    sub-long v6, v6, v46

    .line 1278
    add-int/lit8 v45, v39, 0x2

    aget-wide v46, v41, v45

    sub-long v8, v8, v46

    .line 1279
    add-int/lit8 v45, v39, 0x3

    aget-wide v46, v41, v45

    sub-long v22, v22, v46

    .line 1280
    add-int/lit8 v45, v39, 0x4

    aget-wide v46, v41, v45

    sub-long v24, v24, v46

    .line 1281
    add-int/lit8 v45, v39, 0x5

    aget-wide v46, v41, v45

    sub-long v26, v26, v46

    .line 1282
    add-int/lit8 v45, v39, 0x6

    aget-wide v46, v41, v45

    sub-long v28, v28, v46

    .line 1283
    add-int/lit8 v45, v39, 0x7

    aget-wide v46, v41, v45

    sub-long v30, v30, v46

    .line 1284
    add-int/lit8 v45, v39, 0x8

    aget-wide v46, v41, v45

    sub-long v32, v32, v46

    .line 1285
    add-int/lit8 v45, v39, 0x9

    aget-wide v46, v41, v45

    sub-long v34, v34, v46

    .line 1286
    add-int/lit8 v45, v39, 0xa

    aget-wide v46, v41, v45

    sub-long v36, v36, v46

    .line 1287
    add-int/lit8 v45, v39, 0xb

    aget-wide v46, v41, v45

    sub-long v10, v10, v46

    .line 1288
    add-int/lit8 v45, v39, 0xc

    aget-wide v46, v41, v45

    sub-long v12, v12, v46

    .line 1289
    add-int/lit8 v45, v39, 0xd

    aget-wide v46, v41, v45

    sub-long v14, v14, v46

    .line 1290
    add-int/lit8 v45, v39, 0xe

    aget-wide v46, v41, v45

    add-int/lit8 v45, v40, 0x1

    aget-wide v48, v44, v45

    add-long v46, v46, v48

    sub-long v16, v16, v46

    .line 1291
    add-int/lit8 v45, v39, 0xf

    aget-wide v46, v41, v45

    add-int/lit8 v45, v40, 0x2

    aget-wide v48, v44, v45

    add-long v46, v46, v48

    sub-long v18, v18, v46

    .line 1292
    add-int/lit8 v45, v39, 0x10

    aget-wide v46, v41, v45

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v48, v0

    add-long v46, v46, v48

    const-wide/16 v48, 0x1

    add-long v46, v46, v48

    sub-long v20, v20, v46

    .line 1295
    const/16 v45, 0x9

    move-wide/from16 v0, v20

    move/from16 v2, v45

    invoke-static {v0, v1, v2, v6, v7}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v20

    .line 1296
    sub-long v6, v6, v20

    .line 1297
    const/16 v45, 0x30

    move/from16 v0, v45

    move-wide/from16 v1, v22

    invoke-static {v12, v13, v0, v1, v2}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v12

    .line 1298
    sub-long v22, v22, v12

    .line 1299
    const/16 v45, 0x23

    move-wide/from16 v0, v16

    move/from16 v2, v45

    move-wide/from16 v3, v30

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v16

    .line 1300
    sub-long v30, v30, v16

    .line 1301
    const/16 v45, 0x34

    move-wide/from16 v0, v36

    move/from16 v2, v45

    move-wide/from16 v3, v26

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v36

    .line 1302
    sub-long v26, v26, v36

    .line 1303
    const/16 v45, 0x17

    move/from16 v0, v45

    move-wide/from16 v1, v18

    invoke-static {v8, v9, v0, v1, v2}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v8

    .line 1304
    sub-long v18, v18, v8

    .line 1305
    const/16 v45, 0x1f

    move-wide/from16 v0, v28

    move/from16 v2, v45

    move-wide/from16 v3, v34

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v28

    .line 1306
    sub-long v34, v34, v28

    .line 1307
    const/16 v45, 0x25

    move-wide/from16 v0, v24

    move/from16 v2, v45

    invoke-static {v0, v1, v2, v10, v11}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v24

    .line 1308
    sub-long v10, v10, v24

    .line 1309
    const/16 v45, 0x14

    move-wide/from16 v0, v32

    move/from16 v2, v45

    invoke-static {v0, v1, v2, v14, v15}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v32

    .line 1310
    sub-long v14, v14, v32

    .line 1312
    const/16 v45, 0x1f

    move-wide/from16 v0, v32

    move/from16 v2, v45

    invoke-static {v0, v1, v2, v6, v7}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v32

    .line 1313
    sub-long v6, v6, v32

    .line 1314
    const/16 v45, 0x2c

    move-wide/from16 v0, v28

    move/from16 v2, v45

    move-wide/from16 v3, v22

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v28

    .line 1315
    sub-long v22, v22, v28

    .line 1316
    const/16 v45, 0x2f

    move-wide/from16 v0, v24

    move/from16 v2, v45

    move-wide/from16 v3, v26

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v24

    .line 1317
    sub-long v26, v26, v24

    .line 1318
    const/16 v45, 0x2e

    move/from16 v0, v45

    move-wide/from16 v1, v30

    invoke-static {v8, v9, v0, v1, v2}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v8

    .line 1319
    sub-long v30, v30, v8

    .line 1320
    const/16 v45, 0x13

    move-wide/from16 v0, v20

    move/from16 v2, v45

    invoke-static {v0, v1, v2, v14, v15}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v20

    .line 1321
    sub-long v14, v14, v20

    .line 1322
    const/16 v45, 0x2a

    move-wide/from16 v0, v16

    move/from16 v2, v45

    move-wide/from16 v3, v18

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v16

    .line 1323
    sub-long v18, v18, v16

    .line 1324
    const/16 v45, 0x2c

    move/from16 v0, v45

    move-wide/from16 v1, v34

    invoke-static {v12, v13, v0, v1, v2}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v12

    .line 1325
    sub-long v34, v34, v12

    .line 1326
    const/16 v45, 0x19

    move-wide/from16 v0, v36

    move/from16 v2, v45

    invoke-static {v0, v1, v2, v10, v11}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v36

    .line 1327
    sub-long v10, v10, v36

    .line 1329
    const/16 v45, 0x10

    move-wide/from16 v0, v36

    move/from16 v2, v45

    invoke-static {v0, v1, v2, v6, v7}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v36

    .line 1330
    sub-long v6, v6, v36

    .line 1331
    const/16 v45, 0x22

    move-wide/from16 v0, v16

    move/from16 v2, v45

    move-wide/from16 v3, v22

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v16

    .line 1332
    sub-long v22, v22, v16

    .line 1333
    const/16 v45, 0x38

    move/from16 v0, v45

    move-wide/from16 v1, v30

    invoke-static {v12, v13, v0, v1, v2}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v12

    .line 1334
    sub-long v30, v30, v12

    .line 1335
    const/16 v45, 0x33

    move-wide/from16 v0, v20

    move/from16 v2, v45

    move-wide/from16 v3, v26

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v20

    .line 1336
    sub-long v26, v26, v20

    .line 1337
    const/16 v45, 0x4

    move-wide/from16 v0, v32

    move/from16 v2, v45

    invoke-static {v0, v1, v2, v10, v11}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v32

    .line 1338
    sub-long v10, v10, v32

    .line 1339
    const/16 v45, 0x35

    move-wide/from16 v0, v24

    move/from16 v2, v45

    invoke-static {v0, v1, v2, v14, v15}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v24

    .line 1340
    sub-long v14, v14, v24

    .line 1341
    const/16 v45, 0x2a

    move-wide/from16 v0, v28

    move/from16 v2, v45

    move-wide/from16 v3, v18

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v28

    .line 1342
    sub-long v18, v18, v28

    .line 1343
    const/16 v45, 0x29

    move/from16 v0, v45

    move-wide/from16 v1, v34

    invoke-static {v8, v9, v0, v1, v2}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v8

    .line 1344
    sub-long v34, v34, v8

    .line 1346
    const/16 v45, 0x29

    move/from16 v0, v45

    invoke-static {v8, v9, v0, v6, v7}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v8

    .line 1347
    sub-long/2addr v6, v8

    .line 1348
    const/16 v45, 0x9

    move-wide/from16 v0, v24

    move/from16 v2, v45

    move-wide/from16 v3, v22

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v24

    .line 1349
    sub-long v22, v22, v24

    .line 1350
    const/16 v45, 0x25

    move-wide/from16 v0, v28

    move/from16 v2, v45

    move-wide/from16 v3, v26

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v28

    .line 1351
    sub-long v26, v26, v28

    .line 1352
    const/16 v45, 0x1f

    move-wide/from16 v0, v32

    move/from16 v2, v45

    move-wide/from16 v3, v30

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v32

    .line 1353
    sub-long v30, v30, v32

    .line 1354
    const/16 v45, 0xc

    move-wide/from16 v0, v36

    move/from16 v2, v45

    move-wide/from16 v3, v34

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v36

    .line 1355
    sub-long v34, v34, v36

    .line 1356
    const/16 v45, 0x2f

    move/from16 v0, v45

    invoke-static {v12, v13, v0, v10, v11}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v12

    .line 1357
    sub-long/2addr v10, v12

    .line 1358
    const/16 v45, 0x2c

    move-wide/from16 v0, v16

    move/from16 v2, v45

    invoke-static {v0, v1, v2, v14, v15}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v16

    .line 1359
    sub-long v14, v14, v16

    .line 1360
    const/16 v45, 0x1e

    move-wide/from16 v0, v20

    move/from16 v2, v45

    move-wide/from16 v3, v18

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v20

    .line 1361
    sub-long v18, v18, v20

    .line 1364
    aget-wide v46, v41, v39

    sub-long v6, v6, v46

    .line 1365
    add-int/lit8 v45, v39, 0x1

    aget-wide v46, v41, v45

    sub-long v8, v8, v46

    .line 1366
    add-int/lit8 v45, v39, 0x2

    aget-wide v46, v41, v45

    sub-long v22, v22, v46

    .line 1367
    add-int/lit8 v45, v39, 0x3

    aget-wide v46, v41, v45

    sub-long v24, v24, v46

    .line 1368
    add-int/lit8 v45, v39, 0x4

    aget-wide v46, v41, v45

    sub-long v26, v26, v46

    .line 1369
    add-int/lit8 v45, v39, 0x5

    aget-wide v46, v41, v45

    sub-long v28, v28, v46

    .line 1370
    add-int/lit8 v45, v39, 0x6

    aget-wide v46, v41, v45

    sub-long v30, v30, v46

    .line 1371
    add-int/lit8 v45, v39, 0x7

    aget-wide v46, v41, v45

    sub-long v32, v32, v46

    .line 1372
    add-int/lit8 v45, v39, 0x8

    aget-wide v46, v41, v45

    sub-long v34, v34, v46

    .line 1373
    add-int/lit8 v45, v39, 0x9

    aget-wide v46, v41, v45

    sub-long v36, v36, v46

    .line 1374
    add-int/lit8 v45, v39, 0xa

    aget-wide v46, v41, v45

    sub-long v10, v10, v46

    .line 1375
    add-int/lit8 v45, v39, 0xb

    aget-wide v46, v41, v45

    sub-long v12, v12, v46

    .line 1376
    add-int/lit8 v45, v39, 0xc

    aget-wide v46, v41, v45

    sub-long v14, v14, v46

    .line 1377
    add-int/lit8 v45, v39, 0xd

    aget-wide v46, v41, v45

    aget-wide v48, v44, v40

    add-long v46, v46, v48

    sub-long v16, v16, v46

    .line 1378
    add-int/lit8 v45, v39, 0xe

    aget-wide v46, v41, v45

    add-int/lit8 v45, v40, 0x1

    aget-wide v48, v44, v45

    add-long v46, v46, v48

    sub-long v18, v18, v46

    .line 1379
    add-int/lit8 v45, v39, 0xf

    aget-wide v46, v41, v45

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v48, v0

    add-long v46, v46, v48

    sub-long v20, v20, v46

    .line 1382
    const/16 v45, 0x5

    move-wide/from16 v0, v20

    move/from16 v2, v45

    invoke-static {v0, v1, v2, v6, v7}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v20

    .line 1383
    sub-long v6, v6, v20

    .line 1384
    const/16 v45, 0x14

    move/from16 v0, v45

    move-wide/from16 v1, v22

    invoke-static {v12, v13, v0, v1, v2}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v12

    .line 1385
    sub-long v22, v22, v12

    .line 1386
    const/16 v45, 0x30

    move-wide/from16 v0, v16

    move/from16 v2, v45

    move-wide/from16 v3, v30

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v16

    .line 1387
    sub-long v30, v30, v16

    .line 1388
    const/16 v45, 0x29

    move-wide/from16 v0, v36

    move/from16 v2, v45

    move-wide/from16 v3, v26

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v36

    .line 1389
    sub-long v26, v26, v36

    .line 1390
    const/16 v45, 0x2f

    move/from16 v0, v45

    move-wide/from16 v1, v18

    invoke-static {v8, v9, v0, v1, v2}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v8

    .line 1391
    sub-long v18, v18, v8

    .line 1392
    const/16 v45, 0x1c

    move-wide/from16 v0, v28

    move/from16 v2, v45

    move-wide/from16 v3, v34

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v28

    .line 1393
    sub-long v34, v34, v28

    .line 1394
    const/16 v45, 0x10

    move-wide/from16 v0, v24

    move/from16 v2, v45

    invoke-static {v0, v1, v2, v10, v11}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v24

    .line 1395
    sub-long v10, v10, v24

    .line 1396
    const/16 v45, 0x19

    move-wide/from16 v0, v32

    move/from16 v2, v45

    invoke-static {v0, v1, v2, v14, v15}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v32

    .line 1397
    sub-long v14, v14, v32

    .line 1399
    const/16 v45, 0x21

    move-wide/from16 v0, v32

    move/from16 v2, v45

    invoke-static {v0, v1, v2, v6, v7}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v32

    .line 1400
    sub-long v6, v6, v32

    .line 1401
    const/16 v45, 0x4

    move-wide/from16 v0, v28

    move/from16 v2, v45

    move-wide/from16 v3, v22

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v28

    .line 1402
    sub-long v22, v22, v28

    .line 1403
    const/16 v45, 0x33

    move-wide/from16 v0, v24

    move/from16 v2, v45

    move-wide/from16 v3, v26

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v24

    .line 1404
    sub-long v26, v26, v24

    .line 1405
    const/16 v45, 0xd

    move/from16 v0, v45

    move-wide/from16 v1, v30

    invoke-static {v8, v9, v0, v1, v2}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v8

    .line 1406
    sub-long v30, v30, v8

    .line 1407
    const/16 v45, 0x22

    move-wide/from16 v0, v20

    move/from16 v2, v45

    invoke-static {v0, v1, v2, v14, v15}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v20

    .line 1408
    sub-long v14, v14, v20

    .line 1409
    const/16 v45, 0x29

    move-wide/from16 v0, v16

    move/from16 v2, v45

    move-wide/from16 v3, v18

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v16

    .line 1410
    sub-long v18, v18, v16

    .line 1411
    const/16 v45, 0x3b

    move/from16 v0, v45

    move-wide/from16 v1, v34

    invoke-static {v12, v13, v0, v1, v2}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v12

    .line 1412
    sub-long v34, v34, v12

    .line 1413
    const/16 v45, 0x11

    move-wide/from16 v0, v36

    move/from16 v2, v45

    invoke-static {v0, v1, v2, v10, v11}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v36

    .line 1414
    sub-long v10, v10, v36

    .line 1416
    const/16 v45, 0x26

    move-wide/from16 v0, v36

    move/from16 v2, v45

    invoke-static {v0, v1, v2, v6, v7}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v36

    .line 1417
    sub-long v6, v6, v36

    .line 1418
    const/16 v45, 0x13

    move-wide/from16 v0, v16

    move/from16 v2, v45

    move-wide/from16 v3, v22

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v16

    .line 1419
    sub-long v22, v22, v16

    .line 1420
    const/16 v45, 0xa

    move/from16 v0, v45

    move-wide/from16 v1, v30

    invoke-static {v12, v13, v0, v1, v2}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v12

    .line 1421
    sub-long v30, v30, v12

    .line 1422
    const/16 v45, 0x37

    move-wide/from16 v0, v20

    move/from16 v2, v45

    move-wide/from16 v3, v26

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v20

    .line 1423
    sub-long v26, v26, v20

    .line 1424
    const/16 v45, 0x31

    move-wide/from16 v0, v32

    move/from16 v2, v45

    invoke-static {v0, v1, v2, v10, v11}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v32

    .line 1425
    sub-long v10, v10, v32

    .line 1426
    const/16 v45, 0x12

    move-wide/from16 v0, v24

    move/from16 v2, v45

    invoke-static {v0, v1, v2, v14, v15}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v24

    .line 1427
    sub-long v14, v14, v24

    .line 1428
    const/16 v45, 0x17

    move-wide/from16 v0, v28

    move/from16 v2, v45

    move-wide/from16 v3, v18

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v28

    .line 1429
    sub-long v18, v18, v28

    .line 1430
    const/16 v45, 0x34

    move/from16 v0, v45

    move-wide/from16 v1, v34

    invoke-static {v8, v9, v0, v1, v2}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v8

    .line 1431
    sub-long v34, v34, v8

    .line 1433
    const/16 v45, 0x18

    move/from16 v0, v45

    invoke-static {v8, v9, v0, v6, v7}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v8

    .line 1434
    sub-long/2addr v6, v8

    .line 1435
    const/16 v45, 0xd

    move-wide/from16 v0, v24

    move/from16 v2, v45

    move-wide/from16 v3, v22

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v24

    .line 1436
    sub-long v22, v22, v24

    .line 1437
    const/16 v45, 0x8

    move-wide/from16 v0, v28

    move/from16 v2, v45

    move-wide/from16 v3, v26

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v28

    .line 1438
    sub-long v26, v26, v28

    .line 1439
    const/16 v45, 0x2f

    move-wide/from16 v0, v32

    move/from16 v2, v45

    move-wide/from16 v3, v30

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v32

    .line 1440
    sub-long v30, v30, v32

    .line 1441
    const/16 v45, 0x8

    move-wide/from16 v0, v36

    move/from16 v2, v45

    move-wide/from16 v3, v34

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v36

    .line 1442
    sub-long v34, v34, v36

    .line 1443
    const/16 v45, 0x11

    move/from16 v0, v45

    invoke-static {v12, v13, v0, v10, v11}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v12

    .line 1444
    sub-long/2addr v10, v12

    .line 1445
    const/16 v45, 0x16

    move-wide/from16 v0, v16

    move/from16 v2, v45

    invoke-static {v0, v1, v2, v14, v15}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v16

    .line 1446
    sub-long v14, v14, v16

    .line 1447
    const/16 v45, 0x25

    move-wide/from16 v0, v20

    move/from16 v2, v45

    move-wide/from16 v3, v18

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v20

    .line 1448
    sub-long v18, v18, v20

    .line 1271
    add-int/lit8 v38, v38, -0x2

    goto/16 :goto_0

    .line 1454
    .end local v39    # "dm17":I
    .end local v40    # "dm3":I
    :cond_2
    const/16 v45, 0x0

    aget-wide v46, v41, v45

    sub-long v6, v6, v46

    .line 1455
    const/16 v45, 0x1

    aget-wide v46, v41, v45

    sub-long v8, v8, v46

    .line 1456
    const/16 v45, 0x2

    aget-wide v46, v41, v45

    sub-long v22, v22, v46

    .line 1457
    const/16 v45, 0x3

    aget-wide v46, v41, v45

    sub-long v24, v24, v46

    .line 1458
    const/16 v45, 0x4

    aget-wide v46, v41, v45

    sub-long v26, v26, v46

    .line 1459
    const/16 v45, 0x5

    aget-wide v46, v41, v45

    sub-long v28, v28, v46

    .line 1460
    const/16 v45, 0x6

    aget-wide v46, v41, v45

    sub-long v30, v30, v46

    .line 1461
    const/16 v45, 0x7

    aget-wide v46, v41, v45

    sub-long v32, v32, v46

    .line 1462
    const/16 v45, 0x8

    aget-wide v46, v41, v45

    sub-long v34, v34, v46

    .line 1463
    const/16 v45, 0x9

    aget-wide v46, v41, v45

    sub-long v36, v36, v46

    .line 1464
    const/16 v45, 0xa

    aget-wide v46, v41, v45

    sub-long v10, v10, v46

    .line 1465
    const/16 v45, 0xb

    aget-wide v46, v41, v45

    sub-long v12, v12, v46

    .line 1466
    const/16 v45, 0xc

    aget-wide v46, v41, v45

    sub-long v14, v14, v46

    .line 1467
    const/16 v45, 0xd

    aget-wide v46, v41, v45

    const/16 v45, 0x0

    aget-wide v48, v44, v45

    add-long v46, v46, v48

    sub-long v16, v16, v46

    .line 1468
    const/16 v45, 0xe

    aget-wide v46, v41, v45

    const/16 v45, 0x1

    aget-wide v48, v44, v45

    add-long v46, v46, v48

    sub-long v18, v18, v46

    .line 1469
    const/16 v45, 0xf

    aget-wide v46, v41, v45

    sub-long v20, v20, v46

    .line 1474
    const/16 v45, 0x0

    aput-wide v6, p2, v45

    .line 1475
    const/16 v45, 0x1

    aput-wide v8, p2, v45

    .line 1476
    const/16 v45, 0x2

    aput-wide v22, p2, v45

    .line 1477
    const/16 v45, 0x3

    aput-wide v24, p2, v45

    .line 1478
    const/16 v45, 0x4

    aput-wide v26, p2, v45

    .line 1479
    const/16 v45, 0x5

    aput-wide v28, p2, v45

    .line 1480
    const/16 v45, 0x6

    aput-wide v30, p2, v45

    .line 1481
    const/16 v45, 0x7

    aput-wide v32, p2, v45

    .line 1482
    const/16 v45, 0x8

    aput-wide v34, p2, v45

    .line 1483
    const/16 v45, 0x9

    aput-wide v36, p2, v45

    .line 1484
    const/16 v45, 0xa

    aput-wide v10, p2, v45

    .line 1485
    const/16 v45, 0xb

    aput-wide v12, p2, v45

    .line 1486
    const/16 v45, 0xc

    aput-wide v14, p2, v45

    .line 1487
    const/16 v45, 0xd

    aput-wide v16, p2, v45

    .line 1488
    const/16 v45, 0xe

    aput-wide v18, p2, v45

    .line 1489
    const/16 v45, 0xf

    aput-wide v20, p2, v45

    .line 1490
    return-void
.end method

.method encryptBlock([J[J)V
    .locals 50
    .param p1, "block"    # [J
    .param p2, "out"    # [J

    .prologue
    .line 1022
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/ThreefishEngine$Threefish1024Cipher;->kw:[J

    move-object/from16 v41, v0

    .line 1023
    .local v41, "kw":[J
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/ThreefishEngine$Threefish1024Cipher;->t:[J

    move-object/from16 v44, v0

    .line 1024
    .local v44, "t":[J
    invoke-static {}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->access$300()[I

    move-result-object v42

    .line 1025
    .local v42, "mod17":[I
    invoke-static {}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->access$100()[I

    move-result-object v43

    .line 1028
    .local v43, "mod3":[I
    move-object/from16 v0, v41

    array-length v0, v0

    move/from16 v45, v0

    const/16 v46, 0x21

    move/from16 v0, v45

    move/from16 v1, v46

    if-eq v0, v1, :cond_0

    .line 1030
    new-instance v45, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v45 .. v45}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v45

    .line 1032
    :cond_0
    move-object/from16 v0, v44

    array-length v0, v0

    move/from16 v45, v0

    const/16 v46, 0x5

    move/from16 v0, v45

    move/from16 v1, v46

    if-eq v0, v1, :cond_1

    .line 1034
    new-instance v45, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v45 .. v45}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v45

    .line 1040
    :cond_1
    const/16 v45, 0x0

    aget-wide v6, p1, v45

    .line 1041
    .local v6, "b0":J
    const/16 v45, 0x1

    aget-wide v8, p1, v45

    .line 1042
    .local v8, "b1":J
    const/16 v45, 0x2

    aget-wide v22, p1, v45

    .line 1043
    .local v22, "b2":J
    const/16 v45, 0x3

    aget-wide v24, p1, v45

    .line 1044
    .local v24, "b3":J
    const/16 v45, 0x4

    aget-wide v26, p1, v45

    .line 1045
    .local v26, "b4":J
    const/16 v45, 0x5

    aget-wide v28, p1, v45

    .line 1046
    .local v28, "b5":J
    const/16 v45, 0x6

    aget-wide v30, p1, v45

    .line 1047
    .local v30, "b6":J
    const/16 v45, 0x7

    aget-wide v32, p1, v45

    .line 1048
    .local v32, "b7":J
    const/16 v45, 0x8

    aget-wide v34, p1, v45

    .line 1049
    .local v34, "b8":J
    const/16 v45, 0x9

    aget-wide v36, p1, v45

    .line 1050
    .local v36, "b9":J
    const/16 v45, 0xa

    aget-wide v10, p1, v45

    .line 1051
    .local v10, "b10":J
    const/16 v45, 0xb

    aget-wide v12, p1, v45

    .line 1052
    .local v12, "b11":J
    const/16 v45, 0xc

    aget-wide v14, p1, v45

    .line 1053
    .local v14, "b12":J
    const/16 v45, 0xd

    aget-wide v16, p1, v45

    .line 1054
    .local v16, "b13":J
    const/16 v45, 0xe

    aget-wide v18, p1, v45

    .line 1055
    .local v18, "b14":J
    const/16 v45, 0xf

    aget-wide v20, p1, v45

    .line 1060
    .local v20, "b15":J
    const/16 v45, 0x0

    aget-wide v46, v41, v45

    add-long v6, v6, v46

    .line 1061
    const/16 v45, 0x1

    aget-wide v46, v41, v45

    add-long v8, v8, v46

    .line 1062
    const/16 v45, 0x2

    aget-wide v46, v41, v45

    add-long v22, v22, v46

    .line 1063
    const/16 v45, 0x3

    aget-wide v46, v41, v45

    add-long v24, v24, v46

    .line 1064
    const/16 v45, 0x4

    aget-wide v46, v41, v45

    add-long v26, v26, v46

    .line 1065
    const/16 v45, 0x5

    aget-wide v46, v41, v45

    add-long v28, v28, v46

    .line 1066
    const/16 v45, 0x6

    aget-wide v46, v41, v45

    add-long v30, v30, v46

    .line 1067
    const/16 v45, 0x7

    aget-wide v46, v41, v45

    add-long v32, v32, v46

    .line 1068
    const/16 v45, 0x8

    aget-wide v46, v41, v45

    add-long v34, v34, v46

    .line 1069
    const/16 v45, 0x9

    aget-wide v46, v41, v45

    add-long v36, v36, v46

    .line 1070
    const/16 v45, 0xa

    aget-wide v46, v41, v45

    add-long v10, v10, v46

    .line 1071
    const/16 v45, 0xb

    aget-wide v46, v41, v45

    add-long v12, v12, v46

    .line 1072
    const/16 v45, 0xc

    aget-wide v46, v41, v45

    add-long v14, v14, v46

    .line 1073
    const/16 v45, 0xd

    aget-wide v46, v41, v45

    const/16 v45, 0x0

    aget-wide v48, v44, v45

    add-long v46, v46, v48

    add-long v16, v16, v46

    .line 1074
    const/16 v45, 0xe

    aget-wide v46, v41, v45

    const/16 v45, 0x1

    aget-wide v48, v44, v45

    add-long v46, v46, v48

    add-long v18, v18, v46

    .line 1075
    const/16 v45, 0xf

    aget-wide v46, v41, v45

    add-long v20, v20, v46

    .line 1088
    const/16 v38, 0x1

    .local v38, "d":I
    :goto_0
    const/16 v45, 0x14

    move/from16 v0, v38

    move/from16 v1, v45

    if-ge v0, v1, :cond_2

    .line 1090
    aget v39, v42, v38

    .line 1091
    .local v39, "dm17":I
    aget v40, v43, v38

    .line 1099
    .local v40, "dm3":I
    const/16 v45, 0x18

    add-long/2addr v6, v8

    move/from16 v0, v45

    invoke-static {v8, v9, v0, v6, v7}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    .line 1100
    const/16 v45, 0xd

    add-long v22, v22, v24

    move-wide/from16 v0, v24

    move/from16 v2, v45

    move-wide/from16 v3, v22

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v24

    .line 1101
    const/16 v45, 0x8

    add-long v26, v26, v28

    move-wide/from16 v0, v28

    move/from16 v2, v45

    move-wide/from16 v3, v26

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v28

    .line 1102
    const/16 v45, 0x2f

    add-long v30, v30, v32

    move-wide/from16 v0, v32

    move/from16 v2, v45

    move-wide/from16 v3, v30

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v32

    .line 1103
    const/16 v45, 0x8

    add-long v34, v34, v36

    move-wide/from16 v0, v36

    move/from16 v2, v45

    move-wide/from16 v3, v34

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v36

    .line 1104
    const/16 v45, 0x11

    add-long/2addr v10, v12

    move/from16 v0, v45

    invoke-static {v12, v13, v0, v10, v11}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v12

    .line 1105
    const/16 v45, 0x16

    add-long v14, v14, v16

    move-wide/from16 v0, v16

    move/from16 v2, v45

    invoke-static {v0, v1, v2, v14, v15}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v16

    .line 1106
    const/16 v45, 0x25

    add-long v18, v18, v20

    move-wide/from16 v0, v20

    move/from16 v2, v45

    move-wide/from16 v3, v18

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v20

    .line 1108
    const/16 v45, 0x26

    add-long v6, v6, v36

    move-wide/from16 v0, v36

    move/from16 v2, v45

    invoke-static {v0, v1, v2, v6, v7}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v36

    .line 1109
    const/16 v45, 0x13

    add-long v22, v22, v16

    move-wide/from16 v0, v16

    move/from16 v2, v45

    move-wide/from16 v3, v22

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v16

    .line 1110
    const/16 v45, 0xa

    add-long v30, v30, v12

    move/from16 v0, v45

    move-wide/from16 v1, v30

    invoke-static {v12, v13, v0, v1, v2}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v12

    .line 1111
    const/16 v45, 0x37

    add-long v26, v26, v20

    move-wide/from16 v0, v20

    move/from16 v2, v45

    move-wide/from16 v3, v26

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v20

    .line 1112
    const/16 v45, 0x31

    add-long v10, v10, v32

    move-wide/from16 v0, v32

    move/from16 v2, v45

    invoke-static {v0, v1, v2, v10, v11}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v32

    .line 1113
    const/16 v45, 0x12

    add-long v14, v14, v24

    move-wide/from16 v0, v24

    move/from16 v2, v45

    invoke-static {v0, v1, v2, v14, v15}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v24

    .line 1114
    const/16 v45, 0x17

    add-long v18, v18, v28

    move-wide/from16 v0, v28

    move/from16 v2, v45

    move-wide/from16 v3, v18

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v28

    .line 1115
    const/16 v45, 0x34

    add-long v34, v34, v8

    move/from16 v0, v45

    move-wide/from16 v1, v34

    invoke-static {v8, v9, v0, v1, v2}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    .line 1117
    const/16 v45, 0x21

    add-long v6, v6, v32

    move-wide/from16 v0, v32

    move/from16 v2, v45

    invoke-static {v0, v1, v2, v6, v7}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v32

    .line 1118
    const/16 v45, 0x4

    add-long v22, v22, v28

    move-wide/from16 v0, v28

    move/from16 v2, v45

    move-wide/from16 v3, v22

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v28

    .line 1119
    const/16 v45, 0x33

    add-long v26, v26, v24

    move-wide/from16 v0, v24

    move/from16 v2, v45

    move-wide/from16 v3, v26

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v24

    .line 1120
    const/16 v45, 0xd

    add-long v30, v30, v8

    move/from16 v0, v45

    move-wide/from16 v1, v30

    invoke-static {v8, v9, v0, v1, v2}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    .line 1121
    const/16 v45, 0x22

    add-long v14, v14, v20

    move-wide/from16 v0, v20

    move/from16 v2, v45

    invoke-static {v0, v1, v2, v14, v15}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v20

    .line 1122
    const/16 v45, 0x29

    add-long v18, v18, v16

    move-wide/from16 v0, v16

    move/from16 v2, v45

    move-wide/from16 v3, v18

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v16

    .line 1123
    const/16 v45, 0x3b

    add-long v34, v34, v12

    move/from16 v0, v45

    move-wide/from16 v1, v34

    invoke-static {v12, v13, v0, v1, v2}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v12

    .line 1124
    const/16 v45, 0x11

    add-long v10, v10, v36

    move-wide/from16 v0, v36

    move/from16 v2, v45

    invoke-static {v0, v1, v2, v10, v11}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v36

    .line 1126
    const/16 v45, 0x5

    add-long v6, v6, v20

    move-wide/from16 v0, v20

    move/from16 v2, v45

    invoke-static {v0, v1, v2, v6, v7}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v20

    .line 1127
    const/16 v45, 0x14

    add-long v22, v22, v12

    move/from16 v0, v45

    move-wide/from16 v1, v22

    invoke-static {v12, v13, v0, v1, v2}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v12

    .line 1128
    const/16 v45, 0x30

    add-long v30, v30, v16

    move-wide/from16 v0, v16

    move/from16 v2, v45

    move-wide/from16 v3, v30

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v16

    .line 1129
    const/16 v45, 0x29

    add-long v26, v26, v36

    move-wide/from16 v0, v36

    move/from16 v2, v45

    move-wide/from16 v3, v26

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v36

    .line 1130
    const/16 v45, 0x2f

    add-long v18, v18, v8

    move/from16 v0, v45

    move-wide/from16 v1, v18

    invoke-static {v8, v9, v0, v1, v2}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    .line 1131
    const/16 v45, 0x1c

    add-long v34, v34, v28

    move-wide/from16 v0, v28

    move/from16 v2, v45

    move-wide/from16 v3, v34

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v28

    .line 1132
    const/16 v45, 0x10

    add-long v10, v10, v24

    move-wide/from16 v0, v24

    move/from16 v2, v45

    invoke-static {v0, v1, v2, v10, v11}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v24

    .line 1133
    const/16 v45, 0x19

    add-long v14, v14, v32

    move-wide/from16 v0, v32

    move/from16 v2, v45

    invoke-static {v0, v1, v2, v14, v15}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v32

    .line 1138
    aget-wide v46, v41, v39

    add-long v6, v6, v46

    .line 1139
    add-int/lit8 v45, v39, 0x1

    aget-wide v46, v41, v45

    add-long v8, v8, v46

    .line 1140
    add-int/lit8 v45, v39, 0x2

    aget-wide v46, v41, v45

    add-long v22, v22, v46

    .line 1141
    add-int/lit8 v45, v39, 0x3

    aget-wide v46, v41, v45

    add-long v24, v24, v46

    .line 1142
    add-int/lit8 v45, v39, 0x4

    aget-wide v46, v41, v45

    add-long v26, v26, v46

    .line 1143
    add-int/lit8 v45, v39, 0x5

    aget-wide v46, v41, v45

    add-long v28, v28, v46

    .line 1144
    add-int/lit8 v45, v39, 0x6

    aget-wide v46, v41, v45

    add-long v30, v30, v46

    .line 1145
    add-int/lit8 v45, v39, 0x7

    aget-wide v46, v41, v45

    add-long v32, v32, v46

    .line 1146
    add-int/lit8 v45, v39, 0x8

    aget-wide v46, v41, v45

    add-long v34, v34, v46

    .line 1147
    add-int/lit8 v45, v39, 0x9

    aget-wide v46, v41, v45

    add-long v36, v36, v46

    .line 1148
    add-int/lit8 v45, v39, 0xa

    aget-wide v46, v41, v45

    add-long v10, v10, v46

    .line 1149
    add-int/lit8 v45, v39, 0xb

    aget-wide v46, v41, v45

    add-long v12, v12, v46

    .line 1150
    add-int/lit8 v45, v39, 0xc

    aget-wide v46, v41, v45

    add-long v14, v14, v46

    .line 1151
    add-int/lit8 v45, v39, 0xd

    aget-wide v46, v41, v45

    aget-wide v48, v44, v40

    add-long v46, v46, v48

    add-long v16, v16, v46

    .line 1152
    add-int/lit8 v45, v39, 0xe

    aget-wide v46, v41, v45

    add-int/lit8 v45, v40, 0x1

    aget-wide v48, v44, v45

    add-long v46, v46, v48

    add-long v18, v18, v46

    .line 1153
    add-int/lit8 v45, v39, 0xf

    aget-wide v46, v41, v45

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v48, v0

    add-long v46, v46, v48

    add-long v20, v20, v46

    .line 1158
    const/16 v45, 0x29

    add-long/2addr v6, v8

    move/from16 v0, v45

    invoke-static {v8, v9, v0, v6, v7}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    .line 1159
    const/16 v45, 0x9

    add-long v22, v22, v24

    move-wide/from16 v0, v24

    move/from16 v2, v45

    move-wide/from16 v3, v22

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v24

    .line 1160
    const/16 v45, 0x25

    add-long v26, v26, v28

    move-wide/from16 v0, v28

    move/from16 v2, v45

    move-wide/from16 v3, v26

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v28

    .line 1161
    const/16 v45, 0x1f

    add-long v30, v30, v32

    move-wide/from16 v0, v32

    move/from16 v2, v45

    move-wide/from16 v3, v30

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v32

    .line 1162
    const/16 v45, 0xc

    add-long v34, v34, v36

    move-wide/from16 v0, v36

    move/from16 v2, v45

    move-wide/from16 v3, v34

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v36

    .line 1163
    const/16 v45, 0x2f

    add-long/2addr v10, v12

    move/from16 v0, v45

    invoke-static {v12, v13, v0, v10, v11}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v12

    .line 1164
    const/16 v45, 0x2c

    add-long v14, v14, v16

    move-wide/from16 v0, v16

    move/from16 v2, v45

    invoke-static {v0, v1, v2, v14, v15}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v16

    .line 1165
    const/16 v45, 0x1e

    add-long v18, v18, v20

    move-wide/from16 v0, v20

    move/from16 v2, v45

    move-wide/from16 v3, v18

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v20

    .line 1167
    const/16 v45, 0x10

    add-long v6, v6, v36

    move-wide/from16 v0, v36

    move/from16 v2, v45

    invoke-static {v0, v1, v2, v6, v7}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v36

    .line 1168
    const/16 v45, 0x22

    add-long v22, v22, v16

    move-wide/from16 v0, v16

    move/from16 v2, v45

    move-wide/from16 v3, v22

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v16

    .line 1169
    const/16 v45, 0x38

    add-long v30, v30, v12

    move/from16 v0, v45

    move-wide/from16 v1, v30

    invoke-static {v12, v13, v0, v1, v2}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v12

    .line 1170
    const/16 v45, 0x33

    add-long v26, v26, v20

    move-wide/from16 v0, v20

    move/from16 v2, v45

    move-wide/from16 v3, v26

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v20

    .line 1171
    const/16 v45, 0x4

    add-long v10, v10, v32

    move-wide/from16 v0, v32

    move/from16 v2, v45

    invoke-static {v0, v1, v2, v10, v11}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v32

    .line 1172
    const/16 v45, 0x35

    add-long v14, v14, v24

    move-wide/from16 v0, v24

    move/from16 v2, v45

    invoke-static {v0, v1, v2, v14, v15}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v24

    .line 1173
    const/16 v45, 0x2a

    add-long v18, v18, v28

    move-wide/from16 v0, v28

    move/from16 v2, v45

    move-wide/from16 v3, v18

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v28

    .line 1174
    const/16 v45, 0x29

    add-long v34, v34, v8

    move/from16 v0, v45

    move-wide/from16 v1, v34

    invoke-static {v8, v9, v0, v1, v2}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    .line 1176
    const/16 v45, 0x1f

    add-long v6, v6, v32

    move-wide/from16 v0, v32

    move/from16 v2, v45

    invoke-static {v0, v1, v2, v6, v7}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v32

    .line 1177
    const/16 v45, 0x2c

    add-long v22, v22, v28

    move-wide/from16 v0, v28

    move/from16 v2, v45

    move-wide/from16 v3, v22

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v28

    .line 1178
    const/16 v45, 0x2f

    add-long v26, v26, v24

    move-wide/from16 v0, v24

    move/from16 v2, v45

    move-wide/from16 v3, v26

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v24

    .line 1179
    const/16 v45, 0x2e

    add-long v30, v30, v8

    move/from16 v0, v45

    move-wide/from16 v1, v30

    invoke-static {v8, v9, v0, v1, v2}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    .line 1180
    const/16 v45, 0x13

    add-long v14, v14, v20

    move-wide/from16 v0, v20

    move/from16 v2, v45

    invoke-static {v0, v1, v2, v14, v15}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v20

    .line 1181
    const/16 v45, 0x2a

    add-long v18, v18, v16

    move-wide/from16 v0, v16

    move/from16 v2, v45

    move-wide/from16 v3, v18

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v16

    .line 1182
    const/16 v45, 0x2c

    add-long v34, v34, v12

    move/from16 v0, v45

    move-wide/from16 v1, v34

    invoke-static {v12, v13, v0, v1, v2}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v12

    .line 1183
    const/16 v45, 0x19

    add-long v10, v10, v36

    move-wide/from16 v0, v36

    move/from16 v2, v45

    invoke-static {v0, v1, v2, v10, v11}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v36

    .line 1185
    const/16 v45, 0x9

    add-long v6, v6, v20

    move-wide/from16 v0, v20

    move/from16 v2, v45

    invoke-static {v0, v1, v2, v6, v7}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v20

    .line 1186
    const/16 v45, 0x30

    add-long v22, v22, v12

    move/from16 v0, v45

    move-wide/from16 v1, v22

    invoke-static {v12, v13, v0, v1, v2}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v12

    .line 1187
    const/16 v45, 0x23

    add-long v30, v30, v16

    move-wide/from16 v0, v16

    move/from16 v2, v45

    move-wide/from16 v3, v30

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v16

    .line 1188
    const/16 v45, 0x34

    add-long v26, v26, v36

    move-wide/from16 v0, v36

    move/from16 v2, v45

    move-wide/from16 v3, v26

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v36

    .line 1189
    const/16 v45, 0x17

    add-long v18, v18, v8

    move/from16 v0, v45

    move-wide/from16 v1, v18

    invoke-static {v8, v9, v0, v1, v2}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    .line 1190
    const/16 v45, 0x1f

    add-long v34, v34, v28

    move-wide/from16 v0, v28

    move/from16 v2, v45

    move-wide/from16 v3, v34

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v28

    .line 1191
    const/16 v45, 0x25

    add-long v10, v10, v24

    move-wide/from16 v0, v24

    move/from16 v2, v45

    invoke-static {v0, v1, v2, v10, v11}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v24

    .line 1192
    const/16 v45, 0x14

    add-long v14, v14, v32

    move-wide/from16 v0, v32

    move/from16 v2, v45

    invoke-static {v0, v1, v2, v14, v15}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v32

    .line 1197
    add-int/lit8 v45, v39, 0x1

    aget-wide v46, v41, v45

    add-long v6, v6, v46

    .line 1198
    add-int/lit8 v45, v39, 0x2

    aget-wide v46, v41, v45

    add-long v8, v8, v46

    .line 1199
    add-int/lit8 v45, v39, 0x3

    aget-wide v46, v41, v45

    add-long v22, v22, v46

    .line 1200
    add-int/lit8 v45, v39, 0x4

    aget-wide v46, v41, v45

    add-long v24, v24, v46

    .line 1201
    add-int/lit8 v45, v39, 0x5

    aget-wide v46, v41, v45

    add-long v26, v26, v46

    .line 1202
    add-int/lit8 v45, v39, 0x6

    aget-wide v46, v41, v45

    add-long v28, v28, v46

    .line 1203
    add-int/lit8 v45, v39, 0x7

    aget-wide v46, v41, v45

    add-long v30, v30, v46

    .line 1204
    add-int/lit8 v45, v39, 0x8

    aget-wide v46, v41, v45

    add-long v32, v32, v46

    .line 1205
    add-int/lit8 v45, v39, 0x9

    aget-wide v46, v41, v45

    add-long v34, v34, v46

    .line 1206
    add-int/lit8 v45, v39, 0xa

    aget-wide v46, v41, v45

    add-long v36, v36, v46

    .line 1207
    add-int/lit8 v45, v39, 0xb

    aget-wide v46, v41, v45

    add-long v10, v10, v46

    .line 1208
    add-int/lit8 v45, v39, 0xc

    aget-wide v46, v41, v45

    add-long v12, v12, v46

    .line 1209
    add-int/lit8 v45, v39, 0xd

    aget-wide v46, v41, v45

    add-long v14, v14, v46

    .line 1210
    add-int/lit8 v45, v39, 0xe

    aget-wide v46, v41, v45

    add-int/lit8 v45, v40, 0x1

    aget-wide v48, v44, v45

    add-long v46, v46, v48

    add-long v16, v16, v46

    .line 1211
    add-int/lit8 v45, v39, 0xf

    aget-wide v46, v41, v45

    add-int/lit8 v45, v40, 0x2

    aget-wide v48, v44, v45

    add-long v46, v46, v48

    add-long v18, v18, v46

    .line 1212
    add-int/lit8 v45, v39, 0x10

    aget-wide v46, v41, v45

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v48, v0

    add-long v46, v46, v48

    const-wide/16 v48, 0x1

    add-long v46, v46, v48

    add-long v20, v20, v46

    .line 1088
    add-int/lit8 v38, v38, 0x2

    goto/16 :goto_0

    .line 1219
    .end local v39    # "dm17":I
    .end local v40    # "dm3":I
    :cond_2
    const/16 v45, 0x0

    aput-wide v6, p2, v45

    .line 1220
    const/16 v45, 0x1

    aput-wide v8, p2, v45

    .line 1221
    const/16 v45, 0x2

    aput-wide v22, p2, v45

    .line 1222
    const/16 v45, 0x3

    aput-wide v24, p2, v45

    .line 1223
    const/16 v45, 0x4

    aput-wide v26, p2, v45

    .line 1224
    const/16 v45, 0x5

    aput-wide v28, p2, v45

    .line 1225
    const/16 v45, 0x6

    aput-wide v30, p2, v45

    .line 1226
    const/16 v45, 0x7

    aput-wide v32, p2, v45

    .line 1227
    const/16 v45, 0x8

    aput-wide v34, p2, v45

    .line 1228
    const/16 v45, 0x9

    aput-wide v36, p2, v45

    .line 1229
    const/16 v45, 0xa

    aput-wide v10, p2, v45

    .line 1230
    const/16 v45, 0xb

    aput-wide v12, p2, v45

    .line 1231
    const/16 v45, 0xc

    aput-wide v14, p2, v45

    .line 1232
    const/16 v45, 0xd

    aput-wide v16, p2, v45

    .line 1233
    const/16 v45, 0xe

    aput-wide v18, p2, v45

    .line 1234
    const/16 v45, 0xf

    aput-wide v20, p2, v45

    .line 1235
    return-void
.end method
