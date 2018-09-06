<@alayout.myLayout "添加酷镜">  
<div>
<form name="addGlassesForm" onsubmit="return check_form(addGlassesForm);" action="createGlasses.action" method="post" >
<table width="100%" >
<tr >
	<td > 酷镜名</td>
	<td><input type="text" name="glasses.name" >&nbsp;<SPAN class=inputRequirement>*</SPAN></td>
</tr>
<tr >
	<td>标语</td>
	<td><input type="text"  name="glasses.intro" >&nbsp;<SPAN class=inputRequirement>*</SPAN></td>
</tr>
<tr >
	<td>描述</td>
	<td><input type="text" name="glasses.desc" ></td>
</tr>
<tr >
	<td>品牌</td>
	<td><input type="text" name="glasses.categoryId">&nbsp;<SPAN class=inputRequirement>*</SPAN></td>
</tr>
<tr >
	<td>图片</td>
	<td><input type="text" name="glasses.picture" >&nbsp;<SPAN class=inputRequirement>*</SPAN></td>
</tr>
<tr >
	<td>价格</td>
	<td><input type="text" name="glasses.price">&nbsp;<SPAN class=inputRequirement>*</SPAN></td>
</tr>
<tr >
	<td>防紫外</td>
	<td><input type="text" name="glasses.antiUltraviolet" value=1></td>
</tr>
<tr >
	<td>防强光</td>
	<td><input type="text" name="glasses.antiUVB" value=1></td>
</tr>
<tr >
	<td>材质</td>
	<td><input type="text" name="glasses.material" ></td>
</tr>
<tr >
	<td>适合脸型</td>
	<td><input type="text" name="glasses.face" ></td>
</tr>
<tr >
	<td>适用人群</td>
	<td><input type="text" name="glasses.human" value=1></td>
</tr>
<tr >
	<td>到货日期</td>
	<td><input type="text" name="glasses.addDate">&nbsp;<SPAN class=inputRequirement>*</SPAN></td>
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
