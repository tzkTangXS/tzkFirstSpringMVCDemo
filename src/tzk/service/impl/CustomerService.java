package tzk.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import tzk.bean.TbCustomerEntity;
import tzk.dao.*;
import tzk.service.ICustomerService;

import java.util.List;

/*@Transactional
@Service*/
@Service
@Transactional
public class CustomerService implements ICustomerService {
    //创建数据访问层对象

    @Autowired
    CustomerDAO customerDAO;

    public CustomerDAO getCustomerDAO() {
        return customerDAO;
    }

    public void setCustomerDAO(CustomerDAO customerDAO) {
        this.customerDAO = customerDAO;
    }

    @Override
    public boolean add(TbCustomerEntity customer) {
        return customerDAO.add(customer);
    }

    @Override
    public boolean delete(TbCustomerEntity customer) {
        return customerDAO.delete(customer);
    }

    @Override
    public boolean update(TbCustomerEntity customer) {
        return customerDAO.update(customer);
    }

    @Override
    public TbCustomerEntity getCustomerById(int i) {
        return customerDAO.getCustomerById(i);
    }

    @Override
    public List<TbCustomerEntity> getAll() {
        return customerDAO.getAll();
    }
}
