<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="liHe" value="${hldUvd.stg(cls,'liHe')}"/>
<c:if test="${not empty liHe}">
  <jsp:include page="../ls/${liHe}.jsp"/>
</c:if>
<c:set var="liAc" value="${hldUvd.stg(cls,'liAc')}"/>
<c:set var="liFo" value="${hldUvd.stg(cls,'liFo')}"/>
<c:if test="${not empty liFo}">
  <jsp:include page="../ls/${liFo}.jsp"/>
</c:if>
<table>
  <tr>
    <jsp:include page="../ls/roHe.jsp"/>
    <th class="column-actions">${i18n.getMsg('Actions', rvs.upf.lng.iid)}</th>
  </tr>
  <c:forEach var="ent" items="${rvs.uvs.ents}">
    <c:set var="ent" value="${ent}" scope="request"/>
    <tr>
      <jsp:include page="../ls/roDe.jsp"/>
      <td class="column-actions">
        <c:if test="${not empty liAc}">
          <jsp:include page="../ls/${liAc}.jsp"/>
        </c:if>
      </td>
    </tr>
  </c:forEach>
</table>
