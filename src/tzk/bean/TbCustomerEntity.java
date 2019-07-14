package tzk.bean;

import javax.persistence.*;
import java.util.Objects;

@Entity
@Table(name = "tb_customer", schema = "tzkSpringTest")
public class TbCustomerEntity {
    private int id;
    private String username;
    private String password;
    private String customerName;
    private String telephone;
    public TbCustomerEntity(){
        super();
    }
    public TbCustomerEntity(String username,String password,String customerName,String telephone){

        this.username=username;
        this.password=password;
        this.customerName=customerName;
        this.telephone=telephone;
    }

    @Id
    @Column(name = "id", nullable = false)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "customerName", nullable = false, length = 50)
    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Basic
    @Column(name = "telephone", nullable = false, length = 50)
    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        TbCustomerEntity that = (TbCustomerEntity) o;
        return id == that.id &&
                Objects.equals(customerName, that.customerName) &&
                Objects.equals(telephone, that.telephone);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, customerName, telephone);
    }
}
