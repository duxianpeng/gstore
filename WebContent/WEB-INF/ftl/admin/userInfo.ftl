<@alayout.myLayout "管理用户---用户信息">  
<div>
<form>
<table width="100%" >
<tr >
	<td >编号</td>
	<td>${user.id}</td>
</tr>
<tr >
	<td>用户名</td>
	<td>${user.name}</td>
</tr>
<tr >
	<td>密码</td>
	<td>${user.pwd}</td>
</tr>
<tr >
	<td>权限</td>
	<td><#if user["isAdmin"]=0>用户<#else>管理员</#if></td>
</tr>
<tr >
	<td>邮箱</td>
	<td>${user.email}</td>
</tr>
<tr >
	<td>性别</td>
	<td><#if user["gender"]=0>女<#else>男</#if></td>
</tr>
<tr >
	<td>生日</td>
	<td>${user.birth}</td>
</tr>
<tr >
	<td>电话</td>
	<td>${user.phone}</td>
</tr>
<tr >
	<td>注册时间</td>
	<td>${user.regdate}</td>
</tr>
<tr >
	<td>操作</td>
	<td>
		<a href="userEditView.action?id=${user.id}"><IMG
													title=" 编辑 " border=0 alt=Reviews
													src="${base}/images/update4.jpg" width=50 height=18></a>
		
		<a href="userDelete.action?id=${user.id}" onclick="return confirm('确定删除该用户？')"><IMG
													title=" 删除 " border=0 alt=Reviews
													src="${base}/images/remove2.jpg" width=50 height=18></a>
	</td>
</table>
</form>
</div>  
</@alayout.myLayout> 
