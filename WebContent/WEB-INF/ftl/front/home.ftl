<@flayout.myLayout "最新产品">  
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
						<!-- new_products //-->
						<TABLE class="box_width_cont product" border=0 cellSpacing=0
							cellPadding=0>
							<TBODY>
								<TR>
									<TD>
									<TABLE class=tableBox_output border=0 cellSpacing=0
										cellPadding=0>
										<TBODY>
											<#list items as item>
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
																		<TD><A href="${base}/front/detail.action?id=${item.item1.id}"><IMG
																			title="${item.item1.name}" border=0
																			alt="${item.item1.name}"
																			src="${base}/images/glasses/${item.item1.picture}" width=80
																			height=85> </A>
																		</TD>
																		<TD><IMG border=0 alt=""
																			src="${base}/images/spacer.gif" width=18 height=1></TD>
																		<TD style="WIDTH: 100%">
																		<TABLE border=0 cellSpacing=0 cellPadding=0>
																			<TBODY>
																				<TR>
																					<TD style="HEIGHT: 28px" class=vam><SPAN><A
																						href="${base}/front/detail.action?id=${item.item1.id}">${item.item1.name}</A></SPAN></TD>
																				</TR>
																				<TR>
																					<TD style="HEIGHT: 34px" class=vam>${item.item1.intro}</TD>
																				</TR>
																				<TR>
																					<TD style="HEIGHT: 33px" class=vam><SPAN
																						class=productSpecialPrice>RMB ${item.item1.price}</SPAN></TD>
																				</TR>
																				<TR>
																					<TD style="HEIGHT: 21px" class=vam><A
																						href="${base}/front/detail.action?id=${item.item1.id}"><IMG
																						border=0 alt=""
																						src="${base}/images/button_details2.gif" width=53
																						height=23></A><IMG border=0 alt=""
																						src="${base}/images/spacer.gif" width=1 height=1><A
																						href="${base}/front/addComment.action?glassesId=${item.item1.id}"><IMG
																						border=0 alt=""
																						src="${base}/images/collect.jpg"
																						width=55 height=23></A></TD>
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
												<TD class=bg_gg><IMG border=0 alt=""
													src="${base}/images/spacer.gif" width=1 height=19>
												</TD>
												<TD align=middle>
												<TABLE class=tep_draw_prod_top border=0 cellSpacing=0
													cellPadding=0>
													<TBODY>
														<TR>
															<TD>
															<TABLE border=0 cellSpacing=0 cellPadding=0>
																<TBODY>
																	<TR>
																		<TD><A href="${base}/front/detail.action?id=${item.item2.id}"><IMG
																			title="${item.item2.name}" border=0
																			alt="${item.item2.name}"
																			src="${base}/images/glasses/${item.item2.picture}" width=80
																			height=85> </A>
																		</TD>
																		<TD><IMG border=0 alt=""
																			src="${base}/images/spacer.gif" width=18 height=1></TD>
																		<TD style="WIDTH: 100%">
																		<TABLE border=0 cellSpacing=0 cellPadding=0>
																			<TBODY>
																				<TR>
																					<TD style="HEIGHT: 28px" class=vam><SPAN><A
																						href="${base}/front/detail.action?id=${item.item2.id}">${item.item2.name}</A></SPAN></TD>
																				</TR>
																				<TR>
																					<TD style="HEIGHT: 34px" class=vam>${item.item2.intro}</TD>
																				</TR>
																				<TR>
																					<TD style="HEIGHT: 33px" class=vam><SPAN
																						class=productSpecialPrice>RMB ${item.item2.price}</SPAN></TD>
																				</TR>
																				<TR>
																					<TD style="HEIGHT: 21px" class=vam><A
																						href="${base}/front/detail.action?id=${item.item2.id}"><IMG
																						border=0 alt=""
																						src="${base}/images/button_details2.gif" width=53
																						height=23></A><IMG border=0 alt=""
																						src="${base}/images/spacer.gif" width=1 height=1><A
																						href="${base}/front/addComment.action?glassesId=${item.item2.id}"><IMG
																						border=0 alt=""
																						src="${base}/images/collect.jpg"
																						width=55 height=23></A></TD>
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
						<!-- new_products_eof //--></TD>
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
