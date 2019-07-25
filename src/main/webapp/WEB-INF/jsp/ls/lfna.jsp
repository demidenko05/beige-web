<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${empty param.mbl}">
  <div class="pages">
    <c:forEach var="page" items="${rvs.uvs.pgs}">
      <c:if test="${page.val eq '...'}">
        <span class="page-inactive">...</span>
      </c:if>
      <c:if test="${!(page.val eq '...') && page.cur}">
        <a href="#" class="page-current" onclick="bsGtAjx('GET', 'srv/?rnd=${rndLst}&act=lst&ent=${cls.simpleName}&pg=${page.val}${flyPar}');">${page.val}</a>
      </c:if>
      <c:if test="${!(page.val eq '...') && !page.cur}">
        <a href="#" class="page" onclick="bsGtAjx('GET', 'srv/?rnd=${rndLst}&act=lst&ent=${cls.simpleName}&pg=${page.val}${flyPar}');">${page.val}</a>
      </c:if>
    </c:forEach>
  </div>
</c:if>
<c:if test="${not empty param.mbl}">
  <div class="pages">
    <c:forEach var="page" items="${rvs.uvs.pgs}">
      <c:if test="${page.val eq '...'}">
        <span class="page-inactive">...</span>
      </c:if>
      <c:if test="${!(page.val eq '...') && page.cur}">
        <a href="#" class="page-current" onclick="bsGtAjx('GET', 'srv/?rnd=${rndLst}&act=lst&ent=${cls.simpleName}&pg=${page.val}${flyPar}');">${page.val}</a>
      </c:if>
      <c:if test="${!(page.val eq '...') && !page.cur}">
        <a href="#" class="page" onclick="bsGtAjx('GET', 'srv/?rnd=${rndLst}&act=lst&ent=${cls.simpleName}&pg=${page.val}${flyPar}');">${page.val}</a>
      </c:if>
    </c:forEach>
  </div>
</c:if>
