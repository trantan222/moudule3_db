package codegymvn.model;

public class loai_dich_vu {
    private int ma_loai_dich_vu;
    private String ten;

    public loai_dich_vu(String ten){
        this.ten = ten;
    }
    public loai_dich_vu(int ma_loai_dich_vu, String ten) {
        this.ma_loai_dich_vu = ma_loai_dich_vu;
        this.ten = ten;
    }

    public int getMa_loai_dich_vu() {
        return ma_loai_dich_vu;
    }

    public void setMa_loai_dich_vu(int ma_loai_dich_vu) {
        this.ma_loai_dich_vu = ma_loai_dich_vu;
    }

    public String getTen() {
        return ten;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }
}
