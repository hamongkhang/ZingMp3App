package com.thv.hoangvu.appnhac.Model;

import android.os.Parcel;
import android.os.Parcelable;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

import java.io.Serializable;

public class BaiHat implements Parcelable {

    @SerializedName("Idbaihat")
    @Expose
    private String idBaiHat;
    @SerializedName("Tenbaihat")
    @Expose
    private String tenBaiHat;
    @SerializedName("Hinhbaihat")
    @Expose
    private String hinhBaiHat;
    @SerializedName("Casi")
    @Expose
    private String caSi;
    @SerializedName("Linkbaihat")
    @Expose
    private String linkBaiHat;
    @SerializedName("Luotthich")
    @Expose
    private String luotThich;

    protected BaiHat(Parcel in) {
        idBaiHat = in.readString();
        tenBaiHat = in.readString();
        hinhBaiHat = in.readString();
        caSi = in.readString();
        linkBaiHat = in.readString();
        luotThich = in.readString();
    }

    public static final Creator<BaiHat> CREATOR = new Creator<BaiHat>() {
        @Override
        public BaiHat createFromParcel(Parcel in) {
            return new BaiHat(in);
        }

        @Override
        public BaiHat[] newArray(int size) {
            return new BaiHat[size];
        }
    };

    public String getIdBaiHat() {
    return idBaiHat;
    }

    public void setIdBaiHat(String idBaiHat) {
    this.idBaiHat = idBaiHat;
    }

    public String getTenBaiHat() {
    return tenBaiHat;
    }

    public void setTenBaiHat(String tenBaiHat) {
    this.tenBaiHat = tenBaiHat;
    }

    public String getHinhBaiHat() {
    return hinhBaiHat;
    }

    public void setHinhBaiHat(String hinhBaiHat) {
    this.hinhBaiHat = hinhBaiHat;
    }

    public String getCaSi() {
    return caSi;
    }

    public void setCaSi(String caSi) {
    this.caSi = caSi;
    }

    public String getLinkBaiHat() {
    return linkBaiHat;
    }

    public void setLinkBaiHat(String linkBaiHat) {
    this.linkBaiHat = linkBaiHat;
    }

    public String getLuotThich() {
    return luotThich;
    }

    public void setLuotThich(String luotThich) {
    this.luotThich = luotThich;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(idBaiHat);
        dest.writeString(tenBaiHat);
        dest.writeString(hinhBaiHat);
        dest.writeString(caSi);
        dest.writeString(linkBaiHat);
        dest.writeString(luotThich);
    }
}