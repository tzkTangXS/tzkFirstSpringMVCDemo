package tzk.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import tzk.bean.TbDepartmentEntity;
import tzk.bean.TbRoleEntity;
import tzk.dao.DepartmentDAO;
import tzk.dao.RoleDAO;
import tzk.service.IDepartmentService;

import java.util.Iterator;
import java.util.List;

@Service
@Transactional
public class DepartmentService implements IDepartmentService {
    @Autowired
    DepartmentDAO departmentDAO;

    @Autowired
    RoleDAO roleDAO;
    @Override
    public void add(TbDepartmentEntity department) {
        departmentDAO.add(department);
    }

    @Override
    public void delete(TbDepartmentEntity department) {
    Iterator<TbRoleEntity> iterator = department.getRoles().iterator();
    while (iterator.hasNext()){
      TbRoleEntity role = iterator.next();
      role.setPartId(null);
      roleDAO.update(role);
    }
//        department.getRoles().clear();
        departmentDAO.delete(department);


    }

    @Override
    public void update(TbDepartmentEntity department) {
        departmentDAO.update(department);
    }

    @Override
    public TbDepartmentEntity getByID(int id) {
        return departmentDAO.getByID(id);
    }

    @Override
    public List<TbDepartmentEntity> showAll() {
        return departmentDAO.showAll();
    }
}
