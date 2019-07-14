package tzk.bean;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;

@Entity
@Table(name = "tb_department", schema = "tzkSpringTest")
public class TbDepartmentEntity {
    private int id;
    private String departName;
    private int branchId;


/*    @ManyToOne(fetch =FetchType.LAZY)
    @JoinColumn(name = "branchID",insertable = false)*/
   private TbBranchEntity branch;

   private Set<TbRoleEntity> roles = new HashSet();


    public TbBranchEntity getBranch() {
        return branch;
    }

    public void setBranch(TbBranchEntity branch) {
        this.branch = branch;

    }

    public Set<TbRoleEntity> getRoles() {
        return roles;
    }

    public void setRoles(Set<TbRoleEntity> roles) {
        this.roles = roles;
    }

    public TbDepartmentEntity(int id, String departName) {
        this.id = id;
        this.departName = departName;

    }

    public TbDepartmentEntity(String departName, TbBranchEntity branch) {
        this.departName = departName;
        this.branch = branch;
    }

    public TbDepartmentEntity() {

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
    @Column(name = "departName", nullable = false, length = 30)
    public String getDepartName() {
        return departName;
    }

    public void setDepartName(String departName) {
        this.departName = departName;
    }

    @Basic
    @Column(name = "branchID", nullable = true)
    public int getBranchId() {
        return branchId;
    }

    public void setBranchId(int branchId) {

        this.branchId = branchId;
//        this.branchId = getBranch().getId();

    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        TbDepartmentEntity that = (TbDepartmentEntity) o;
        return id == that.id &&
                Objects.equals(departName, that.departName) &&
                Objects.equals(branchId, that.branchId);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, departName, branchId);
    }
}
