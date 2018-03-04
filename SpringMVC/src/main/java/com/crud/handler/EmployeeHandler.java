package com.crud.handler;

import com.crud.beans.Employee;
import com.crud.dao.DepartmentDao;
import com.crud.dao.EmployeeDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.Collection;
import java.util.Map;

/**
 * Created by yek on 2016-12-23.
 */
@Controller
@RequestMapping("/crud")
public class EmployeeHandler {
    @Autowired
    private EmployeeDao employeeDao;

    @Autowired
    private DepartmentDao departmentDao;

    @RequestMapping("/emps")
    public String list(Map<String, Object> map) {
        map.put("employees", employeeDao.getAll());
        return "list";
    }

    @RequestMapping(value = "emp", method = RequestMethod.GET)
    public String input(Map<String, Object> map) {

        map.put("departments", departmentDao.getDepartments());
        map.put("employee", new Employee());
        return "input";
    }
    @RequestMapping(value = "emp", method = RequestMethod.POST)
    public String save(Employee employee) {

        employeeDao.save(employee);
        return "redirect:/crud/emps";
    }

    @RequestMapping(value="/emp/{id}", method=RequestMethod.DELETE)
    public String delete(@PathVariable("id") Integer id){
        employeeDao.delete(id);
        return "redirect:/crud/emps";
    }

    @RequestMapping(value="/emp/{id}", method=RequestMethod.GET)
    public String input(@PathVariable("id") Integer id, Map<String, Object> map){
        map.put("employee", employeeDao.get(id));
        map.put("departments", departmentDao.getDepartments());
        return "input";
    }

    @ModelAttribute
    public void getEmployee(@RequestParam(value="id",required=false) Integer id,
                            Map<String, Object> map){
        if(id != null){
            map.put("employee", employeeDao.get(id));
        }
    }

    @RequestMapping(value="emp", method=RequestMethod.PUT)
    public String update(Employee employee){
        employeeDao.save(employee);
        return "redirect:/crud/emps";
    }

    @ResponseBody
    @RequestMapping("testJson")
    public Collection<Employee> testJson(){
        return employeeDao.getAll();
    }
}
