<@alayout.myLayout "管理用户---用户列表">  
<div>
<table width="100%" >
<tr >

	<td width="15%">用户名</td>
	<td width="10%">权限</td>
	<td width="10%">性别</td>
	<td width="15%">注册时间</td>
	<td width="50%">操作</td>

</tr>

<#list items as item>
<tr>

	<td>${item.name}</td>
	<td><#if (item.isAdmin==1)>
		管理员
		</#if>
		<#if (item.isAdmin==0)>
		用户
		</#if>
	</td>
	<td><#if (item.gender == 1)>
		男
	</#if>
	<#if (item.gender == 0)>
		女
	</#if>
	</td>
	<td>${item.regdate}</td>
	<td align="center" nowrap>
		<a href="userInfo.action?id=${item.id}"><IMG
													title=" 详情 " border=0 alt=Reviews
													src="${base}/images/button_details2.gif" width=50 height=18></a>
		
		<a href="userEditView.action?id=${item.id}"><IMG
													title=" 编辑 " border=0 alt=Reviews
													src="${base}/images/update4.jpg" width=50 height=18></a>
		
		<a href="userDelete.action?id=${item.id}" onclick="return confirm('确定删除该用户？')"><IMG
													title=" 删除 " border=0 alt=Reviews
													src="${base}/images/remove2.jpg" width=50 height=18></a>
	</td>
</tr>
</#list>
</table>
<TABLE class="result box_width_cont" border=0 cellSpacing=0
							cellPadding=0>
							<TBODY>
								<TR>
									<TD>
								     <#import "../common/paging.ftl" as util>  
                                     <#--前一个参数是当前页号，后一个参数是总页数-->  
                                     <@util.paging pageVO.pageIndex pageVO.pageCount/>  
								    </TD>
								</TR>
							</TBODY>
</TABLE>

<p></p>
<p align=center><a href="userAddView.action"><IMG
													title=" 添加 " border=0 alt=Reviews
													src="${base}/images/create.jpg" width=60 height=20></a></p>
</div>  
</@alayout.myLayout> 
