package tzk.bean;

import javax.persistence.*;
import java.util.Objects;

@Entity
@Table(name = "tb_role", schema = "tzkSpringTest")
public class TbRoleEntity {
    private int id;
    private String roleName;
    private String telephone;
    private String emial;
    private Integer customerId;
    private Integer partId;
    private TbDepartmentEntity department;
    public TbRoleEntity(){
        super();
    }
    public TbRoleEntity(String roleName, String telephone, String emial,int partId) {
        this.roleName = roleName;
        this.telephone = telephone;
        this.emial = emial;
        this.partId=partId;
    }

    public TbDepartmentEntity getDepartment() {
        return department;
    }

    public void setDepartment(TbDepartmentEntity department) {
        this.department = department;
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
    @Column(name = "roleName", nullable = false, length = 30)
    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }

    @Basic
    @Column(name = "telephone", nullable = true, length = 30)
    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    @Basic
    @Column(name = "emial", nullable = true, length = 30)
    public String getEmial() {
        return emial;
    }

    public void setEmial(String emial) {
        this.emial = emial;
    }

    @Basic
    @Column(name = "customerID", nullable = true)
    public Integer getCustomerId() {
        return customerId;
    }

    public void setCustomerId(Integer customerId) {
        this.customerId = customerId;
    }

    @Basic
    @Column(name = "partID", nullable = true)
    public Integer getPartId() {
        return partId;
    }

    public void setPartId(Integer partId) {
        this.partId = partId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        TbRoleEntity that = (TbRoleEntity) o;
        return id == that.id &&
                Objects.equals(roleName, that.roleName) &&
                Objects.equals(telephone, that.telephone) &&
                Objects.equals(emial, that.emial) &&
                Objects.equals(customerId, that.customerId) &&
                Objects.equals(partId, that.partId);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, roleName, telephone, emial, customerId, partId);
    }
}
