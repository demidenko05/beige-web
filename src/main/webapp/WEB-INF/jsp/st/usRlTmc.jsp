<%@ page language="java" pageEncoding="UTF-8" %><%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${not empty mdl}">
  ${mdl.usr.usr} ${mdl.rol}
</c:if>

