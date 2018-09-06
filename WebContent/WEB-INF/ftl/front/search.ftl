﻿<@flayout.myLayout "高级搜索"> 
<div>
<FORM onsubmit="return check_form(this);" method=post
	name=advanced_search
	action=${base}/front/searchGlasses.action>
<TABLE border=0 cellSpacing=0 cellPadding=0>
	<TBODY>
		<TR>
			<TD style="BORDER-RIGHT: #ffffff 4px solid">
			<TABLE
				style="BORDER-BOTTOM: #b6b6b6 0px solid; BORDER-LEFT: #b6b6b6 1px solid; BORDER-TOP: #b6b6b6 0px solid; BORDER-RIGHT: #b6b6b6 1px solid"
				border=0 cellSpacing=0 cellPadding=0>
				<TBODY>
					<TR>
						<TD
							style="BORDER-BOTTOM: #ffffff 10px solid; BORDER-LEFT: #ffffff 7px solid; BORDER-TOP: #ffffff 10px solid; BORDER-RIGHT: #ffffff 7px solid">
						<TABLE class=pic_2 border=0 cellSpacing=0 cellPadding=0>
							<TBODY>
								<TR>
									<TD class=image>
									<TABLE border=0 cellSpacing=15 cellPadding=0 width="100%">
										<TBODY>
											<TR>
												<TD>
												<TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
													<TBODY>
														<TR>
															<TD class=main><INPUT style="WIDTH: 100%"
																name=param.desc><BR style="LINE-HEIGHT: 1px">
															<BR style="LINE-HEIGHT: 5px">
															<INPUT
																style="BACKGROUND: none transparent scroll repeat 0% 0%"
																value=true type=checkbox name=param.isSearchInDesc>
														在商品描述中搜索</TD>
														</TR>
													</TBODY>
												</TABLE>
												</TD>
											</TR>
										</TBODY>
									</TABLE>
									</TD>
								</TR>
							</TBODY>
						</TABLE>
						<BR style="LINE-HEIGHT: 1px">
						<BR style="LINE-HEIGHT: 10px">
						<TABLE border=0 cellSpacing=0 cellPadding=2>
							<TBODY>
								<TR>
									<TD class="smallText padd_1">
									    <@s.fielderror/>
									</TD>
									<TD class="smallText vam bg_input" align=right><INPUT
										title=" Search " border=0 alt=Search
										src="${base}/images/button_search.gif" type=image></TD>
								</TR>
							</TBODY>
						</TABLE>
						<BR style="LINE-HEIGHT: 1px">
						<BR style="LINE-HEIGHT: 10px">
						<TABLE class=pic_2 border=0 cellSpacing=0 cellPadding=0>
							<TBODY>
								<TR>
									<TD class=image>
									<TABLE border=0 cellSpacing=0 cellPadding=0>
										<TBODY>
											<TR>
												<TD class=padd_2>
												<TABLE border=0 cellSpacing=4 cellPadding=2 width="100%">
													<TBODY>
														<TR>
															<TD class=fieldKey>品牌:</TD>
															<TD class=fieldValue><SELECT name=param.categoryId>
																<OPTION selected value="">所有品牌</OPTION>
													<#if Session.menu?exists>  
													<#list Session.menu as menuItem>
																<OPTION value=${menuItem.id}>${menuItem.categoryName}</OPTION>
													</#list>
												    </#if>
															</SELECT></TD>
														</TR>
														<TR>
															<TD colSpan=2><IMG border=0 alt=""
																src="${base}/images/pixel_trans.gif" width="100%"
																height=10></TD>
														</TR>
														<TR>
															<TD class=fieldKey>价格底线:</TD>
															<TD class=fieldValue><INPUT name=param.pfrom> (scope. 0 ~ 10000)</TD>
														</TR>
														<TR>
															<TD class=fieldKey>价格上限:</TD>
															<TD class=fieldValue><INPUT name=param.pto> (scope. 0 ~ 10000)</TD>
														</TR>
														<TR>
															<TD colSpan=2><IMG border=0 alt=""
																src="${base}/images/pixel_trans.gif" width="100%"
																height=10></TD>
														</TR>
														<TR>
															<TD class=fieldKey>添加日期从:</TD>
															<TD class=fieldValue><INPUT
																 name=param.dfrom> (eg. 1970-05-21)</TD>
														</TR>
														<TR>
															<TD class=fieldKey>到:</TD>
															<TD class=fieldValue><INPUT
																 name=param.dto>(eg. 1970-05-21)</TD>
														</TR>
													</TBODY>
												</TABLE>
												</TD>
											</TR>
										</TBODY>
									</TABLE>
									</TD>
								</TR>
							</TBODY>
						</TABLE>
						</TD>
					</TR>
				</TBODY>
			</TABLE>
			</TD>
		</TR>
		<TR>
			<TD><IMG border=0 alt="" src="${base}/images/m30.gif"
				width=438 height=7></TD>
		</TR>
	</TBODY>
</TABLE>
</FORM>
</div>
</@flayout.myLayout>