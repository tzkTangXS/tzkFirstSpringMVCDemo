package tzk.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import tzk.bean.TbBranchEntity;
import tzk.bean.TbCustomerEntity;
import tzk.bean.TbDepartmentEntity;
import tzk.bean.TbRoleEntity;
import tzk.service.IBranchService;
import tzk.service.ICustomerService;
import tzk.service.IDepartmentService;
import tzk.service.IRoleService;

import java.util.List;
import java.util.Map;


@Controller
@SessionAttributes(value = {"name", "list"})
@RequestMapping("/manger")
public class MangerController {

    @Autowired
    private ICustomerService customerService;

    @Autowired
    private IBranchService IBranchService;

    @Autowired
    private IDepartmentService IDepartmentService;

    @Autowired
    private IRoleService IRoleService;
    /*登录*/

    @RequestMapping("/login")
    public String login(String name, String pass, Map<String, Object> map) {
        if (name.equals("764") && pass.equals("123")) {
            map.put("name", name);
            //存放在request请求中
            /*类上加@SessionAttributes("username")同时也会存放在session域中
            @SessionAttributes()可以同过属性名(value)来指定存放的session域中的属性，还可以通过
            (types)指定哪一种属性类型存放到session域中.
            * */

            return "frame";
        }
        return "error";
    }
    /*---------------保存---处理器映射-----------------*/
    /*-------------跳转到添加客户界面*/

    @RequestMapping("/doSave")
    public String saveCustomer() {
        return "savepage";
    }
    //保存客户数据

    @RequestMapping("/save")
    public String saveCustomer(TbCustomerEntity customer) {
        if (customer == null) {
            System.out.println("customer为空");
        }
        customerService.add(customer);
        return "redirect:showAll.do";
    }

    /*-------------跳转机构页面*/
    @RequestMapping("/doSaveBranch")
    public String doSaveBranch() {
        return "saveBranch";
    }

    //    保存机构数据
    @RequestMapping("/saveBranch")
    public String saveBranch(TbBranchEntity branch) {
        IBranchService.add(branch);
        return "redirect:showAllBranch.do";

    }

    /*----------跳转添加部门界面*/
    @RequestMapping("/doSaveDepartment")
    public String doSaveDepartment(Map<String, List<TbBranchEntity>> map) {
        List list = IBranchService.showAll();
        map.put("branchList", list);
        return "saveDepartment";
    }

    //添加部门
    @RequestMapping("/saveDepartment")
    public String saveDepartment(TbDepartmentEntity department) {
        IDepartmentService.add(department);
        return "redirect:showAllDepartment.do";
    }

    /*------------------跳转添加员工界面*/
    @RequestMapping("/doSaveRole")
    public String doSaveRole(Map<String, List<TbDepartmentEntity>> map) {
        map.put("departments", IDepartmentService.showAll());
        return "saveRole";
    }

    //添加员工
    @RequestMapping("/saveRole")
    public String saveRole(TbRoleEntity role) {
        IRoleService.add(role);
        return "redirect:showAllRole.do";
    }

    /*-------------删除---处理器映射--------------*/
    /* 删除顾客数据*/
    @RequestMapping("/delete")
    public String delete(TbCustomerEntity customerEntity) {
        customerService.delete(customerEntity);
        return "redirect:showAll.do";
    }

    /*删除机构数据*/
    @RequestMapping("/deleteBranch")
    public String delete(@RequestParam("id") int id) {
        IBranchService.delete(id);
        return "redirect:showAllBranch.do";
    }

    /*删除部门*/
    @RequestMapping("/deleteDepartment")
    public String deleteDepartment(@RequestParam("id") int id) {
        IDepartmentService.delete(IDepartmentService.getByID(id));
        return "redirect:showAllDepartment.do";
    }

    /*删除员工*/
    @RequestMapping("/deleteRole")
    public String deleteRole(@RequestParam("id") int id) {
        IRoleService.delete(id);
        return "redirect:showAllRole.do";
    }
    /*--------------更新---处理器映射器和适配器-----------------------*/

    /*跳转更新*/
    @RequestMapping("/doupdate")
    public String update(@RequestParam(value = "id") int id, Model model) {
        model.addAttribute("customer", customerService.getCustomerById(id));
        return "editpage";
    }

    //更新数据
    @RequestMapping("/update")
    public String update(TbCustomerEntity customer) {
        customerService.update(customer);
        return "redirect:showAll.do";
    }

    /*跳转机构更新界面*/
    @RequestMapping("/doUpdateBranch")
    public String doupdateBranch(@RequestParam(value = "id") int id, Model model) {
        model.addAttribute("branch", IBranchService.getByID(id));
        return "editBranch";

    }

    //更新机构
    @RequestMapping("/updateBranch")
    public String updateBranch(TbBranchEntity branch) {
        IBranchService.update(branch);
        return "redirect:showAllBranch.do";
    }

    /*跳转部门更新界面*/
    @RequestMapping("/doUpdateDepartment")
    public String doUpdateBranch(@RequestParam("id") int id, Model map1, Map<String, List<TbBranchEntity>> map) {
        map1.addAttribute("department", IDepartmentService.getByID(id));
        List<TbBranchEntity> list = IBranchService.showAll();
        map.put("list", list);


        return "editDepartment";
    }

    //更新部门
    @RequestMapping("/updateDepartment")
    public String updateDepartment(TbDepartmentEntity deaprtment) {
        IDepartmentService.update(deaprtment);
        return "redirect:showAllDepartment.do";
    }

    /*跳转员工更新界面*/
    @RequestMapping("/doUpdateRole")
    public String doUpdateRole(@RequestParam("id") int id, Model model, Map<String, List<TbDepartmentEntity>> map) {
        model.addAttribute("role", IRoleService.getByID(id));
        map.put("departments", IDepartmentService.showAll());
        return "editRole";
    }

    //更新员工
    @RequestMapping("/updateRole")
    public String updateRole(TbRoleEntity role) {
        IRoleService.update(role);
        return "redirect:showAllRole.do";
    }

    /*--------------查询所有---处理器映射----------------------*/
    /*
     * 查询所有客户信息
     * @param map 使用map保存回显数据
     * */
    @RequestMapping("/showAll")
    public String showAll(Map<String, List<TbCustomerEntity>> map) {
        map.put("customerlist", customerService.getAll());
        return "main";
    }

    //查询所有机构信息
    @RequestMapping("/showAllBranch")
    public String showAllBranch(Map<String, List<TbBranchEntity>> map) {
        map.put("branchList", IBranchService.showAll());
        return "branch";
    }

    /*查询所有部门信息*/
    @RequestMapping("/showAllDepartment")
    public String showAllDepartment(Map<String, List<TbDepartmentEntity>> map) {
        map.put("departmentList", IDepartmentService.showAll());
        return "department";
    }

    /*查询所有员工信息*/
    @RequestMapping("/showAllRole")
    public String showAllRole(Map<String, List<TbRoleEntity>> map) {
        map.put("roleList", IRoleService.showAll());
        return "role";
    }
}

