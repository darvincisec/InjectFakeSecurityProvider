.class public Lorg/spongycastle/jce/exception/ExtCertificateEncodingException;
.super Ljava/security/cert/CertificateEncodingException;
.source "ExtCertificateEncodingException.java"

# interfaces
.implements Lorg/spongycastle/jce/exception/ExtException;


# instance fields
.field private cause:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    .line 14
    iput-object p2, p0, Lorg/spongycastle/jce/exception/ExtCertificateEncodingException;->cause:Ljava/lang/Throwable;

    .line 15
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lorg/spongycastle/jce/exception/ExtCertificateEncodingException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method