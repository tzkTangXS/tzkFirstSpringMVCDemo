package tzk.dao.impl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import tzk.bean.TbDepartmentEntity;
import tzk.bean.TbRoleEntity;
import tzk.dao.DepartmentDAO;

import java.util.Iterator;
import java.util.List;

@Repository
public class departmentDAOImpl implements DepartmentDAO {
    @Autowired
    SessionFactory sessionFactory;

    public Session getSession(){
        return sessionFactory.getCurrentSession();
    }
    @Override
    public void add(TbDepartmentEntity department) {
        getSession().save(department);
    }

    @Override
    public void delete(TbDepartmentEntity department) {
       /* Iterator<TbRoleEntity> iterator= department.getRoles().iterator();
        String hql="update TbBranchEntity partID=?2 where id=?1";
        Session session =getSession();
        while (iterator.hasNext()){
            TbRoleEntity role = iterator.next();
            Query<TbRoleEntity> query = session.createQuery(hql);
        }*/
        getSession().delete(department);
    }

    @Override
    public void update(TbDepartmentEntity department) {
        getSession().update(department);
    }

    @Override
    public TbDepartmentEntity getByID(int id) {
        return getSession().get(TbDepartmentEntity.class,id);
    }

    @Override
    @SuppressWarnings({"unchecked","deprecation"})
    public List<TbDepartmentEntity> showAll() {
        return getSession().createCriteria(TbDepartmentEntity.class).list() ;
    }
}
