﻿<@flayout.myLayout "我的收藏"> 
<FORM method=post name=cart_quantity
	action=${base}/front/updateCart.action>
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
							style="BORDER-BOTTOM: #ffffff 0px solid; BORDER-LEFT: #ffffff 0px solid; BORDER-TOP: #ffffff 0px solid; BORDER-RIGHT: #ffffff 0px solid">
						<#if favorates?size != 0>
						<TABLE style="BACKGROUND: #f1f1f1" class="box_width_cont product"
							border=0 cellSpacing=0 cellPadding=0>
							<TBODY>
								<TR>
									<TD style="WIDTH: 15%" class=shop_cart align=middle>删除</TD>
									<TD style="BACKGROUND: #ffffff"><IMG border=0 alt=""
										src="${base}/images/spacer.gif" width=3 height=1></TD>
									<TD style="WIDTH: 85%" class=shop_cart align=middle colspan=4>眼镜
									</TD>
								</TR>
								<TR>
									<TD style="BACKGROUND: #ffffff; HEIGHT: 3px" colSpan=5><IMG
										border=0 alt="" src="${base}/images/spacer.gif" width=1
										height=1></TD>
								</TR>
								<#list favorates as item>
								<TR>
									<TD vAlign=top align=middle><BR style="LINE-HEIGHT: 1px">
									<BR style="LINE-HEIGHT: 21px">
									<INPUT style="BACKGROUND: none transparent scroll repeat 0% 0%"
										value=${item.glassesId} type=checkbox name="glasses"></TD>
									<TD style="BACKGROUND: #ffffff"><IMG border=0 alt=""
										src="${base}/images/spacer.gif" width=3 height=1></TD>
									<TD>
									<TABLE class="table_pic_width" border=0
										cellSpacing=0 cellPadding=0>
										<TBODY>
											<TR>
												<TD class=image><A
													href="${base}/front/detail.action?id=${item.glassesId}"><IMG
													title="${item.glassesName}" border=0
													alt="${item.glassesName}"
													src="${base}/images/glasses/${item.picture}" width=80
													height=85></A></TD>
											</TR>
										</TBODY>
									</TABLE>
									</TD>
									<TD style="BACKGROUND: #ffffff"><IMG border=0 alt=""
										src="${base}/images/spacer.gif" width=3 height=1></TD>
									<TD style="WIDTH: 100%">
									<TABLE border=0 cellSpacing=0 cellPadding=0>
										<TBODY>
											<TR>
												<TD style="HEIGHT: 28px" class=vam><SPAN><A
													href="${base}/front/detail.action?id=${item.glassesId}">${item.glassesName}</A></SPAN></TD>
											</TR>
											<TR>
											<TD style="PADDING-TOP: 9px" class=main vAlign=top>${item.comments}<BR>
															<BR>
															<I>喜爱程度: <IMG title=" 1 of 5 Stars! " border=0
																alt="1 of 5 Stars!" src="${base}/images/stars_${item.starValue}.gif"
																width=59 height=11> [${item.starValue} of 5 Stars!]</I></TD>
											</TR>
										</TBODY>
									</TABLE>
									</TD>
								</TR>
								<#if item_has_next>
								<TR>
									<TD style="BACKGROUND: #ffffff; HEIGHT: 3px" colSpan=5><IMG
										border=0 alt="" src="${base}/images/spacer.gif" width=1
										height=1></TD>
								</TR>
								</#if>
								</#list>
							</TBODY>
						</TABLE>
						<TABLE border=0 cellSpacing=0 cellPadding=0>
							<TBODY>
								<TR>
									<TD style="HEIGHT: 3px" class=bg_gg><IMG border=0 alt=""
										src="${base}/images/spacer.gif" width=1 height=1></TD>
								</TR>
							</TBODY>
						</TABLE>
						<TABLE style="BACKGROUND: #e2f3c7" class=shop_cart border=0
							cellSpacing=0 cellPadding=0>
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
						<TABLE style="BACKGROUND: #e2f3c7" border=0 cellSpacing=0
							cellPadding=0>
							<TBODY>
								<TR>
									<TD height=9></TD>
								</TR>
								<TR>
									<TD
										style="PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 20px; PADDING-TOP: 0px"
										align=right><INPUT title=" 删除该收藏 " border=0
										alt="Update Cart" src="${base}/images/remove2.gif"
										type=image></TD>
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
			<TD><IMG border=0 alt="" src="${base}/images/m303.gif"
				width=438 height=6></TD>
		</TR>
	</TBODY>
</TABLE>
</FORM>
</@flayout.myLayout> 