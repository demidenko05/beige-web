<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${!ent.isNew}">
  <jsp:include page="reo.jsp"/>
</c:if>
<c:if test="${ent.isNew}">
  <c:set var="inpTy" value="file" scope="request"/>
  <c:set var="inpAdd" value="" scope="request"/>
  <jsp:include page="tmpl.jsp"/>
  <input type="hidden" name="parFile" value="${ent.getClass().simpleName}.${fdNm}">
  <input type="hidden" name="fdFlPth" value="${fdNm}">
</c:if>
