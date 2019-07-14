package tzk.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import tzk.bean.TbRoleEntity;
import tzk.dao.RoleDAO;
import tzk.service.IRoleService;

import java.util.List;

@Service
@Transactional
public class RoleService implements IRoleService {
    @Autowired
    RoleDAO roleDAO;

    @Override
    public void add(TbRoleEntity role) {
        roleDAO.add(role);
    }

    @Override
    public void delete(int id) {
        roleDAO.delete(id);
    }

    @Override
    public void update(TbRoleEntity role) {
        roleDAO.update(role);
    }

    @Override
    public TbRoleEntity getByID(int id) {
        return roleDAO.getByID(id);
    }

    @Override
    public List<TbRoleEntity> showAll() {
        return roleDAO.showAll();
    }
}
