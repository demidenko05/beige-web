<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<input type="hidden" name="${cls.simpleName}.isNew" value="${ent.isNew}"/> 
<input type="hidden" name="${cls.simpleName}.ownr" value="${ent.ownr.iid}"/> 
<c:if test="${ent.isNew}">
  <input type="hidden" name="owVr" value="${param.owVr}"/> 
  <c:set var="inpTy" value="text" scope="request"/>
  <c:set var="inpAdd" value="class='bsNum0'" scope="request"/>
  <c:set target="${usdDp}" property="0" value="0"/>
  <jsp:include page="tmpl.jsp"/>
</c:if>
<c:if test="${!ent.isNew}">
  <input type="hidden" name="owVr" value="${ent.ownr.ver}"/> 
  <input type="hidden" name="${cls.simpleName}.ver" value="${ent.ver}"/> 
  <jsp:include page="reo.jsp"/>
</c:if>
