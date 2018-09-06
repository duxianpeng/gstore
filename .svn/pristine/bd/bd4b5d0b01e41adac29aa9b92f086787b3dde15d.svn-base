﻿﻿<@flayout.myLayout "我的账户信息"> 
<FORM onsubmit="return check_form(create_account);" method=post
	name=create_account
	action=${base}/front/goUpdateAccount.action><INPUT
	value=process type=hidden name=action>
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
						<TABLE border=0 cellSpacing=0 cellPadding=0>
							<TBODY>
								<TR>
									<TD><IMG border=0 alt="" src="${base}/images/pixel_trans.gif"
										width="100%" height=10></TD>
								</TR>
							</TBODY>
						</TABLE>
						<TABLE border=0 cellSpacing=0 cellPadding=2 width="100%">
							<TBODY>
								<TR>
									<TD class=main><B>你的个人信息</B></TD>
								</TR>
							</TBODY>
						</TABLE>
						<TABLE class=pic_2 border=0 cellSpacing=0 cellPadding=0>
							<TBODY>
								<TR>
									<TD class=image>
									<TABLE border=0 cellSpacing=2 cellPadding=2>
										<TBODY>
											<TR>
												<TD class=main>性别:</TD>
												<TD class=main>
												<#if (user.gender==1)>
												"男"
												<#else>
												"女"
												</#if>
												</TD>
											</TR>
											<TR>
												<TD class=main>姓名:</TD>
												<TD class=main>${user.name}</TD>
											</TR>
											<TR>
												<TD class=main>出生日期:</TD>
												<TD class=main>${user.birth}</TD>
											</TR>
										</TBODY>
									</TABLE>
									</TD>
								</TR>
							</TBODY>
						</TABLE>
						<TABLE border=0 cellSpacing=0 cellPadding=0>
							<TBODY>
								<TR>
									<TD><IMG border=0 alt="" src="${base}/images/pixel_trans.gif"
										width="100%" height=10></TD>
								</TR>
							</TBODY>
						</TABLE>

						<TABLE border=0 cellSpacing=0 cellPadding=0>
							<TBODY>
								<TR>
									<TD><IMG border=0 alt="" src="${base}/images/pixel_trans.gif"
										width="100%" height=10></TD>
								</TR>
							</TBODY>
						</TABLE>
						<TABLE border=0 cellSpacing=0 cellPadding=0>
							<TBODY>
								<TR>
									<TD><IMG border=0 alt="" src="${base}/images/pixel_trans.gif"
										width="100%" height=10></TD>
								</TR>
							</TBODY>
						</TABLE>
						<TABLE border=0 cellSpacing=0 cellPadding=0>
							<TBODY>
								<TR>
									<TD class=main><B>联系方式</B></TD>
								</TR>
							</TBODY>
						</TABLE>
						<TABLE class=pic_2 border=0 cellSpacing=0 cellPadding=0>
							<TBODY>
								<TR>
									<TD class=image>
									<TABLE border=0 cellSpacing=2 cellPadding=2>
										<TBODY>
											<TR>
												<TD class=main>电话:</TD>
												<TD class=main>${user.phone}</TD>
											</TR>
											<TR>
												<TD class=main>E-Mail 地址:</TD>
												<TD class=main>${user.email}</TD>
											</TR>
										</TBODY>
									</TABLE>
									</TD>
								</TR>
							</TBODY>
						</TABLE>
						<TABLE border=0 cellSpacing=0 cellPadding=0>
							<TBODY>
								<TR>
									<TD><IMG border=0 alt="" src="${base}/images/pixel_trans.gif"
										width="100%" height=10></TD>
								</TR>
							</TBODY>
						</TABLE>
						<TABLE border=0 cellSpacing=0 cellPadding=0>
							<TBODY>
								<TR>
									<TD><IMG border=0 alt="" src="${base}/images/pixel_trans.gif"
										width="100%" height=10></TD>
								</TR>
							</TBODY>
						</TABLE>
						<TABLE border=0 cellSpacing=0 cellPadding=2 width="100%">
							<TBODY>
								<TR>
									<TD width=10><IMG border=0 alt=""
										src="${base}/images/pixel_trans.gif" width=10 height=1></TD>
									<TD class=bg_input><INPUT title=" Continue " border=0
										alt=Continue src="${base}/images/update2.jpg" type=image></TD>
									<TD width=10><IMG border=0 alt=""
										src="${base}/images/pixel_trans.gif" width=10 height=1></TD>
							        <#if (Session._IS_ADMIN_?exists && Session._IS_ADMIN_)>
									<TD class=bg_input><a href="${base}/admin/home.action"><IMG src="${base}/images/admin.gif"/></a></TD>
									<TD width=10><IMG border=0 alt=""
										src="${base}/images/pixel_trans.gif" width=10 height=1></TD>
								    </#if>
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
			<TD><IMG border=0 alt="" src="${base}/images/m30.gif" width=438 height=7></TD>
		</TR>
	</TBODY>
</TABLE>
</FORM>
</@flayout.myLayout> 