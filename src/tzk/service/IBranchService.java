package tzk.service;


import tzk.bean.TbBranchEntity;

import java.util.List;


public interface IBranchService {
    public void add(TbBranchEntity branch);
    public void delete(int id);
    public void update(TbBranchEntity branch);
    public TbBranchEntity getByID(int id);
    public List<TbBranchEntity> showAll();
}
