
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Welcome visit my website</title>

      <script src="http://libs.baidu.com/jquery/1.9.1/jquery.min.js"></script>
      <script>
          $(function(){
              $("#testJson").click(function(){
                  var url = this.href;
                  var args = {};
                  $.post(url, args, function(data){
                      /*for(var i=0; i<data.length; i++){
                          var id = data[i].id;
                          var lastName = data[i].name;
                          alert(id + ": " + lastName);
                      }*/
                      alert(data);
                      alert(data[0].id + data[0].name)
                  })
                  return false;
              })
          })
      </script>
  </head>
  <body>
  <a href="crud/testJson" id="testJson">testJson</a>
  <br/> <br/>

  <a href="crud/emps"> List All employees </a> <br/>
    <a href="testModelAndView">testModelAndView</a> <br/>

 <a href="testRequestHeader">testRequestHeader</a> <br/>

 <a href="imag/1.jpg">image1</a> <br/>

 <a href="helloworld">helloworld</a> <br/>
 <a href="testPathVariable/12">testPathVariable : 12</a><br/>
 <a href="testRequestParam?username=yek&age=12">testRequestParam: yek : 12</a><br/>

 <form action="testRest" method="post">
     <table>
         <tr>
             <td><label>姓名：</label></td>
             <td><input type="text" id="txtname" name="username" /></td>
         </tr>
         <tr>
             <td><label>年龄：</label></td>
             <td><input type="text" id="txtpswd" name="age" /></td>
         </tr>
         <tr>
             <td colspan=2>
                 <input type="submit" />
                 <input type="reset" />
             </td>
         </tr>
     </table>
 </form><br/><br/>


  <form action="testPojo" method="post">
      username: <input type="text" name="username"><br>
      <%--password: <input type="password" name="password"><br>--%>
      <%--email: <input type="text" name="email"><br>--%>
      age: <input type="text" name="age"><br>
      city: <input type="text" name="address.city"><br>
      province: <input type="text" name="address.province"><br>
      <input type="submit" value="submit">
  </form>
  </body>
</html>
