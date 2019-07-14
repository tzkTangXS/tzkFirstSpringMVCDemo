package tzk.service;

import tzk.bean.TbRoleEntity;

import java.util.List;

public interface IRoleService {
    public void add(TbRoleEntity role);
    public void delete(int id);
    public void update(TbRoleEntity role);
    public TbRoleEntity getByID(int id);
    public List<TbRoleEntity> showAll();
}
