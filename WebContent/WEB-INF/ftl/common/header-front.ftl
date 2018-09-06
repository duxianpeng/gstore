<div>
<TABLE cellSpacing=0 cellPadding=0>
	<TBODY>
		<TR>
			<TD><A href="index.htm"> <IMG border=0 alt=""
				src="${base}/images/m01.gif" width=239 height=105> </A></TD>
			<TD vAlign=top>
			<TABLE style="WIDTH: 1px" border=0 cellSpacing=0 cellPadding=0>
				<TBODY>
					<TR>
						<TD><IMG src="${base}/images/m02.gif" width=403 height=8></TD>
					</TR>
					<TR>
						<TD class=ch1>
						<TABLE cellSpacing=0 cellPadding=0>
							<TBODY>
								<TR>
									<TD height=4></TD>
								</TR>
								<TR>
									<TD class=ch2 width=118>
									<TABLE cellSpacing=0 cellPadding=0>
										<TBODY>
											<TR>
												<TD><IMG border=0 alt="" align=absMiddle
													src="${base}/images/m10.gif" width=9 height=7> &nbsp;<A
													class=ch3 href="${base}/front/searchHotGlasses.action">按人气排序</A></TD>
											</TR>
											<TR>
												<TD height=5></TD>
											</TR>
											<TR>
												<TD height=5></TD>
											</TR>
											<TR>
												<TD><IMG border=0 alt="" align=absMiddle
													src="${base}/images/m10.gif" width=9 height=7> &nbsp;<A
													class=ch3 href="${base}/front/goSearch.action">高级搜索</A></TD>
											</TR>
											<TR>
												<TD height=5></TD>
											</TR>
											<TR>
												<TD height=5></TD>
											</TR>
											<TR>
												<TD><IMG border=0 alt="" align=absMiddle
													src="${base}/images/m10.gif" width=9 height=7> &nbsp;<A
													class=ch3 href="${base}/front/favorates.action">收藏记录</A></TD>
											</TR>
										</TBODY>
									</TABLE>
									</TD>
									<TD background=${base}/images/m09.gif width=1></TD>
									<TD class=ch2 vAlign=top width=116>
									<TABLE cellSpacing=0 cellPadding=0>
										<TBODY>
											<TR>
												<TD><IMG border=0 alt="" align=absMiddle
													src="${base}/images/m10.gif" width=9 height=7> &nbsp;<A
													class=ch3 href="${base}/front/goCreateAccount.action">注册用户</A></TD>
											</TR>
											<TR>
												<TD height=5></TD>
											</TR>
											<TR>
												<TD height=5></TD>
											</TR>
											<TR>
												<TD><IMG border=0 alt="" align=absMiddle
													src="${base}/images/m10.gif" width=9 height=7> &nbsp;<A
													class=ch3 href="${base}/front/goLogin.action">登录</A></TD>
											</TR>
											<TR>
												<TD height=5></TD>
											</TR>
											<TR>
												<TD height=5></TD>
											</TR>
											<TR>
												<TD><IMG border=0 alt="" align=absMiddle
													src="${base}/images/m10.gif" width=9 height=7> &nbsp;<A
													class=ch3 href="${base}/front/logout.action">注销</A></TD>
											</TR>
										</TBODY>
									</TABLE>
									</TD>
									<TD background=${base}/images/m09.gif width=1></TD>
									<TD class=ch2>
									<TABLE cellSpacing=0 cellPadding=0>
										<TBODY>
											<TR>
												<TD><A
													class=ch5 href="cart.action"><IMG border=0
													alt="" src="${base}/images/m11.gif" width=40 height=32></A></TD>
												<TD class=ch4><BR style="LINE-HEIGHT: 1px">
												<BR style="LINE-HEIGHT: 5px">
												&nbsp;<B>收藏夹</B></TD>
											</TR>
											<TR>
												<TD class=ch4 colSpan=2><IMG border=0 alt=""
													src="${base}/images/spacer.gif" width=45 height=1><A
													class=ch5 href="cart.action"> 
													<#if (Session.favorateCount?exists)>
													    ${Session.favorateCount} items
													<#else>
													    0 items
													</#if>
                                                    </A></TD>
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
						<TD><IMG border=0 alt="" src="${base}/images/m03.gif" width=403
							height=8></TD>
					</TR>
				</TBODY>
			</TABLE>
			</TD>
		</TR>
	</TBODY>
</TABLE>
</div>