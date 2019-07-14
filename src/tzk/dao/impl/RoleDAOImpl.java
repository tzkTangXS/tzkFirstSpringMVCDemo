package tzk.dao.impl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import tzk.bean.TbRoleEntity;
import tzk.dao.RoleDAO;

import java.util.List;

@Repository
public class RoleDAOImpl implements RoleDAO {
    @Autowired
    SessionFactory sessionFactory;

    private Session getSession(){
        return sessionFactory.getCurrentSession();
    }

    @Override
    public void add(TbRoleEntity role) {
        getSession().save(role);
    }

    @Override
    public void delete(int id) {
    getSession().delete(getByID(id));
    }

    @Override
    public void update(TbRoleEntity role) {
        getSession().update(role);
    }

    @Override
    public TbRoleEntity getByID(int id) {
        return getSession().get(TbRoleEntity.class,id);
    }

    @Override
    @SuppressWarnings({"unchecked","deprecation"})/*suppress：抑制。warning:警告对为受约束的（没有参数化（没有泛型）的集合）和反对使用的(过时的方法)不报警告*/
    public List<TbRoleEntity> showAll() {

        return getSession().createCriteria(TbRoleEntity.class).list();
    }
}
