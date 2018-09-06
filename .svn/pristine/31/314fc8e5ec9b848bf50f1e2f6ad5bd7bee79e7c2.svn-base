<#macro myLayout title="欢迎来到阳光酷镜ONLINE">  
<#assign s=JspTaglibs["/WEB-INF/struts-tags.tld"] />
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<HTML>
<HEAD>
<TITLE>阳光酷镜ONLINE</TITLE>
<META content="text/html; charset=utf-8" http-equiv=Content-Type>
<META http-equiv="Pragma" content="no-cache">
<META http-equiv="Cache-Control" content="no-cache">
<META http-equiv="Expires" content="0">   

<LINK rel=stylesheet type=text/css href="${base}/css/stylesheet.css">
<script type="text/javascript" src="${base}/javascript/custom.js"></script>
</HEAD>
<BODY bottomMargin=0 leftMargin=0 rightMargin=0 topMargin=0
	marginheight="0" marginwidth="0">

<TABLE style="WIDTH: 647px" cellSpacing=0 cellPadding=0 width=647
	align=center>
	<TBODY>
		<TR>
			<TD height=21></TD>
		</TR>
		<TR>
			<TD style="BORDER-RIGHT: #ffffff 8px solid" vAlign=top>
			<#include "header-front.ftl"/>
			</TD>
		</TR>
		<TR>
			<TD height=10></TD>
		</TR>
		<TR>
			<TD
				style="BACKGROUND: url(${base}/images/m12.gif) no-repeat left top; BORDER-RIGHT: #ffffff 0px solid"
				height=48 vAlign=top width=647>
			<TABLE cellSpacing=0 cellPadding=0>
				<TBODY>
					<TR>
						<TD height=7></TD>
					</TR>
					<TR>
						<TD width=13></TD>
						<TD vAlign=top>
						<FORM method=get name=search action=products.htm>
						<TABLE style="WIDTH: 172px" cellSpacing=0 cellPadding=0>
							<TBODY>
								<TR>
									<TD height=6 colSpan=4></TD>
								</TR>
								<TR>
									<TD class=ch5 colSpan=2 align=middle>&nbsp;欢迎您!</TD>
									<TD class=ch5 colSpan=2>
									
									<#if Session._LOGIN_USER_?exists>
									<#if Session._LOGIN_USER_.name?exists>
									${Session._LOGIN_USER_.name}
									</#if>
									</#if>
									</TD>
								</TR>
							</TBODY>
						</TABLE>
						</FORM>
						</TD>
						<TD width=5></TD>
						<TD><A href="${base}/front/home.action"><IMG border=0 alt=""
							src="${base}/images/b01.gif" width=95 height=30> </A></TD>
						<TD><A href="${base}/front/searchNewGlasses.action"><IMG border=0 alt=""
							src="${base}/images/b02.gif" width=94 height=30> </A></TD>
						<TD><A href="${base}/front/viewAccount.action"><IMG border=0 alt=""
							src="${base}/images/b03.gif" width=94 height=30> </A></TD>
						<TD><A href="${base}/front/cart.action"><IMG border=0 alt=""
							src="${base}/images/b04.gif" width=94 height=30> </A></TD>
						<TD><A href="${base}/front/about.action"><IMG border=0 alt=""
							src="${base}/images/b05.gif" width=94 height=30> </A></TD>
						<TD width="100%"><IMG border=0 alt="" src="${base}/images/spacer.gif"
							width=1 height=1></TD>
					</TR>
				</TBODY>
			</TABLE>
			<TABLE border=0 cellSpacing=0 cellPadding=0>
				<TBODY>
					<TR>
						<TD height=14><IMG border=0 alt="" src="${base}/images/spacer.gif"
							width=1 height=1></TD>
					</TR>
				</TBODY>
			</TABLE>
			<!-- end --> <!-- start --></TD>
		</TR>
		<TR>
			<TD><!-- end --> <!-- header_eof //--> <!-- body //-->
			<TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
				<TBODY>
					<TR>
						<TD class=col_left vAlign=top><!-- left_navigation //-->
						<#include "left-front.ftl"/>
						</TD>
						<!-- body_text //-->
						<TD class=col_center width="100%">
						<TABLE cellSpacing=0 cellPadding=0>
							<TBODY>
								<TR>
									<TD><A href="${base}/front/searchNewGlasses.action"><IMG border=0 alt=""
										src="${base}/images/m20.jpg" width=238 height=191><IMG border=0
										alt="" src="${base}/images/m21.jpg" width=204 height=191></A></TD>
								</TR>
								<TR>
									<TD height=2></TD>
								</TR>
							</TBODY>
						</TABLE>
						<TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
							<TBODY>
								<TR>
									<TD class=cont_header_txt>${title}</TD>
								</TR>
							</TBODY>
						</TABLE>
						<#nested/>
						</TD>
						<!-- body_text_eof //-->
						<TD class=col_right><!-- right_navigation //-->
						<TABLE class=box_width_right border=0 cellSpacing=0 cellPadding=0>
							<TBODY>
								<TR>
									<TD></TD>
									<TD width="100%">
									<TABLE border=0 cellSpacing=0 cellPadding=0>
										<TBODY>
											<TR>
												<TD></TD>
											</TR>
										</TBODY>
									</TABLE>
									</TD>
								</TR>
							</TBODY>
						</TABLE>
						<!-- right_navigation_eof //--></TD>
					</TR>
				</TBODY>
			</TABLE>
			<!-- body_eof //--> <!-- footer //--></TD>
		</TR>
		<TR>
			<TD height=6></TD>
		</TR>
		<TR>
			<TD><IMG border=0 alt="" src="${base}/images/m32.gif" width=646 height=7></TD>
		</TR>
		<TR>
			<TD height=6></TD>
		</TR>
		<TR>
			<TD width=646>
			<#include "footer.ftl"/>
			</TD>
		</TR>
		<TR>
			<TD height=42></TD>
		</TR>
	</TBODY>
</TABLE>
<TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
	<TBODY>
		<TR>
			<TD align=middle></TD>
		</TR>
	</TBODY>
</TABLE>
<!-- footer_eof //-->
</BODY>
</HTML>

 </#macro> 
