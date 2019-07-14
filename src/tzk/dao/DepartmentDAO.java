package tzk.dao;

import tzk.bean.TbDepartmentEntity;

import java.util.List;

public interface DepartmentDAO {
    public void add(TbDepartmentEntity department);
    public void delete(TbDepartmentEntity department);
    public void update(TbDepartmentEntity department);
    public TbDepartmentEntity getByID(int id);
    public List<TbDepartmentEntity> showAll();
}
