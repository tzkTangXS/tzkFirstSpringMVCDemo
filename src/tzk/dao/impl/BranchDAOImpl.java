package tzk.dao.impl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import tzk.bean.TbBranchEntity;
import tzk.dao.BranchDAO;

import javax.annotation.Resource;
import java.util.List;

@Repository
public class BranchDAOImpl implements BranchDAO {

    @Resource
    private SessionFactory sessionFactory;

    @Autowired
    private TbBranchEntity branch;


    private Session getSession() {
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
        String hql = "from TbBranchEntity where id=?1";
        Session session = getSession();
        Query<TbBranchEntity> query = session.createQuery(hql);
        List<TbBranchEntity> list = query.list();

        if (list.size() > 0) {
            branch = list.get(0);
        }
        return branch;
    }

    @Override
    @SuppressWarnings({"unchecked", "deprecation"})
    public List<TbBranchEntity> showAll() {
        String hql = "";

        return getSession().createCriteria(TbBranchEntity.class).list();
    }
}
