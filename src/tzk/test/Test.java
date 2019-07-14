package tzk.test;

//import tzk.service.CustomerService;
import tzk.service.impl.CustomerService;

public class Test {
    public static void main(String[] args) {
        CustomerService customerService = new CustomerService();
        if(customerService.getCustomerDAO()==null){
            System.out.println("没有new");
        }else {
            System.out.println(customerService.getCustomerDAO().toString());
        }
    }
}
