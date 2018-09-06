﻿<@alayout.myLayout "酷镜列表"> 
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
							style="BORDER-BOTTOM: #ffffff 12px solid; BORDER-LEFT: #ffffff 7px solid; BORDER-TOP: #ffffff 12px solid; BORDER-RIGHT: #ffffff 7px solid">
					    <#if glasses?size != 0>
						<TABLE class="result box_width_cont" border=0 cellSpacing=0
							cellPadding=0 width="100%">
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
						<TABLE class="box_width_cont product" border=0 cellSpacing=0
							cellPadding=0>
							<TBODY>
								<TR>
									<TD>
									<TABLE class=tableBox_output border=0 cellSpacing=0
										cellPadding=0>
										<TBODY>
										<#list glasses as item>
											<TR>
												<TD align=middle>
												<TABLE class=tep_draw_prod_top border=0 cellSpacing=0
													cellPadding=0>
													<TBODY>
														<TR>
															<TD>
															<TABLE border=0 cellSpacing=0 cellPadding=0>
																<TBODY>
																	<TR>
																		<TD>
																		<TABLE class="table_pic_width" border=0
																			cellSpacing=0 cellPadding=0>
																			<TBODY>
																				<TR>
																					<TD class=image><A
																						href="${base}/admin/detail.action?id=${item.id}"><IMG
																						title="${item.name}" border=0
																						alt="${item.name}"
																						src="${base}/images/glasses/${item.picture}" width=80
																						height=85></A></TD>
																				</TR>
																			</TBODY>
																		</TABLE>
																		</TD>
																		<TD><IMG border=0 alt=""
																			src="${base}/images/spacer.gif" width=18 height=1></TD>
																		<TD style="WIDTH: 100%">
																		<TABLE border=0 cellSpacing=0 cellPadding=0>
																			<TBODY>
																				<TR>
																					<TD style="HEIGHT: 28px" class=vam><SPAN><A
																						href="${base}/admin/detail.action?id=${item.id}">${item.name}</A></SPAN></TD>
																				</TR>
																				<TR>
																					<TD style="HEIGHT: 34px" class=vam>${item.intro}</TD>
																				</TR>
																				<TR>
																					<TD style="HEIGHT: 33px" class=vam><SPAN
																						class=productSpecialPrice>RMB ${item.price}</SPAN></TD>
																				</TR>
																				<TR>
																					<TD style="HEIGHT: 21px" class=vam><A
																						href="${base}/admin/detail.action?id=${item.id}"><IMG
																						border=0 alt=""
																						src="${base}/images/button_details2.gif"
																						width=53 height=23></A><A

																						href="${base}/admin/goUpdateGlasses.action?id=${item.id}"><IMG
																						border=0 alt=""
																						src="${base}/images/update4.jpg"
																						width=55 height=23></A><A

																						href="${base}/admin/deleteGlasses.action?id=${item.id}" onclick="return confirm('确定删除该酷镜？')"><IMG

																						border=0 alt=""
																						src="${base}/images/remove2.jpg"
																						width=55 height=23 ></A></TD>
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
											<#if item_has_next>
											<TR>
												<TD class=bg_gg><IMG border=0 alt=""
													src="${base}/images/spacer.gif" width=1 height=19></TD>
											</TR>
											</#if>
											</#list>
										</TBODY>
									</TABLE>
									</TD>
								</TR>
							</TBODY>
						</TABLE>
						<TABLE border=0 cellSpacing=0 cellPadding=0>
							<TBODY>
								<TR>
									<TD class=bg_gg><IMG border=0 alt=""
										src="${base}/images/spacer.gif" width=1 height=20></TD>
								</TR>
							</TBODY>
						</TABLE>
						<TABLE class="result box_width_cont" border=0 cellSpacing=0
							cellPadding=0>
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
						<TABLE border=0 cellSpacing=0
							cellPadding=0>
							<TBODY>
								<TR>
									<TD height=9></TD>
								</TR>
								<TR>
									<TD
										style="PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 20px; PADDING-TOP: 0px"
										align=right><a href="${base}/admin/goCreateGlasses.action"><IMG src="${base}/images/create.jpg"/></a></TD>
								</TR>
								<TR>
									<TD height=16></TD>
								</TR>
							</TBODY>
						</TABLE>
						<#else>
						没有找到相应的记录。
						</#if>
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
</div>

</@alayout.myLayout> 