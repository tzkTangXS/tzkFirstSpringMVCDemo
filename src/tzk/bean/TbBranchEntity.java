package tzk.bean;

import org.hibernate.annotations.Cascade;

import javax.persistence.*;
import java.util.*;

@Entity
@Table(name = "tb_branch", schema = "tzkSpringTest")
public class TbBranchEntity {
    private int id;
    private String branchName;
    private String remark;

//    @OneToMany(mappedBy = "tb_branch",fetch = FetchType.LAZY,orphanRemoval = true)
//    @Cascade({org.hibernate.annotations.CascadeType.SAVE_UPDATE,org.hibernate.annotations.CascadeType.DELETE})
   private Set<TbDepartmentEntity> departments = new HashSet();

    public Set<TbDepartmentEntity> getDepartments() {
        return departments;
    }

    private void setDepartments(Set<TbDepartmentEntity> departments) {
//        this.departments = departments;
        addDepartments(departments);
    }
    public void addDepartments(Set<TbDepartmentEntity> departments){
        this.departments.clear();
        if(null!=departments&&!departments.isEmpty()){
            this.departments.addAll(departments);
        }
    }
    public TbBranchEntity(){
        super();
    }
    /*springMVC会把前端传值和构造方法进行匹配。比如前段的添加界面，含有id的input标签，但是因为是添加，所以并不会id值，
    那么如果实体类中没有不含id且仅含其他inputb标签中的值那么将会报错400,请求无效。*/
    public TbBranchEntity(String branchName, String remark) {
        this.branchName = branchName;
        this.remark = remark;
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
    @Column(name = "branchName", nullable = false, length = 30)
    public String getBranchName() {
        return branchName;
    }

    public void setBranchName(String branchName) {
        this.branchName = branchName;
    }

    @Basic
    @Column(name = "remark", nullable = true, length = 30)
    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        TbBranchEntity that = (TbBranchEntity) o;
        return id == that.id &&
                Objects.equals(branchName, that.branchName) &&
                Objects.equals(remark, that.remark);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, branchName, remark);
    }
}
