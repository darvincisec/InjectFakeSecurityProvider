.class public Lorg/spongycastle/asn1/cmc/CMCStatusInfo$OtherInfo;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "CMCStatusInfo.java"

# interfaces
.implements Lorg/spongycastle/asn1/ASN1Choice;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/asn1/cmc/CMCStatusInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OtherInfo"
.end annotation


# instance fields
.field private final failInfo:Lorg/spongycastle/asn1/cmc/CMCFailInfo;

.field private final pendInfo:Lorg/spongycastle/asn1/cmc/PendInfo;


# direct methods
.method constructor <init>(Lorg/spongycastle/asn1/cmc/CMCFailInfo;)V
    .locals 1
    .param p1, "failInfo"    # Lorg/spongycastle/asn1/cmc/CMCFailInfo;

    .prologue
    .line 170
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/asn1/cmc/CMCStatusInfo$OtherInfo;-><init>(Lorg/spongycastle/asn1/cmc/CMCFailInfo;Lorg/spongycastle/asn1/cmc/PendInfo;)V

    .line 171
    return-void
.end method

.method private constructor <init>(Lorg/spongycastle/asn1/cmc/CMCFailInfo;Lorg/spongycastle/asn1/cmc/PendInfo;)V
    .locals 0
    .param p1, "failInfo"    # Lorg/spongycastle/asn1/cmc/CMCFailInfo;
    .param p2, "pendInfo"    # Lorg/spongycastle/asn1/cmc/PendInfo;

    .prologue
    .line 179
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 180
    iput-object p1, p0, Lorg/spongycastle/asn1/cmc/CMCStatusInfo$OtherInfo;->failInfo:Lorg/spongycastle/asn1/cmc/CMCFailInfo;

    .line 181
    iput-object p2, p0, Lorg/spongycastle/asn1/cmc/CMCStatusInfo$OtherInfo;->pendInfo:Lorg/spongycastle/asn1/cmc/PendInfo;

    .line 182
    return-void
.end method

.method constructor <init>(Lorg/spongycastle/asn1/cmc/PendInfo;)V
    .locals 1
    .param p1, "pendInfo"    # Lorg/spongycastle/asn1/cmc/PendInfo;

    .prologue
    .line 175
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/spongycastle/asn1/cmc/CMCStatusInfo$OtherInfo;-><init>(Lorg/spongycastle/asn1/cmc/CMCFailInfo;Lorg/spongycastle/asn1/cmc/PendInfo;)V

    .line 176
    return-void
.end method

.method static synthetic access$000(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmc/CMCStatusInfo$OtherInfo;
    .locals 1
    .param p0, "x0"    # Ljava/lang/Object;

    .prologue
    .line 138
    invoke-static {p0}, Lorg/spongycastle/asn1/cmc/CMCStatusInfo$OtherInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmc/CMCStatusInfo$OtherInfo;

    move-result-object v0

    return-object v0
.end method

.method private static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmc/CMCStatusInfo$OtherInfo;
    .locals 4
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 147
    instance-of v1, p0, Lorg/spongycastle/asn1/cmc/CMCStatusInfo$OtherInfo;

    if-eqz v1, :cond_0

    .line 149
    check-cast p0, Lorg/spongycastle/asn1/cmc/CMCStatusInfo$OtherInfo;

    .line 162
    .end local p0    # "obj":Ljava/lang/Object;
    .local v0, "asn1Value":Lorg/spongycastle/asn1/ASN1Encodable;
    :goto_0
    return-object p0

    .line 152
    .end local v0    # "asn1Value":Lorg/spongycastle/asn1/ASN1Encodable;
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    instance-of v1, p0, Lorg/spongycastle/asn1/ASN1Encodable;

    if-eqz v1, :cond_2

    move-object v1, p0

    .line 154
    check-cast v1, Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-interface {v1}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 156
    .restart local v0    # "asn1Value":Lorg/spongycastle/asn1/ASN1Encodable;
    instance-of v1, v0, Lorg/spongycastle/asn1/ASN1Integer;

    if-eqz v1, :cond_1

    .line 158
    new-instance p0, Lorg/spongycastle/asn1/cmc/CMCStatusInfo$OtherInfo;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-static {v0}, Lorg/spongycastle/asn1/cmc/CMCFailInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmc/CMCFailInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/spongycastle/asn1/cmc/CMCStatusInfo$OtherInfo;-><init>(Lorg/spongycastle/asn1/cmc/CMCFailInfo;)V

    goto :goto_0

    .line 160
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v1, v0, Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_2

    .line 162
    new-instance p0, Lorg/spongycastle/asn1/cmc/CMCStatusInfo$OtherInfo;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-static {v0}, Lorg/spongycastle/asn1/cmc/PendInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmc/PendInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/spongycastle/asn1/cmc/CMCStatusInfo$OtherInfo;-><init>(Lorg/spongycastle/asn1/cmc/PendInfo;)V

    goto :goto_0

    .line 165
    .end local v0    # "asn1Value":Lorg/spongycastle/asn1/ASN1Encodable;
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown object in getInstance(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public isFailInfo()Z
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lorg/spongycastle/asn1/cmc/CMCStatusInfo$OtherInfo;->failInfo:Lorg/spongycastle/asn1/cmc/CMCFailInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lorg/spongycastle/asn1/cmc/CMCStatusInfo$OtherInfo;->pendInfo:Lorg/spongycastle/asn1/cmc/PendInfo;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lorg/spongycastle/asn1/cmc/CMCStatusInfo$OtherInfo;->pendInfo:Lorg/spongycastle/asn1/cmc/PendInfo;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/cmc/PendInfo;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 195
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/cmc/CMCStatusInfo$OtherInfo;->failInfo:Lorg/spongycastle/asn1/cmc/CMCFailInfo;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/cmc/CMCFailInfo;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    goto :goto_0
.end method
