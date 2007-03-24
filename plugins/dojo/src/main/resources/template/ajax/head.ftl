<script language="JavaScript" type="text/javascript">
    // Dojo configuration
    djConfig = {
        isDebug: ${parameters.debug?default(false)?string},
        bindEncoding: "${parameters.encoding}",
        debugAtAllCosts: true // not needed, but allows the Venkman debugger to work with the includes
    };
</script>

<#if parameters.compressed?default(true)>
  <#assign dojoFile="dojo.js">
<#else>
  <#assign dojoFile="dojo.js.uncompressed.js">
</#if>        

<#if parameters.baseRelativePath?if_exists != "">
  <script language="JavaScript" type="text/javascript"
        src="<@s.url value='${parameters.baseRelativePath}/${dojoFile}' includeParams='none' encode='false'  />"></script>
<#else>
  <script language="JavaScript" type="text/javascript"
        src="<@s.url value='/struts/dojo/${dojoFile}' includeParams='none' encode='false'  />"></script>
</#if>  

<script language="JavaScript" type="text/javascript"
        src="<@s.url value='/struts/ajax/dojoRequire.js' includeParams='none' encode='false'  />"></script>
<script language="JavaScript" type="text/javascript"
        src="<@s.url value='/struts/CommonFunctions.js' includeParams='none' encode='false'/>"></script>
