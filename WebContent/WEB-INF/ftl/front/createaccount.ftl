﻿<@flayout.myLayout "注册用户"> 
<FORM onsubmit="return check_form(create_account);" method=post
	name=create_account
	action=${base}/front/createAccount.action>
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
									<TD class="smallText padd_1"><BR>
									<FONT color=#ff0000><SMALL><B>提示:</B></FONT></SMALL>如果你已注册，请点击此处登录 <A
										href="${base}/front/goLogin.action"><U>登录
									</U></A>.</TD>
								</TR>
								<TR>
									<TD class="smallText padd_1">
									    <@s.fielderror/>
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
						<TABLE border=0 cellSpacing=0 cellPadding=2 width="100%">
							<TBODY>
								<TR>
									<TD class=main><B>你的个人信息</B></TD>
									<TD class=inputRequirement align=right>* 必填信息</TD>
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
												
												<INPUT
													style="BACKGROUND: none transparent scroll repeat 0% 0%"
													value=1 type=radio name=gender checked}>&nbsp;&nbsp;男&nbsp;&nbsp;<INPUT
													style="BACKGROUND: none transparent scroll repeat 0% 0%"
													value=0 type=radio name=gender >&nbsp;&nbsp;女&nbsp;<SPAN
													class=inputRequirement>*</SPAN></TD>
											</TR>
											<TR>
												<TD class=main>姓名:</TD>
												<TD class=main><INPUT name=name>&nbsp;<SPAN
													class=inputRequirement>*</SPAN></TD>
											</TR>
											<TR>
												<TD class=main>出生日期:</TD>
												<TD class=main><INPUT name=birth>&nbsp;<SPAN
													class=inputRequirement>* (eg. 1970-05-21)</SPAN></TD>
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
									<TD class=main><B>你的联系方式</B></TD>
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
												<TD class=main><INPUT name=phone>&nbsp;<SPAN
													class=inputRequirement>*</SPAN></TD>
											</TR>
											<TR>
												<TD class=main>E-Mail 地址:</TD>
												<TD class=main><INPUT name=email>&nbsp;<SPAN
													class=inputRequirement>*</SPAN></TD>
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
									<TD class=main><B>你的登录口令</B></TD>
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
												<TD class=main>口令:</TD>
												<TD class=main><INPUT maxLength=40 type=password
													name=pwd>&nbsp;<SPAN class=inputRequirement>*</SPAN></TD>
											</TR>
											<TR>
												<TD class=main>确认口令:</TD>
												<TD class=main><INPUT maxLength=40 type=password
													name=confirmPwd>&nbsp;<SPAN
													class=inputRequirement>*</SPAN></TD>
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
						<TABLE border=0 cellSpacing=0 cellPadding=2 width="100%">
							<TBODY>
								<TR>
									<TD width=10><IMG border=0 alt=""
										src="${base}/images/pixel_trans.gif" width=10 height=1></TD>
									<TD class=bg_input><INPUT title=" Create " border=0
										alt=Create src="${base}/images/button_continue.gif" type=image></TD>
									<TD width=10><IMG border=0 alt=""
										src="${base}/images/pixel_trans.gif" width=10 height=1></TD>
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