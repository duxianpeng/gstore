<@alayout.myLayout "更新眼镜信息">  
<div>
<form name="updateGlassesForm" action="updateGlasses.action" method="post" >
<table width="100%" >
<input type="hidden" name="glasses.id" value="${glasses.id}">
<tr >
	<td>酷镜名</td>
	<td><input type="text" name="glasses.name" value="${glasses.name}">&nbsp;<SPAN class=inputRequirement>*</SPAN></td>
</tr>
<tr >
	<td>标语</td>
	<td><input type="text"  name="glasses.intro" value="${glasses.intro}">&nbsp;<SPAN class=inputRequirement>*</SPAN></td>
</tr>
<tr >
	<td>描述</td>
	<td><input type="text" name="glasses.desc" value="${glasses.desc!!}"></td>
</tr>
<tr >
	<td>图片</td>
	<td><input type="text" name="glasses.picture" value="${glasses.picture}">&nbsp;<SPAN class=inputRequirement>*</SPAN></td>
</tr>
<tr >
	<td>价格</td>
	<td><input type="text" name="glasses.price" value="${glasses.price}">&nbsp;<SPAN class=inputRequirement>*</SPAN></td>
</tr>
<tr >
	<td>防紫外</td>
	<td><input type="text" name="glasses.antiUltraviolet" value="${glasses.antiUltraviolet}"></td>
</tr>
<tr >
	<td>防强光</td>
	<td><input type="text" name="glasses.antiUVB"  value="${glasses.antiUVB}"></td>
</tr>
<tr >
	<td>材质</td>
	<td><input type="text" name="glasses.material"  value="${glasses.material!!}"></td>
</tr>
<tr >
	<td>适合脸型</td>
	<td><input type="text" name="glasses.face"  value="${glasses.face!!}"></td>
</tr>
<tr >
	<td>适用人群</td>
	<td><input type="text" name="glasses.human"  value="${glasses.human}"></td>
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
