package tzk.service;

import org.springframework.stereotype.Service;
import tzk.bean.TbCustomerEntity;

import java.util.List;

public interface ICustomerService {
    public boolean add(TbCustomerEntity customerEntity);
    public boolean delete(TbCustomerEntity customerEntity);
    public boolean update(TbCustomerEntity customerEntity);
    public TbCustomerEntity getCustomerById(int i);
    public List<TbCustomerEntity> getAll();
}
