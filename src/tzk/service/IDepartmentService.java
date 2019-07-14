package tzk.service;

import tzk.bean.TbDepartmentEntity;
import tzk.bean.TbRoleEntity;

import java.util.List;

public interface IDepartmentService {
    public void add(TbDepartmentEntity department);
    public void delete(TbDepartmentEntity department);
    public void update(TbDepartmentEntity department);
    public TbDepartmentEntity getByID(int id);
    public List<TbDepartmentEntity> showAll();
}
