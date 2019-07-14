package tzk.dao.impl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import tzk.bean.TbCustomerEntity;
import tzk.dao.CustomerDAO;

import javax.annotation.Resource;
import java.util.List;
//@Transactional
//@Component

@Repository
public class CustomerDAOImpl implements CustomerDAO {
    @Autowired
    SessionFactory sessionFactory;
//    TbCustomerEntity customerEntity;



    private Session  getSession(){
        return sessionFactory.getCurrentSession();
    }
    @Override
    public boolean add(TbCustomerEntity customerEntity) {
        boolean judge = false;
        Session session = getSession();


        session.save(customerEntity);



        judge=true;

        return judge;
    }

    @Override
    public boolean delete(TbCustomerEntity customerEntity) {
        boolean judge=false;
        Session session = getSession();

        session.delete(getCustomerById(customerEntity.getId()));
//        session.close();
        judge=true;

        return judge;
    }

    @Override
    public boolean update(TbCustomerEntity customerEntity) {
        boolean judge=false;
        Session session =getSession();
        session.update(customerEntity);
//        session.close();
        judge=true;

        return judge;
    }

    @Override
    public TbCustomerEntity getCustomerById(int id) {
        Session session = getSession();
        TbCustomerEntity customer= session.get(TbCustomerEntity.class,id);
        return customer;
    }

    @Override
    @SuppressWarnings({"unchecked","deprecation"})
    public List<TbCustomerEntity> getAll() {
      /*  Session session = getSession();

        String hql="from TbCustomerEntity ";
        Query query = session.createQuery(hql);
        List<TbCustomerEntity> list = query.list();*/
        return getSession().createCriteria(TbCustomerEntity.class).list();
    }
}
