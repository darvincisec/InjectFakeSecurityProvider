.class public Lorg/spongycastle/asn1/cmc/OtherStatusInfo;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "OtherStatusInfo.java"

# interfaces
.implements Lorg/spongycastle/asn1/ASN1Choice;


# instance fields
.field private final extendedFailInfo:Lorg/spongycastle/asn1/cmc/ExtendedFailInfo;

.field private final failInfo:Lorg/spongycastle/asn1/cmc/CMCFailInfo;

.field private final pendInfo:Lorg/spongycastle/asn1/cmc/PendInfo;


# direct methods
.method constructor <init>(Lorg/spongycastle/asn1/cmc/CMCFailInfo;)V
    .locals 1
    .param p1, "failInfo"    # Lorg/spongycastle/asn1/cmc/CMCFailInfo;

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, v0, v0}, Lorg/spongycastle/asn1/cmc/OtherStatusInfo;-><init>(Lorg/spongycastle/asn1/cmc/CMCFailInfo;Lorg/spongycastle/asn1/cmc/PendInfo;Lorg/spongycastle/asn1/cmc/ExtendedFailInfo;)V

    .line 71
    return-void
.end method

.method private constructor <init>(Lorg/spongycastle/asn1/cmc/CMCFailInfo;Lorg/spongycastle/asn1/cmc/PendInfo;Lorg/spongycastle/asn1/cmc/ExtendedFailInfo;)V
    .locals 0
    .param p1, "failInfo"    # Lorg/spongycastle/asn1/cmc/CMCFailInfo;
    .param p2, "pendInfo"    # Lorg/spongycastle/asn1/cmc/PendInfo;
    .param p3, "extendedFailInfo"    # Lorg/spongycastle/asn1/cmc/ExtendedFailInfo;

    .prologue
    .line 84
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 85
    iput-object p1, p0, Lorg/spongycastle/asn1/cmc/OtherStatusInfo;->failInfo:Lorg/spongycastle/asn1/cmc/CMCFailInfo;

    .line 86
    iput-object p2, p0, Lorg/spongycastle/asn1/cmc/OtherStatusInfo;->pendInfo:Lorg/spongycastle/asn1/cmc/PendInfo;

    .line 87
    iput-object p3, p0, Lorg/spongycastle/asn1/cmc/OtherStatusInfo;->extendedFailInfo:Lorg/spongycastle/asn1/cmc/ExtendedFailInfo;

    .line 88
    return-void
.end method

.method constructor <init>(Lorg/spongycastle/asn1/cmc/ExtendedFailInfo;)V
    .locals 1
    .param p1, "extendedFailInfo"    # Lorg/spongycastle/asn1/cmc/ExtendedFailInfo;

    .prologue
    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, v0, v0, p1}, Lorg/spongycastle/asn1/cmc/OtherStatusInfo;-><init>(Lorg/spongycastle/asn1/cmc/CMCFailInfo;Lorg/spongycastle/asn1/cmc/PendInfo;Lorg/spongycastle/asn1/cmc/ExtendedFailInfo;)V

    .line 81
    return-void
.end method

