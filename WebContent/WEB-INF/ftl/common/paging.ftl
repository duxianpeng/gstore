
<#macro paging pageIndex pageCount>
    <DIV class="PageNum">
    <#assign url=request.requestURL+"?pageIndex=">
    <#if pageIndex==0>
        <#assign pageIndex=1>
    </#if>
    <#if (pageIndex>pageCount)>
        <#assign pageIndex=pageCount>
    </#if>
    <#if (pageIndex > 1)>
        <a href="${url+1}">&lt;&lt;</a>
    </#if>
    <#if (pageIndex > 5)>
        <#assign prevPages=pageIndex-9>  
        <#if prevPages lt 1>  
            <#assign prevPages=1>  
        </#if>  
        <#assign start=pageIndex-4>  
        <a href="${url+prevPages}">...</a>  
    <#else>  
        <#assign start=1>  
    </#if> 
   <#assign end=pageIndex+4>  
    <#if (end>pageCount)>  
        <#assign end=pageCount>  
    </#if>  
    <#list start..end as index>  
        <#if pageIndex==index>  
            <b>${index}</b>  
        <#else>  
            <a href="${url+index}">${index}</a>  
        </#if>  
    </#list>  
   <#if (end lt pageCount)>  
        <#assign end=end+5>  
        <#if (end>pageCount)>  
            <#assign end=pageCount>  
        </#if>  
        <a href="${url+end}">...</a>  
    </#if>  
    <#if (pageIndex lt pageCount)>  
        <a href="${url+pageCount}">&gt;&gt;</a>  
    </#if>  
    </DIV>
</#macro>
