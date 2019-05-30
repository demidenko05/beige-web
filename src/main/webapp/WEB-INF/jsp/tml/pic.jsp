<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="liHe" value="${hldUvd.stg(cls,'liHe')}"/>
<c:if test="${not empty liHe}">
  <jsp:include page="../ls/${liHe}.jsp"/>
</c:if>
<table>
  <tr>
    <jsp:include page="../${param.mbl}pi/roHe.jsp"/>
    <th class="column-actions">${i18n.getMsg('Actions', rvs.upf.lng.iid)}</th>
  </tr>
  <c:forEach var="ent" items="${rvs.uvs.ents}">
    <c:set var="ent" value="${ent}" scope="request"/>
    <tr>
      <jsp:include page="../${param.mbl}pi/roDe.jsp"/>
      <td class="column-actions">
        <c:if test="${empty param.pic}">
          <jsp:include page="../pi/${hldUvd.stgNn(cls,'pic')}.jsp"/>
        </c:if>
        <c:if test="${not empty param.pic}">
          <jsp:include page="../pi/${param.pic}.jsp"/>
        </c:if>
      </td>
    </tr>
  </c:forEach>
</table>
<c:set var="piFo" value="${hldUvd.stg(cls,'piFo')}"/>
<c:if test="${not empty piFo}">
  <jsp:include page="../pi/${piFo}.jsp"/>
</c:if>
