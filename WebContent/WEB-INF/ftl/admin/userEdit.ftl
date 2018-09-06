<@alayout.myLayout "管理用户---修改用户">  
<div>
<form name="editUserForm" action="update.action" method="post" >
<table width="100%" >
<input type="hidden" name="id" value=${user.id}>
<tr >
	<td>用户名</td>
	<td><input type="text" name="name" value="${user.name}"></td>
</tr>
<tr >
	<td>密码</td>
	<td><input type="text" name="pwd" value="${user.pwd}"></td>
</tr>
<tr >
	<td>权限</td>
	<td><input type="text" name="isAdmin" value="${user.isAdmin}"></td>
</tr>
<tr >
	<td>邮箱</td>
	<td><input type="text"  name="email" value="${user.email}"></td>
</tr>
<tr >
	<td>性别</td>
	<td><input type="text" name="gender" value="${user.gender}"></td>
</tr>
<tr >
	<td>生日</td>
	<td><input type="text"  name="birth" value="${user.birth}"></td>
</tr>
<tr >
	<td>电话</td>
	<td><input type="text" name="phone" value="${user.phone}"></td>
</tr>
<tr>
	<td></td>
	<td>
	<input type="submit" name="submit" value="确定修改">
	<input type="reset" name="reset" value="重置">
	</td>
</tr>
</table>
</form>
</div>  
</@alayout.myLayout> 
