﻿<@flayout.myLayout "酷镜详细信息"> 
<div>
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
									<TD><IMG border=0 alt="" src="${base}/images/spacer.gif"
										width=15 height=1></TD>
									<TD width="100%">
									<TABLE class=product border=0 cellSpacing=0 cellPadding=0>
										<TBODY>
											<TR>
												<TD>
												<TABLE border=0 cellSpacing=0 cellPadding=0>
													<TBODY>
														<TR>
															<TD height="100%">
															<TABLE class=prod_info border=0 cellSpacing=0
																cellPadding=0 align=left>
																<TBODY>
																	<TR>
																		<TD align=middle>
																		<TABLE class="table_pic_width" border=0
																			cellSpacing=0 cellPadding=0>
																			<TBODY>
																				<TR>
																					<TD class=image>
																					<A
																						href="${base}/images/glasses/${glasses.picture}" target=_blank><IMG
																						style="MARGIN: 15px 0px 0px"
																						title="${glasses.name}" border=0 alt="${glasses.name}"
																						src="${base}/images/glasses/${glasses.picture}" width=80 height=85>
																					</A></TD>
																				</TR>
																			</TBODY>
																		</TABLE>
																		</TD>
																	</TR>
																	<TR>
																		<TD align=middle>
																		<DIV><A href="${base}/images/glasses/${glasses.picture}"
																			target=_blank><BR style="LINE-HEIGHT: 7px">
																		放大图片</A></DIV>
																		</TD>
																	</TR>
																</TBODY>
															</TABLE>
															<TABLE class=title_info border=0 cellSpacing=0
																cellPadding=0>
																<TBODY>
																	<TR>
																		<TD><EM>${glasses.name}</EM></TD>
																	</TR>
																</TBODY>
															</TABLE>
															<DIV class=padd3>${glasses.desc}<BR>
															<BR style="LINE-HEIGHT: 11px">
															<SPAN class=productSpecialPrice>RMB ${glasses.price}</SPAN>
															</DIV>
															</TD>
														</TR>
													</TBODY>
												</TABLE>
												</TD>
											</TR>
										</TBODY>
									</TABLE>
									</TD>
									<TD><IMG border=0 alt="" src="${base}/images/spacer.gif"
										width=25 height=1></TD>
								</TR>
							</TBODY>
						</TABLE>
						<TABLE border=0 cellSpacing=0 cellPadding=0>
							<TBODY>
								<TR>
									<TD><IMG border=0 alt="" src="${base}/images/spacer.gif"
										width=15 height=1></TD>
									<TD width="100%">
									<TABLE class="product box_width_cont" cellSpacing=0
										cellPadding=0>
										<TBODY>
											<TR>
												<TD class=line_h><#if (glasses.antiUltraviolet == 1 || glasses.antiUVB==1)>
															<BR>
															<BR style="LINE-HEIGHT: 15px">
																太阳镜功能：
																<#if (glasses.antiUltraviolet == 1)>
																	防UVA &nbsp;
																</#if>
																<#if (glasses.antiUVB==1)>
																	防UVB &nbsp;
																</#if>
															</#if>
															<#if glasses.material?exists>
															<BR>
														    <BR style="LINE-HEIGHT: 15px">
														        镜片材质：
														        ${glasses.material}
															</#if>
															<#if glasses.face?exists>
															<BR>
														    <BR style="LINE-HEIGHT: 15px">
														        适合脸型：
														        ${glasses.face}
															</#if>
															<#if glasses.human==1>
															<BR>
														    <BR style="LINE-HEIGHT: 15px">
														        适合人群：
														        男人
															</#if>
															<#if glasses.human==0>
															<BR>
														    <BR style="LINE-HEIGHT: 15px">
														        适合人群：
														        女人
															</#if></TD>
											</TR>
											<TR>
												<TD height=17></TD>
											</TR>
										</TBODY>
									</TABLE>
									<TABLE class="product box_width_cont" cellSpacing=0
										cellPadding=0>
										<TBODY>
											<TR>
												<TD class=line_h>收藏次数: ${glasses.hot}</TD>
											</TR>
											<TR>
												<TD height=17></TD>
											</TR>
										</TBODY>
									</TABLE>
									<TABLE class="product box_width_cont" cellSpacing=0
										cellPadding=0>
										<TBODY>
											<TR>
												<TD class=line_h>到货日期： ${glasses.addDate}.</TD>
											</TR>
											<TR>
												<TD height=17></TD>
											</TR>
										</TBODY>
									</TABLE>
									<!-- 
		<table border="0" width="100%" cellspacing="1" cellpadding="2" class="infoBox">
          <tr class="infoBoxContents"><td>
			 -->
									<TABLE class="product box_width_cont" border=0 cellSpacing=0
										cellPadding=0 width="100%">
										<TBODY>
											<TR>
												<TD class="main bg_input"><A
													href="${base}/front/addComment.action?glassesId=${glasses.id}"><IMG
													title=" Reviews " border=0 alt=Reviews
													src="${base}/images/button_reviews2.gif" width=76 height=23></A><A href="${base}/front/download.action?picture=${glasses.picture}"><IMG
													src="${base}/images/download.jpg"/></A></TD>
											</TR>
										</TBODY>
									</TABLE>
									<BR style="LINE-HEIGHT: 1px">
									<BR style="LINE-HEIGHT: 10px">
									<!-- 
			</td></tr>
        </table>
			 --></TD>
									<TD><IMG border=0 alt="" src="${base}/images/spacer.gif"
										width=25 height=1></TD>
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
			<TD><IMG border=0 alt="" src="${base}/images/m30.gif" width=438
				height=7></TD>
		</TR>
	</TBODY>
</TABLE>
</div>
</@flayout.myLayout> 