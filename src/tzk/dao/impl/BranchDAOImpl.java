package tzk.dao.impl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
import tzk.bean.TbBranchEntity;
import tzk.dao.BranchDAO;

import javax.annotation.Resource;
import java.util.List;

@Repository
public class BranchDAOImpl implements BranchDAO {
    
    @Resource
    SessionFactory sessionFactory;



    private Session getSession(){
        return sessionFactory.getCurrentSession();
    }
    @Override
    public void add(TbBranchEntity branch) {
        getSession().save(branch);
    }

    @Override
    public void delete(int id) {
        getSession().delete(getByID(id));
    }

    @Override
    public void update(TbBranchEntity branch) {
        getSession().update(branch);
    }

    @Override
    public TbBranchEntity getByID(int id) {
        Session session = getSession();
        TbBranchEntity branch = session.get(TbBranchEntity.class,id);
        return branch;
    }

    @Override
    @SuppressWarnings({"unchecked","deprecation"})
    public List<TbBranchEntity> showAll() {
        return getSession().createCriteria(TbBranchEntity.class).list();
    }
}