.method constructor <init>(Lorg/spongycastle/asn1/cmc/PendInfo;)V
    .locals 1
    .param p1, "pendInfo"    # Lorg/spongycastle/asn1/cmc/PendInfo;

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, v0, p1, v0}, Lorg/spongycastle/asn1/cmc/OtherStatusInfo;-><init>(Lorg/spongycastle/asn1/cmc/CMCFailInfo;Lorg/spongycastle/asn1/cmc/PendInfo;Lorg/spongycastle/asn1/cmc/ExtendedFailInfo;)V

    .line 76
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmc/OtherStatusInfo;
    .locals 5
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 32
    instance-of v2, p0, Lorg/spongycastle/asn1/cmc/OtherStatusInfo;

    if-eqz v2, :cond_0

    .line 34
    check-cast p0, Lorg/spongycastle/asn1/cmc/OtherStatusInfo;

    .line 58
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 37
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    instance-of v2, p0, Lorg/spongycastle/asn1/ASN1Encodable;

    if-eqz v2, :cond_3

    move-object v2, p0

    .line 39
    check-cast v2, Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-interface {v2}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 41
    .local v0, "asn1Value":Lorg/spongycastle/asn1/ASN1Encodable;
    instance-of v2, v0, Lorg/spongycastle/asn1/ASN1Integer;

    if-eqz v2, :cond_1

    .line 43
    new-instance p0, Lorg/spongycastle/asn1/cmc/OtherStatusInfo;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-static {v0}, Lorg/spongycastle/asn1/cmc/CMCFailInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmc/CMCFailInfo;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/spongycastle/asn1/cmc/OtherStatusInfo;-><init>(Lorg/spongycastle/asn1/cmc/CMCFailInfo;)V

    goto :goto_0

    .line 45
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v2, v0, Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v2, :cond_4

    move-object v2, v0

    .line 47
    check-cast v2, Lorg/spongycastle/asn1/ASN1Sequence;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    instance-of v2, v2, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v2, :cond_2

    .line 49
    new-instance p0, Lorg/spongycastle/asn1/cmc/OtherStatusInfo;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-static {v0}, Lorg/spongycastle/asn1/cmc/ExtendedFailInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmc/ExtendedFailInfo;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/spongycastle/asn1/cmc/OtherStatusInfo;-><init>(Lorg/spongycastle/asn1/cmc/ExtendedFailInfo;)V

    goto :goto_0

    .line 51
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_2
    new-instance p0, Lorg/spongycastle/asn1/cmc/OtherStatusInfo;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-static {v0}, Lorg/spongycastle/asn1/cmc/PendInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmc/PendInfo;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/spongycastle/asn1/cmc/OtherStatusInfo;-><init>(Lorg/spongycastle/asn1/cmc/PendInfo;)V

    goto :goto_0

    .line 54
    .end local v0    # "asn1Value":Lorg/spongycastle/asn1/ASN1Encodable;
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_3
    instance-of v2, p0, [B

    if-eqz v2, :cond_4

    .line 58
    :try_start_0
    check-cast p0, [B

    .end local p0    # "obj":Ljava/lang/Object;
    check-cast p0, [B

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/cmc/OtherStatusInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmc/OtherStatusInfo;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 60
    :catch_0
    move-exception v1

    .line 62
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parsing error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 65
    .end local v1    # "e":Ljava/io/IOException;
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown object in getInstance(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public isExtendedFailInfo()Z
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lorg/spongycastle/asn1/cmc/OtherStatusInfo;->extendedFailInfo:Lorg/spongycastle/asn1/cmc/ExtendedFailInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFailInfo()Z
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lorg/spongycastle/asn1/cmc/OtherStatusInfo;->failInfo:Lorg/spongycastle/asn1/cmc/CMCFailInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPendingInfo()Z
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lorg/spongycastle/asn1/cmc/OtherStatusInfo;->pendInfo:Lorg/spongycastle/asn1/cmc/PendInfo;

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
    .line 109
    iget-object v0, p0, Lorg/spongycastle/asn1/cmc/OtherStatusInfo;->pendInfo:Lorg/spongycastle/asn1/cmc/PendInfo;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lorg/spongycastle/asn1/cmc/OtherStatusInfo;->pendInfo:Lorg/spongycastle/asn1/cmc/PendInfo;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/cmc/PendInfo;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 117
    :goto_0
    return-object v0

    .line 113
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/cmc/OtherStatusInfo;->failInfo:Lorg/spongycastle/asn1/cmc/CMCFailInfo;

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lorg/spongycastle/asn1/cmc/OtherStatusInfo;->failInfo:Lorg/spongycastle/asn1/cmc/CMCFailInfo;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/cmc/CMCFailInfo;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    goto :goto_0

    .line 117
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/asn1/cmc/OtherStatusInfo;->extendedFailInfo:Lorg/spongycastle/asn1/cmc/ExtendedFailInfo;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/cmc/ExtendedFailInfo;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    goto :goto_0
.end method
