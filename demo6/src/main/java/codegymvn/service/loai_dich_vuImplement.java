package codegymvn.service;

import codegymvn.model.loai_dich_vu;
import codegymvn.repo.loai_dich_vu_repo;

import java.util.List;

public class loai_dich_vuImplement implements loai_dich_vuImterface{

        private loai_dich_vu_repo loai_dich_vu_repo = new loai_dich_vu_repo();
    @Override
    public List<loai_dich_vu> Find_all() {
        return loai_dich_vu_repo.Find_all();
    }

    @Override
    public void save(loai_dich_vu loai_dich_vu) {

    }
}
