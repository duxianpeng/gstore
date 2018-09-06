<@alayout.myLayout "管理用户---添加用户">  
<div>
<form name="addUserForm" action="userAdd.action" method="post" >
<table width="100%" >
<tr >
	<td>用户名</td>
	<td><input type="text" name="name"></td>
</tr>
<tr >
	<td>密码</td>
	<td><input type="text" name="pwd"></td>
</tr>
<tr >
	<td>权限</td>
	<td><input type="text" name="isAdmin"></td>
</tr>
<tr >
	<td>邮箱</td>
	<td><input type="text"  name="email"></td>
</tr>
<tr >
	<td>性别</td>
	<td><input type="text" name="gender"></td>
</tr>
<tr >
	<td>生日</td>
	<td><input type="text"  name="birth"></td>
</tr>
<tr >
	<td>电话</td>
	<td><input type="text" name="phone"></td>
</tr>
<tr >
	<td>注册时间</td>
	<td><input type="text" name="regdate" ></td>
</tr>
<tr>
	<td></td>
	<td>
	<input type="submit" name="submit" value="确定">
	<input type="reset" name="reset" value="重置">
	</td>
</tr>
</table>
</form>
</div>  
</@alayout.myLayout> 
