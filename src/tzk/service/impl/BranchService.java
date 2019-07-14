package tzk.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import tzk.bean.TbBranchEntity;
import tzk.bean.TbDepartmentEntity;
import tzk.bean.TbRoleEntity;
import tzk.dao.BranchDAO;
import tzk.dao.RoleDAO;
import tzk.service.IBranchService;

import java.util.Iterator;
import java.util.List;

@Service
@Transactional
public class BranchService implements IBranchService {

    @Autowired
    BranchDAO BranchDAO;

    @Autowired
    RoleDAO roleDAO;
    @Override
    public void add(TbBranchEntity branch) {
        BranchDAO.add(branch);
    }

    @Override
    public void delete(int id) {
        /*因为机构与部门一对多关联多方控制，及联删除，部门与员工一对多关联，无级联操作，所以在删除机构之前清空员工所对应的部门partID，否则报500*/
        Iterator<TbDepartmentEntity> iterator0 = getByID(id).getDepartments().iterator();
        while (iterator0.hasNext()){
            Iterator<TbRoleEntity> iterator1 = iterator0.next().getRoles().iterator();
            while (iterator1.hasNext()){
               TbRoleEntity role = iterator1.next();
               role.setPartId(null);
               roleDAO.update(role);
            }
        }

        BranchDAO.delete(id);
    }

    @Override
    public void update(TbBranchEntity branch) {
        BranchDAO.update(branch);
    }

    @Override
    public TbBranchEntity getByID(int id) {
        return BranchDAO.getByID(id);
    }

    @Override
    public List<TbBranchEntity> showAll() {
        return  BranchDAO.showAll();
    }
}
