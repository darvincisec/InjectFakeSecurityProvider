.class Lorg/spongycastle/jce/provider/CertStatus;
.super Ljava/lang/Object;
.source "CertStatus.java"


# static fields
.field public static final UNDETERMINED:I = 0xc

.field public static final UNREVOKED:I = 0xb


# instance fields
.field certStatus:I

.field revocationDate:Ljava/util/Date;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/16 v0, 0xb

    iput v0, p0, Lorg/spongycastle/jce/provider/CertStatus;->certStatus:I

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jce/provider/CertStatus;->revocationDate:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public getCertStatus()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lorg/spongycastle/jce/provider/CertStatus;->certStatus:I

    return v0
.end method

.method public getRevocationDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lorg/spongycastle/jce/provider/CertStatus;->revocationDate:Ljava/util/Date;

    return-object v0
.end method

.method public setCertStatus(I)V
    .locals 0
    .param p1, "certStatus"    # I

    .prologue
    .line 44
    iput p1, p0, Lorg/spongycastle/jce/provider/CertStatus;->certStatus:I

    .line 45
    return-void
.end method

.method public setRevocationDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "revocationDate"    # Ljava/util/Date;

    .prologue
    .line 28
    iput-object p1, p0, Lorg/spongycastle/jce/provider/CertStatus;->revocationDate:Ljava/util/Date;

    .line 29
    return-void
.end method
