package tzk.dao;

import tzk.bean.TbCustomerEntity;

import java.util.List;

public interface CustomerDAO {
    //添加
    public boolean add(TbCustomerEntity customerEntity);
    public boolean delete(TbCustomerEntity customerEntity);
    public boolean update(TbCustomerEntity customerEntity);
    public TbCustomerEntity getCustomerById(int i);
    public List<TbCustomerEntity> getAll();
}
