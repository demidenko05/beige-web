<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${not empty mdl}">
  ${hldUvd.toStr(rvs,cls,fdNm,mdl)}
</c:if>
