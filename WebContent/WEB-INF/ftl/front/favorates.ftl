﻿<@flayout.myLayout "收藏记录"> 
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
						<TABLE border=0 cellSpacing=0 cellPadding=2 width="100%">
							<TBODY>
								<TR>
									<TD>
									<#if favorates?size != 0>
									<TABLE class=result border=0 cellSpacing=0 cellPadding=0
										width="100%">
										<TBODY>
											<TR>
								    <TD>显示第 <B>${pageVO.startRecord}</B> 到第 <B>${pageVO.endRecord}条记录</B> ( 总共<B>${pageVO.totalCount}</B>条)</TD>
									<TD class=result_right>页数: &nbsp;<B>${pageVO.pageCount}</B>&nbsp;</TD>
											</TR>
										</TBODY>
									</TABLE>
									<TABLE border=0 cellSpacing=0 cellPadding=0>
										<TBODY>
											<TR>
												<TD class=bg_gg><IMG border=0 alt=""
													src="${base}/images/spacer.gif" width=1 height=10></TD>
											</TR>
										</TBODY>
									</TABLE>
									<BR style="LINE-HEIGHT: 1px">
									<BR style="LINE-HEIGHT: 10px">
									<#list favorates as favorate>
									<TABLE class=product border=0 cellSpacing=0 cellPadding=2
										width="100%">
										<TBODY>
											<TR>
												<TD style="LINE-HEIGHT: 24px"><A
													href="${base}/front/detail.action?glassesId=${favorate.glassesId}">${favorate.glassesName}</A>&nbsp;&nbsp; <EM
													style="TEXT-TRANSFORM: none; TEXT-DECORATION: none">收藏人：
												${favorate.userName}</EM></TD>
												<TD style="LINE-HEIGHT: 24px" class=result align=right>收藏日期： ${favorate.addDate}</TD>
											</TR>
										</TBODY>
									</TABLE>
									<TABLE class=pic_2 border=0 cellSpacing=0 cellPadding=0>
										<TBODY>
											<TR>
												<TD class=image>
												<TABLE border=0 cellSpacing=0 cellPadding=2 width="100%">
													<TBODY>
														<TR>
															<TD class=padd2 vAlign=top width=90 align=middle>
															<TABLE class="table_pic_width" border=0 cellSpacing=0
																cellPadding=0>
																<TBODY>
																	<TR>
																		<TD class=image><A
																			href="${base}/front/detail.action?id=${favorate.glassesId}"><IMG
																			title="${favorate.glassesName}" border=0
																			alt="${favorate.glassesName}"
																			src="${base}/images/glasses/${favorate.picture}" width=80 height=85></A>
																		</TD>
																	</TR>
																</TBODY>
															</TABLE>
															</TD>
															<TD style="PADDING-TOP: 9px" class=main vAlign=top>${favorate.comments}<BR>
															<BR>
															<I>喜爱程度: <IMG title=" 1 of 5 Stars! " border=0
																alt="1 of 5 Stars!" src="${base}/images/stars_${favorate.starValue}.gif"
																width=59 height=11> [${favorate.starValue} of 5 Stars!]</I></TD>
															<TD width=10 align=right><IMG border=0 alt=""
																src="${base}/images/pixel_trans.gif" width=10 height=1></TD>
														</TR>
													</TBODY>
												</TABLE>
												</TD>
											</TR>
										</TBODY>
									</TABLE>
									<BR style="LINE-HEIGHT: 1px">
									<BR style="LINE-HEIGHT: 10px">
									
									<TABLE border=0 cellSpacing=0 cellPadding=0>
										<TBODY>
											<TR>
												<TD class=bg_gg><IMG border=0 alt=""
													src="${base}/images/spacer.gif" width=1 height=20></TD>
											</TR>
										</TBODY>
									</TABLE>
									</#list>
									<TABLE class=result border=0 cellSpacing=0 cellPadding=0
										width="100%">
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
									</#if>
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
			<TD><IMG border=0 alt="" src="${base}/images/m30.gif" width=438
				height=7></TD>
		</TR>
	</TBODY>
</TABLE>
</@flayout.myLayout> 