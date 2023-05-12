package codegymvn.repo;

import codegymvn.model.loai_dich_vu;

import java.util.List;

public interface loai_dich_vuRepo {
    List<loai_dich_vu>  Find_all();

    void save(loai_dich_vu loai_dich_vu);
}
