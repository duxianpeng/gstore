<div>
<TABLE class=box_width_left border=0 cellSpacing=0 cellPadding=0>
	<TBODY>
		<TR>
			<TD width="100%">
			<TABLE border=0 cellSpacing=0 cellPadding=0>
				<!-- categories //-->
				<TBODY>
					<TR>
						<TD>
						<TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
							<TBODY>
								<TR>
									<TD class=box_header_txt>品牌</TD>
								</TR>
							</TBODY>
						</TABLE>
						<TABLE
							style="BORDER-BOTTOM: #ffffff 3px solid; PADDING-BOTTOM: 6px; BACKGROUND: url(${base}/images/m17.gif) no-repeat left bottom"
							border=0 cellSpacing=0 cellPadding=0 width="100%">
							<TBODY>
								<TR>
									<TD>
									<TABLE
										style="BORDER-BOTTOM: #b6b6b6 0px solid; BORDER-LEFT: #b6b6b6 1px solid; BORDER-TOP: #b6b6b6 0px solid; BORDER-RIGHT: #b6b6b6 1px solid"
										class=box_body border=0 cellSpacing=0 cellPadding=0
										width="100%">
										<TBODY>
											<TR>
												<TD
													style="BORDER-BOTTOM: #ffffff 4px solid; BORDER-LEFT: #ffffff 7px solid; BORDER-TOP: #ffffff 5px solid; BORDER-RIGHT: #ffffff 7px solid">
												<UL id="menu">
												<#if Session.menu?exists>  
													<#list Session.menu as menuItem>
													<LI class=bg_list><A href="${base}/front/searchGlasses.action?categoryId=${menuItem.id}">${menuItem.categoryName}</A></LI>
													</#list>
												</#if>
												</UL>
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
					<!-- categories_eof //-->
				</TBODY>
			</TABLE>
			<TABLE border=0 cellSpacing=0 cellPadding=0>
				<TBODY>
					<TR>
						<TD height=4></TD>
					</TR>
					<TR>
						<TD><IMG border=0 alt=""
							src="${base}/images/m18.gif" width=204 height=86></TD>
					</TR>
					<TR>
						<TD height=3></TD>
					</TR>
					<TR>
						<TD><IMG border=0 alt=""
							src="${base}/images/m19.gif" width=204 height=82></TD>
					</TR>
					<TR>
						<TD height=8></TD>
					</TR>
				</TBODY>
			</TABLE>
			</TD>
			<TD><IMG border=0 alt="" src="${base}/images/part_l.gif" width=4
				height=188></TD>
		</TR>
	</TBODY>
</TABLE>
</div>